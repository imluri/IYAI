--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 218 | Scripts: 2 | Modules: 10 | Tags: 0
local G2L = {};

-- StarterGui.IYAI
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[IYAI]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"].ResetOnSpawn = false


-- StarterGui.IYAI.Main
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[Main]];


-- StarterGui.IYAI.Main.HttpModule
G2L["3"] = Instance.new("ModuleScript", G2L["2"]);
G2L["3"]["Name"] = [[HttpModule]];


-- StarterGui.IYAI.Main.ConfigModule
G2L["4"] = Instance.new("ModuleScript", G2L["2"]);
G2L["4"]["Name"] = [[ConfigModule]];


-- StarterGui.IYAI.Main.ToastModule
G2L["5"] = Instance.new("ModuleScript", G2L["2"]);
G2L["5"]["Name"] = [[ToastModule]];


-- StarterGui.IYAI.Main.ToolsModule
G2L["6"] = Instance.new("ModuleScript", G2L["2"]);
G2L["6"]["Name"] = [[ToolsModule]];


-- StarterGui.IYAI.Main.ToolsModule.ScriptTool
G2L["7"] = Instance.new("ModuleScript", G2L["6"]);
G2L["7"]["Name"] = [[ScriptTool]];


-- StarterGui.IYAI.Main.ToolsModule.ExplorerTool
G2L["8"] = Instance.new("ModuleScript", G2L["6"]);
G2L["8"]["Name"] = [[ExplorerTool]];


-- StarterGui.IYAI.Main.ToolsModule.IYTool
G2L["9"] = Instance.new("ModuleScript", G2L["6"]);
G2L["9"]["Name"] = [[IYTool]];


-- StarterGui.IYAI.Main.ToolsModule.WebTool
G2L["a"] = Instance.new("ModuleScript", G2L["6"]);
G2L["a"]["Name"] = [[WebTool]];


-- StarterGui.IYAI.Main.PromptModule
G2L["b"] = Instance.new("ModuleScript", G2L["2"]);
G2L["b"]["Name"] = [[PromptModule]];


-- StarterGui.IYAI.Main.PropertiesModule
G2L["c"] = Instance.new("ModuleScript", G2L["2"]);
G2L["c"]["Name"] = [[PropertiesModule]];


-- StarterGui.IYAI.Drag
G2L["d"] = Instance.new("LocalScript", G2L["1"]);
G2L["d"]["Name"] = [[Drag]];


-- StarterGui.IYAI.IYAI
G2L["e"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["e"]["Size"] = UDim2.new(0, 600, 0, 400);
G2L["e"]["Position"] = UDim2.new(0.5, -300, 0.5, -200);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[IYAI]];


