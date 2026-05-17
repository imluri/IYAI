"""
IYAI Bridge Server
Relays messages between the web UI (iyai.html) and the Roblox executor.

Endpoints used by the web page:
  GET  /ping              -- connection check
  GET  /browser/events    -- SSE stream: bridge pushes results to browser
  POST /browser/send      -- web sends a chat message to Roblox

Endpoints used by IYAI_GUI.lua (executor side):
  GET  /roblox/poll       -- long-poll: held until a message arrives (up to 15s)
  POST /roblox/result     -- Roblox posts AI responses / tree / props back

Run: python iyai_bridge.py
"""

from flask import Flask, request, jsonify, Response, stream_with_context
from queue import Queue, Empty
from threading import Lock
import json

app = Flask(__name__)

@app.after_request
def add_cors(response):
    response.headers["Access-Control-Allow-Origin"]  = "*"
    response.headers["Access-Control-Allow-Methods"] = "GET, POST, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type"
    return response

@app.route('/', defaults={'path': ''}, methods=['OPTIONS'])
@app.route('/<path:path>', methods=['OPTIONS'])
def options_preflight(_path):
    return '', 204

to_roblox           = Queue()   # web → Roblox
browser_queues      = []        # one Queue per active SSE client
browser_queues_lock = Lock()

# ── Health check ──────────────────────────────────────────────────────────────

@app.route('/ping')
def ping():
    return 'ok', 200

# ── Browser-facing endpoints ──────────────────────────────────────────────────

@app.route('/status')
def status():
    with browser_queues_lock:
        browser_ok = len(browser_queues) > 0
    return jsonify({"bridge": True, "browser": browser_ok})

@app.route('/browser/events')
def browser_events():
    """SSE stream — holds open and pushes each result the instant it arrives."""
    q = Queue()
    with browser_queues_lock:
        browser_queues.append(q)

    def generate():
        try:
            while True:
                try:
                    msg = q.get(timeout=20)
                    yield f"data: {json.dumps(msg)}\n\n"
                except Empty:
                    yield ": keepalive\n\n"
        except GeneratorExit:
            pass
        finally:
            with browser_queues_lock:
                if q in browser_queues:
                    browser_queues.remove(q)

    return Response(
        stream_with_context(generate()),
        mimetype='text/event-stream',
        headers={
            'Cache-Control':    'no-cache',
            'X-Accel-Buffering': 'no',
        },
    )

_BROWSER_CMD_TYPES = {'chat', 'get_tree', 'get_children', 'get_props', 'get_state', 'settings_update', 'load_session'}

@app.route('/browser/send', methods=['POST'])
def browser_send():
    """Web page sends a command or chat message to Roblox."""
    data = request.get_json(silent=True) or {}
    if data.get('type') in _BROWSER_CMD_TYPES:
        to_roblox.put(data)
    return 'ok', 200

# ── Roblox-facing endpoints ───────────────────────────────────────────────────

@app.route('/roblox/poll')
def roblox_poll():
    """Short long-poll: holds up to 2s so executor connections never time out."""
    try:
        msg = to_roblox.get(timeout=2)
        return jsonify(msg)
    except Empty:
        return jsonify(None)

@app.route('/roblox/result', methods=['POST'])
def roblox_result():
    """Roblox posts a result; broadcast immediately to all SSE clients."""
    data = request.get_json(silent=True) or {}
    if data:
        with browser_queues_lock:
            for q in browser_queues:
                q.put(data)
    return 'ok', 200

# ── Entry point ───────────────────────────────────────────────────────────────

if __name__ == '__main__':
    print("IYAI Bridge running on http://127.0.0.1:7402")
    print("Open iyai.html and click Connect.")
    app.run(host='127.0.0.1', port=7402, debug=False, threaded=True)
