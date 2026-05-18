---
name: Metatable Hook
description: Hook __index or __newindex on the game metatable to intercept property reads or writes
---

Make the game metatable writable, hook __index or __newindex, then lock it again:

```lua
local mt = getrawmetatable(game)
setreadonly(mt, false)

local oldIndex = mt.__index
mt.__index = newcclosure(function(self, key)
    -- Intercept specific property reads
    -- if self:IsA("TargetClass") and key == "TargetProperty" then
    --     return spoofedValue
    -- end
    return oldIndex(self, key)
end)

setreadonly(mt, true)
```

For __newindex (intercept writes):
```lua
local oldNewindex = mt.__newindex
mt.__newindex = newcclosure(function(self, key, value)
    -- if key == "SomeProperty" then value = clampedValue end
    return oldNewindex(self, key, value)
end)
```

Always restore setreadonly(mt, true) after modification.
getrawmetatable, setreadonly, newcclosure are executor-only.
Ask the user what class/property to target if not specified.
