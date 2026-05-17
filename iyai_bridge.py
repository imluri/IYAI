"""
IYAI Bridge Server
Relays messages between the web UI (iyai.html) and the Roblox executor.

Endpoints used by the web page:
  GET  /ping           -- connection check
  GET  /browser/poll   -- web polls for messages from Roblox
  POST /browser/send   -- web sends a chat message to Roblox

Endpoints polled by IYAI_GUI.lua (executor side):
  GET  /roblox/poll    -- Roblox polls for incoming web messages
  POST /roblox/result  -- Roblox posts AI responses / tree / props back

Run: python iyai_bridge.py
"""

from flask import Flask, request, jsonify
from queue import Queue, Empty
from threading import Lock
import time

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

to_roblox  = Queue()   # web  → Roblox
to_browser = Queue()   # Roblox → web

last_browser_poll = 0.0

# ── Health check ──────────────────────────────────────────────────────────────

@app.route('/ping')
def ping():
    return 'ok', 200

# ── Browser-facing endpoints ──────────────────────────────────────────────────

@app.route('/status')
def status():
    return jsonify({"bridge": True, "browser": (time.time() - last_browser_poll) < 6})

@app.route('/browser/poll')
def browser_poll():
    """Drain all pending messages for the web page."""
    global last_browser_poll
    last_browser_poll = time.time()
    msgs = []
    try:
        while True:
            msgs.append(to_browser.get_nowait())
    except Empty:
        pass
    return jsonify(msgs)

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
    """Roblox polls for the next pending web message. Returns null if none."""
    try:
        msg = to_roblox.get_nowait()
        return jsonify(msg)
    except Empty:
        return jsonify(None)

@app.route('/roblox/result', methods=['POST'])
def roblox_result():
    """Roblox posts a result (chat reply, tree data, props data) to the browser."""
    data = request.get_json(silent=True) or {}
    if data:
        to_browser.put(data)
    return 'ok', 200

# ── Entry point ───────────────────────────────────────────────────────────────

if __name__ == '__main__':
    print("IYAI Bridge running on http://127.0.0.1:7402")
    print("Open iyai.html and click Connect.")
    app.run(host='127.0.0.1', port=7402, debug=False)
