-- Instances: 513 | Scripts: 0 | Modules: 0 | Tags: 0
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
G2L["5a"]["Size"] = UDim2.new(1, 0, 0, 60);
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["5e"] = Instance.new("Frame", G2L["59"]);
G2L["5e"]["ZIndex"] = 2;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Name"] = [[ModelSelectFrame]];
G2L["5e"]["LayoutOrder"] = 2;
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["5f"] = Instance.new("TextLabel", G2L["5e"]);
G2L["5f"]["ZIndex"] = 0;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["TextSize"] = 14;
G2L["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[Model]];
G2L["5f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["5f"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["60"] = Instance.new("Frame", G2L["5e"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["60"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["61"] = Instance.new("TextBox", G2L["60"]);
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["ClearTextOnFocus"] = false;
G2L["61"]["ClipsDescendants"] = true;
G2L["61"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["61"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[]];
G2L["61"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["62"] = Instance.new("UICorner", G2L["61"]);
G2L["62"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["63"] = Instance.new("UIPadding", G2L["61"]);
G2L["63"]["PaddingTop"] = UDim.new(0, 10);
G2L["63"]["PaddingRight"] = UDim.new(0, 10);
G2L["63"]["PaddingLeft"] = UDim.new(0, 10);
G2L["63"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["64"] = Instance.new("ImageButton", G2L["60"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundTransparency"] = 1;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["Image"] = [[rbxassetid://117799502668485]];
G2L["64"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["65"] = Instance.new("UICorner", G2L["64"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["66"] = Instance.new("UIPadding", G2L["5e"]);
G2L["66"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["67"] = Instance.new("Frame", G2L["59"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["67"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Name"] = [[TestFrame]];
G2L["67"]["LayoutOrder"] = 5;
G2L["67"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["68"] = Instance.new("TextLabel", G2L["67"]);
G2L["68"]["ZIndex"] = 0;
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[Test Connection & Credential]];
G2L["68"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["69"] = Instance.new("UIGridLayout", G2L["67"]);
G2L["69"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["69"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["6a"] = Instance.new("TextButton", G2L["67"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["BackgroundTransparency"] = 0.95;
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6a"]["LayoutOrder"] = 1;
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[]];
G2L["6a"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["6b"] = Instance.new("UICorner", G2L["6a"]);
G2L["6b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["6c"] = Instance.new("Frame", G2L["6a"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["LayoutOrder"] = 3;
G2L["6c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["6d"] = Instance.new("Frame", G2L["6c"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["6d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["6d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["6f"] = Instance.new("TextLabel", G2L["6c"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6f"]["TextTransparency"] = 0.25;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["BackgroundTransparency"] = 1;
G2L["6f"]["RichText"] = true;
G2L["6f"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Text"] = [[Connection]];
G2L["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6f"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["70"] = Instance.new("UIPadding", G2L["6c"]);
G2L["70"]["PaddingTop"] = UDim.new(0, 5);
G2L["70"]["PaddingRight"] = UDim.new(0, 15);
G2L["70"]["PaddingLeft"] = UDim.new(0, 15);
G2L["70"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["71"] = Instance.new("TextButton", G2L["67"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextSize"] = 14;
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["BackgroundTransparency"] = 0.95;
G2L["71"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["71"]["LayoutOrder"] = 2;
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[]];
G2L["71"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["72"] = Instance.new("UICorner", G2L["71"]);
G2L["72"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["73"] = Instance.new("Frame", G2L["71"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["73"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["LayoutOrder"] = 3;
G2L["73"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["74"] = Instance.new("Frame", G2L["73"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["74"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["74"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["75"] = Instance.new("UICorner", G2L["74"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["76"] = Instance.new("TextLabel", G2L["73"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["TextSize"] = 14;
G2L["76"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["76"]["TextTransparency"] = 0.25;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["RichText"] = true;
G2L["76"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Text"] = [[Credential]];
G2L["76"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["76"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["77"] = Instance.new("UIPadding", G2L["73"]);
G2L["77"]["PaddingTop"] = UDim.new(0, 5);
G2L["77"]["PaddingRight"] = UDim.new(0, 15);
G2L["77"]["PaddingLeft"] = UDim.new(0, 15);
G2L["77"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["78"] = Instance.new("Frame", G2L["59"]);
G2L["78"]["ZIndex"] = 2;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[MaxStepFrame]];
G2L["78"]["LayoutOrder"] = 3;
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["79"] = Instance.new("TextLabel", G2L["78"]);
G2L["79"]["ZIndex"] = 0;
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundTransparency"] = 1;
G2L["79"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[Max Step]];
G2L["79"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["79"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["7a"] = Instance.new("Frame", G2L["78"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["7a"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["7b"] = Instance.new("TextBox", G2L["7a"]);
G2L["7b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["ClearTextOnFocus"] = false;
G2L["7b"]["ClipsDescendants"] = true;
G2L["7b"]["PlaceholderText"] = [[100]];
G2L["7b"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7b"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[100]];
G2L["7b"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["7c"] = Instance.new("UICorner", G2L["7b"]);
G2L["7c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["7d"] = Instance.new("UIPadding", G2L["7b"]);
G2L["7d"]["PaddingTop"] = UDim.new(0, 10);
G2L["7d"]["PaddingRight"] = UDim.new(0, 10);
G2L["7d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["7d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["7e"] = Instance.new("ImageButton", G2L["7b"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["Image"] = [[rbxassetid://74363941121004]];
G2L["7e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Name"] = [[ResetButton]];
G2L["7e"]["Rotation"] = -180;
G2L["7e"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["7f"] = Instance.new("UIPadding", G2L["78"]);
G2L["7f"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["80"] = Instance.new("UIListLayout", G2L["59"]);
G2L["80"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["81"] = Instance.new("Frame", G2L["59"]);
G2L["81"]["ZIndex"] = 2;
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[TemperatureFrame]];
G2L["81"]["LayoutOrder"] = 4;
G2L["81"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["82"] = Instance.new("TextLabel", G2L["81"]);
G2L["82"]["ZIndex"] = 0;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Temperature]];
G2L["82"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["82"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["83"] = Instance.new("Frame", G2L["81"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["83"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["84"] = Instance.new("TextBox", G2L["83"]);
G2L["84"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextSize"] = 14;
G2L["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["ClearTextOnFocus"] = false;
G2L["84"]["ClipsDescendants"] = true;
G2L["84"]["PlaceholderText"] = [[100]];
G2L["84"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["84"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Text"] = [[1.0]];
G2L["84"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["85"] = Instance.new("UICorner", G2L["84"]);
G2L["85"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["86"] = Instance.new("UIPadding", G2L["84"]);
G2L["86"]["PaddingTop"] = UDim.new(0, 10);
G2L["86"]["PaddingRight"] = UDim.new(0, 10);
G2L["86"]["PaddingLeft"] = UDim.new(0, 10);
G2L["86"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["87"] = Instance.new("ImageButton", G2L["84"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["Image"] = [[rbxassetid://74363941121004]];
G2L["87"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Name"] = [[ResetButton]];
G2L["87"]["Rotation"] = -180;
G2L["87"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["88"] = Instance.new("UIPadding", G2L["81"]);
G2L["88"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["89"] = Instance.new("Frame", G2L["59"]);
G2L["89"]["ZIndex"] = 2;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Name"] = [[SystemPromptFrame]];
G2L["89"]["LayoutOrder"] = 4;
G2L["89"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["8a"] = Instance.new("UIPadding", G2L["89"]);
G2L["8a"]["PaddingTop"] = UDim.new(0, 5);
G2L["8a"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["8b"] = Instance.new("TextButton", G2L["89"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["TextSize"] = 17;
G2L["8b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8b"]["BackgroundTransparency"] = 0.95;
G2L["8b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["8c"] = Instance.new("UICorner", G2L["8b"]);
G2L["8c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["8d"] = Instance.new("Frame", G2L["59"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["Size"] = UDim2.new(1, 0, 0, 65);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[HostSelectFrame]];
G2L["8d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["8e"] = Instance.new("TextLabel", G2L["8d"]);
G2L["8e"]["ZIndex"] = 0;
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextSize"] = 14;
G2L["8e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Text"] = [[Host Provider]];
G2L["8e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["8e"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["8f"] = Instance.new("UIPadding", G2L["8d"]);
G2L["8f"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["90"] = Instance.new("Frame", G2L["8d"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["90"]["Position"] = UDim2.new(0, 160, 0, 0);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox
G2L["91"] = Instance.new("TextBox", G2L["90"]);
G2L["91"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["TextSize"] = 14;
G2L["91"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["91"]["ClearTextOnFocus"] = false;
G2L["91"]["ClipsDescendants"] = true;
G2L["91"]["Size"] = UDim2.new(1, -115, 0, 30);
G2L["91"]["Position"] = UDim2.new(0, 115, 0, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Text"] = [[]];
G2L["91"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UICorner
G2L["92"] = Instance.new("UICorner", G2L["91"]);
G2L["92"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextBox.UIPadding
G2L["93"] = Instance.new("UIPadding", G2L["91"]);
G2L["93"]["PaddingTop"] = UDim.new(0, 10);
G2L["93"]["PaddingRight"] = UDim.new(0, 10);
G2L["93"]["PaddingLeft"] = UDim.new(0, 10);
G2L["93"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["94"] = Instance.new("TextButton", G2L["90"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["TextSize"] = 14;
G2L["94"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["94"]["BackgroundTransparency"] = 0.85;
G2L["94"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Text"] = [[]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["95"] = Instance.new("UICorner", G2L["94"]);
G2L["95"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["96"] = Instance.new("ImageLabel", G2L["94"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["Image"] = [[rbxassetid://88246357492813]];
G2L["96"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["97"] = Instance.new("UIPadding", G2L["94"]);
G2L["97"]["PaddingTop"] = UDim.new(0, 5);
G2L["97"]["PaddingRight"] = UDim.new(0, 5);
G2L["97"]["PaddingLeft"] = UDim.new(0, 5);
G2L["97"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.TextLabel
G2L["98"] = Instance.new("TextLabel", G2L["94"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 14;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[OpenRouter]];
G2L["98"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.LoadFreeButton
G2L["99"] = Instance.new("TextButton", G2L["8d"]);
G2L["99"]["RichText"] = true;
G2L["99"]["BorderSizePixel"] = 0;
G2L["99"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["99"]["TextSize"] = 12;
G2L["99"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 128);
G2L["99"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["99"]["BackgroundTransparency"] = 0.85;
G2L["99"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["99"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["99"]["LayoutOrder"] = 3;
G2L["99"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["99"]["Text"] = [[⭐ Load best and free model]];
G2L["99"]["Name"] = [[LoadFreeButton]];
G2L["99"]["Position"] = UDim2.new(0, 160, 0, 35);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.LoadFreeButton.UICorner
G2L["9a"] = Instance.new("UICorner", G2L["99"]);
G2L["9a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.LoadFreeButton.UIPadding
G2L["9b"] = Instance.new("UIPadding", G2L["99"]);
G2L["9b"]["PaddingRight"] = UDim.new(0, 5);
G2L["9b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.HelpButton
G2L["9c"] = Instance.new("TextButton", G2L["8d"]);
G2L["9c"]["RichText"] = true;
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9c"]["TextSize"] = 12;
G2L["9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 255);
G2L["9c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9c"]["BackgroundTransparency"] = 0.85;
G2L["9c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9c"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["9c"]["LayoutOrder"] = 3;
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Text"] = [[❔ Need help? Join our Discord]];
G2L["9c"]["Name"] = [[HelpButton]];
G2L["9c"]["Position"] = UDim2.new(0, 325, 0, 35);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.HelpButton.UICorner
G2L["9d"] = Instance.new("UICorner", G2L["9c"]);
G2L["9d"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.HelpButton.UIPadding
G2L["9e"] = Instance.new("UIPadding", G2L["9c"]);
G2L["9e"]["PaddingRight"] = UDim.new(0, 5);
G2L["9e"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["9f"] = Instance.new("Frame", G2L["59"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["Size"] = UDim2.new(1, 10, 0, 35);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Name"] = [[APIKeyFrame]];
G2L["9f"]["LayoutOrder"] = 1;
G2L["9f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["a0"] = Instance.new("TextLabel", G2L["9f"]);
G2L["a0"]["ZIndex"] = 0;
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["TextSize"] = 14;
G2L["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["BackgroundTransparency"] = 1;
G2L["a0"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Text"] = [[API Key]];
G2L["a0"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a0"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["a1"] = Instance.new("TextLabel", G2L["9f"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["TextSize"] = 14;
G2L["a1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["BackgroundTransparency"] = 1;
G2L["a1"]["Size"] = UDim2.new(1, -160, 0, 30);
G2L["a1"]["ClipsDescendants"] = true;
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Text"] = [[]];
G2L["a1"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["a2"] = Instance.new("TextBox", G2L["a1"]);
G2L["a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextTransparency"] = 1;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["ClearTextOnFocus"] = false;
G2L["a2"]["ClipsDescendants"] = true;
G2L["a2"]["PlaceholderText"] = [[sk-...]];
G2L["a2"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["a2"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[]];
G2L["a2"]["LayoutOrder"] = 1;
G2L["a2"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);
G2L["a3"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["a4"] = Instance.new("UIPadding", G2L["a1"]);
G2L["a4"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["a5"] = Instance.new("UIPadding", G2L["9f"]);
G2L["a5"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame
G2L["a6"] = Instance.new("Frame", G2L["9f"]);
G2L["a6"]["BorderSizePixel"] = 0;
G2L["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["a6"]["Position"] = UDim2.new(0, 50, 0, 0);
G2L["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a6"]["Name"] = [[ModeFrame]];
G2L["a6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["a7"] = Instance.new("TextButton", G2L["a6"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["TextSize"] = 14;
G2L["a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a7"]["BackgroundTransparency"] = 0.95;
G2L["a7"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Text"] = [[Single]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["a8"] = Instance.new("UICorner", G2L["a7"]);
G2L["a8"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIGridLayout
G2L["a9"] = Instance.new("UIGridLayout", G2L["a6"]);
G2L["a9"]["CellSize"] = UDim2.new(0, 40, 0, 20);
G2L["a9"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["a9"]["CellPadding"] = UDim2.new(0, 2, 0, 2);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIPadding
G2L["aa"] = Instance.new("UIPadding", G2L["a6"]);
G2L["aa"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["ab"] = Instance.new("TextButton", G2L["a6"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["BackgroundTransparency"] = 0.95;
G2L["ab"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[Multi]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["ac"] = Instance.new("UICorner", G2L["ab"]);
G2L["ac"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton
G2L["ad"] = Instance.new("TextButton", G2L["9f"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 17;
G2L["ad"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ad"]["BackgroundTransparency"] = 0.95;
G2L["ad"]["Size"] = UDim2.new(1, -170, 0, 30);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[Set multiple API keys ↗]];
G2L["ad"]["Name"] = [[SetMultipleAPIKeysButton]];
G2L["ad"]["Visible"] = false;
G2L["ad"]["Position"] = UDim2.new(0, 160, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton.UICorner
G2L["ae"] = Instance.new("UICorner", G2L["ad"]);
G2L["ae"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["af"] = Instance.new("CanvasGroup", G2L["58"]);
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Size"] = UDim2.new(1, -15, 0, 35);
G2L["af"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["b0"] = Instance.new("UICorner", G2L["af"]);
G2L["b0"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["b1"] = Instance.new("TextLabel", G2L["af"]);
G2L["b1"]["BorderSizePixel"] = 0;
G2L["b1"]["TextSize"] = 14;
G2L["b1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["BackgroundTransparency"] = 1;
G2L["b1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["b2"] = Instance.new("UIPadding", G2L["b1"]);
G2L["b2"]["PaddingTop"] = UDim.new(0, 5);
G2L["b2"]["PaddingRight"] = UDim.new(0, 5);
G2L["b2"]["PaddingLeft"] = UDim.new(0, 10);
G2L["b2"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["b3"] = Instance.new("TextButton", G2L["b1"]);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextSize"] = 14;
G2L["b3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["b3"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b3"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Text"] = [[Save changes]];
G2L["b3"]["Name"] = [[Save]];
G2L["b3"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["b4"] = Instance.new("UICorner", G2L["b3"]);
G2L["b4"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["b5"] = Instance.new("TextButton", G2L["b1"]);
G2L["b5"]["RichText"] = true;
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["TextSize"] = 14;
G2L["b5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["b5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b5"]["BackgroundTransparency"] = 1;
G2L["b5"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Text"] = [[<u>Revert</u>]];
G2L["b5"]["Name"] = [[Revert]];
G2L["b5"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b5"]);
G2L["b6"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["b7"] = Instance.new("UIPadding", G2L["58"]);
G2L["b7"]["PaddingTop"] = UDim.new(0, 10);
G2L["b7"]["PaddingRight"] = UDim.new(0, 10);
G2L["b7"]["PaddingLeft"] = UDim.new(0, 15);
G2L["b7"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["b8"] = Instance.new("Frame", G2L["5"]);
G2L["b8"]["Visible"] = false;
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Name"] = [[CodePage]];
G2L["b8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame
G2L["b9"] = Instance.new("Frame", G2L["b8"]);
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b9"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Name"] = [[TopFrame]];
G2L["b9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame
G2L["ba"] = Instance.new("Frame", G2L["b9"]);
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["ba"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Name"] = [[ActionsFrame]];
G2L["ba"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIGridLayout
G2L["bb"] = Instance.new("UIGridLayout", G2L["ba"]);
G2L["bb"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["bb"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["bb"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["bb"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["bb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIPadding
G2L["bc"] = Instance.new("UIPadding", G2L["ba"]);
G2L["bc"]["PaddingTop"] = UDim.new(0, 5);
G2L["bc"]["PaddingRight"] = UDim.new(0, 5);
G2L["bc"]["PaddingLeft"] = UDim.new(0, 5);
G2L["bc"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton
G2L["bd"] = Instance.new("TextButton", G2L["ba"]);
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["TextTransparency"] = 1;
G2L["bd"]["TextSize"] = 14;
G2L["bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bd"]["BackgroundTransparency"] = 0.9;
G2L["bd"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["bd"]["LayoutOrder"] = 2;
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Text"] = [[Clear]];
G2L["bd"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.ImageLabel
G2L["be"] = Instance.new("ImageLabel", G2L["bd"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["ImageColor3"] = Color3.fromRGB(171, 100, 100);
G2L["be"]["Image"] = [[rbxassetid://115957379627811]];
G2L["be"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UICorner
G2L["bf"] = Instance.new("UICorner", G2L["bd"]);
G2L["bf"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UIPadding
G2L["c0"] = Instance.new("UIPadding", G2L["bd"]);
G2L["c0"]["PaddingTop"] = UDim.new(0, 3);
G2L["c0"]["PaddingRight"] = UDim.new(0, 3);
G2L["c0"]["PaddingLeft"] = UDim.new(0, 3);
G2L["c0"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton
G2L["c1"] = Instance.new("TextButton", G2L["ba"]);
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["TextTransparency"] = 1;
G2L["c1"]["TextSize"] = 14;
G2L["c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c1"]["BackgroundTransparency"] = 0.9;
G2L["c1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c1"]["LayoutOrder"] = 1;
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Text"] = [[Copy]];
G2L["c1"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.ImageLabel
G2L["c2"] = Instance.new("ImageLabel", G2L["c1"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["Image"] = [[rbxassetid://110180044304394]];
G2L["c2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UIPadding
G2L["c3"] = Instance.new("UIPadding", G2L["c1"]);
G2L["c3"]["PaddingTop"] = UDim.new(0, 5);
G2L["c3"]["PaddingRight"] = UDim.new(0, 5);
G2L["c3"]["PaddingLeft"] = UDim.new(0, 5);
G2L["c3"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UICorner
G2L["c4"] = Instance.new("UICorner", G2L["c1"]);
G2L["c4"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton
G2L["c5"] = Instance.new("TextButton", G2L["ba"]);
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["TextTransparency"] = 1;
G2L["c5"]["TextSize"] = 14;
G2L["c5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c5"]["BackgroundTransparency"] = 0.9;
G2L["c5"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Text"] = [[Run]];
G2L["c5"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.ImageLabel
G2L["c6"] = Instance.new("ImageLabel", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["ImageColor3"] = Color3.fromRGB(86, 171, 0);
G2L["c6"]["Image"] = [[rbxassetid://135141271354749]];
G2L["c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.UICorner
G2L["c7"] = Instance.new("UICorner", G2L["c5"]);
G2L["c7"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame
G2L["c8"] = Instance.new("Frame", G2L["b9"]);
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Name"] = [[TabsFrame]];
G2L["c8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame
G2L["c9"] = Instance.new("ScrollingFrame", G2L["c8"]);
G2L["c9"]["Active"] = true;
G2L["c9"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["c9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c9"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.TabButton
G2L["ca"] = Instance.new("TextButton", G2L["c9"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["TextSize"] = 14;
G2L["ca"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["ca"]["BackgroundTransparency"] = 0.9;
G2L["ca"]["Size"] = UDim2.new(0, 39, 0, 20);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Text"] = [[Tab 1]];
G2L["ca"]["Name"] = [[TabButton]];
G2L["ca"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIListLayout
G2L["cb"] = Instance.new("UIListLayout", G2L["c9"]);
G2L["cb"]["Padding"] = UDim.new(0, 2);
G2L["cb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["cb"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIPadding
G2L["cc"] = Instance.new("UIPadding", G2L["c9"]);
G2L["cc"]["PaddingTop"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.NewTabButton
G2L["cd"] = Instance.new("TextButton", G2L["c9"]);
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["TextSize"] = 20;
G2L["cd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["cd"]["BackgroundTransparency"] = 1;
G2L["cd"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["cd"]["LayoutOrder"] = 999;
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Text"] = [[+]];
G2L["cd"]["Name"] = [[NewTabButton]];
G2L["cd"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.UIPadding
G2L["ce"] = Instance.new("UIPadding", G2L["c8"]);
G2L["ce"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["cf"] = Instance.new("UIListLayout", G2L["b8"]);
G2L["cf"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["d0"] = Instance.new("ScrollingFrame", G2L["b8"]);
G2L["d0"]["Active"] = true;
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["d0"]["ScrollBarImageTransparency"] = 0.8;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["d0"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["ScrollBarThickness"] = 4;
G2L["d0"]["LayoutOrder"] = 1;
G2L["d0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["d1"] = Instance.new("UIListLayout", G2L["d0"]);
G2L["d1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["d1"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["d2"] = Instance.new("TextBox", G2L["d0"]);
G2L["d2"]["Name"] = [[CodeBox]];
G2L["d2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["TextTransparency"] = 1;
G2L["d2"]["TextSize"] = 14;
G2L["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d2"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d2"]["MultiLine"] = true;
G2L["d2"]["ClearTextOnFocus"] = false;
G2L["d2"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["d2"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Text"] = [[print("Hello world!")]];
G2L["d2"]["LayoutOrder"] = 1;
G2L["d2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["d3"] = Instance.new("UIPadding", G2L["d2"]);
G2L["d3"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["d4"] = Instance.new("TextLabel", G2L["d2"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["TextSize"] = 14;
G2L["d4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["BackgroundTransparency"] = 1;
G2L["d4"]["RichText"] = true;
G2L["d4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Text"] = [[]];
G2L["d4"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d4"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["d5"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["TextSize"] = 14;
G2L["d5"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["BackgroundTransparency"] = 0.85;
G2L["d5"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["Text"] = [[1]];
G2L["d5"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["d5"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["d6"] = Instance.new("UIPadding", G2L["d5"]);
G2L["d6"]["PaddingRight"] = UDim.new(0, 5);
G2L["d6"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["d7"] = Instance.new("Frame", G2L["5"]);
G2L["d7"]["Visible"] = false;
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Name"] = [[ToolsPage]];
G2L["d7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["d8"] = Instance.new("ScrollingFrame", G2L["d7"]);
G2L["d8"]["Active"] = true;
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["d8"]["Name"] = [[ScrollingFrameMainChat]];
G2L["d8"]["ScrollBarImageTransparency"] = 0.85;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["ScrollBarThickness"] = 5;
G2L["d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["d9"] = Instance.new("UIListLayout", G2L["d8"]);
G2L["d9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["da"] = Instance.new("UIPadding", G2L["d8"]);
G2L["da"]["PaddingTop"] = UDim.new(0, 5);
G2L["da"]["PaddingRight"] = UDim.new(0, 5);
G2L["da"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["db"] = Instance.new("Folder", G2L["d8"]);
G2L["db"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["dc"] = Instance.new("Frame", G2L["db"]);
G2L["dc"]["Visible"] = false;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["dc"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Name"] = [[GroupFrame]];
G2L["dc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["dd"] = Instance.new("UIPadding", G2L["dc"]);
G2L["dd"]["PaddingTop"] = UDim.new(0, 5);
G2L["dd"]["PaddingRight"] = UDim.new(0, 5);
G2L["dd"]["PaddingLeft"] = UDim.new(0, 5);
G2L["dd"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["de"] = Instance.new("Frame", G2L["dc"]);
G2L["de"]["BorderSizePixel"] = 0;
G2L["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["de"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["de"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["de"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["df"] = Instance.new("TextLabel", G2L["de"]);
G2L["df"]["TextWrapped"] = true;
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["TextSize"] = 15;
G2L["df"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["df"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["BackgroundTransparency"] = 1;
G2L["df"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["df"]["Text"] = [[Group Title]];
G2L["df"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["df"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["e0"] = Instance.new("UICorner", G2L["de"]);
G2L["e0"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["e1"] = Instance.new("UIListLayout", G2L["de"]);
G2L["e1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["e2"] = Instance.new("UIPadding", G2L["de"]);
G2L["e2"]["PaddingTop"] = UDim.new(0, 10);
G2L["e2"]["PaddingRight"] = UDim.new(0, 10);
G2L["e2"]["PaddingLeft"] = UDim.new(0, 10);
G2L["e2"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["e3"] = Instance.new("Frame", G2L["de"]);
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e3"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["Name"] = [[ToolFrame]];
G2L["e3"]["LayoutOrder"] = 2;
G2L["e3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["e4"] = Instance.new("Frame", G2L["e3"]);
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["e4"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["e4"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e4"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["e5"] = Instance.new("UICorner", G2L["e4"]);
G2L["e5"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["e6"] = Instance.new("TextLabel", G2L["e3"]);
G2L["e6"]["TextWrapped"] = true;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["TextSize"] = 14;
G2L["e6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e6"]["TextTransparency"] = 0.25;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e6"]["BackgroundTransparency"] = 1;
G2L["e6"]["RichText"] = true;
G2L["e6"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e6"]["Text"] = [[Tool Name]];
G2L["e6"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e6"]["Name"] = [[ToolNameDesc]];
G2L["e6"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["e7"] = Instance.new("UIPadding", G2L["e3"]);
G2L["e7"]["PaddingTop"] = UDim.new(0, 5);
G2L["e7"]["PaddingRight"] = UDim.new(0, 15);
G2L["e7"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["e8"] = Instance.new("IntValue", G2L["d8"]);
G2L["e8"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["e9"] = Instance.new("TextLabel", G2L["d8"]);
G2L["e9"]["TextWrapped"] = true;
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["TextSize"] = 20;
G2L["e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["e9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["BackgroundTransparency"] = 1;
G2L["e9"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e9"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["e9"]["LayoutOrder"] = -1;
G2L["e9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e9"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["ea"] = Instance.new("UIPadding", G2L["e9"]);
G2L["ea"]["PaddingTop"] = UDim.new(0, 5);
G2L["ea"]["PaddingRight"] = UDim.new(0, 15);
G2L["ea"]["PaddingLeft"] = UDim.new(0, 15);
G2L["ea"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["eb"] = Instance.new("Frame", G2L["5"]);
G2L["eb"]["Visible"] = false;
G2L["eb"]["BorderSizePixel"] = 0;
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["eb"]["Name"] = [[TemplatePage]];
G2L["eb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["ec"] = Instance.new("Frame", G2L["5"]);
G2L["ec"]["Visible"] = false;
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["Name"] = [[StartupPage]];
G2L["ec"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["ed"] = Instance.new("ScrollingFrame", G2L["ec"]);
G2L["ed"]["Active"] = true;
G2L["ed"]["BorderSizePixel"] = 0;
G2L["ed"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["ed"]["Name"] = [[ScrollingFrameMainChat]];
G2L["ed"]["ScrollBarImageTransparency"] = 0.85;
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ed"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ed"]["ScrollBarThickness"] = 5;
G2L["ed"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["ee"] = Instance.new("UIListLayout", G2L["ed"]);
G2L["ee"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["ef"] = Instance.new("UIPadding", G2L["ed"]);
G2L["ef"]["PaddingTop"] = UDim.new(0, 5);
G2L["ef"]["PaddingRight"] = UDim.new(0, 5);
G2L["ef"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["f0"] = Instance.new("Folder", G2L["ed"]);
G2L["f0"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["f1"] = Instance.new("Frame", G2L["f0"]);
G2L["f1"]["Visible"] = false;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f1"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Name"] = [[GroupFrame]];
G2L["f1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["f2"] = Instance.new("UIPadding", G2L["f1"]);
G2L["f2"]["PaddingTop"] = UDim.new(0, 5);
G2L["f2"]["PaddingRight"] = UDim.new(0, 5);
G2L["f2"]["PaddingLeft"] = UDim.new(0, 5);
G2L["f2"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["f3"] = Instance.new("Frame", G2L["f1"]);
G2L["f3"]["BorderSizePixel"] = 0;
G2L["f3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f3"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f3"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["f4"] = Instance.new("TextLabel", G2L["f3"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["TextSize"] = 15;
G2L["f4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["BackgroundTransparency"] = 1;
G2L["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Text"] = [[Group Title]];
G2L["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f4"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["f5"] = Instance.new("UICorner", G2L["f3"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["f6"] = Instance.new("UIListLayout", G2L["f3"]);
G2L["f6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["f7"] = Instance.new("UIPadding", G2L["f3"]);
G2L["f7"]["PaddingTop"] = UDim.new(0, 10);
G2L["f7"]["PaddingRight"] = UDim.new(0, 10);
G2L["f7"]["PaddingLeft"] = UDim.new(0, 10);
G2L["f7"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["f8"] = Instance.new("Frame", G2L["f3"]);
G2L["f8"]["BorderSizePixel"] = 0;
G2L["f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f8"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f8"]["Name"] = [[ToolFrame]];
G2L["f8"]["LayoutOrder"] = 2;
G2L["f8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["f9"] = Instance.new("Frame", G2L["f8"]);
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["f9"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["f9"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["fa"] = Instance.new("UICorner", G2L["f9"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["fb"] = Instance.new("TextLabel", G2L["f8"]);
G2L["fb"]["TextWrapped"] = true;
G2L["fb"]["BorderSizePixel"] = 0;
G2L["fb"]["TextSize"] = 14;
G2L["fb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["fb"]["TextTransparency"] = 0.25;
G2L["fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["BackgroundTransparency"] = 1;
G2L["fb"]["RichText"] = true;
G2L["fb"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fb"]["Text"] = [[Tool Name]];
G2L["fb"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fb"]["Name"] = [[ToolNameDesc]];
G2L["fb"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["fc"] = Instance.new("UIPadding", G2L["f8"]);
G2L["fc"]["PaddingTop"] = UDim.new(0, 5);
G2L["fc"]["PaddingRight"] = UDim.new(0, 15);
G2L["fc"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["fd"] = Instance.new("IntValue", G2L["ed"]);
G2L["fd"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["fe"] = Instance.new("TextLabel", G2L["ed"]);
G2L["fe"]["TextWrapped"] = true;
G2L["fe"]["BorderSizePixel"] = 0;
G2L["fe"]["TextSize"] = 20;
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["fe"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["BackgroundTransparency"] = 1;
G2L["fe"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["fe"]["LayoutOrder"] = -1;
G2L["fe"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fe"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["ff"] = Instance.new("UIPadding", G2L["fe"]);
G2L["ff"]["PaddingTop"] = UDim.new(0, 5);
G2L["ff"]["PaddingRight"] = UDim.new(0, 15);
G2L["ff"]["PaddingLeft"] = UDim.new(0, 15);
G2L["ff"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["100"] = Instance.new("Frame", G2L["5"]);
G2L["100"]["Visible"] = false;
G2L["100"]["BorderSizePixel"] = 0;
G2L["100"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["100"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["100"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["100"]["Name"] = [[HistoryPage]];
G2L["100"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
G2L["101"] = Instance.new("ScrollingFrame", G2L["100"]);
G2L["101"]["Active"] = true;
G2L["101"]["BorderSizePixel"] = 0;
G2L["101"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["101"]["Name"] = [[ScrollingFrameMainChat]];
G2L["101"]["ScrollBarImageTransparency"] = 0.85;
G2L["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["101"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["ScrollBarThickness"] = 5;
G2L["101"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["102"] = Instance.new("UIListLayout", G2L["101"]);
G2L["102"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["103"] = Instance.new("UIPadding", G2L["101"]);
G2L["103"]["PaddingTop"] = UDim.new(0, 5);
G2L["103"]["PaddingRight"] = UDim.new(0, 5);
G2L["103"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["104"] = Instance.new("Folder", G2L["101"]);
G2L["104"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["105"] = Instance.new("Frame", G2L["104"]);
G2L["105"]["Visible"] = false;
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["105"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Name"] = [[GroupFrame]];
G2L["105"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["106"] = Instance.new("UIPadding", G2L["105"]);
G2L["106"]["PaddingTop"] = UDim.new(0, 5);
G2L["106"]["PaddingRight"] = UDim.new(0, 5);
G2L["106"]["PaddingLeft"] = UDim.new(0, 5);
G2L["106"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["107"] = Instance.new("Frame", G2L["105"]);
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["107"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["108"] = Instance.new("UICorner", G2L["107"]);
G2L["108"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["109"] = Instance.new("UIPadding", G2L["107"]);
G2L["109"]["PaddingTop"] = UDim.new(0, 10);
G2L["109"]["PaddingRight"] = UDim.new(0, 10);
G2L["109"]["PaddingLeft"] = UDim.new(0, 10);
G2L["109"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["10a"] = Instance.new("Frame", G2L["107"]);
G2L["10a"]["BorderSizePixel"] = 0;
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10a"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["Name"] = [[Left]];
G2L["10a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["10b"] = Instance.new("UIListLayout", G2L["10a"]);
G2L["10b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["10c"] = Instance.new("Frame", G2L["10a"]);
G2L["10c"]["BorderSizePixel"] = 0;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10c"]["Name"] = [[ToolsRowFrame]];
G2L["10c"]["LayoutOrder"] = 2;
G2L["10c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["10d"] = Instance.new("UIListLayout", G2L["10c"]);
G2L["10d"]["Padding"] = UDim.new(0, 5);
G2L["10d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["10d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["10e"] = Instance.new("Frame", G2L["10c"]);
G2L["10e"]["BorderSizePixel"] = 0;
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10e"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10e"]["Name"] = [[ToolFrame]];
G2L["10e"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["10f"] = Instance.new("Frame", G2L["10e"]);
G2L["10f"]["BorderSizePixel"] = 0;
G2L["10f"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["10f"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["10f"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["10f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10f"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["110"] = Instance.new("UICorner", G2L["10f"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["111"] = Instance.new("UICorner", G2L["10e"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["112"] = Instance.new("TextLabel", G2L["10e"]);
G2L["112"]["TextWrapped"] = true;
G2L["112"]["BorderSizePixel"] = 0;
G2L["112"]["TextSize"] = 14;
G2L["112"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["112"]["TextTransparency"] = 0.25;
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["112"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["BackgroundTransparency"] = 1;
G2L["112"]["RichText"] = true;
G2L["112"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["112"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["112"]["Text"] = [[Tool Name]];
G2L["112"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["112"]["Name"] = [[ToolName]];
G2L["112"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["113"] = Instance.new("UIPadding", G2L["10e"]);
G2L["113"]["PaddingTop"] = UDim.new(0, 5);
G2L["113"]["PaddingRight"] = UDim.new(0, 7);
G2L["113"]["PaddingLeft"] = UDim.new(0, 7);
G2L["113"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["114"] = Instance.new("UIPadding", G2L["10c"]);
G2L["114"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["115"] = Instance.new("TextLabel", G2L["10a"]);
G2L["115"]["TextWrapped"] = true;
G2L["115"]["BorderSizePixel"] = 0;
G2L["115"]["TextSize"] = 15;
G2L["115"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["115"]["TextTransparency"] = 0.5;
G2L["115"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["115"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["BackgroundTransparency"] = 1;
G2L["115"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["115"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["115"]["Text"] = [[0 messages]];
G2L["115"]["LayoutOrder"] = 1;
G2L["115"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["115"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["116"] = Instance.new("TextLabel", G2L["10a"]);
G2L["116"]["TextWrapped"] = true;
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["TextSize"] = 15;
G2L["116"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["116"]["TextTransparency"] = 0.5;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["116"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["BackgroundTransparency"] = 1;
G2L["116"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["Text"] = [[Timestamp]];
G2L["116"]["LayoutOrder"] = 999;
G2L["116"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["116"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["117"] = Instance.new("Frame", G2L["10a"]);
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["117"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["117"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["117"]["Name"] = [[TopRowFrame]];
G2L["117"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["118"] = Instance.new("TextLabel", G2L["117"]);
G2L["118"]["TextWrapped"] = true;
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["TextSize"] = 15;
G2L["118"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["118"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["BackgroundTransparency"] = 1;
G2L["118"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["118"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["118"]["Text"] = [[Title]];
G2L["118"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["118"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["119"] = Instance.new("UIListLayout", G2L["117"]);
G2L["119"]["Padding"] = UDim.new(0, 5);
G2L["119"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["119"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["11a"] = Instance.new("Frame", G2L["117"]);
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["11a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["11a"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["11a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["11b"] = Instance.new("TextLabel", G2L["11a"]);
G2L["11b"]["BorderSizePixel"] = 0;
G2L["11b"]["TextSize"] = 14;
G2L["11b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["11b"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["11b"]["BackgroundTransparency"] = 1;
G2L["11b"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["11b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11b"]["Text"] = [[Active]];
G2L["11b"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["11c"] = Instance.new("UIPadding", G2L["11b"]);
G2L["11c"]["PaddingRight"] = UDim.new(0, 5);
G2L["11c"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["11d"] = Instance.new("UICorner", G2L["11a"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["11e"] = Instance.new("Frame", G2L["107"]);
G2L["11e"]["BorderSizePixel"] = 0;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11e"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["11e"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["Name"] = [[Right]];
G2L["11e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["11f"] = Instance.new("UIGridLayout", G2L["11e"]);
G2L["11f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["11f"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["11f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["120"] = Instance.new("TextButton", G2L["11e"]);
G2L["120"]["BorderSizePixel"] = 0;
G2L["120"]["TextSize"] = 14;
G2L["120"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["120"]["BackgroundTransparency"] = 0.85;
G2L["120"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["120"]["LayoutOrder"] = 1;
G2L["120"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["Text"] = [[]];
G2L["120"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["121"] = Instance.new("UICorner", G2L["120"]);
G2L["121"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["122"] = Instance.new("ImageLabel", G2L["120"]);
G2L["122"]["BorderSizePixel"] = 0;
G2L["122"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["122"]["Image"] = [[rbxassetid://98174359243805]];
G2L["122"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["122"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["BackgroundTransparency"] = 1;
G2L["122"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["123"] = Instance.new("UIPadding", G2L["120"]);
G2L["123"]["PaddingTop"] = UDim.new(0, 3);
G2L["123"]["PaddingRight"] = UDim.new(0, 1);
G2L["123"]["PaddingLeft"] = UDim.new(0, 3);
G2L["123"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["124"] = Instance.new("TextButton", G2L["11e"]);
G2L["124"]["BorderSizePixel"] = 0;
G2L["124"]["TextSize"] = 14;
G2L["124"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["124"]["BackgroundTransparency"] = 0.85;
G2L["124"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["124"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["Text"] = [[]];
G2L["124"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["125"] = Instance.new("UICorner", G2L["124"]);
G2L["125"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["126"] = Instance.new("ImageLabel", G2L["124"]);
G2L["126"]["BorderSizePixel"] = 0;
G2L["126"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["126"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["126"]["Image"] = [[rbxassetid://115957379627811]];
G2L["126"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["126"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["127"] = Instance.new("UIPadding", G2L["124"]);
G2L["127"]["PaddingTop"] = UDim.new(0, 3);
G2L["127"]["PaddingRight"] = UDim.new(0, 3);
G2L["127"]["PaddingLeft"] = UDim.new(0, 3);
G2L["127"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["128"] = Instance.new("IntValue", G2L["101"]);
G2L["128"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["129"] = Instance.new("TextLabel", G2L["101"]);
G2L["129"]["TextWrapped"] = true;
G2L["129"]["BorderSizePixel"] = 0;
G2L["129"]["TextSize"] = 20;
G2L["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["129"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["BackgroundTransparency"] = 1;
G2L["129"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["129"]["Text"] = [[Conversation history]];
G2L["129"]["LayoutOrder"] = -1;
G2L["129"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["129"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["12a"] = Instance.new("UIPadding", G2L["129"]);
G2L["12a"]["PaddingTop"] = UDim.new(0, 5);
G2L["12a"]["PaddingRight"] = UDim.new(0, 15);
G2L["12a"]["PaddingLeft"] = UDim.new(0, 15);
G2L["12a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage
G2L["12b"] = Instance.new("Frame", G2L["5"]);
G2L["12b"]["Visible"] = false;
G2L["12b"]["BorderSizePixel"] = 0;
G2L["12b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["Name"] = [[BrowserPage]];
G2L["12b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer
G2L["12c"] = Instance.new("Frame", G2L["12b"]);
G2L["12c"]["BorderSizePixel"] = 0;
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12c"]["Size"] = UDim2.new(1, 0, 0, 200);
G2L["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["Name"] = [[PlatformsContainer]];
G2L["12c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["12d"] = Instance.new("Frame", G2L["12c"]);
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["12e"] = Instance.new("UIListLayout", G2L["12d"]);
G2L["12e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["12e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["12f"] = Instance.new("ImageLabel", G2L["12d"]);
G2L["12f"]["BorderSizePixel"] = 0;
G2L["12f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12f"]["Image"] = [[rbxassetid://73464751831922]];
G2L["12f"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["12f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["130"] = Instance.new("TextLabel", G2L["12d"]);
G2L["130"]["BorderSizePixel"] = 0;
G2L["130"]["TextSize"] = 20;
G2L["130"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["130"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["130"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["130"]["BackgroundTransparency"] = 1;
G2L["130"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["130"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["Text"] = [[You]];
G2L["130"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["131"] = Instance.new("Frame", G2L["12d"]);
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["131"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["131"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["131"]["Name"] = [[IconColor]];
G2L["131"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["132"] = Instance.new("UICorner", G2L["131"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.UIGridLayout
G2L["133"] = Instance.new("UIGridLayout", G2L["12c"]);
G2L["133"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["133"]["CellSize"] = UDim2.new(0, 175, 0, 100);
G2L["133"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["133"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["134"] = Instance.new("Frame", G2L["12c"]);
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["134"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["134"]["LayoutOrder"] = 1;
G2L["134"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["135"] = Instance.new("UIListLayout", G2L["134"]);
G2L["135"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["135"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["136"] = Instance.new("ImageLabel", G2L["134"]);
G2L["136"]["BorderSizePixel"] = 0;
G2L["136"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["136"]["Image"] = [[rbxassetid://131600704891794]];
G2L["136"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["136"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["136"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["137"] = Instance.new("TextLabel", G2L["134"]);
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["TextSize"] = 20;
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["137"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["BackgroundTransparency"] = 1;
G2L["137"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["Text"] = [[Bridge]];
G2L["137"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["138"] = Instance.new("Frame", G2L["134"]);
G2L["138"]["BorderSizePixel"] = 0;
G2L["138"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["138"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["138"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["138"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["138"]["Name"] = [[IconColor]];
G2L["138"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["139"] = Instance.new("UICorner", G2L["138"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["13a"] = Instance.new("Frame", G2L["12c"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["LayoutOrder"] = 2;
G2L["13a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["13b"] = Instance.new("UIListLayout", G2L["13a"]);
G2L["13b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["13b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["13c"] = Instance.new("ImageLabel", G2L["13a"]);
G2L["13c"]["BorderSizePixel"] = 0;
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["Image"] = [[rbxassetid://90807079339617]];
G2L["13c"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["13c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["13d"] = Instance.new("TextLabel", G2L["13a"]);
G2L["13d"]["BorderSizePixel"] = 0;
G2L["13d"]["TextSize"] = 20;
G2L["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["13d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["BackgroundTransparency"] = 1;
G2L["13d"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["13d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13d"]["Text"] = [[Web]];
G2L["13d"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["13e"] = Instance.new("Frame", G2L["13a"]);
G2L["13e"]["BorderSizePixel"] = 0;
G2L["13e"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["13e"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["13e"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["13e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13e"]["Name"] = [[IconColor]];
G2L["13e"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["13f"] = Instance.new("UICorner", G2L["13e"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip
G2L["140"] = Instance.new("TextLabel", G2L["12b"]);
G2L["140"]["TextWrapped"] = true;
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["TextSize"] = 20;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["140"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["BackgroundTransparency"] = 1;
G2L["140"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["Text"] = [[You can connect IYAI to your browser]];
G2L["140"]["LayoutOrder"] = -1;
G2L["140"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["140"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip.UIPadding
G2L["141"] = Instance.new("UIPadding", G2L["140"]);
G2L["141"]["PaddingTop"] = UDim.new(0, 5);
G2L["141"]["PaddingRight"] = UDim.new(0, 15);
G2L["141"]["PaddingLeft"] = UDim.new(0, 15);
G2L["141"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.UIPadding
G2L["142"] = Instance.new("UIPadding", G2L["12b"]);
G2L["142"]["PaddingTop"] = UDim.new(0, 5);
G2L["142"]["PaddingRight"] = UDim.new(0, 25);
G2L["142"]["PaddingLeft"] = UDim.new(0, 5);
G2L["142"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer
G2L["143"] = Instance.new("Frame", G2L["12b"]);
G2L["143"]["BorderSizePixel"] = 0;
G2L["143"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["143"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["143"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["Name"] = [[ShimmerContainer]];
G2L["143"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1
G2L["144"] = Instance.new("Frame", G2L["143"]);
G2L["144"]["BorderSizePixel"] = 0;
G2L["144"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["144"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["144"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["144"]["Name"] = [[Shimmer1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UICorner
G2L["145"] = Instance.new("UICorner", G2L["144"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UIGradient
G2L["146"] = Instance.new("UIGradient", G2L["144"]);
G2L["146"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["146"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.UIGridLayout
G2L["147"] = Instance.new("UIGridLayout", G2L["143"]);
G2L["147"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["147"]["CellSize"] = UDim2.new(0, 75, 0, 3);
G2L["147"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["147"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["147"]["CellPadding"] = UDim2.new(0, 105, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2
G2L["148"] = Instance.new("Frame", G2L["143"]);
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["Name"] = [[Shimmer2]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UICorner
G2L["149"] = Instance.new("UICorner", G2L["148"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UIGradient
G2L["14a"] = Instance.new("UIGradient", G2L["148"]);
G2L["14a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["14a"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer
G2L["14b"] = Instance.new("Frame", G2L["12b"]);
G2L["14b"]["BorderSizePixel"] = 0;
G2L["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14b"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["14b"]["Position"] = UDim2.new(0, 0, 0, 175);
G2L["14b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14b"]["Name"] = [[InstructionsContainer]];
G2L["14b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIListLayout
G2L["14c"] = Instance.new("UIListLayout", G2L["14b"]);
G2L["14c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIPadding
G2L["14d"] = Instance.new("UIPadding", G2L["14b"]);
G2L["14d"]["PaddingTop"] = UDim.new(0, 10);
G2L["14d"]["PaddingRight"] = UDim.new(0, 10);
G2L["14d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["14d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1
G2L["14e"] = Instance.new("Frame", G2L["14b"]);
G2L["14e"]["BorderSizePixel"] = 0;
G2L["14e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["14e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14e"]["Name"] = [[Frame1]];
G2L["14e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.UIListLayout
G2L["14f"] = Instance.new("UIListLayout", G2L["14e"]);
G2L["14f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["14f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.TextLabel
G2L["150"] = Instance.new("TextLabel", G2L["14e"]);
G2L["150"]["BorderSizePixel"] = 0;
G2L["150"]["TextSize"] = 17;
G2L["150"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["150"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["150"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["150"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["150"]["BackgroundTransparency"] = 1;
G2L["150"]["RichText"] = true;
G2L["150"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["150"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["150"]["Text"] = [[<b>1.</b> Download and run bridge (<font color="#aa6b6b">iyai_bridge.py</font> or <font color="#aa6b6b">iyai_bridge.ps1</font>) from]];
G2L["150"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton
G2L["151"] = Instance.new("TextButton", G2L["14e"]);
G2L["151"]["BorderSizePixel"] = 0;
G2L["151"]["TextSize"] = 17;
G2L["151"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["151"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["151"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["151"]["BackgroundTransparency"] = 1;
G2L["151"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["151"]["Size"] = UDim2.new(0, 32, 0, 25);
G2L["151"]["LayoutOrder"] = 1;
G2L["151"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["151"]["Text"] = [[here]];
G2L["151"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton.Value
G2L["152"] = Instance.new("StringValue", G2L["151"]);
G2L["152"]["Value"] = [[https://github.com/imluri/IYAI]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2
G2L["153"] = Instance.new("Frame", G2L["14b"]);
G2L["153"]["BorderSizePixel"] = 0;
G2L["153"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["153"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["153"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["153"]["Name"] = [[Frame2]];
G2L["153"]["LayoutOrder"] = 1;
G2L["153"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.UIListLayout
G2L["154"] = Instance.new("UIListLayout", G2L["153"]);
G2L["154"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["154"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["155"] = Instance.new("TextLabel", G2L["153"]);
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
G2L["155"]["Text"] = [[<b>2.</b>]];
G2L["155"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton
G2L["156"] = Instance.new("TextButton", G2L["153"]);
G2L["156"]["BorderSizePixel"] = 0;
G2L["156"]["TextSize"] = 17;
G2L["156"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["156"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["156"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["156"]["BackgroundTransparency"] = 1;
G2L["156"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["156"]["Size"] = UDim2.new(0, 58, 0, 25);
G2L["156"]["LayoutOrder"] = 1;
G2L["156"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["156"]["Text"] = [[Copy link]];
G2L["156"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton.Value
G2L["157"] = Instance.new("StringValue", G2L["156"]);
G2L["157"]["Value"] = [[https://imluri.github.io/iyai]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["158"] = Instance.new("TextLabel", G2L["153"]);
G2L["158"]["BorderSizePixel"] = 0;
G2L["158"]["TextSize"] = 17;
G2L["158"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["158"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["158"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["BackgroundTransparency"] = 1;
G2L["158"]["RichText"] = true;
G2L["158"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["158"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["158"]["Text"] = [[and paste into your browser]];
G2L["158"]["LayoutOrder"] = 2;
G2L["158"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton
G2L["159"] = Instance.new("TextButton", G2L["12b"]);
G2L["159"]["BorderSizePixel"] = 0;
G2L["159"]["TextSize"] = 23;
G2L["159"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["159"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["159"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["159"]["BackgroundTransparency"] = 0.95;
G2L["159"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["159"]["LayoutOrder"] = 1;
G2L["159"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["159"]["Text"] = [[Open Logs]];
G2L["159"]["Name"] = [[OpenBrowserLogsButton]];
G2L["159"]["Position"] = UDim2.new(0, 0, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton.UICorner
G2L["15a"] = Instance.new("UICorner", G2L["159"]);
G2L["15a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton
G2L["15b"] = Instance.new("TextButton", G2L["12b"]);
G2L["15b"]["BorderSizePixel"] = 0;
G2L["15b"]["TextSize"] = 23;
G2L["15b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15b"]["BackgroundTransparency"] = 0.95;
G2L["15b"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["15b"]["LayoutOrder"] = 1;
G2L["15b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15b"]["Text"] = [[Force Refresh]];
G2L["15b"]["Name"] = [[ForceRefreshButton]];
G2L["15b"]["Position"] = UDim2.new(0, 0, 1, -65);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton.UICorner
G2L["15c"] = Instance.new("UICorner", G2L["15b"]);
G2L["15c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage
G2L["15d"] = Instance.new("Frame", G2L["5"]);
G2L["15d"]["Visible"] = false;
G2L["15d"]["BorderSizePixel"] = 0;
G2L["15d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15d"]["Name"] = [[SkillsPage]];
G2L["15d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat
G2L["15e"] = Instance.new("ScrollingFrame", G2L["15d"]);
G2L["15e"]["Active"] = true;
G2L["15e"]["BorderSizePixel"] = 0;
G2L["15e"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["15e"]["Name"] = [[ScrollingFrameMainChat]];
G2L["15e"]["ScrollBarImageTransparency"] = 0.85;
G2L["15e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15e"]["ScrollBarThickness"] = 5;
G2L["15e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIListLayout
G2L["15f"] = Instance.new("UIListLayout", G2L["15e"]);
G2L["15f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIPadding
G2L["160"] = Instance.new("UIPadding", G2L["15e"]);
G2L["160"]["PaddingTop"] = UDim.new(0, 5);
G2L["160"]["PaddingRight"] = UDim.new(0, 5);
G2L["160"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate
G2L["161"] = Instance.new("Folder", G2L["15e"]);
G2L["161"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["162"] = Instance.new("Frame", G2L["161"]);
G2L["162"]["Visible"] = false;
G2L["162"]["BorderSizePixel"] = 0;
G2L["162"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["162"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["162"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["162"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["162"]["Name"] = [[GroupFrame]];
G2L["162"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["163"] = Instance.new("UIPadding", G2L["162"]);
G2L["163"]["PaddingTop"] = UDim.new(0, 5);
G2L["163"]["PaddingRight"] = UDim.new(0, 5);
G2L["163"]["PaddingLeft"] = UDim.new(0, 5);
G2L["163"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["164"] = Instance.new("Frame", G2L["162"]);
G2L["164"]["BorderSizePixel"] = 0;
G2L["164"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["164"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["164"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["164"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["164"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["165"] = Instance.new("UICorner", G2L["164"]);
G2L["165"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["166"] = Instance.new("UIPadding", G2L["164"]);
G2L["166"]["PaddingTop"] = UDim.new(0, 10);
G2L["166"]["PaddingRight"] = UDim.new(0, 10);
G2L["166"]["PaddingLeft"] = UDim.new(0, 10);
G2L["166"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["167"] = Instance.new("Frame", G2L["164"]);
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["167"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Name"] = [[Left]];
G2L["167"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["168"] = Instance.new("UIListLayout", G2L["167"]);
G2L["168"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.DescriptionLabel
G2L["169"] = Instance.new("TextLabel", G2L["167"]);
G2L["169"]["TextWrapped"] = true;
G2L["169"]["BorderSizePixel"] = 0;
G2L["169"]["TextSize"] = 15;
G2L["169"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["169"]["TextTransparency"] = 0.5;
G2L["169"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["169"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["169"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["169"]["BackgroundTransparency"] = 1;
G2L["169"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["169"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["169"]["Text"] = [[Description]];
G2L["169"]["LayoutOrder"] = 1;
G2L["169"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["169"]["Name"] = [[DescriptionLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["16a"] = Instance.new("Frame", G2L["167"]);
G2L["16a"]["BorderSizePixel"] = 0;
G2L["16a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16a"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["16a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16a"]["Name"] = [[TopRowFrame]];
G2L["16a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.SkillLabel
G2L["16b"] = Instance.new("TextLabel", G2L["16a"]);
G2L["16b"]["TextWrapped"] = true;
G2L["16b"]["BorderSizePixel"] = 0;
G2L["16b"]["TextSize"] = 15;
G2L["16b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["16b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["16b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["BackgroundTransparency"] = 1;
G2L["16b"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["16b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16b"]["Text"] = [[Skill]];
G2L["16b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["16b"]["Name"] = [[SkillLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["16c"] = Instance.new("UIListLayout", G2L["16a"]);
G2L["16c"]["Padding"] = UDim.new(0, 5);
G2L["16c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["16d"] = Instance.new("Frame", G2L["164"]);
G2L["16d"]["BorderSizePixel"] = 0;
G2L["16d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["16d"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["16d"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["16d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16d"]["Name"] = [[Right]];
G2L["16d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["16e"] = Instance.new("UIGridLayout", G2L["16d"]);
G2L["16e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["16e"]["CellSize"] = UDim2.new(0, 40, 0, 40);
G2L["16e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer
G2L["16f"] = Instance.new("Frame", G2L["16d"]);
G2L["16f"]["BorderSizePixel"] = 0;
G2L["16f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16f"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["16f"]["Position"] = UDim2.new(0.5, -50, 0, 0);
G2L["16f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16f"]["Name"] = [[ToggleContainer]];
G2L["16f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG
G2L["170"] = Instance.new("Frame", G2L["16f"]);
G2L["170"]["BorderSizePixel"] = 0;
G2L["170"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["170"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["170"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["170"]["Name"] = [[BG]];
G2L["170"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.UICorner
G2L["171"] = Instance.new("UICorner", G2L["170"]);
G2L["171"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button
G2L["172"] = Instance.new("TextButton", G2L["170"]);
G2L["172"]["BorderSizePixel"] = 0;
G2L["172"]["TextSize"] = 14;
G2L["172"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["172"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["172"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["172"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["172"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["172"]["Text"] = [[]];
G2L["172"]["Name"] = [[Button]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button.UICorner
G2L["173"] = Instance.new("UICorner", G2L["172"]);
G2L["173"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.TotalElements
G2L["174"] = Instance.new("IntValue", G2L["15e"]);
G2L["174"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip
G2L["175"] = Instance.new("TextLabel", G2L["15e"]);
G2L["175"]["TextWrapped"] = true;
G2L["175"]["BorderSizePixel"] = 0;
G2L["175"]["TextSize"] = 20;
G2L["175"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["175"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["BackgroundTransparency"] = 1;
G2L["175"]["RichText"] = true;
G2L["175"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["175"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["175"]["Text"] = [[The AI references these guides when handling complex tasks.<br />Add your own to extend its knowledge.]];
G2L["175"]["LayoutOrder"] = -2;
G2L["175"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["175"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["176"] = Instance.new("UIPadding", G2L["175"]);
G2L["176"]["PaddingTop"] = UDim.new(0, 5);
G2L["176"]["PaddingRight"] = UDim.new(0, 15);
G2L["176"]["PaddingLeft"] = UDim.new(0, 15);
G2L["176"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame
G2L["177"] = Instance.new("Frame", G2L["15e"]);
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["LayoutOrder"] = -1;
G2L["177"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshButton
G2L["178"] = Instance.new("ImageButton", G2L["177"]);
G2L["178"]["BorderSizePixel"] = 0;
G2L["178"]["BackgroundTransparency"] = 1;
G2L["178"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["178"]["Image"] = [[rbxassetid://74363941121004]];
G2L["178"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["178"]["LayoutOrder"] = -1;
G2L["178"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["178"]["Name"] = [[RefreshButton]];
G2L["178"]["Rotation"] = -180;
G2L["178"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.UIPadding
G2L["179"] = Instance.new("UIPadding", G2L["177"]);
G2L["179"]["PaddingTop"] = UDim.new(0, 5);
G2L["179"]["PaddingRight"] = UDim.new(0, 5);
G2L["179"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshText
G2L["17a"] = Instance.new("TextLabel", G2L["177"]);
G2L["17a"]["BorderSizePixel"] = 0;
G2L["17a"]["TextSize"] = 14;
G2L["17a"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["17a"]["TextTransparency"] = 0.5;
G2L["17a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["17a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["BackgroundTransparency"] = 1;
G2L["17a"]["Size"] = UDim2.new(1, -25, 1, 0);
G2L["17a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17a"]["Text"] = [[Refreshed]];
G2L["17a"]["Name"] = [[RefreshText]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["17b"] = Instance.new("Frame", G2L["4"]);
G2L["17b"]["BorderSizePixel"] = 0;
G2L["17b"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["17b"]["ClipsDescendants"] = true;
G2L["17b"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["17b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17b"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame
G2L["17c"] = Instance.new("ScrollingFrame", G2L["17b"]);
G2L["17c"]["Active"] = true;
G2L["17c"]["BorderSizePixel"] = 0;
G2L["17c"]["CanvasSize"] = UDim2.new(1, 0, 0, 400);
G2L["17c"]["ScrollBarImageTransparency"] = 1;
G2L["17c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17c"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.Highlight
G2L["17d"] = Instance.new("Frame", G2L["17c"]);
G2L["17d"]["BorderSizePixel"] = 0;
G2L["17d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17d"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["17d"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["17d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17d"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame
G2L["17e"] = Instance.new("Frame", G2L["17c"]);
G2L["17e"]["BorderSizePixel"] = 0;
G2L["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["Name"] = [[ContainerFrame]];
G2L["17e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIGridLayout
G2L["17f"] = Instance.new("UIGridLayout", G2L["17e"]);
G2L["17f"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["17f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.UIPadding
G2L["180"] = Instance.new("UIPadding", G2L["17e"]);
G2L["180"]["PaddingTop"] = UDim.new(0, 30);
G2L["180"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame
G2L["181"] = Instance.new("Frame", G2L["17e"]);
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["Name"] = [[AgentButtonFrame]];
G2L["181"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.ImageLabel
G2L["182"] = Instance.new("ImageLabel", G2L["181"]);
G2L["182"]["BorderSizePixel"] = 0;
G2L["182"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["182"]["Image"] = [[rbxassetid://97622965928648]];
G2L["182"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["182"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["182"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.TextLabel
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
G2L["183"]["Text"] = [[Agent]];
G2L["183"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.AgentButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame
G2L["185"] = Instance.new("Frame", G2L["17e"]);
G2L["185"]["BorderSizePixel"] = 0;
G2L["185"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["185"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["185"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["185"]["Name"] = [[BrowserButtonFrame]];
G2L["185"]["LayoutOrder"] = 10;
G2L["185"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.ImageLabel
G2L["186"] = Instance.new("ImageLabel", G2L["185"]);
G2L["186"]["BorderSizePixel"] = 0;
G2L["186"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["Image"] = [[rbxassetid://90807079339617]];
G2L["186"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["186"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["186"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.TextLabel
G2L["187"] = Instance.new("TextLabel", G2L["185"]);
G2L["187"]["BorderSizePixel"] = 0;
G2L["187"]["TextSize"] = 17;
G2L["187"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["187"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["187"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["187"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["187"]["BackgroundTransparency"] = 1;
G2L["187"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["187"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["Text"] = [[Browser]];
G2L["187"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.BrowserButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame
G2L["189"] = Instance.new("Frame", G2L["17e"]);
G2L["189"]["BorderSizePixel"] = 0;
G2L["189"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["189"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["189"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["Name"] = [[CodeButtonFrame]];
G2L["189"]["LayoutOrder"] = 1;
G2L["189"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.TextLabel
G2L["18a"] = Instance.new("TextLabel", G2L["189"]);
G2L["18a"]["BorderSizePixel"] = 0;
G2L["18a"]["TextSize"] = 17;
G2L["18a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["BackgroundTransparency"] = 1;
G2L["18a"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["18a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18a"]["Text"] = [[Code]];
G2L["18a"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.ImageLabel
G2L["18b"] = Instance.new("ImageLabel", G2L["189"]);
G2L["18b"]["BorderSizePixel"] = 0;
G2L["18b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18b"]["Image"] = [[rbxassetid://102596836544188]];
G2L["18b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.CodeButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame
G2L["18d"] = Instance.new("Frame", G2L["17e"]);
G2L["18d"]["BorderSizePixel"] = 0;
G2L["18d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["Name"] = [[HistoryButtonFrame]];
G2L["18d"]["LayoutOrder"] = 2;
G2L["18d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.ImageLabel
G2L["18e"] = Instance.new("ImageLabel", G2L["18d"]);
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["Image"] = [[rbxassetid://70487508311290]];
G2L["18e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.TextLabel
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
G2L["18f"]["Text"] = [[History]];
G2L["18f"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.HistoryButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame
G2L["191"] = Instance.new("Frame", G2L["17e"]);
G2L["191"]["BorderSizePixel"] = 0;
G2L["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["191"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["191"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["Name"] = [[SettingsButtonFrame]];
G2L["191"]["LayoutOrder"] = 999;
G2L["191"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.ImageLabel
G2L["192"] = Instance.new("ImageLabel", G2L["191"]);
G2L["192"]["BorderSizePixel"] = 0;
G2L["192"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["192"]["Image"] = [[rbxassetid://98245295559168]];
G2L["192"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["192"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["192"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.TextLabel
G2L["193"] = Instance.new("TextLabel", G2L["191"]);
G2L["193"]["BorderSizePixel"] = 0;
G2L["193"]["TextSize"] = 17;
G2L["193"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["193"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["BackgroundTransparency"] = 1;
G2L["193"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["193"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["Text"] = [[Settings]];
G2L["193"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SettingsButtonFrame.Hitbox
G2L["194"] = Instance.new("TextButton", G2L["191"]);
G2L["194"]["BorderSizePixel"] = 0;
G2L["194"]["TextTransparency"] = 1;
G2L["194"]["TextSize"] = 14;
G2L["194"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["194"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["194"]["ZIndex"] = 999;
G2L["194"]["BackgroundTransparency"] = 1;
G2L["194"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["194"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["194"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame
G2L["195"] = Instance.new("Frame", G2L["17e"]);
G2L["195"]["BorderSizePixel"] = 0;
G2L["195"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["195"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["195"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["195"]["Name"] = [[SkillsButtonFrame]];
G2L["195"]["LayoutOrder"] = 5;
G2L["195"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.Hitbox
G2L["196"] = Instance.new("TextButton", G2L["195"]);
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["TextTransparency"] = 1;
G2L["196"]["TextSize"] = 14;
G2L["196"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["196"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["196"]["ZIndex"] = 999;
G2L["196"]["BackgroundTransparency"] = 1;
G2L["196"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["196"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.ImageLabel
G2L["197"] = Instance.new("ImageLabel", G2L["195"]);
G2L["197"]["BorderSizePixel"] = 0;
G2L["197"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["197"]["Image"] = [[rbxassetid://119927491521709]];
G2L["197"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["197"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["197"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.SkillsButtonFrame.TextLabel
G2L["198"] = Instance.new("TextLabel", G2L["195"]);
G2L["198"]["BorderSizePixel"] = 0;
G2L["198"]["TextSize"] = 17;
G2L["198"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["198"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["198"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["198"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["198"]["BackgroundTransparency"] = 1;
G2L["198"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["198"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["198"]["Text"] = [[Skills]];
G2L["198"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame
G2L["199"] = Instance.new("Frame", G2L["17e"]);
G2L["199"]["BorderSizePixel"] = 0;
G2L["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["199"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["Name"] = [[StartupButtonFrame]];
G2L["199"]["LayoutOrder"] = 4;
G2L["199"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.ImageLabel
G2L["19a"] = Instance.new("ImageLabel", G2L["199"]);
G2L["19a"]["BorderSizePixel"] = 0;
G2L["19a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19a"]["Image"] = [[rbxassetid://136122222813963]];
G2L["19a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.TextLabel
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
G2L["19b"]["Text"] = [[Startup]];
G2L["19b"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.StartupButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame
G2L["19d"] = Instance.new("Frame", G2L["17e"]);
G2L["19d"]["BorderSizePixel"] = 0;
G2L["19d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["19d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["Name"] = [[ToolsButtonFrame]];
G2L["19d"]["LayoutOrder"] = 3;
G2L["19d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.ImageLabel
G2L["19e"] = Instance.new("ImageLabel", G2L["19d"]);
G2L["19e"]["BorderSizePixel"] = 0;
G2L["19e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["Image"] = [[rbxassetid://70572480663906]];
G2L["19e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.TextLabel
G2L["19f"] = Instance.new("TextLabel", G2L["19d"]);
G2L["19f"]["BorderSizePixel"] = 0;
G2L["19f"]["TextSize"] = 17;
G2L["19f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["BackgroundTransparency"] = 1;
G2L["19f"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["19f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19f"]["Text"] = [[Tools]];
G2L["19f"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ScrollingFrame.ContainerFrame.ToolsButtonFrame.Hitbox
G2L["1a0"] = Instance.new("TextButton", G2L["19d"]);
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["TextTransparency"] = 1;
G2L["1a0"]["TextSize"] = 14;
G2L["1a0"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a0"]["ZIndex"] = 999;
G2L["1a0"]["BackgroundTransparency"] = 1;
G2L["1a0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["1a1"] = Instance.new("TextLabel", G2L["4"]);
G2L["1a1"]["ZIndex"] = 2;
G2L["1a1"]["BorderSizePixel"] = 0;
G2L["1a1"]["TextSize"] = 14;
G2L["1a1"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1a1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["Text"] = [[IYAI]];
G2L["1a1"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["1a2"] = Instance.new("UIPadding", G2L["1a1"]);
G2L["1a2"]["PaddingRight"] = UDim.new(0, 5);
G2L["1a2"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["1a3"] = Instance.new("TextButton", G2L["1a1"]);
G2L["1a3"]["BorderSizePixel"] = 0;
G2L["1a3"]["TextSize"] = 14;
G2L["1a3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a3"]["ZIndex"] = 999;
G2L["1a3"]["BackgroundTransparency"] = 1;
G2L["1a3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["Text"] = [[X]];
G2L["1a3"]["Name"] = [[CloseButton]];
G2L["1a3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["1a4"] = Instance.new("TextLabel", G2L["1a1"]);
G2L["1a4"]["BorderSizePixel"] = 0;
G2L["1a4"]["TextSize"] = 11;
G2L["1a4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a4"]["TextTransparency"] = 0.5;
G2L["1a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a4"]["BackgroundTransparency"] = 1;
G2L["1a4"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a4"]["Visible"] = false;
G2L["1a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a4"]["Text"] = [[by @urluri]];
G2L["1a4"]["Name"] = [[AuthorLabel]];
G2L["1a4"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["1a5"] = Instance.new("TextLabel", G2L["1a1"]);
G2L["1a5"]["BorderSizePixel"] = 0;
G2L["1a5"]["TextSize"] = 11;
G2L["1a5"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1a5"]["TextTransparency"] = 0.5;
G2L["1a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["BackgroundTransparency"] = 1;
G2L["1a5"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a5"]["Text"] = [[v]];
G2L["1a5"]["Name"] = [[VersionLabel]];
G2L["1a5"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["1a6"] = Instance.new("TextButton", G2L["1a1"]);
G2L["1a6"]["BorderSizePixel"] = 0;
G2L["1a6"]["TextSize"] = 14;
G2L["1a6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a6"]["ZIndex"] = 999;
G2L["1a6"]["BackgroundTransparency"] = 1;
G2L["1a6"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a6"]["Text"] = [[—]];
G2L["1a6"]["Name"] = [[MinimizeButton]];
G2L["1a6"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.HashLabel
G2L["1a7"] = Instance.new("TextLabel", G2L["1a1"]);
G2L["1a7"]["BorderSizePixel"] = 0;
G2L["1a7"]["TextSize"] = 11;
G2L["1a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a7"]["TextTransparency"] = 0.5;
G2L["1a7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a7"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["1a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["Text"] = [[000000]];
G2L["1a7"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["1a7"]["Name"] = [[HashLabel]];
G2L["1a7"]["Position"] = UDim2.new(0, 0, 0.5, -7);


-- StarterGui.IYAI.IYAI.Frame.TopBar.HashLabel.UIPadding
G2L["1a8"] = Instance.new("UIPadding", G2L["1a7"]);
G2L["1a8"]["PaddingTop"] = UDim.new(0, 5);
G2L["1a8"]["PaddingRight"] = UDim.new(0, 5);
G2L["1a8"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1a8"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.TopBar.HashLabel.UICorner
G2L["1a9"] = Instance.new("UICorner", G2L["1a7"]);
G2L["1a9"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["1aa"] = Instance.new("Frame", G2L["4"]);
G2L["1aa"]["Visible"] = false;
G2L["1aa"]["ZIndex"] = 999;
G2L["1aa"]["BorderSizePixel"] = 0;
G2L["1aa"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Name"] = [[ModalFrame]];
G2L["1aa"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["1ab"] = Instance.new("UIPadding", G2L["1aa"]);
G2L["1ab"]["PaddingTop"] = UDim.new(0, 25);
G2L["1ab"]["PaddingRight"] = UDim.new(0, 25);
G2L["1ab"]["PaddingLeft"] = UDim.new(0, 25);
G2L["1ab"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["1ac"] = Instance.new("Frame", G2L["1aa"]);
G2L["1ac"]["BorderSizePixel"] = 0;
G2L["1ac"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1ac"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["1ad"] = Instance.new("UICorner", G2L["1ac"]);
G2L["1ad"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["1ae"] = Instance.new("TextButton", G2L["1ac"]);
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["TextSize"] = 14;
G2L["1ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ae"]["ZIndex"] = 999;
G2L["1ae"]["BackgroundTransparency"] = 1;
G2L["1ae"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ae"]["Text"] = [[X]];
G2L["1ae"]["Name"] = [[CloseButton]];
G2L["1ae"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["1af"] = Instance.new("Frame", G2L["1ac"]);
G2L["1af"]["Visible"] = false;
G2L["1af"]["BorderSizePixel"] = 0;
G2L["1af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1af"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1af"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1af"]["Name"] = [[SearchModelModal]];
G2L["1af"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["1b0"] = Instance.new("UIPadding", G2L["1af"]);
G2L["1b0"]["PaddingTop"] = UDim.new(0, 10);
G2L["1b0"]["PaddingRight"] = UDim.new(0, 10);
G2L["1b0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1b0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["1b1"] = Instance.new("TextBox", G2L["1af"]);
G2L["1b1"]["Name"] = [[SearchBox]];
G2L["1b1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b1"]["BorderSizePixel"] = 0;
G2L["1b1"]["TextSize"] = 14;
G2L["1b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b1"]["PlaceholderText"] = [[Search models...]];
G2L["1b1"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["1b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b1"]["Text"] = [[]];
G2L["1b1"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["1b2"] = Instance.new("UICorner", G2L["1b1"]);
G2L["1b2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["1b3"] = Instance.new("UIPadding", G2L["1b1"]);
G2L["1b3"]["PaddingTop"] = UDim.new(0, 10);
G2L["1b3"]["PaddingRight"] = UDim.new(0, 10);
G2L["1b3"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1b3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["1b4"] = Instance.new("ImageButton", G2L["1af"]);
G2L["1b4"]["BorderSizePixel"] = 0;
G2L["1b4"]["BackgroundTransparency"] = 1;
G2L["1b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b4"]["Image"] = [[rbxassetid://94907058451749]];
G2L["1b4"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b4"]["Name"] = [[SearchButton]];
G2L["1b4"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["1b5"] = Instance.new("ScrollingFrame", G2L["1af"]);
G2L["1b5"]["Active"] = true;
G2L["1b5"]["BorderSizePixel"] = 0;
G2L["1b5"]["ScrollBarImageTransparency"] = 0.9;
G2L["1b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b5"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["1b5"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["1b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["ScrollBarThickness"] = 6;
G2L["1b5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["1b6"] = Instance.new("TextButton", G2L["1b5"]);
G2L["1b6"]["BorderSizePixel"] = 0;
G2L["1b6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b6"]["TextSize"] = 14;
G2L["1b6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b6"]["BackgroundTransparency"] = 1;
G2L["1b6"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b6"]["Text"] = [[SomeModel]];
G2L["1b6"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["1b7"] = Instance.new("UIPadding", G2L["1b6"]);
G2L["1b7"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["1b8"] = Instance.new("UIGridLayout", G2L["1b5"]);
G2L["1b8"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["1b8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["1b9"] = Instance.new("Frame", G2L["1ac"]);
G2L["1b9"]["Visible"] = false;
G2L["1b9"]["BorderSizePixel"] = 0;
G2L["1b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1b9"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b9"]["Name"] = [[ToolResultViewModal]];
G2L["1b9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["1ba"] = Instance.new("UIPadding", G2L["1b9"]);
G2L["1ba"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ba"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ba"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ba"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame
G2L["1bb"] = Instance.new("ScrollingFrame", G2L["1b9"]);
G2L["1bb"]["Active"] = true;
G2L["1bb"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1bb"]["ScrollBarImageTransparency"] = 0.8;
G2L["1bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bb"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1bb"]["Size"] = UDim2.new(1, 0, 1, -5);
G2L["1bb"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bb"]["ScrollBarThickness"] = 4;
G2L["1bb"]["LayoutOrder"] = 1;
G2L["1bb"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UIPadding
G2L["1bc"] = Instance.new("UIPadding", G2L["1bb"]);
G2L["1bc"]["PaddingTop"] = UDim.new(0, 5);
G2L["1bc"]["PaddingRight"] = UDim.new(0, 5);
G2L["1bc"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UICorner
G2L["1bd"] = Instance.new("UICorner", G2L["1bb"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.TextBox
G2L["1be"] = Instance.new("TextBox", G2L["1bb"]);
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
G2L["1be"]["Text"] = [[Tool execution]];
G2L["1be"]["LayoutOrder"] = 1;
G2L["1be"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["1bf"] = Instance.new("TextLabel", G2L["1ac"]);
G2L["1bf"]["BorderSizePixel"] = 0;
G2L["1bf"]["TextSize"] = 17;
G2L["1bf"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bf"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1bf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bf"]["BackgroundTransparency"] = 1;
G2L["1bf"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bf"]["Name"] = [[TitleLabel]];
G2L["1bf"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["1c0"] = Instance.new("UIPadding", G2L["1bf"]);
G2L["1c0"]["PaddingTop"] = UDim.new(0, 10);
G2L["1c0"]["PaddingRight"] = UDim.new(0, 10);
G2L["1c0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1c0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["1c1"] = Instance.new("Frame", G2L["1ac"]);
G2L["1c1"]["Visible"] = false;
G2L["1c1"]["BorderSizePixel"] = 0;
G2L["1c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c1"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1c1"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c1"]["Name"] = [[SystemPromptModal]];
G2L["1c1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["1c2"] = Instance.new("UIPadding", G2L["1c1"]);
G2L["1c2"]["PaddingTop"] = UDim.new(0, 10);
G2L["1c2"]["PaddingRight"] = UDim.new(0, 10);
G2L["1c2"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1c2"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame
G2L["1c3"] = Instance.new("ScrollingFrame", G2L["1c1"]);
G2L["1c3"]["Active"] = true;
G2L["1c3"]["BorderSizePixel"] = 0;
G2L["1c3"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1c3"]["ScrollBarImageTransparency"] = 0.8;
G2L["1c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1c3"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1c3"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["ScrollBarThickness"] = 4;
G2L["1c3"]["LayoutOrder"] = 1;
G2L["1c3"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.TextBox
G2L["1c4"] = Instance.new("TextBox", G2L["1c3"]);
G2L["1c4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["TextEditable"] = false;
G2L["1c4"]["TextSize"] = 14;
G2L["1c4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c4"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1c4"]["MultiLine"] = true;
G2L["1c4"]["ClearTextOnFocus"] = false;
G2L["1c4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Text"] = [[Default system prompt]];
G2L["1c4"]["LayoutOrder"] = 1;
G2L["1c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UIPadding
G2L["1c5"] = Instance.new("UIPadding", G2L["1c3"]);
G2L["1c5"]["PaddingTop"] = UDim.new(0, 5);
G2L["1c5"]["PaddingRight"] = UDim.new(0, 5);
G2L["1c5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UICorner
G2L["1c6"] = Instance.new("UICorner", G2L["1c3"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["1c7"] = Instance.new("Frame", G2L["1c1"]);
G2L["1c7"]["BorderSizePixel"] = 0;
G2L["1c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1c7"]["Position"] = UDim2.new(0, 0, 1, -25);
G2L["1c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c7"]["Name"] = [[BottomContainer]];
G2L["1c7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["1c8"] = Instance.new("UIGridLayout", G2L["1c7"]);
G2L["1c8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1c8"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1c8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1c8"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["1c9"] = Instance.new("ImageButton", G2L["1c7"]);
G2L["1c9"]["BorderSizePixel"] = 0;
G2L["1c9"]["BackgroundTransparency"] = 1;
G2L["1c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c9"]["Image"] = [[rbxassetid://74363941121004]];
G2L["1c9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c9"]["Name"] = [[ResetButton]];
G2L["1c9"]["Rotation"] = -180;
G2L["1c9"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["1ca"] = Instance.new("ImageButton", G2L["1c7"]);
G2L["1ca"]["BorderSizePixel"] = 0;
G2L["1ca"]["BackgroundTransparency"] = 1;
G2L["1ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ca"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1ca"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1ca"]["LayoutOrder"] = 1;
G2L["1ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ca"]["Name"] = [[SaveButton]];
G2L["1ca"]["Rotation"] = -180;
G2L["1ca"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal
G2L["1cb"] = Instance.new("Frame", G2L["1ac"]);
G2L["1cb"]["Visible"] = false;
G2L["1cb"]["BorderSizePixel"] = 0;
G2L["1cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cb"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1cb"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cb"]["Name"] = [[BrowserLogsViewModal]];
G2L["1cb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.UIPadding
G2L["1cc"] = Instance.new("UIPadding", G2L["1cb"]);
G2L["1cc"]["PaddingTop"] = UDim.new(0, 10);
G2L["1cc"]["PaddingRight"] = UDim.new(0, 10);
G2L["1cc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1cc"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame
G2L["1cd"] = Instance.new("ScrollingFrame", G2L["1cb"]);
G2L["1cd"]["Active"] = true;
G2L["1cd"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1cd"]["ScrollBarImageTransparency"] = 0.8;
G2L["1cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1cd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1cd"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["ScrollBarThickness"] = 4;
G2L["1cd"]["LayoutOrder"] = 1;
G2L["1cd"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UIPadding
G2L["1ce"] = Instance.new("UIPadding", G2L["1cd"]);
G2L["1ce"]["PaddingTop"] = UDim.new(0, 5);
G2L["1ce"]["PaddingRight"] = UDim.new(0, 5);
G2L["1ce"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UICorner
G2L["1cf"] = Instance.new("UICorner", G2L["1cd"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.TextBox
G2L["1d0"] = Instance.new("TextBox", G2L["1cd"]);
G2L["1d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d0"]["BorderSizePixel"] = 0;
G2L["1d0"]["TextEditable"] = false;
G2L["1d0"]["TextSize"] = 14;
G2L["1d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d0"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1d0"]["MultiLine"] = true;
G2L["1d0"]["ClearTextOnFocus"] = false;
G2L["1d0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d0"]["Text"] = [[Browser logs]];
G2L["1d0"]["LayoutOrder"] = 1;
G2L["1d0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal
G2L["1d1"] = Instance.new("Frame", G2L["1ac"]);
G2L["1d1"]["Visible"] = false;
G2L["1d1"]["BorderSizePixel"] = 0;
G2L["1d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d1"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1d1"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d1"]["Name"] = [[SetMultiAPIKeyModal]];
G2L["1d1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.UIPadding
G2L["1d2"] = Instance.new("UIPadding", G2L["1d1"]);
G2L["1d2"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d2"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d2"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d2"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame
G2L["1d3"] = Instance.new("ScrollingFrame", G2L["1d1"]);
G2L["1d3"]["Active"] = true;
G2L["1d3"]["BorderSizePixel"] = 0;
G2L["1d3"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1d3"]["ScrollBarImageTransparency"] = 0.8;
G2L["1d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1d3"]["Size"] = UDim2.new(1, 0, 1, -60);
G2L["1d3"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1d3"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d3"]["ScrollBarThickness"] = 4;
G2L["1d3"]["LayoutOrder"] = 1;
G2L["1d3"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.TextBox
G2L["1d4"] = Instance.new("TextBox", G2L["1d3"]);
G2L["1d4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d4"]["BorderSizePixel"] = 0;
G2L["1d4"]["TextSize"] = 14;
G2L["1d4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d4"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1d4"]["MultiLine"] = true;
G2L["1d4"]["ClearTextOnFocus"] = false;
G2L["1d4"]["PlaceholderText"] = [[sk-...]];
G2L["1d4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d4"]["Text"] = [[]];
G2L["1d4"]["LayoutOrder"] = 1;
G2L["1d4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UIPadding
G2L["1d5"] = Instance.new("UIPadding", G2L["1d3"]);
G2L["1d5"]["PaddingTop"] = UDim.new(0, 5);
G2L["1d5"]["PaddingRight"] = UDim.new(0, 5);
G2L["1d5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UICorner
G2L["1d6"] = Instance.new("UICorner", G2L["1d3"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.NoteLabel
G2L["1d7"] = Instance.new("TextLabel", G2L["1d1"]);
G2L["1d7"]["TextWrapped"] = true;
G2L["1d7"]["BorderSizePixel"] = 0;
G2L["1d7"]["TextSize"] = 17;
G2L["1d7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1d7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["BackgroundTransparency"] = 1;
G2L["1d7"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d7"]["Text"] = [[One key per line. Rotates to the next key on rate limit.]];
G2L["1d7"]["Name"] = [[NoteLabel]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer
G2L["1d8"] = Instance.new("Frame", G2L["1d1"]);
G2L["1d8"]["BorderSizePixel"] = 0;
G2L["1d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d8"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1d8"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d8"]["Name"] = [[BottomContainer]];
G2L["1d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.UIGridLayout
G2L["1d9"] = Instance.new("UIGridLayout", G2L["1d8"]);
G2L["1d9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d9"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1d9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d9"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.ClearButton
G2L["1da"] = Instance.new("ImageButton", G2L["1d8"]);
G2L["1da"]["BorderSizePixel"] = 0;
G2L["1da"]["BackgroundTransparency"] = 1;
G2L["1da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1da"]["Image"] = [[rbxassetid://115957379627811]];
G2L["1da"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1da"]["Name"] = [[ClearButton]];
G2L["1da"]["Rotation"] = -180;
G2L["1da"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.SaveButton
G2L["1db"] = Instance.new("ImageButton", G2L["1d8"]);
G2L["1db"]["BorderSizePixel"] = 0;
G2L["1db"]["BackgroundTransparency"] = 1;
G2L["1db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1db"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1db"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1db"]["LayoutOrder"] = 1;
G2L["1db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1db"]["Name"] = [[SaveButton]];
G2L["1db"]["Rotation"] = -180;
G2L["1db"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal
G2L["1dc"] = Instance.new("Frame", G2L["1ac"]);
G2L["1dc"]["Visible"] = false;
G2L["1dc"]["BorderSizePixel"] = 0;
G2L["1dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dc"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1dc"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dc"]["Name"] = [[HostProviderModal]];
G2L["1dc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.UIPadding
G2L["1dd"] = Instance.new("UIPadding", G2L["1dc"]);
G2L["1dd"]["PaddingTop"] = UDim.new(0, 10);
G2L["1dd"]["PaddingRight"] = UDim.new(0, 10);
G2L["1dd"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1dd"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer
G2L["1de"] = Instance.new("Frame", G2L["1dc"]);
G2L["1de"]["BorderSizePixel"] = 0;
G2L["1de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1de"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1de"]["Name"] = [[MainContainer]];
G2L["1de"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame
G2L["1df"] = Instance.new("ScrollingFrame", G2L["1de"]);
G2L["1df"]["Active"] = true;
G2L["1df"]["BorderSizePixel"] = 0;
G2L["1df"]["ScrollBarImageTransparency"] = 0.9;
G2L["1df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1df"]["ScrollBarThickness"] = 6;
G2L["1df"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIGridLayout
G2L["1e0"] = Instance.new("UIGridLayout", G2L["1df"]);
G2L["1e0"]["CellSize"] = UDim2.new(0, 115, 0, 30);
G2L["1e0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton
G2L["1e1"] = Instance.new("TextButton", G2L["1df"]);
G2L["1e1"]["BorderSizePixel"] = 0;
G2L["1e1"]["TextSize"] = 14;
G2L["1e1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e1"]["BackgroundTransparency"] = 0.95;
G2L["1e1"]["Size"] = UDim2.new(0, 110, 1, 0);
G2L["1e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e1"]["Text"] = [[]];
G2L["1e1"]["Name"] = [[TemplateButton]];
G2L["1e1"]["Visible"] = false;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UICorner
G2L["1e2"] = Instance.new("UICorner", G2L["1e1"]);
G2L["1e2"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.ImageLabel
G2L["1e3"] = Instance.new("ImageLabel", G2L["1e1"]);
G2L["1e3"]["BorderSizePixel"] = 0;
G2L["1e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e3"]["Image"] = [[rbxassetid://88246357492813]];
G2L["1e3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.UIPadding
G2L["1e4"] = Instance.new("UIPadding", G2L["1e1"]);
G2L["1e4"]["PaddingTop"] = UDim.new(0, 5);
G2L["1e4"]["PaddingRight"] = UDim.new(0, 5);
G2L["1e4"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1e4"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.TemplateButton.TextLabel
G2L["1e5"] = Instance.new("TextLabel", G2L["1e1"]);
G2L["1e5"]["BorderSizePixel"] = 0;
G2L["1e5"]["TextSize"] = 14;
G2L["1e5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["BackgroundTransparency"] = 1;
G2L["1e5"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e5"]["Text"] = [[OpenRouter]];
G2L["1e5"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.HostProviderModal.MainContainer.ScrollingFrame.UIPadding
G2L["1e6"] = Instance.new("UIPadding", G2L["1df"]);
G2L["1e6"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame
G2L["1e7"] = Instance.new("CanvasGroup", G2L["1aa"]);
G2L["1e7"]["Visible"] = false;
G2L["1e7"]["BorderSizePixel"] = 0;
G2L["1e7"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1e7"]["Size"] = UDim2.new(0, 250, 0, 125);
G2L["1e7"]["Position"] = UDim2.new(0.5, -125, 0.5, -62);
G2L["1e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Name"] = [[ConfirmationFrame]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.UICorner
G2L["1e8"] = Instance.new("UICorner", G2L["1e7"]);
G2L["1e8"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame
G2L["1e9"] = Instance.new("Frame", G2L["1e7"]);
G2L["1e9"]["BorderSizePixel"] = 0;
G2L["1e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e9"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1e9"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["1e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e9"]["Name"] = [[ButtonsContainerFrame]];
G2L["1e9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.UIGridLayout
G2L["1ea"] = Instance.new("UIGridLayout", G2L["1e9"]);
G2L["1ea"]["CellSize"] = UDim2.new(0.5, 0, 1, 0);
G2L["1ea"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1ea"]["CellPadding"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.YesButton
G2L["1eb"] = Instance.new("TextButton", G2L["1e9"]);
G2L["1eb"]["BorderSizePixel"] = 0;
G2L["1eb"]["TextSize"] = 14;
G2L["1eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1eb"]["BackgroundTransparency"] = 0.9;
G2L["1eb"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1eb"]["Text"] = [[Yes]];
G2L["1eb"]["Name"] = [[YesButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.NoButton
G2L["1ec"] = Instance.new("TextButton", G2L["1e9"]);
G2L["1ec"]["BorderSizePixel"] = 0;
G2L["1ec"]["TextSize"] = 14;
G2L["1ec"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ec"]["BackgroundTransparency"] = 0.9;
G2L["1ec"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ec"]["Text"] = [[No]];
G2L["1ec"]["Name"] = [[NoButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel
G2L["1ed"] = Instance.new("TextLabel", G2L["1e7"]);
G2L["1ed"]["TextWrapped"] = true;
G2L["1ed"]["BorderSizePixel"] = 0;
G2L["1ed"]["TextSize"] = 17;
G2L["1ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ed"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ed"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ed"]["BackgroundTransparency"] = 1;
G2L["1ed"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["1ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ed"]["Text"] = [[Are you sure?]];
G2L["1ed"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel.UIPadding
G2L["1ee"] = Instance.new("UIPadding", G2L["1ed"]);
G2L["1ee"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ee"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ee"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ee"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["1ef"] = Instance.new("CanvasGroup", G2L["2"]);
G2L["1ef"]["Visible"] = false;
G2L["1ef"]["GroupTransparency"] = 1;
G2L["1ef"]["ZIndex"] = 999;
G2L["1ef"]["BorderSizePixel"] = 0;
G2L["1ef"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1ef"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ef"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["1f0"] = Instance.new("ImageLabel", G2L["1ef"]);
G2L["1f0"]["BorderSizePixel"] = 0;
G2L["1f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f0"]["Image"] = [[rbxassetid://115810237733262]];
G2L["1f0"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["1f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f0"]["BackgroundTransparency"] = 1;
G2L["1f0"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["1f1"] = Instance.new("TextLabel", G2L["1f0"]);
G2L["1f1"]["BorderSizePixel"] = 0;
G2L["1f1"]["TextSize"] = 35;
G2L["1f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["BackgroundTransparency"] = 1;
G2L["1f1"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["1f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f1"]["Text"] = [[Artificial Intelligence]];
G2L["1f1"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI.ResizeLabel
G2L["1f2"] = Instance.new("ImageLabel", G2L["2"]);
G2L["1f2"]["ZIndex"] = 9999;
G2L["1f2"]["BorderSizePixel"] = 0;
G2L["1f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f2"]["Image"] = [[rbxassetid://128099302268852]];
G2L["1f2"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f2"]["BackgroundTransparency"] = 1;
G2L["1f2"]["Rotation"] = -90;
G2L["1f2"]["Name"] = [[ResizeLabel]];
G2L["1f2"]["Position"] = UDim2.new(1, -25, 1, -25);


-- StarterGui.IYAI.IYAI Toast Container
G2L["1f3"] = Instance.new("Frame", G2L["1"]);
G2L["1f3"]["BorderSizePixel"] = 0;
G2L["1f3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f3"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["1f3"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["1f3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f3"]["Name"] = [[IYAI Toast Container]];
G2L["1f3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["1f4"] = Instance.new("CanvasGroup", G2L["1f3"]);
G2L["1f4"]["BorderSizePixel"] = 0;
G2L["1f4"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1f4"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["1f4"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["1f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f4"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["1f5"] = Instance.new("UICorner", G2L["1f4"]);
G2L["1f5"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["1f6"] = Instance.new("Frame", G2L["1f4"]);
G2L["1f6"]["BorderSizePixel"] = 0;
G2L["1f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f6"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["1f6"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["1f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f6"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["1f7"] = Instance.new("TextLabel", G2L["1f4"]);
G2L["1f7"]["ZIndex"] = 2;
G2L["1f7"]["BorderSizePixel"] = 0;
G2L["1f7"]["TextSize"] = 14;
G2L["1f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f7"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1f7"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f7"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f7"]["Text"] = [[Toast Title]];
G2L["1f7"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["1f8"] = Instance.new("UIPadding", G2L["1f7"]);
G2L["1f8"]["PaddingRight"] = UDim.new(0, 5);
G2L["1f8"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["1f9"] = Instance.new("TextButton", G2L["1f7"]);
G2L["1f9"]["BorderSizePixel"] = 0;
G2L["1f9"]["TextSize"] = 14;
G2L["1f9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f9"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f9"]["BackgroundTransparency"] = 1;
G2L["1f9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f9"]["Text"] = [[X]];
G2L["1f9"]["Name"] = [[CloseButton]];
G2L["1f9"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["1fa"] = Instance.new("UICorner", G2L["1f9"]);
G2L["1fa"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["1fb"] = Instance.new("TextLabel", G2L["1f4"]);
G2L["1fb"]["TextWrapped"] = true;
G2L["1fb"]["BorderSizePixel"] = 0;
G2L["1fb"]["TextSize"] = 14;
G2L["1fb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1fb"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fb"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1fb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fb"]["BackgroundTransparency"] = 1;
G2L["1fb"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fb"]["Name"] = [[ToastDesc]];
G2L["1fb"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["1fc"] = Instance.new("UIPadding", G2L["1fb"]);
G2L["1fc"]["PaddingTop"] = UDim.new(0, 5);
G2L["1fc"]["PaddingRight"] = UDim.new(0, 10);
G2L["1fc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1fc"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["1fd"] = Instance.new("Frame", G2L["1f4"]);
G2L["1fd"]["ZIndex"] = 999;
G2L["1fd"]["BorderSizePixel"] = 0;
G2L["1fd"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["1fd"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1fd"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["1fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fd"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["1fe"] = Instance.new("UICorner", G2L["1fd"]);
G2L["1fe"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["1ff"] = Instance.new("UIPadding", G2L["1f3"]);
G2L["1ff"]["PaddingTop"] = UDim.new(0, 15);
G2L["1ff"]["PaddingRight"] = UDim.new(0, 15);
G2L["1ff"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1ff"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["200"] = Instance.new("StringValue", G2L["1"]);
G2L["200"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["201"] = Instance.new("StringValue", G2L["1"]);
G2L["201"]["Name"] = [[Version]];
G2L["201"]["Value"] = [[1.1.0]];

return G2L
