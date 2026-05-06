# IYAI
-# Made by urluri

An AI assistant plugin for Infinite Yield. Talk to it in plain English and it'll inspect instances, read properties, run code, and modify the game world using live data from your session.

## Commands
`;ai` (alias: `;iyai`)
Opens or closes the IYAI window.

## Features
The plugin has three pages accessible from the left sidebar:

### Agent
Chat with the AI. It has access to tools it can call on its own:
- Explore the instance tree and read properties — backed by the live Roblox API dump, so every property includes its type and flags like `[readonly]` or `[deprecated]`
- Find instances by class or name
- Get and set properties on any instance (numbers, booleans, Vector3, Color3, Enums, UDim2)
- List all methods available on an instance's class (including inherited)
- Get info about the local player and all players in the server
- Read and decompile scripts
- Write, edit, and run Lua code
- Search the web via DuckDuckGo
- Execute Infinite Yield commands directly (if IY is loaded)
- List available IY commands and plugins

For anything that involves computation or bulk changes like "find the closest player", "rename all parts under X", it'll write and run a Lua script to get it done instead of making a dozen individual calls.

### Code
A built-in code editor. The AI writes code here, and you can run it or copy it yourself.

### Settings
Set your API key, pick a provider (**OpenRouter**, **Mistral**, **Groq**, **Google AI Studio**, **Pollinations**, **HuggingFace**, or **Ollama** for local), and choose a model. There's a model picker that fetches the live list from the API. For HuggingFace it searches the catalogue on demand as you type. Switching providers saves and restores your key and model per provider. Buttons let you test your connection and validate your credentials.

## Setup
1. Get an API key from your chosen provider (OpenRouter, Mistral, Groq, Google AI Studio, Pollinations, HuggingFace, or set up Ollama locally)
2. Install `IYAI.iy` plugin
3. Open Settings via `;ai`, paste your key, select your provider and model, and hit Save
4. Switch to the Agent page and start chatting

Updates are pushed to GitHub. `IYAI.iy` fetches the latest version each time you run it, so you don't need to redownload anything. Expect more to come.

## Notes
- The AI scouts before it acts; it checks the instance exists and understands the structure before making changes. How well this works depends on the model.
- Rate limited responses (429, common with free models) retry up to 3 times automatically with a notification
- API errors show inline in the chat with the full response body accessible for debugging
- Chat history carries over in the same session. Clear button wipes it
- Stop button cuts the AI off mid-response
- Script reading uses `decompile()` in executor and `source()` in Studio
- GUI is parented to the hidden UI container (`gethui`) to avoid game detection
- Toast notifications appear top-right for key events (saved, rate limited, errors, connection tests)

## Recommended Free Models
- **Google AI Studio** — `gemini-2.0-flash` (free tier, fast, strong at tool use)
- **HuggingFace** — `deepseek-ai/DeepSeek-V3-0324` (free, strong reasoning, great for tool use)
- **Groq** — fast inference, free tier with generous limits; pick `llama-3.3-70b-versatile` or `deepseek-r1-distill-llama-70b`
- **Pollinations** — `openai` or `mistral` (no key required)
