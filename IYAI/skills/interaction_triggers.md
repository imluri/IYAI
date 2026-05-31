---
name: Interaction Triggers
description: Executor functions to programmatically trigger ClickDetectors, ProximityPrompts, Touch events, and arbitrary RBXScriptSignals without needing a real player click/touch. Use these for auto-collect, auto-interact, instant-pickup, or anywhere the user wants to trigger an interactable from code instead of physically.
---

When a game requires the player to click, touch, or hold-E on something, you don't need to simulate input — the executor exposes functions that fire the underlying signals directly. These work even from far away, through walls, and without the target part being visible.

## fireclickdetector

Triggers a `ClickDetector`'s `MouseClick` event as if the local player clicked it.

```lua
fireclickdetector(clickDetector)           -- default distance (32)
fireclickdetector(clickDetector, distance) -- custom distance
```

Find every ClickDetector in workspace and trigger them all:
```lua
for _, cd in ipairs(workspace:GetDescendants()) do
    if cd:IsA("ClickDetector") then
        fireclickdetector(cd)
    end
end
```

## fireproximityprompt

Instantly triggers a `ProximityPrompt`'s `Triggered` event — no hold time, no distance check.

```lua
fireproximityprompt(prompt)
```

Loop through every ProximityPrompt in workspace:
```lua
for _, p in ipairs(workspace:GetDescendants()) do
    if p:IsA("ProximityPrompt") then
        fireproximityprompt(p)
    end
end
```

## firetouchinterest

Simulates a `BasePart.Touched` event between two parts. Useful for tripping touch-based pickups, kill bricks, teleporters, or quest triggers.

```lua
firetouchinterest(part1, part2, 0)  -- 0 = Touched fires
firetouchinterest(part1, part2, 1)  -- 1 = TouchEnded fires
```

Typically `part1` is your character's HRP and `part2` is the trigger:
```lua
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
firetouchinterest(hrp, triggerPart, 0)
firetouchinterest(hrp, triggerPart, 1)  -- usually want both for a complete touch cycle
```

## firesignal

Generic — fires ANY `RBXScriptSignal` with arbitrary arguments. Useful when a game uses BindableEvents or custom signals instead of ClickDetectors/Prompts.

```lua
firesignal(someBindableEvent.Event, arg1, arg2, ...)
firesignal(someRemoteEvent.OnClientEvent, ...)
```

For server-bound triggers you'd use `:FireServer()` / `:InvokeServer()` on the remote itself — `firesignal` is for client-side signals.

## Discovering what to fire

Use the standard tree/scan tools to find interactables:
- `find_class("ClickDetector", "game.Workspace")` — list all click targets
- `find_class("ProximityPrompt", "game.Workspace")` — list all prompts
- `find_class("BindableEvent", "game.Workspace")` — list bindables that might be triggered

For touch-based triggers, look for `BasePart` descendants of folders named like `Triggers`, `Pickups`, `Quests`, etc.

## Notes
- All four functions are executor-only. They do nothing in Studio.
- `fireclickdetector` and `fireproximityprompt` bypass the game's distance check — works from anywhere on the map.
- `firetouchinterest` requires both parts to actually exist; pass the trigger part as `part2`.
- Some games detect rapid-fire calls (e.g. claiming the same reward 100×/second) — add a `task.wait()` between calls if you hit anti-cheat.
