# IYAI

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
- Read and decompile scripts
- Write, edit, and run Lua code
- Search the web via DuckDuckGo
- Execute Infinite Yield commands directly
- List available IY commands and plugins

For anything that involves computation or bulk changes — "find the closest player", "rename all parts under X" — it writes and runs a Lua script instead of making a dozen individual tool calls.

### Code
A built-in code editor. The AI writes here; you can run or copy it yourself.

### History
Full session history. Every conversation is saved with a title, timestamp, and message count. Click any entry to restore it — the full message thread reloads.

### Tools
Lists every tool available to the AI, grouped by category, with descriptions.

### Settings
Set your API key, pick a provider, and choose a model. There's a live model picker that fetches available models from the API. For HuggingFace it searches the catalogue on demand as you type. Switching providers saves and restores your key and model per provider. Buttons let you test your connection and validate credentials.

**Providers:** OpenRouter · Mistral · Groq · Google AI Studio · Pollinations · HuggingFace · Ollama

### Browser
Connects IYAI to the [IYAI Web UI](https://imluri.github.io/iyai) — a browser-based companion that mirrors the plugin. Once the local bridge is running and both sides connect, you can:
- Chat with the AI from the browser
- Browse the full live Roblox instance tree with lazy loading
- Click any instance to inspect its properties (pulled from the API dump)
- View session history and switch conversations
- See tool calls as they happen, in real time
- Sync settings between the browser and the plugin

The bridge is a small local server (`iyai_bridge.py` or `iyai_bridge.ps1`) that relays messages between the web page and the plugin. Nothing leaves your machine.

## Setup
1. Get an API key from your chosen provider
2. Run `plugin iyai` inside Infinite Yield to install
3. Open the UI with `;ai`, go to Settings, paste your key, pick provider and model, hit Save
4. Switch to Agent and start chatting

Auto-updates on every run — `IYAI.iy` pulls the latest version from GitHub each time, so you never need to redownload.

## Notes
- The AI scouts before acting: it checks instances exist and understands the structure before making changes. Quality depends on the model
- Rate-limited responses (429) retry up to 3 times automatically with a notification
- API errors show inline in the chat with the full response body accessible for debugging
- Stop button cuts the AI off mid-response
- Script reading uses `decompile()` in executor environments
- GUI is parented to `gethui` to avoid game detection
- Toast notifications appear top-right for saves, errors, rate limits, and connection tests

## Recommended Models
- **DeepSeek** via OpenRouter — `deepseek/deepseek-chat-v3-5` (paid, extremely strong tool use, best value)
- **Google AI Studio** — `gemini-2.0-flash` (free tier, fast, solid tool use)
- **Groq** — `llama-3.3-70b-versatile` or `deepseek-r1-distill-llama-70b` (free tier, fast inference)
- **HuggingFace** — `deepseek-ai/DeepSeek-V3-0324` (free, strong reasoning)
- **Pollinations** — `openai` or `mistral` (no key required)
