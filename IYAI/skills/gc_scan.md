---
name: GC Scan
description: Scan the garbage collector pool to find hidden tables, functions, or data by key
---

Search the GC for tables containing a specific key — useful for finding player data, UI structures, or encryption keys that aren't exposed in the instance tree:

```lua
local searchKey = "TARGET_KEY"  -- replace with what to look for

for _, v in pairs(getgc(true)) do
    if type(v) == "table" then
        local ok, val = pcall(rawget, v, searchKey)
        if ok and val ~= nil then
            print("Found table with key '" .. searchKey .. "':", tostring(val))
            -- optionally print all keys:
            for k, vv in pairs(v) do
                print("  ", tostring(k), "=", tostring(vv))
            end
        end
    end
end
```

Ask the user what key or data they're looking for. getgc(true) includes all live tables; omit true for functions only.
This is executor-only and may be slow on large games — wrap in a task.spawn if needed.
