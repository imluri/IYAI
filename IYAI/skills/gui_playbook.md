---
name: GUI Playbook
description: Use this when writing any script that needs a ScreenGui window with controls — buttons, toggles, textboxes, labels. Triggers on: GUI window, control panel, HUD, settings UI, toggle button, input box. Do not write raw ScreenGui/Frame/TextButton code without following this playbook. For Drawing API only (lines, boxes, ESP with no window), this playbook is optional but the Drawing section is still the reference.
---

## Rule: always use the GUI module

Never write raw GUI instance code. Always load the GUI builder module first:

```lua
local GUI = loadstring(readfile("IYAI/modules/Gui.lua"))()
```

This module enforces consistent styling, draggable windows, and the close button automatically. You do not need to create ScreenGui, Frames, drag logic, or close buttons manually — the module handles all of it.

---

## API reference

### `GUI.window(title, width, height)` → win

Creates a draggable window with a title bar and close button. Returns a window object.

```lua
local win = GUI.window("Line ESP", 350, 240)
```

---

### `win:button(text, callback)`

```lua
win:button("Enable", function()
    -- your logic here
end)
```

---

### `win:label(text)`

```lua
win:label("Status: Disabled")
```

Returns the TextLabel so you can update it later:
```lua
local status = win:label("Status: Off")
-- later:
status.Text = "Status: On"
```

---

### `win:textbox(placeholder, onEnter)`

`onEnter` fires when the user presses Enter.

```lua
win:textbox("Target Player Name", function(text)
    print("Player:", text)
end)
```

---

### `win:toggle(text, default, callback)`

`default` is `true` or `false`. `callback` receives the new state.

```lua
win:toggle("Show Names", false, function(on)
    -- on = true/false
end)
```

---

### `win:separator()`

Thin dividing line between sections.

```lua
win:separator()
```

---

### `win:section(text)`

Small uppercase section header.

```lua
win:section("Settings")
```

---

### `win:destroy()`

Destroys the GUI programmatically (e.g. when a feature is disabled from outside the window).

---

### Raw access

```lua
win.gui     -- the ScreenGui
win.frame   -- the main window Frame
win.content -- the ScrollingFrame that holds all elements
```

---

## Full example

```lua
local GUI = loadstring(readfile("IYAI/modules/Gui.lua"))()

local win = GUI.window("Line ESP", 350, 220)

local statusLabel = win:label("Status: Disabled")

win:toggle("Enable Line ESP", false, function(on)
    statusLabel.Text = on and "Status: Enabled" or "Status: Disabled"
    -- toggle your ESP logic here
end)

win:separator()
win:section("Settings")

win:textbox("Target Player Name", function(name)
    print("Targeting:", name)
end)
```

---

## Drawing API (for ESP lines, boxes, etc.)

Use `Drawing` for rendering overlays directly on screen — no ScreenGui needed for lines/boxes.

**`From` and `To` are `Vector2` screen coordinates, never `Vector3` world positions.** Always project world positions through the camera first:

```lua
local camera = workspace.CurrentCamera

local function worldToScreen(worldPos)
    local screenPos, onScreen = camera:WorldToViewportPoint(worldPos)
    return Vector2.new(screenPos.X, screenPos.Y), onScreen
end

-- Usage with a Line:
local from, fromVis = worldToScreen(partA.Position)
local to,   toVis   = worldToScreen(partB.Position)

if fromVis or toVis then
    local line = Drawing.new("Line")
    line.Visible      = true
    line.From         = from
    line.To           = to
    line.Color        = Color3.fromRGB(255, 0, 0)
    line.Thickness    = 1
    line.Transparency = 1
end

-- Remove when done:
line:Remove()
```

Drawing objects render above the game world. Combine with a `GUI.window` for the controls panel.

---

## Sizing reference

`UDim2.new(scaleX, offsetX, scaleY, offsetY)` — scale 0–1 (fraction of parent), offset in pixels. You only need this if using `win.content` to add custom raw instances.

```lua
local frame = Instance.new("Frame")
frame.Size   = UDim2.new(1, -16, 0, 40)
frame.Parent = win.content
```
