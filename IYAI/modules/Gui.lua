-- IYAI/modules/Gui.lua  |  IYAI GUI Builder
-- Provides a simple API for creating consistent draggable windows.
--
-- Usage (in any executor script):
--   local GUI = loadstring(readfile("iyai_data/Gui.lua"))()
--   local win = GUI.window("My Tool", 350, 260)
--   win:button("Enable", function() print("clicked") end)
--   win:label("Status: off")
--   win:textbox("Enter name...", function(text) print(text) end)
--   win:toggle("Show Names", false, function(on) print(on) end)
--   win:separator()
--   win:section("Advanced")

local UIS     = game:GetService("UserInputService")
local Players = game:GetService("Players")

-- ── Theme ─────────────────────────────────────────────────────────────────────
local T = {
	winBg      = Color3.fromRGB(30,  30,  30),
	barBg      = Color3.fromRGB(16,  16,  16),
	btnBg      = Color3.fromRGB(50,  50,  50),
	btnHover   = Color3.fromRGB(70,  70,  70),
	toggleOn   = Color3.fromRGB(0,  160,  90),
	toggleOff  = Color3.fromRGB(55,  55,  55),
	separator  = Color3.fromRGB(50,  50,  50),
	sectionTxt = Color3.fromRGB(150, 150, 150),
	white      = Color3.fromRGB(255, 255, 255),
	inputBg    = Color3.fromRGB(40,  40,  40),
}

local FONT_NORMAL = Enum.Font.Gotham
local FONT_BOLD   = Enum.Font.GothamBold
local FONT_CLOSE  = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

-- ── Helpers ───────────────────────────────────────────────────────────────────
local function corner(parent, radius)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, radius or 6)
	c.Parent = parent
	return c
end

local function pad(parent, px)
	local p = Instance.new("UIPadding")
	p.PaddingLeft   = UDim.new(0, px)
	p.PaddingRight  = UDim.new(0, px)
	p.PaddingTop    = UDim.new(0, px)
	p.PaddingBottom = UDim.new(0, px)
	p.Parent = parent
end

-- ── GUI module ────────────────────────────────────────────────────────────────
local GUI = {}

