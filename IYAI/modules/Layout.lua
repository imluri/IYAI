
-- Instances: 531 | Scripts: 2 | Modules: 10 | Tags: 0
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN
G2L["17"] = Instance.new("TextLabel", G2L["16"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 14;
G2L["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["17"]["TextTransparency"] = 0.5;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["17"]["Visible"] = false;
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[Step 1]];
G2L["17"]["LayoutOrder"] = 1;
G2L["17"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["17"]["Name"] = [[StepN]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.StepN.UIPadding
G2L["18"] = Instance.new("UIPadding", G2L["17"]);
G2L["18"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame
G2L["19"] = Instance.new("Frame", G2L["16"]);
G2L["19"]["Visible"] = false;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["19"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[UserMessageFrame]];
G2L["19"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.UIPadding
G2L["1a"] = Instance.new("UIPadding", G2L["19"]);
G2L["1a"]["PaddingTop"] = UDim.new(0, 5);
G2L["1a"]["PaddingRight"] = UDim.new(0, 5);
G2L["1a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["1a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame
G2L["1b"] = Instance.new("Frame", G2L["19"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage
G2L["1c"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 15;
G2L["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[How many players are on the game?]];
G2L["1c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1c"]["Name"] = [[UserMessage]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UserMessage.UIPadding
G2L["1d"] = Instance.new("UIPadding", G2L["1c"]);
G2L["1d"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.UserMessageFrame.Frame.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1b"]);
G2L["1e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking
G2L["1f"] = Instance.new("TextLabel", G2L["16"]);
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["TextTransparency"] = 0.5;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1f"]["Visible"] = false;
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[]];
G2L["1f"]["LayoutOrder"] = 4;
G2L["1f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Name"] = [[AssistantThinking]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantThinking.UIPadding
G2L["20"] = Instance.new("UIPadding", G2L["1f"]);
G2L["20"]["PaddingTop"] = UDim.new(0, 5);
G2L["20"]["PaddingRight"] = UDim.new(0, 15);
G2L["20"]["PaddingLeft"] = UDim.new(0, 15);
G2L["20"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame
G2L["21"] = Instance.new("Frame", G2L["16"]);
G2L["21"]["Visible"] = false;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["21"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[CodeStatusFrame]];
G2L["21"]["LayoutOrder"] = 3;
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor
G2L["22"] = Instance.new("Frame", G2L["21"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["22"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["22"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.IconColor.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.TextLabel
G2L["24"] = Instance.new("TextLabel", G2L["21"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["TextTransparency"] = 0.25;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["RichText"] = true;
G2L["24"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Agent is writing code...]];
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["24"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeStatusFrame.UIPadding
G2L["25"] = Instance.new("UIPadding", G2L["21"]);
G2L["25"]["PaddingTop"] = UDim.new(0, 5);
G2L["25"]["PaddingRight"] = UDim.new(0, 15);
G2L["25"]["PaddingLeft"] = UDim.new(0, 15);
G2L["25"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame
G2L["26"] = Instance.new("Frame", G2L["16"]);
G2L["26"]["Visible"] = false;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[PostActionFrame]];
G2L["26"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton
G2L["27"] = Instance.new("TextButton", G2L["26"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextSize"] = 14;
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["BackgroundTransparency"] = 0.9;
G2L["27"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["27"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Open Code Page]];
G2L["27"]["Name"] = [[PostActionButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.PostActionButton.UICorner
G2L["28"] = Instance.new("UICorner", G2L["27"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.PostActionFrame.UIPadding
G2L["29"] = Instance.new("UIPadding", G2L["26"]);
G2L["29"]["PaddingTop"] = UDim.new(0, 5);
G2L["29"]["PaddingRight"] = UDim.new(0, 10);
G2L["29"]["PaddingLeft"] = UDim.new(0, 10);
G2L["29"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText
G2L["2a"] = Instance.new("TextLabel", G2L["16"]);
G2L["2a"]["TextWrapped"] = true;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 14;
G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2a"]["TextTransparency"] = 0.5;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2a"]["Visible"] = false;
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Aborted.]];
G2L["2a"]["LayoutOrder"] = 4;
G2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2a"]["Name"] = [[AbortText]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AbortText.UIPadding
G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2b"]["PaddingTop"] = UDim.new(0, 5);
G2L["2b"]["PaddingRight"] = UDim.new(0, 15);
G2L["2b"]["PaddingLeft"] = UDim.new(0, 15);
G2L["2b"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame
G2L["2c"] = Instance.new("Frame", G2L["16"]);
G2L["2c"]["Visible"] = false;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[CodeblockFrame]];
G2L["2c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.UIPadding
G2L["2d"] = Instance.new("UIPadding", G2L["2c"]);
G2L["2d"]["PaddingTop"] = UDim.new(0, 5);
G2L["2d"]["PaddingRight"] = UDim.new(0, 5);
G2L["2d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["2d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox
G2L["2e"] = Instance.new("TextBox", G2L["2c"]);
G2L["2e"]["Name"] = [[CodeBox]];
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextEditable"] = false;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2e"]["MultiLine"] = true;
G2L["2e"]["ClearTextOnFocus"] = false;
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[print("Hello world!")]];
G2L["2e"]["LayoutOrder"] = 1;
G2L["2e"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2e"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 5);
G2L["2f"]["PaddingRight"] = UDim.new(0, 5);
G2L["2f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UICorner
G2L["30"] = Instance.new("UICorner", G2L["2e"]);
G2L["30"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.CopyButton
G2L["31"] = Instance.new("ImageButton", G2L["2e"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Image"] = [[rbxassetid://110180044304394]];
G2L["31"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[CopyButton]];
G2L["31"]["Position"] = UDim2.new(1, -15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded)
G2L["32"] = Instance.new("Frame", G2L["16"]);
G2L["32"]["Visible"] = false;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["32"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[AgentTaskFrame (Tool succeeded)]];
G2L["32"]["LayoutOrder"] = 2;
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor
G2L["33"] = Instance.new("Frame", G2L["32"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["33"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["33"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).TextLabel
G2L["35"] = Instance.new("TextLabel", G2L["32"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["TextTransparency"] = 0.25;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["RichText"] = true;
G2L["35"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Tool succeeded]];
G2L["35"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["35"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).UIPadding
G2L["36"] = Instance.new("UIPadding", G2L["32"]);
G2L["36"]["PaddingTop"] = UDim.new(0, 5);
G2L["36"]["PaddingRight"] = UDim.new(0, 15);
G2L["36"]["PaddingLeft"] = UDim.new(0, 15);
G2L["36"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed)
G2L["37"] = Instance.new("Frame", G2L["16"]);
G2L["37"]["Visible"] = false;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["37"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Name"] = [[AgentTaskFrame (Tool failed)]];
G2L["37"]["LayoutOrder"] = 3;
G2L["37"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor
G2L["38"] = Instance.new("Frame", G2L["37"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["38"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["38"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor.UICorner
G2L["39"] = Instance.new("UICorner", G2L["38"]);
G2L["39"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).TextLabel
G2L["3a"] = Instance.new("TextLabel", G2L["37"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["TextSize"] = 14;
G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3a"]["TextTransparency"] = 0.25;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["RichText"] = true;
G2L["3a"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[Tool failed]];
G2L["3a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3a"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).UIPadding
G2L["3b"] = Instance.new("UIPadding", G2L["37"]);
G2L["3b"]["PaddingTop"] = UDim.new(0, 5);
G2L["3b"]["PaddingRight"] = UDim.new(0, 15);
G2L["3b"]["PaddingLeft"] = UDim.new(0, 15);
G2L["3b"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy)
G2L["3c"] = Instance.new("Frame", G2L["16"]);
G2L["3c"]["Visible"] = false;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[AgentTaskFrame (Tool busy)]];
G2L["3c"]["LayoutOrder"] = 3;
G2L["3c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor
G2L["3d"] = Instance.new("Frame", G2L["3c"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["3d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["3d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);
G2L["3e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).TextLabel
G2L["3f"] = Instance.new("TextLabel", G2L["3c"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3f"]["TextTransparency"] = 0.25;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["RichText"] = true;
G2L["3f"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Text"] = [[Shimmering...]];
G2L["3f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3f"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).UIPadding
G2L["40"] = Instance.new("UIPadding", G2L["3c"]);
G2L["40"]["PaddingTop"] = UDim.new(0, 5);
G2L["40"]["PaddingRight"] = UDim.new(0, 15);
G2L["40"]["PaddingLeft"] = UDim.new(0, 15);
G2L["40"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying)
G2L["41"] = Instance.new("Frame", G2L["16"]);
G2L["41"]["Visible"] = false;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["41"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[AgentTaskFrame (Retrying)]];
G2L["41"]["LayoutOrder"] = 2;
G2L["41"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor
G2L["42"] = Instance.new("Frame", G2L["41"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(171, 171, 0);
G2L["42"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["42"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor.UICorner
G2L["43"] = Instance.new("UICorner", G2L["42"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).TextLabel
G2L["44"] = Instance.new("TextLabel", G2L["41"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["TextSize"] = 14;
G2L["44"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["44"]["TextTransparency"] = 0.25;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["BackgroundTransparency"] = 1;
G2L["44"]["RichText"] = true;
G2L["44"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Text"] = [[Tool succeeded]];
G2L["44"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["44"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).UIPadding
G2L["45"] = Instance.new("UIPadding", G2L["41"]);
G2L["45"]["PaddingTop"] = UDim.new(0, 5);
G2L["45"]["PaddingRight"] = UDim.new(0, 15);
G2L["45"]["PaddingLeft"] = UDim.new(0, 15);
G2L["45"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse
G2L["46"] = Instance.new("TextLabel", G2L["16"]);
G2L["46"]["TextWrapped"] = true;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextSize"] = 14;
G2L["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["46"]["Visible"] = false;
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Text"] = [[]];
G2L["46"]["LayoutOrder"] = 4;
G2L["46"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["46"]["Name"] = [[AssistantResponse]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.UIPadding
G2L["47"] = Instance.new("UIPadding", G2L["46"]);
G2L["47"]["PaddingTop"] = UDim.new(0, 5);
G2L["47"]["PaddingRight"] = UDim.new(0, 15);
G2L["47"]["PaddingLeft"] = UDim.new(0, 15);
G2L["47"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.TokenCount
G2L["48"] = Instance.new("TextLabel", G2L["46"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["48"]["TextTransparency"] = 0.8;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["Size"] = UDim2.new(1, -15, 0, 10);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[↑ 0  ↓ 0]];
G2L["48"]["Name"] = [[TokenCount]];
G2L["48"]["Position"] = UDim2.new(0, 0, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.CopyButton
G2L["49"] = Instance.new("TextButton", G2L["46"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextTransparency"] = 1;
G2L["49"]["TextSize"] = 14;
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["49"]["LayoutOrder"] = 1;
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[Copy]];
G2L["49"]["Name"] = [[CopyButton]];
G2L["49"]["Position"] = UDim2.new(1, -10, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.CopyButton.ImageLabel
G2L["4a"] = Instance.new("ImageLabel", G2L["49"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["Image"] = [[rbxassetid://110180044304394]];
G2L["4a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.TotalElements
G2L["4b"] = Instance.new("IntValue", G2L["13"]);
G2L["4b"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.isAssistantBusy
G2L["4c"] = Instance.new("BoolValue", G2L["13"]);
G2L["4c"]["Name"] = [[isAssistantBusy]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame
G2L["4d"] = Instance.new("Frame", G2L["13"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Name"] = [[GreetFrame]];
G2L["4d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.TextLabel
G2L["4e"] = Instance.new("TextLabel", G2L["4d"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["TextSize"] = 41;
G2L["4e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4e"]["TextTransparency"] = 0.5;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[Welcome]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIListLayout
G2L["4f"] = Instance.new("UIListLayout", G2L["4d"]);
G2L["4f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIPadding
G2L["50"] = Instance.new("UIPadding", G2L["4d"]);
G2L["50"]["PaddingTop"] = UDim.new(0, 20);
G2L["50"]["PaddingRight"] = UDim.new(0, 25);
G2L["50"]["PaddingLeft"] = UDim.new(0, 25);
G2L["50"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.SetApiKeyButton
G2L["51"] = Instance.new("TextButton", G2L["4d"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["TextSize"] = 17;
G2L["51"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["51"]["LayoutOrder"] = 1;
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[Set your API key →]];
G2L["51"]["Name"] = [[SetApiKeyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.OpenConversationHistoryButton
G2L["52"] = Instance.new("TextButton", G2L["4d"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["TextSize"] = 17;
G2L["52"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["52"]["LayoutOrder"] = 1;
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[Open conversation history →]];
G2L["52"]["Name"] = [[OpenConversationHistoryButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.ConnectToBrowserButton
G2L["53"] = Instance.new("TextButton", G2L["4d"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["TextSize"] = 17;
G2L["53"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["53"]["LayoutOrder"] = 2;
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[Connect to browser →]];
G2L["53"]["Name"] = [[ConnectToBrowserButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame
G2L["54"] = Instance.new("Frame", G2L["12"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["54"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Name"] = [[InputFrame]];
G2L["54"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput
G2L["55"] = Instance.new("TextBox", G2L["54"]);
G2L["55"]["Name"] = [[TextBoxInput]];
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["ClearTextOnFocus"] = false;
G2L["55"]["ClipsDescendants"] = true;
G2L["55"]["PlaceholderText"] = [[Ask me anything]];
G2L["55"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[]];
G2L["55"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UIPadding
G2L["56"] = Instance.new("UIPadding", G2L["55"]);
G2L["56"]["PaddingTop"] = UDim.new(0, 5);
G2L["56"]["PaddingRight"] = UDim.new(0, 5);
G2L["56"]["PaddingLeft"] = UDim.new(0, 7);
G2L["56"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UICorner
G2L["57"] = Instance.new("UICorner", G2L["55"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.UIPadding
G2L["58"] = Instance.new("UIPadding", G2L["54"]);
G2L["58"]["PaddingTop"] = UDim.new(0, 5);
G2L["58"]["PaddingRight"] = UDim.new(0, 5);
G2L["58"]["PaddingLeft"] = UDim.new(0, 5);
G2L["58"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton
G2L["59"] = Instance.new("ImageButton", G2L["54"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["ImageTransparency"] = 0.7;
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Image"] = [[rbxassetid://94637657012010]];
G2L["59"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[SendButton]];
G2L["59"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["59"]);
G2L["5a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton
G2L["5b"] = Instance.new("ImageButton", G2L["54"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["Visible"] = false;
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["Image"] = [[rbxassetid://83095283930542]];
G2L["5b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[StopButton]];
G2L["5b"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame
G2L["5d"] = Instance.new("Frame", G2L["12"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["5d"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[ActionsFrame]];
G2L["5d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIGridLayout
G2L["5e"] = Instance.new("UIGridLayout", G2L["5d"]);
G2L["5e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["5e"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["5e"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["5e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIPadding
G2L["5f"] = Instance.new("UIPadding", G2L["5d"]);
G2L["5f"]["PaddingTop"] = UDim.new(0, 5);
G2L["5f"]["PaddingRight"] = UDim.new(0, 5);
G2L["5f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["5f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton
G2L["60"] = Instance.new("TextButton", G2L["5d"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextTransparency"] = 1;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["BackgroundTransparency"] = 0.9;
G2L["60"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["60"]["LayoutOrder"] = 2;
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[Clear]];
G2L["60"]["Name"] = [[NewChatButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.ImageLabel
G2L["61"] = Instance.new("ImageLabel", G2L["60"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["Image"] = [[rbxassetid://115487068891941]];
G2L["61"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UICorner
G2L["62"] = Instance.new("UICorner", G2L["60"]);
G2L["62"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UIPadding
G2L["63"] = Instance.new("UIPadding", G2L["60"]);
G2L["63"]["PaddingTop"] = UDim.new(0, 3);
G2L["63"]["PaddingRight"] = UDim.new(0, 3);
G2L["63"]["PaddingLeft"] = UDim.new(0, 3);
G2L["63"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage
G2L["64"] = Instance.new("Frame", G2L["11"]);
G2L["64"]["Visible"] = false;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Name"] = [[SettingsPage]];
G2L["64"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame
G2L["65"] = Instance.new("ScrollingFrame", G2L["64"]);
G2L["65"]["Active"] = true;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["CanvasSize"] = UDim2.new(0, 0, 1.5, 0);
G2L["65"]["ScrollBarImageTransparency"] = 0.85;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["ScrollBarThickness"] = 5;
G2L["65"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["66"] = Instance.new("Frame", G2L["65"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Name"] = [[APIKeyFrame]];
G2L["66"]["LayoutOrder"] = 1;
G2L["66"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["67"] = Instance.new("TextLabel", G2L["66"]);
G2L["67"]["ZIndex"] = 0;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[API Key]];
G2L["67"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["67"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["68"] = Instance.new("TextLabel", G2L["66"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["68"]["ClipsDescendants"] = true;
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[]];
G2L["68"]["Position"] = UDim2.new(1, -325, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["69"] = Instance.new("TextBox", G2L["68"]);
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextTransparency"] = 1;
G2L["69"]["TextSize"] = 14;
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["ClearTextOnFocus"] = false;
G2L["69"]["ClipsDescendants"] = true;
G2L["69"]["PlaceholderText"] = [[sk-...]];
G2L["69"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["69"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[]];
G2L["69"]["LayoutOrder"] = 1;
G2L["69"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);
G2L["6a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["6b"] = Instance.new("UIPadding", G2L["68"]);
G2L["6b"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["6c"] = Instance.new("UIPadding", G2L["66"]);
G2L["6c"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame
G2L["6d"] = Instance.new("Frame", G2L["66"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["6d"]["Position"] = UDim2.new(0, 50, 0, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[ModeFrame]];
G2L["6d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["6e"] = Instance.new("TextButton", G2L["6d"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["TextSize"] = 14;
G2L["6e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["BackgroundTransparency"] = 0.95;
G2L["6e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Text"] = [[Single]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);
G2L["6f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIGridLayout
G2L["70"] = Instance.new("UIGridLayout", G2L["6d"]);
G2L["70"]["CellSize"] = UDim2.new(0, 40, 0, 20);
G2L["70"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["70"]["CellPadding"] = UDim2.new(0, 2, 0, 2);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.UIPadding
G2L["71"] = Instance.new("UIPadding", G2L["6d"]);
G2L["71"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton
G2L["72"] = Instance.new("TextButton", G2L["6d"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["BackgroundTransparency"] = 0.95;
G2L["72"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[Multi]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.ModeFrame.TextButton.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);
G2L["73"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton
G2L["74"] = Instance.new("TextButton", G2L["66"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 17;
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["BackgroundTransparency"] = 0.95;
G2L["74"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[Set multiple API keys ↗]];
G2L["74"]["Name"] = [[SetMultipleAPIKeysButton]];
G2L["74"]["Visible"] = false;
G2L["74"]["Position"] = UDim2.new(1, -325, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.SetMultipleAPIKeysButton.UICorner
G2L["75"] = Instance.new("UICorner", G2L["74"]);
G2L["75"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["76"] = Instance.new("Frame", G2L["65"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[HostSelectFrame]];
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["77"] = Instance.new("TextLabel", G2L["76"]);
G2L["77"]["ZIndex"] = 0;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Host Provider]];
G2L["77"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["77"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["78"] = Instance.new("Frame", G2L["76"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["78"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["79"] = Instance.new("TextButton", G2L["78"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextTransparency"] = 1;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["BackgroundTransparency"] = 0.95;
G2L["79"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["79"]["ClipsDescendants"] = true;
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[OpenRouter]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);
G2L["7a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["7b"] = Instance.new("ImageLabel", G2L["79"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["Image"] = [[rbxassetid://88246357492813]];
G2L["7b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Position"] = UDim2.new(-0.03415, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["7c"] = Instance.new("UIPadding", G2L["79"]);
G2L["7c"]["PaddingTop"] = UDim.new(0, 5);
G2L["7c"]["PaddingRight"] = UDim.new(0, 5);
G2L["7c"]["PaddingLeft"] = UDim.new(0, 5);
G2L["7c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.UIGridLayout
G2L["7d"] = Instance.new("UIGridLayout", G2L["78"]);
G2L["7d"]["CellSize"] = UDim2.new(0, 30, 0, 30);
G2L["7d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["7e"] = Instance.new("TextButton", G2L["78"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextTransparency"] = 1;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["BackgroundTransparency"] = 0.95;
G2L["7e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7e"]["ClipsDescendants"] = true;
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[Ollama]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7e"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["80"] = Instance.new("ImageLabel", G2L["7e"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["Image"] = [[rbxassetid://136028604328894]];
G2L["80"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["81"] = Instance.new("UIPadding", G2L["7e"]);
G2L["81"]["PaddingTop"] = UDim.new(0, 5);
G2L["81"]["PaddingRight"] = UDim.new(0, 5);
G2L["81"]["PaddingLeft"] = UDim.new(0, 5);
G2L["81"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["82"] = Instance.new("TextButton", G2L["78"]);
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextTransparency"] = 1;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["BackgroundTransparency"] = 0.95;
G2L["82"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["82"]["ClipsDescendants"] = true;
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Mistral]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["84"] = Instance.new("ImageLabel", G2L["82"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["Image"] = [[rbxassetid://104043776192224]];
G2L["84"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["85"] = Instance.new("UIPadding", G2L["82"]);
G2L["85"]["PaddingTop"] = UDim.new(0, 5);
G2L["85"]["PaddingRight"] = UDim.new(0, 5);
G2L["85"]["PaddingLeft"] = UDim.new(0, 5);
G2L["85"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["86"] = Instance.new("TextButton", G2L["78"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["TextTransparency"] = 1;
G2L["86"]["TextSize"] = 14;
G2L["86"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["BackgroundTransparency"] = 0.95;
G2L["86"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["86"]["ClipsDescendants"] = true;
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Text"] = [[Pollinations]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["87"] = Instance.new("UICorner", G2L["86"]);
G2L["87"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["88"] = Instance.new("ImageLabel", G2L["86"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["Image"] = [[rbxassetid://75323955386400]];
G2L["88"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["89"] = Instance.new("UIPadding", G2L["86"]);
G2L["89"]["PaddingTop"] = UDim.new(0, 5);
G2L["89"]["PaddingRight"] = UDim.new(0, 5);
G2L["89"]["PaddingLeft"] = UDim.new(0, 5);
G2L["89"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["8a"] = Instance.new("TextButton", G2L["78"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextTransparency"] = 1;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["BackgroundTransparency"] = 0.95;
G2L["8a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["8a"]["ClipsDescendants"] = true;
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[HuggingFace]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["8a"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["8c"] = Instance.new("ImageLabel", G2L["8a"]);
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["Image"] = [[rbxassetid://106116930029262]];
G2L["8c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["8d"] = Instance.new("UIPadding", G2L["8a"]);
G2L["8d"]["PaddingTop"] = UDim.new(0, 5);
G2L["8d"]["PaddingRight"] = UDim.new(0, 5);
G2L["8d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["8d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["8e"] = Instance.new("TextButton", G2L["78"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextTransparency"] = 1;
G2L["8e"]["TextSize"] = 14;
G2L["8e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["BackgroundTransparency"] = 0.95;
G2L["8e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["8e"]["ClipsDescendants"] = true;
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Text"] = [[Groq]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8e"]);
G2L["8f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["90"] = Instance.new("ImageLabel", G2L["8e"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Image"] = [[rbxassetid://135447140359444]];
G2L["90"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["91"] = Instance.new("UIPadding", G2L["8e"]);
G2L["91"]["PaddingTop"] = UDim.new(0, 5);
G2L["91"]["PaddingRight"] = UDim.new(0, 5);
G2L["91"]["PaddingLeft"] = UDim.new(0, 5);
G2L["91"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["92"] = Instance.new("TextButton", G2L["78"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["TextTransparency"] = 1;
G2L["92"]["TextSize"] = 14;
G2L["92"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["92"]["BackgroundTransparency"] = 0.95;
G2L["92"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["92"]["ClipsDescendants"] = true;
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Text"] = [[Google AI Studio]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["93"] = Instance.new("UICorner", G2L["92"]);
G2L["93"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["94"] = Instance.new("ImageLabel", G2L["92"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["Image"] = [[rbxassetid://105212340588125]];
G2L["94"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["95"] = Instance.new("UIPadding", G2L["92"]);
G2L["95"]["PaddingTop"] = UDim.new(0, 5);
G2L["95"]["PaddingRight"] = UDim.new(0, 5);
G2L["95"]["PaddingLeft"] = UDim.new(0, 5);
G2L["95"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["96"] = Instance.new("TextButton", G2L["78"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["TextTransparency"] = 1;
G2L["96"]["TextSize"] = 14;
G2L["96"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["BackgroundTransparency"] = 0.95;
G2L["96"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["96"]["ClipsDescendants"] = true;
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[9router]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);
G2L["97"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["98"] = Instance.new("ImageLabel", G2L["96"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["Image"] = [[rbxassetid://134250684364641]];
G2L["98"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["96"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["9a"] = Instance.new("TextButton", G2L["78"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextTransparency"] = 1;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["BackgroundTransparency"] = 0.95;
G2L["9a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["9a"]["ClipsDescendants"] = true;
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[OpenCode]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["9a"]);
G2L["9b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["9c"] = Instance.new("ImageLabel", G2L["9a"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Image"] = [[rbxassetid://75680920855699]];
G2L["9c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["9d"] = Instance.new("UIPadding", G2L["9a"]);
G2L["9d"]["PaddingTop"] = UDim.new(0, 5);
G2L["9d"]["PaddingRight"] = UDim.new(0, 5);
G2L["9d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["9d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["9e"] = Instance.new("UIPadding", G2L["76"]);
G2L["9e"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["9f"] = Instance.new("Frame", G2L["65"]);
G2L["9f"]["ZIndex"] = 2;
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Name"] = [[ModelSelectFrame]];
G2L["9f"]["LayoutOrder"] = 2;
G2L["9f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
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
G2L["a0"]["Text"] = [[Model]];
G2L["a0"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a0"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["a1"] = Instance.new("Frame", G2L["9f"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["a1"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["a2"] = Instance.new("TextBox", G2L["a1"]);
G2L["a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["ClearTextOnFocus"] = false;
G2L["a2"]["ClipsDescendants"] = true;
G2L["a2"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["a2"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[]];
G2L["a2"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);
G2L["a3"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["a4"] = Instance.new("UIPadding", G2L["a2"]);
G2L["a4"]["PaddingTop"] = UDim.new(0, 10);
G2L["a4"]["PaddingRight"] = UDim.new(0, 10);
G2L["a4"]["PaddingLeft"] = UDim.new(0, 10);
G2L["a4"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["a5"] = Instance.new("ImageButton", G2L["a1"]);
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a5"]["Image"] = [[rbxassetid://117799502668485]];
G2L["a5"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["a5"]);
G2L["a6"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["a7"] = Instance.new("UIPadding", G2L["9f"]);
G2L["a7"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["a8"] = Instance.new("Frame", G2L["65"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["a8"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["Name"] = [[TestFrame]];
G2L["a8"]["LayoutOrder"] = 5;
G2L["a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["a9"] = Instance.new("TextLabel", G2L["a8"]);
G2L["a9"]["ZIndex"] = 0;
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["TextSize"] = 14;
G2L["a9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["BackgroundTransparency"] = 1;
G2L["a9"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[Test Connection & Credential]];
G2L["a9"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["aa"] = Instance.new("UIGridLayout", G2L["a8"]);
G2L["aa"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["aa"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["ab"] = Instance.new("TextButton", G2L["a8"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["BackgroundTransparency"] = 0.95;
G2L["ab"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["ab"]["LayoutOrder"] = 1;
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[]];
G2L["ab"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["ac"] = Instance.new("UICorner", G2L["ab"]);
G2L["ac"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["ad"] = Instance.new("Frame", G2L["ab"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ad"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["LayoutOrder"] = 3;
G2L["ad"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["ae"] = Instance.new("Frame", G2L["ad"]);
G2L["ae"]["BorderSizePixel"] = 0;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["ae"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["ae"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ae"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["af"] = Instance.new("UICorner", G2L["ae"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["b0"] = Instance.new("TextLabel", G2L["ad"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["TextSize"] = 14;
G2L["b0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b0"]["TextTransparency"] = 0.25;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["BackgroundTransparency"] = 1;
G2L["b0"]["RichText"] = true;
G2L["b0"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Text"] = [[Connection]];
G2L["b0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b0"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["b1"] = Instance.new("UIPadding", G2L["ad"]);
G2L["b1"]["PaddingTop"] = UDim.new(0, 5);
G2L["b1"]["PaddingRight"] = UDim.new(0, 15);
G2L["b1"]["PaddingLeft"] = UDim.new(0, 15);
G2L["b1"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["b2"] = Instance.new("TextButton", G2L["a8"]);
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["TextSize"] = 14;
G2L["b2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b2"]["BackgroundTransparency"] = 0.95;
G2L["b2"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["b2"]["LayoutOrder"] = 2;
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Text"] = [[]];
G2L["b2"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b2"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["b4"] = Instance.new("Frame", G2L["b2"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["LayoutOrder"] = 3;
G2L["b4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["b5"] = Instance.new("Frame", G2L["b4"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["b5"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["b5"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b5"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["b7"] = Instance.new("TextLabel", G2L["b4"]);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["TextSize"] = 14;
G2L["b7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b7"]["TextTransparency"] = 0.25;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["BackgroundTransparency"] = 1;
G2L["b7"]["RichText"] = true;
G2L["b7"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Text"] = [[Credential]];
G2L["b7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b7"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["b8"] = Instance.new("UIPadding", G2L["b4"]);
G2L["b8"]["PaddingTop"] = UDim.new(0, 5);
G2L["b8"]["PaddingRight"] = UDim.new(0, 15);
G2L["b8"]["PaddingLeft"] = UDim.new(0, 15);
G2L["b8"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["b9"] = Instance.new("Frame", G2L["65"]);
G2L["b9"]["ZIndex"] = 2;
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Name"] = [[MaxStepFrame]];
G2L["b9"]["LayoutOrder"] = 3;
G2L["b9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["ba"] = Instance.new("TextLabel", G2L["b9"]);
G2L["ba"]["ZIndex"] = 0;
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["TextSize"] = 14;
G2L["ba"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["BackgroundTransparency"] = 1;
G2L["ba"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Text"] = [[Max Step]];
G2L["ba"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["ba"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["bb"] = Instance.new("Frame", G2L["b9"]);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["bb"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["bc"] = Instance.new("TextBox", G2L["bb"]);
G2L["bc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["TextSize"] = 14;
G2L["bc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bc"]["ClearTextOnFocus"] = false;
G2L["bc"]["ClipsDescendants"] = true;
G2L["bc"]["PlaceholderText"] = [[100]];
G2L["bc"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["bc"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Text"] = [[100]];
G2L["bc"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["bd"] = Instance.new("UICorner", G2L["bc"]);
G2L["bd"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bc"]);
G2L["be"]["PaddingTop"] = UDim.new(0, 10);
G2L["be"]["PaddingRight"] = UDim.new(0, 10);
G2L["be"]["PaddingLeft"] = UDim.new(0, 10);
G2L["be"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["bf"] = Instance.new("ImageButton", G2L["bc"]);
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundTransparency"] = 1;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["Image"] = [[rbxassetid://74363941121004]];
G2L["bf"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Name"] = [[ResetButton]];
G2L["bf"]["Rotation"] = -180;
G2L["bf"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["c0"] = Instance.new("UIPadding", G2L["b9"]);
G2L["c0"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["c1"] = Instance.new("UIListLayout", G2L["65"]);
G2L["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["c2"] = Instance.new("Frame", G2L["65"]);
G2L["c2"]["ZIndex"] = 2;
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Name"] = [[TemperatureFrame]];
G2L["c2"]["LayoutOrder"] = 4;
G2L["c2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["c3"] = Instance.new("TextLabel", G2L["c2"]);
G2L["c3"]["ZIndex"] = 0;
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["TextSize"] = 14;
G2L["c3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["BackgroundTransparency"] = 1;
G2L["c3"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["Text"] = [[Temperature]];
G2L["c3"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c3"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["c4"] = Instance.new("Frame", G2L["c2"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["c4"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["c5"] = Instance.new("TextBox", G2L["c4"]);
G2L["c5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["TextSize"] = 14;
G2L["c5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c5"]["ClearTextOnFocus"] = false;
G2L["c5"]["ClipsDescendants"] = true;
G2L["c5"]["PlaceholderText"] = [[100]];
G2L["c5"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["c5"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Text"] = [[1.0]];
G2L["c5"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["c6"] = Instance.new("UICorner", G2L["c5"]);
G2L["c6"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["c7"] = Instance.new("UIPadding", G2L["c5"]);
G2L["c7"]["PaddingTop"] = UDim.new(0, 10);
G2L["c7"]["PaddingRight"] = UDim.new(0, 10);
G2L["c7"]["PaddingLeft"] = UDim.new(0, 10);
G2L["c7"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["c8"] = Instance.new("ImageButton", G2L["c5"]);
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["BackgroundTransparency"] = 1;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["Image"] = [[rbxassetid://74363941121004]];
G2L["c8"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Name"] = [[ResetButton]];
G2L["c8"]["Rotation"] = -180;
G2L["c8"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["c9"] = Instance.new("UIPadding", G2L["c2"]);
G2L["c9"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["ca"] = Instance.new("Frame", G2L["65"]);
G2L["ca"]["ZIndex"] = 2;
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Name"] = [[SystemPromptFrame]];
G2L["ca"]["LayoutOrder"] = 4;
G2L["ca"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["cb"] = Instance.new("UIPadding", G2L["ca"]);
G2L["cb"]["PaddingTop"] = UDim.new(0, 5);
G2L["cb"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["cc"] = Instance.new("TextButton", G2L["ca"]);
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["TextSize"] = 17;
G2L["cc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cc"]["BackgroundTransparency"] = 0.95;
G2L["cc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["cd"] = Instance.new("UICorner", G2L["cc"]);
G2L["cd"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["ce"] = Instance.new("CanvasGroup", G2L["64"]);
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Size"] = UDim2.new(1, -10, 0, 35);
G2L["ce"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["cf"] = Instance.new("UICorner", G2L["ce"]);
G2L["cf"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["d0"] = Instance.new("TextLabel", G2L["ce"]);
G2L["d0"]["BorderSizePixel"] = 0;
G2L["d0"]["TextSize"] = 14;
G2L["d0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["BackgroundTransparency"] = 1;
G2L["d0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d0"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["d1"] = Instance.new("UIPadding", G2L["d0"]);
G2L["d1"]["PaddingTop"] = UDim.new(0, 5);
G2L["d1"]["PaddingRight"] = UDim.new(0, 5);
G2L["d1"]["PaddingLeft"] = UDim.new(0, 10);
G2L["d1"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["d2"] = Instance.new("TextButton", G2L["d0"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["TextSize"] = 14;
G2L["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["d2"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d2"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Text"] = [[Save changes]];
G2L["d2"]["Name"] = [[Save]];
G2L["d2"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["d3"] = Instance.new("UICorner", G2L["d2"]);
G2L["d3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["d4"] = Instance.new("TextButton", G2L["d0"]);
G2L["d4"]["RichText"] = true;
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["TextSize"] = 14;
G2L["d4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["d4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d4"]["BackgroundTransparency"] = 1;
G2L["d4"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Text"] = [[<u>Revert</u>]];
G2L["d4"]["Name"] = [[Revert]];
G2L["d4"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["d5"] = Instance.new("UICorner", G2L["d4"]);
G2L["d5"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["d6"] = Instance.new("UIPadding", G2L["64"]);
G2L["d6"]["PaddingTop"] = UDim.new(0, 10);
G2L["d6"]["PaddingRight"] = UDim.new(0, 10);
G2L["d6"]["PaddingLeft"] = UDim.new(0, 15);
G2L["d6"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["d7"] = Instance.new("Frame", G2L["11"]);
G2L["d7"]["Visible"] = false;
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Name"] = [[CodePage]];
G2L["d7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame
G2L["d8"] = Instance.new("Frame", G2L["d7"]);
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d8"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["Name"] = [[TopFrame]];
G2L["d8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame
G2L["d9"] = Instance.new("Frame", G2L["d8"]);
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["d9"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Name"] = [[ActionsFrame]];
G2L["d9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIGridLayout
G2L["da"] = Instance.new("UIGridLayout", G2L["d9"]);
G2L["da"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["da"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["da"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["da"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["da"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIPadding
G2L["db"] = Instance.new("UIPadding", G2L["d9"]);
G2L["db"]["PaddingTop"] = UDim.new(0, 5);
G2L["db"]["PaddingRight"] = UDim.new(0, 5);
G2L["db"]["PaddingLeft"] = UDim.new(0, 5);
G2L["db"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton
G2L["dc"] = Instance.new("TextButton", G2L["d9"]);
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextTransparency"] = 1;
G2L["dc"]["TextSize"] = 14;
G2L["dc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["BackgroundTransparency"] = 0.9;
G2L["dc"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["dc"]["LayoutOrder"] = 2;
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[Clear]];
G2L["dc"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.ImageLabel
G2L["dd"] = Instance.new("ImageLabel", G2L["dc"]);
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dd"]["ImageColor3"] = Color3.fromRGB(171, 100, 100);
G2L["dd"]["Image"] = [[rbxassetid://115957379627811]];
G2L["dd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UICorner
G2L["de"] = Instance.new("UICorner", G2L["dc"]);
G2L["de"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UIPadding
G2L["df"] = Instance.new("UIPadding", G2L["dc"]);
G2L["df"]["PaddingTop"] = UDim.new(0, 3);
G2L["df"]["PaddingRight"] = UDim.new(0, 3);
G2L["df"]["PaddingLeft"] = UDim.new(0, 3);
G2L["df"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton
G2L["e0"] = Instance.new("TextButton", G2L["d9"]);
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["TextTransparency"] = 1;
G2L["e0"]["TextSize"] = 14;
G2L["e0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e0"]["BackgroundTransparency"] = 0.9;
G2L["e0"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["e0"]["LayoutOrder"] = 1;
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Text"] = [[Copy]];
G2L["e0"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.ImageLabel
G2L["e1"] = Instance.new("ImageLabel", G2L["e0"]);
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["Image"] = [[rbxassetid://110180044304394]];
G2L["e1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UIPadding
G2L["e2"] = Instance.new("UIPadding", G2L["e0"]);
G2L["e2"]["PaddingTop"] = UDim.new(0, 5);
G2L["e2"]["PaddingRight"] = UDim.new(0, 5);
G2L["e2"]["PaddingLeft"] = UDim.new(0, 5);
G2L["e2"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UICorner
G2L["e3"] = Instance.new("UICorner", G2L["e0"]);
G2L["e3"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton
G2L["e4"] = Instance.new("TextButton", G2L["d9"]);
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["TextTransparency"] = 1;
G2L["e4"]["TextSize"] = 14;
G2L["e4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e4"]["BackgroundTransparency"] = 0.9;
G2L["e4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e4"]["Text"] = [[Run]];
G2L["e4"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.ImageLabel
G2L["e5"] = Instance.new("ImageLabel", G2L["e4"]);
G2L["e5"]["BorderSizePixel"] = 0;
G2L["e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["ImageColor3"] = Color3.fromRGB(86, 171, 0);
G2L["e5"]["Image"] = [[rbxassetid://135141271354749]];
G2L["e5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.UICorner
G2L["e6"] = Instance.new("UICorner", G2L["e4"]);
G2L["e6"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame
G2L["e7"] = Instance.new("Frame", G2L["d8"]);
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e7"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e7"]["Name"] = [[TabsFrame]];
G2L["e7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame
G2L["e8"] = Instance.new("ScrollingFrame", G2L["e7"]);
G2L["e8"]["Active"] = true;
G2L["e8"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["e8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e8"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.TabButton
G2L["e9"] = Instance.new("TextButton", G2L["e8"]);
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["TextSize"] = 14;
G2L["e9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["e9"]["BackgroundTransparency"] = 0.9;
G2L["e9"]["Size"] = UDim2.new(0, 39, 0, 20);
G2L["e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e9"]["Text"] = [[Tab 1]];
G2L["e9"]["Name"] = [[TabButton]];
G2L["e9"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIListLayout
G2L["ea"] = Instance.new("UIListLayout", G2L["e8"]);
G2L["ea"]["Padding"] = UDim.new(0, 2);
G2L["ea"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["ea"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIPadding
G2L["eb"] = Instance.new("UIPadding", G2L["e8"]);
G2L["eb"]["PaddingTop"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.NewTabButton
G2L["ec"] = Instance.new("TextButton", G2L["e8"]);
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["TextSize"] = 20;
G2L["ec"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["ec"]["BackgroundTransparency"] = 1;
G2L["ec"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["ec"]["LayoutOrder"] = 999;
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["Text"] = [[+]];
G2L["ec"]["Name"] = [[NewTabButton]];
G2L["ec"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.UIPadding
G2L["ed"] = Instance.new("UIPadding", G2L["e7"]);
G2L["ed"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["ee"] = Instance.new("UIListLayout", G2L["d7"]);
G2L["ee"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["ef"] = Instance.new("ScrollingFrame", G2L["d7"]);
G2L["ef"]["Active"] = true;
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["ef"]["ScrollBarImageTransparency"] = 0.8;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ef"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["ef"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["ScrollBarThickness"] = 4;
G2L["ef"]["LayoutOrder"] = 1;
G2L["ef"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["f0"] = Instance.new("UIListLayout", G2L["ef"]);
G2L["f0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["f0"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["f1"] = Instance.new("TextBox", G2L["ef"]);
G2L["f1"]["Name"] = [[CodeBox]];
G2L["f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["TextTransparency"] = 1;
G2L["f1"]["TextSize"] = 14;
G2L["f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f1"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["f1"]["MultiLine"] = true;
G2L["f1"]["ClearTextOnFocus"] = false;
G2L["f1"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["f1"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Text"] = [[print("Hello world!")]];
G2L["f1"]["LayoutOrder"] = 1;
G2L["f1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["f2"] = Instance.new("UIPadding", G2L["f1"]);
G2L["f2"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["f3"] = Instance.new("TextLabel", G2L["f1"]);
G2L["f3"]["BorderSizePixel"] = 0;
G2L["f3"]["TextSize"] = 14;
G2L["f3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f3"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f3"]["BackgroundTransparency"] = 1;
G2L["f3"]["RichText"] = true;
G2L["f3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f3"]["Text"] = [[]];
G2L["f3"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["f3"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["f4"] = Instance.new("TextLabel", G2L["ef"]);
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["TextSize"] = 14;
G2L["f4"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["BackgroundTransparency"] = 0.85;
G2L["f4"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Text"] = [[1]];
G2L["f4"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["f4"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["f5"] = Instance.new("UIPadding", G2L["f4"]);
G2L["f5"]["PaddingRight"] = UDim.new(0, 5);
G2L["f5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["f6"] = Instance.new("Frame", G2L["11"]);
G2L["f6"]["Visible"] = false;
G2L["f6"]["BorderSizePixel"] = 0;
G2L["f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f6"]["Name"] = [[ToolsPage]];
G2L["f6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["f7"] = Instance.new("ScrollingFrame", G2L["f6"]);
G2L["f7"]["Active"] = true;
G2L["f7"]["BorderSizePixel"] = 0;
G2L["f7"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["f7"]["Name"] = [[ScrollingFrameMainChat]];
G2L["f7"]["ScrollBarImageTransparency"] = 0.85;
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f7"]["ScrollBarThickness"] = 5;
G2L["f7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["f8"] = Instance.new("UIListLayout", G2L["f7"]);
G2L["f8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["f9"] = Instance.new("UIPadding", G2L["f7"]);
G2L["f9"]["PaddingTop"] = UDim.new(0, 5);
G2L["f9"]["PaddingRight"] = UDim.new(0, 5);
G2L["f9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["fa"] = Instance.new("Folder", G2L["f7"]);
G2L["fa"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["fb"] = Instance.new("Frame", G2L["fa"]);
G2L["fb"]["Visible"] = false;
G2L["fb"]["BorderSizePixel"] = 0;
G2L["fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fb"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fb"]["Name"] = [[GroupFrame]];
G2L["fb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["fc"] = Instance.new("UIPadding", G2L["fb"]);
G2L["fc"]["PaddingTop"] = UDim.new(0, 5);
G2L["fc"]["PaddingRight"] = UDim.new(0, 5);
G2L["fc"]["PaddingLeft"] = UDim.new(0, 5);
G2L["fc"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["fd"] = Instance.new("Frame", G2L["fb"]);
G2L["fd"]["BorderSizePixel"] = 0;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fd"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fd"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["fe"] = Instance.new("TextLabel", G2L["fd"]);
G2L["fe"]["TextWrapped"] = true;
G2L["fe"]["BorderSizePixel"] = 0;
G2L["fe"]["TextSize"] = 15;
G2L["fe"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["fe"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["BackgroundTransparency"] = 1;
G2L["fe"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["Text"] = [[Group Title]];
G2L["fe"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fe"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["ff"] = Instance.new("UICorner", G2L["fd"]);
G2L["ff"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["100"] = Instance.new("UIListLayout", G2L["fd"]);
G2L["100"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["101"] = Instance.new("UIPadding", G2L["fd"]);
G2L["101"]["PaddingTop"] = UDim.new(0, 10);
G2L["101"]["PaddingRight"] = UDim.new(0, 10);
G2L["101"]["PaddingLeft"] = UDim.new(0, 10);
G2L["101"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["102"] = Instance.new("Frame", G2L["fd"]);
G2L["102"]["BorderSizePixel"] = 0;
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["102"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["102"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["102"]["Name"] = [[ToolFrame]];
G2L["102"]["LayoutOrder"] = 2;
G2L["102"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["103"] = Instance.new("Frame", G2L["102"]);
G2L["103"]["BorderSizePixel"] = 0;
G2L["103"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["103"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["103"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["103"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["103"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["104"] = Instance.new("UICorner", G2L["103"]);
G2L["104"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["105"] = Instance.new("TextLabel", G2L["102"]);
G2L["105"]["TextWrapped"] = true;
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["TextSize"] = 14;
G2L["105"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["105"]["TextTransparency"] = 0.25;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["105"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["BackgroundTransparency"] = 1;
G2L["105"]["RichText"] = true;
G2L["105"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Text"] = [[Tool Name]];
G2L["105"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["105"]["Name"] = [[ToolNameDesc]];
G2L["105"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["106"] = Instance.new("UIPadding", G2L["102"]);
G2L["106"]["PaddingTop"] = UDim.new(0, 5);
G2L["106"]["PaddingRight"] = UDim.new(0, 15);
G2L["106"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["107"] = Instance.new("IntValue", G2L["f7"]);
G2L["107"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["108"] = Instance.new("TextLabel", G2L["f7"]);
G2L["108"]["TextWrapped"] = true;
G2L["108"]["BorderSizePixel"] = 0;
G2L["108"]["TextSize"] = 20;
G2L["108"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["108"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["BackgroundTransparency"] = 1;
G2L["108"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["108"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["108"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["108"]["LayoutOrder"] = -1;
G2L["108"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["108"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["109"] = Instance.new("UIPadding", G2L["108"]);
G2L["109"]["PaddingTop"] = UDim.new(0, 5);
G2L["109"]["PaddingRight"] = UDim.new(0, 15);
G2L["109"]["PaddingLeft"] = UDim.new(0, 15);
G2L["109"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["10a"] = Instance.new("Frame", G2L["11"]);
G2L["10a"]["Visible"] = false;
G2L["10a"]["BorderSizePixel"] = 0;
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["Name"] = [[TemplatePage]];
G2L["10a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["10b"] = Instance.new("Frame", G2L["11"]);
G2L["10b"]["Visible"] = false;
G2L["10b"]["BorderSizePixel"] = 0;
G2L["10b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10b"]["Name"] = [[StartupPage]];
G2L["10b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["10c"] = Instance.new("ScrollingFrame", G2L["10b"]);
G2L["10c"]["Active"] = true;
G2L["10c"]["BorderSizePixel"] = 0;
G2L["10c"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["10c"]["Name"] = [[ScrollingFrameMainChat]];
G2L["10c"]["ScrollBarImageTransparency"] = 0.85;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10c"]["ScrollBarThickness"] = 5;
G2L["10c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["10d"] = Instance.new("UIListLayout", G2L["10c"]);
G2L["10d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["10e"] = Instance.new("UIPadding", G2L["10c"]);
G2L["10e"]["PaddingTop"] = UDim.new(0, 5);
G2L["10e"]["PaddingRight"] = UDim.new(0, 5);
G2L["10e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["10f"] = Instance.new("Folder", G2L["10c"]);
G2L["10f"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["110"] = Instance.new("Frame", G2L["10f"]);
G2L["110"]["Visible"] = false;
G2L["110"]["BorderSizePixel"] = 0;
G2L["110"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["110"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["110"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["110"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["110"]["Name"] = [[GroupFrame]];
G2L["110"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["111"] = Instance.new("UIPadding", G2L["110"]);
G2L["111"]["PaddingTop"] = UDim.new(0, 5);
G2L["111"]["PaddingRight"] = UDim.new(0, 5);
G2L["111"]["PaddingLeft"] = UDim.new(0, 5);
G2L["111"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["112"] = Instance.new("Frame", G2L["110"]);
G2L["112"]["BorderSizePixel"] = 0;
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["112"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["112"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["112"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["113"] = Instance.new("TextLabel", G2L["112"]);
G2L["113"]["TextWrapped"] = true;
G2L["113"]["BorderSizePixel"] = 0;
G2L["113"]["TextSize"] = 15;
G2L["113"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["113"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["113"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["BackgroundTransparency"] = 1;
G2L["113"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["113"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["113"]["Text"] = [[Group Title]];
G2L["113"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["113"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["114"] = Instance.new("UICorner", G2L["112"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["115"] = Instance.new("UIListLayout", G2L["112"]);
G2L["115"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["116"] = Instance.new("UIPadding", G2L["112"]);
G2L["116"]["PaddingTop"] = UDim.new(0, 10);
G2L["116"]["PaddingRight"] = UDim.new(0, 10);
G2L["116"]["PaddingLeft"] = UDim.new(0, 10);
G2L["116"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["117"] = Instance.new("Frame", G2L["112"]);
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["117"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["117"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["117"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["117"]["Name"] = [[ToolFrame]];
G2L["117"]["LayoutOrder"] = 2;
G2L["117"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["118"] = Instance.new("Frame", G2L["117"]);
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["118"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["118"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["118"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["118"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["119"] = Instance.new("UICorner", G2L["118"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["11a"] = Instance.new("TextLabel", G2L["117"]);
G2L["11a"]["TextWrapped"] = true;
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["TextSize"] = 14;
G2L["11a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11a"]["TextTransparency"] = 0.25;
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11a"]["BackgroundTransparency"] = 1;
G2L["11a"]["RichText"] = true;
G2L["11a"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["11a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["Text"] = [[Tool Name]];
G2L["11a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11a"]["Name"] = [[ToolNameDesc]];
G2L["11a"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["11b"] = Instance.new("UIPadding", G2L["117"]);
G2L["11b"]["PaddingTop"] = UDim.new(0, 5);
G2L["11b"]["PaddingRight"] = UDim.new(0, 15);
G2L["11b"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["11c"] = Instance.new("IntValue", G2L["10c"]);
G2L["11c"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["11d"] = Instance.new("TextLabel", G2L["10c"]);
G2L["11d"]["TextWrapped"] = true;
G2L["11d"]["BorderSizePixel"] = 0;
G2L["11d"]["TextSize"] = 20;
G2L["11d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["11d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11d"]["BackgroundTransparency"] = 1;
G2L["11d"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["11d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11d"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["11d"]["LayoutOrder"] = -1;
G2L["11d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11d"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["11e"] = Instance.new("UIPadding", G2L["11d"]);
G2L["11e"]["PaddingTop"] = UDim.new(0, 5);
G2L["11e"]["PaddingRight"] = UDim.new(0, 15);
G2L["11e"]["PaddingLeft"] = UDim.new(0, 15);
G2L["11e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["11f"] = Instance.new("Frame", G2L["11"]);
G2L["11f"]["Visible"] = false;
G2L["11f"]["BorderSizePixel"] = 0;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11f"]["Name"] = [[HistoryPage]];
G2L["11f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
G2L["120"] = Instance.new("ScrollingFrame", G2L["11f"]);
G2L["120"]["Active"] = true;
G2L["120"]["BorderSizePixel"] = 0;
G2L["120"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["120"]["Name"] = [[ScrollingFrameMainChat]];
G2L["120"]["ScrollBarImageTransparency"] = 0.85;
G2L["120"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["120"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["120"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["120"]["ScrollBarThickness"] = 5;
G2L["120"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["121"] = Instance.new("UIListLayout", G2L["120"]);
G2L["121"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["122"] = Instance.new("UIPadding", G2L["120"]);
G2L["122"]["PaddingTop"] = UDim.new(0, 5);
G2L["122"]["PaddingRight"] = UDim.new(0, 5);
G2L["122"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["123"] = Instance.new("Folder", G2L["120"]);
G2L["123"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["124"] = Instance.new("Frame", G2L["123"]);
G2L["124"]["Visible"] = false;
G2L["124"]["BorderSizePixel"] = 0;
G2L["124"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["124"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["124"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["124"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["Name"] = [[GroupFrame]];
G2L["124"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["125"] = Instance.new("UIPadding", G2L["124"]);
G2L["125"]["PaddingTop"] = UDim.new(0, 5);
G2L["125"]["PaddingRight"] = UDim.new(0, 5);
G2L["125"]["PaddingLeft"] = UDim.new(0, 5);
G2L["125"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["126"] = Instance.new("Frame", G2L["124"]);
G2L["126"]["BorderSizePixel"] = 0;
G2L["126"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["126"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["126"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["126"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["127"] = Instance.new("UICorner", G2L["126"]);
G2L["127"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["128"] = Instance.new("UIPadding", G2L["126"]);
G2L["128"]["PaddingTop"] = UDim.new(0, 10);
G2L["128"]["PaddingRight"] = UDim.new(0, 10);
G2L["128"]["PaddingLeft"] = UDim.new(0, 10);
G2L["128"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["129"] = Instance.new("Frame", G2L["126"]);
G2L["129"]["BorderSizePixel"] = 0;
G2L["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["129"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["129"]["Name"] = [[Left]];
G2L["129"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["12a"] = Instance.new("UIListLayout", G2L["129"]);
G2L["12a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["12b"] = Instance.new("Frame", G2L["129"]);
G2L["12b"]["BorderSizePixel"] = 0;
G2L["12b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["12b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["12b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["Name"] = [[ToolsRowFrame]];
G2L["12b"]["LayoutOrder"] = 2;
G2L["12b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["12c"] = Instance.new("UIListLayout", G2L["12b"]);
G2L["12c"]["Padding"] = UDim.new(0, 5);
G2L["12c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["12c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["12d"] = Instance.new("Frame", G2L["12b"]);
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["12d"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["Name"] = [[ToolFrame]];
G2L["12d"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["12e"] = Instance.new("Frame", G2L["12d"]);
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["12e"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["12e"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["12f"] = Instance.new("UICorner", G2L["12e"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["130"] = Instance.new("UICorner", G2L["12d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["131"] = Instance.new("TextLabel", G2L["12d"]);
G2L["131"]["TextWrapped"] = true;
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["TextSize"] = 14;
G2L["131"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["131"]["TextTransparency"] = 0.25;
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["131"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["BackgroundTransparency"] = 1;
G2L["131"]["RichText"] = true;
G2L["131"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["131"]["Text"] = [[Tool Name]];
G2L["131"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["131"]["Name"] = [[ToolName]];
G2L["131"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["132"] = Instance.new("UIPadding", G2L["12d"]);
G2L["132"]["PaddingTop"] = UDim.new(0, 5);
G2L["132"]["PaddingRight"] = UDim.new(0, 7);
G2L["132"]["PaddingLeft"] = UDim.new(0, 7);
G2L["132"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["133"] = Instance.new("UIPadding", G2L["12b"]);
G2L["133"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["134"] = Instance.new("TextLabel", G2L["129"]);
G2L["134"]["TextWrapped"] = true;
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["TextSize"] = 15;
G2L["134"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["134"]["TextTransparency"] = 0.5;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["134"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["BackgroundTransparency"] = 1;
G2L["134"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["134"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["134"]["Text"] = [[0 messages]];
G2L["134"]["LayoutOrder"] = 1;
G2L["134"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["134"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["135"] = Instance.new("TextLabel", G2L["129"]);
G2L["135"]["TextWrapped"] = true;
G2L["135"]["BorderSizePixel"] = 0;
G2L["135"]["TextSize"] = 15;
G2L["135"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["135"]["TextTransparency"] = 0.5;
G2L["135"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["135"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["BackgroundTransparency"] = 1;
G2L["135"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["135"]["Text"] = [[Timestamp]];
G2L["135"]["LayoutOrder"] = 999;
G2L["135"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["135"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["136"] = Instance.new("Frame", G2L["129"]);
G2L["136"]["BorderSizePixel"] = 0;
G2L["136"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["136"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["136"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["136"]["Name"] = [[TopRowFrame]];
G2L["136"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["137"] = Instance.new("TextLabel", G2L["136"]);
G2L["137"]["TextWrapped"] = true;
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["TextSize"] = 15;
G2L["137"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["137"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["BackgroundTransparency"] = 1;
G2L["137"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["Text"] = [[Title]];
G2L["137"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["137"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["138"] = Instance.new("UIListLayout", G2L["136"]);
G2L["138"]["Padding"] = UDim.new(0, 5);
G2L["138"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["138"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["139"] = Instance.new("Frame", G2L["136"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["139"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["139"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["13a"] = Instance.new("TextLabel", G2L["139"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["TextSize"] = 14;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13a"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["13a"]["BackgroundTransparency"] = 1;
G2L["13a"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Text"] = [[Active]];
G2L["13a"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["13b"] = Instance.new("UIPadding", G2L["13a"]);
G2L["13b"]["PaddingRight"] = UDim.new(0, 5);
G2L["13b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["13c"] = Instance.new("UICorner", G2L["139"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["13d"] = Instance.new("Frame", G2L["126"]);
G2L["13d"]["BorderSizePixel"] = 0;
G2L["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["13d"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["13d"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["13d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13d"]["Name"] = [[Right]];
G2L["13d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["13e"] = Instance.new("UIGridLayout", G2L["13d"]);
G2L["13e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["13e"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["13e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["13f"] = Instance.new("TextButton", G2L["13d"]);
G2L["13f"]["BorderSizePixel"] = 0;
G2L["13f"]["TextSize"] = 14;
G2L["13f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13f"]["BackgroundTransparency"] = 0.85;
G2L["13f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["13f"]["LayoutOrder"] = 1;
G2L["13f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["Text"] = [[]];
G2L["13f"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["140"] = Instance.new("UICorner", G2L["13f"]);
G2L["140"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["141"] = Instance.new("ImageLabel", G2L["13f"]);
G2L["141"]["BorderSizePixel"] = 0;
G2L["141"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["141"]["Image"] = [[rbxassetid://98174359243805]];
G2L["141"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["141"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["141"]["BackgroundTransparency"] = 1;
G2L["141"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["142"] = Instance.new("UIPadding", G2L["13f"]);
G2L["142"]["PaddingTop"] = UDim.new(0, 3);
G2L["142"]["PaddingRight"] = UDim.new(0, 1);
G2L["142"]["PaddingLeft"] = UDim.new(0, 3);
G2L["142"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["143"] = Instance.new("TextButton", G2L["13d"]);
G2L["143"]["BorderSizePixel"] = 0;
G2L["143"]["TextSize"] = 14;
G2L["143"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["143"]["BackgroundTransparency"] = 0.85;
G2L["143"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["143"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["Text"] = [[]];
G2L["143"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["144"] = Instance.new("UICorner", G2L["143"]);
G2L["144"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["145"] = Instance.new("ImageLabel", G2L["143"]);
G2L["145"]["BorderSizePixel"] = 0;
G2L["145"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["145"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["145"]["Image"] = [[rbxassetid://115957379627811]];
G2L["145"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["145"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["145"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["146"] = Instance.new("UIPadding", G2L["143"]);
G2L["146"]["PaddingTop"] = UDim.new(0, 3);
G2L["146"]["PaddingRight"] = UDim.new(0, 3);
G2L["146"]["PaddingLeft"] = UDim.new(0, 3);
G2L["146"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["147"] = Instance.new("IntValue", G2L["120"]);
G2L["147"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["148"] = Instance.new("TextLabel", G2L["120"]);
G2L["148"]["TextWrapped"] = true;
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["TextSize"] = 20;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["148"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["BackgroundTransparency"] = 1;
G2L["148"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["Text"] = [[Conversation history]];
G2L["148"]["LayoutOrder"] = -1;
G2L["148"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["148"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["149"] = Instance.new("UIPadding", G2L["148"]);
G2L["149"]["PaddingTop"] = UDim.new(0, 5);
G2L["149"]["PaddingRight"] = UDim.new(0, 15);
G2L["149"]["PaddingLeft"] = UDim.new(0, 15);
G2L["149"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage
G2L["14a"] = Instance.new("Frame", G2L["11"]);
G2L["14a"]["Visible"] = false;
G2L["14a"]["BorderSizePixel"] = 0;
G2L["14a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14a"]["Name"] = [[BrowserPage]];
G2L["14a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer
G2L["14b"] = Instance.new("Frame", G2L["14a"]);
G2L["14b"]["BorderSizePixel"] = 0;
G2L["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14b"]["Size"] = UDim2.new(1, 0, 0, 200);
G2L["14b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14b"]["Name"] = [[PlatformsContainer]];
G2L["14b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["14c"] = Instance.new("Frame", G2L["14b"]);
G2L["14c"]["BorderSizePixel"] = 0;
G2L["14c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["14c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["14d"] = Instance.new("UIListLayout", G2L["14c"]);
G2L["14d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["14d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["14e"] = Instance.new("ImageLabel", G2L["14c"]);
G2L["14e"]["BorderSizePixel"] = 0;
G2L["14e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14e"]["Image"] = [[rbxassetid://73464751831922]];
G2L["14e"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["14e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["14f"] = Instance.new("TextLabel", G2L["14c"]);
G2L["14f"]["BorderSizePixel"] = 0;
G2L["14f"]["TextSize"] = 20;
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["BackgroundTransparency"] = 1;
G2L["14f"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["14f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14f"]["Text"] = [[You]];
G2L["14f"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["150"] = Instance.new("Frame", G2L["14c"]);
G2L["150"]["BorderSizePixel"] = 0;
G2L["150"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["150"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["150"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["150"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["150"]["Name"] = [[IconColor]];
G2L["150"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["151"] = Instance.new("UICorner", G2L["150"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.UIGridLayout
G2L["152"] = Instance.new("UIGridLayout", G2L["14b"]);
G2L["152"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["152"]["CellSize"] = UDim2.new(0, 175, 0, 100);
G2L["152"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["152"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["153"] = Instance.new("Frame", G2L["14b"]);
G2L["153"]["BorderSizePixel"] = 0;
G2L["153"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["153"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["153"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["153"]["LayoutOrder"] = 1;
G2L["153"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["154"] = Instance.new("UIListLayout", G2L["153"]);
G2L["154"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["154"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["155"] = Instance.new("ImageLabel", G2L["153"]);
G2L["155"]["BorderSizePixel"] = 0;
G2L["155"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["Image"] = [[rbxassetid://131600704891794]];
G2L["155"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["155"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["155"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["156"] = Instance.new("TextLabel", G2L["153"]);
G2L["156"]["BorderSizePixel"] = 0;
G2L["156"]["TextSize"] = 20;
G2L["156"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["156"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["156"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["156"]["BackgroundTransparency"] = 1;
G2L["156"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["156"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["156"]["Text"] = [[Bridge]];
G2L["156"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["157"] = Instance.new("Frame", G2L["153"]);
G2L["157"]["BorderSizePixel"] = 0;
G2L["157"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["157"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["157"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["157"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["157"]["Name"] = [[IconColor]];
G2L["157"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["158"] = Instance.new("UICorner", G2L["157"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["159"] = Instance.new("Frame", G2L["14b"]);
G2L["159"]["BorderSizePixel"] = 0;
G2L["159"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["159"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["159"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["159"]["LayoutOrder"] = 2;
G2L["159"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["15a"] = Instance.new("UIListLayout", G2L["159"]);
G2L["15a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["15a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["15b"] = Instance.new("ImageLabel", G2L["159"]);
G2L["15b"]["BorderSizePixel"] = 0;
G2L["15b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15b"]["Image"] = [[rbxassetid://90807079339617]];
G2L["15b"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["15b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["15c"] = Instance.new("TextLabel", G2L["159"]);
G2L["15c"]["BorderSizePixel"] = 0;
G2L["15c"]["TextSize"] = 20;
G2L["15c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["15c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15c"]["BackgroundTransparency"] = 1;
G2L["15c"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["15c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15c"]["Text"] = [[Web]];
G2L["15c"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["15d"] = Instance.new("Frame", G2L["159"]);
G2L["15d"]["BorderSizePixel"] = 0;
G2L["15d"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["15d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["15d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["15d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15d"]["Name"] = [[IconColor]];
G2L["15d"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["15e"] = Instance.new("UICorner", G2L["15d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip
G2L["15f"] = Instance.new("TextLabel", G2L["14a"]);
G2L["15f"]["TextWrapped"] = true;
G2L["15f"]["BorderSizePixel"] = 0;
G2L["15f"]["TextSize"] = 20;
G2L["15f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["15f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["BackgroundTransparency"] = 1;
G2L["15f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["15f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15f"]["Text"] = [[You can connect IYAI to your browser]];
G2L["15f"]["LayoutOrder"] = -1;
G2L["15f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15f"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip.UIPadding
G2L["160"] = Instance.new("UIPadding", G2L["15f"]);
G2L["160"]["PaddingTop"] = UDim.new(0, 5);
G2L["160"]["PaddingRight"] = UDim.new(0, 15);
G2L["160"]["PaddingLeft"] = UDim.new(0, 15);
G2L["160"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.UIPadding
G2L["161"] = Instance.new("UIPadding", G2L["14a"]);
G2L["161"]["PaddingTop"] = UDim.new(0, 5);
G2L["161"]["PaddingRight"] = UDim.new(0, 5);
G2L["161"]["PaddingLeft"] = UDim.new(0, 5);
G2L["161"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer
G2L["162"] = Instance.new("Frame", G2L["14a"]);
G2L["162"]["BorderSizePixel"] = 0;
G2L["162"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["162"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["162"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["162"]["Name"] = [[ShimmerContainer]];
G2L["162"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1
G2L["163"] = Instance.new("Frame", G2L["162"]);
G2L["163"]["BorderSizePixel"] = 0;
G2L["163"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["163"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["163"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["163"]["Name"] = [[Shimmer1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UICorner
G2L["164"] = Instance.new("UICorner", G2L["163"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UIGradient
G2L["165"] = Instance.new("UIGradient", G2L["163"]);
G2L["165"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["165"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.UIGridLayout
G2L["166"] = Instance.new("UIGridLayout", G2L["162"]);
G2L["166"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["166"]["CellSize"] = UDim2.new(0, 75, 0, 3);
G2L["166"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["166"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["166"]["CellPadding"] = UDim2.new(0, 105, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2
G2L["167"] = Instance.new("Frame", G2L["162"]);
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Name"] = [[Shimmer2]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UICorner
G2L["168"] = Instance.new("UICorner", G2L["167"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UIGradient
G2L["169"] = Instance.new("UIGradient", G2L["167"]);
G2L["169"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["169"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer
G2L["16a"] = Instance.new("Frame", G2L["14a"]);
G2L["16a"]["BorderSizePixel"] = 0;
G2L["16a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16a"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["16a"]["Position"] = UDim2.new(0, 0, 0, 175);
G2L["16a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16a"]["Name"] = [[InstructionsContainer]];
G2L["16a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIListLayout
G2L["16b"] = Instance.new("UIListLayout", G2L["16a"]);
G2L["16b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIPadding
G2L["16c"] = Instance.new("UIPadding", G2L["16a"]);
G2L["16c"]["PaddingTop"] = UDim.new(0, 10);
G2L["16c"]["PaddingRight"] = UDim.new(0, 10);
G2L["16c"]["PaddingLeft"] = UDim.new(0, 10);
G2L["16c"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1
G2L["16d"] = Instance.new("Frame", G2L["16a"]);
G2L["16d"]["BorderSizePixel"] = 0;
G2L["16d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16d"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["16d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16d"]["Name"] = [[Frame1]];
G2L["16d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.UIListLayout
G2L["16e"] = Instance.new("UIListLayout", G2L["16d"]);
G2L["16e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.TextLabel
G2L["16f"] = Instance.new("TextLabel", G2L["16d"]);
G2L["16f"]["BorderSizePixel"] = 0;
G2L["16f"]["TextSize"] = 17;
G2L["16f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["16f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["16f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16f"]["BackgroundTransparency"] = 1;
G2L["16f"]["RichText"] = true;
G2L["16f"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["16f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16f"]["Text"] = [[<b>1.</b> Download and run bridge (<font color="#aa6b6b">iyai_bridge.py</font> or <font color="#aa6b6b">iyai_bridge.ps1</font>) from]];
G2L["16f"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton
G2L["170"] = Instance.new("TextButton", G2L["16d"]);
G2L["170"]["BorderSizePixel"] = 0;
G2L["170"]["TextSize"] = 17;
G2L["170"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["170"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["170"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["170"]["BackgroundTransparency"] = 1;
G2L["170"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["170"]["Size"] = UDim2.new(0, 32, 0, 25);
G2L["170"]["LayoutOrder"] = 1;
G2L["170"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["170"]["Text"] = [[here]];
G2L["170"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton.Value
G2L["171"] = Instance.new("StringValue", G2L["170"]);
G2L["171"]["Value"] = [[https://github.com/imluri/IYAI]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2
G2L["172"] = Instance.new("Frame", G2L["16a"]);
G2L["172"]["BorderSizePixel"] = 0;
G2L["172"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["172"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["172"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["172"]["Name"] = [[Frame2]];
G2L["172"]["LayoutOrder"] = 1;
G2L["172"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.UIListLayout
G2L["173"] = Instance.new("UIListLayout", G2L["172"]);
G2L["173"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["173"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["174"] = Instance.new("TextLabel", G2L["172"]);
G2L["174"]["BorderSizePixel"] = 0;
G2L["174"]["TextSize"] = 17;
G2L["174"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["174"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["174"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["174"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["174"]["BackgroundTransparency"] = 1;
G2L["174"]["RichText"] = true;
G2L["174"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["174"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["174"]["Text"] = [[<b>2.</b>]];
G2L["174"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton
G2L["175"] = Instance.new("TextButton", G2L["172"]);
G2L["175"]["BorderSizePixel"] = 0;
G2L["175"]["TextSize"] = 17;
G2L["175"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["175"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["175"]["BackgroundTransparency"] = 1;
G2L["175"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["175"]["Size"] = UDim2.new(0, 58, 0, 25);
G2L["175"]["LayoutOrder"] = 1;
G2L["175"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["175"]["Text"] = [[Copy link]];
G2L["175"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton.Value
G2L["176"] = Instance.new("StringValue", G2L["175"]);
G2L["176"]["Value"] = [[https://imluri.github.io/iyai]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["177"] = Instance.new("TextLabel", G2L["172"]);
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["TextSize"] = 17;
G2L["177"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["177"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["BackgroundTransparency"] = 1;
G2L["177"]["RichText"] = true;
G2L["177"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["Text"] = [[and paste into your browser]];
G2L["177"]["LayoutOrder"] = 2;
G2L["177"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton
G2L["178"] = Instance.new("TextButton", G2L["14a"]);
G2L["178"]["BorderSizePixel"] = 0;
G2L["178"]["TextSize"] = 23;
G2L["178"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["178"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["178"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["178"]["BackgroundTransparency"] = 0.95;
G2L["178"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["178"]["LayoutOrder"] = 1;
G2L["178"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["178"]["Text"] = [[Open Logs]];
G2L["178"]["Name"] = [[OpenBrowserLogsButton]];
G2L["178"]["Position"] = UDim2.new(0, 0, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton.UICorner
G2L["179"] = Instance.new("UICorner", G2L["178"]);
G2L["179"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton
G2L["17a"] = Instance.new("TextButton", G2L["14a"]);
G2L["17a"]["BorderSizePixel"] = 0;
G2L["17a"]["TextSize"] = 23;
G2L["17a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17a"]["BackgroundTransparency"] = 0.95;
G2L["17a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["17a"]["LayoutOrder"] = 1;
G2L["17a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17a"]["Text"] = [[Force Refresh]];
G2L["17a"]["Name"] = [[ForceRefreshButton]];
G2L["17a"]["Position"] = UDim2.new(0, 0, 1, -65);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton.UICorner
G2L["17b"] = Instance.new("UICorner", G2L["17a"]);
G2L["17b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage
G2L["17c"] = Instance.new("Frame", G2L["11"]);
G2L["17c"]["Visible"] = false;
G2L["17c"]["BorderSizePixel"] = 0;
G2L["17c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17c"]["Name"] = [[SkillsPage]];
G2L["17c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat
G2L["17d"] = Instance.new("ScrollingFrame", G2L["17c"]);
G2L["17d"]["Active"] = true;
G2L["17d"]["BorderSizePixel"] = 0;
G2L["17d"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["17d"]["Name"] = [[ScrollingFrameMainChat]];
G2L["17d"]["ScrollBarImageTransparency"] = 0.85;
G2L["17d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17d"]["ScrollBarThickness"] = 5;
G2L["17d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIListLayout
G2L["17e"] = Instance.new("UIListLayout", G2L["17d"]);
G2L["17e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIPadding
G2L["17f"] = Instance.new("UIPadding", G2L["17d"]);
G2L["17f"]["PaddingTop"] = UDim.new(0, 5);
G2L["17f"]["PaddingRight"] = UDim.new(0, 5);
G2L["17f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate
G2L["180"] = Instance.new("Folder", G2L["17d"]);
G2L["180"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["181"] = Instance.new("Frame", G2L["180"]);
G2L["181"]["Visible"] = false;
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["181"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["Name"] = [[GroupFrame]];
G2L["181"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["182"] = Instance.new("UIPadding", G2L["181"]);
G2L["182"]["PaddingTop"] = UDim.new(0, 5);
G2L["182"]["PaddingRight"] = UDim.new(0, 5);
G2L["182"]["PaddingLeft"] = UDim.new(0, 5);
G2L["182"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["183"] = Instance.new("Frame", G2L["181"]);
G2L["183"]["BorderSizePixel"] = 0;
G2L["183"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["183"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["183"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["183"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["183"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["184"] = Instance.new("UICorner", G2L["183"]);
G2L["184"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["185"] = Instance.new("UIPadding", G2L["183"]);
G2L["185"]["PaddingTop"] = UDim.new(0, 10);
G2L["185"]["PaddingRight"] = UDim.new(0, 10);
G2L["185"]["PaddingLeft"] = UDim.new(0, 10);
G2L["185"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["186"] = Instance.new("Frame", G2L["183"]);
G2L["186"]["BorderSizePixel"] = 0;
G2L["186"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["186"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["186"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["186"]["Name"] = [[Left]];
G2L["186"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["187"] = Instance.new("UIListLayout", G2L["186"]);
G2L["187"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.DescriptionLabel
G2L["188"] = Instance.new("TextLabel", G2L["186"]);
G2L["188"]["TextWrapped"] = true;
G2L["188"]["BorderSizePixel"] = 0;
G2L["188"]["TextSize"] = 15;
G2L["188"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["188"]["TextTransparency"] = 0.5;
G2L["188"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["188"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["BackgroundTransparency"] = 1;
G2L["188"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["188"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["188"]["Text"] = [[Description]];
G2L["188"]["LayoutOrder"] = 1;
G2L["188"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["188"]["Name"] = [[DescriptionLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["189"] = Instance.new("Frame", G2L["186"]);
G2L["189"]["BorderSizePixel"] = 0;
G2L["189"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["189"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["189"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["Name"] = [[TopRowFrame]];
G2L["189"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.SkillLabel
G2L["18a"] = Instance.new("TextLabel", G2L["189"]);
G2L["18a"]["TextWrapped"] = true;
G2L["18a"]["BorderSizePixel"] = 0;
G2L["18a"]["TextSize"] = 15;
G2L["18a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["BackgroundTransparency"] = 1;
G2L["18a"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["18a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18a"]["Text"] = [[Skill]];
G2L["18a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["18a"]["Name"] = [[SkillLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["18b"] = Instance.new("UIListLayout", G2L["189"]);
G2L["18b"]["Padding"] = UDim.new(0, 5);
G2L["18b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["18b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["18c"] = Instance.new("Frame", G2L["183"]);
G2L["18c"]["BorderSizePixel"] = 0;
G2L["18c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["18c"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["18c"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["18c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18c"]["Name"] = [[Right]];
G2L["18c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["18d"] = Instance.new("UIGridLayout", G2L["18c"]);
G2L["18d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["18d"]["CellSize"] = UDim2.new(0, 40, 0, 40);
G2L["18d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer
G2L["18e"] = Instance.new("Frame", G2L["18c"]);
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18e"]["Position"] = UDim2.new(0.5, -50, 0, 0);
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["Name"] = [[ToggleContainer]];
G2L["18e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG
G2L["18f"] = Instance.new("Frame", G2L["18e"]);
G2L["18f"]["BorderSizePixel"] = 0;
G2L["18f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["18f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18f"]["Name"] = [[BG]];
G2L["18f"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.UICorner
G2L["190"] = Instance.new("UICorner", G2L["18f"]);
G2L["190"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button
G2L["191"] = Instance.new("TextButton", G2L["18f"]);
G2L["191"]["BorderSizePixel"] = 0;
G2L["191"]["TextSize"] = 14;
G2L["191"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["191"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["191"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["191"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["Text"] = [[]];
G2L["191"]["Name"] = [[Button]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button.UICorner
G2L["192"] = Instance.new("UICorner", G2L["191"]);
G2L["192"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.TotalElements
G2L["193"] = Instance.new("IntValue", G2L["17d"]);
G2L["193"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip
G2L["194"] = Instance.new("TextLabel", G2L["17d"]);
G2L["194"]["TextWrapped"] = true;
G2L["194"]["BorderSizePixel"] = 0;
G2L["194"]["TextSize"] = 20;
G2L["194"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["194"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["194"]["BackgroundTransparency"] = 1;
G2L["194"]["RichText"] = true;
G2L["194"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["194"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["194"]["Text"] = [[The AI references these guides when handling complex tasks.<br />Add your own to extend its knowledge.]];
G2L["194"]["LayoutOrder"] = -2;
G2L["194"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["194"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["195"] = Instance.new("UIPadding", G2L["194"]);
G2L["195"]["PaddingTop"] = UDim.new(0, 5);
G2L["195"]["PaddingRight"] = UDim.new(0, 15);
G2L["195"]["PaddingLeft"] = UDim.new(0, 15);
G2L["195"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame
G2L["196"] = Instance.new("Frame", G2L["17d"]);
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["196"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["196"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["LayoutOrder"] = -1;
G2L["196"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshButton
G2L["197"] = Instance.new("ImageButton", G2L["196"]);
G2L["197"]["BorderSizePixel"] = 0;
G2L["197"]["BackgroundTransparency"] = 1;
G2L["197"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["197"]["Image"] = [[rbxassetid://74363941121004]];
G2L["197"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["197"]["LayoutOrder"] = -1;
G2L["197"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["197"]["Name"] = [[RefreshButton]];
G2L["197"]["Rotation"] = -180;
G2L["197"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.UIPadding
G2L["198"] = Instance.new("UIPadding", G2L["196"]);
G2L["198"]["PaddingTop"] = UDim.new(0, 5);
G2L["198"]["PaddingRight"] = UDim.new(0, 5);
G2L["198"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshText
G2L["199"] = Instance.new("TextLabel", G2L["196"]);
G2L["199"]["BorderSizePixel"] = 0;
G2L["199"]["TextSize"] = 14;
G2L["199"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["199"]["TextTransparency"] = 0.5;
G2L["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["199"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["BackgroundTransparency"] = 1;
G2L["199"]["Size"] = UDim2.new(1, -25, 1, 0);
G2L["199"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["Text"] = [[Refreshed]];
G2L["199"]["Name"] = [[RefreshText]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["19a"] = Instance.new("Frame", G2L["10"]);
G2L["19a"]["BorderSizePixel"] = 0;
G2L["19a"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["19a"]["ClipsDescendants"] = true;
G2L["19a"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["19a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19a"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIPadding
G2L["19b"] = Instance.new("UIPadding", G2L["19a"]);
G2L["19b"]["PaddingTop"] = UDim.new(0, 30);
G2L["19b"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame
G2L["19c"] = Instance.new("Frame", G2L["19a"]);
G2L["19c"]["BorderSizePixel"] = 0;
G2L["19c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19c"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["19c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19c"]["Name"] = [[AgentButtonFrame]];
G2L["19c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.ImageLabel
G2L["19d"] = Instance.new("ImageLabel", G2L["19c"]);
G2L["19d"]["BorderSizePixel"] = 0;
G2L["19d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19d"]["Image"] = [[rbxassetid://97622965928648]];
G2L["19d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.TextLabel
G2L["19e"] = Instance.new("TextLabel", G2L["19c"]);
G2L["19e"]["BorderSizePixel"] = 0;
G2L["19e"]["TextSize"] = 17;
G2L["19e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["BackgroundTransparency"] = 1;
G2L["19e"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["19e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19e"]["Text"] = [[Agent]];
G2L["19e"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.Hitbox
G2L["19f"] = Instance.new("TextButton", G2L["19c"]);
G2L["19f"]["BorderSizePixel"] = 0;
G2L["19f"]["TextTransparency"] = 1;
G2L["19f"]["TextSize"] = 14;
G2L["19f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19f"]["ZIndex"] = 999;
G2L["19f"]["BackgroundTransparency"] = 1;
G2L["19f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19f"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame
G2L["1a0"] = Instance.new("Frame", G2L["19a"]);
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Name"] = [[SettingsButtonFrame]];
G2L["1a0"]["LayoutOrder"] = 999;
G2L["1a0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.ImageLabel
G2L["1a1"] = Instance.new("ImageLabel", G2L["1a0"]);
G2L["1a1"]["BorderSizePixel"] = 0;
G2L["1a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["Image"] = [[rbxassetid://98245295559168]];
G2L["1a1"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.TextLabel
G2L["1a2"] = Instance.new("TextLabel", G2L["1a0"]);
G2L["1a2"]["BorderSizePixel"] = 0;
G2L["1a2"]["TextSize"] = 17;
G2L["1a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["BackgroundTransparency"] = 1;
G2L["1a2"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a2"]["Text"] = [[Settings]];
G2L["1a2"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.Hitbox
G2L["1a3"] = Instance.new("TextButton", G2L["1a0"]);
G2L["1a3"]["BorderSizePixel"] = 0;
G2L["1a3"]["TextTransparency"] = 1;
G2L["1a3"]["TextSize"] = 14;
G2L["1a3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a3"]["ZIndex"] = 999;
G2L["1a3"]["BackgroundTransparency"] = 1;
G2L["1a3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame
G2L["1a4"] = Instance.new("Frame", G2L["19a"]);
G2L["1a4"]["BorderSizePixel"] = 0;
G2L["1a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a4"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a4"]["Name"] = [[CodeButtonFrame]];
G2L["1a4"]["LayoutOrder"] = 1;
G2L["1a4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.TextLabel
G2L["1a5"] = Instance.new("TextLabel", G2L["1a4"]);
G2L["1a5"]["BorderSizePixel"] = 0;
G2L["1a5"]["TextSize"] = 17;
G2L["1a5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["BackgroundTransparency"] = 1;
G2L["1a5"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a5"]["Text"] = [[Code]];
G2L["1a5"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.ImageLabel
G2L["1a6"] = Instance.new("ImageLabel", G2L["1a4"]);
G2L["1a6"]["BorderSizePixel"] = 0;
G2L["1a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["Image"] = [[rbxassetid://102596836544188]];
G2L["1a6"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.Hitbox
G2L["1a7"] = Instance.new("TextButton", G2L["1a4"]);
G2L["1a7"]["BorderSizePixel"] = 0;
G2L["1a7"]["TextTransparency"] = 1;
G2L["1a7"]["TextSize"] = 14;
G2L["1a7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a7"]["ZIndex"] = 999;
G2L["1a7"]["BackgroundTransparency"] = 1;
G2L["1a7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame
G2L["1a8"] = Instance.new("Frame", G2L["19a"]);
G2L["1a8"]["BorderSizePixel"] = 0;
G2L["1a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a8"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a8"]["Name"] = [[ToolsButtonFrame]];
G2L["1a8"]["LayoutOrder"] = 3;
G2L["1a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.ImageLabel
G2L["1a9"] = Instance.new("ImageLabel", G2L["1a8"]);
G2L["1a9"]["BorderSizePixel"] = 0;
G2L["1a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a9"]["Image"] = [[rbxassetid://70572480663906]];
G2L["1a9"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.TextLabel
G2L["1aa"] = Instance.new("TextLabel", G2L["1a8"]);
G2L["1aa"]["BorderSizePixel"] = 0;
G2L["1aa"]["TextSize"] = 17;
G2L["1aa"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["BackgroundTransparency"] = 1;
G2L["1aa"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Text"] = [[Tools]];
G2L["1aa"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.Hitbox
G2L["1ab"] = Instance.new("TextButton", G2L["1a8"]);
G2L["1ab"]["BorderSizePixel"] = 0;
G2L["1ab"]["TextTransparency"] = 1;
G2L["1ab"]["TextSize"] = 14;
G2L["1ab"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ab"]["ZIndex"] = 999;
G2L["1ab"]["BackgroundTransparency"] = 1;
G2L["1ab"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame
G2L["1ac"] = Instance.new("Frame", G2L["19a"]);
G2L["1ac"]["BorderSizePixel"] = 0;
G2L["1ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ac"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ac"]["Name"] = [[StartupButtonFrame]];
G2L["1ac"]["LayoutOrder"] = 4;
G2L["1ac"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.ImageLabel
G2L["1ad"] = Instance.new("ImageLabel", G2L["1ac"]);
G2L["1ad"]["BorderSizePixel"] = 0;
G2L["1ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ad"]["Image"] = [[rbxassetid://136122222813963]];
G2L["1ad"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ad"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.TextLabel
G2L["1ae"] = Instance.new("TextLabel", G2L["1ac"]);
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["TextSize"] = 17;
G2L["1ae"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ae"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["BackgroundTransparency"] = 1;
G2L["1ae"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ae"]["Text"] = [[Startup]];
G2L["1ae"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.Hitbox
G2L["1af"] = Instance.new("TextButton", G2L["1ac"]);
G2L["1af"]["BorderSizePixel"] = 0;
G2L["1af"]["TextTransparency"] = 1;
G2L["1af"]["TextSize"] = 14;
G2L["1af"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1af"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1af"]["ZIndex"] = 999;
G2L["1af"]["BackgroundTransparency"] = 1;
G2L["1af"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1af"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIGridLayout
G2L["1b0"] = Instance.new("UIGridLayout", G2L["19a"]);
G2L["1b0"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["1b0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame
G2L["1b1"] = Instance.new("Frame", G2L["19a"]);
G2L["1b1"]["BorderSizePixel"] = 0;
G2L["1b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b1"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b1"]["Name"] = [[HistoryButtonFrame]];
G2L["1b1"]["LayoutOrder"] = 2;
G2L["1b1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.ImageLabel
G2L["1b2"] = Instance.new("ImageLabel", G2L["1b1"]);
G2L["1b2"]["BorderSizePixel"] = 0;
G2L["1b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b2"]["Image"] = [[rbxassetid://70487508311290]];
G2L["1b2"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.TextLabel
G2L["1b3"] = Instance.new("TextLabel", G2L["1b1"]);
G2L["1b3"]["BorderSizePixel"] = 0;
G2L["1b3"]["TextSize"] = 17;
G2L["1b3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b3"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b3"]["BackgroundTransparency"] = 1;
G2L["1b3"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b3"]["Text"] = [[History]];
G2L["1b3"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.Hitbox
G2L["1b4"] = Instance.new("TextButton", G2L["1b1"]);
G2L["1b4"]["BorderSizePixel"] = 0;
G2L["1b4"]["TextTransparency"] = 1;
G2L["1b4"]["TextSize"] = 14;
G2L["1b4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b4"]["ZIndex"] = 999;
G2L["1b4"]["BackgroundTransparency"] = 1;
G2L["1b4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b4"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame
G2L["1b5"] = Instance.new("Frame", G2L["19a"]);
G2L["1b5"]["BorderSizePixel"] = 0;
G2L["1b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b5"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["Name"] = [[BrowserButtonFrame]];
G2L["1b5"]["LayoutOrder"] = 10;
G2L["1b5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.ImageLabel
G2L["1b6"] = Instance.new("ImageLabel", G2L["1b5"]);
G2L["1b6"]["BorderSizePixel"] = 0;
G2L["1b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b6"]["Image"] = [[rbxassetid://90807079339617]];
G2L["1b6"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.TextLabel
G2L["1b7"] = Instance.new("TextLabel", G2L["1b5"]);
G2L["1b7"]["BorderSizePixel"] = 0;
G2L["1b7"]["TextSize"] = 17;
G2L["1b7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b7"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b7"]["BackgroundTransparency"] = 1;
G2L["1b7"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b7"]["Text"] = [[Browser]];
G2L["1b7"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.Hitbox
G2L["1b8"] = Instance.new("TextButton", G2L["1b5"]);
G2L["1b8"]["BorderSizePixel"] = 0;
G2L["1b8"]["TextTransparency"] = 1;
G2L["1b8"]["TextSize"] = 14;
G2L["1b8"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b8"]["ZIndex"] = 999;
G2L["1b8"]["BackgroundTransparency"] = 1;
G2L["1b8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b8"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame
G2L["1b9"] = Instance.new("Frame", G2L["19a"]);
G2L["1b9"]["BorderSizePixel"] = 0;
G2L["1b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b9"]["Name"] = [[SkillsButtonFrame]];
G2L["1b9"]["LayoutOrder"] = 5;
G2L["1b9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.Hitbox
G2L["1ba"] = Instance.new("TextButton", G2L["1b9"]);
G2L["1ba"]["BorderSizePixel"] = 0;
G2L["1ba"]["TextTransparency"] = 1;
G2L["1ba"]["TextSize"] = 14;
G2L["1ba"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ba"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ba"]["ZIndex"] = 999;
G2L["1ba"]["BackgroundTransparency"] = 1;
G2L["1ba"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ba"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.ImageLabel
G2L["1bb"] = Instance.new("ImageLabel", G2L["1b9"]);
G2L["1bb"]["BorderSizePixel"] = 0;
G2L["1bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bb"]["Image"] = [[rbxassetid://119927491521709]];
G2L["1bb"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.TextLabel
G2L["1bc"] = Instance.new("TextLabel", G2L["1b9"]);
G2L["1bc"]["BorderSizePixel"] = 0;
G2L["1bc"]["TextSize"] = 17;
G2L["1bc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1bc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["BackgroundTransparency"] = 1;
G2L["1bc"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bc"]["Text"] = [[Skills]];
G2L["1bc"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1bd"] = Instance.new("Frame", G2L["19a"]);
G2L["1bd"]["BorderSizePixel"] = 0;
G2L["1bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bd"]["Name"] = [[DummyButtonFrame]];
G2L["1bd"]["LayoutOrder"] = 6;
G2L["1bd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1be"] = Instance.new("Frame", G2L["19a"]);
G2L["1be"]["BorderSizePixel"] = 0;
G2L["1be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1be"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1be"]["Name"] = [[DummyButtonFrame]];
G2L["1be"]["LayoutOrder"] = 7;
G2L["1be"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1bf"] = Instance.new("Frame", G2L["19a"]);
G2L["1bf"]["BorderSizePixel"] = 0;
G2L["1bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bf"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bf"]["Name"] = [[DummyButtonFrame]];
G2L["1bf"]["LayoutOrder"] = 8;
G2L["1bf"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1c0"] = Instance.new("Frame", G2L["19a"]);
G2L["1c0"]["BorderSizePixel"] = 0;
G2L["1c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c0"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c0"]["Name"] = [[DummyButtonFrame]];
G2L["1c0"]["LayoutOrder"] = 9;
G2L["1c0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["1c1"] = Instance.new("TextLabel", G2L["10"]);
G2L["1c1"]["ZIndex"] = 2;
G2L["1c1"]["BorderSizePixel"] = 0;
G2L["1c1"]["TextSize"] = 14;
G2L["1c1"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1c1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c1"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c1"]["Text"] = [[IYAI]];
G2L["1c1"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["1c2"] = Instance.new("UIPadding", G2L["1c1"]);
G2L["1c2"]["PaddingRight"] = UDim.new(0, 5);
G2L["1c2"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["1c3"] = Instance.new("TextButton", G2L["1c1"]);
G2L["1c3"]["BorderSizePixel"] = 0;
G2L["1c3"]["TextSize"] = 14;
G2L["1c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1c3"]["ZIndex"] = 999;
G2L["1c3"]["BackgroundTransparency"] = 1;
G2L["1c3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c3"]["Text"] = [[X]];
G2L["1c3"]["Name"] = [[CloseButton]];
G2L["1c3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["1c4"] = Instance.new("TextLabel", G2L["1c1"]);
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["TextSize"] = 11;
G2L["1c4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c4"]["TextTransparency"] = 0.5;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["BackgroundTransparency"] = 1;
G2L["1c4"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1c4"]["Visible"] = false;
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Text"] = [[by @urluri]];
G2L["1c4"]["Name"] = [[AuthorLabel]];
G2L["1c4"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["1c5"] = Instance.new("TextLabel", G2L["1c1"]);
G2L["1c5"]["BorderSizePixel"] = 0;
G2L["1c5"]["TextSize"] = 11;
G2L["1c5"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1c5"]["TextTransparency"] = 0.5;
G2L["1c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c5"]["BackgroundTransparency"] = 1;
G2L["1c5"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c5"]["Text"] = [[v]];
G2L["1c5"]["Name"] = [[VersionLabel]];
G2L["1c5"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["1c6"] = Instance.new("TextButton", G2L["1c1"]);
G2L["1c6"]["BorderSizePixel"] = 0;
G2L["1c6"]["TextSize"] = 14;
G2L["1c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1c6"]["ZIndex"] = 999;
G2L["1c6"]["BackgroundTransparency"] = 1;
G2L["1c6"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c6"]["Text"] = [[—]];
G2L["1c6"]["Name"] = [[MinimizeButton]];
G2L["1c6"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.Highlight
G2L["1c7"] = Instance.new("Frame", G2L["10"]);
G2L["1c7"]["BorderSizePixel"] = 0;
G2L["1c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["1c7"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c7"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["1c8"] = Instance.new("Frame", G2L["10"]);
G2L["1c8"]["Visible"] = false;
G2L["1c8"]["ZIndex"] = 999;
G2L["1c8"]["BorderSizePixel"] = 0;
G2L["1c8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c8"]["Name"] = [[ModalFrame]];
G2L["1c8"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["1c9"] = Instance.new("UIPadding", G2L["1c8"]);
G2L["1c9"]["PaddingTop"] = UDim.new(0, 25);
G2L["1c9"]["PaddingRight"] = UDim.new(0, 25);
G2L["1c9"]["PaddingLeft"] = UDim.new(0, 25);
G2L["1c9"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["1ca"] = Instance.new("Frame", G2L["1c8"]);
G2L["1ca"]["BorderSizePixel"] = 0;
G2L["1ca"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1ca"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["1cb"] = Instance.new("UICorner", G2L["1ca"]);
G2L["1cb"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["1cc"] = Instance.new("TextButton", G2L["1ca"]);
G2L["1cc"]["BorderSizePixel"] = 0;
G2L["1cc"]["TextSize"] = 14;
G2L["1cc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cc"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1cc"]["ZIndex"] = 999;
G2L["1cc"]["BackgroundTransparency"] = 1;
G2L["1cc"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cc"]["Text"] = [[X]];
G2L["1cc"]["Name"] = [[CloseButton]];
G2L["1cc"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["1cd"] = Instance.new("Frame", G2L["1ca"]);
G2L["1cd"]["Visible"] = false;
G2L["1cd"]["BorderSizePixel"] = 0;
G2L["1cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1cd"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cd"]["Name"] = [[SearchModelModal]];
G2L["1cd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["1ce"] = Instance.new("UIPadding", G2L["1cd"]);
G2L["1ce"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ce"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ce"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ce"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["1cf"] = Instance.new("TextBox", G2L["1cd"]);
G2L["1cf"]["Name"] = [[SearchBox]];
G2L["1cf"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1cf"]["BorderSizePixel"] = 0;
G2L["1cf"]["TextSize"] = 14;
G2L["1cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cf"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1cf"]["PlaceholderText"] = [[Search models...]];
G2L["1cf"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["1cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cf"]["Text"] = [[]];
G2L["1cf"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["1d0"] = Instance.new("UICorner", G2L["1cf"]);
G2L["1d0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["1d1"] = Instance.new("UIPadding", G2L["1cf"]);
G2L["1d1"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d1"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d1"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d1"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["1d2"] = Instance.new("ImageButton", G2L["1cd"]);
G2L["1d2"]["BorderSizePixel"] = 0;
G2L["1d2"]["BackgroundTransparency"] = 1;
G2L["1d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d2"]["Image"] = [[rbxassetid://94907058451749]];
G2L["1d2"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d2"]["Name"] = [[SearchButton]];
G2L["1d2"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["1d3"] = Instance.new("ScrollingFrame", G2L["1cd"]);
G2L["1d3"]["Active"] = true;
G2L["1d3"]["BorderSizePixel"] = 0;
G2L["1d3"]["ScrollBarImageTransparency"] = 0.9;
G2L["1d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d3"]["Size"] = UDim2.new(1, 0, 0, 285);
G2L["1d3"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["1d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d3"]["ScrollBarThickness"] = 6;
G2L["1d3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["1d4"] = Instance.new("TextButton", G2L["1d3"]);
G2L["1d4"]["BorderSizePixel"] = 0;
G2L["1d4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d4"]["TextSize"] = 14;
G2L["1d4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d4"]["BackgroundTransparency"] = 1;
G2L["1d4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d4"]["Text"] = [[SomeModel]];
G2L["1d4"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["1d5"] = Instance.new("UIPadding", G2L["1d4"]);
G2L["1d5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["1d6"] = Instance.new("UIGridLayout", G2L["1d3"]);
G2L["1d6"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["1d6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["1d7"] = Instance.new("Frame", G2L["1ca"]);
G2L["1d7"]["Visible"] = false;
G2L["1d7"]["BorderSizePixel"] = 0;
G2L["1d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1d7"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d7"]["Name"] = [[ToolResultViewModal]];
G2L["1d7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["1d8"] = Instance.new("UIPadding", G2L["1d7"]);
G2L["1d8"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d8"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d8"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d8"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame
G2L["1d9"] = Instance.new("ScrollingFrame", G2L["1d7"]);
G2L["1d9"]["Active"] = true;
G2L["1d9"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1d9"]["ScrollBarImageTransparency"] = 0.8;
G2L["1d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1d9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d9"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d9"]["ScrollBarThickness"] = 4;
G2L["1d9"]["LayoutOrder"] = 1;
G2L["1d9"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UIPadding
G2L["1da"] = Instance.new("UIPadding", G2L["1d9"]);
G2L["1da"]["PaddingTop"] = UDim.new(0, 5);
G2L["1da"]["PaddingRight"] = UDim.new(0, 5);
G2L["1da"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.UICorner
G2L["1db"] = Instance.new("UICorner", G2L["1d9"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ScrollingFrame.TextBox
G2L["1dc"] = Instance.new("TextBox", G2L["1d9"]);
G2L["1dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1dc"]["BorderSizePixel"] = 0;
G2L["1dc"]["TextEditable"] = false;
G2L["1dc"]["TextSize"] = 14;
G2L["1dc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dc"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1dc"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1dc"]["MultiLine"] = true;
G2L["1dc"]["ClearTextOnFocus"] = false;
G2L["1dc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dc"]["Text"] = [[Tool execution]];
G2L["1dc"]["LayoutOrder"] = 1;
G2L["1dc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["1dd"] = Instance.new("TextLabel", G2L["1ca"]);
G2L["1dd"]["BorderSizePixel"] = 0;
G2L["1dd"]["TextSize"] = 17;
G2L["1dd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1dd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["BackgroundTransparency"] = 1;
G2L["1dd"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dd"]["Name"] = [[TitleLabel]];
G2L["1dd"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["1de"] = Instance.new("UIPadding", G2L["1dd"]);
G2L["1de"]["PaddingTop"] = UDim.new(0, 10);
G2L["1de"]["PaddingRight"] = UDim.new(0, 10);
G2L["1de"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1de"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["1df"] = Instance.new("Frame", G2L["1ca"]);
G2L["1df"]["Visible"] = false;
G2L["1df"]["BorderSizePixel"] = 0;
G2L["1df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1df"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1df"]["Name"] = [[SystemPromptModal]];
G2L["1df"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["1e0"] = Instance.new("UIPadding", G2L["1df"]);
G2L["1e0"]["PaddingTop"] = UDim.new(0, 10);
G2L["1e0"]["PaddingRight"] = UDim.new(0, 10);
G2L["1e0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1e0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame
G2L["1e1"] = Instance.new("ScrollingFrame", G2L["1df"]);
G2L["1e1"]["Active"] = true;
G2L["1e1"]["BorderSizePixel"] = 0;
G2L["1e1"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1e1"]["ScrollBarImageTransparency"] = 0.8;
G2L["1e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e1"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1e1"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1e1"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e1"]["ScrollBarThickness"] = 4;
G2L["1e1"]["LayoutOrder"] = 1;
G2L["1e1"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.TextBox
G2L["1e2"] = Instance.new("TextBox", G2L["1e1"]);
G2L["1e2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e2"]["BorderSizePixel"] = 0;
G2L["1e2"]["TextEditable"] = false;
G2L["1e2"]["TextSize"] = 14;
G2L["1e2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e2"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e2"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1e2"]["MultiLine"] = true;
G2L["1e2"]["ClearTextOnFocus"] = false;
G2L["1e2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e2"]["Text"] = [[Default system prompt]];
G2L["1e2"]["LayoutOrder"] = 1;
G2L["1e2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UIPadding
G2L["1e3"] = Instance.new("UIPadding", G2L["1e1"]);
G2L["1e3"]["PaddingTop"] = UDim.new(0, 5);
G2L["1e3"]["PaddingRight"] = UDim.new(0, 5);
G2L["1e3"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.ScrollingFrame.UICorner
G2L["1e4"] = Instance.new("UICorner", G2L["1e1"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["1e5"] = Instance.new("Frame", G2L["1df"]);
G2L["1e5"]["BorderSizePixel"] = 0;
G2L["1e5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e5"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1e5"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e5"]["Name"] = [[BottomContainer]];
G2L["1e5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["1e6"] = Instance.new("UIGridLayout", G2L["1e5"]);
G2L["1e6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1e6"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1e6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1e6"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["1e7"] = Instance.new("ImageButton", G2L["1e5"]);
G2L["1e7"]["BorderSizePixel"] = 0;
G2L["1e7"]["BackgroundTransparency"] = 1;
G2L["1e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e7"]["Image"] = [[rbxassetid://74363941121004]];
G2L["1e7"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Name"] = [[ResetButton]];
G2L["1e7"]["Rotation"] = -180;
G2L["1e7"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["1e8"] = Instance.new("ImageButton", G2L["1e5"]);
G2L["1e8"]["BorderSizePixel"] = 0;
G2L["1e8"]["BackgroundTransparency"] = 1;
G2L["1e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e8"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1e8"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1e8"]["LayoutOrder"] = 1;
G2L["1e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e8"]["Name"] = [[SaveButton]];
G2L["1e8"]["Rotation"] = -180;
G2L["1e8"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal
G2L["1e9"] = Instance.new("Frame", G2L["1ca"]);
G2L["1e9"]["Visible"] = false;
G2L["1e9"]["BorderSizePixel"] = 0;
G2L["1e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e9"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1e9"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e9"]["Name"] = [[BrowserLogsViewModal]];
G2L["1e9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.UIPadding
G2L["1ea"] = Instance.new("UIPadding", G2L["1e9"]);
G2L["1ea"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ea"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ea"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ea"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame
G2L["1eb"] = Instance.new("ScrollingFrame", G2L["1e9"]);
G2L["1eb"]["Active"] = true;
G2L["1eb"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1eb"]["ScrollBarImageTransparency"] = 0.8;
G2L["1eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1eb"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1eb"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1eb"]["ScrollBarThickness"] = 4;
G2L["1eb"]["LayoutOrder"] = 1;
G2L["1eb"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UIPadding
G2L["1ec"] = Instance.new("UIPadding", G2L["1eb"]);
G2L["1ec"]["PaddingTop"] = UDim.new(0, 5);
G2L["1ec"]["PaddingRight"] = UDim.new(0, 5);
G2L["1ec"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.UICorner
G2L["1ed"] = Instance.new("UICorner", G2L["1eb"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.ScrollingFrame.TextBox
G2L["1ee"] = Instance.new("TextBox", G2L["1eb"]);
G2L["1ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ee"]["BorderSizePixel"] = 0;
G2L["1ee"]["TextEditable"] = false;
G2L["1ee"]["TextSize"] = 14;
G2L["1ee"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ee"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ee"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ee"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1ee"]["MultiLine"] = true;
G2L["1ee"]["ClearTextOnFocus"] = false;
G2L["1ee"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ee"]["Text"] = [[Browser logs]];
G2L["1ee"]["LayoutOrder"] = 1;
G2L["1ee"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal
G2L["1ef"] = Instance.new("Frame", G2L["1ca"]);
G2L["1ef"]["Visible"] = false;
G2L["1ef"]["BorderSizePixel"] = 0;
G2L["1ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ef"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1ef"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ef"]["Name"] = [[SetMultiAPIKeyModal]];
G2L["1ef"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.UIPadding
G2L["1f0"] = Instance.new("UIPadding", G2L["1ef"]);
G2L["1f0"]["PaddingTop"] = UDim.new(0, 10);
G2L["1f0"]["PaddingRight"] = UDim.new(0, 10);
G2L["1f0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1f0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame
G2L["1f1"] = Instance.new("ScrollingFrame", G2L["1ef"]);
G2L["1f1"]["Active"] = true;
G2L["1f1"]["BorderSizePixel"] = 0;
G2L["1f1"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1f1"]["ScrollBarImageTransparency"] = 0.8;
G2L["1f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1f1"]["Size"] = UDim2.new(1, 0, 1, -60);
G2L["1f1"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1f1"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["ScrollBarThickness"] = 4;
G2L["1f1"]["LayoutOrder"] = 1;
G2L["1f1"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.TextBox
G2L["1f2"] = Instance.new("TextBox", G2L["1f1"]);
G2L["1f2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f2"]["BorderSizePixel"] = 0;
G2L["1f2"]["TextSize"] = 14;
G2L["1f2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f2"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f2"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1f2"]["MultiLine"] = true;
G2L["1f2"]["ClearTextOnFocus"] = false;
G2L["1f2"]["PlaceholderText"] = [[sk-...]];
G2L["1f2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f2"]["Text"] = [[]];
G2L["1f2"]["LayoutOrder"] = 1;
G2L["1f2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UIPadding
G2L["1f3"] = Instance.new("UIPadding", G2L["1f1"]);
G2L["1f3"]["PaddingTop"] = UDim.new(0, 5);
G2L["1f3"]["PaddingRight"] = UDim.new(0, 5);
G2L["1f3"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.ScrollingFrame.UICorner
G2L["1f4"] = Instance.new("UICorner", G2L["1f1"]);



-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.NoteLabel
G2L["1f5"] = Instance.new("TextLabel", G2L["1ef"]);
G2L["1f5"]["TextWrapped"] = true;
G2L["1f5"]["BorderSizePixel"] = 0;
G2L["1f5"]["TextSize"] = 17;
G2L["1f5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f5"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1f5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["1f5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f5"]["BackgroundTransparency"] = 1;
G2L["1f5"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f5"]["Text"] = [[One key per line. Rotates to the next key on rate limit.]];
G2L["1f5"]["Name"] = [[NoteLabel]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer
G2L["1f6"] = Instance.new("Frame", G2L["1ef"]);
G2L["1f6"]["BorderSizePixel"] = 0;
G2L["1f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f6"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1f6"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f6"]["Name"] = [[BottomContainer]];
G2L["1f6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.UIGridLayout
G2L["1f7"] = Instance.new("UIGridLayout", G2L["1f6"]);
G2L["1f7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1f7"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1f7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1f7"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.ClearButton
G2L["1f8"] = Instance.new("ImageButton", G2L["1f6"]);
G2L["1f8"]["BorderSizePixel"] = 0;
G2L["1f8"]["BackgroundTransparency"] = 1;
G2L["1f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f8"]["Image"] = [[rbxassetid://115957379627811]];
G2L["1f8"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f8"]["Name"] = [[ClearButton]];
G2L["1f8"]["Rotation"] = -180;
G2L["1f8"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SetMultiAPIKeyModal.BottomContainer.SaveButton
G2L["1f9"] = Instance.new("ImageButton", G2L["1f6"]);
G2L["1f9"]["BorderSizePixel"] = 0;
G2L["1f9"]["BackgroundTransparency"] = 1;
G2L["1f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f9"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1f9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f9"]["LayoutOrder"] = 1;
G2L["1f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f9"]["Name"] = [[SaveButton]];
G2L["1f9"]["Rotation"] = -180;
G2L["1f9"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame
G2L["1fa"] = Instance.new("CanvasGroup", G2L["1c8"]);
G2L["1fa"]["Visible"] = false;
G2L["1fa"]["BorderSizePixel"] = 0;
G2L["1fa"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1fa"]["Size"] = UDim2.new(0, 250, 0, 125);
G2L["1fa"]["Position"] = UDim2.new(0.5, -125, 0.5, -62);
G2L["1fa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fa"]["Name"] = [[ConfirmationFrame]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.UICorner
G2L["1fb"] = Instance.new("UICorner", G2L["1fa"]);
G2L["1fb"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame
G2L["1fc"] = Instance.new("Frame", G2L["1fa"]);
G2L["1fc"]["BorderSizePixel"] = 0;
G2L["1fc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fc"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1fc"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["1fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fc"]["Name"] = [[ButtonsContainerFrame]];
G2L["1fc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.UIGridLayout
G2L["1fd"] = Instance.new("UIGridLayout", G2L["1fc"]);
G2L["1fd"]["CellSize"] = UDim2.new(0.5, 0, 1, 0);
G2L["1fd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1fd"]["CellPadding"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.YesButton
G2L["1fe"] = Instance.new("TextButton", G2L["1fc"]);
G2L["1fe"]["BorderSizePixel"] = 0;
G2L["1fe"]["TextSize"] = 14;
G2L["1fe"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fe"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1fe"]["BackgroundTransparency"] = 0.9;
G2L["1fe"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fe"]["Text"] = [[Yes]];
G2L["1fe"]["Name"] = [[YesButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.NoButton
G2L["1ff"] = Instance.new("TextButton", G2L["1fc"]);
G2L["1ff"]["BorderSizePixel"] = 0;
G2L["1ff"]["TextSize"] = 14;
G2L["1ff"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ff"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ff"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ff"]["BackgroundTransparency"] = 0.9;
G2L["1ff"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1ff"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ff"]["Text"] = [[No]];
G2L["1ff"]["Name"] = [[NoButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel
G2L["200"] = Instance.new("TextLabel", G2L["1fa"]);
G2L["200"]["TextWrapped"] = true;
G2L["200"]["BorderSizePixel"] = 0;
G2L["200"]["TextSize"] = 17;
G2L["200"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["200"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["200"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["200"]["BackgroundTransparency"] = 1;
G2L["200"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["200"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["200"]["Text"] = [[Are you sure?]];
G2L["200"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel.UIPadding
G2L["201"] = Instance.new("UIPadding", G2L["200"]);
G2L["201"]["PaddingTop"] = UDim.new(0, 10);
G2L["201"]["PaddingRight"] = UDim.new(0, 10);
G2L["201"]["PaddingLeft"] = UDim.new(0, 10);
G2L["201"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["202"] = Instance.new("CanvasGroup", G2L["e"]);
G2L["202"]["Visible"] = false;
G2L["202"]["GroupTransparency"] = 1;
G2L["202"]["ZIndex"] = 999;
G2L["202"]["BorderSizePixel"] = 0;
G2L["202"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["202"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["202"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["202"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["203"] = Instance.new("ImageLabel", G2L["202"]);
G2L["203"]["BorderSizePixel"] = 0;
G2L["203"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["203"]["Image"] = [[rbxassetid://115810237733262]];
G2L["203"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["203"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["203"]["BackgroundTransparency"] = 1;
G2L["203"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["204"] = Instance.new("TextLabel", G2L["203"]);
G2L["204"]["BorderSizePixel"] = 0;
G2L["204"]["TextSize"] = 35;
G2L["204"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["204"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["204"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["204"]["BackgroundTransparency"] = 1;
G2L["204"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["204"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["204"]["Text"] = [[Artificial Intelligence]];
G2L["204"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI Toast Container
G2L["205"] = Instance.new("Frame", G2L["1"]);
G2L["205"]["BorderSizePixel"] = 0;
G2L["205"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["205"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["205"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["205"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["205"]["Name"] = [[IYAI Toast Container]];
G2L["205"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["206"] = Instance.new("CanvasGroup", G2L["205"]);
G2L["206"]["BorderSizePixel"] = 0;
G2L["206"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["206"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["206"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["206"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["206"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["207"] = Instance.new("UICorner", G2L["206"]);
G2L["207"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["208"] = Instance.new("Frame", G2L["206"]);
G2L["208"]["BorderSizePixel"] = 0;
G2L["208"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["208"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["208"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["208"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["208"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["209"] = Instance.new("TextLabel", G2L["206"]);
G2L["209"]["ZIndex"] = 2;
G2L["209"]["BorderSizePixel"] = 0;
G2L["209"]["TextSize"] = 14;
G2L["209"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["209"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["209"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["209"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["209"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["209"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["209"]["Text"] = [[Toast Title]];
G2L["209"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["20a"] = Instance.new("UIPadding", G2L["209"]);
G2L["20a"]["PaddingRight"] = UDim.new(0, 5);
G2L["20a"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["20b"] = Instance.new("TextButton", G2L["209"]);
G2L["20b"]["BorderSizePixel"] = 0;
G2L["20b"]["TextSize"] = 14;
G2L["20b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["20b"]["BackgroundTransparency"] = 1;
G2L["20b"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["20b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20b"]["Text"] = [[X]];
G2L["20b"]["Name"] = [[CloseButton]];
G2L["20b"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["20c"] = Instance.new("UICorner", G2L["20b"]);
G2L["20c"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["20d"] = Instance.new("TextLabel", G2L["206"]);
G2L["20d"]["TextWrapped"] = true;
G2L["20d"]["BorderSizePixel"] = 0;
G2L["20d"]["TextSize"] = 14;
G2L["20d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["20d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["20d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["20d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20d"]["BackgroundTransparency"] = 1;
G2L["20d"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["20d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20d"]["Name"] = [[ToastDesc]];
G2L["20d"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["20e"] = Instance.new("UIPadding", G2L["20d"]);
G2L["20e"]["PaddingTop"] = UDim.new(0, 5);
G2L["20e"]["PaddingRight"] = UDim.new(0, 10);
G2L["20e"]["PaddingLeft"] = UDim.new(0, 10);
G2L["20e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["20f"] = Instance.new("Frame", G2L["206"]);
G2L["20f"]["ZIndex"] = 999;
G2L["20f"]["BorderSizePixel"] = 0;
G2L["20f"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["20f"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["20f"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["20f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20f"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["210"] = Instance.new("UICorner", G2L["20f"]);
G2L["210"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["211"] = Instance.new("UIPadding", G2L["205"]);
G2L["211"]["PaddingTop"] = UDim.new(0, 15);
G2L["211"]["PaddingRight"] = UDim.new(0, 15);
G2L["211"]["PaddingLeft"] = UDim.new(0, 15);
G2L["211"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["212"] = Instance.new("StringValue", G2L["1"]);
G2L["212"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["213"] = Instance.new("StringValue", G2L["1"]);
G2L["213"]["Name"] = [[Version]];
G2L["213"]["Value"] = [[1.0.8]];


return G2L
