-- Instances: 506 | Scripts: 0 | Modules: 0 | Tags: 0
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
G2L["5a"]["Size"] = UDim2.new(1, 0, 0, 110);
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.LoadFreeButton
G2L["5e"] = Instance.new("TextButton", G2L["5a"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 0);
G2L["5e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["BackgroundTransparency"] = 0.95;
G2L["5e"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["5e"]["LayoutOrder"] = 3;
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[⭐ Click to load best and free model]];
G2L["5e"]["Name"] = [[LoadFreeButton]];
G2L["5e"]["Position"] = UDim2.new(0, 160, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UsageFrame.LoadFreeButton.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5e"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["60"] = Instance.new("Frame", G2L["59"]);
G2L["60"]["ZIndex"] = 2;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[ModelSelectFrame]];
G2L["60"]["LayoutOrder"] = 2;
G2L["60"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["61"] = Instance.new("TextLabel", G2L["60"]);
G2L["61"]["ZIndex"] = 0;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[Model]];
G2L["61"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["61"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["62"] = Instance.new("Frame", G2L["60"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["62"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["63"] = Instance.new("TextBox", G2L["62"]);
G2L["63"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["ClearTextOnFocus"] = false;
G2L["63"]["ClipsDescendants"] = true;
G2L["63"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["63"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[]];
G2L["63"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);
G2L["64"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["65"] = Instance.new("UIPadding", G2L["63"]);
G2L["65"]["PaddingTop"] = UDim.new(0, 10);
G2L["65"]["PaddingRight"] = UDim.new(0, 10);
G2L["65"]["PaddingLeft"] = UDim.new(0, 10);
G2L["65"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["66"] = Instance.new("ImageButton", G2L["62"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Image"] = [[rbxassetid://117799502668485]];
G2L["66"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["67"] = Instance.new("UICorner", G2L["66"]);
G2L["67"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["68"] = Instance.new("UIPadding", G2L["60"]);
G2L["68"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["69"] = Instance.new("Frame", G2L["59"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["69"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[TestFrame]];
G2L["69"]["LayoutOrder"] = 5;
G2L["69"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["6a"] = Instance.new("TextLabel", G2L["69"]);
G2L["6a"]["ZIndex"] = 0;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[Test Connection & Credential]];
G2L["6a"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["6b"] = Instance.new("UIGridLayout", G2L["69"]);
G2L["6b"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["6b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["6c"] = Instance.new("TextButton", G2L["69"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["BackgroundTransparency"] = 0.95;
G2L["6c"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6c"]["LayoutOrder"] = 1;
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[]];
G2L["6c"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["6d"] = Instance.new("UICorner", G2L["6c"]);
G2L["6d"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["6e"] = Instance.new("Frame", G2L["6c"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["LayoutOrder"] = 3;
G2L["6e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["6f"] = Instance.new("Frame", G2L["6e"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["6f"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["6f"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["71"] = Instance.new("TextLabel", G2L["6e"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextSize"] = 14;
G2L["71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["71"]["TextTransparency"] = 0.25;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["RichText"] = true;
G2L["71"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[Connection]];
G2L["71"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["71"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["72"] = Instance.new("UIPadding", G2L["6e"]);
G2L["72"]["PaddingTop"] = UDim.new(0, 5);
G2L["72"]["PaddingRight"] = UDim.new(0, 15);
G2L["72"]["PaddingLeft"] = UDim.new(0, 15);
G2L["72"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["73"] = Instance.new("TextButton", G2L["69"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextSize"] = 14;
G2L["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["BackgroundTransparency"] = 0.95;
G2L["73"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["73"]["LayoutOrder"] = 2;
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[]];
G2L["73"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["74"] = Instance.new("UICorner", G2L["73"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["75"] = Instance.new("Frame", G2L["73"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["75"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["LayoutOrder"] = 3;
G2L["75"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["76"] = Instance.new("Frame", G2L["75"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["76"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["76"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["78"] = Instance.new("TextLabel", G2L["75"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["TextSize"] = 14;
G2L["78"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["78"]["TextTransparency"] = 0.25;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["RichText"] = true;
G2L["78"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Text"] = [[Credential]];
G2L["78"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["78"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["79"] = Instance.new("UIPadding", G2L["75"]);
G2L["79"]["PaddingTop"] = UDim.new(0, 5);
G2L["79"]["PaddingRight"] = UDim.new(0, 15);
G2L["79"]["PaddingLeft"] = UDim.new(0, 15);
G2L["79"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["7a"] = Instance.new("Frame", G2L["59"]);
G2L["7a"]["ZIndex"] = 2;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Name"] = [[MaxStepFrame]];
G2L["7a"]["LayoutOrder"] = 3;
G2L["7a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["7b"] = Instance.new("TextLabel", G2L["7a"]);
G2L["7b"]["ZIndex"] = 0;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[Max Step]];
G2L["7b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7b"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["7c"] = Instance.new("Frame", G2L["7a"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["7c"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["7d"] = Instance.new("TextBox", G2L["7c"]);
G2L["7d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["ClearTextOnFocus"] = false;
G2L["7d"]["ClipsDescendants"] = true;
G2L["7d"]["PlaceholderText"] = [[100]];
G2L["7d"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7d"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Text"] = [[100]];
G2L["7d"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["7d"]);
G2L["7e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["7f"] = Instance.new("UIPadding", G2L["7d"]);
G2L["7f"]["PaddingTop"] = UDim.new(0, 10);
G2L["7f"]["PaddingRight"] = UDim.new(0, 10);
G2L["7f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["7f"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["80"] = Instance.new("ImageButton", G2L["7d"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["Image"] = [[rbxassetid://74363941121004]];
G2L["80"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Name"] = [[ResetButton]];
G2L["80"]["Rotation"] = -180;
G2L["80"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["81"] = Instance.new("UIPadding", G2L["7a"]);
G2L["81"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["82"] = Instance.new("UIListLayout", G2L["59"]);
G2L["82"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["83"] = Instance.new("Frame", G2L["59"]);
G2L["83"]["ZIndex"] = 2;
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Name"] = [[TemperatureFrame]];
G2L["83"]["LayoutOrder"] = 4;
G2L["83"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["84"] = Instance.new("TextLabel", G2L["83"]);
G2L["84"]["ZIndex"] = 0;
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextSize"] = 14;
G2L["84"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Text"] = [[Temperature]];
G2L["84"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["84"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["85"] = Instance.new("Frame", G2L["83"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["85"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["86"] = Instance.new("TextBox", G2L["85"]);
G2L["86"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["TextSize"] = 14;
G2L["86"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["ClearTextOnFocus"] = false;
G2L["86"]["ClipsDescendants"] = true;
G2L["86"]["PlaceholderText"] = [[100]];
G2L["86"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["86"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Text"] = [[1.0]];
G2L["86"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["87"] = Instance.new("UICorner", G2L["86"]);
G2L["87"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["88"] = Instance.new("UIPadding", G2L["86"]);
G2L["88"]["PaddingTop"] = UDim.new(0, 10);
G2L["88"]["PaddingRight"] = UDim.new(0, 10);
G2L["88"]["PaddingLeft"] = UDim.new(0, 10);
G2L["88"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["89"] = Instance.new("ImageButton", G2L["86"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundTransparency"] = 1;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Image"] = [[rbxassetid://74363941121004]];
G2L["89"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Name"] = [[ResetButton]];
G2L["89"]["Rotation"] = -180;
G2L["89"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["8a"] = Instance.new("UIPadding", G2L["83"]);
G2L["8a"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["8b"] = Instance.new("Frame", G2L["59"]);
G2L["8b"]["ZIndex"] = 2;
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["Name"] = [[SystemPromptFrame]];
G2L["8b"]["LayoutOrder"] = 4;
G2L["8b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["8b"]);
G2L["8c"]["PaddingTop"] = UDim.new(0, 5);
G2L["8c"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["8d"] = Instance.new("TextButton", G2L["8b"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["TextSize"] = 17;
G2L["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["BackgroundTransparency"] = 0.95;
G2L["8d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);
G2L["8e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["8f"] = Instance.new("Frame", G2L["59"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Name"] = [[HostSelectFrame]];
G2L["8f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["90"] = Instance.new("TextLabel", G2L["8f"]);
G2L["90"]["ZIndex"] = 0;
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["TextSize"] = 14;
G2L["90"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["BackgroundTransparency"] = 1;
G2L["90"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Text"] = [[Host Provider]];
G2L["90"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["90"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["91"] = Instance.new("UIPadding", G2L["8f"]);
G2L["91"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["92"] = Instance.new("Frame", G2L["8f"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["92"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox
G2L["93"] = Instance.new("TextBox", G2L["92"]);
G2L["93"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["TextSize"] = 14;
G2L["93"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["93"]["ClearTextOnFocus"] = false;
G2L["93"]["ClipsDescendants"] = true;
G2L["93"]["Size"] = UDim2.new(1, -115, 0, 30);
G2L["93"]["Position"] = UDim2.new(0, 115, 0, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Text"] = [[]];
G2L["93"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UICorner
G2L["94"] = Instance.new("UICorner", G2L["93"]);
G2L["94"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UIPadding
G2L["95"] = Instance.new("UIPadding", G2L["93"]);
G2L["95"]["PaddingTop"] = UDim.new(0, 10);
G2L["95"]["PaddingRight"] = UDim.new(0, 10);
G2L["95"]["PaddingLeft"] = UDim.new(0, 10);
G2L["95"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["96"] = Instance.new("TextButton", G2L["92"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["TextSize"] = 14;
G2L["96"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["BackgroundTransparency"] = 0.85;
G2L["96"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);
G2L["97"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["98"] = Instance.new("ImageLabel", G2L["96"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["Image"] = [[rbxassetid://88246357492813]];
G2L["98"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["96"]);
G2L["99"]["PaddingTop"] = UDim.new(0, 5);
G2L["99"]["PaddingRight"] = UDim.new(0, 5);
G2L["99"]["PaddingLeft"] = UDim.new(0, 5);
G2L["99"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.TextLabel
G2L["9a"] = Instance.new("TextLabel", G2L["96"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[OpenRouter]];
G2L["9a"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["9b"] = Instance.new("Frame", G2L["59"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["Size"] = UDim2.new(1, 10, 0, 35);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["Name"] = [[APIKeyFrame]];
G2L["9b"]["LayoutOrder"] = 1;
G2L["9b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["9c"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9c"]["ZIndex"] = 0;
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["TextSize"] = 14;
G2L["9c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["BackgroundTransparency"] = 1;
G2L["9c"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Text"] = [[API Key]];
G2L["9c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9c"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["9d"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["TextSize"] = 14;
G2L["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["BackgroundTransparency"] = 1;
G2L["9d"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["9d"]["ClipsDescendants"] = true;
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Text"] = [[]];
G2L["9d"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["9e"] = Instance.new("TextBox", G2L["9d"]);
G2L["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["TextTransparency"] = 1;
G2L["9e"]["TextSize"] = 14;
G2L["9e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9e"]["ClearTextOnFocus"] = false;
G2L["9e"]["ClipsDescendants"] = true;
G2L["9e"]["PlaceholderText"] = [[sk-...]];
G2L["9e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["9e"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["Text"] = [[]];
G2L["9e"]["LayoutOrder"] = 1;
G2L["9e"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["9f"] = Instance.new("UICorner", G2L["9e"]);
G2L["9f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["a0"] = Instance.new("UIPadding", G2L["9d"]);
G2L["a0"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["a1"] = Instance.new("UIPadding", G2L["9b"]);
G2L["a1"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame
G2L["a2"] = Instance.new("Frame", G2L["9b"]);
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["a2"]["Position"] = UDim2.new(0, 50, 0, 0);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Name"] = [[ModeFrame]];
G2L["a2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["a3"] = Instance.new("TextButton", G2L["a2"]);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["TextSize"] = 14;
G2L["a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a3"]["BackgroundTransparency"] = 0.95;
G2L["a3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Text"] = [[Single]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a3"]);
G2L["a4"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIGridLayout
G2L["a5"] = Instance.new("UIGridLayout", G2L["a2"]);
G2L["a5"]["CellSize"] = UDim2.new(0, 40, 0, 20);
G2L["a5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["a5"]["CellPadding"] = UDim2.new(0, 2, 0, 2);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIPadding
G2L["a6"] = Instance.new("UIPadding", G2L["a2"]);
G2L["a6"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["a7"] = Instance.new("TextButton", G2L["a2"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["TextSize"] = 14;
G2L["a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a7"]["BackgroundTransparency"] = 0.95;
G2L["a7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Text"] = [[Multi]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["a8"] = Instance.new("UICorner", G2L["a7"]);
G2L["a8"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton
G2L["a9"] = Instance.new("TextButton", G2L["9b"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["TextSize"] = 17;
G2L["a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a9"]["BackgroundTransparency"] = 0.95;
G2L["a9"]["Size"] = UDim2.new(1, -170, 0, 30);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[Set multiple API keys ↗]];
G2L["a9"]["Name"] = [[SetMultipleAPIKeysButton]];
G2L["a9"]["Visible"] = false;
G2L["a9"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["ab"] = Instance.new("CanvasGroup", G2L["58"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Size"] = UDim2.new(1, -15, 0, 35);
G2L["ab"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["ac"] = Instance.new("UICorner", G2L["ab"]);
G2L["ac"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["ad"] = Instance.new("TextLabel", G2L["ab"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 14;
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ad"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["ae"] = Instance.new("UIPadding", G2L["ad"]);
G2L["ae"]["PaddingTop"] = UDim.new(0, 5);
G2L["ae"]["PaddingRight"] = UDim.new(0, 5);
G2L["ae"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ae"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["af"] = Instance.new("TextButton", G2L["ad"]);
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["TextSize"] = 14;
G2L["af"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["af"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["af"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Text"] = [[Save changes]];
G2L["af"]["Name"] = [[Save]];
G2L["af"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["b0"] = Instance.new("UICorner", G2L["af"]);
G2L["b0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["b1"] = Instance.new("TextButton", G2L["ad"]);
G2L["b1"]["RichText"] = true;
G2L["b1"]["BorderSizePixel"] = 0;
G2L["b1"]["TextSize"] = 14;
G2L["b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["b1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b1"]["BackgroundTransparency"] = 1;
G2L["b1"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["Text"] = [[<u>Revert</u>]];
G2L["b1"]["Name"] = [[Revert]];
G2L["b1"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["b2"] = Instance.new("UICorner", G2L["b1"]);
G2L["b2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["b3"] = Instance.new("UIPadding", G2L["58"]);
G2L["b3"]["PaddingTop"] = UDim.new(0, 10);
G2L["b3"]["PaddingRight"] = UDim.new(0, 10);
G2L["b3"]["PaddingLeft"] = UDim.new(0, 15);
G2L["b3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["b4"] = Instance.new("Frame", G2L["5"]);
G2L["b4"]["Visible"] = false;
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Name"] = [[CodePage]];
G2L["b4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame
G2L["b5"] = Instance.new("Frame", G2L["b4"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b5"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[TopFrame]];
G2L["b5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame
G2L["b6"] = Instance.new("Frame", G2L["b5"]);
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["b6"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[ActionsFrame]];
G2L["b6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIGridLayout
G2L["b7"] = Instance.new("UIGridLayout", G2L["b6"]);
G2L["b7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["b7"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["b7"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["b7"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["b7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIPadding
G2L["b8"] = Instance.new("UIPadding", G2L["b6"]);
G2L["b8"]["PaddingTop"] = UDim.new(0, 5);
G2L["b8"]["PaddingRight"] = UDim.new(0, 5);
G2L["b8"]["PaddingLeft"] = UDim.new(0, 5);
G2L["b8"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton
G2L["b9"] = Instance.new("TextButton", G2L["b6"]);
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["TextTransparency"] = 1;
G2L["b9"]["TextSize"] = 14;
G2L["b9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b9"]["BackgroundTransparency"] = 0.9;
G2L["b9"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["b9"]["LayoutOrder"] = 2;
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Text"] = [[Clear]];
G2L["b9"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.ImageLabel
G2L["ba"] = Instance.new("ImageLabel", G2L["b9"]);
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["ImageColor3"] = Color3.fromRGB(171, 100, 100);
G2L["ba"]["Image"] = [[rbxassetid://115957379627811]];
G2L["ba"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UICorner
G2L["bb"] = Instance.new("UICorner", G2L["b9"]);
G2L["bb"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UIPadding
G2L["bc"] = Instance.new("UIPadding", G2L["b9"]);
G2L["bc"]["PaddingTop"] = UDim.new(0, 3);
G2L["bc"]["PaddingRight"] = UDim.new(0, 3);
G2L["bc"]["PaddingLeft"] = UDim.new(0, 3);
G2L["bc"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton
G2L["bd"] = Instance.new("TextButton", G2L["b6"]);
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["TextTransparency"] = 1;
G2L["bd"]["TextSize"] = 14;
G2L["bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bd"]["BackgroundTransparency"] = 0.9;
G2L["bd"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["bd"]["LayoutOrder"] = 1;
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Text"] = [[Copy]];
G2L["bd"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.ImageLabel
G2L["be"] = Instance.new("ImageLabel", G2L["bd"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["Image"] = [[rbxassetid://110180044304394]];
G2L["be"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UIPadding
G2L["bf"] = Instance.new("UIPadding", G2L["bd"]);
G2L["bf"]["PaddingTop"] = UDim.new(0, 5);
G2L["bf"]["PaddingRight"] = UDim.new(0, 5);
G2L["bf"]["PaddingLeft"] = UDim.new(0, 5);
G2L["bf"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UICorner
G2L["c0"] = Instance.new("UICorner", G2L["bd"]);
G2L["c0"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton
G2L["c1"] = Instance.new("TextButton", G2L["b6"]);
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["TextTransparency"] = 1;
G2L["c1"]["TextSize"] = 14;
G2L["c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c1"]["BackgroundTransparency"] = 0.9;
G2L["c1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Text"] = [[Run]];
G2L["c1"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.ImageLabel
G2L["c2"] = Instance.new("ImageLabel", G2L["c1"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["ImageColor3"] = Color3.fromRGB(86, 171, 0);
G2L["c2"]["Image"] = [[rbxassetid://135141271354749]];
G2L["c2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.UICorner
G2L["c3"] = Instance.new("UICorner", G2L["c1"]);
G2L["c3"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame
G2L["c4"] = Instance.new("Frame", G2L["b5"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[TabsFrame]];
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame
G2L["c5"] = Instance.new("ScrollingFrame", G2L["c4"]);
G2L["c5"]["Active"] = true;
G2L["c5"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["c5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c5"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.TabButton
G2L["c6"] = Instance.new("TextButton", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["TextSize"] = 14;
G2L["c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["c6"]["BackgroundTransparency"] = 0.9;
G2L["c6"]["Size"] = UDim2.new(0, 39, 0, 20);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["Text"] = [[Tab 1]];
G2L["c6"]["Name"] = [[TabButton]];
G2L["c6"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIListLayout
G2L["c7"] = Instance.new("UIListLayout", G2L["c5"]);
G2L["c7"]["Padding"] = UDim.new(0, 2);
G2L["c7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c7"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIPadding
G2L["c8"] = Instance.new("UIPadding", G2L["c5"]);
G2L["c8"]["PaddingTop"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.NewTabButton
G2L["c9"] = Instance.new("TextButton", G2L["c5"]);
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["TextSize"] = 20;
G2L["c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["c9"]["BackgroundTransparency"] = 1;
G2L["c9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["c9"]["LayoutOrder"] = 999;
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["Text"] = [[+]];
G2L["c9"]["Name"] = [[NewTabButton]];
G2L["c9"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.UIPadding
G2L["ca"] = Instance.new("UIPadding", G2L["c4"]);
G2L["ca"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["cb"] = Instance.new("UIListLayout", G2L["b4"]);
G2L["cb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["cc"] = Instance.new("ScrollingFrame", G2L["b4"]);
G2L["cc"]["Active"] = true;
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["cc"]["ScrollBarImageTransparency"] = 0.8;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["cc"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["ScrollBarThickness"] = 4;
G2L["cc"]["LayoutOrder"] = 1;
G2L["cc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["cd"] = Instance.new("UIListLayout", G2L["cc"]);
G2L["cd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["cd"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["ce"] = Instance.new("TextBox", G2L["cc"]);
G2L["ce"]["Name"] = [[CodeBox]];
G2L["ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["TextTransparency"] = 1;
G2L["ce"]["TextSize"] = 14;
G2L["ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ce"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["ce"]["MultiLine"] = true;
G2L["ce"]["ClearTextOnFocus"] = false;
G2L["ce"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["ce"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Text"] = [[print("Hello world!")]];
G2L["ce"]["LayoutOrder"] = 1;
G2L["ce"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["cf"] = Instance.new("UIPadding", G2L["ce"]);
G2L["cf"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["d0"] = Instance.new("TextLabel", G2L["ce"]);
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["TextSize"] = 14;
G2L["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["BackgroundTransparency"] = 1;
G2L["d0"]["RichText"] = true;
G2L["d0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Text"] = [[]];
G2L["d0"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d0"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["d1"] = Instance.new("TextLabel", G2L["cc"]);
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["BackgroundTransparency"] = 0.85;
G2L["d1"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[1]];
G2L["d1"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d1"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["d2"] = Instance.new("UIPadding", G2L["d1"]);
G2L["d2"]["PaddingRight"] = UDim.new(0, 5);
G2L["d2"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["d3"] = Instance.new("Frame", G2L["5"]);
G2L["d3"]["Visible"] = false;
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d3"]["Name"] = [[ToolsPage]];
G2L["d3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["d4"] = Instance.new("ScrollingFrame", G2L["d3"]);
G2L["d4"]["Active"] = true;
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["d4"]["Name"] = [[ScrollingFrameMainChat]];
G2L["d4"]["ScrollBarImageTransparency"] = 0.85;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["ScrollBarThickness"] = 5;
G2L["d4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["d5"] = Instance.new("UIListLayout", G2L["d4"]);
G2L["d5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["d6"] = Instance.new("UIPadding", G2L["d4"]);
G2L["d6"]["PaddingTop"] = UDim.new(0, 5);
G2L["d6"]["PaddingRight"] = UDim.new(0, 5);
G2L["d6"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["d7"] = Instance.new("Folder", G2L["d4"]);
G2L["d7"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["d8"] = Instance.new("Frame", G2L["d7"]);
G2L["d8"]["Visible"] = false;
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d8"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["Name"] = [[GroupFrame]];
G2L["d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["d9"] = Instance.new("UIPadding", G2L["d8"]);
G2L["d9"]["PaddingTop"] = UDim.new(0, 5);
G2L["d9"]["PaddingRight"] = UDim.new(0, 5);
G2L["d9"]["PaddingLeft"] = UDim.new(0, 5);
G2L["d9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["da"] = Instance.new("Frame", G2L["d8"]);
G2L["da"]["BorderSizePixel"] = 0;
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["da"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["da"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["da"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["db"] = Instance.new("TextLabel", G2L["da"]);
G2L["db"]["TextWrapped"] = true;
G2L["db"]["BorderSizePixel"] = 0;
G2L["db"]["TextSize"] = 15;
G2L["db"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["db"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["BackgroundTransparency"] = 1;
G2L["db"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["db"]["Text"] = [[Group Title]];
G2L["db"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["db"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["dc"] = Instance.new("UICorner", G2L["da"]);
G2L["dc"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["dd"] = Instance.new("UIListLayout", G2L["da"]);
G2L["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["de"] = Instance.new("UIPadding", G2L["da"]);
G2L["de"]["PaddingTop"] = UDim.new(0, 10);
G2L["de"]["PaddingRight"] = UDim.new(0, 10);
G2L["de"]["PaddingLeft"] = UDim.new(0, 10);
G2L["de"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["df"] = Instance.new("Frame", G2L["da"]);
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["df"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["df"]["Name"] = [[ToolFrame]];
G2L["df"]["LayoutOrder"] = 2;
G2L["df"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["e0"] = Instance.new("Frame", G2L["df"]);
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["e0"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["e0"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["e1"] = Instance.new("UICorner", G2L["e0"]);
G2L["e1"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["e2"] = Instance.new("TextLabel", G2L["df"]);
G2L["e2"]["TextWrapped"] = true;
G2L["e2"]["BorderSizePixel"] = 0;
G2L["e2"]["TextSize"] = 14;
G2L["e2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e2"]["TextTransparency"] = 0.25;
G2L["e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e2"]["BackgroundTransparency"] = 1;
G2L["e2"]["RichText"] = true;
G2L["e2"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e2"]["Text"] = [[Tool Name]];
G2L["e2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e2"]["Name"] = [[ToolNameDesc]];
G2L["e2"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["e3"] = Instance.new("UIPadding", G2L["df"]);
G2L["e3"]["PaddingTop"] = UDim.new(0, 5);
G2L["e3"]["PaddingRight"] = UDim.new(0, 15);
G2L["e3"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["e4"] = Instance.new("IntValue", G2L["d4"]);
G2L["e4"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["e5"] = Instance.new("TextLabel", G2L["d4"]);
G2L["e5"]["TextWrapped"] = true;
G2L["e5"]["BorderSizePixel"] = 0;
G2L["e5"]["TextSize"] = 20;
G2L["e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["e5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["BackgroundTransparency"] = 1;
G2L["e5"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e5"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["e5"]["LayoutOrder"] = -1;
G2L["e5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e5"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["e6"] = Instance.new("UIPadding", G2L["e5"]);
G2L["e6"]["PaddingTop"] = UDim.new(0, 5);
G2L["e6"]["PaddingRight"] = UDim.new(0, 15);
G2L["e6"]["PaddingLeft"] = UDim.new(0, 15);
G2L["e6"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["e7"] = Instance.new("Frame", G2L["5"]);
G2L["e7"]["Visible"] = false;
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e7"]["Name"] = [[TemplatePage]];
G2L["e7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["e8"] = Instance.new("Frame", G2L["5"]);
G2L["e8"]["Visible"] = false;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Name"] = [[StartupPage]];
G2L["e8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["e9"] = Instance.new("ScrollingFrame", G2L["e8"]);
G2L["e9"]["Active"] = true;
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["e9"]["Name"] = [[ScrollingFrameMainChat]];
G2L["e9"]["ScrollBarImageTransparency"] = 0.85;
G2L["e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e9"]["ScrollBarThickness"] = 5;
G2L["e9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["ea"] = Instance.new("UIListLayout", G2L["e9"]);
G2L["ea"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["eb"] = Instance.new("UIPadding", G2L["e9"]);
G2L["eb"]["PaddingTop"] = UDim.new(0, 5);
G2L["eb"]["PaddingRight"] = UDim.new(0, 5);
G2L["eb"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["ec"] = Instance.new("Folder", G2L["e9"]);
G2L["ec"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["ed"] = Instance.new("Frame", G2L["ec"]);
G2L["ed"]["Visible"] = false;
G2L["ed"]["BorderSizePixel"] = 0;
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ed"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ed"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ed"]["Name"] = [[GroupFrame]];
G2L["ed"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["ee"] = Instance.new("UIPadding", G2L["ed"]);
G2L["ee"]["PaddingTop"] = UDim.new(0, 5);
G2L["ee"]["PaddingRight"] = UDim.new(0, 5);
G2L["ee"]["PaddingLeft"] = UDim.new(0, 5);
G2L["ee"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["ef"] = Instance.new("Frame", G2L["ed"]);
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ef"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ef"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["f0"] = Instance.new("TextLabel", G2L["ef"]);
G2L["f0"]["TextWrapped"] = true;
G2L["f0"]["BorderSizePixel"] = 0;
G2L["f0"]["TextSize"] = 15;
G2L["f0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f0"]["BackgroundTransparency"] = 1;
G2L["f0"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f0"]["Text"] = [[Group Title]];
G2L["f0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f0"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["f1"] = Instance.new("UICorner", G2L["ef"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["f2"] = Instance.new("UIListLayout", G2L["ef"]);
G2L["f2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["f3"] = Instance.new("UIPadding", G2L["ef"]);
G2L["f3"]["PaddingTop"] = UDim.new(0, 10);
G2L["f3"]["PaddingRight"] = UDim.new(0, 10);
G2L["f3"]["PaddingLeft"] = UDim.new(0, 10);
G2L["f3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["f4"] = Instance.new("Frame", G2L["ef"]);
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Name"] = [[ToolFrame]];
G2L["f4"]["LayoutOrder"] = 2;
G2L["f4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["f5"] = Instance.new("Frame", G2L["f4"]);
G2L["f5"]["BorderSizePixel"] = 0;
G2L["f5"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["f5"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["f5"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f5"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["f6"] = Instance.new("UICorner", G2L["f5"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["f7"] = Instance.new("TextLabel", G2L["f4"]);
G2L["f7"]["TextWrapped"] = true;
G2L["f7"]["BorderSizePixel"] = 0;
G2L["f7"]["TextSize"] = 14;
G2L["f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f7"]["TextTransparency"] = 0.25;
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f7"]["BackgroundTransparency"] = 1;
G2L["f7"]["RichText"] = true;
G2L["f7"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f7"]["Text"] = [[Tool Name]];
G2L["f7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f7"]["Name"] = [[ToolNameDesc]];
G2L["f7"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["f8"] = Instance.new("UIPadding", G2L["f4"]);
G2L["f8"]["PaddingTop"] = UDim.new(0, 5);
G2L["f8"]["PaddingRight"] = UDim.new(0, 15);
G2L["f8"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["f9"] = Instance.new("IntValue", G2L["e9"]);
G2L["f9"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["fa"] = Instance.new("TextLabel", G2L["e9"]);
G2L["fa"]["TextWrapped"] = true;
G2L["fa"]["BorderSizePixel"] = 0;
G2L["fa"]["TextSize"] = 20;
G2L["fa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fa"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["fa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fa"]["BackgroundTransparency"] = 1;
G2L["fa"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fa"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["fa"]["LayoutOrder"] = -1;
G2L["fa"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fa"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["fb"] = Instance.new("UIPadding", G2L["fa"]);
G2L["fb"]["PaddingTop"] = UDim.new(0, 5);
G2L["fb"]["PaddingRight"] = UDim.new(0, 15);
G2L["fb"]["PaddingLeft"] = UDim.new(0, 15);
G2L["fb"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["fc"] = Instance.new("Frame", G2L["5"]);
G2L["fc"]["Visible"] = false;
G2L["fc"]["BorderSizePixel"] = 0;
G2L["fc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fc"]["Name"] = [[HistoryPage]];
G2L["fc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
G2L["fd"] = Instance.new("ScrollingFrame", G2L["fc"]);
G2L["fd"]["Active"] = true;
G2L["fd"]["BorderSizePixel"] = 0;
G2L["fd"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["fd"]["Name"] = [[ScrollingFrameMainChat]];
G2L["fd"]["ScrollBarImageTransparency"] = 0.85;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fd"]["ScrollBarThickness"] = 5;
G2L["fd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["fe"] = Instance.new("UIListLayout", G2L["fd"]);
G2L["fe"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["ff"] = Instance.new("UIPadding", G2L["fd"]);
G2L["ff"]["PaddingTop"] = UDim.new(0, 5);
G2L["ff"]["PaddingRight"] = UDim.new(0, 5);
G2L["ff"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["100"] = Instance.new("Folder", G2L["fd"]);
G2L["100"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["101"] = Instance.new("Frame", G2L["100"]);
G2L["101"]["Visible"] = false;
G2L["101"]["BorderSizePixel"] = 0;
G2L["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["101"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["101"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["Name"] = [[GroupFrame]];
G2L["101"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["102"] = Instance.new("UIPadding", G2L["101"]);
G2L["102"]["PaddingTop"] = UDim.new(0, 5);
G2L["102"]["PaddingRight"] = UDim.new(0, 5);
G2L["102"]["PaddingLeft"] = UDim.new(0, 5);
G2L["102"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["103"] = Instance.new("Frame", G2L["101"]);
G2L["103"]["BorderSizePixel"] = 0;
G2L["103"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["103"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["103"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["103"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["103"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["104"] = Instance.new("UICorner", G2L["103"]);
G2L["104"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["105"] = Instance.new("UIPadding", G2L["103"]);
G2L["105"]["PaddingTop"] = UDim.new(0, 10);
G2L["105"]["PaddingRight"] = UDim.new(0, 10);
G2L["105"]["PaddingLeft"] = UDim.new(0, 10);
G2L["105"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["106"] = Instance.new("Frame", G2L["103"]);
G2L["106"]["BorderSizePixel"] = 0;
G2L["106"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["106"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["106"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["106"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["106"]["Name"] = [[Left]];
G2L["106"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["107"] = Instance.new("UIListLayout", G2L["106"]);
G2L["107"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["108"] = Instance.new("Frame", G2L["106"]);
G2L["108"]["BorderSizePixel"] = 0;
G2L["108"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["108"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["108"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["108"]["Name"] = [[ToolsRowFrame]];
G2L["108"]["LayoutOrder"] = 2;
G2L["108"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["109"] = Instance.new("UIListLayout", G2L["108"]);
G2L["109"]["Padding"] = UDim.new(0, 5);
G2L["109"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["109"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["10a"] = Instance.new("Frame", G2L["108"]);
G2L["10a"]["BorderSizePixel"] = 0;
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10a"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["Name"] = [[ToolFrame]];
G2L["10a"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["10b"] = Instance.new("Frame", G2L["10a"]);
G2L["10b"]["BorderSizePixel"] = 0;
G2L["10b"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["10b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["10b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["10b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10b"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["10c"] = Instance.new("UICorner", G2L["10b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["10d"] = Instance.new("UICorner", G2L["10a"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["10e"] = Instance.new("TextLabel", G2L["10a"]);
G2L["10e"]["TextWrapped"] = true;
G2L["10e"]["BorderSizePixel"] = 0;
G2L["10e"]["TextSize"] = 14;
G2L["10e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10e"]["TextTransparency"] = 0.25;
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["BackgroundTransparency"] = 1;
G2L["10e"]["RichText"] = true;
G2L["10e"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10e"]["Text"] = [[Tool Name]];
G2L["10e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10e"]["Name"] = [[ToolName]];
G2L["10e"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["10f"] = Instance.new("UIPadding", G2L["10a"]);
G2L["10f"]["PaddingTop"] = UDim.new(0, 5);
G2L["10f"]["PaddingRight"] = UDim.new(0, 7);
G2L["10f"]["PaddingLeft"] = UDim.new(0, 7);
G2L["10f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["110"] = Instance.new("UIPadding", G2L["108"]);
G2L["110"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["111"] = Instance.new("TextLabel", G2L["106"]);
G2L["111"]["TextWrapped"] = true;
G2L["111"]["BorderSizePixel"] = 0;
G2L["111"]["TextSize"] = 15;
G2L["111"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["111"]["TextTransparency"] = 0.5;
G2L["111"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["111"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["111"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["111"]["BackgroundTransparency"] = 1;
G2L["111"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["111"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["111"]["Text"] = [[0 messages]];
G2L["111"]["LayoutOrder"] = 1;
G2L["111"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["111"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["112"] = Instance.new("TextLabel", G2L["106"]);
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
G2L["112"]["Text"] = [[Timestamp]];
G2L["112"]["LayoutOrder"] = 999;
G2L["112"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["112"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["113"] = Instance.new("Frame", G2L["106"]);
G2L["113"]["BorderSizePixel"] = 0;
G2L["113"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["113"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["113"]["Name"] = [[TopRowFrame]];
G2L["113"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["114"] = Instance.new("TextLabel", G2L["113"]);
G2L["114"]["TextWrapped"] = true;
G2L["114"]["BorderSizePixel"] = 0;
G2L["114"]["TextSize"] = 15;
G2L["114"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["114"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["114"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["114"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["114"]["BackgroundTransparency"] = 1;
G2L["114"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["114"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["114"]["Text"] = [[Title]];
G2L["114"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["114"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["115"] = Instance.new("UIListLayout", G2L["113"]);
G2L["115"]["Padding"] = UDim.new(0, 5);
G2L["115"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["115"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["116"] = Instance.new("Frame", G2L["113"]);
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["116"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["116"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["117"] = Instance.new("TextLabel", G2L["116"]);
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["TextSize"] = 14;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["117"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["117"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["117"]["BackgroundTransparency"] = 1;
G2L["117"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["117"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["117"]["Text"] = [[Active]];
G2L["117"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["118"] = Instance.new("UIPadding", G2L["117"]);
G2L["118"]["PaddingRight"] = UDim.new(0, 5);
G2L["118"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["119"] = Instance.new("UICorner", G2L["116"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["11a"] = Instance.new("Frame", G2L["103"]);
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11a"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["11a"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["11a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["Name"] = [[Right]];
G2L["11a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["11b"] = Instance.new("UIGridLayout", G2L["11a"]);
G2L["11b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["11b"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["11b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["11c"] = Instance.new("TextButton", G2L["11a"]);
G2L["11c"]["BorderSizePixel"] = 0;
G2L["11c"]["TextSize"] = 14;
G2L["11c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11c"]["BackgroundTransparency"] = 0.85;
G2L["11c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["11c"]["LayoutOrder"] = 1;
G2L["11c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["Text"] = [[]];
G2L["11c"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["11d"] = Instance.new("UICorner", G2L["11c"]);
G2L["11d"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["11e"] = Instance.new("ImageLabel", G2L["11c"]);
G2L["11e"]["BorderSizePixel"] = 0;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["Image"] = [[rbxassetid://98174359243805]];
G2L["11e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["BackgroundTransparency"] = 1;
G2L["11e"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["11f"] = Instance.new("UIPadding", G2L["11c"]);
G2L["11f"]["PaddingTop"] = UDim.new(0, 3);
G2L["11f"]["PaddingRight"] = UDim.new(0, 1);
G2L["11f"]["PaddingLeft"] = UDim.new(0, 3);
G2L["11f"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["120"] = Instance.new("TextButton", G2L["11a"]);
G2L["120"]["BorderSizePixel"] = 0;
G2L["120"]["TextSize"] = 14;
G2L["120"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["120"]["BackgroundTransparency"] = 0.85;
G2L["120"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["120"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["Text"] = [[]];
G2L["120"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["121"] = Instance.new("UICorner", G2L["120"]);
G2L["121"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["122"] = Instance.new("ImageLabel", G2L["120"]);
G2L["122"]["BorderSizePixel"] = 0;
G2L["122"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["122"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["122"]["Image"] = [[rbxassetid://115957379627811]];
G2L["122"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["122"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["123"] = Instance.new("UIPadding", G2L["120"]);
G2L["123"]["PaddingTop"] = UDim.new(0, 3);
G2L["123"]["PaddingRight"] = UDim.new(0, 3);
G2L["123"]["PaddingLeft"] = UDim.new(0, 3);
G2L["123"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["124"] = Instance.new("IntValue", G2L["fd"]);
G2L["124"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["125"] = Instance.new("TextLabel", G2L["fd"]);
G2L["125"]["TextWrapped"] = true;
G2L["125"]["BorderSizePixel"] = 0;
G2L["125"]["TextSize"] = 20;
G2L["125"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["125"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["125"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["125"]["BackgroundTransparency"] = 1;
G2L["125"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["125"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["125"]["Text"] = [[Conversation history]];
G2L["125"]["LayoutOrder"] = -1;
G2L["125"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["125"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["126"] = Instance.new("UIPadding", G2L["125"]);
G2L["126"]["PaddingTop"] = UDim.new(0, 5);
G2L["126"]["PaddingRight"] = UDim.new(0, 15);
G2L["126"]["PaddingLeft"] = UDim.new(0, 15);
G2L["126"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage
G2L["127"] = Instance.new("Frame", G2L["5"]);
G2L["127"]["Visible"] = false;
G2L["127"]["BorderSizePixel"] = 0;
G2L["127"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["127"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["127"]["Name"] = [[BrowserPage]];
G2L["127"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer
G2L["128"] = Instance.new("Frame", G2L["127"]);
G2L["128"]["BorderSizePixel"] = 0;
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["128"]["Size"] = UDim2.new(1, 0, 0, 200);
G2L["128"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["128"]["Name"] = [[PlatformsContainer]];
G2L["128"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["129"] = Instance.new("Frame", G2L["128"]);
G2L["129"]["BorderSizePixel"] = 0;
G2L["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["129"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["12a"] = Instance.new("UIListLayout", G2L["129"]);
G2L["12a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["12a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["12b"] = Instance.new("ImageLabel", G2L["129"]);
G2L["12b"]["BorderSizePixel"] = 0;
G2L["12b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12b"]["Image"] = [[rbxassetid://73464751831922]];
G2L["12b"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["12b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["12c"] = Instance.new("TextLabel", G2L["129"]);
G2L["12c"]["BorderSizePixel"] = 0;
G2L["12c"]["TextSize"] = 20;
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["12c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12c"]["BackgroundTransparency"] = 1;
G2L["12c"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["Text"] = [[You]];
G2L["12c"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["12d"] = Instance.new("Frame", G2L["129"]);
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["12d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["12d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["Name"] = [[IconColor]];
G2L["12d"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["12e"] = Instance.new("UICorner", G2L["12d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.UIGridLayout
G2L["12f"] = Instance.new("UIGridLayout", G2L["128"]);
G2L["12f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["12f"]["CellSize"] = UDim2.new(0, 175, 0, 100);
G2L["12f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["12f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["130"] = Instance.new("Frame", G2L["128"]);
G2L["130"]["BorderSizePixel"] = 0;
G2L["130"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["130"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["130"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["LayoutOrder"] = 1;
G2L["130"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["131"] = Instance.new("UIListLayout", G2L["130"]);
G2L["131"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["131"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["132"] = Instance.new("ImageLabel", G2L["130"]);
G2L["132"]["BorderSizePixel"] = 0;
G2L["132"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["132"]["Image"] = [[rbxassetid://131600704891794]];
G2L["132"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["132"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["132"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["133"] = Instance.new("TextLabel", G2L["130"]);
G2L["133"]["BorderSizePixel"] = 0;
G2L["133"]["TextSize"] = 20;
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["133"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["133"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["133"]["BackgroundTransparency"] = 1;
G2L["133"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["133"]["Text"] = [[Bridge]];
G2L["133"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["134"] = Instance.new("Frame", G2L["130"]);
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["134"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["134"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["134"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["134"]["Name"] = [[IconColor]];
G2L["134"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["135"] = Instance.new("UICorner", G2L["134"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["136"] = Instance.new("Frame", G2L["128"]);
G2L["136"]["BorderSizePixel"] = 0;
G2L["136"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["136"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["136"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["136"]["LayoutOrder"] = 2;
G2L["136"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["137"] = Instance.new("UIListLayout", G2L["136"]);
G2L["137"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["137"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["138"] = Instance.new("ImageLabel", G2L["136"]);
G2L["138"]["BorderSizePixel"] = 0;
G2L["138"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["138"]["Image"] = [[rbxassetid://90807079339617]];
G2L["138"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["138"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["138"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["139"] = Instance.new("TextLabel", G2L["136"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["TextSize"] = 20;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["139"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["BackgroundTransparency"] = 1;
G2L["139"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["Text"] = [[Web]];
G2L["139"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["13a"] = Instance.new("Frame", G2L["136"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["13a"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["13a"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Name"] = [[IconColor]];
G2L["13a"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["13b"] = Instance.new("UICorner", G2L["13a"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip
G2L["13c"] = Instance.new("TextLabel", G2L["127"]);
G2L["13c"]["TextWrapped"] = true;
G2L["13c"]["BorderSizePixel"] = 0;
G2L["13c"]["TextSize"] = 20;
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["BackgroundTransparency"] = 1;
G2L["13c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["13c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13c"]["Text"] = [[You can connect IYAI to your browser]];
G2L["13c"]["LayoutOrder"] = -1;
G2L["13c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["13c"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip.UIPadding
G2L["13d"] = Instance.new("UIPadding", G2L["13c"]);
G2L["13d"]["PaddingTop"] = UDim.new(0, 5);
G2L["13d"]["PaddingRight"] = UDim.new(0, 15);
G2L["13d"]["PaddingLeft"] = UDim.new(0, 15);
G2L["13d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.UIPadding
G2L["13e"] = Instance.new("UIPadding", G2L["127"]);
G2L["13e"]["PaddingTop"] = UDim.new(0, 5);
G2L["13e"]["PaddingRight"] = UDim.new(0, 25);
G2L["13e"]["PaddingLeft"] = UDim.new(0, 5);
G2L["13e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer
G2L["13f"] = Instance.new("Frame", G2L["127"]);
G2L["13f"]["BorderSizePixel"] = 0;
G2L["13f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13f"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["13f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["Name"] = [[ShimmerContainer]];
G2L["13f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1
G2L["140"] = Instance.new("Frame", G2L["13f"]);
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["Name"] = [[Shimmer1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UICorner
G2L["141"] = Instance.new("UICorner", G2L["140"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UIGradient
G2L["142"] = Instance.new("UIGradient", G2L["140"]);
G2L["142"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["142"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.UIGridLayout
G2L["143"] = Instance.new("UIGridLayout", G2L["13f"]);
G2L["143"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["143"]["CellSize"] = UDim2.new(0, 75, 0, 3);
G2L["143"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["143"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["143"]["CellPadding"] = UDim2.new(0, 105, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2
G2L["144"] = Instance.new("Frame", G2L["13f"]);
G2L["144"]["BorderSizePixel"] = 0;
G2L["144"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["144"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["144"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["144"]["Name"] = [[Shimmer2]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UICorner
G2L["145"] = Instance.new("UICorner", G2L["144"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UIGradient
G2L["146"] = Instance.new("UIGradient", G2L["144"]);
G2L["146"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["146"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer
G2L["147"] = Instance.new("Frame", G2L["127"]);
G2L["147"]["BorderSizePixel"] = 0;
G2L["147"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["147"]["Position"] = UDim2.new(0, 0, 0, 175);
G2L["147"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["147"]["Name"] = [[InstructionsContainer]];
G2L["147"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIListLayout
G2L["148"] = Instance.new("UIListLayout", G2L["147"]);
G2L["148"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIPadding
G2L["149"] = Instance.new("UIPadding", G2L["147"]);
G2L["149"]["PaddingTop"] = UDim.new(0, 10);
G2L["149"]["PaddingRight"] = UDim.new(0, 10);
G2L["149"]["PaddingLeft"] = UDim.new(0, 10);
G2L["149"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1
G2L["14a"] = Instance.new("Frame", G2L["147"]);
G2L["14a"]["BorderSizePixel"] = 0;
G2L["14a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14a"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["14a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14a"]["Name"] = [[Frame1]];
G2L["14a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.UIListLayout
G2L["14b"] = Instance.new("UIListLayout", G2L["14a"]);
G2L["14b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["14b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.TextLabel
G2L["14c"] = Instance.new("TextLabel", G2L["14a"]);
G2L["14c"]["BorderSizePixel"] = 0;
G2L["14c"]["TextSize"] = 17;
G2L["14c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["BackgroundTransparency"] = 1;
G2L["14c"]["RichText"] = true;
G2L["14c"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["14c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14c"]["Text"] = [[<b>1.</b> Download and run bridge (<font color="#aa6b6b">iyai_bridge.py</font> or <font color="#aa6b6b">iyai_bridge.ps1</font>) from]];
G2L["14c"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton
G2L["14d"] = Instance.new("TextButton", G2L["14a"]);
G2L["14d"]["BorderSizePixel"] = 0;
G2L["14d"]["TextSize"] = 17;
G2L["14d"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["14d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14d"]["BackgroundTransparency"] = 1;
G2L["14d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["14d"]["Size"] = UDim2.new(0, 32, 0, 25);
G2L["14d"]["LayoutOrder"] = 1;
G2L["14d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14d"]["Text"] = [[here]];
G2L["14d"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton.Value
G2L["14e"] = Instance.new("StringValue", G2L["14d"]);
G2L["14e"]["Value"] = [[https://github.com/imluri/IYAI]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2
G2L["14f"] = Instance.new("Frame", G2L["147"]);
G2L["14f"]["BorderSizePixel"] = 0;
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["14f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14f"]["Name"] = [[Frame2]];
G2L["14f"]["LayoutOrder"] = 1;
G2L["14f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.UIListLayout
G2L["150"] = Instance.new("UIListLayout", G2L["14f"]);
G2L["150"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["150"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["151"] = Instance.new("TextLabel", G2L["14f"]);
G2L["151"]["BorderSizePixel"] = 0;
G2L["151"]["TextSize"] = 17;
G2L["151"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["151"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["151"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["151"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["151"]["BackgroundTransparency"] = 1;
G2L["151"]["RichText"] = true;
G2L["151"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["151"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["151"]["Text"] = [[<b>2.</b>]];
G2L["151"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton
G2L["152"] = Instance.new("TextButton", G2L["14f"]);
G2L["152"]["BorderSizePixel"] = 0;
G2L["152"]["TextSize"] = 17;
G2L["152"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["152"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["152"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["152"]["BackgroundTransparency"] = 1;
G2L["152"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["152"]["Size"] = UDim2.new(0, 58, 0, 25);
G2L["152"]["LayoutOrder"] = 1;
G2L["152"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["152"]["Text"] = [[Copy link]];
G2L["152"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton.Value
G2L["153"] = Instance.new("StringValue", G2L["152"]);
G2L["153"]["Value"] = [[https://imluri.github.io/iyai]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["154"] = Instance.new("TextLabel", G2L["14f"]);
G2L["154"]["BorderSizePixel"] = 0;
G2L["154"]["TextSize"] = 17;
G2L["154"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["154"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["154"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["154"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["154"]["BackgroundTransparency"] = 1;
G2L["154"]["RichText"] = true;
G2L["154"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["154"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["154"]["Text"] = [[and paste into your browser]];
G2L["154"]["LayoutOrder"] = 2;
G2L["154"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton
G2L["155"] = Instance.new("TextButton", G2L["127"]);
G2L["155"]["BorderSizePixel"] = 0;
G2L["155"]["TextSize"] = 23;
G2L["155"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["155"]["BackgroundTransparency"] = 0.95;
G2L["155"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["155"]["LayoutOrder"] = 1;
G2L["155"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["155"]["Text"] = [[Open Logs]];
G2L["155"]["Name"] = [[OpenBrowserLogsButton]];
G2L["155"]["Position"] = UDim2.new(0, 0, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton.UICorner
G2L["156"] = Instance.new("UICorner", G2L["155"]);
G2L["156"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton
G2L["157"] = Instance.new("TextButton", G2L["127"]);
G2L["157"]["BorderSizePixel"] = 0;
G2L["157"]["TextSize"] = 23;
G2L["157"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["157"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["157"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["157"]["BackgroundTransparency"] = 0.95;
G2L["157"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["157"]["LayoutOrder"] = 1;
G2L["157"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["157"]["Text"] = [[Force Refresh]];
G2L["157"]["Name"] = [[ForceRefreshButton]];
G2L["157"]["Position"] = UDim2.new(0, 0, 1, -65);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton.UICorner
G2L["158"] = Instance.new("UICorner", G2L["157"]);
G2L["158"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage
G2L["159"] = Instance.new("Frame", G2L["5"]);
G2L["159"]["Visible"] = false;
G2L["159"]["BorderSizePixel"] = 0;
G2L["159"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["159"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["159"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["159"]["Name"] = [[SkillsPage]];
G2L["159"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat
G2L["15a"] = Instance.new("ScrollingFrame", G2L["159"]);
G2L["15a"]["Active"] = true;
G2L["15a"]["BorderSizePixel"] = 0;
G2L["15a"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["15a"]["Name"] = [[ScrollingFrameMainChat]];
G2L["15a"]["ScrollBarImageTransparency"] = 0.85;
G2L["15a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15a"]["ScrollBarThickness"] = 5;
G2L["15a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIListLayout
G2L["15b"] = Instance.new("UIListLayout", G2L["15a"]);
G2L["15b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIPadding
G2L["15c"] = Instance.new("UIPadding", G2L["15a"]);
G2L["15c"]["PaddingTop"] = UDim.new(0, 5);
G2L["15c"]["PaddingRight"] = UDim.new(0, 5);
G2L["15c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate
G2L["15d"] = Instance.new("Folder", G2L["15a"]);
G2L["15d"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["15e"] = Instance.new("Frame", G2L["15d"]);
G2L["15e"]["Visible"] = false;
G2L["15e"]["BorderSizePixel"] = 0;
G2L["15e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["15e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15e"]["Name"] = [[GroupFrame]];
G2L["15e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["15f"] = Instance.new("UIPadding", G2L["15e"]);
G2L["15f"]["PaddingTop"] = UDim.new(0, 5);
G2L["15f"]["PaddingRight"] = UDim.new(0, 5);
G2L["15f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["15f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["160"] = Instance.new("Frame", G2L["15e"]);
G2L["160"]["BorderSizePixel"] = 0;
G2L["160"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["160"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["160"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["160"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["160"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["161"] = Instance.new("UICorner", G2L["160"]);
G2L["161"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["162"] = Instance.new("UIPadding", G2L["160"]);
G2L["162"]["PaddingTop"] = UDim.new(0, 10);
G2L["162"]["PaddingRight"] = UDim.new(0, 10);
G2L["162"]["PaddingLeft"] = UDim.new(0, 10);
G2L["162"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["163"] = Instance.new("Frame", G2L["160"]);
G2L["163"]["BorderSizePixel"] = 0;
G2L["163"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["163"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["163"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["163"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["163"]["Name"] = [[Left]];
G2L["163"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["164"] = Instance.new("UIListLayout", G2L["163"]);
G2L["164"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.DescriptionLabel
G2L["165"] = Instance.new("TextLabel", G2L["163"]);
G2L["165"]["TextWrapped"] = true;
G2L["165"]["BorderSizePixel"] = 0;
G2L["165"]["TextSize"] = 15;
G2L["165"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["165"]["TextTransparency"] = 0.5;
G2L["165"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["165"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["165"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["165"]["BackgroundTransparency"] = 1;
G2L["165"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["165"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["165"]["Text"] = [[Description]];
G2L["165"]["LayoutOrder"] = 1;
G2L["165"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["165"]["Name"] = [[DescriptionLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["166"] = Instance.new("Frame", G2L["163"]);
G2L["166"]["BorderSizePixel"] = 0;
G2L["166"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["166"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["166"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["166"]["Name"] = [[TopRowFrame]];
G2L["166"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.SkillLabel
G2L["167"] = Instance.new("TextLabel", G2L["166"]);
G2L["167"]["TextWrapped"] = true;
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["TextSize"] = 15;
G2L["167"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["167"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["BackgroundTransparency"] = 1;
G2L["167"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Text"] = [[Skill]];
G2L["167"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["167"]["Name"] = [[SkillLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["168"] = Instance.new("UIListLayout", G2L["166"]);
G2L["168"]["Padding"] = UDim.new(0, 5);
G2L["168"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["168"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["169"] = Instance.new("Frame", G2L["160"]);
G2L["169"]["BorderSizePixel"] = 0;
G2L["169"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["169"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["169"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["169"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["169"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["169"]["Name"] = [[Right]];
G2L["169"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["16a"] = Instance.new("UIGridLayout", G2L["169"]);
G2L["16a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["16a"]["CellSize"] = UDim2.new(0, 40, 0, 40);
G2L["16a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer
G2L["16b"] = Instance.new("Frame", G2L["169"]);
G2L["16b"]["BorderSizePixel"] = 0;
G2L["16b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["16b"]["Position"] = UDim2.new(0.5, -50, 0, 0);
G2L["16b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16b"]["Name"] = [[ToggleContainer]];
G2L["16b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG
G2L["16c"] = Instance.new("Frame", G2L["16b"]);
G2L["16c"]["BorderSizePixel"] = 0;
G2L["16c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16c"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["16c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16c"]["Name"] = [[BG]];
G2L["16c"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.UICorner
G2L["16d"] = Instance.new("UICorner", G2L["16c"]);
G2L["16d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button
G2L["16e"] = Instance.new("TextButton", G2L["16c"]);
G2L["16e"]["BorderSizePixel"] = 0;
G2L["16e"]["TextSize"] = 14;
G2L["16e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["16e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16e"]["Text"] = [[]];
G2L["16e"]["Name"] = [[Button]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button.UICorner
G2L["16f"] = Instance.new("UICorner", G2L["16e"]);
G2L["16f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.TotalElements
G2L["170"] = Instance.new("IntValue", G2L["15a"]);
G2L["170"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip
G2L["171"] = Instance.new("TextLabel", G2L["15a"]);
G2L["171"]["TextWrapped"] = true;
G2L["171"]["BorderSizePixel"] = 0;
G2L["171"]["TextSize"] = 20;
G2L["171"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["171"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["171"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["171"]["BackgroundTransparency"] = 1;
G2L["171"]["RichText"] = true;
G2L["171"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["171"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["171"]["Text"] = [[The AI references these guides when handling complex tasks.<br />Add your own to extend its knowledge.]];
G2L["171"]["LayoutOrder"] = -2;
G2L["171"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["171"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["172"] = Instance.new("UIPadding", G2L["171"]);
G2L["172"]["PaddingTop"] = UDim.new(0, 5);
G2L["172"]["PaddingRight"] = UDim.new(0, 15);
G2L["172"]["PaddingLeft"] = UDim.new(0, 15);
G2L["172"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame
G2L["173"] = Instance.new("Frame", G2L["15a"]);
G2L["173"]["BorderSizePixel"] = 0;
G2L["173"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["173"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["173"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["173"]["LayoutOrder"] = -1;
G2L["173"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshButton
G2L["174"] = Instance.new("ImageButton", G2L["173"]);
G2L["174"]["BorderSizePixel"] = 0;
G2L["174"]["BackgroundTransparency"] = 1;
G2L["174"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["174"]["Image"] = [[rbxassetid://74363941121004]];
G2L["174"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["174"]["LayoutOrder"] = -1;
G2L["174"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["174"]["Name"] = [[RefreshButton]];
G2L["174"]["Rotation"] = -180;
G2L["174"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.UIPadding
G2L["175"] = Instance.new("UIPadding", G2L["173"]);
G2L["175"]["PaddingTop"] = UDim.new(0, 5);
G2L["175"]["PaddingRight"] = UDim.new(0, 5);
G2L["175"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshText
G2L["176"] = Instance.new("TextLabel", G2L["173"]);
G2L["176"]["BorderSizePixel"] = 0;
G2L["176"]["TextSize"] = 14;
G2L["176"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["176"]["TextTransparency"] = 0.5;
G2L["176"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["176"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["176"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["176"]["BackgroundTransparency"] = 1;
G2L["176"]["Size"] = UDim2.new(1, -25, 1, 0);
G2L["176"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["176"]["Text"] = [[Refreshed]];
G2L["176"]["Name"] = [[RefreshText]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["177"] = Instance.new("Frame", G2L["4"]);
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["177"]["ClipsDescendants"] = true;
G2L["177"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame
G2L["178"] = Instance.new("ScrollingFrame", G2L["177"]);
G2L["178"]["Active"] = true;
G2L["178"]["BorderSizePixel"] = 0;
G2L["178"]["CanvasSize"] = UDim2.new(1, 0, 0, 400);
G2L["178"]["ScrollBarImageTransparency"] = 1;
G2L["178"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["178"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["178"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["178"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["178"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.Highlight
G2L["179"] = Instance.new("Frame", G2L["178"]);
G2L["179"]["BorderSizePixel"] = 0;
G2L["179"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["179"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["179"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["179"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["179"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame
G2L["17a"] = Instance.new("Frame", G2L["178"]);
G2L["17a"]["BorderSizePixel"] = 0;
G2L["17a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17a"]["Name"] = [[ContainerFrame]];
G2L["17a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIGridLayout
G2L["17b"] = Instance.new("UIGridLayout", G2L["17a"]);
G2L["17b"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["17b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIPadding
G2L["17c"] = Instance.new("UIPadding", G2L["17a"]);
G2L["17c"]["PaddingTop"] = UDim.new(0, 30);
G2L["17c"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame
G2L["17d"] = Instance.new("Frame", G2L["17a"]);
G2L["17d"]["BorderSizePixel"] = 0;
G2L["17d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["17d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17d"]["Name"] = [[AgentButtonFrame]];
G2L["17d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.ImageLabel
G2L["17e"] = Instance.new("ImageLabel", G2L["17d"]);
G2L["17e"]["BorderSizePixel"] = 0;
G2L["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["Image"] = [[rbxassetid://97622965928648]];
G2L["17e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["17e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.TextLabel
G2L["17f"] = Instance.new("TextLabel", G2L["17d"]);
G2L["17f"]["BorderSizePixel"] = 0;
G2L["17f"]["TextSize"] = 17;
G2L["17f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["17f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["17f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17f"]["BackgroundTransparency"] = 1;
G2L["17f"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["17f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17f"]["Text"] = [[Agent]];
G2L["17f"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.Hitbox
G2L["180"] = Instance.new("TextButton", G2L["17d"]);
G2L["180"]["BorderSizePixel"] = 0;
G2L["180"]["TextTransparency"] = 1;
G2L["180"]["TextSize"] = 14;
G2L["180"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["180"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["180"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["180"]["ZIndex"] = 999;
G2L["180"]["BackgroundTransparency"] = 1;
G2L["180"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["180"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["180"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame
G2L["181"] = Instance.new("Frame", G2L["17a"]);
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["Name"] = [[BrowserButtonFrame]];
G2L["181"]["LayoutOrder"] = 10;
G2L["181"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.ImageLabel
G2L["182"] = Instance.new("ImageLabel", G2L["181"]);
G2L["182"]["BorderSizePixel"] = 0;
G2L["182"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["182"]["Image"] = [[rbxassetid://90807079339617]];
G2L["182"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["182"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["182"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.TextLabel
G2L["183"] = Instance.new("TextLabel", G2L["181"]);
G2L["183"]["BorderSizePixel"] = 0;
G2L["183"]["TextSize"] = 17;
G2L["183"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["183"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["183"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["183"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["183"]["BackgroundTransparency"] = 1;
G2L["183"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["183"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["183"]["Text"] = [[Browser]];
G2L["183"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.Hitbox
G2L["184"] = Instance.new("TextButton", G2L["181"]);
G2L["184"]["BorderSizePixel"] = 0;
G2L["184"]["TextTransparency"] = 1;
G2L["184"]["TextSize"] = 14;
G2L["184"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["184"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["184"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["184"]["ZIndex"] = 999;
G2L["184"]["BackgroundTransparency"] = 1;
G2L["184"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["184"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["184"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame
G2L["185"] = Instance.new("Frame", G2L["17a"]);
G2L["185"]["BorderSizePixel"] = 0;
G2L["185"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["185"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["185"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["185"]["Name"] = [[CodeButtonFrame]];
G2L["185"]["LayoutOrder"] = 1;
G2L["185"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.TextLabel
G2L["186"] = Instance.new("TextLabel", G2L["185"]);
G2L["186"]["BorderSizePixel"] = 0;
G2L["186"]["TextSize"] = 17;
G2L["186"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["186"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["186"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["BackgroundTransparency"] = 1;
G2L["186"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["186"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["186"]["Text"] = [[Code]];
G2L["186"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.ImageLabel
G2L["187"] = Instance.new("ImageLabel", G2L["185"]);
G2L["187"]["BorderSizePixel"] = 0;
G2L["187"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["187"]["Image"] = [[rbxassetid://102596836544188]];
G2L["187"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["187"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.Hitbox
G2L["188"] = Instance.new("TextButton", G2L["185"]);
G2L["188"]["BorderSizePixel"] = 0;
G2L["188"]["TextTransparency"] = 1;
G2L["188"]["TextSize"] = 14;
G2L["188"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["188"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["188"]["ZIndex"] = 999;
G2L["188"]["BackgroundTransparency"] = 1;
G2L["188"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["188"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["188"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame
G2L["189"] = Instance.new("Frame", G2L["17a"]);
G2L["189"]["BorderSizePixel"] = 0;
G2L["189"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["189"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["189"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["Name"] = [[HistoryButtonFrame]];
G2L["189"]["LayoutOrder"] = 2;
G2L["189"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.ImageLabel
G2L["18a"] = Instance.new("ImageLabel", G2L["189"]);
G2L["18a"]["BorderSizePixel"] = 0;
G2L["18a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["Image"] = [[rbxassetid://70487508311290]];
G2L["18a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.TextLabel
G2L["18b"] = Instance.new("TextLabel", G2L["189"]);
G2L["18b"]["BorderSizePixel"] = 0;
G2L["18b"]["TextSize"] = 17;
G2L["18b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18b"]["BackgroundTransparency"] = 1;
G2L["18b"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["18b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18b"]["Text"] = [[History]];
G2L["18b"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.Hitbox
G2L["18c"] = Instance.new("TextButton", G2L["189"]);
G2L["18c"]["BorderSizePixel"] = 0;
G2L["18c"]["TextTransparency"] = 1;
G2L["18c"]["TextSize"] = 14;
G2L["18c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18c"]["ZIndex"] = 999;
G2L["18c"]["BackgroundTransparency"] = 1;
G2L["18c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18c"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame
G2L["18d"] = Instance.new("Frame", G2L["17a"]);
G2L["18d"]["BorderSizePixel"] = 0;
G2L["18d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["Name"] = [[SettingsButtonFrame]];
G2L["18d"]["LayoutOrder"] = 999;
G2L["18d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.ImageLabel
G2L["18e"] = Instance.new("ImageLabel", G2L["18d"]);
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["Image"] = [[rbxassetid://98245295559168]];
G2L["18e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.TextLabel
G2L["18f"] = Instance.new("TextLabel", G2L["18d"]);
G2L["18f"]["BorderSizePixel"] = 0;
G2L["18f"]["TextSize"] = 17;
G2L["18f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18f"]["BackgroundTransparency"] = 1;
G2L["18f"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["18f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18f"]["Text"] = [[Settings]];
G2L["18f"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.Hitbox
G2L["190"] = Instance.new("TextButton", G2L["18d"]);
G2L["190"]["BorderSizePixel"] = 0;
G2L["190"]["TextTransparency"] = 1;
G2L["190"]["TextSize"] = 14;
G2L["190"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["190"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["190"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["190"]["ZIndex"] = 999;
G2L["190"]["BackgroundTransparency"] = 1;
G2L["190"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["190"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["190"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame
G2L["191"] = Instance.new("Frame", G2L["17a"]);
G2L["191"]["BorderSizePixel"] = 0;
G2L["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["191"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["191"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["Name"] = [[SkillsButtonFrame]];
G2L["191"]["LayoutOrder"] = 5;
G2L["191"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.Hitbox
G2L["192"] = Instance.new("TextButton", G2L["191"]);
G2L["192"]["BorderSizePixel"] = 0;
G2L["192"]["TextTransparency"] = 1;
G2L["192"]["TextSize"] = 14;
G2L["192"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["192"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["192"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["192"]["ZIndex"] = 999;
G2L["192"]["BackgroundTransparency"] = 1;
G2L["192"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["192"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["192"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.ImageLabel
G2L["193"] = Instance.new("ImageLabel", G2L["191"]);
G2L["193"]["BorderSizePixel"] = 0;
G2L["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["Image"] = [[rbxassetid://119927491521709]];
G2L["193"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["193"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.TextLabel
G2L["194"] = Instance.new("TextLabel", G2L["191"]);
G2L["194"]["BorderSizePixel"] = 0;
G2L["194"]["TextSize"] = 17;
G2L["194"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["194"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["194"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["BackgroundTransparency"] = 1;
G2L["194"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["194"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["194"]["Text"] = [[Skills]];
G2L["194"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame
G2L["195"] = Instance.new("Frame", G2L["17a"]);
G2L["195"]["BorderSizePixel"] = 0;
G2L["195"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["195"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["195"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["195"]["Name"] = [[StartupButtonFrame]];
G2L["195"]["LayoutOrder"] = 4;
G2L["195"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.ImageLabel
G2L["196"] = Instance.new("ImageLabel", G2L["195"]);
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["196"]["Image"] = [[rbxassetid://136122222813963]];
G2L["196"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["196"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.TextLabel
G2L["197"] = Instance.new("TextLabel", G2L["195"]);
G2L["197"]["BorderSizePixel"] = 0;
G2L["197"]["TextSize"] = 17;
G2L["197"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["197"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["197"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["197"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["197"]["BackgroundTransparency"] = 1;
G2L["197"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["197"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["197"]["Text"] = [[Startup]];
G2L["197"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.Hitbox
G2L["198"] = Instance.new("TextButton", G2L["195"]);
G2L["198"]["BorderSizePixel"] = 0;
G2L["198"]["TextTransparency"] = 1;
G2L["198"]["TextSize"] = 14;
G2L["198"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["198"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["198"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["198"]["ZIndex"] = 999;
G2L["198"]["BackgroundTransparency"] = 1;
G2L["198"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["198"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["198"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame
G2L["199"] = Instance.new("Frame", G2L["17a"]);
G2L["199"]["BorderSizePixel"] = 0;
G2L["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["199"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["Name"] = [[ToolsButtonFrame]];
G2L["199"]["LayoutOrder"] = 3;
G2L["199"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.ImageLabel
G2L["19a"] = Instance.new("ImageLabel", G2L["199"]);
G2L["19a"]["BorderSizePixel"] = 0;
G2L["19a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19a"]["Image"] = [[rbxassetid://70572480663906]];
G2L["19a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.TextLabel
G2L["19b"] = Instance.new("TextLabel", G2L["199"]);
G2L["19b"]["BorderSizePixel"] = 0;
G2L["19b"]["TextSize"] = 17;
G2L["19b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19b"]["BackgroundTransparency"] = 1;
G2L["19b"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["19b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19b"]["Text"] = [[Tools]];
G2L["19b"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.Hitbox
G2L["19c"] = Instance.new("TextButton", G2L["199"]);
G2L["19c"]["BorderSizePixel"] = 0;
G2L["19c"]["TextTransparency"] = 1;
G2L["19c"]["TextSize"] = 14;
G2L["19c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19c"]["ZIndex"] = 999;
G2L["19c"]["BackgroundTransparency"] = 1;
G2L["19c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19c"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["19d"] = Instance.new("TextLabel", G2L["4"]);
G2L["19d"]["ZIndex"] = 2;
G2L["19d"]["BorderSizePixel"] = 0;
G2L["19d"]["TextSize"] = 14;
G2L["19d"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["19d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19d"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["19d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["Text"] = [[IYAI]];
G2L["19d"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["19e"] = Instance.new("UIPadding", G2L["19d"]);
G2L["19e"]["PaddingRight"] = UDim.new(0, 5);
G2L["19e"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["19f"] = Instance.new("TextButton", G2L["19d"]);
G2L["19f"]["BorderSizePixel"] = 0;
G2L["19f"]["TextSize"] = 14;
G2L["19f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19f"]["ZIndex"] = 999;
G2L["19f"]["BackgroundTransparency"] = 1;
G2L["19f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["19f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19f"]["Text"] = [[X]];
G2L["19f"]["Name"] = [[CloseButton]];
G2L["19f"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["1a0"] = Instance.new("TextLabel", G2L["19d"]);
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["TextSize"] = 11;
G2L["1a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a0"]["TextTransparency"] = 0.5;
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["BackgroundTransparency"] = 1;
G2L["1a0"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a0"]["Visible"] = false;
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Text"] = [[by @urluri]];
G2L["1a0"]["Name"] = [[AuthorLabel]];
G2L["1a0"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["1a1"] = Instance.new("TextLabel", G2L["19d"]);
G2L["1a1"]["BorderSizePixel"] = 0;
G2L["1a1"]["TextSize"] = 11;
G2L["1a1"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1a1"]["TextTransparency"] = 0.5;
G2L["1a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["BackgroundTransparency"] = 1;
G2L["1a1"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["Text"] = [[v]];
G2L["1a1"]["Name"] = [[VersionLabel]];
G2L["1a1"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["1a2"] = Instance.new("TextButton", G2L["19d"]);
G2L["1a2"]["BorderSizePixel"] = 0;
G2L["1a2"]["TextSize"] = 14;
G2L["1a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a2"]["ZIndex"] = 999;
G2L["1a2"]["BackgroundTransparency"] = 1;
G2L["1a2"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a2"]["Text"] = [[—]];
G2L["1a2"]["Name"] = [[MinimizeButton]];
G2L["1a2"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["1a3"] = Instance.new("Frame", G2L["4"]);
G2L["1a3"]["Visible"] = false;
G2L["1a3"]["ZIndex"] = 999;
G2L["1a3"]["BorderSizePixel"] = 0;
G2L["1a3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["Name"] = [[ModalFrame]];
G2L["1a3"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["1a4"] = Instance.new("UIPadding", G2L["1a3"]);
G2L["1a4"]["PaddingTop"] = UDim.new(0, 25);
G2L["1a4"]["PaddingRight"] = UDim.new(0, 25);
G2L["1a4"]["PaddingLeft"] = UDim.new(0, 25);
G2L["1a4"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["1a5"] = Instance.new("Frame", G2L["1a3"]);
G2L["1a5"]["BorderSizePixel"] = 0;
G2L["1a5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1a5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["1a6"] = Instance.new("UICorner", G2L["1a5"]);
G2L["1a6"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["1a7"] = Instance.new("TextButton", G2L["1a5"]);
G2L["1a7"]["BorderSizePixel"] = 0;
G2L["1a7"]["TextSize"] = 14;
G2L["1a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a7"]["ZIndex"] = 999;
G2L["1a7"]["BackgroundTransparency"] = 1;
G2L["1a7"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["Text"] = [[X]];
G2L["1a7"]["Name"] = [[CloseButton]];
G2L["1a7"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["1a8"] = Instance.new("Frame", G2L["1a5"]);
G2L["1a8"]["Visible"] = false;
G2L["1a8"]["BorderSizePixel"] = 0;
G2L["1a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a8"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1a8"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a8"]["Name"] = [[SearchModelModal]];
G2L["1a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["1a9"] = Instance.new("UIPadding", G2L["1a8"]);
G2L["1a9"]["PaddingTop"] = UDim.new(0, 10);
G2L["1a9"]["PaddingRight"] = UDim.new(0, 10);
G2L["1a9"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1a9"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["1aa"] = Instance.new("TextBox", G2L["1a8"]);
G2L["1aa"]["Name"] = [[SearchBox]];
G2L["1aa"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1aa"]["BorderSizePixel"] = 0;
G2L["1aa"]["TextSize"] = 14;
G2L["1aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1aa"]["PlaceholderText"] = [[Search models...]];
G2L["1aa"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["1aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Text"] = [[]];
G2L["1aa"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["1ab"] = Instance.new("UICorner", G2L["1aa"]);
G2L["1ab"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["1ac"] = Instance.new("UIPadding", G2L["1aa"]);
G2L["1ac"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ac"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ac"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ac"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["1ad"] = Instance.new("ImageButton", G2L["1a8"]);
G2L["1ad"]["BorderSizePixel"] = 0;
G2L["1ad"]["BackgroundTransparency"] = 1;
G2L["1ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ad"]["Image"] = [[rbxassetid://94907058451749]];
G2L["1ad"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ad"]["Name"] = [[SearchButton]];
G2L["1ad"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["1ae"] = Instance.new("ScrollingFrame", G2L["1a8"]);
G2L["1ae"]["Active"] = true;
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["ScrollBarImageTransparency"] = 0.9;
G2L["1ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["1ae"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["1ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ae"]["ScrollBarThickness"] = 6;
G2L["1ae"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["1af"] = Instance.new("TextButton", G2L["1ae"]);
G2L["1af"]["BorderSizePixel"] = 0;
G2L["1af"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1af"]["TextSize"] = 14;
G2L["1af"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1af"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1af"]["BackgroundTransparency"] = 1;
G2L["1af"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1af"]["Text"] = [[SomeModel]];
G2L["1af"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["1b0"] = Instance.new("UIPadding", G2L["1af"]);
G2L["1b0"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["1b1"] = Instance.new("UIGridLayout", G2L["1ae"]);
G2L["1b1"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["1b1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["1b2"] = Instance.new("Frame", G2L["1a5"]);
G2L["1b2"]["Visible"] = false;
G2L["1b2"]["BorderSizePixel"] = 0;
G2L["1b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b2"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1b2"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b2"]["Name"] = [[ToolResultViewModal]];
G2L["1b2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["1b3"] = Instance.new("UIPadding", G2L["1b2"]);
G2L["1b3"]["PaddingTop"] = UDim.new(0, 10);
G2L["1b3"]["PaddingRight"] = UDim.new(0, 10);
G2L["1b3"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1b3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame
G2L["1b4"] = Instance.new("ScrollingFrame", G2L["1b2"]);
G2L["1b4"]["Active"] = true;
G2L["1b4"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1b4"]["ScrollBarImageTransparency"] = 0.8;
G2L["1b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1b4"]["Size"] = UDim2.new(1, 0, 1, -5);
G2L["1b4"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b4"]["ScrollBarThickness"] = 4;
G2L["1b4"]["LayoutOrder"] = 1;
G2L["1b4"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UIPadding
G2L["1b5"] = Instance.new("UIPadding", G2L["1b4"]);
G2L["1b5"]["PaddingTop"] = UDim.new(0, 5);
G2L["1b5"]["PaddingRight"] = UDim.new(0, 5);
G2L["1b5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UICorner
G2L["1b6"] = Instance.new("UICorner", G2L["1b4"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.TextBox
G2L["1b7"] = Instance.new("TextBox", G2L["1b4"]);
G2L["1b7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b7"]["BorderSizePixel"] = 0;
G2L["1b7"]["TextEditable"] = false;
G2L["1b7"]["TextSize"] = 14;
G2L["1b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b7"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1b7"]["MultiLine"] = true;
G2L["1b7"]["ClearTextOnFocus"] = false;
G2L["1b7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b7"]["Text"] = [[Tool execution]];
G2L["1b7"]["LayoutOrder"] = 1;
G2L["1b7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["1b8"] = Instance.new("TextLabel", G2L["1a5"]);
G2L["1b8"]["BorderSizePixel"] = 0;
G2L["1b8"]["TextSize"] = 17;
G2L["1b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["BackgroundTransparency"] = 1;
G2L["1b8"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b8"]["Name"] = [[TitleLabel]];
G2L["1b8"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["1b9"] = Instance.new("UIPadding", G2L["1b8"]);
G2L["1b9"]["PaddingTop"] = UDim.new(0, 10);
G2L["1b9"]["PaddingRight"] = UDim.new(0, 10);
G2L["1b9"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1b9"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["1ba"] = Instance.new("Frame", G2L["1a5"]);
G2L["1ba"]["Visible"] = false;
G2L["1ba"]["BorderSizePixel"] = 0;
G2L["1ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ba"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1ba"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ba"]["Name"] = [[SystemPromptModal]];
G2L["1ba"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["1bb"] = Instance.new("UIPadding", G2L["1ba"]);
G2L["1bb"]["PaddingTop"] = UDim.new(0, 10);
G2L["1bb"]["PaddingRight"] = UDim.new(0, 10);
G2L["1bb"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1bb"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame
G2L["1bc"] = Instance.new("ScrollingFrame", G2L["1ba"]);
G2L["1bc"]["Active"] = true;
G2L["1bc"]["BorderSizePixel"] = 0;
G2L["1bc"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1bc"]["ScrollBarImageTransparency"] = 0.8;
G2L["1bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1bc"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1bc"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["ScrollBarThickness"] = 4;
G2L["1bc"]["LayoutOrder"] = 1;
G2L["1bc"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.TextBox
G2L["1bd"] = Instance.new("TextBox", G2L["1bc"]);
G2L["1bd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1bd"]["BorderSizePixel"] = 0;
G2L["1bd"]["TextEditable"] = false;
G2L["1bd"]["TextSize"] = 14;
G2L["1bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1bd"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1bd"]["MultiLine"] = true;
G2L["1bd"]["ClearTextOnFocus"] = false;
G2L["1bd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bd"]["Text"] = [[Default system prompt]];
G2L["1bd"]["LayoutOrder"] = 1;
G2L["1bd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UIPadding
G2L["1be"] = Instance.new("UIPadding", G2L["1bc"]);
G2L["1be"]["PaddingTop"] = UDim.new(0, 5);
G2L["1be"]["PaddingRight"] = UDim.new(0, 5);
G2L["1be"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UICorner
G2L["1bf"] = Instance.new("UICorner", G2L["1bc"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["1c0"] = Instance.new("Frame", G2L["1ba"]);
G2L["1c0"]["BorderSizePixel"] = 0;
G2L["1c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c0"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1c0"]["Position"] = UDim2.new(0, 0, 1, -25);
G2L["1c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c0"]["Name"] = [[BottomContainer]];
G2L["1c0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["1c1"] = Instance.new("UIGridLayout", G2L["1c0"]);
G2L["1c1"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1c1"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1c1"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["1c2"] = Instance.new("ImageButton", G2L["1c0"]);
G2L["1c2"]["BorderSizePixel"] = 0;
G2L["1c2"]["BackgroundTransparency"] = 1;
G2L["1c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c2"]["Image"] = [[rbxassetid://74363941121004]];
G2L["1c2"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c2"]["Name"] = [[ResetButton]];
G2L["1c2"]["Rotation"] = -180;
G2L["1c2"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["1c3"] = Instance.new("ImageButton", G2L["1c0"]);
G2L["1c3"]["BorderSizePixel"] = 0;
G2L["1c3"]["BackgroundTransparency"] = 1;
G2L["1c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1c3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c3"]["LayoutOrder"] = 1;
G2L["1c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c3"]["Name"] = [[SaveButton]];
G2L["1c3"]["Rotation"] = -180;
G2L["1c3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal
G2L["1c4"] = Instance.new("Frame", G2L["1a5"]);
G2L["1c4"]["Visible"] = false;
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1c4"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Name"] = [[BrowserLogsViewModal]];
G2L["1c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.UIPadding
G2L["1c5"] = Instance.new("UIPadding", G2L["1c4"]);
G2L["1c5"]["PaddingTop"] = UDim.new(0, 10);
G2L["1c5"]["PaddingRight"] = UDim.new(0, 10);
G2L["1c5"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1c5"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame
G2L["1c6"] = Instance.new("ScrollingFrame", G2L["1c4"]);
G2L["1c6"]["Active"] = true;
G2L["1c6"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1c6"]["ScrollBarImageTransparency"] = 0.8;
G2L["1c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c6"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["ScrollBarThickness"] = 4;
G2L["1c6"]["LayoutOrder"] = 1;
G2L["1c6"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UIPadding
G2L["1c7"] = Instance.new("UIPadding", G2L["1c6"]);
G2L["1c7"]["PaddingTop"] = UDim.new(0, 5);
G2L["1c7"]["PaddingRight"] = UDim.new(0, 5);
G2L["1c7"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UICorner
G2L["1c8"] = Instance.new("UICorner", G2L["1c6"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.TextBox
G2L["1c9"] = Instance.new("TextBox", G2L["1c6"]);
G2L["1c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c9"]["BorderSizePixel"] = 0;
G2L["1c9"]["TextEditable"] = false;
G2L["1c9"]["TextSize"] = 14;
G2L["1c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c9"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1c9"]["MultiLine"] = true;
G2L["1c9"]["ClearTextOnFocus"] = false;
G2L["1c9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c9"]["Text"] = [[Browser logs]];
G2L["1c9"]["LayoutOrder"] = 1;
G2L["1c9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal
G2L["1ca"] = Instance.new("Frame", G2L["1a5"]);
G2L["1ca"]["Visible"] = false;
G2L["1ca"]["BorderSizePixel"] = 0;
G2L["1ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ca"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1ca"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ca"]["Name"] = [[SetMultiAPIKeyModal]];
G2L["1ca"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.UIPadding
G2L["1cb"] = Instance.new("UIPadding", G2L["1ca"]);
G2L["1cb"]["PaddingTop"] = UDim.new(0, 10);
G2L["1cb"]["PaddingRight"] = UDim.new(0, 10);
G2L["1cb"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1cb"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame
G2L["1cc"] = Instance.new("ScrollingFrame", G2L["1ca"]);
G2L["1cc"]["Active"] = true;
G2L["1cc"]["BorderSizePixel"] = 0;
G2L["1cc"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1cc"]["ScrollBarImageTransparency"] = 0.8;
G2L["1cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cc"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1cc"]["Size"] = UDim2.new(1, 0, 1, -60);
G2L["1cc"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1cc"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cc"]["ScrollBarThickness"] = 4;
G2L["1cc"]["LayoutOrder"] = 1;
G2L["1cc"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.TextBox
G2L["1cd"] = Instance.new("TextBox", G2L["1cc"]);
G2L["1cd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1cd"]["BorderSizePixel"] = 0;
G2L["1cd"]["TextSize"] = 14;
G2L["1cd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1cd"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1cd"]["MultiLine"] = true;
G2L["1cd"]["ClearTextOnFocus"] = false;
G2L["1cd"]["PlaceholderText"] = [[sk-...]];
G2L["1cd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cd"]["Text"] = [[]];
G2L["1cd"]["LayoutOrder"] = 1;
G2L["1cd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UIPadding
G2L["1ce"] = Instance.new("UIPadding", G2L["1cc"]);
G2L["1ce"]["PaddingTop"] = UDim.new(0, 5);
G2L["1ce"]["PaddingRight"] = UDim.new(0, 5);
G2L["1ce"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UICorner
G2L["1cf"] = Instance.new("UICorner", G2L["1cc"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.NoteLabel
G2L["1d0"] = Instance.new("TextLabel", G2L["1ca"]);
G2L["1d0"]["TextWrapped"] = true;
G2L["1d0"]["BorderSizePixel"] = 0;
G2L["1d0"]["TextSize"] = 17;
G2L["1d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d0"]["BackgroundTransparency"] = 1;
G2L["1d0"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d0"]["Text"] = [[One key per line. Rotates to the next key on rate limit.]];
G2L["1d0"]["Name"] = [[NoteLabel]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer
G2L["1d1"] = Instance.new("Frame", G2L["1ca"]);
G2L["1d1"]["BorderSizePixel"] = 0;
G2L["1d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d1"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1d1"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d1"]["Name"] = [[BottomContainer]];
G2L["1d1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.UIGridLayout
G2L["1d2"] = Instance.new("UIGridLayout", G2L["1d1"]);
G2L["1d2"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d2"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1d2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d2"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.ClearButton
G2L["1d3"] = Instance.new("ImageButton", G2L["1d1"]);
G2L["1d3"]["BorderSizePixel"] = 0;
G2L["1d3"]["BackgroundTransparency"] = 1;
G2L["1d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d3"]["Image"] = [[rbxassetid://115957379627811]];
G2L["1d3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d3"]["Name"] = [[ClearButton]];
G2L["1d3"]["Rotation"] = -180;
G2L["1d3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.SaveButton
G2L["1d4"] = Instance.new("ImageButton", G2L["1d1"]);
G2L["1d4"]["BorderSizePixel"] = 0;
G2L["1d4"]["BackgroundTransparency"] = 1;
G2L["1d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1d4"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d4"]["LayoutOrder"] = 1;
G2L["1d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d4"]["Name"] = [[SaveButton]];
G2L["1d4"]["Rotation"] = -180;
G2L["1d4"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal
G2L["1d5"] = Instance.new("Frame", G2L["1a5"]);
G2L["1d5"]["Visible"] = false;
G2L["1d5"]["BorderSizePixel"] = 0;
G2L["1d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d5"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1d5"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d5"]["Name"] = [[HostProviderModal]];
G2L["1d5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.UIPadding
G2L["1d6"] = Instance.new("UIPadding", G2L["1d5"]);
G2L["1d6"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d6"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d6"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d6"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer
G2L["1d7"] = Instance.new("Frame", G2L["1d5"]);
G2L["1d7"]["BorderSizePixel"] = 0;
G2L["1d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d7"]["Name"] = [[MainContainer]];
G2L["1d7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame
G2L["1d8"] = Instance.new("ScrollingFrame", G2L["1d7"]);
G2L["1d8"]["Active"] = true;
G2L["1d8"]["BorderSizePixel"] = 0;
G2L["1d8"]["ScrollBarImageTransparency"] = 0.9;
G2L["1d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d8"]["ScrollBarThickness"] = 6;
G2L["1d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIGridLayout
G2L["1d9"] = Instance.new("UIGridLayout", G2L["1d8"]);
G2L["1d9"]["CellSize"] = UDim2.new(0, 115, 0, 30);
G2L["1d9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton
G2L["1da"] = Instance.new("TextButton", G2L["1d8"]);
G2L["1da"]["BorderSizePixel"] = 0;
G2L["1da"]["TextSize"] = 14;
G2L["1da"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1da"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1da"]["BackgroundTransparency"] = 0.95;
G2L["1da"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["1da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1da"]["Text"] = [[]];
G2L["1da"]["Name"] = [[TemplateButton]];
G2L["1da"]["Visible"] = false;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UICorner
G2L["1db"] = Instance.new("UICorner", G2L["1da"]);
G2L["1db"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.ImageLabel
G2L["1dc"] = Instance.new("ImageLabel", G2L["1da"]);
G2L["1dc"]["BorderSizePixel"] = 0;
G2L["1dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dc"]["Image"] = [[rbxassetid://88246357492813]];
G2L["1dc"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UIPadding
G2L["1dd"] = Instance.new("UIPadding", G2L["1da"]);
G2L["1dd"]["PaddingTop"] = UDim.new(0, 5);
G2L["1dd"]["PaddingRight"] = UDim.new(0, 5);
G2L["1dd"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1dd"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.TextLabel
G2L["1de"] = Instance.new("TextLabel", G2L["1da"]);
G2L["1de"]["BorderSizePixel"] = 0;
G2L["1de"]["TextSize"] = 14;
G2L["1de"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1de"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1de"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1de"]["BackgroundTransparency"] = 1;
G2L["1de"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1de"]["Text"] = [[OpenRouter]];
G2L["1de"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIPadding
G2L["1df"] = Instance.new("UIPadding", G2L["1d8"]);
G2L["1df"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame
G2L["1e0"] = Instance.new("CanvasGroup", G2L["1a3"]);
G2L["1e0"]["Visible"] = false;
G2L["1e0"]["BorderSizePixel"] = 0;
G2L["1e0"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1e0"]["Size"] = UDim2.new(0, 250, 0, 125);
G2L["1e0"]["Position"] = UDim2.new(0.5, -125, 0.5, -62);
G2L["1e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e0"]["Name"] = [[ConfirmationFrame]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.UICorner
G2L["1e1"] = Instance.new("UICorner", G2L["1e0"]);
G2L["1e1"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame
G2L["1e2"] = Instance.new("Frame", G2L["1e0"]);
G2L["1e2"]["BorderSizePixel"] = 0;
G2L["1e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e2"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1e2"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["1e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e2"]["Name"] = [[ButtonsContainerFrame]];
G2L["1e2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.UIGridLayout
G2L["1e3"] = Instance.new("UIGridLayout", G2L["1e2"]);
G2L["1e3"]["CellSize"] = UDim2.new(0.5, 0, 1, 0);
G2L["1e3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1e3"]["CellPadding"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.YesButton
G2L["1e4"] = Instance.new("TextButton", G2L["1e2"]);
G2L["1e4"]["BorderSizePixel"] = 0;
G2L["1e4"]["TextSize"] = 14;
G2L["1e4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e4"]["BackgroundTransparency"] = 0.9;
G2L["1e4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e4"]["Text"] = [[Yes]];
G2L["1e4"]["Name"] = [[YesButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.NoButton
G2L["1e5"] = Instance.new("TextButton", G2L["1e2"]);
G2L["1e5"]["BorderSizePixel"] = 0;
G2L["1e5"]["TextSize"] = 14;
G2L["1e5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e5"]["BackgroundTransparency"] = 0.9;
G2L["1e5"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e5"]["Text"] = [[No]];
G2L["1e5"]["Name"] = [[NoButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel
G2L["1e6"] = Instance.new("TextLabel", G2L["1e0"]);
G2L["1e6"]["TextWrapped"] = true;
G2L["1e6"]["BorderSizePixel"] = 0;
G2L["1e6"]["TextSize"] = 17;
G2L["1e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e6"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e6"]["BackgroundTransparency"] = 1;
G2L["1e6"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["1e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e6"]["Text"] = [[Are you sure?]];
G2L["1e6"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel.UIPadding
G2L["1e7"] = Instance.new("UIPadding", G2L["1e6"]);
G2L["1e7"]["PaddingTop"] = UDim.new(0, 10);
G2L["1e7"]["PaddingRight"] = UDim.new(0, 10);
G2L["1e7"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1e7"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["1e8"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["1e8"]["Visible"] = false;
G2L["1e8"]["GroupTransparency"] = 1;
G2L["1e8"]["ZIndex"] = 999;
G2L["1e8"]["BorderSizePixel"] = 0;
G2L["1e8"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e8"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["1e9"] = Instance.new("ImageLabel", G2L["1e8"]);
G2L["1e9"]["BorderSizePixel"] = 0;
G2L["1e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e9"]["Image"] = [[rbxassetid://115810237733262]];
G2L["1e9"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["1e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e9"]["BackgroundTransparency"] = 1;
G2L["1e9"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["1ea"] = Instance.new("TextLabel", G2L["1e9"]);
G2L["1ea"]["BorderSizePixel"] = 0;
G2L["1ea"]["TextSize"] = 35;
G2L["1ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ea"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["BackgroundTransparency"] = 1;
G2L["1ea"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["1ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ea"]["Text"] = [[Artificial Intelligence]];
G2L["1ea"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI.ResizeLabel
G2L["1eb"] = Instance.new("ImageLabel", G2L["2"]);
G2L["1eb"]["ZIndex"] = 9999;
G2L["1eb"]["BorderSizePixel"] = 0;
G2L["1eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["Image"] = [[rbxassetid://128099302268852]];
G2L["1eb"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1eb"]["BackgroundTransparency"] = 1;
G2L["1eb"]["Rotation"] = -90;
G2L["1eb"]["Name"] = [[ResizeLabel]];
G2L["1eb"]["Position"] = UDim2.new(1, -25, 1, -25);


-- StarterGui.IYAI.IYAI Toast Container
G2L["1ec"] = Instance.new("Frame", G2L["1"]);
G2L["1ec"]["BorderSizePixel"] = 0;
G2L["1ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["1ec"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["1ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ec"]["Name"] = [[IYAI Toast Container]];
G2L["1ec"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["1ed"] = Instance.new("CanvasGroup", G2L["1ec"]);
G2L["1ed"]["BorderSizePixel"] = 0;
G2L["1ed"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1ed"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["1ed"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["1ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ed"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["1ee"] = Instance.new("UICorner", G2L["1ed"]);
G2L["1ee"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["1ef"] = Instance.new("Frame", G2L["1ed"]);
G2L["1ef"]["BorderSizePixel"] = 0;
G2L["1ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ef"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["1ef"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["1ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ef"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["1f0"] = Instance.new("TextLabel", G2L["1ed"]);
G2L["1f0"]["ZIndex"] = 2;
G2L["1f0"]["BorderSizePixel"] = 0;
G2L["1f0"]["TextSize"] = 14;
G2L["1f0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f0"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1f0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f0"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f0"]["Text"] = [[Toast Title]];
G2L["1f0"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["1f1"] = Instance.new("UIPadding", G2L["1f0"]);
G2L["1f1"]["PaddingRight"] = UDim.new(0, 5);
G2L["1f1"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["1f2"] = Instance.new("TextButton", G2L["1f0"]);
G2L["1f2"]["BorderSizePixel"] = 0;
G2L["1f2"]["TextSize"] = 14;
G2L["1f2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f2"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f2"]["BackgroundTransparency"] = 1;
G2L["1f2"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f2"]["Text"] = [[X]];
G2L["1f2"]["Name"] = [[CloseButton]];
G2L["1f2"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["1f3"] = Instance.new("UICorner", G2L["1f2"]);
G2L["1f3"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["1f4"] = Instance.new("TextLabel", G2L["1ed"]);
G2L["1f4"]["TextWrapped"] = true;
G2L["1f4"]["BorderSizePixel"] = 0;
G2L["1f4"]["TextSize"] = 14;
G2L["1f4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f4"]["BackgroundTransparency"] = 1;
G2L["1f4"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f4"]["Name"] = [[ToastDesc]];
G2L["1f4"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["1f5"] = Instance.new("UIPadding", G2L["1f4"]);
G2L["1f5"]["PaddingTop"] = UDim.new(0, 5);
G2L["1f5"]["PaddingRight"] = UDim.new(0, 10);
G2L["1f5"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1f5"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["1f6"] = Instance.new("Frame", G2L["1ed"]);
G2L["1f6"]["ZIndex"] = 999;
G2L["1f6"]["BorderSizePixel"] = 0;
G2L["1f6"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["1f6"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1f6"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["1f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f6"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["1f7"] = Instance.new("UICorner", G2L["1f6"]);
G2L["1f7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["1f8"] = Instance.new("UIPadding", G2L["1ec"]);
G2L["1f8"]["PaddingTop"] = UDim.new(0, 15);
G2L["1f8"]["PaddingRight"] = UDim.new(0, 15);
G2L["1f8"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1f8"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["1f9"] = Instance.new("StringValue", G2L["1"]);
G2L["1f9"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["1fa"] = Instance.new("StringValue", G2L["1"]);
G2L["1fa"]["Name"] = [[Version]];
G2L["1fa"]["Value"] = [[1.0.9]];

return G2L