function GUI.window(title, width, height)
	width  = width  or 360
	height = height or 280

	-- ScreenGui
	local sg = Instance.new("ScreenGui")
	sg.Name          = (title or "Window"):gsub("%s+", "") .. "Gui"
	sg.ResetOnSpawn  = false
	sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	sg.Parent        = Players.LocalPlayer.PlayerGui

	-- Main window frame
	local win = Instance.new("Frame")
	win.Size             = UDim2.new(0, width, 0, height)
	win.Position         = UDim2.new(0.5, -width/2, 0.5, -height/2)
	win.BackgroundColor3 = T.winBg
	win.BorderSizePixel  = 0
	win.Parent = sg
	corner(win, 8)

	-- Title bar
	local bar = Instance.new("Frame")
	bar.Size             = UDim2.new(1, 0, 0, 28)
	bar.BackgroundColor3 = T.barBg
	bar.BorderSizePixel  = 0
	bar.ZIndex           = 2
	bar.Parent = win
	corner(bar, 8)
	-- cover bottom corners of bar so it blends into window
	local barFill = Instance.new("Frame")
	barFill.Size             = UDim2.new(1, 0, 0, 8)
	barFill.Position         = UDim2.new(0, 0, 1, -8)
	barFill.BackgroundColor3 = T.barBg
	barFill.BorderSizePixel  = 0
	barFill.ZIndex           = 2
	barFill.Parent = bar

	-- Title label
	local titleLbl = Instance.new("TextLabel")
	titleLbl.Size                = UDim2.new(1, -36, 1, 0)
	titleLbl.BackgroundTransparency = 1
	titleLbl.Text                = title or "Window"
	titleLbl.TextColor3          = T.white
	titleLbl.TextSize            = 13
	titleLbl.Font                = FONT_BOLD
	titleLbl.TextXAlignment      = Enum.TextXAlignment.Center
	titleLbl.ZIndex              = 3
	titleLbl.Parent = bar

	-- Close button (IYAI style)
	local closeBtn = Instance.new("TextButton")
	closeBtn.Size               = UDim2.new(0, 20, 0, 20)
	closeBtn.Position           = UDim2.new(1, -24, 0.5, -10)
	closeBtn.BackgroundTransparency = 1
	closeBtn.Text               = "X"
	closeBtn.TextColor3         = T.white
	closeBtn.TextSize           = 14
	closeBtn.FontFace           = FONT_CLOSE
	closeBtn.ZIndex             = 999
	closeBtn.Parent = bar

	closeBtn.MouseButton1Click:Connect(function()
		sg:Destroy()
	end)

	-- Content area with auto-sizing vertical list
	local content = Instance.new("ScrollingFrame")
	content.Size                 = UDim2.new(1, 0, 1, -28)
	content.Position             = UDim2.new(0, 0, 0, 28)
	content.BackgroundTransparency = 1
	content.BorderSizePixel      = 0
	content.ScrollBarThickness   = 3
	content.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
	content.CanvasSize           = UDim2.new(0, 0, 0, 0)
	content.AutomaticCanvasSize  = Enum.AutomaticSize.Y
	content.Parent = win

	local list = Instance.new("UIListLayout")
	list.FillDirection = Enum.FillDirection.Vertical
	list.SortOrder     = Enum.SortOrder.LayoutOrder
	list.Padding       = UDim.new(0, 4)
	list.Parent = content

	local listPad = Instance.new("UIPadding")
	listPad.PaddingLeft   = UDim.new(0, 8)
	listPad.PaddingRight  = UDim.new(0, 8)
	listPad.PaddingTop    = UDim.new(0, 8)
	listPad.PaddingBottom = UDim.new(0, 8)
	listPad.Parent = content

	-- Drag logic
	local dragging, dragStart, startPos = false, nil, nil

	bar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging  = true
			dragStart = input.Position
			startPos  = win.Position
		end
	end)

	local uisConn1 = UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local d = input.Position - dragStart
			win.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X,
			                          startPos.Y.Scale, startPos.Y.Offset + d.Y)
		end
	end)

	local uisConn2 = UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	sg.Destroying:Connect(function()
		uisConn1:Disconnect()
		uisConn2:Disconnect()
	end)

	-- ── Window object ─────────────────────────────────────────────────────────
	local order = 0
	local function nextOrder() order = order + 1; return order end

	local W = {}

	-- Button
	function W:button(text, callback)
		local btn = Instance.new("TextButton")
		btn.Size             = UDim2.new(1, 0, 0, 34)
		btn.BackgroundColor3 = T.btnBg
		btn.Text             = text or "Button"
		btn.TextColor3       = T.white
		btn.TextSize         = 13
		btn.Font             = FONT_NORMAL
		btn.BorderSizePixel  = 0
		btn.LayoutOrder      = nextOrder()
		btn.Parent = content
		corner(btn, 6)

		btn.MouseEnter:Connect(function() btn.BackgroundColor3 = T.btnHover end)
		btn.MouseLeave:Connect(function() btn.BackgroundColor3 = T.btnBg end)
		if callback then btn.MouseButton1Click:Connect(callback) end
		return btn
	end

	-- Label
	function W:label(text)
		local lbl = Instance.new("TextLabel")
		lbl.Size                 = UDim2.new(1, 0, 0, 24)
		lbl.BackgroundTransparency = 1
		lbl.Text                 = text or ""
		lbl.TextColor3           = T.white
		lbl.TextSize             = 13
		lbl.Font                 = FONT_NORMAL
		lbl.TextXAlignment       = Enum.TextXAlignment.Left
		lbl.TextWrapped          = true
		lbl.LayoutOrder          = nextOrder()
		lbl.Parent = content
		return lbl
	end

	-- Textbox
	function W:textbox(placeholder, onEnter)
		local box = Instance.new("TextBox")
		box.Size               = UDim2.new(1, 0, 0, 34)
		box.BackgroundColor3   = T.inputBg
		box.Text               = ""
		box.PlaceholderText    = placeholder or ""
		box.PlaceholderColor3  = Color3.fromRGB(110, 110, 110)
		box.TextColor3         = T.white
		box.TextSize           = 13
		box.Font               = FONT_NORMAL
		box.BorderSizePixel    = 0
		box.ClearTextOnFocus   = false
		box.LayoutOrder        = nextOrder()
		box.Parent = content
		corner(box, 6)
		pad(box, 8)

		if onEnter then
			box.FocusLost:Connect(function(enter)
				if enter then onEnter(box.Text) end
			end)
		end
		return box
	end

	-- Toggle
	function W:toggle(text, default, callback)
		local state = default == true

		local row = Instance.new("Frame")
		row.Size             = UDim2.new(1, 0, 0, 34)
		row.BackgroundColor3 = T.btnBg
		row.BorderSizePixel  = 0
		row.LayoutOrder      = nextOrder()
		row.Parent = content
		corner(row, 6)

		local lbl = Instance.new("TextLabel")
		lbl.Size                 = UDim2.new(1, -50, 1, 0)
		lbl.Position             = UDim2.new(0, 10, 0, 0)
		lbl.BackgroundTransparency = 1
		lbl.Text                 = text or "Toggle"
		lbl.TextColor3           = T.white
		lbl.TextSize             = 13
		lbl.Font                 = FONT_NORMAL
		lbl.TextXAlignment       = Enum.TextXAlignment.Left
		lbl.Parent = row

		local pill = Instance.new("Frame")
		pill.Size             = UDim2.new(0, 36, 0, 20)
		pill.Position         = UDim2.new(1, -44, 0.5, -10)
		pill.BackgroundColor3 = state and T.toggleOn or T.toggleOff
		pill.BorderSizePixel  = 0
		pill.Parent = row
		corner(pill, 10)

		local knob = Instance.new("Frame")
		knob.Size             = UDim2.new(0, 14, 0, 14)
		knob.Position         = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
		knob.BackgroundColor3 = T.white
		knob.BorderSizePixel  = 0
		knob.Parent = pill
		corner(knob, 7)

		local function refresh()
			pill.BackgroundColor3 = state and T.toggleOn or T.toggleOff
			knob.Position = state and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
		end

		local btn = Instance.new("TextButton")
		btn.Size               = UDim2.new(1, 0, 1, 0)
		btn.BackgroundTransparency = 1
		btn.Text               = ""
		btn.Parent = row

		btn.MouseButton1Click:Connect(function()
			state = not state
			refresh()
			if callback then callback(state) end
		end)

		return row
	end

	-- Separator
	function W:separator()
		local line = Instance.new("Frame")
		line.Size             = UDim2.new(1, 0, 0, 1)
		line.BackgroundColor3 = T.separator
		line.BorderSizePixel  = 0
		line.LayoutOrder      = nextOrder()
		line.Parent = content
		return line
	end

	-- Section header
	function W:section(text)
		local lbl = Instance.new("TextLabel")
		lbl.Size                 = UDim2.new(1, 0, 0, 20)
		lbl.BackgroundTransparency = 1
		lbl.Text                 = (text or ""):upper()
		lbl.TextColor3           = T.sectionTxt
		lbl.TextSize             = 11
		lbl.Font                 = FONT_BOLD
		lbl.TextXAlignment       = Enum.TextXAlignment.Left
		lbl.LayoutOrder          = nextOrder()
		lbl.Parent = content
		return lbl
	end

	-- Destroy programmatically
	function W:destroy()
		sg:Destroy()
	end

	-- Raw access if needed
	W.gui     = sg
	W.frame   = win
	W.content = content

	return W
end

return GUI
