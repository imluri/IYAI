# IYAI v1.0.9


https://github.com/user-attachments/assets/7d229f47-b360-4af5-ab7b-2a4b6289966d



An AI assistant plugin for Infinite Yield. Talk to it in plain English and it'll inspect instances, read properties, run code, and modify the game world using live data from your session.

## Install

Place the plugin files in your executor's `workspace/` folder. Inject your executor, open Infinite Yield, and run:

```
plugin iyai
```

Open the UI at any time with `;ai` (alias: `;iyai`).

## Pages

### Agent
Chat with the AI. It has full tool access and acts autonomously:
- Browse the instance tree and read properties — backed by the live Roblox API dump, every property includes its type and flags like `[readonly]` or `[deprecated]`
- Find instances by class or name
- Get and set properties on any instance (numbers, booleans, Vector3, Color3, Enums, UDim2)
- List all methods available on a class, including inherited ones
- Get info about the local player and every player in the server
- Decompile scripts back to readable Lua
- Write, edit, and run Lua code
- Search the web via DuckDuckGo
- Execute Infinite Yield commands directly
- List available IY commands and plugins

For anything that involves computation or bulk changes — "find the closest player", "rename all parts under X" — it writes and runs a Lua script instead of making a dozen individual tool calls.

### Code
A built-in multi-tab code editor. The AI writes here; you can run or copy it yourself.

Tabs can be created, switched, and managed manually or by the AI. Ask it to "write X to Tab 2" or "read Tab 1" and it'll target the right tab without switching your view.

### Skills
Drop `.md` skill files into `IYAI/skills/` and toggle them on per-session. Each skill is a cheat sheet — game-specific APIs, custom workflows, frequently needed patterns.

Skills use **progressive disclosure**: only the name and one-line description are injected into the system prompt as an index. The AI calls `get_skill(name)` on demand to load the full content, so a 200-line GUI playbook costs one line of context until it's actually needed. Toggle state is saved to disk.

Built-in skills include a GUI builder playbook (use `IYAI/modules/Gui.lua` for draggable windows with buttons, toggles, textboxes), Drawing API patterns for ESP, and remote-hook patterns.

### History
Full session history. Every conversation is saved with a title, timestamp, and message count. Click any entry to restore it — the full message thread reloads.

### Tools
Lists every tool available to the AI, grouped by category, with descriptions.

### Settings
Set your API key, pick a provider, and choose a model. There's a live model picker that fetches available models from the API. For HuggingFace it searches the catalogue on demand as you type. Switching providers saves and restores your key, model, and key mode per provider.

**API key modes** (per provider):
- **Single** — one key, standard usage
- **Multi** — paste multiple keys (one per line); IYAI rotates to the next key automatically on every rate limit (429). Switching to multi mode migrates your existing single key into the pool. The single key is always appended to the pool even if not listed, so you never lose access.

Buttons let you test your connection and validate credentials.

**Providers:** OpenRouter · Mistral · Groq · Google AI Studio · Pollinations · HuggingFace · Ollama · 9router · OpenCode

**Custom providers:** Add your own OpenAI-compatible endpoints by editing `iyai_data/custom_providers.json`. Entries follow the same schema as built-ins (name, baseUrl, modelsUrl, modelsFormat, apiKey-style header) and appear alongside them in the picker.

### Browser
Connects IYAI to the [IYAI Web UI](https://imluri.github.io/iyai) — a browser-based companion that mirrors the plugin. Once the local bridge is running and both sides connect, you can:
- Chat with the AI from the browser
- Browse the full live Roblox instance tree with lazy loading
- Click any instance to inspect its properties (pulled from the API dump)
- View session history and switch conversations
- See tool calls as they happen, in real time
- Sync settings between the browser and the plugin

The bridge is a small local server (`iyai_bridge.py` or `iyai_bridge.ps1`) that relays messages between the web page and the plugin. The browser uses Server-Sent Events (SSE) for push updates — no polling. Nothing leaves your machine.

## Setup
1. Get an API key from your chosen provider
2. Run `plugin iyai` inside Infinite Yield to install
3. Open the UI with `;ai`, go to Settings, paste your key, pick provider and model, hit Save
4. Switch to Agent and start chatting

Auto-updates on every run — `IYAI.iy` pulls the latest version from GitHub each time, so you never need to redownload.

## Data folder

On first run, IYAI creates an `iyai_data/` folder in your executor's `workspace/` directory. Everything user-specific lives there — settings, history, custom providers, skill toggles, conversation logs. Safe to back up, copy between machines, or delete to reset.

| File | Purpose |
|------|---------|
| `config.json` | API keys, selected provider/model, temperature, max steps, system prompt |
| `skills.json` | Which skills are enabled |
| `custom_providers.json` | Your own OpenAI-compatible endpoints (created empty; edit to add providers) |
| `usage.json` | Cumulative input/output token totals per model |
| `api_dump.json` + `api_version.txt` | Cached Roblox API dump, refreshed when the client version changes |
| `syn_docs.md` | Cached Synapse X API docs (fetched on first lookup) |
| `IYAI_GUI.lua` | Local fallback copy of the GUI script for offline use |

## Notes
- The AI scouts before acting: it checks instances exist and understands the structure before making changes. Quality depends on the model
- Rate-limited responses (429) retry up to 3 times automatically with a notification; in multi-key mode the next key is tried on each retry
- API errors show inline in the chat with the full response body accessible for debugging
- Stop button cuts the AI off mid-response
- Universal tool-call parser: when a model emits function calls inline as text (DeepSeek's DSML, Anthropic-style `<function_calls>`, etc.) instead of using the OpenAI `tool_calls` schema, IYAI normalizes and executes them transparently
- Models that go silent after tool calls trigger a one-shot text-forcing retry, with the retry's tokens counted in the displayed totals
- Executor-only — no Roblox Studio runtime, no plugin settings; all state lives under `iyai_data/`
- GUI is parented to `gethui` to avoid game detection
- Toast notifications appear top-right for saves, errors, rate limits, and connection tests

## Best Free Models
- **Owl Alpha** via OpenRouter — `openrouter/owl-alpha` (free, good at handling complex tasks)
- **GLM-4.5 Air** via OpenRouter — `z-ai/glm-4.5-air:free` (free, good reasoning, 20 req/min limit)
- **Qwen3 Coder 480B** via OpenRouter — `qwen/qwen3-coder:480b-cloud` (free tier, strong tool use)

## Recommended Models
- **DeepSeek V3** via OpenRouter — `deepseek/deepseek-chat-v3` (paid, extremely strong tool use, best value)
- **Claude Haiku 4.5** via OpenRouter — `anthropic/claude-haiku-4.5` (paid, fast, very reliable tool calling)
- **Gemini 2.5 Flash** via Google AI Studio or OpenRouter — `google/gemini-2.5-flash` (free tier, fast, solid tool use)
- **Groq** — `llama-3.3-70b-versatile` or `deepseek-r1-distill-llama-70b` (free tier, fast inference)
- **Pollinations** — `openai` or `mistral` (no key required)

### Models to avoid
- **DeepSeek V4 Flash** — emits tool calls in non-standard DSML format and often returns no text after tools. IYAI's universal parser handles the DSML, but the model's quality is below V3 for agent tasks.
