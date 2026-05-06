-- Toast.lua  |  Slide-in notification toasts
-- Usage:
--   local Toast = loadMod("modules/Toast.lua")
--   Toast.init(templateClone, containerFrame)
--   Toast.show("Title", "Description", "ok"|"warn"|"err"|"info", seconds)

local TS = game:GetService("TweenService")

local KIND_COLOR = {
	ok   = Color3.fromRGB(34,  197, 94),
	warn = Color3.fromRGB(234, 179, 8),
	err  = Color3.fromRGB(239, 68,  68),
	info = Color3.fromRGB(99,  102, 241),
}

local Toast      = {}
local _template  = nil
local _container = nil
local _count     = 0
local T_SLIDE    = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

function Toast.init(template, container)
	_template  = template
	_container = container

	local layout = _container:FindFirstChildOfClass("UIListLayout")
	if not layout then
		layout = Instance.new("UIListLayout", _container)
	end
	layout.FillDirection       = Enum.FillDirection.Vertical
	layout.VerticalAlignment   = Enum.VerticalAlignment.Top
	layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	layout.SortOrder           = Enum.SortOrder.LayoutOrder
	layout.Padding             = UDim.new(0, 6)
end

function Toast.show(title, desc, kind, duration)
	if not _template or not _container then
		warn("[Toast] Call Toast.init() before Toast.show().")
		return
	end

	duration = duration or 3
	kind     = kind     or "info"
	desc     = desc     or ""
	local dotColor = KIND_COLOR[kind] or KIND_COLOR.info

	_count += 1
	local toast       = _template:Clone()
	toast.Name        = "Toast_" .. _count
	toast.LayoutOrder = _count
	toast.Visible     = true
	toast.Position    = UDim2.new(1, 4, 0, 0)
	toast.Parent      = _container

	local titleLbl = toast:FindFirstChild("ToastTitle")
	local descLbl  = toast:FindFirstChild("ToastDesc")
	local closeBtn = toast:FindFirstChild("CloseButton", true)
	local iconDot  = toast:FindFirstChild("IconColor")
	local timerBar = toast:FindFirstChild("TimerFrame")

	if titleLbl then titleLbl.Text = title or "Notice" end
	if descLbl  then descLbl.Text = desc; descLbl.Visible = desc ~= "" end
	if iconDot  then iconDot.BackgroundColor3  = dotColor end
	if timerBar then timerBar.BackgroundColor3 = dotColor end

	TS:Create(toast, T_SLIDE, { Position = UDim2.new(0, 0, 0, 0) }):Play()

	if timerBar then
		TS:Create(timerBar, TweenInfo.new(duration, Enum.EasingStyle.Linear), {
			Size = UDim2.new(0, 0, 0, 3)
		}):Play()
	end

	local dismissed = false
	local function dismiss()
		if dismissed then return end
		dismissed = true
		TS:Create(toast, T_SLIDE, { Position = UDim2.new(1, 4, 0, 0) }):Play()
		task.delay(0.15, function()
			if toast and toast.Parent then toast:Destroy() end
		end)
	end

	if closeBtn then
		closeBtn.MouseButton1Click:Connect(dismiss)
		closeBtn.MouseEnter:Connect(function()
			TS:Create(closeBtn, T_SLIDE, { TextColor3 = Color3.fromRGB(239, 68, 68) }):Play()
		end)
		closeBtn.MouseLeave:Connect(function()
			TS:Create(closeBtn, T_SLIDE, { TextColor3 = Color3.fromRGB(82, 82, 91) }):Play()
		end)
	end

	task.delay(duration, dismiss)
end

return Toast
