---
name: Hook Remote
description: Intercept and modify RemoteEvent or RemoteFunction calls using hookmetamethod
---

Hook all __namecall calls to intercept specific RemoteEvents before they reach the server:

```lua
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    -- Replace "RemoteName" with the target RemoteEvent name
    if method == "FireServer" and self.Name == "RemoteName" then
        -- Inspect or modify args here
        print("Intercepted FireServer:", self:GetFullName(), args[1])
        -- To block: return nil
        -- To modify: args[1] = newValue
        return oldNamecall(self, table.unpack(args))
    end

    return oldNamecall(self, ...)
end))
```

Ask the user which RemoteEvent to target if not specified. Use tree() or find_name() first to confirm the remote's path and exact name.
hookmetamethod and newcclosure are executor-only — not available in Studio.
To unhook, re-assign the original: hookmetamethod(game, "__namecall", oldNamecall).
