---
name: Scan Remotes
description: Find and log all RemoteEvents and RemoteFunctions being fired in the game
---

Log every FireServer call to discover which remotes a game uses and what arguments they carry:

```lua
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        local args = {...}
        local argStr = ""
        for i, v in ipairs(args) do
            argStr = argStr .. "[" .. i .. "]=" .. tostring(v) .. " "
        end
        print("[Remote] " .. method .. " | " .. self:GetFullName() .. " | " .. argStr)
    end
    return oldNamecall(self, ...)
end))
```

Output appears in the executor console via print(). Use this to identify remote names and argument patterns before using the Hook Remote skill.
To stop logging, rehook with the original: hookmetamethod(game, "__namecall", oldNamecall).
executor-only — not available in Studio.
