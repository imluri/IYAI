-- Instances: 507 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.IYAI
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[IYAI]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"].ResetOnSpawn = false


-- StarterGui.IYAI.IYAI
G2L["2"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["2"]["Size"] = UDim2.new(1, -500, 1, -400);
G2L["2"]["Position"] = UDim2.new(0.5, -300, 0.5, -200);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[IYAI]];


-- StarterGui.IYAI.IYAI.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages
G2L["5"] = Instance.new("Frame", G2L["4"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(1, -45, 1, -25);
G2L["5"]["Position"] = UDim2.new(0, 45, 0, 25);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[ContentPages]];
G2L["5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage
G2L["6"] = Instance.new("Frame", G2L["5"]);
G2L["6"]["Visible"] = false;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[AgentPage]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat
G2L["7"] = Instance.new("ScrollingFrame", G2L["6"]);
G2L["7"]["Active"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["7"]["Name"] = [[ScrollingFrameMainChat]];
G2L["7"]["ScrollBarImageTransparency"] = 0.85;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["Size"] = UDim2.new(1, 0, 1, -35);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["ScrollBarThickness"] = 5;
G2L["7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.UIListLayout
G2L["8"] = Instance.new("UIListLayout", G2L["7"]);
G2L["8"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.UIPadding
G2L["9"] = Instance.new("UIPadding", G2L["7"]);
G2L["9"]["PaddingTop"] = UDim.new(0, 5);
G2L["9"]["PaddingRight"] = UDim.new(0, 5);
G2L["9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate
G2L["a"] = Instance.new("Folder", G2L["7"]);
G2L["a"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying)
G2L["b"] = Instance.new("Frame", G2L["a"]);
G2L["b"]["Visible"] = false;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[AgentTaskFrame (Retrying)]];
G2L["b"]["LayoutOrder"] = 2;
G2L["b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor
G2L["c"] = Instance.new("Frame", G2L["b"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(171, 171, 0);
G2L["c"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["c"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor.UICorner
G2L["d"] = Instance.new("UICorner", G2L["c"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).TextLabel
G2L["e"] = Instance.new("TextLabel", G2L["b"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e"]["TextTransparency"] = 0.25;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["RichText"] = true;
G2L["e"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Tool succeeded]];
G2L["e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).UIPadding
G2L["f"] = Instance.new("UIPadding", G2L["b"]);
G2L["f"]["PaddingTop"] = UDim.new(0, 5);
G2L["f"]["PaddingRight"] = UDim.new(0, 15);
G2L["f"]["PaddingLeft"] = UDim.new(0, 15);
G2L["f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy)
G2L["10"] = Instance.new("Frame", G2L["a"]);
G2L["10"]["Visible"] = false;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[AgentTaskFrame (Tool busy)]];
G2L["10"]["LayoutOrder"] = 3;
G2L["10"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor
G2L["11"] = Instance.new("Frame", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["11"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["11"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).TextLabel
G2L["13"] = Instance.new("TextLabel", G2L["10"]);
G2L["13"]["TextWrapped"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["TextTransparency"] = 0.25;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["RichText"] = true;
G2L["13"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Shimmering...]];
G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["13"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["10"]);
G2L["14"]["PaddingTop"] = UDim.new(0, 5);
G2L["14"]["PaddingRight"] = UDim.new(0, 15);
G2L["14"]["PaddingLeft"] = UDim.new(0, 15);
G2L["14"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed)
G2L["15"] = Instance.new("Frame", G2L["a"]);
G2L["15"]["Visible"] = false;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[AgentTaskFrame (Tool failed)]];
G2L["15"]["LayoutOrder"] = 3;
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor
G2L["16"] = Instance.new("Frame", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["16"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["16"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);
G2L["17"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).TextLabel
G2L["18"] = Instance.new("TextLabel", G2L["15"]);
G2L["18"]["TextWrapped"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["TextTransparency"] = 0.25;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["RichText"] = true;
G2L["18"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Tool failed]];
G2L["18"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["18"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).UIPadding
G2L["19"] = Instance.new("UIPadding", G2L["15"]);
G2L["19"]["PaddingTop"] = UDim.new(0, 5);
G2L["19"]["PaddingRight"] = UDim.new(0, 15);
G2L["19"]["PaddingLeft"] = UDim.new(0, 15);
G2L["19"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded)
G2L["1a"] = Instance.new("Frame", G2L["a"]);
G2L["1a"]["Visible"] = false;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[AgentTaskFrame (Tool succeeded)]];
G2L["1a"]["LayoutOrder"] = 2;
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor
G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["1b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).TextLabel
G2L["1d"] = Instance.new("TextLabel", G2L["1a"]);
G2L["1d"]["TextWrapped"] = true;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d"]["TextTransparency"] = 0.25;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["RichText"] = true;
G2L["1d"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[Tool succeeded]];
G2L["1d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1d"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).UIPadding
G2L["1e"] = Instance.new("UIPadding", G2L["1a"]);
G2L["1e"]["PaddingTop"] = UDim.new(0, 5);
G2L["1e"]["PaddingRight"] = UDim.new(0, 15);
G2L["1e"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame
G2L["1f"] = Instance.new("Frame", G2L["a"]);
G2L["1f"]["Visible"] = false;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[CodeStatusFrame]];
G2L["1f"]["LayoutOrder"] = 3;
G2L["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor
G2L["20"] = Instance.new("Frame", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["20"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["20"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.TextLabel
G2L["22"] = Instance.new("TextLabel", G2L["1f"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["TextTransparency"] = 0.25;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["RichText"] = true;
G2L["22"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Agent is writing code...]];
G2L["22"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["22"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.UIPadding
G2L["23"] = Instance.new("UIPadding", G2L["1f"]);
G2L["23"]["PaddingTop"] = UDim.new(0, 5);
G2L["23"]["PaddingRight"] = UDim.new(0, 15);
G2L["23"]["PaddingLeft"] = UDim.new(0, 15);
G2L["23"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame
G2L["24"] = Instance.new("Frame", G2L["a"]);
G2L["24"]["Visible"] = false;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["24"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Name"] = [[CodeblockFrame]];
G2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.UIPadding
G2L["25"] = Instance.new("UIPadding", G2L["24"]);
G2L["25"]["PaddingTop"] = UDim.new(0, 5);
G2L["25"]["PaddingRight"] = UDim.new(0, 5);
G2L["25"]["PaddingLeft"] = UDim.new(0, 5);
G2L["25"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox
G2L["26"] = Instance.new("TextBox", G2L["24"]);
G2L["26"]["Name"] = [[CodeBox]];
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextEditable"] = false;
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["26"]["MultiLine"] = true;
G2L["26"]["ClearTextOnFocus"] = false;
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[print("Hello world!")]];
G2L["26"]["LayoutOrder"] = 1;
G2L["26"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UIPadding
G2L["27"] = Instance.new("UIPadding", G2L["26"]);
G2L["27"]["PaddingTop"] = UDim.new(0, 5);
G2L["27"]["PaddingRight"] = UDim.new(0, 5);
G2L["27"]["PaddingLeft"] = UDim.new(0, 5);
G2L["27"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UICorner
G2L["28"] = Instance.new("UICorner", G2L["26"]);
G2L["28"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.CopyButton
G2L["29"] = Instance.new("ImageButton", G2L["26"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["Image"] = [[rbxassetid://110180044304394]];
G2L["29"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[CopyButton]];
G2L["29"]["Position"] = UDim2.new(1, -15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame
G2L["2a"] = Instance.new("Frame", G2L["a"]);
G2L["2a"]["Visible"] = false;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[PostActionFrame]];
G2L["2a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton
G2L["2b"] = Instance.new("TextButton", G2L["2a"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["BackgroundTransparency"] = 0.9;
G2L["2b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[Open Code Page]];
G2L["2b"]["Name"] = [[PostActionButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.UIPadding
G2L["2d"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2d"]["PaddingTop"] = UDim.new(0, 5);
G2L["2d"]["PaddingRight"] = UDim.new(0, 10);
G2L["2d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame
G2L["2e"] = Instance.new("Frame", G2L["a"]);
G2L["2e"]["Visible"] = false;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Name"] = [[UserMessageFrame]];
G2L["2e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2e"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 5);
G2L["2f"]["PaddingRight"] = UDim.new(0, 5);
G2L["2f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame
G2L["30"] = Instance.new("Frame", G2L["2e"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage
G2L["31"] = Instance.new("TextLabel", G2L["30"]);
G2L["31"]["TextWrapped"] = true;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 15;
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[How many players are on the game?]];
G2L["31"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["31"]["Name"] = [[UserMessage]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage.UIPadding
G2L["32"] = Instance.new("UIPadding", G2L["31"]);
G2L["32"]["PaddingTop"] = UDim.new(0, 10);
G2L["32"]["PaddingRight"] = UDim.new(0, 10);
G2L["32"]["PaddingLeft"] = UDim.new(0, 10);
G2L["32"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UICorner
G2L["33"] = Instance.new("UICorner", G2L["30"]);
G2L["33"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText
G2L["34"] = Instance.new("TextLabel", G2L["a"]);
G2L["34"]["TextWrapped"] = true;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["34"]["TextTransparency"] = 0.5;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["34"]["Visible"] = false;
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Aborted.]];
G2L["34"]["LayoutOrder"] = 4;
G2L["34"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["34"]["Name"] = [[AbortText]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText.UIPadding
G2L["35"] = Instance.new("UIPadding", G2L["34"]);
G2L["35"]["PaddingTop"] = UDim.new(0, 5);
G2L["35"]["PaddingRight"] = UDim.new(0, 15);
G2L["35"]["PaddingLeft"] = UDim.new(0, 15);
G2L["35"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse
G2L["36"] = Instance.new("TextLabel", G2L["a"]);
G2L["36"]["TextWrapped"] = true;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextSize"] = 14;
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["36"]["Visible"] = false;
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[]];
G2L["36"]["LayoutOrder"] = 4;
G2L["36"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["36"]["Name"] = [[AssistantResponse]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.UIPadding
G2L["37"] = Instance.new("UIPadding", G2L["36"]);
G2L["37"]["PaddingTop"] = UDim.new(0, 5);
G2L["37"]["PaddingRight"] = UDim.new(0, 15);
G2L["37"]["PaddingLeft"] = UDim.new(0, 15);
G2L["37"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.TokenCount
G2L["38"] = Instance.new("TextLabel", G2L["36"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 14;
G2L["38"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["38"]["TextTransparency"] = 0.8;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Size"] = UDim2.new(1, -15, 0, 10);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[↑ 0  ↓ 0]];
G2L["38"]["Name"] = [[TokenCount]];
G2L["38"]["Position"] = UDim2.new(0, 0, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.CopyButton
G2L["39"] = Instance.new("TextButton", G2L["36"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextTransparency"] = 1;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["39"]["LayoutOrder"] = 1;
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[Copy]];
G2L["39"]["Name"] = [[CopyButton]];
G2L["39"]["Position"] = UDim2.new(1, -10, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.CopyButton.ImageLabel
G2L["3a"] = Instance.new("ImageLabel", G2L["39"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["Image"] = [[rbxassetid://110180044304394]];
G2L["3a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking
G2L["3b"] = Instance.new("TextLabel", G2L["a"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3b"]["TextTransparency"] = 0.5;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3b"]["Visible"] = false;
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];
G2L["3b"]["LayoutOrder"] = 4;
G2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3b"]["Name"] = [[AssistantThinking]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking.UIPadding
G2L["3c"] = Instance.new("UIPadding", G2L["3b"]);
G2L["3c"]["PaddingTop"] = UDim.new(0, 5);
G2L["3c"]["PaddingRight"] = UDim.new(0, 15);
G2L["3c"]["PaddingLeft"] = UDim.new(0, 15);
G2L["3c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN
G2L["3d"] = Instance.new("TextLabel", G2L["a"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3d"]["TextTransparency"] = 0.5;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["3d"]["Visible"] = false;
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[Step 1]];
G2L["3d"]["LayoutOrder"] = 1;
G2L["3d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3d"]["Name"] = [[StepN]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN.UIPadding
G2L["3e"] = Instance.new("UIPadding", G2L["3d"]);
G2L["3e"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.TotalElements
G2L["3f"] = Instance.new("IntValue", G2L["7"]);
G2L["3f"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.isAssistantBusy
G2L["40"] = Instance.new("BoolValue", G2L["7"]);
G2L["40"]["Name"] = [[isAssistantBusy]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame
G2L["41"] = Instance.new("Frame", G2L["7"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[GreetFrame]];
G2L["41"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.TextLabel
G2L["42"] = Instance.new("TextLabel", G2L["41"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextSize"] = 41;
G2L["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["42"]["TextTransparency"] = 0.5;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[Welcome]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIListLayout
G2L["43"] = Instance.new("UIListLayout", G2L["41"]);
G2L["43"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["41"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 20);
G2L["44"]["PaddingRight"] = UDim.new(0, 25);
G2L["44"]["PaddingLeft"] = UDim.new(0, 25);
G2L["44"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.SetApiKeyButton
G2L["45"] = Instance.new("TextButton", G2L["41"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["45"]["TextSize"] = 17;
G2L["45"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["45"]["LayoutOrder"] = 1;
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[Set your API key →]];
G2L["45"]["Name"] = [[SetApiKeyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.OpenConversationHistoryButton
G2L["46"] = Instance.new("TextButton", G2L["41"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["46"]["TextSize"] = 17;
G2L["46"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["46"]["LayoutOrder"] = 1;
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Text"] = [[Open conversation history →]];
G2L["46"]["Name"] = [[OpenConversationHistoryButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.ConnectToBrowserButton
G2L["47"] = Instance.new("TextButton", G2L["41"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextSize"] = 17;
G2L["47"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["47"]["LayoutOrder"] = 2;
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Connect to browser →]];
G2L["47"]["Name"] = [[ConnectToBrowserButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame
G2L["48"] = Instance.new("Frame", G2L["6"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["48"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Name"] = [[InputFrame]];
G2L["48"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput
G2L["49"] = Instance.new("TextBox", G2L["48"]);
G2L["49"]["Name"] = [[TextBoxInput]];
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextSize"] = 14;
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["ClearTextOnFocus"] = false;
G2L["49"]["ClipsDescendants"] = true;
G2L["49"]["PlaceholderText"] = [[Ask me anything]];
G2L["49"]["Size"] = UDim2.new(1, -45, 1, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[]];
G2L["49"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UIPadding
G2L["4a"] = Instance.new("UIPadding", G2L["49"]);
G2L["4a"]["PaddingTop"] = UDim.new(0, 5);
G2L["4a"]["PaddingRight"] = UDim.new(0, 5);
G2L["4a"]["PaddingLeft"] = UDim.new(0, 7);
G2L["4a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["49"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.UIPadding
G2L["4c"] = Instance.new("UIPadding", G2L["48"]);
G2L["4c"]["PaddingTop"] = UDim.new(0, 5);
G2L["4c"]["PaddingRight"] = UDim.new(0, 5);
G2L["4c"]["PaddingLeft"] = UDim.new(0, 5);
G2L["4c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton
G2L["4d"] = Instance.new("ImageButton", G2L["48"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["ImageTransparency"] = 0.7;
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["Image"] = [[rbxassetid://94637657012010]];
G2L["4d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Name"] = [[SendButton]];
G2L["4d"]["Position"] = UDim2.new(1, -40, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4d"]);
G2L["4e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton
G2L["4f"] = Instance.new("ImageButton", G2L["48"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["Visible"] = false;
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["Image"] = [[rbxassetid://83095283930542]];
G2L["4f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Name"] = [[StopButton]];
G2L["4f"]["Position"] = UDim2.new(1, -40, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4f"]);
G2L["50"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame
G2L["51"] = Instance.new("Frame", G2L["6"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["51"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[ActionsFrame]];
G2L["51"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIGridLayout
G2L["52"] = Instance.new("UIGridLayout", G2L["51"]);
G2L["52"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["52"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["52"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["52"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["52"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIPadding
G2L["53"] = Instance.new("UIPadding", G2L["51"]);
G2L["53"]["PaddingTop"] = UDim.new(0, 5);
G2L["53"]["PaddingRight"] = UDim.new(0, 5);
G2L["53"]["PaddingLeft"] = UDim.new(0, 5);
G2L["53"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton
G2L["54"] = Instance.new("TextButton", G2L["51"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["TextTransparency"] = 1;
G2L["54"]["TextSize"] = 14;
G2L["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["BackgroundTransparency"] = 0.9;
G2L["54"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["54"]["LayoutOrder"] = 2;
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[Clear]];
G2L["54"]["Name"] = [[NewChatButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.ImageLabel
G2L["55"] = Instance.new("ImageLabel", G2L["54"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["Image"] = [[rbxassetid://115487068891941]];
G2L["55"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UICorner
G2L["56"] = Instance.new("UICorner", G2L["54"]);
G2L["56"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UIPadding
G2L["57"] = Instance.new("UIPadding", G2L["54"]);
G2L["57"]["PaddingTop"] = UDim.new(0, 3);
G2L["57"]["PaddingRight"] = UDim.new(0, 3);
G2L["57"]["PaddingLeft"] = UDim.new(0, 3);
G2L["57"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage
G2L["58"] = Instance.new("Frame", G2L["5"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[SettingsPage]];
G2L["58"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame
G2L["59"] = Instance.new("ScrollingFrame", G2L["58"]);
G2L["59"]["Active"] = true;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["CanvasSize"] = UDim2.new(0, 0, 1.5, 0);
G2L["59"]["ScrollBarImageTransparency"] = 0.85;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["ScrollBarThickness"] = 5;
G2L["59"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame
G2L["5a"] = Instance.new("Frame", G2L["59"]);
G2L["5a"]["ZIndex"] = -1;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["5a"]["Size"] = UDim2.new(1, 0, 0, 65);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Name"] = [[UsageFrame]];
G2L["5a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.UIPadding
G2L["5b"] = Instance.new("UIPadding", G2L["5a"]);
G2L["5b"]["PaddingRight"] = UDim.new(0, 20);
G2L["5b"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.TextLabel1
G2L["5c"] = Instance.new("TextLabel", G2L["5a"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 20;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["RichText"] = true;
G2L["5c"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[-]];
G2L["5c"]["LayoutOrder"] = 1;
G2L["5c"]["Name"] = [[TextLabel1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.TextLabel2
G2L["5d"] = Instance.new("TextLabel", G2L["5a"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextSize"] = 20;
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["BackgroundTransparency"] = 1;
G2L["5d"]["RichText"] = true;
G2L["5d"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[-]];
G2L["5d"]["LayoutOrder"] = 2;
G2L["5d"]["Name"] = [[TextLabel2]];
G2L["5d"]["Position"] = UDim2.new(0, 0, 0, 30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.UIListLayout
G2L["5e"] = Instance.new("UIListLayout", G2L["5a"]);
G2L["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.LoadFreeButton
G2L["5f"] = Instance.new("TextButton", G2L["5a"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["TextSize"] = 14;
G2L["5f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 0);
G2L["5f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["BackgroundTransparency"] = 0.95;
G2L["5f"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["5f"]["LayoutOrder"] = 3;
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[⭐ Click to load best and free model]];
G2L["5f"]["Name"] = [[LoadFreeButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.LoadFreeButton.UICorner
G2L["60"] = Instance.new("UICorner", G2L["5f"]);
G2L["60"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["61"] = Instance.new("Frame", G2L["59"]);
G2L["61"]["ZIndex"] = 2;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Name"] = [[ModelSelectFrame]];
G2L["61"]["LayoutOrder"] = 2;
G2L["61"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["62"] = Instance.new("TextLabel", G2L["61"]);
G2L["62"]["ZIndex"] = 0;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[Model]];
G2L["62"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["62"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["63"] = Instance.new("Frame", G2L["61"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["63"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["64"] = Instance.new("TextBox", G2L["63"]);
G2L["64"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["ClearTextOnFocus"] = false;
G2L["64"]["ClipsDescendants"] = true;
G2L["64"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["64"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[]];
G2L["64"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["65"] = Instance.new("UICorner", G2L["64"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["66"] = Instance.new("UIPadding", G2L["64"]);
G2L["66"]["PaddingTop"] = UDim.new(0, 10);
G2L["66"]["PaddingRight"] = UDim.new(0, 10);
G2L["66"]["PaddingLeft"] = UDim.new(0, 10);
G2L["66"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["67"] = Instance.new("ImageButton", G2L["63"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["Image"] = [[rbxassetid://117799502668485]];
G2L["67"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["68"] = Instance.new("UICorner", G2L["67"]);
G2L["68"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["69"] = Instance.new("UIPadding", G2L["61"]);
G2L["69"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["6a"] = Instance.new("Frame", G2L["59"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Name"] = [[TestFrame]];
G2L["6a"]["LayoutOrder"] = 5;
G2L["6a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["6b"] = Instance.new("TextLabel", G2L["6a"]);
G2L["6b"]["ZIndex"] = 0;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[Test Connection & Credential]];
G2L["6b"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["6c"] = Instance.new("UIGridLayout", G2L["6a"]);
G2L["6c"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["6c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["6d"] = Instance.new("TextButton", G2L["6a"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["TextSize"] = 14;
G2L["6d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6d"]["BackgroundTransparency"] = 0.95;
G2L["6d"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6d"]["LayoutOrder"] = 1;
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Text"] = [[]];
G2L["6d"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6d"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["6f"] = Instance.new("Frame", G2L["6d"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["LayoutOrder"] = 3;
G2L["6f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["70"] = Instance.new("Frame", G2L["6f"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["70"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["70"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["71"] = Instance.new("UICorner", G2L["70"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["72"] = Instance.new("TextLabel", G2L["6f"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["72"]["TextTransparency"] = 0.25;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["RichText"] = true;
G2L["72"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[Connection]];
G2L["72"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["72"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["73"] = Instance.new("UIPadding", G2L["6f"]);
G2L["73"]["PaddingTop"] = UDim.new(0, 5);
G2L["73"]["PaddingRight"] = UDim.new(0, 15);
G2L["73"]["PaddingLeft"] = UDim.new(0, 15);
G2L["73"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["74"] = Instance.new("TextButton", G2L["6a"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 14;
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["BackgroundTransparency"] = 0.95;
G2L["74"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["74"]["LayoutOrder"] = 2;
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[]];
G2L["74"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["75"] = Instance.new("UICorner", G2L["74"]);
G2L["75"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["76"] = Instance.new("Frame", G2L["74"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["76"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["LayoutOrder"] = 3;
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["77"] = Instance.new("Frame", G2L["76"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["77"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["77"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["79"] = Instance.new("TextLabel", G2L["76"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["79"]["TextTransparency"] = 0.25;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundTransparency"] = 1;
G2L["79"]["RichText"] = true;
G2L["79"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[Credential]];
G2L["79"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["79"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["7a"] = Instance.new("UIPadding", G2L["76"]);
G2L["7a"]["PaddingTop"] = UDim.new(0, 5);
G2L["7a"]["PaddingRight"] = UDim.new(0, 15);
G2L["7a"]["PaddingLeft"] = UDim.new(0, 15);
G2L["7a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["7b"] = Instance.new("Frame", G2L["59"]);
G2L["7b"]["ZIndex"] = 2;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Name"] = [[MaxStepFrame]];
G2L["7b"]["LayoutOrder"] = 3;
G2L["7b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["7c"] = Instance.new("TextLabel", G2L["7b"]);
G2L["7c"]["ZIndex"] = 0;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Text"] = [[Max Step]];
G2L["7c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7c"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["7d"] = Instance.new("Frame", G2L["7b"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["7d"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["7e"] = Instance.new("TextBox", G2L["7d"]);
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["ClearTextOnFocus"] = false;
G2L["7e"]["ClipsDescendants"] = true;
G2L["7e"]["PlaceholderText"] = [[100]];
G2L["7e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7e"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[100]];
G2L["7e"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7e"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["80"] = Instance.new("UIPadding", G2L["7e"]);
G2L["80"]["PaddingTop"] = UDim.new(0, 10);
G2L["80"]["PaddingRight"] = UDim.new(0, 10);
G2L["80"]["PaddingLeft"] = UDim.new(0, 10);
G2L["80"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["81"] = Instance.new("ImageButton", G2L["7e"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundTransparency"] = 1;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["Image"] = [[rbxassetid://74363941121004]];
G2L["81"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[ResetButton]];
G2L["81"]["Rotation"] = -180;
G2L["81"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["82"] = Instance.new("UIPadding", G2L["7b"]);
G2L["82"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["83"] = Instance.new("UIListLayout", G2L["59"]);
G2L["83"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["84"] = Instance.new("Frame", G2L["59"]);
G2L["84"]["ZIndex"] = 2;
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Name"] = [[TemperatureFrame]];
G2L["84"]["LayoutOrder"] = 4;
G2L["84"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["85"] = Instance.new("TextLabel", G2L["84"]);
G2L["85"]["ZIndex"] = 0;
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 14;
G2L["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["85"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Text"] = [[Temperature]];
G2L["85"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["85"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["86"] = Instance.new("Frame", G2L["84"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["86"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["87"] = Instance.new("TextBox", G2L["86"]);
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["ClearTextOnFocus"] = false;
G2L["87"]["ClipsDescendants"] = true;
G2L["87"]["PlaceholderText"] = [[100]];
G2L["87"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["87"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[1.0]];
G2L["87"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["88"] = Instance.new("UICorner", G2L["87"]);
G2L["88"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["89"] = Instance.new("UIPadding", G2L["87"]);
G2L["89"]["PaddingTop"] = UDim.new(0, 10);
G2L["89"]["PaddingRight"] = UDim.new(0, 10);
G2L["89"]["PaddingLeft"] = UDim.new(0, 10);
G2L["89"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["8a"] = Instance.new("ImageButton", G2L["87"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["Image"] = [[rbxassetid://74363941121004]];
G2L["8a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Name"] = [[ResetButton]];
G2L["8a"]["Rotation"] = -180;
G2L["8a"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["8b"] = Instance.new("UIPadding", G2L["84"]);
G2L["8b"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["8c"] = Instance.new("Frame", G2L["59"]);
G2L["8c"]["ZIndex"] = 2;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Name"] = [[SystemPromptFrame]];
G2L["8c"]["LayoutOrder"] = 4;
G2L["8c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["8d"] = Instance.new("UIPadding", G2L["8c"]);
G2L["8d"]["PaddingTop"] = UDim.new(0, 5);
G2L["8d"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["8e"] = Instance.new("TextButton", G2L["8c"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextSize"] = 17;
G2L["8e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["BackgroundTransparency"] = 0.95;
G2L["8e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8e"]);
G2L["8f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["90"] = Instance.new("Frame", G2L["59"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Name"] = [[HostSelectFrame]];
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["91"] = Instance.new("TextLabel", G2L["90"]);
G2L["91"]["ZIndex"] = 0;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["TextSize"] = 14;
G2L["91"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["91"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Text"] = [[Host Provider]];
G2L["91"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["91"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["92"] = Instance.new("UIPadding", G2L["90"]);
G2L["92"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["93"] = Instance.new("Frame", G2L["90"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["93"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox
G2L["94"] = Instance.new("TextBox", G2L["93"]);
G2L["94"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["TextSize"] = 14;
G2L["94"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["ClearTextOnFocus"] = false;
G2L["94"]["ClipsDescendants"] = true;
G2L["94"]["Size"] = UDim2.new(1, -115, 0, 30);
G2L["94"]["Position"] = UDim2.new(0, 115, 0, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Text"] = [[]];
G2L["94"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UICorner
G2L["95"] = Instance.new("UICorner", G2L["94"]);
G2L["95"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UIPadding
G2L["96"] = Instance.new("UIPadding", G2L["94"]);
G2L["96"]["PaddingTop"] = UDim.new(0, 10);
G2L["96"]["PaddingRight"] = UDim.new(0, 10);
G2L["96"]["PaddingLeft"] = UDim.new(0, 10);
G2L["96"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["97"] = Instance.new("TextButton", G2L["93"]);
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["TextSize"] = 14;
G2L["97"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["97"]["BackgroundTransparency"] = 0.85;
G2L["97"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["Text"] = [[]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["98"] = Instance.new("UICorner", G2L["97"]);
G2L["98"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["99"] = Instance.new("ImageLabel", G2L["97"]);
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["Image"] = [[rbxassetid://88246357492813]];
G2L["99"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["9a"] = Instance.new("UIPadding", G2L["97"]);
G2L["9a"]["PaddingTop"] = UDim.new(0, 5);
G2L["9a"]["PaddingRight"] = UDim.new(0, 5);
G2L["9a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["9a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.TextLabel
G2L["9b"] = Instance.new("TextLabel", G2L["97"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["TextSize"] = 14;
G2L["9b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["BackgroundTransparency"] = 1;
G2L["9b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["Text"] = [[OpenRouter]];
G2L["9b"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["9c"] = Instance.new("Frame", G2L["59"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(1, 10, 0, 35);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[APIKeyFrame]];
G2L["9c"]["LayoutOrder"] = 1;
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["9d"] = Instance.new("TextLabel", G2L["9c"]);
G2L["9d"]["ZIndex"] = 0;
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["TextSize"] = 14;
G2L["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["BackgroundTransparency"] = 1;
G2L["9d"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Text"] = [[API Key]];
G2L["9d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9d"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["9e"] = Instance.new("TextLabel", G2L["9c"]);
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["TextSize"] = 14;
G2L["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["9e"]["ClipsDescendants"] = true;
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["Text"] = [[]];
G2L["9e"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["9f"] = Instance.new("TextBox", G2L["9e"]);
G2L["9f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextTransparency"] = 1;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["ClearTextOnFocus"] = false;
G2L["9f"]["ClipsDescendants"] = true;
G2L["9f"]["PlaceholderText"] = [[sk-...]];
G2L["9f"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["9f"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[]];
G2L["9f"]["LayoutOrder"] = 1;
G2L["9f"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);
G2L["a0"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["a1"] = Instance.new("UIPadding", G2L["9e"]);
G2L["a1"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["a2"] = Instance.new("UIPadding", G2L["9c"]);
G2L["a2"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame
G2L["a3"] = Instance.new("Frame", G2L["9c"]);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["a3"]["Position"] = UDim2.new(0, 50, 0, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Name"] = [[ModeFrame]];
G2L["a3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["a4"] = Instance.new("TextButton", G2L["a3"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["TextSize"] = 14;
G2L["a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a4"]["BackgroundTransparency"] = 0.95;
G2L["a4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Text"] = [[Single]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["a5"] = Instance.new("UICorner", G2L["a4"]);
G2L["a5"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIGridLayout
G2L["a6"] = Instance.new("UIGridLayout", G2L["a3"]);
G2L["a6"]["CellSize"] = UDim2.new(0, 40, 0, 20);
G2L["a6"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["a6"]["CellPadding"] = UDim2.new(0, 2, 0, 2);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIPadding
G2L["a7"] = Instance.new("UIPadding", G2L["a3"]);
G2L["a7"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["a8"] = Instance.new("TextButton", G2L["a3"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["TextSize"] = 14;
G2L["a8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a8"]["BackgroundTransparency"] = 0.95;
G2L["a8"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["Text"] = [[Multi]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["a9"] = Instance.new("UICorner", G2L["a8"]);
G2L["a9"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton
G2L["aa"] = Instance.new("TextButton", G2L["9c"]);
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["TextSize"] = 17;
G2L["aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["aa"]["BackgroundTransparency"] = 0.95;
G2L["aa"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Text"] = [[Set multiple API keys ↗]];
G2L["aa"]["Name"] = [[SetMultipleAPIKeysButton]];
G2L["aa"]["Visible"] = false;
G2L["aa"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton.UICorner
G2L["ab"] = Instance.new("UICorner", G2L["aa"]);
G2L["ab"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["ac"] = Instance.new("CanvasGroup", G2L["58"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Size"] = UDim2.new(1, -15, 0, 35);
G2L["ac"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["ad"] = Instance.new("UICorner", G2L["ac"]);
G2L["ad"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["ae"] = Instance.new("TextLabel", G2L["ac"]);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextSize"] = 14;
G2L["ae"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["af"] = Instance.new("UIPadding", G2L["ae"]);
G2L["af"]["PaddingTop"] = UDim.new(0, 5);
G2L["af"]["PaddingRight"] = UDim.new(0, 5);
G2L["af"]["PaddingLeft"] = UDim.new(0, 10);
G2L["af"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["b0"] = Instance.new("TextButton", G2L["ae"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["TextSize"] = 14;
G2L["b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["b0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b0"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Text"] = [[Save changes]];
G2L["b0"]["Name"] = [[Save]];
G2L["b0"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["b1"] = Instance.new("UICorner", G2L["b0"]);
G2L["b1"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["b2"] = Instance.new("TextButton", G2L["ae"]);
G2L["b2"]["RichText"] = true;
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["TextSize"] = 14;
G2L["b2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["b2"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b2"]["BackgroundTransparency"] = 1;
G2L["b2"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Text"] = [[<u>Revert</u>]];
G2L["b2"]["Name"] = [[Revert]];
G2L["b2"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b2"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["b4"] = Instance.new("UIPadding", G2L["58"]);
G2L["b4"]["PaddingTop"] = UDim.new(0, 10);
G2L["b4"]["PaddingRight"] = UDim.new(0, 10);
G2L["b4"]["PaddingLeft"] = UDim.new(0, 15);
G2L["b4"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["b5"] = Instance.new("Frame", G2L["5"]);
G2L["b5"]["Visible"] = false;
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[CodePage]];
G2L["b5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame
G2L["b6"] = Instance.new("Frame", G2L["b5"]);
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b6"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[TopFrame]];
G2L["b6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame
G2L["b7"] = Instance.new("Frame", G2L["b6"]);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["b7"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Name"] = [[ActionsFrame]];
G2L["b7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIGridLayout
G2L["b8"] = Instance.new("UIGridLayout", G2L["b7"]);
G2L["b8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["b8"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["b8"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["b8"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["b8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIPadding
G2L["b9"] = Instance.new("UIPadding", G2L["b7"]);
G2L["b9"]["PaddingTop"] = UDim.new(0, 5);
G2L["b9"]["PaddingRight"] = UDim.new(0, 5);
G2L["b9"]["PaddingLeft"] = UDim.new(0, 5);
G2L["b9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton
G2L["ba"] = Instance.new("TextButton", G2L["b7"]);
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["TextTransparency"] = 1;
G2L["ba"]["TextSize"] = 14;
G2L["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ba"]["BackgroundTransparency"] = 0.9;
G2L["ba"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["ba"]["LayoutOrder"] = 2;
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Text"] = [[Clear]];
G2L["ba"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.ImageLabel
G2L["bb"] = Instance.new("ImageLabel", G2L["ba"]);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["ImageColor3"] = Color3.fromRGB(171, 100, 100);
G2L["bb"]["Image"] = [[rbxassetid://115957379627811]];
G2L["bb"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["ba"]);
G2L["bc"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UIPadding
G2L["bd"] = Instance.new("UIPadding", G2L["ba"]);
G2L["bd"]["PaddingTop"] = UDim.new(0, 3);
G2L["bd"]["PaddingRight"] = UDim.new(0, 3);
G2L["bd"]["PaddingLeft"] = UDim.new(0, 3);
G2L["bd"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton
G2L["be"] = Instance.new("TextButton", G2L["b7"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["TextTransparency"] = 1;
G2L["be"]["TextSize"] = 14;
G2L["be"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["be"]["BackgroundTransparency"] = 0.9;
G2L["be"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["be"]["LayoutOrder"] = 1;
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["Text"] = [[Copy]];
G2L["be"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.ImageLabel
G2L["bf"] = Instance.new("ImageLabel", G2L["be"]);
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["Image"] = [[rbxassetid://110180044304394]];
G2L["bf"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UIPadding
G2L["c0"] = Instance.new("UIPadding", G2L["be"]);
G2L["c0"]["PaddingTop"] = UDim.new(0, 5);
G2L["c0"]["PaddingRight"] = UDim.new(0, 5);
G2L["c0"]["PaddingLeft"] = UDim.new(0, 5);
G2L["c0"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UICorner
G2L["c1"] = Instance.new("UICorner", G2L["be"]);
G2L["c1"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton
G2L["c2"] = Instance.new("TextButton", G2L["b7"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["TextTransparency"] = 1;
G2L["c2"]["TextSize"] = 14;
G2L["c2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c2"]["BackgroundTransparency"] = 0.9;
G2L["c2"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Text"] = [[Run]];
G2L["c2"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.ImageLabel
G2L["c3"] = Instance.new("ImageLabel", G2L["c2"]);
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["ImageColor3"] = Color3.fromRGB(86, 171, 0);
G2L["c3"]["Image"] = [[rbxassetid://135141271354749]];
G2L["c3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.UICorner
G2L["c4"] = Instance.new("UICorner", G2L["c2"]);
G2L["c4"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame
G2L["c5"] = Instance.new("Frame", G2L["b6"]);
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Name"] = [[TabsFrame]];
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame
G2L["c6"] = Instance.new("ScrollingFrame", G2L["c5"]);
G2L["c6"]["Active"] = true;
G2L["c6"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c6"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.TabButton
G2L["c7"] = Instance.new("TextButton", G2L["c6"]);
G2L["c7"]["BorderSizePixel"] = 0;
G2L["c7"]["TextSize"] = 14;
G2L["c7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["c7"]["BackgroundTransparency"] = 0.9;
G2L["c7"]["Size"] = UDim2.new(0, 39, 0, 20);
G2L["c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["Text"] = [[Tab 1]];
G2L["c7"]["Name"] = [[TabButton]];
G2L["c7"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIListLayout
G2L["c8"] = Instance.new("UIListLayout", G2L["c6"]);
G2L["c8"]["Padding"] = UDim.new(0, 2);
G2L["c8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c8"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIPadding
G2L["c9"] = Instance.new("UIPadding", G2L["c6"]);
G2L["c9"]["PaddingTop"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.NewTabButton
G2L["ca"] = Instance.new("TextButton", G2L["c6"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["TextSize"] = 20;
G2L["ca"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["ca"]["BackgroundTransparency"] = 1;
G2L["ca"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["ca"]["LayoutOrder"] = 999;
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Text"] = [[+]];
G2L["ca"]["Name"] = [[NewTabButton]];
G2L["ca"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.UIPadding
G2L["cb"] = Instance.new("UIPadding", G2L["c5"]);
G2L["cb"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["cc"] = Instance.new("UIListLayout", G2L["b5"]);
G2L["cc"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["cd"] = Instance.new("ScrollingFrame", G2L["b5"]);
G2L["cd"]["Active"] = true;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["cd"]["ScrollBarImageTransparency"] = 0.8;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["cd"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["ScrollBarThickness"] = 4;
G2L["cd"]["LayoutOrder"] = 1;
G2L["cd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["ce"] = Instance.new("UIListLayout", G2L["cd"]);
G2L["ce"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["ce"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["cf"] = Instance.new("TextBox", G2L["cd"]);
G2L["cf"]["Name"] = [[CodeBox]];
G2L["cf"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["cf"]["BorderSizePixel"] = 0;
G2L["cf"]["TextTransparency"] = 1;
G2L["cf"]["TextSize"] = 14;
G2L["cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cf"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["cf"]["MultiLine"] = true;
G2L["cf"]["ClearTextOnFocus"] = false;
G2L["cf"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["cf"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cf"]["Text"] = [[print("Hello world!")]];
G2L["cf"]["LayoutOrder"] = 1;
G2L["cf"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["d0"] = Instance.new("UIPadding", G2L["cf"]);
G2L["d0"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["d1"] = Instance.new("TextLabel", G2L["cf"]);
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d1"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["BackgroundTransparency"] = 1;
G2L["d1"]["RichText"] = true;
G2L["d1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[]];
G2L["d1"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d1"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["d2"] = Instance.new("TextLabel", G2L["cd"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["TextSize"] = 14;
G2L["d2"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["BackgroundTransparency"] = 0.85;
G2L["d2"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Text"] = [[1]];
G2L["d2"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d2"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["d3"] = Instance.new("UIPadding", G2L["d2"]);
G2L["d3"]["PaddingRight"] = UDim.new(0, 5);
G2L["d3"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["d4"] = Instance.new("Frame", G2L["5"]);
G2L["d4"]["Visible"] = false;
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Name"] = [[ToolsPage]];
G2L["d4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["d5"] = Instance.new("ScrollingFrame", G2L["d4"]);
G2L["d5"]["Active"] = true;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["d5"]["Name"] = [[ScrollingFrameMainChat]];
G2L["d5"]["ScrollBarImageTransparency"] = 0.85;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["ScrollBarThickness"] = 5;
G2L["d5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["d6"] = Instance.new("UIListLayout", G2L["d5"]);
G2L["d6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["d7"] = Instance.new("UIPadding", G2L["d5"]);
G2L["d7"]["PaddingTop"] = UDim.new(0, 5);
G2L["d7"]["PaddingRight"] = UDim.new(0, 5);
G2L["d7"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["d8"] = Instance.new("Folder", G2L["d5"]);
G2L["d8"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["d9"] = Instance.new("Frame", G2L["d8"]);
G2L["d9"]["Visible"] = false;
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d9"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Name"] = [[GroupFrame]];
G2L["d9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["da"] = Instance.new("UIPadding", G2L["d9"]);
G2L["da"]["PaddingTop"] = UDim.new(0, 5);
G2L["da"]["PaddingRight"] = UDim.new(0, 5);
G2L["da"]["PaddingLeft"] = UDim.new(0, 5);
G2L["da"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["db"] = Instance.new("Frame", G2L["d9"]);
G2L["db"]["BorderSizePixel"] = 0;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["db"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["dc"] = Instance.new("TextLabel", G2L["db"]);
G2L["dc"]["TextWrapped"] = true;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextSize"] = 15;
G2L["dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[Group Title]];
G2L["dc"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["dc"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["dd"] = Instance.new("UICorner", G2L["db"]);
G2L["dd"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["de"] = Instance.new("UIListLayout", G2L["db"]);
G2L["de"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["df"] = Instance.new("UIPadding", G2L["db"]);
G2L["df"]["PaddingTop"] = UDim.new(0, 10);
G2L["df"]["PaddingRight"] = UDim.new(0, 10);
G2L["df"]["PaddingLeft"] = UDim.new(0, 10);
G2L["df"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["e0"] = Instance.new("Frame", G2L["db"]);
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e0"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Name"] = [[ToolFrame]];
G2L["e0"]["LayoutOrder"] = 2;
G2L["e0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["e1"] = Instance.new("Frame", G2L["e0"]);
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["e1"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["e1"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["e2"] = Instance.new("UICorner", G2L["e1"]);
G2L["e2"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["e3"] = Instance.new("TextLabel", G2L["e0"]);
G2L["e3"]["TextWrapped"] = true;
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["TextSize"] = 14;
G2L["e3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e3"]["TextTransparency"] = 0.25;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["BackgroundTransparency"] = 1;
G2L["e3"]["RichText"] = true;
G2L["e3"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["Text"] = [[Tool Name]];
G2L["e3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e3"]["Name"] = [[ToolNameDesc]];
G2L["e3"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["e4"] = Instance.new("UIPadding", G2L["e0"]);
G2L["e4"]["PaddingTop"] = UDim.new(0, 5);
G2L["e4"]["PaddingRight"] = UDim.new(0, 15);
G2L["e4"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["e5"] = Instance.new("IntValue", G2L["d5"]);
G2L["e5"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["e6"] = Instance.new("TextLabel", G2L["d5"]);
G2L["e6"]["TextWrapped"] = true;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["TextSize"] = 20;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["e6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["BackgroundTransparency"] = 1;
G2L["e6"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e6"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["e6"]["LayoutOrder"] = -1;
G2L["e6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e6"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["e7"] = Instance.new("UIPadding", G2L["e6"]);
G2L["e7"]["PaddingTop"] = UDim.new(0, 5);
G2L["e7"]["PaddingRight"] = UDim.new(0, 15);
G2L["e7"]["PaddingLeft"] = UDim.new(0, 15);
G2L["e7"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["e8"] = Instance.new("Frame", G2L["5"]);
G2L["e8"]["Visible"] = false;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Name"] = [[TemplatePage]];
G2L["e8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["e9"] = Instance.new("Frame", G2L["5"]);
G2L["e9"]["Visible"] = false;
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e9"]["Name"] = [[StartupPage]];
G2L["e9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["ea"] = Instance.new("ScrollingFrame", G2L["e9"]);
G2L["ea"]["Active"] = true;
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["ea"]["Name"] = [[ScrollingFrameMainChat]];
G2L["ea"]["ScrollBarImageTransparency"] = 0.85;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ea"]["ScrollBarThickness"] = 5;
G2L["ea"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["eb"] = Instance.new("UIListLayout", G2L["ea"]);
G2L["eb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["ec"] = Instance.new("UIPadding", G2L["ea"]);
G2L["ec"]["PaddingTop"] = UDim.new(0, 5);
G2L["ec"]["PaddingRight"] = UDim.new(0, 5);
G2L["ec"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["ed"] = Instance.new("Folder", G2L["ea"]);
G2L["ed"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["ee"] = Instance.new("Frame", G2L["ed"]);
G2L["ee"]["Visible"] = false;
G2L["ee"]["BorderSizePixel"] = 0;
G2L["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ee"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ee"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ee"]["Name"] = [[GroupFrame]];
G2L["ee"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["ef"] = Instance.new("UIPadding", G2L["ee"]);
G2L["ef"]["PaddingTop"] = UDim.new(0, 5);
G2L["ef"]["PaddingRight"] = UDim.new(0, 5);
G2L["ef"]["PaddingLeft"] = UDim.new(0, 5);
G2L["ef"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["f0"] = Instance.new("Frame", G2L["ee"]);
G2L["f0"]["BorderSizePixel"] = 0;
G2L["f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f0"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f0"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["f1"] = Instance.new("TextLabel", G2L["f0"]);
G2L["f1"]["TextWrapped"] = true;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["TextSize"] = 15;
G2L["f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["BackgroundTransparency"] = 1;
G2L["f1"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Text"] = [[Group Title]];
G2L["f1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f1"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["f2"] = Instance.new("UICorner", G2L["f0"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["f3"] = Instance.new("UIListLayout", G2L["f0"]);
G2L["f3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["f4"] = Instance.new("UIPadding", G2L["f0"]);
G2L["f4"]["PaddingTop"] = UDim.new(0, 10);
G2L["f4"]["PaddingRight"] = UDim.new(0, 10);
G2L["f4"]["PaddingLeft"] = UDim.new(0, 10);
G2L["f4"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["f5"] = Instance.new("Frame", G2L["f0"]);
G2L["f5"]["BorderSizePixel"] = 0;
G2L["f5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f5"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f5"]["Name"] = [[ToolFrame]];
G2L["f5"]["LayoutOrder"] = 2;
G2L["f5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["f6"] = Instance.new("Frame", G2L["f5"]);
G2L["f6"]["BorderSizePixel"] = 0;
G2L["f6"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["f6"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["f6"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f6"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["f7"] = Instance.new("UICorner", G2L["f6"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["f8"] = Instance.new("TextLabel", G2L["f5"]);
G2L["f8"]["TextWrapped"] = true;
G2L["f8"]["BorderSizePixel"] = 0;
G2L["f8"]["TextSize"] = 14;
G2L["f8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f8"]["TextTransparency"] = 0.25;
G2L["f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f8"]["BackgroundTransparency"] = 1;
G2L["f8"]["RichText"] = true;
G2L["f8"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f8"]["Text"] = [[Tool Name]];
G2L["f8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f8"]["Name"] = [[ToolNameDesc]];
G2L["f8"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["f9"] = Instance.new("UIPadding", G2L["f5"]);
G2L["f9"]["PaddingTop"] = UDim.new(0, 5);
G2L["f9"]["PaddingRight"] = UDim.new(0, 15);
G2L["f9"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["fa"] = Instance.new("IntValue", G2L["ea"]);
G2L["fa"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["fb"] = Instance.new("TextLabel", G2L["ea"]);
G2L["fb"]["TextWrapped"] = true;
G2L["fb"]["BorderSizePixel"] = 0;
G2L["fb"]["TextSize"] = 20;
G2L["fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["fb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["BackgroundTransparency"] = 1;
G2L["fb"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fb"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["fb"]["LayoutOrder"] = -1;
G2L["fb"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fb"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["fc"] = Instance.new("UIPadding", G2L["fb"]);
G2L["fc"]["PaddingTop"] = UDim.new(0, 5);
G2L["fc"]["PaddingRight"] = UDim.new(0, 15);
G2L["fc"]["PaddingLeft"] = UDim.new(0, 15);
G2L["fc"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["fd"] = Instance.new("Frame", G2L["5"]);
G2L["fd"]["Visible"] = false;
G2L["fd"]["BorderSizePixel"] = 0;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fd"]["Name"] = [[HistoryPage]];
G2L["fd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
G2L["fe"] = Instance.new("ScrollingFrame", G2L["fd"]);
G2L["fe"]["Active"] = true;
G2L["fe"]["BorderSizePixel"] = 0;
G2L["fe"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["fe"]["Name"] = [[ScrollingFrameMainChat]];
G2L["fe"]["ScrollBarImageTransparency"] = 0.85;
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["ScrollBarThickness"] = 5;
G2L["fe"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["ff"] = Instance.new("UIListLayout", G2L["fe"]);
G2L["ff"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["100"] = Instance.new("UIPadding", G2L["fe"]);
G2L["100"]["PaddingTop"] = UDim.new(0, 5);
G2L["100"]["PaddingRight"] = UDim.new(0, 5);
G2L["100"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["101"] = Instance.new("Folder", G2L["fe"]);
G2L["101"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["102"] = Instance.new("Frame", G2L["101"]);
G2L["102"]["Visible"] = false;
G2L["102"]["BorderSizePixel"] = 0;
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["102"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["102"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["102"]["Name"] = [[GroupFrame]];
G2L["102"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["103"] = Instance.new("UIPadding", G2L["102"]);
G2L["103"]["PaddingTop"] = UDim.new(0, 5);
G2L["103"]["PaddingRight"] = UDim.new(0, 5);
G2L["103"]["PaddingLeft"] = UDim.new(0, 5);
G2L["103"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["104"] = Instance.new("Frame", G2L["102"]);
G2L["104"]["BorderSizePixel"] = 0;
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["104"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["104"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["104"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["105"] = Instance.new("UICorner", G2L["104"]);
G2L["105"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["106"] = Instance.new("UIPadding", G2L["104"]);
G2L["106"]["PaddingTop"] = UDim.new(0, 10);
G2L["106"]["PaddingRight"] = UDim.new(0, 10);
G2L["106"]["PaddingLeft"] = UDim.new(0, 10);
G2L["106"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["107"] = Instance.new("Frame", G2L["104"]);
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["107"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["Name"] = [[Left]];
G2L["107"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["108"] = Instance.new("UIListLayout", G2L["107"]);
G2L["108"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["109"] = Instance.new("Frame", G2L["107"]);
G2L["109"]["BorderSizePixel"] = 0;
G2L["109"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["109"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["109"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["109"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["109"]["Name"] = [[ToolsRowFrame]];
G2L["109"]["LayoutOrder"] = 2;
G2L["109"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["10a"] = Instance.new("UIListLayout", G2L["109"]);
G2L["10a"]["Padding"] = UDim.new(0, 5);
G2L["10a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["10a"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["10b"] = Instance.new("Frame", G2L["109"]);
G2L["10b"]["BorderSizePixel"] = 0;
G2L["10b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10b"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["10b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10b"]["Name"] = [[ToolFrame]];
G2L["10b"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["10c"] = Instance.new("Frame", G2L["10b"]);
G2L["10c"]["BorderSizePixel"] = 0;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["10c"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["10c"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10c"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["10d"] = Instance.new("UICorner", G2L["10c"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["10e"] = Instance.new("UICorner", G2L["10b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["10f"] = Instance.new("TextLabel", G2L["10b"]);
G2L["10f"]["TextWrapped"] = true;
G2L["10f"]["BorderSizePixel"] = 0;
G2L["10f"]["TextSize"] = 14;
G2L["10f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10f"]["TextTransparency"] = 0.25;
G2L["10f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10f"]["BackgroundTransparency"] = 1;
G2L["10f"]["RichText"] = true;
G2L["10f"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["10f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10f"]["Text"] = [[Tool Name]];
G2L["10f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10f"]["Name"] = [[ToolName]];
G2L["10f"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["110"] = Instance.new("UIPadding", G2L["10b"]);
G2L["110"]["PaddingTop"] = UDim.new(0, 5);
G2L["110"]["PaddingRight"] = UDim.new(0, 7);
G2L["110"]["PaddingLeft"] = UDim.new(0, 7);
G2L["110"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["111"] = Instance.new("UIPadding", G2L["109"]);
G2L["111"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["112"] = Instance.new("TextLabel", G2L["107"]);
G2L["112"]["TextWrapped"] = true;
G2L["112"]["BorderSizePixel"] = 0;
G2L["112"]["TextSize"] = 15;
G2L["112"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["112"]["TextTransparency"] = 0.5;
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["112"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["BackgroundTransparency"] = 1;
G2L["112"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["112"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["112"]["Text"] = [[0 messages]];
G2L["112"]["LayoutOrder"] = 1;
G2L["112"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["112"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["113"] = Instance.new("TextLabel", G2L["107"]);
G2L["113"]["TextWrapped"] = true;
G2L["113"]["BorderSizePixel"] = 0;
G2L["113"]["TextSize"] = 15;
G2L["113"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["113"]["TextTransparency"] = 0.5;
G2L["113"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["113"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["BackgroundTransparency"] = 1;
G2L["113"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["113"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["113"]["Text"] = [[Timestamp]];
G2L["113"]["LayoutOrder"] = 999;
G2L["113"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["113"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["114"] = Instance.new("Frame", G2L["107"]);
G2L["114"]["BorderSizePixel"] = 0;
G2L["114"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["114"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["114"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["114"]["Name"] = [[TopRowFrame]];
G2L["114"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["115"] = Instance.new("TextLabel", G2L["114"]);
G2L["115"]["TextWrapped"] = true;
G2L["115"]["BorderSizePixel"] = 0;
G2L["115"]["TextSize"] = 15;
G2L["115"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["115"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["115"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["BackgroundTransparency"] = 1;
G2L["115"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["115"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["115"]["Text"] = [[Title]];
G2L["115"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["115"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["116"] = Instance.new("UIListLayout", G2L["114"]);
G2L["116"]["Padding"] = UDim.new(0, 5);
G2L["116"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["116"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["117"] = Instance.new("Frame", G2L["114"]);
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["117"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["117"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["117"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["117"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["118"] = Instance.new("TextLabel", G2L["117"]);
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["TextSize"] = 14;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["118"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["118"]["BackgroundTransparency"] = 1;
G2L["118"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["118"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["118"]["Text"] = [[Active]];
G2L["118"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["119"] = Instance.new("UIPadding", G2L["118"]);
G2L["119"]["PaddingRight"] = UDim.new(0, 5);
G2L["119"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["11a"] = Instance.new("UICorner", G2L["117"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["11b"] = Instance.new("Frame", G2L["104"]);
G2L["11b"]["BorderSizePixel"] = 0;
G2L["11b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11b"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["11b"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["11b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11b"]["Name"] = [[Right]];
G2L["11b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["11c"] = Instance.new("UIGridLayout", G2L["11b"]);
G2L["11c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["11c"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["11c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["11d"] = Instance.new("TextButton", G2L["11b"]);
G2L["11d"]["BorderSizePixel"] = 0;
G2L["11d"]["TextSize"] = 14;
G2L["11d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11d"]["BackgroundTransparency"] = 0.85;
G2L["11d"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["11d"]["LayoutOrder"] = 1;
G2L["11d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11d"]["Text"] = [[]];
G2L["11d"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["11e"] = Instance.new("UICorner", G2L["11d"]);
G2L["11e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["11f"] = Instance.new("ImageLabel", G2L["11d"]);
G2L["11f"]["BorderSizePixel"] = 0;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["Image"] = [[rbxassetid://98174359243805]];
G2L["11f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11f"]["BackgroundTransparency"] = 1;
G2L["11f"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["120"] = Instance.new("UIPadding", G2L["11d"]);
G2L["120"]["PaddingTop"] = UDim.new(0, 3);
G2L["120"]["PaddingRight"] = UDim.new(0, 1);
G2L["120"]["PaddingLeft"] = UDim.new(0, 3);
G2L["120"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["121"] = Instance.new("TextButton", G2L["11b"]);
G2L["121"]["BorderSizePixel"] = 0;
G2L["121"]["TextSize"] = 14;
G2L["121"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["121"]["BackgroundTransparency"] = 0.85;
G2L["121"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["Text"] = [[]];
G2L["121"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["122"] = Instance.new("UICorner", G2L["121"]);
G2L["122"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["123"] = Instance.new("ImageLabel", G2L["121"]);
G2L["123"]["BorderSizePixel"] = 0;
G2L["123"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["123"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["123"]["Image"] = [[rbxassetid://115957379627811]];
G2L["123"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["123"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["124"] = Instance.new("UIPadding", G2L["121"]);
G2L["124"]["PaddingTop"] = UDim.new(0, 3);
G2L["124"]["PaddingRight"] = UDim.new(0, 3);
G2L["124"]["PaddingLeft"] = UDim.new(0, 3);
G2L["124"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["125"] = Instance.new("IntValue", G2L["fe"]);
G2L["125"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["126"] = Instance.new("TextLabel", G2L["fe"]);
G2L["126"]["TextWrapped"] = true;
G2L["126"]["BorderSizePixel"] = 0;
G2L["126"]["TextSize"] = 20;
G2L["126"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["126"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["126"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["126"]["BackgroundTransparency"] = 1;
G2L["126"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["126"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["Text"] = [[Conversation history]];
G2L["126"]["LayoutOrder"] = -1;
G2L["126"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["126"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["127"] = Instance.new("UIPadding", G2L["126"]);
G2L["127"]["PaddingTop"] = UDim.new(0, 5);
G2L["127"]["PaddingRight"] = UDim.new(0, 15);
G2L["127"]["PaddingLeft"] = UDim.new(0, 15);
G2L["127"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage
G2L["128"] = Instance.new("Frame", G2L["5"]);
G2L["128"]["Visible"] = false;
G2L["128"]["BorderSizePixel"] = 0;
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["128"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["128"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["128"]["Name"] = [[BrowserPage]];
G2L["128"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer
G2L["129"] = Instance.new("Frame", G2L["128"]);
G2L["129"]["BorderSizePixel"] = 0;
G2L["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["Size"] = UDim2.new(1, 0, 0, 200);
G2L["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["129"]["Name"] = [[PlatformsContainer]];
G2L["129"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["12a"] = Instance.new("Frame", G2L["129"]);
G2L["12a"]["BorderSizePixel"] = 0;
G2L["12a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12a"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["12a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["12b"] = Instance.new("UIListLayout", G2L["12a"]);
G2L["12b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["12b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["12c"] = Instance.new("ImageLabel", G2L["12a"]);
G2L["12c"]["BorderSizePixel"] = 0;
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12c"]["Image"] = [[rbxassetid://73464751831922]];
G2L["12c"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["12d"] = Instance.new("TextLabel", G2L["12a"]);
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["TextSize"] = 20;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["12d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["BackgroundTransparency"] = 1;
G2L["12d"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["Text"] = [[You]];
G2L["12d"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["12e"] = Instance.new("Frame", G2L["12a"]);
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["12e"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["12e"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["Name"] = [[IconColor]];
G2L["12e"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["12f"] = Instance.new("UICorner", G2L["12e"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.UIGridLayout
G2L["130"] = Instance.new("UIGridLayout", G2L["129"]);
G2L["130"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["130"]["CellSize"] = UDim2.new(0, 175, 0, 100);
G2L["130"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["130"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["131"] = Instance.new("Frame", G2L["129"]);
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["131"]["LayoutOrder"] = 1;
G2L["131"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["132"] = Instance.new("UIListLayout", G2L["131"]);
G2L["132"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["132"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["133"] = Instance.new("ImageLabel", G2L["131"]);
G2L["133"]["BorderSizePixel"] = 0;
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["133"]["Image"] = [[rbxassetid://131600704891794]];
G2L["133"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["133"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["134"] = Instance.new("TextLabel", G2L["131"]);
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["TextSize"] = 20;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["134"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["BackgroundTransparency"] = 1;
G2L["134"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["134"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["134"]["Text"] = [[Bridge]];
G2L["134"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["135"] = Instance.new("Frame", G2L["131"]);
G2L["135"]["BorderSizePixel"] = 0;
G2L["135"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["135"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["135"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["135"]["Name"] = [[IconColor]];
G2L["135"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["136"] = Instance.new("UICorner", G2L["135"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["137"] = Instance.new("Frame", G2L["129"]);
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["LayoutOrder"] = 2;
G2L["137"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["138"] = Instance.new("UIListLayout", G2L["137"]);
G2L["138"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["138"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["139"] = Instance.new("ImageLabel", G2L["137"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["Image"] = [[rbxassetid://90807079339617]];
G2L["139"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["13a"] = Instance.new("TextLabel", G2L["137"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["TextSize"] = 20;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["13a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["BackgroundTransparency"] = 1;
G2L["13a"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Text"] = [[Web]];
G2L["13a"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["13b"] = Instance.new("Frame", G2L["137"]);
G2L["13b"]["BorderSizePixel"] = 0;
G2L["13b"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["13b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["13b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["13b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13b"]["Name"] = [[IconColor]];
G2L["13b"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["13c"] = Instance.new("UICorner", G2L["13b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip
G2L["13d"] = Instance.new("TextLabel", G2L["128"]);
G2L["13d"]["TextWrapped"] = true;
G2L["13d"]["BorderSizePixel"] = 0;
G2L["13d"]["TextSize"] = 20;
G2L["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["13d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["BackgroundTransparency"] = 1;
G2L["13d"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["13d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13d"]["Text"] = [[You can connect IYAI to your browser]];
G2L["13d"]["LayoutOrder"] = -1;
G2L["13d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["13d"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip.UIPadding
G2L["13e"] = Instance.new("UIPadding", G2L["13d"]);
G2L["13e"]["PaddingTop"] = UDim.new(0, 5);
G2L["13e"]["PaddingRight"] = UDim.new(0, 15);
G2L["13e"]["PaddingLeft"] = UDim.new(0, 15);
G2L["13e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.UIPadding
G2L["13f"] = Instance.new("UIPadding", G2L["128"]);
G2L["13f"]["PaddingTop"] = UDim.new(0, 5);
G2L["13f"]["PaddingRight"] = UDim.new(0, 25);
G2L["13f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["13f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer
G2L["140"] = Instance.new("Frame", G2L["128"]);
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["Name"] = [[ShimmerContainer]];
G2L["140"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1
G2L["141"] = Instance.new("Frame", G2L["140"]);
G2L["141"]["BorderSizePixel"] = 0;
G2L["141"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["141"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["141"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["141"]["Name"] = [[Shimmer1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UICorner
G2L["142"] = Instance.new("UICorner", G2L["141"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UIGradient
G2L["143"] = Instance.new("UIGradient", G2L["141"]);
G2L["143"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["143"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.UIGridLayout
G2L["144"] = Instance.new("UIGridLayout", G2L["140"]);
G2L["144"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["144"]["CellSize"] = UDim2.new(0, 75, 0, 3);
G2L["144"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["144"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["144"]["CellPadding"] = UDim2.new(0, 105, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2
G2L["145"] = Instance.new("Frame", G2L["140"]);
G2L["145"]["BorderSizePixel"] = 0;
G2L["145"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["145"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["145"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["145"]["Name"] = [[Shimmer2]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UICorner
G2L["146"] = Instance.new("UICorner", G2L["145"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UIGradient
G2L["147"] = Instance.new("UIGradient", G2L["145"]);
G2L["147"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["147"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer
G2L["148"] = Instance.new("Frame", G2L["128"]);
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["148"]["Position"] = UDim2.new(0, 0, 0, 175);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["Name"] = [[InstructionsContainer]];
G2L["148"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIListLayout
G2L["149"] = Instance.new("UIListLayout", G2L["148"]);
G2L["149"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIPadding
G2L["14a"] = Instance.new("UIPadding", G2L["148"]);
G2L["14a"]["PaddingTop"] = UDim.new(0, 10);
G2L["14a"]["PaddingRight"] = UDim.new(0, 10);
G2L["14a"]["PaddingLeft"] = UDim.new(0, 10);
G2L["14a"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1
G2L["14b"] = Instance.new("Frame", G2L["148"]);
G2L["14b"]["BorderSizePixel"] = 0;
G2L["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["14b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14b"]["Name"] = [[Frame1]];
G2L["14b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.UIListLayout
G2L["14c"] = Instance.new("UIListLayout", G2L["14b"]);
G2L["14c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["14c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.TextLabel
G2L["14d"] = Instance.new("TextLabel", G2L["14b"]);
G2L["14d"]["BorderSizePixel"] = 0;
G2L["14d"]["TextSize"] = 17;
G2L["14d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["BackgroundTransparency"] = 1;
G2L["14d"]["RichText"] = true;
G2L["14d"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["14d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14d"]["Text"] = [[<b>1.</b> Download and run bridge (<font color="#aa6b6b">iyai_bridge.py</font> or <font color="#aa6b6b">iyai_bridge.ps1</font>) from]];
G2L["14d"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton
G2L["14e"] = Instance.new("TextButton", G2L["14b"]);
G2L["14e"]["BorderSizePixel"] = 0;
G2L["14e"]["TextSize"] = 17;
G2L["14e"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["14e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14e"]["BackgroundTransparency"] = 1;
G2L["14e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["14e"]["Size"] = UDim2.new(0, 32, 0, 25);
G2L["14e"]["LayoutOrder"] = 1;
G2L["14e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14e"]["Text"] = [[here]];
G2L["14e"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton.Value
G2L["14f"] = Instance.new("StringValue", G2L["14e"]);
G2L["14f"]["Value"] = [[https://github.com/imluri/IYAI]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2
G2L["150"] = Instance.new("Frame", G2L["148"]);
G2L["150"]["BorderSizePixel"] = 0;
G2L["150"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["150"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["150"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["150"]["Name"] = [[Frame2]];
G2L["150"]["LayoutOrder"] = 1;
G2L["150"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.UIListLayout
G2L["151"] = Instance.new("UIListLayout", G2L["150"]);
G2L["151"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["151"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["152"] = Instance.new("TextLabel", G2L["150"]);
G2L["152"]["BorderSizePixel"] = 0;
G2L["152"]["TextSize"] = 17;
G2L["152"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["152"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["152"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["152"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["152"]["BackgroundTransparency"] = 1;
G2L["152"]["RichText"] = true;
G2L["152"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["152"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["152"]["Text"] = [[<b>2.</b>]];
G2L["152"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton
G2L["153"] = Instance.new("TextButton", G2L["150"]);
G2L["153"]["BorderSizePixel"] = 0;
G2L["153"]["TextSize"] = 17;
G2L["153"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["153"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["153"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["153"]["BackgroundTransparency"] = 1;
G2L["153"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["153"]["Size"] = UDim2.new(0, 58, 0, 25);
G2L["153"]["LayoutOrder"] = 1;
G2L["153"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["153"]["Text"] = [[Copy link]];
G2L["153"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton.Value
G2L["154"] = Instance.new("StringValue", G2L["153"]);
G2L["154"]["Value"] = [[https://imluri.github.io/iyai]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["155"] = Instance.new("TextLabel", G2L["150"]);
G2L["155"]["BorderSizePixel"] = 0;
G2L["155"]["TextSize"] = 17;
G2L["155"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["155"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["155"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["BackgroundTransparency"] = 1;
G2L["155"]["RichText"] = true;
G2L["155"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["155"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["155"]["Text"] = [[and paste into your browser]];
G2L["155"]["LayoutOrder"] = 2;
G2L["155"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton
G2L["156"] = Instance.new("TextButton", G2L["128"]);
G2L["156"]["BorderSizePixel"] = 0;
G2L["156"]["TextSize"] = 23;
G2L["156"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["156"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["156"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["156"]["BackgroundTransparency"] = 0.95;
G2L["156"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["156"]["LayoutOrder"] = 1;
G2L["156"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["156"]["Text"] = [[Open Logs]];
G2L["156"]["Name"] = [[OpenBrowserLogsButton]];
G2L["156"]["Position"] = UDim2.new(0, 0, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton.UICorner
G2L["157"] = Instance.new("UICorner", G2L["156"]);
G2L["157"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton
G2L["158"] = Instance.new("TextButton", G2L["128"]);
G2L["158"]["BorderSizePixel"] = 0;
G2L["158"]["TextSize"] = 23;
G2L["158"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["158"]["BackgroundTransparency"] = 0.95;
G2L["158"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["158"]["LayoutOrder"] = 1;
G2L["158"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["158"]["Text"] = [[Force Refresh]];
G2L["158"]["Name"] = [[ForceRefreshButton]];
G2L["158"]["Position"] = UDim2.new(0, 0, 1, -65);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton.UICorner
G2L["159"] = Instance.new("UICorner", G2L["158"]);
G2L["159"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage
G2L["15a"] = Instance.new("Frame", G2L["5"]);
G2L["15a"]["Visible"] = false;
G2L["15a"]["BorderSizePixel"] = 0;
G2L["15a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15a"]["Name"] = [[SkillsPage]];
G2L["15a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat
G2L["15b"] = Instance.new("ScrollingFrame", G2L["15a"]);
G2L["15b"]["Active"] = true;
G2L["15b"]["BorderSizePixel"] = 0;
G2L["15b"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["15b"]["Name"] = [[ScrollingFrameMainChat]];
G2L["15b"]["ScrollBarImageTransparency"] = 0.85;
G2L["15b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15b"]["ScrollBarThickness"] = 5;
G2L["15b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIListLayout
G2L["15c"] = Instance.new("UIListLayout", G2L["15b"]);
G2L["15c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIPadding
G2L["15d"] = Instance.new("UIPadding", G2L["15b"]);
G2L["15d"]["PaddingTop"] = UDim.new(0, 5);
G2L["15d"]["PaddingRight"] = UDim.new(0, 5);
G2L["15d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate
G2L["15e"] = Instance.new("Folder", G2L["15b"]);
G2L["15e"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["15f"] = Instance.new("Frame", G2L["15e"]);
G2L["15f"]["Visible"] = false;
G2L["15f"]["BorderSizePixel"] = 0;
G2L["15f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["15f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15f"]["Name"] = [[GroupFrame]];
G2L["15f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["160"] = Instance.new("UIPadding", G2L["15f"]);
G2L["160"]["PaddingTop"] = UDim.new(0, 5);
G2L["160"]["PaddingRight"] = UDim.new(0, 5);
G2L["160"]["PaddingLeft"] = UDim.new(0, 5);
G2L["160"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["161"] = Instance.new("Frame", G2L["15f"]);
G2L["161"]["BorderSizePixel"] = 0;
G2L["161"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["161"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["161"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["161"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["161"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["162"] = Instance.new("UICorner", G2L["161"]);
G2L["162"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["163"] = Instance.new("UIPadding", G2L["161"]);
G2L["163"]["PaddingTop"] = UDim.new(0, 10);
G2L["163"]["PaddingRight"] = UDim.new(0, 10);
G2L["163"]["PaddingLeft"] = UDim.new(0, 10);
G2L["163"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["164"] = Instance.new("Frame", G2L["161"]);
G2L["164"]["BorderSizePixel"] = 0;
G2L["164"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["164"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["164"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["164"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["164"]["Name"] = [[Left]];
G2L["164"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["165"] = Instance.new("UIListLayout", G2L["164"]);
G2L["165"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.DescriptionLabel
G2L["166"] = Instance.new("TextLabel", G2L["164"]);
G2L["166"]["TextWrapped"] = true;
G2L["166"]["BorderSizePixel"] = 0;
G2L["166"]["TextSize"] = 15;
G2L["166"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["166"]["TextTransparency"] = 0.5;
G2L["166"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["166"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["166"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["166"]["BackgroundTransparency"] = 1;
G2L["166"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["166"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["166"]["Text"] = [[Description]];
G2L["166"]["LayoutOrder"] = 1;
G2L["166"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["166"]["Name"] = [[DescriptionLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["167"] = Instance.new("Frame", G2L["164"]);
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Name"] = [[TopRowFrame]];
G2L["167"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.SkillLabel
G2L["168"] = Instance.new("TextLabel", G2L["167"]);
G2L["168"]["TextWrapped"] = true;
G2L["168"]["BorderSizePixel"] = 0;
G2L["168"]["TextSize"] = 15;
G2L["168"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["168"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["168"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["168"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["168"]["BackgroundTransparency"] = 1;
G2L["168"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["168"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["168"]["Text"] = [[Skill]];
G2L["168"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["168"]["Name"] = [[SkillLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["169"] = Instance.new("UIListLayout", G2L["167"]);
G2L["169"]["Padding"] = UDim.new(0, 5);
G2L["169"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["169"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["16a"] = Instance.new("Frame", G2L["161"]);
G2L["16a"]["BorderSizePixel"] = 0;
G2L["16a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["16a"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["16a"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["16a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16a"]["Name"] = [[Right]];
G2L["16a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["16b"] = Instance.new("UIGridLayout", G2L["16a"]);
G2L["16b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["16b"]["CellSize"] = UDim2.new(0, 40, 0, 40);
G2L["16b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer
G2L["16c"] = Instance.new("Frame", G2L["16a"]);
G2L["16c"]["BorderSizePixel"] = 0;
G2L["16c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16c"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["16c"]["Position"] = UDim2.new(0.5, -50, 0, 0);
G2L["16c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16c"]["Name"] = [[ToggleContainer]];
G2L["16c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG
G2L["16d"] = Instance.new("Frame", G2L["16c"]);
G2L["16d"]["BorderSizePixel"] = 0;
G2L["16d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16d"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["16d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16d"]["Name"] = [[BG]];
G2L["16d"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.UICorner
G2L["16e"] = Instance.new("UICorner", G2L["16d"]);
G2L["16e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button
G2L["16f"] = Instance.new("TextButton", G2L["16d"]);
G2L["16f"]["BorderSizePixel"] = 0;
G2L["16f"]["TextSize"] = 14;
G2L["16f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["16f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16f"]["Text"] = [[]];
G2L["16f"]["Name"] = [[Button]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button.UICorner
G2L["170"] = Instance.new("UICorner", G2L["16f"]);
G2L["170"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.TotalElements
G2L["171"] = Instance.new("IntValue", G2L["15b"]);
G2L["171"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip
G2L["172"] = Instance.new("TextLabel", G2L["15b"]);
G2L["172"]["TextWrapped"] = true;
G2L["172"]["BorderSizePixel"] = 0;
G2L["172"]["TextSize"] = 20;
G2L["172"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["172"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["172"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["172"]["BackgroundTransparency"] = 1;
G2L["172"]["RichText"] = true;
G2L["172"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["172"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["172"]["Text"] = [[The AI references these guides when handling complex tasks.<br />Add your own to extend its knowledge.]];
G2L["172"]["LayoutOrder"] = -2;
G2L["172"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["172"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["173"] = Instance.new("UIPadding", G2L["172"]);
G2L["173"]["PaddingTop"] = UDim.new(0, 5);
G2L["173"]["PaddingRight"] = UDim.new(0, 15);
G2L["173"]["PaddingLeft"] = UDim.new(0, 15);
G2L["173"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame
G2L["174"] = Instance.new("Frame", G2L["15b"]);
G2L["174"]["BorderSizePixel"] = 0;
G2L["174"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["174"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["174"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["174"]["LayoutOrder"] = -1;
G2L["174"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshButton
G2L["175"] = Instance.new("ImageButton", G2L["174"]);
G2L["175"]["BorderSizePixel"] = 0;
G2L["175"]["BackgroundTransparency"] = 1;
G2L["175"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["Image"] = [[rbxassetid://74363941121004]];
G2L["175"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["175"]["LayoutOrder"] = -1;
G2L["175"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["175"]["Name"] = [[RefreshButton]];
G2L["175"]["Rotation"] = -180;
G2L["175"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.UIPadding
G2L["176"] = Instance.new("UIPadding", G2L["174"]);
G2L["176"]["PaddingTop"] = UDim.new(0, 5);
G2L["176"]["PaddingRight"] = UDim.new(0, 5);
G2L["176"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshText
G2L["177"] = Instance.new("TextLabel", G2L["174"]);
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["TextSize"] = 14;
G2L["177"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["177"]["TextTransparency"] = 0.5;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["177"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["BackgroundTransparency"] = 1;
G2L["177"]["Size"] = UDim2.new(1, -25, 1, 0);
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["Text"] = [[Refreshed]];
G2L["177"]["Name"] = [[RefreshText]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["178"] = Instance.new("Frame", G2L["4"]);
G2L["178"]["BorderSizePixel"] = 0;
G2L["178"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["178"]["ClipsDescendants"] = true;
G2L["178"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["178"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["178"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame
G2L["179"] = Instance.new("ScrollingFrame", G2L["178"]);
G2L["179"]["Active"] = true;
G2L["179"]["BorderSizePixel"] = 0;
G2L["179"]["CanvasSize"] = UDim2.new(1, 0, 0, 400);
G2L["179"]["ScrollBarImageTransparency"] = 1;
G2L["179"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["179"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["179"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["179"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["179"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.Highlight
G2L["17a"] = Instance.new("Frame", G2L["179"]);
G2L["17a"]["BorderSizePixel"] = 0;
G2L["17a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["17a"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["17a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17a"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame
G2L["17b"] = Instance.new("Frame", G2L["179"]);
G2L["17b"]["BorderSizePixel"] = 0;
G2L["17b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17b"]["Name"] = [[ContainerFrame]];
G2L["17b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIGridLayout
G2L["17c"] = Instance.new("UIGridLayout", G2L["17b"]);
G2L["17c"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["17c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIPadding
G2L["17d"] = Instance.new("UIPadding", G2L["17b"]);
G2L["17d"]["PaddingTop"] = UDim.new(0, 30);
G2L["17d"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame
G2L["17e"] = Instance.new("Frame", G2L["17b"]);
G2L["17e"]["BorderSizePixel"] = 0;
G2L["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["17e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["Name"] = [[AgentButtonFrame]];
G2L["17e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.ImageLabel
G2L["17f"] = Instance.new("ImageLabel", G2L["17e"]);
G2L["17f"]["BorderSizePixel"] = 0;
G2L["17f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17f"]["Image"] = [[rbxassetid://97622965928648]];
G2L["17f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["17f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.TextLabel
G2L["180"] = Instance.new("TextLabel", G2L["17e"]);
G2L["180"]["BorderSizePixel"] = 0;
G2L["180"]["TextSize"] = 17;
G2L["180"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["180"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["180"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["180"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["180"]["BackgroundTransparency"] = 1;
G2L["180"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["180"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["180"]["Text"] = [[Agent]];
G2L["180"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.Hitbox
G2L["181"] = Instance.new("TextButton", G2L["17e"]);
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["TextTransparency"] = 1;
G2L["181"]["TextSize"] = 14;
G2L["181"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["181"]["ZIndex"] = 999;
G2L["181"]["BackgroundTransparency"] = 1;
G2L["181"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame
G2L["182"] = Instance.new("Frame", G2L["17b"]);
G2L["182"]["BorderSizePixel"] = 0;
G2L["182"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["182"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["182"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["182"]["Name"] = [[BrowserButtonFrame]];
G2L["182"]["LayoutOrder"] = 10;
G2L["182"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.ImageLabel
G2L["183"] = Instance.new("ImageLabel", G2L["182"]);
G2L["183"]["BorderSizePixel"] = 0;
G2L["183"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["183"]["Image"] = [[rbxassetid://90807079339617]];
G2L["183"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["183"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["183"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.TextLabel
G2L["184"] = Instance.new("TextLabel", G2L["182"]);
G2L["184"]["BorderSizePixel"] = 0;
G2L["184"]["TextSize"] = 17;
G2L["184"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["184"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["184"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["184"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["184"]["BackgroundTransparency"] = 1;
G2L["184"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["184"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["184"]["Text"] = [[Browser]];
G2L["184"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.Hitbox
G2L["185"] = Instance.new("TextButton", G2L["182"]);
G2L["185"]["BorderSizePixel"] = 0;
G2L["185"]["TextTransparency"] = 1;
G2L["185"]["TextSize"] = 14;
G2L["185"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["185"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["185"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["185"]["ZIndex"] = 999;
G2L["185"]["BackgroundTransparency"] = 1;
G2L["185"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["185"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["185"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame
G2L["186"] = Instance.new("Frame", G2L["17b"]);
G2L["186"]["BorderSizePixel"] = 0;
G2L["186"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["186"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["186"]["Name"] = [[CodeButtonFrame]];
G2L["186"]["LayoutOrder"] = 1;
G2L["186"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.TextLabel
G2L["187"] = Instance.new("TextLabel", G2L["186"]);
G2L["187"]["BorderSizePixel"] = 0;
G2L["187"]["TextSize"] = 17;
G2L["187"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["187"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["187"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["187"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["187"]["BackgroundTransparency"] = 1;
G2L["187"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["187"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["Text"] = [[Code]];
G2L["187"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.ImageLabel
G2L["188"] = Instance.new("ImageLabel", G2L["186"]);
G2L["188"]["BorderSizePixel"] = 0;
G2L["188"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["Image"] = [[rbxassetid://102596836544188]];
G2L["188"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["188"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["188"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.Hitbox
G2L["189"] = Instance.new("TextButton", G2L["186"]);
G2L["189"]["BorderSizePixel"] = 0;
G2L["189"]["TextTransparency"] = 1;
G2L["189"]["TextSize"] = 14;
G2L["189"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["189"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["189"]["ZIndex"] = 999;
G2L["189"]["BackgroundTransparency"] = 1;
G2L["189"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["189"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame
G2L["18a"] = Instance.new("Frame", G2L["17b"]);
G2L["18a"]["BorderSizePixel"] = 0;
G2L["18a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18a"]["Name"] = [[HistoryButtonFrame]];
G2L["18a"]["LayoutOrder"] = 2;
G2L["18a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.ImageLabel
G2L["18b"] = Instance.new("ImageLabel", G2L["18a"]);
G2L["18b"]["BorderSizePixel"] = 0;
G2L["18b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18b"]["Image"] = [[rbxassetid://70487508311290]];
G2L["18b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.TextLabel
G2L["18c"] = Instance.new("TextLabel", G2L["18a"]);
G2L["18c"]["BorderSizePixel"] = 0;
G2L["18c"]["TextSize"] = 17;
G2L["18c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18c"]["BackgroundTransparency"] = 1;
G2L["18c"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["18c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18c"]["Text"] = [[History]];
G2L["18c"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.Hitbox
G2L["18d"] = Instance.new("TextButton", G2L["18a"]);
G2L["18d"]["BorderSizePixel"] = 0;
G2L["18d"]["TextTransparency"] = 1;
G2L["18d"]["TextSize"] = 14;
G2L["18d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18d"]["ZIndex"] = 999;
G2L["18d"]["BackgroundTransparency"] = 1;
G2L["18d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame
G2L["18e"] = Instance.new("Frame", G2L["17b"]);
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["Name"] = [[SettingsButtonFrame]];
G2L["18e"]["LayoutOrder"] = 999;
G2L["18e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.ImageLabel
G2L["18f"] = Instance.new("ImageLabel", G2L["18e"]);
G2L["18f"]["BorderSizePixel"] = 0;
G2L["18f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18f"]["Image"] = [[rbxassetid://98245295559168]];
G2L["18f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.TextLabel
G2L["190"] = Instance.new("TextLabel", G2L["18e"]);
G2L["190"]["BorderSizePixel"] = 0;
G2L["190"]["TextSize"] = 17;
G2L["190"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["190"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["190"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["190"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["190"]["BackgroundTransparency"] = 1;
G2L["190"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["190"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["190"]["Text"] = [[Settings]];
G2L["190"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.Hitbox
G2L["191"] = Instance.new("TextButton", G2L["18e"]);
G2L["191"]["BorderSizePixel"] = 0;
G2L["191"]["TextTransparency"] = 1;
G2L["191"]["TextSize"] = 14;
G2L["191"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["191"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["191"]["ZIndex"] = 999;
G2L["191"]["BackgroundTransparency"] = 1;
G2L["191"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["191"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame
G2L["192"] = Instance.new("Frame", G2L["17b"]);
G2L["192"]["BorderSizePixel"] = 0;
G2L["192"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["192"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["192"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["192"]["Name"] = [[SkillsButtonFrame]];
G2L["192"]["LayoutOrder"] = 5;
G2L["192"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.Hitbox
G2L["193"] = Instance.new("TextButton", G2L["192"]);
G2L["193"]["BorderSizePixel"] = 0;
G2L["193"]["TextTransparency"] = 1;
G2L["193"]["TextSize"] = 14;
G2L["193"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["193"]["ZIndex"] = 999;
G2L["193"]["BackgroundTransparency"] = 1;
G2L["193"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["193"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.ImageLabel
G2L["194"] = Instance.new("ImageLabel", G2L["192"]);
G2L["194"]["BorderSizePixel"] = 0;
G2L["194"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["Image"] = [[rbxassetid://119927491521709]];
G2L["194"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["194"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["194"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.TextLabel
G2L["195"] = Instance.new("TextLabel", G2L["192"]);
G2L["195"]["BorderSizePixel"] = 0;
G2L["195"]["TextSize"] = 17;
G2L["195"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["195"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["195"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["195"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["195"]["BackgroundTransparency"] = 1;
G2L["195"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["195"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["195"]["Text"] = [[Skills]];
G2L["195"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame
G2L["196"] = Instance.new("Frame", G2L["17b"]);
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["196"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["196"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["Name"] = [[StartupButtonFrame]];
G2L["196"]["LayoutOrder"] = 4;
G2L["196"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.ImageLabel
G2L["197"] = Instance.new("ImageLabel", G2L["196"]);
G2L["197"]["BorderSizePixel"] = 0;
G2L["197"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["197"]["Image"] = [[rbxassetid://136122222813963]];
G2L["197"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["197"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["197"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.TextLabel
G2L["198"] = Instance.new("TextLabel", G2L["196"]);
G2L["198"]["BorderSizePixel"] = 0;
G2L["198"]["TextSize"] = 17;
G2L["198"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["198"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["198"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["198"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["198"]["BackgroundTransparency"] = 1;
G2L["198"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["198"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["198"]["Text"] = [[Startup]];
G2L["198"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.Hitbox
G2L["199"] = Instance.new("TextButton", G2L["196"]);
G2L["199"]["BorderSizePixel"] = 0;
G2L["199"]["TextTransparency"] = 1;
G2L["199"]["TextSize"] = 14;
G2L["199"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["199"]["ZIndex"] = 999;
G2L["199"]["BackgroundTransparency"] = 1;
G2L["199"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["199"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame
G2L["19a"] = Instance.new("Frame", G2L["17b"]);
G2L["19a"]["BorderSizePixel"] = 0;
G2L["19a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19a"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["19a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19a"]["Name"] = [[ToolsButtonFrame]];
G2L["19a"]["LayoutOrder"] = 3;
G2L["19a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.ImageLabel
G2L["19b"] = Instance.new("ImageLabel", G2L["19a"]);
G2L["19b"]["BorderSizePixel"] = 0;
G2L["19b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19b"]["Image"] = [[rbxassetid://70572480663906]];
G2L["19b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.TextLabel
G2L["19c"] = Instance.new("TextLabel", G2L["19a"]);
G2L["19c"]["BorderSizePixel"] = 0;
G2L["19c"]["TextSize"] = 17;
G2L["19c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19c"]["BackgroundTransparency"] = 1;
G2L["19c"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["19c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19c"]["Text"] = [[Tools]];
G2L["19c"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.Hitbox
G2L["19d"] = Instance.new("TextButton", G2L["19a"]);
G2L["19d"]["BorderSizePixel"] = 0;
G2L["19d"]["TextTransparency"] = 1;
G2L["19d"]["TextSize"] = 14;
G2L["19d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19d"]["ZIndex"] = 999;
G2L["19d"]["BackgroundTransparency"] = 1;
G2L["19d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["19e"] = Instance.new("TextLabel", G2L["4"]);
G2L["19e"]["ZIndex"] = 2;
G2L["19e"]["BorderSizePixel"] = 0;
G2L["19e"]["TextSize"] = 14;
G2L["19e"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["19e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["19e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19e"]["Text"] = [[IYAI]];
G2L["19e"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["19f"] = Instance.new("UIPadding", G2L["19e"]);
G2L["19f"]["PaddingRight"] = UDim.new(0, 5);
G2L["19f"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["1a0"] = Instance.new("TextButton", G2L["19e"]);
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["TextSize"] = 14;
G2L["1a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a0"]["ZIndex"] = 999;
G2L["1a0"]["BackgroundTransparency"] = 1;
G2L["1a0"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Text"] = [[X]];
G2L["1a0"]["Name"] = [[CloseButton]];
G2L["1a0"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["1a1"] = Instance.new("TextLabel", G2L["19e"]);
G2L["1a1"]["BorderSizePixel"] = 0;
G2L["1a1"]["TextSize"] = 11;
G2L["1a1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a1"]["TextTransparency"] = 0.5;
G2L["1a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["BackgroundTransparency"] = 1;
G2L["1a1"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a1"]["Visible"] = false;
G2L["1a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["Text"] = [[by @urluri]];
G2L["1a1"]["Name"] = [[AuthorLabel]];
G2L["1a1"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["1a2"] = Instance.new("TextLabel", G2L["19e"]);
G2L["1a2"]["BorderSizePixel"] = 0;
G2L["1a2"]["TextSize"] = 11;
G2L["1a2"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1a2"]["TextTransparency"] = 0.5;
G2L["1a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["BackgroundTransparency"] = 1;
G2L["1a2"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a2"]["Text"] = [[v]];
G2L["1a2"]["Name"] = [[VersionLabel]];
G2L["1a2"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["1a3"] = Instance.new("TextButton", G2L["19e"]);
G2L["1a3"]["BorderSizePixel"] = 0;
G2L["1a3"]["TextSize"] = 14;
G2L["1a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a3"]["ZIndex"] = 999;
G2L["1a3"]["BackgroundTransparency"] = 1;
G2L["1a3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["Text"] = [[—]];
G2L["1a3"]["Name"] = [[MinimizeButton]];
G2L["1a3"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["1a4"] = Instance.new("Frame", G2L["4"]);
G2L["1a4"]["Visible"] = false;
G2L["1a4"]["ZIndex"] = 999;
G2L["1a4"]["BorderSizePixel"] = 0;
G2L["1a4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a4"]["Name"] = [[ModalFrame]];
G2L["1a4"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["1a5"] = Instance.new("UIPadding", G2L["1a4"]);
G2L["1a5"]["PaddingTop"] = UDim.new(0, 25);
G2L["1a5"]["PaddingRight"] = UDim.new(0, 25);
G2L["1a5"]["PaddingLeft"] = UDim.new(0, 25);
G2L["1a5"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["1a6"] = Instance.new("Frame", G2L["1a4"]);
G2L["1a6"]["BorderSizePixel"] = 0;
G2L["1a6"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1a6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["1a7"] = Instance.new("UICorner", G2L["1a6"]);
G2L["1a7"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["1a8"] = Instance.new("TextButton", G2L["1a6"]);
G2L["1a8"]["BorderSizePixel"] = 0;
G2L["1a8"]["TextSize"] = 14;
G2L["1a8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a8"]["ZIndex"] = 999;
G2L["1a8"]["BackgroundTransparency"] = 1;
G2L["1a8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a8"]["Text"] = [[X]];
G2L["1a8"]["Name"] = [[CloseButton]];
G2L["1a8"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["1a9"] = Instance.new("Frame", G2L["1a6"]);
G2L["1a9"]["Visible"] = false;
G2L["1a9"]["BorderSizePixel"] = 0;
G2L["1a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a9"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1a9"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a9"]["Name"] = [[SearchModelModal]];
G2L["1a9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["1aa"] = Instance.new("UIPadding", G2L["1a9"]);
G2L["1aa"]["PaddingTop"] = UDim.new(0, 10);
G2L["1aa"]["PaddingRight"] = UDim.new(0, 10);
G2L["1aa"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1aa"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["1ab"] = Instance.new("TextBox", G2L["1a9"]);
G2L["1ab"]["Name"] = [[SearchBox]];
G2L["1ab"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ab"]["BorderSizePixel"] = 0;
G2L["1ab"]["TextSize"] = 14;
G2L["1ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ab"]["PlaceholderText"] = [[Search models...]];
G2L["1ab"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["1ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["Text"] = [[]];
G2L["1ab"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["1ac"] = Instance.new("UICorner", G2L["1ab"]);
G2L["1ac"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["1ad"] = Instance.new("UIPadding", G2L["1ab"]);
G2L["1ad"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ad"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ad"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ad"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["1ae"] = Instance.new("ImageButton", G2L["1a9"]);
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["BackgroundTransparency"] = 1;
G2L["1ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["Image"] = [[rbxassetid://94907058451749]];
G2L["1ae"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ae"]["Name"] = [[SearchButton]];
G2L["1ae"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["1af"] = Instance.new("ScrollingFrame", G2L["1a9"]);
G2L["1af"]["Active"] = true;
G2L["1af"]["BorderSizePixel"] = 0;
G2L["1af"]["ScrollBarImageTransparency"] = 0.9;
G2L["1af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1af"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["1af"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["1af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1af"]["ScrollBarThickness"] = 6;
G2L["1af"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["1b0"] = Instance.new("TextButton", G2L["1af"]);
G2L["1b0"]["BorderSizePixel"] = 0;
G2L["1b0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b0"]["TextSize"] = 14;
G2L["1b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b0"]["BackgroundTransparency"] = 1;
G2L["1b0"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b0"]["Text"] = [[SomeModel]];
G2L["1b0"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["1b1"] = Instance.new("UIPadding", G2L["1b0"]);
G2L["1b1"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["1b2"] = Instance.new("UIGridLayout", G2L["1af"]);
G2L["1b2"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["1b2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["1b3"] = Instance.new("Frame", G2L["1a6"]);
G2L["1b3"]["Visible"] = false;
G2L["1b3"]["BorderSizePixel"] = 0;
G2L["1b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b3"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1b3"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b3"]["Name"] = [[ToolResultViewModal]];
G2L["1b3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["1b4"] = Instance.new("UIPadding", G2L["1b3"]);
G2L["1b4"]["PaddingTop"] = UDim.new(0, 10);
G2L["1b4"]["PaddingRight"] = UDim.new(0, 10);
G2L["1b4"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1b4"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame
G2L["1b5"] = Instance.new("ScrollingFrame", G2L["1b3"]);
G2L["1b5"]["Active"] = true;
G2L["1b5"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1b5"]["ScrollBarImageTransparency"] = 0.8;
G2L["1b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1b5"]["Size"] = UDim2.new(1, 0, 1, -5);
G2L["1b5"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b5"]["ScrollBarThickness"] = 4;
G2L["1b5"]["LayoutOrder"] = 1;
G2L["1b5"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UIPadding
G2L["1b6"] = Instance.new("UIPadding", G2L["1b5"]);
G2L["1b6"]["PaddingTop"] = UDim.new(0, 5);
G2L["1b6"]["PaddingRight"] = UDim.new(0, 5);
G2L["1b6"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UICorner
G2L["1b7"] = Instance.new("UICorner", G2L["1b5"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.TextBox
G2L["1b8"] = Instance.new("TextBox", G2L["1b5"]);
G2L["1b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b8"]["BorderSizePixel"] = 0;
G2L["1b8"]["TextEditable"] = false;
G2L["1b8"]["TextSize"] = 14;
G2L["1b8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b8"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1b8"]["MultiLine"] = true;
G2L["1b8"]["ClearTextOnFocus"] = false;
G2L["1b8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b8"]["Text"] = [[Tool execution]];
G2L["1b8"]["LayoutOrder"] = 1;
G2L["1b8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["1b9"] = Instance.new("TextLabel", G2L["1a6"]);
G2L["1b9"]["BorderSizePixel"] = 0;
G2L["1b9"]["TextSize"] = 17;
G2L["1b9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["BackgroundTransparency"] = 1;
G2L["1b9"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b9"]["Name"] = [[TitleLabel]];
G2L["1b9"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["1ba"] = Instance.new("UIPadding", G2L["1b9"]);
G2L["1ba"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ba"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ba"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ba"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["1bb"] = Instance.new("Frame", G2L["1a6"]);
G2L["1bb"]["Visible"] = false;
G2L["1bb"]["BorderSizePixel"] = 0;
G2L["1bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bb"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1bb"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bb"]["Name"] = [[SystemPromptModal]];
G2L["1bb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["1bc"] = Instance.new("UIPadding", G2L["1bb"]);
G2L["1bc"]["PaddingTop"] = UDim.new(0, 10);
G2L["1bc"]["PaddingRight"] = UDim.new(0, 10);
G2L["1bc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1bc"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame
G2L["1bd"] = Instance.new("ScrollingFrame", G2L["1bb"]);
G2L["1bd"]["Active"] = true;
G2L["1bd"]["BorderSizePixel"] = 0;
G2L["1bd"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1bd"]["ScrollBarImageTransparency"] = 0.8;
G2L["1bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1bd"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1bd"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["ScrollBarThickness"] = 4;
G2L["1bd"]["LayoutOrder"] = 1;
G2L["1bd"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.TextBox
G2L["1be"] = Instance.new("TextBox", G2L["1bd"]);
G2L["1be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1be"]["BorderSizePixel"] = 0;
G2L["1be"]["TextEditable"] = false;
G2L["1be"]["TextSize"] = 14;
G2L["1be"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1be"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1be"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1be"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1be"]["MultiLine"] = true;
G2L["1be"]["ClearTextOnFocus"] = false;
G2L["1be"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1be"]["Text"] = [[Default system prompt]];
G2L["1be"]["LayoutOrder"] = 1;
G2L["1be"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UIPadding
G2L["1bf"] = Instance.new("UIPadding", G2L["1bd"]);
G2L["1bf"]["PaddingTop"] = UDim.new(0, 5);
G2L["1bf"]["PaddingRight"] = UDim.new(0, 5);
G2L["1bf"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UICorner
G2L["1c0"] = Instance.new("UICorner", G2L["1bd"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["1c1"] = Instance.new("Frame", G2L["1bb"]);
G2L["1c1"]["BorderSizePixel"] = 0;
G2L["1c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c1"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1c1"]["Position"] = UDim2.new(0, 0, 1, -25);
G2L["1c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c1"]["Name"] = [[BottomContainer]];
G2L["1c1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["1c2"] = Instance.new("UIGridLayout", G2L["1c1"]);
G2L["1c2"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1c2"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1c2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1c2"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["1c3"] = Instance.new("ImageButton", G2L["1c1"]);
G2L["1c3"]["BorderSizePixel"] = 0;
G2L["1c3"]["BackgroundTransparency"] = 1;
G2L["1c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["Image"] = [[rbxassetid://74363941121004]];
G2L["1c3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c3"]["Name"] = [[ResetButton]];
G2L["1c3"]["Rotation"] = -180;
G2L["1c3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["1c4"] = Instance.new("ImageButton", G2L["1c1"]);
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["BackgroundTransparency"] = 1;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1c4"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c4"]["LayoutOrder"] = 1;
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Name"] = [[SaveButton]];
G2L["1c4"]["Rotation"] = -180;
G2L["1c4"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal
G2L["1c5"] = Instance.new("Frame", G2L["1a6"]);
G2L["1c5"]["Visible"] = false;
G2L["1c5"]["BorderSizePixel"] = 0;
G2L["1c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c5"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1c5"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c5"]["Name"] = [[BrowserLogsViewModal]];
G2L["1c5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.UIPadding
G2L["1c6"] = Instance.new("UIPadding", G2L["1c5"]);
G2L["1c6"]["PaddingTop"] = UDim.new(0, 10);
G2L["1c6"]["PaddingRight"] = UDim.new(0, 10);
G2L["1c6"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1c6"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame
G2L["1c7"] = Instance.new("ScrollingFrame", G2L["1c5"]);
G2L["1c7"]["Active"] = true;
G2L["1c7"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1c7"]["ScrollBarImageTransparency"] = 0.8;
G2L["1c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1c7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c7"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["ScrollBarThickness"] = 4;
G2L["1c7"]["LayoutOrder"] = 1;
G2L["1c7"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UIPadding
G2L["1c8"] = Instance.new("UIPadding", G2L["1c7"]);
G2L["1c8"]["PaddingTop"] = UDim.new(0, 5);
G2L["1c8"]["PaddingRight"] = UDim.new(0, 5);
G2L["1c8"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UICorner
G2L["1c9"] = Instance.new("UICorner", G2L["1c7"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.TextBox
G2L["1ca"] = Instance.new("TextBox", G2L["1c7"]);
G2L["1ca"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ca"]["BorderSizePixel"] = 0;
G2L["1ca"]["TextEditable"] = false;
G2L["1ca"]["TextSize"] = 14;
G2L["1ca"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ca"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ca"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1ca"]["MultiLine"] = true;
G2L["1ca"]["ClearTextOnFocus"] = false;
G2L["1ca"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ca"]["Text"] = [[Browser logs]];
G2L["1ca"]["LayoutOrder"] = 1;
G2L["1ca"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal
G2L["1cb"] = Instance.new("Frame", G2L["1a6"]);
G2L["1cb"]["Visible"] = false;
G2L["1cb"]["BorderSizePixel"] = 0;
G2L["1cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cb"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1cb"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cb"]["Name"] = [[SetMultiAPIKeyModal]];
G2L["1cb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.UIPadding
G2L["1cc"] = Instance.new("UIPadding", G2L["1cb"]);
G2L["1cc"]["PaddingTop"] = UDim.new(0, 10);
G2L["1cc"]["PaddingRight"] = UDim.new(0, 10);
G2L["1cc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1cc"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame
G2L["1cd"] = Instance.new("ScrollingFrame", G2L["1cb"]);
G2L["1cd"]["Active"] = true;
G2L["1cd"]["BorderSizePixel"] = 0;
G2L["1cd"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1cd"]["ScrollBarImageTransparency"] = 0.8;
G2L["1cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1cd"]["Size"] = UDim2.new(1, 0, 1, -60);
G2L["1cd"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1cd"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["ScrollBarThickness"] = 4;
G2L["1cd"]["LayoutOrder"] = 1;
G2L["1cd"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.TextBox
G2L["1ce"] = Instance.new("TextBox", G2L["1cd"]);
G2L["1ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ce"]["BorderSizePixel"] = 0;
G2L["1ce"]["TextSize"] = 14;
G2L["1ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ce"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ce"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1ce"]["MultiLine"] = true;
G2L["1ce"]["ClearTextOnFocus"] = false;
G2L["1ce"]["PlaceholderText"] = [[sk-...]];
G2L["1ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ce"]["Text"] = [[]];
G2L["1ce"]["LayoutOrder"] = 1;
G2L["1ce"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UIPadding
G2L["1cf"] = Instance.new("UIPadding", G2L["1cd"]);
G2L["1cf"]["PaddingTop"] = UDim.new(0, 5);
G2L["1cf"]["PaddingRight"] = UDim.new(0, 5);
G2L["1cf"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UICorner
G2L["1d0"] = Instance.new("UICorner", G2L["1cd"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.NoteLabel
G2L["1d1"] = Instance.new("TextLabel", G2L["1cb"]);
G2L["1d1"]["TextWrapped"] = true;
G2L["1d1"]["BorderSizePixel"] = 0;
G2L["1d1"]["TextSize"] = 17;
G2L["1d1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d1"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1d1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d1"]["BackgroundTransparency"] = 1;
G2L["1d1"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d1"]["Text"] = [[One key per line. Rotates to the next key on rate limit.]];
G2L["1d1"]["Name"] = [[NoteLabel]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer
G2L["1d2"] = Instance.new("Frame", G2L["1cb"]);
G2L["1d2"]["BorderSizePixel"] = 0;
G2L["1d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d2"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1d2"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d2"]["Name"] = [[BottomContainer]];
G2L["1d2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.UIGridLayout
G2L["1d3"] = Instance.new("UIGridLayout", G2L["1d2"]);
G2L["1d3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d3"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1d3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d3"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.ClearButton
G2L["1d4"] = Instance.new("ImageButton", G2L["1d2"]);
G2L["1d4"]["BorderSizePixel"] = 0;
G2L["1d4"]["BackgroundTransparency"] = 1;
G2L["1d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["Image"] = [[rbxassetid://115957379627811]];
G2L["1d4"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d4"]["Name"] = [[ClearButton]];
G2L["1d4"]["Rotation"] = -180;
G2L["1d4"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.SaveButton
G2L["1d5"] = Instance.new("ImageButton", G2L["1d2"]);
G2L["1d5"]["BorderSizePixel"] = 0;
G2L["1d5"]["BackgroundTransparency"] = 1;
G2L["1d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d5"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1d5"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d5"]["LayoutOrder"] = 1;
G2L["1d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d5"]["Name"] = [[SaveButton]];
G2L["1d5"]["Rotation"] = -180;
G2L["1d5"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal
G2L["1d6"] = Instance.new("Frame", G2L["1a6"]);
G2L["1d6"]["Visible"] = false;
G2L["1d6"]["BorderSizePixel"] = 0;
G2L["1d6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d6"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1d6"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d6"]["Name"] = [[HostProviderModal]];
G2L["1d6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.UIPadding
G2L["1d7"] = Instance.new("UIPadding", G2L["1d6"]);
G2L["1d7"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d7"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d7"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d7"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer
G2L["1d8"] = Instance.new("Frame", G2L["1d6"]);
G2L["1d8"]["BorderSizePixel"] = 0;
G2L["1d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d8"]["Name"] = [[MainContainer]];
G2L["1d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame
G2L["1d9"] = Instance.new("ScrollingFrame", G2L["1d8"]);
G2L["1d9"]["Active"] = true;
G2L["1d9"]["BorderSizePixel"] = 0;
G2L["1d9"]["ScrollBarImageTransparency"] = 0.9;
G2L["1d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d9"]["ScrollBarThickness"] = 6;
G2L["1d9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIGridLayout
G2L["1da"] = Instance.new("UIGridLayout", G2L["1d9"]);
G2L["1da"]["CellSize"] = UDim2.new(0, 115, 0, 30);
G2L["1da"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton
G2L["1db"] = Instance.new("TextButton", G2L["1d9"]);
G2L["1db"]["BorderSizePixel"] = 0;
G2L["1db"]["TextSize"] = 14;
G2L["1db"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1db"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1db"]["BackgroundTransparency"] = 0.95;
G2L["1db"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["1db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1db"]["Text"] = [[]];
G2L["1db"]["Name"] = [[TemplateButton]];
G2L["1db"]["Visible"] = false;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UICorner
G2L["1dc"] = Instance.new("UICorner", G2L["1db"]);
G2L["1dc"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.ImageLabel
G2L["1dd"] = Instance.new("ImageLabel", G2L["1db"]);
G2L["1dd"]["BorderSizePixel"] = 0;
G2L["1dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["Image"] = [[rbxassetid://88246357492813]];
G2L["1dd"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UIPadding
G2L["1de"] = Instance.new("UIPadding", G2L["1db"]);
G2L["1de"]["PaddingTop"] = UDim.new(0, 5);
G2L["1de"]["PaddingRight"] = UDim.new(0, 5);
G2L["1de"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1de"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.TextLabel
G2L["1df"] = Instance.new("TextLabel", G2L["1db"]);
G2L["1df"]["BorderSizePixel"] = 0;
G2L["1df"]["TextSize"] = 14;
G2L["1df"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1df"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["BackgroundTransparency"] = 1;
G2L["1df"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1df"]["Text"] = [[OpenRouter]];
G2L["1df"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIPadding
G2L["1e0"] = Instance.new("UIPadding", G2L["1d9"]);
G2L["1e0"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame
G2L["1e1"] = Instance.new("CanvasGroup", G2L["1a4"]);
G2L["1e1"]["Visible"] = false;
G2L["1e1"]["BorderSizePixel"] = 0;
G2L["1e1"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1e1"]["Size"] = UDim2.new(0, 250, 0, 125);
G2L["1e1"]["Position"] = UDim2.new(0.5, -125, 0.5, -62);
G2L["1e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e1"]["Name"] = [[ConfirmationFrame]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.UICorner
G2L["1e2"] = Instance.new("UICorner", G2L["1e1"]);
G2L["1e2"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame
G2L["1e3"] = Instance.new("Frame", G2L["1e1"]);
G2L["1e3"]["BorderSizePixel"] = 0;
G2L["1e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e3"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1e3"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["1e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e3"]["Name"] = [[ButtonsContainerFrame]];
G2L["1e3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.UIGridLayout
G2L["1e4"] = Instance.new("UIGridLayout", G2L["1e3"]);
G2L["1e4"]["CellSize"] = UDim2.new(0.5, 0, 1, 0);
G2L["1e4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1e4"]["CellPadding"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.YesButton
G2L["1e5"] = Instance.new("TextButton", G2L["1e3"]);
G2L["1e5"]["BorderSizePixel"] = 0;
G2L["1e5"]["TextSize"] = 14;
G2L["1e5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e5"]["BackgroundTransparency"] = 0.9;
G2L["1e5"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e5"]["Text"] = [[Yes]];
G2L["1e5"]["Name"] = [[YesButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.NoButton
G2L["1e6"] = Instance.new("TextButton", G2L["1e3"]);
G2L["1e6"]["BorderSizePixel"] = 0;
G2L["1e6"]["TextSize"] = 14;
G2L["1e6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e6"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e6"]["BackgroundTransparency"] = 0.9;
G2L["1e6"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e6"]["Text"] = [[No]];
G2L["1e6"]["Name"] = [[NoButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel
G2L["1e7"] = Instance.new("TextLabel", G2L["1e1"]);
G2L["1e7"]["TextWrapped"] = true;
G2L["1e7"]["BorderSizePixel"] = 0;
G2L["1e7"]["TextSize"] = 17;
G2L["1e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e7"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e7"]["BackgroundTransparency"] = 1;
G2L["1e7"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["1e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Text"] = [[Are you sure?]];
G2L["1e7"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel.UIPadding
G2L["1e8"] = Instance.new("UIPadding", G2L["1e7"]);
G2L["1e8"]["PaddingTop"] = UDim.new(0, 10);
G2L["1e8"]["PaddingRight"] = UDim.new(0, 10);
G2L["1e8"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1e8"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["1e9"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["1e9"]["Visible"] = false;
G2L["1e9"]["GroupTransparency"] = 1;
G2L["1e9"]["ZIndex"] = 999;
G2L["1e9"]["BorderSizePixel"] = 0;
G2L["1e9"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1e9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e9"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["1ea"] = Instance.new("ImageLabel", G2L["1e9"]);
G2L["1ea"]["BorderSizePixel"] = 0;
G2L["1ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["Image"] = [[rbxassetid://115810237733262]];
G2L["1ea"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["1ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ea"]["BackgroundTransparency"] = 1;
G2L["1ea"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["1eb"] = Instance.new("TextLabel", G2L["1ea"]);
G2L["1eb"]["BorderSizePixel"] = 0;
G2L["1eb"]["TextSize"] = 35;
G2L["1eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["BackgroundTransparency"] = 1;
G2L["1eb"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["1eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1eb"]["Text"] = [[Artificial Intelligence]];
G2L["1eb"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI.ResizeLabel
G2L["1ec"] = Instance.new("ImageLabel", G2L["2"]);
G2L["1ec"]["ZIndex"] = 9999;
G2L["1ec"]["BorderSizePixel"] = 0;
G2L["1ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["Image"] = [[rbxassetid://128099302268852]];
G2L["1ec"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ec"]["BackgroundTransparency"] = 1;
G2L["1ec"]["Rotation"] = -90;
G2L["1ec"]["Name"] = [[ResizeLabel]];
G2L["1ec"]["Position"] = UDim2.new(1, -25, 1, -25);


-- StarterGui.IYAI.IYAI Toast Container
G2L["1ed"] = Instance.new("Frame", G2L["1"]);
G2L["1ed"]["BorderSizePixel"] = 0;
G2L["1ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ed"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["1ed"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["1ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ed"]["Name"] = [[IYAI Toast Container]];
G2L["1ed"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["1ee"] = Instance.new("CanvasGroup", G2L["1ed"]);
G2L["1ee"]["BorderSizePixel"] = 0;
G2L["1ee"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1ee"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["1ee"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["1ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ee"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["1ef"] = Instance.new("UICorner", G2L["1ee"]);
G2L["1ef"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["1f0"] = Instance.new("Frame", G2L["1ee"]);
G2L["1f0"]["BorderSizePixel"] = 0;
G2L["1f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f0"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["1f0"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["1f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f0"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["1f1"] = Instance.new("TextLabel", G2L["1ee"]);
G2L["1f1"]["ZIndex"] = 2;
G2L["1f1"]["BorderSizePixel"] = 0;
G2L["1f1"]["TextSize"] = 14;
G2L["1f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f1"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1f1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f1"]["Text"] = [[Toast Title]];
G2L["1f1"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["1f2"] = Instance.new("UIPadding", G2L["1f1"]);
G2L["1f2"]["PaddingRight"] = UDim.new(0, 5);
G2L["1f2"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["1f3"] = Instance.new("TextButton", G2L["1f1"]);
G2L["1f3"]["BorderSizePixel"] = 0;
G2L["1f3"]["TextSize"] = 14;
G2L["1f3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f3"]["BackgroundTransparency"] = 1;
G2L["1f3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f3"]["Text"] = [[X]];
G2L["1f3"]["Name"] = [[CloseButton]];
G2L["1f3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["1f4"] = Instance.new("UICorner", G2L["1f3"]);
G2L["1f4"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["1f5"] = Instance.new("TextLabel", G2L["1ee"]);
G2L["1f5"]["TextWrapped"] = true;
G2L["1f5"]["BorderSizePixel"] = 0;
G2L["1f5"]["TextSize"] = 14;
G2L["1f5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f5"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1f5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f5"]["BackgroundTransparency"] = 1;
G2L["1f5"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f5"]["Name"] = [[ToastDesc]];
G2L["1f5"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["1f6"] = Instance.new("UIPadding", G2L["1f5"]);
G2L["1f6"]["PaddingTop"] = UDim.new(0, 5);
G2L["1f6"]["PaddingRight"] = UDim.new(0, 10);
G2L["1f6"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1f6"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["1f7"] = Instance.new("Frame", G2L["1ee"]);
G2L["1f7"]["ZIndex"] = 999;
G2L["1f7"]["BorderSizePixel"] = 0;
G2L["1f7"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["1f7"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1f7"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["1f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f7"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["1f8"] = Instance.new("UICorner", G2L["1f7"]);
G2L["1f8"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["1f9"] = Instance.new("UIPadding", G2L["1ed"]);
G2L["1f9"]["PaddingTop"] = UDim.new(0, 15);
G2L["1f9"]["PaddingRight"] = UDim.new(0, 15);
G2L["1f9"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1f9"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["1fa"] = Instance.new("StringValue", G2L["1"]);
G2L["1fa"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["1fb"] = Instance.new("StringValue", G2L["1"]);
G2L["1fb"]["Name"] = [[Version]];
G2L["1fb"]["Value"] = [[1.0.9]];



return G2L