-- StarterGui.IYAI.IYAI.UICorner
G2L["f"] = Instance.new("UICorner", G2L["e"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame
G2L["10"] = Instance.new("Frame", G2L["e"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages
G2L["11"] = Instance.new("Frame", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(0, 555, 0, 375);
G2L["11"]["Position"] = UDim2.new(0.825, -450, 1, -375);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[ContentPages]];
G2L["11"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage
G2L["12"] = Instance.new("Frame", G2L["11"]);
G2L["12"]["Visible"] = false;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[AgentPage]];
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat
G2L["13"] = Instance.new("ScrollingFrame", G2L["12"]);
G2L["13"]["Active"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["13"]["Name"] = [[ScrollingFrameMainChat]];
G2L["13"]["ScrollBarImageTransparency"] = 0.85;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(1, 0, 0, 340);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["ScrollBarThickness"] = 5;
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.UIListLayout
G2L["14"] = Instance.new("UIListLayout", G2L["13"]);
G2L["14"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["14"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.UIPadding
G2L["15"] = Instance.new("UIPadding", G2L["13"]);
G2L["15"]["PaddingTop"] = UDim.new(0, 5);
G2L["15"]["PaddingRight"] = UDim.new(0, 5);
G2L["15"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate
G2L["16"] = Instance.new("Folder", G2L["13"]);
G2L["16"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed)
G2L["17"] = Instance.new("Frame", G2L["16"]);
G2L["17"]["Visible"] = false;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["17"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[AgentTaskFrame (Tool failed)]];
G2L["17"]["LayoutOrder"] = 3;
G2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor
G2L["18"] = Instance.new("Frame", G2L["17"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["18"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["18"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).TextLabel
G2L["1a"] = Instance.new("TextLabel", G2L["17"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a"]["TextTransparency"] = 0.25;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[Tool failed]];
G2L["1a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1a"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).UIPadding
G2L["1b"] = Instance.new("UIPadding", G2L["17"]);
G2L["1b"]["PaddingTop"] = UDim.new(0, 5);
G2L["1b"]["PaddingRight"] = UDim.new(0, 15);
G2L["1b"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1b"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy)
G2L["1c"] = Instance.new("Frame", G2L["16"]);
G2L["1c"]["Visible"] = false;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[AgentTaskFrame (Tool busy)]];
G2L["1c"]["LayoutOrder"] = 3;
G2L["1c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor
G2L["1d"] = Instance.new("Frame", G2L["1c"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["1d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);
G2L["1e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).TextLabel
G2L["1f"] = Instance.new("TextLabel", G2L["1c"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["TextTransparency"] = 0.25;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Shimmering...]];
G2L["1f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).UIPadding
G2L["20"] = Instance.new("UIPadding", G2L["1c"]);
G2L["20"]["PaddingTop"] = UDim.new(0, 5);
G2L["20"]["PaddingRight"] = UDim.new(0, 15);
G2L["20"]["PaddingLeft"] = UDim.new(0, 15);
G2L["20"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN
G2L["21"] = Instance.new("TextLabel", G2L["16"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 14;
G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["21"]["TextTransparency"] = 0.5;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["21"]["Visible"] = false;
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Step 1]];
G2L["21"]["LayoutOrder"] = 1;
G2L["21"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["21"]["Name"] = [[StepN]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN.UIPadding
G2L["22"] = Instance.new("UIPadding", G2L["21"]);
G2L["22"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame
G2L["23"] = Instance.new("Frame", G2L["16"]);
G2L["23"]["Visible"] = false;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["23"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[UserMessageFrame]];
G2L["23"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.UIPadding
G2L["24"] = Instance.new("UIPadding", G2L["23"]);
G2L["24"]["PaddingTop"] = UDim.new(0, 5);
G2L["24"]["PaddingRight"] = UDim.new(0, 5);
G2L["24"]["PaddingLeft"] = UDim.new(0, 5);
G2L["24"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame
G2L["25"] = Instance.new("Frame", G2L["23"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage
G2L["26"] = Instance.new("TextLabel", G2L["25"]);
G2L["26"]["TextWrapped"] = true;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 15;
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[How many players are on the game?]];
G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["26"]["Name"] = [[UserMessage]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage.UIPadding
G2L["27"] = Instance.new("UIPadding", G2L["26"]);
G2L["27"]["PaddingTop"] = UDim.new(0, 10);
G2L["27"]["PaddingRight"] = UDim.new(0, 10);
G2L["27"]["PaddingLeft"] = UDim.new(0, 10);
G2L["27"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UICorner
G2L["28"] = Instance.new("UICorner", G2L["25"]);
G2L["28"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking
G2L["29"] = Instance.new("TextLabel", G2L["16"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 14;
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["TextTransparency"] = 0.5;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["29"]["Visible"] = false;
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[]];
G2L["29"]["LayoutOrder"] = 4;
G2L["29"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["29"]["Name"] = [[AssistantThinking]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking.UIPadding
G2L["2a"] = Instance.new("UIPadding", G2L["29"]);
G2L["2a"]["PaddingTop"] = UDim.new(0, 5);
G2L["2a"]["PaddingRight"] = UDim.new(0, 15);
G2L["2a"]["PaddingLeft"] = UDim.new(0, 15);
G2L["2a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame
G2L["2b"] = Instance.new("Frame", G2L["16"]);
G2L["2b"]["Visible"] = false;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Name"] = [[CodeStatusFrame]];
G2L["2b"]["LayoutOrder"] = 3;
G2L["2b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor
G2L["2c"] = Instance.new("Frame", G2L["2b"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["2c"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["2c"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.TextLabel
G2L["2e"] = Instance.new("TextLabel", G2L["2b"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["TextTransparency"] = 0.25;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["RichText"] = true;
G2L["2e"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Agent is writing code...]];
G2L["2e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2e"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2b"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 5);
G2L["2f"]["PaddingRight"] = UDim.new(0, 15);
G2L["2f"]["PaddingLeft"] = UDim.new(0, 15);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded)
G2L["30"] = Instance.new("Frame", G2L["16"]);
G2L["30"]["Visible"] = false;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[AgentTaskFrame (Tool succeeded)]];
G2L["30"]["LayoutOrder"] = 2;
G2L["30"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor
G2L["31"] = Instance.new("Frame", G2L["30"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["31"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["31"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor.UICorner
G2L["32"] = Instance.new("UICorner", G2L["31"]);
G2L["32"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).TextLabel
G2L["33"] = Instance.new("TextLabel", G2L["30"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextSize"] = 14;
G2L["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["33"]["TextTransparency"] = 0.25;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[Tool succeeded]];
G2L["33"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["33"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).UIPadding
G2L["34"] = Instance.new("UIPadding", G2L["30"]);
G2L["34"]["PaddingTop"] = UDim.new(0, 5);
G2L["34"]["PaddingRight"] = UDim.new(0, 15);
G2L["34"]["PaddingLeft"] = UDim.new(0, 15);
G2L["34"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame
G2L["35"] = Instance.new("Frame", G2L["16"]);
G2L["35"]["Visible"] = false;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["35"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[PostActionFrame]];
G2L["35"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton
G2L["36"] = Instance.new("TextButton", G2L["35"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextSize"] = 14;
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["BackgroundTransparency"] = 0.9;
G2L["36"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[Open Code Page]];
G2L["36"]["Name"] = [[PostActionButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.UIPadding
G2L["38"] = Instance.new("UIPadding", G2L["35"]);
G2L["38"]["PaddingTop"] = UDim.new(0, 5);
G2L["38"]["PaddingRight"] = UDim.new(0, 10);
G2L["38"]["PaddingLeft"] = UDim.new(0, 10);
G2L["38"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText
G2L["39"] = Instance.new("TextLabel", G2L["16"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["TextTransparency"] = 0.5;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["39"]["Visible"] = false;
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[Aborted.]];
G2L["39"]["LayoutOrder"] = 4;
G2L["39"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["39"]["Name"] = [[AbortText]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText.UIPadding
G2L["3a"] = Instance.new("UIPadding", G2L["39"]);
G2L["3a"]["PaddingTop"] = UDim.new(0, 5);
G2L["3a"]["PaddingRight"] = UDim.new(0, 15);
G2L["3a"]["PaddingLeft"] = UDim.new(0, 15);
G2L["3a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse
G2L["3b"] = Instance.new("TextLabel", G2L["16"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3b"]["Visible"] = false;
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];
G2L["3b"]["LayoutOrder"] = 4;
G2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3b"]["Name"] = [[AssistantResponse]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.UIPadding
G2L["3c"] = Instance.new("UIPadding", G2L["3b"]);
G2L["3c"]["PaddingTop"] = UDim.new(0, 5);
G2L["3c"]["PaddingRight"] = UDim.new(0, 15);
G2L["3c"]["PaddingLeft"] = UDim.new(0, 15);
G2L["3c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.TokenCount
G2L["3d"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["3d"]["TextTransparency"] = 0.8;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[↑ 0  ↓ 0]];
G2L["3d"]["Name"] = [[TokenCount]];
G2L["3d"]["Position"] = UDim2.new(0, 0, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame
G2L["3e"] = Instance.new("Frame", G2L["16"]);
G2L["3e"]["Visible"] = false;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[CodeblockFrame]];
G2L["3e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.UIPadding
G2L["3f"] = Instance.new("UIPadding", G2L["3e"]);
G2L["3f"]["PaddingTop"] = UDim.new(0, 5);
G2L["3f"]["PaddingRight"] = UDim.new(0, 5);
G2L["3f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["3f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox
G2L["40"] = Instance.new("TextBox", G2L["3e"]);
G2L["40"]["Name"] = [[CodeBox]];
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextEditable"] = false;
G2L["40"]["TextSize"] = 14;
G2L["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["40"]["MultiLine"] = true;
G2L["40"]["ClearTextOnFocus"] = false;
G2L["40"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[print("Hello world!")]];
G2L["40"]["LayoutOrder"] = 1;
G2L["40"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UIPadding
G2L["41"] = Instance.new("UIPadding", G2L["40"]);
G2L["41"]["PaddingTop"] = UDim.new(0, 5);
G2L["41"]["PaddingRight"] = UDim.new(0, 5);
G2L["41"]["PaddingLeft"] = UDim.new(0, 5);
G2L["41"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UICorner
G2L["42"] = Instance.new("UICorner", G2L["40"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.CopyButton
G2L["43"] = Instance.new("ImageButton", G2L["40"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["Image"] = [[rbxassetid://110180044304394]];
G2L["43"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Name"] = [[CopyButton]];
G2L["43"]["Position"] = UDim2.new(1, -15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.TotalElements
G2L["44"] = Instance.new("IntValue", G2L["13"]);
G2L["44"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.isAssistantBusy
G2L["45"] = Instance.new("BoolValue", G2L["13"]);
G2L["45"]["Name"] = [[isAssistantBusy]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame
G2L["46"] = Instance.new("Frame", G2L["13"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Name"] = [[GreetFrame]];
G2L["46"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.TextLabel
G2L["47"] = Instance.new("TextLabel", G2L["46"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 41;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextTransparency"] = 0.5;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Welcome]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIListLayout
G2L["48"] = Instance.new("UIListLayout", G2L["46"]);
G2L["48"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIPadding
G2L["49"] = Instance.new("UIPadding", G2L["46"]);
G2L["49"]["PaddingTop"] = UDim.new(0, 20);
G2L["49"]["PaddingRight"] = UDim.new(0, 25);
G2L["49"]["PaddingLeft"] = UDim.new(0, 25);
G2L["49"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.SetApiKeyButton
G2L["4a"] = Instance.new("TextButton", G2L["46"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4a"]["TextSize"] = 17;
G2L["4a"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["BackgroundTransparency"] = 1;
G2L["4a"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["4a"]["LayoutOrder"] = 1;
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[Set your API key →]];
G2L["4a"]["Name"] = [[SetApiKeyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame
G2L["4b"] = Instance.new("Frame", G2L["12"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["4b"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[InputFrame]];
G2L["4b"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput
G2L["4c"] = Instance.new("TextBox", G2L["4b"]);
G2L["4c"]["Name"] = [[TextBoxInput]];
G2L["4c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 14;
G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["ClearTextOnFocus"] = false;
G2L["4c"]["ClipsDescendants"] = true;
G2L["4c"]["PlaceholderText"] = [[Ask me anything]];
G2L["4c"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[]];
G2L["4c"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UIPadding
G2L["4d"] = Instance.new("UIPadding", G2L["4c"]);
G2L["4d"]["PaddingTop"] = UDim.new(0, 5);
G2L["4d"]["PaddingRight"] = UDim.new(0, 5);
G2L["4d"]["PaddingLeft"] = UDim.new(0, 7);
G2L["4d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4c"]);
G2L["4e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.UIPadding
G2L["4f"] = Instance.new("UIPadding", G2L["4b"]);
G2L["4f"]["PaddingTop"] = UDim.new(0, 5);
G2L["4f"]["PaddingRight"] = UDim.new(0, 5);
G2L["4f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["4f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton
G2L["50"] = Instance.new("ImageButton", G2L["4b"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["ImageTransparency"] = 0.7;
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["Image"] = [[rbxassetid://94637657012010]];
G2L["50"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[SendButton]];
G2L["50"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton
G2L["52"] = Instance.new("ImageButton", G2L["4b"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["Visible"] = false;
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["Image"] = [[rbxassetid://83095283930542]];
G2L["52"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[StopButton]];
G2L["52"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton.UICorner
G2L["53"] = Instance.new("UICorner", G2L["52"]);
G2L["53"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame
G2L["54"] = Instance.new("Frame", G2L["12"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Name"] = [[ActionsFrame]];
G2L["54"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIGridLayout
G2L["55"] = Instance.new("UIGridLayout", G2L["54"]);
G2L["55"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["55"]["CellSize"] = UDim2.new(0, 40, 0, 15);
G2L["55"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["55"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["55"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.ClearButton
G2L["56"] = Instance.new("TextButton", G2L["54"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["BackgroundTransparency"] = 0.9;
G2L["56"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Clear]];
G2L["56"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage
G2L["57"] = Instance.new("Frame", G2L["11"]);
G2L["57"]["Visible"] = false;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[SettingsPage]];
G2L["57"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame
G2L["58"] = Instance.new("ScrollingFrame", G2L["57"]);
G2L["58"]["Active"] = true;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["CanvasSize"] = UDim2.new(0, 0, 1.5, 0);
G2L["58"]["ScrollBarImageTransparency"] = 0.85;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["ScrollBarThickness"] = 5;
G2L["58"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["59"] = Instance.new("Frame", G2L["58"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[APIKeyFrame]];
G2L["59"]["LayoutOrder"] = 1;
G2L["59"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["5a"] = Instance.new("TextLabel", G2L["59"]);
G2L["5a"]["ZIndex"] = 0;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["TextSize"] = 14;
G2L["5a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Size"] = UDim2.new(0.3, 0, 0, 30);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Text"] = [[API Key]];
G2L["5a"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIListLayout
G2L["5b"] = Instance.new("UIListLayout", G2L["59"]);
G2L["5b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["5c"] = Instance.new("TextLabel", G2L["59"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Size"] = UDim2.new(0, 350, 0, 30);
G2L["5c"]["ClipsDescendants"] = true;
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[]];
G2L["5c"]["Position"] = UDim2.new(0.3, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["5d"] = Instance.new("TextBox", G2L["5c"]);
G2L["5d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["TextTransparency"] = 1;
G2L["5d"]["TextSize"] = 14;
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["ClearTextOnFocus"] = false;
G2L["5d"]["ClipsDescendants"] = true;
G2L["5d"]["PlaceholderText"] = [[sk-...]];
G2L["5d"]["Size"] = UDim2.new(0, 350, 0, 30);
G2L["5d"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Text"] = [[]];
G2L["5d"]["LayoutOrder"] = 1;
G2L["5d"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["5e"] = Instance.new("UICorner", G2L["5d"]);
G2L["5e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["5f"] = Instance.new("UIPadding", G2L["5c"]);
G2L["5f"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["60"] = Instance.new("Frame", G2L["58"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[HostSelectFrame]];
G2L["60"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["61"] = Instance.new("TextLabel", G2L["60"]);
G2L["61"]["ZIndex"] = 0;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0.3, 0, 0, 30);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[Host Provider]];
G2L["61"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIListLayout
G2L["62"] = Instance.new("UIListLayout", G2L["60"]);
G2L["62"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["62"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["63"] = Instance.new("Frame", G2L["60"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(0.67308, 0, 0, 30);
G2L["63"]["Position"] = UDim2.new(0.3, 0, 0, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["64"] = Instance.new("TextButton", G2L["63"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["BackgroundTransparency"] = 0.95;
G2L["64"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[OpenRouter]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["65"] = Instance.new("UICorner", G2L["64"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["66"] = Instance.new("ImageLabel", G2L["64"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Image"] = [[rbxassetid://88246357492813]];
G2L["66"]["Size"] = UDim2.new(0, 30, 1, 0);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Position"] = UDim2.new(-0.03415, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["67"] = Instance.new("UIPadding", G2L["64"]);
G2L["67"]["PaddingTop"] = UDim.new(0, 7);
G2L["67"]["PaddingRight"] = UDim.new(0, 7);
G2L["67"]["PaddingLeft"] = UDim.new(0, 7);
G2L["67"]["PaddingBottom"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIListLayout
G2L["68"] = Instance.new("UIListLayout", G2L["64"]);
G2L["68"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["68"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["68"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.div
G2L["69"] = Instance.new("Frame", G2L["64"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["Size"] = UDim2.new(0.85378, 0, 1, 0);
G2L["69"]["Position"] = UDim2.new(0.21728, 0, 0, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[div]];
G2L["69"]["LayoutOrder"] = 1;
G2L["69"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.UIGridLayout
G2L["6a"] = Instance.new("UIGridLayout", G2L["63"]);
G2L["6a"]["CellSize"] = UDim2.new(0.33, -3, 1, 0);
G2L["6a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["6b"] = Instance.new("TextButton", G2L["63"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["BackgroundTransparency"] = 0.95;
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[Ollama]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["6c"] = Instance.new("UICorner", G2L["6b"]);
G2L["6c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["6d"] = Instance.new("ImageLabel", G2L["6b"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Image"] = [[rbxassetid://136028604328894]];
G2L["6d"]["Size"] = UDim2.new(0, 30, 1, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["6e"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6e"]["PaddingTop"] = UDim.new(0, 5);
G2L["6e"]["PaddingRight"] = UDim.new(0, 5);
G2L["6e"]["PaddingLeft"] = UDim.new(0, 5);
G2L["6e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["6f"] = Instance.new("TextButton", G2L["63"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["BackgroundTransparency"] = 0.95;
G2L["6f"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Text"] = [[Mistral]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["70"] = Instance.new("UICorner", G2L["6f"]);
G2L["70"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["71"] = Instance.new("ImageLabel", G2L["6f"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["Image"] = [[rbxassetid://76466186311202]];
G2L["71"]["Size"] = UDim2.new(0, 30, 1, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["72"] = Instance.new("UIPadding", G2L["6f"]);
G2L["72"]["PaddingTop"] = UDim.new(0, 5);
G2L["72"]["PaddingRight"] = UDim.new(0, 5);
G2L["72"]["PaddingLeft"] = UDim.new(0, 5);
G2L["72"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["73"] = Instance.new("Frame", G2L["58"]);
G2L["73"]["ZIndex"] = 2;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[ModelSelectFrame]];
G2L["73"]["LayoutOrder"] = 2;
G2L["73"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["74"] = Instance.new("TextLabel", G2L["73"]);
G2L["74"]["ZIndex"] = 0;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 14;
G2L["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Size"] = UDim2.new(0.3, 0, 0, 30);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[Model]];
G2L["74"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIListLayout
G2L["75"] = Instance.new("UIListLayout", G2L["73"]);
G2L["75"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["75"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["76"] = Instance.new("Frame", G2L["73"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Size"] = UDim2.new(0, 350, 0, 30);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["77"] = Instance.new("TextBox", G2L["76"]);
G2L["77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["ClearTextOnFocus"] = false;
G2L["77"]["ClipsDescendants"] = true;
G2L["77"]["PlaceholderText"] = [[openrouter/owl-alpha]];
G2L["77"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["77"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[]];
G2L["77"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);
G2L["78"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["79"] = Instance.new("UIPadding", G2L["77"]);
G2L["79"]["PaddingTop"] = UDim.new(0, 10);
G2L["79"]["PaddingRight"] = UDim.new(0, 10);
G2L["79"]["PaddingLeft"] = UDim.new(0, 10);
G2L["79"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["7a"] = Instance.new("ImageButton", G2L["76"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["Image"] = [[rbxassetid://117799502668485]];
G2L["7a"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["7b"] = Instance.new("UICorner", G2L["7a"]);
G2L["7b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIGridLayout
G2L["7c"] = Instance.new("UIGridLayout", G2L["58"]);
G2L["7c"]["CellSize"] = UDim2.new(1, -10, 0, 30);
G2L["7c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7c"]["CellPadding"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["7d"] = Instance.new("Frame", G2L["58"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[TestFrame]];
G2L["7d"]["LayoutOrder"] = 4;
G2L["7d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["7e"] = Instance.new("TextLabel", G2L["7d"]);
G2L["7e"]["ZIndex"] = 0;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[Test Connection & Credential]];
G2L["7e"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIListLayout
G2L["7f"] = Instance.new("UIListLayout", G2L["7d"]);
G2L["7f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame
G2L["80"] = Instance.new("Frame", G2L["7d"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame.Connection
G2L["81"] = Instance.new("TextButton", G2L["80"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["TextSize"] = 14;
G2L["81"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["81"]["BackgroundTransparency"] = 0.95;
G2L["81"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Text"] = [[Connection]];
G2L["81"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame.Connection.UICorner
G2L["82"] = Instance.new("UICorner", G2L["81"]);
G2L["82"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame.Credential
G2L["83"] = Instance.new("TextButton", G2L["80"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 14;
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["83"]["BackgroundTransparency"] = 0.95;
G2L["83"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[Credential]];
G2L["83"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame.Credential.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);
G2L["84"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Frame.UIGridLayout
G2L["85"] = Instance.new("UIGridLayout", G2L["80"]);
G2L["85"]["CellSize"] = UDim2.new(0, 250, 1, 0);
G2L["85"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["86"] = Instance.new("Frame", G2L["58"]);
G2L["86"]["ZIndex"] = 2;
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Name"] = [[MaxStepFrame]];
G2L["86"]["LayoutOrder"] = 3;
G2L["86"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["87"] = Instance.new("TextLabel", G2L["86"]);
G2L["87"]["ZIndex"] = 0;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Size"] = UDim2.new(0.3, 0, 0, 30);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[Max Step]];
G2L["87"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIListLayout
G2L["88"] = Instance.new("UIListLayout", G2L["86"]);
G2L["88"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["88"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["89"] = Instance.new("Frame", G2L["86"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Size"] = UDim2.new(0, 350, 0, 30);
G2L["89"]["Position"] = UDim2.new(0.3, 0, 0, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["8a"] = Instance.new("TextBox", G2L["89"]);
G2L["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["ClearTextOnFocus"] = false;
G2L["8a"]["ClipsDescendants"] = true;
G2L["8a"]["PlaceholderText"] = [[100]];
G2L["8a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["8a"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[100]];
G2L["8a"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["8a"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["8a"]);
G2L["8c"]["PaddingTop"] = UDim.new(0, 10);
G2L["8c"]["PaddingRight"] = UDim.new(0, 10);
G2L["8c"]["PaddingLeft"] = UDim.new(0, 10);
G2L["8c"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["8d"] = Instance.new("CanvasGroup", G2L["57"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Size"] = UDim2.new(1, -10, 0, 35);
G2L["8d"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);
G2L["8e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["8f"] = Instance.new("TextLabel", G2L["8d"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["TextSize"] = 14;
G2L["8f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["BackgroundTransparency"] = 1;
G2L["8f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["90"] = Instance.new("UIPadding", G2L["8f"]);
G2L["90"]["PaddingTop"] = UDim.new(0, 5);
G2L["90"]["PaddingRight"] = UDim.new(0, 5);
G2L["90"]["PaddingLeft"] = UDim.new(0, 10);
G2L["90"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["91"] = Instance.new("TextButton", G2L["8f"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["TextSize"] = 14;
G2L["91"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["91"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["91"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Text"] = [[Save changes]];
G2L["91"]["Name"] = [[Save]];
G2L["91"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["92"] = Instance.new("UICorner", G2L["91"]);
G2L["92"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["93"] = Instance.new("TextButton", G2L["8f"]);
G2L["93"]["RichText"] = true;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["TextSize"] = 14;
G2L["93"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["93"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Text"] = [[<u>Revert</u>]];
G2L["93"]["Name"] = [[Revert]];
G2L["93"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["94"] = Instance.new("UICorner", G2L["93"]);
G2L["94"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["95"] = Instance.new("UIPadding", G2L["57"]);
G2L["95"]["PaddingTop"] = UDim.new(0, 10);
G2L["95"]["PaddingRight"] = UDim.new(0, 10);
G2L["95"]["PaddingLeft"] = UDim.new(0, 15);
G2L["95"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["96"] = Instance.new("Frame", G2L["11"]);
G2L["96"]["Visible"] = false;
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Name"] = [[CodePage]];
G2L["96"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["97"] = Instance.new("ScrollingFrame", G2L["96"]);
G2L["97"]["Active"] = true;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["97"]["ScrollBarImageTransparency"] = 0.8;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["97"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["ScrollBarThickness"] = 4;
G2L["97"]["LayoutOrder"] = 1;
G2L["97"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["98"] = Instance.new("TextLabel", G2L["97"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 14;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundTransparency"] = 0.85;
G2L["98"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[1]];
G2L["98"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["98"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["98"]);
G2L["99"]["PaddingRight"] = UDim.new(0, 5);
G2L["99"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["9a"] = Instance.new("TextBox", G2L["97"]);
G2L["9a"]["Name"] = [[CodeBox]];
G2L["9a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["9a"]["MultiLine"] = true;
G2L["9a"]["ClearTextOnFocus"] = false;
G2L["9a"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["9a"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[print("Hello world!")]];
G2L["9a"]["LayoutOrder"] = 1;
G2L["9a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["9b"] = Instance.new("UIPadding", G2L["9a"]);
G2L["9b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["9c"] = Instance.new("UIListLayout", G2L["97"]);
G2L["9c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["9c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame
G2L["9d"] = Instance.new("Frame", G2L["96"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Name"] = [[ActionsFrame]];
G2L["9d"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.UIGridLayout
G2L["9e"] = Instance.new("UIGridLayout", G2L["9d"]);
G2L["9e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["9e"]["CellSize"] = UDim2.new(0, 40, 0, 15);
G2L["9e"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["9e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["9e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.ClearButton
G2L["9f"] = Instance.new("TextButton", G2L["9d"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["BackgroundTransparency"] = 0.9;
G2L["9f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[Clear]];
G2L["9f"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.CopyButton
G2L["a0"] = Instance.new("TextButton", G2L["9d"]);
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["TextSize"] = 14;
G2L["a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a0"]["BackgroundTransparency"] = 0.9;
G2L["a0"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a0"]["LayoutOrder"] = 1;
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Text"] = [[Copy]];
G2L["a0"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.RunButton
G2L["a1"] = Instance.new("TextButton", G2L["9d"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["TextSize"] = 14;
G2L["a1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a1"]["BackgroundTransparency"] = 0.9;
G2L["a1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["a1"]["LayoutOrder"] = 2;
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Text"] = [[Run]];
G2L["a1"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["a2"] = Instance.new("UIListLayout", G2L["96"]);
G2L["a2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["a3"] = Instance.new("Frame", G2L["11"]);
G2L["a3"]["Visible"] = false;
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Name"] = [[TemplatePage]];
G2L["a3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["a4"] = Instance.new("Frame", G2L["10"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["a4"]["ClipsDescendants"] = true;
G2L["a4"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIGridLayout
G2L["a5"] = Instance.new("UIGridLayout", G2L["a4"]);
G2L["a5"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["a5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIPadding
G2L["a6"] = Instance.new("UIPadding", G2L["a4"]);
G2L["a6"]["PaddingTop"] = UDim.new(0, 30);
G2L["a6"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame
G2L["a7"] = Instance.new("Frame", G2L["a4"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[AgentButtonFrame]];
G2L["a7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.ImageLabel
G2L["a8"] = Instance.new("ImageLabel", G2L["a7"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["Image"] = [[rbxassetid://97622965928648]];
G2L["a8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.TextLabel
G2L["a9"] = Instance.new("TextLabel", G2L["a7"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["TextSize"] = 17;
G2L["a9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["BackgroundTransparency"] = 1;
G2L["a9"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[Agent]];
G2L["a9"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.Hitbox
G2L["aa"] = Instance.new("TextButton", G2L["a7"]);
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["TextTransparency"] = 1;
G2L["aa"]["TextSize"] = 14;
G2L["aa"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["aa"]["ZIndex"] = 999;
G2L["aa"]["BackgroundTransparency"] = 1;
G2L["aa"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame
G2L["ab"] = Instance.new("Frame", G2L["a4"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Name"] = [[SettingsButtonFrame]];
G2L["ab"]["LayoutOrder"] = 999;
G2L["ab"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.ImageLabel
G2L["ac"] = Instance.new("ImageLabel", G2L["ab"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["Image"] = [[rbxassetid://98245295559168]];
G2L["ac"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.TextLabel
G2L["ad"] = Instance.new("TextLabel", G2L["ab"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 17;
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ad"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[Settings]];
G2L["ad"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.Hitbox
G2L["ae"] = Instance.new("TextButton", G2L["ab"]);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["TextTransparency"] = 1;
G2L["ae"]["TextSize"] = 14;
G2L["ae"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ae"]["ZIndex"] = 999;
G2L["ae"]["BackgroundTransparency"] = 1;
G2L["ae"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame
G2L["af"] = Instance.new("Frame", G2L["a4"]);
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[CodeButtonFrame]];
G2L["af"]["LayoutOrder"] = 1;
G2L["af"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.ImageLabel
G2L["b0"] = Instance.new("ImageLabel", G2L["af"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["Image"] = [[rbxassetid://102596836544188]];
G2L["b0"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.TextLabel
G2L["b1"] = Instance.new("TextLabel", G2L["af"]);
G2L["b1"]["BorderSizePixel"] = 0;
G2L["b1"]["TextSize"] = 17;
G2L["b1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["BackgroundTransparency"] = 1;
G2L["b1"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["Text"] = [[Code]];
G2L["b1"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.Hitbox
G2L["b2"] = Instance.new("TextButton", G2L["af"]);
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["TextTransparency"] = 1;
G2L["b2"]["TextSize"] = 14;
G2L["b2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b2"]["ZIndex"] = 999;
G2L["b2"]["BackgroundTransparency"] = 1;
G2L["b2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["b3"] = Instance.new("TextLabel", G2L["10"]);
G2L["b3"]["ZIndex"] = 2;
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextSize"] = 14;
G2L["b3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["b3"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b3"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Text"] = [[IYAI]];
G2L["b3"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["b4"] = Instance.new("UIPadding", G2L["b3"]);
G2L["b4"]["PaddingRight"] = UDim.new(0, 5);
G2L["b4"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["b5"] = Instance.new("TextButton", G2L["b3"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["TextSize"] = 14;
G2L["b5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b5"]["ZIndex"] = 999;
G2L["b5"]["BackgroundTransparency"] = 1;
G2L["b5"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Text"] = [[X]];
G2L["b5"]["Name"] = [[CloseButton]];
G2L["b5"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["b6"] = Instance.new("TextLabel", G2L["b3"]);
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["TextSize"] = 11;
G2L["b6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b6"]["TextTransparency"] = 0.5;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["BackgroundTransparency"] = 1;
G2L["b6"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Text"] = [[by @urluri]];
G2L["b6"]["Name"] = [[AuthorLabel]];
G2L["b6"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["b7"] = Instance.new("TextLabel", G2L["b3"]);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["TextSize"] = 11;
G2L["b7"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["b7"]["TextTransparency"] = 0.5;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["BackgroundTransparency"] = 1;
G2L["b7"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Text"] = [[v]];
G2L["b7"]["Name"] = [[VersionLabel]];
G2L["b7"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["b8"] = Instance.new("TextButton", G2L["b3"]);
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["TextSize"] = 14;
G2L["b8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b8"]["ZIndex"] = 999;
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Text"] = [[—]];
G2L["b8"]["Name"] = [[MinimizeButton]];
G2L["b8"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.Highlight
G2L["b9"] = Instance.new("Frame", G2L["10"]);
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["b9"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["ba"] = Instance.new("Frame", G2L["10"]);
G2L["ba"]["Visible"] = false;
G2L["ba"]["ZIndex"] = 999;
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Name"] = [[ModalFrame]];
G2L["ba"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["bb"] = Instance.new("UIPadding", G2L["ba"]);
G2L["bb"]["PaddingTop"] = UDim.new(0, 15);
G2L["bb"]["PaddingRight"] = UDim.new(0, 15);
G2L["bb"]["PaddingLeft"] = UDim.new(0, 15);
G2L["bb"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["bc"] = Instance.new("Frame", G2L["ba"]);
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["bc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["bd"] = Instance.new("UICorner", G2L["bc"]);
G2L["bd"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["be"] = Instance.new("TextButton", G2L["bc"]);
G2L["be"]["BorderSizePixel"] = 0;
G2L["be"]["TextSize"] = 14;
G2L["be"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["be"]["ZIndex"] = 999;
G2L["be"]["BackgroundTransparency"] = 1;
G2L["be"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["be"]["Text"] = [[X]];
G2L["be"]["Name"] = [[CloseButton]];
G2L["be"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["bf"] = Instance.new("Frame", G2L["bc"]);
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["Size"] = UDim2.new(1, 0, 0, 345);
G2L["bf"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Name"] = [[SearchModelModal]];
G2L["bf"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["c0"] = Instance.new("UIPadding", G2L["bf"]);
G2L["c0"]["PaddingTop"] = UDim.new(0, 10);
G2L["c0"]["PaddingRight"] = UDim.new(0, 10);
G2L["c0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["c0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["c1"] = Instance.new("TextBox", G2L["bf"]);
G2L["c1"]["Name"] = [[SearchBox]];
G2L["c1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["TextSize"] = 14;
G2L["c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c1"]["PlaceholderText"] = [[Search models...]];
G2L["c1"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Text"] = [[]];
G2L["c1"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["c2"] = Instance.new("UICorner", G2L["c1"]);
G2L["c2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["c3"] = Instance.new("UIPadding", G2L["c1"]);
G2L["c3"]["PaddingTop"] = UDim.new(0, 10);
G2L["c3"]["PaddingRight"] = UDim.new(0, 10);
G2L["c3"]["PaddingLeft"] = UDim.new(0, 10);
G2L["c3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["c4"] = Instance.new("ImageButton", G2L["bf"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundTransparency"] = 1;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Image"] = [[rbxassetid://94907058451749]];
G2L["c4"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[SearchButton]];
G2L["c4"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["c5"] = Instance.new("ScrollingFrame", G2L["bf"]);
G2L["c5"]["Active"] = true;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["ScrollBarImageTransparency"] = 0.9;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["Size"] = UDim2.new(1, 0, 0, 285);
G2L["c5"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["ScrollBarThickness"] = 6;
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["c6"] = Instance.new("TextButton", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c6"]["TextSize"] = 14;
G2L["c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c6"]["BackgroundTransparency"] = 1;
G2L["c6"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["Text"] = [[SomeModel]];
G2L["c6"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["c7"] = Instance.new("UIPadding", G2L["c6"]);
G2L["c7"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["c8"] = Instance.new("UIGridLayout", G2L["c5"]);
G2L["c8"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["c8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["c9"] = Instance.new("CanvasGroup", G2L["e"]);
G2L["c9"]["Visible"] = false;
G2L["c9"]["GroupTransparency"] = 1;
G2L["c9"]["ZIndex"] = 999;
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["c9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["ca"] = Instance.new("ImageLabel", G2L["c9"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["Image"] = [[rbxassetid://115810237733262]];
G2L["ca"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["BackgroundTransparency"] = 1;
G2L["ca"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["cb"] = Instance.new("TextLabel", G2L["ca"]);
G2L["cb"]["BorderSizePixel"] = 0;
G2L["cb"]["TextSize"] = 35;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["BackgroundTransparency"] = 1;
G2L["cb"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cb"]["Text"] = [[Artificial Intelligence]];
G2L["cb"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI Toast Container
G2L["cc"] = Instance.new("Frame", G2L["1"]);
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["cc"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["Name"] = [[IYAI Toast Container]];
G2L["cc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["cd"] = Instance.new("CanvasGroup", G2L["cc"]);
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["cd"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["cd"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["ce"] = Instance.new("UICorner", G2L["cd"]);
G2L["ce"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["cf"] = Instance.new("Frame", G2L["cd"]);
G2L["cf"]["BorderSizePixel"] = 0;
G2L["cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["cf"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cf"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["d0"] = Instance.new("TextLabel", G2L["cd"]);
G2L["d0"]["ZIndex"] = 2;
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["TextSize"] = 14;
G2L["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["d0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Text"] = [[Toast Title]];
G2L["d0"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["d1"] = Instance.new("UIPadding", G2L["d0"]);
G2L["d1"]["PaddingRight"] = UDim.new(0, 5);
G2L["d1"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["d2"] = Instance.new("TextButton", G2L["d0"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["TextSize"] = 14;
G2L["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d2"]["BackgroundTransparency"] = 1;
G2L["d2"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Text"] = [[X]];
G2L["d2"]["Name"] = [[CloseButton]];
G2L["d2"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["d3"] = Instance.new("UICorner", G2L["d2"]);
G2L["d3"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["d4"] = Instance.new("TextLabel", G2L["cd"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["TextSize"] = 14;
G2L["d4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["BackgroundTransparency"] = 1;
G2L["d4"]["Size"] = UDim2.new(1, 0, 0, 75);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Name"] = [[ToastDesc]];
G2L["d4"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["d5"] = Instance.new("UIPadding", G2L["d4"]);
G2L["d5"]["PaddingTop"] = UDim.new(0, 5);
G2L["d5"]["PaddingRight"] = UDim.new(0, 10);
G2L["d5"]["PaddingLeft"] = UDim.new(0, 10);
G2L["d5"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["d6"] = Instance.new("Frame", G2L["cd"]);
G2L["d6"]["ZIndex"] = 999;
G2L["d6"]["BorderSizePixel"] = 0;
G2L["d6"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["d6"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["d6"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d6"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["d7"] = Instance.new("UICorner", G2L["d6"]);
G2L["d7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["d8"] = Instance.new("UIPadding", G2L["cc"]);
G2L["d8"]["PaddingTop"] = UDim.new(0, 15);
G2L["d8"]["PaddingRight"] = UDim.new(0, 15);
G2L["d8"]["PaddingLeft"] = UDim.new(0, 15);
G2L["d8"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.IYAI.CurrentPage
G2L["d9"] = Instance.new("StringValue", G2L["1"]);
G2L["d9"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["da"] = Instance.new("StringValue", G2L["1"]);
G2L["da"]["Name"] = [[Version]];
G2L["da"]["Value"] = [[1.0.0]];

return G2L
