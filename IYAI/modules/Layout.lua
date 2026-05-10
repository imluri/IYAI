-- Instances: 374 | Scripts: 2 | Modules: 10 | Tags: 0
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse
G2L["2c"] = Instance.new("TextLabel", G2L["16"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2c"]["Visible"] = false;
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[]];
G2L["2c"]["LayoutOrder"] = 4;
G2L["2c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2c"]["Name"] = [[AssistantResponse]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.UIPadding
G2L["2d"] = Instance.new("UIPadding", G2L["2c"]);
G2L["2d"]["PaddingTop"] = UDim.new(0, 5);
G2L["2d"]["PaddingRight"] = UDim.new(0, 15);
G2L["2d"]["PaddingLeft"] = UDim.new(0, 15);
G2L["2d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AssistantResponse.TokenCount
G2L["2e"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["2e"]["TextTransparency"] = 0.8;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[↑ 0  ↓ 0]];
G2L["2e"]["Name"] = [[TokenCount]];
G2L["2e"]["Position"] = UDim2.new(0, 0, 1, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame
G2L["2f"] = Instance.new("Frame", G2L["16"]);
G2L["2f"]["Visible"] = false;
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Name"] = [[CodeblockFrame]];
G2L["2f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.UIPadding
G2L["30"] = Instance.new("UIPadding", G2L["2f"]);
G2L["30"]["PaddingTop"] = UDim.new(0, 5);
G2L["30"]["PaddingRight"] = UDim.new(0, 5);
G2L["30"]["PaddingLeft"] = UDim.new(0, 5);
G2L["30"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox
G2L["31"] = Instance.new("TextBox", G2L["2f"]);
G2L["31"]["Name"] = [[CodeBox]];
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextEditable"] = false;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["31"]["MultiLine"] = true;
G2L["31"]["ClearTextOnFocus"] = false;
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[print("Hello world!")]];
G2L["31"]["LayoutOrder"] = 1;
G2L["31"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UIPadding
G2L["32"] = Instance.new("UIPadding", G2L["31"]);
G2L["32"]["PaddingTop"] = UDim.new(0, 5);
G2L["32"]["PaddingRight"] = UDim.new(0, 5);
G2L["32"]["PaddingLeft"] = UDim.new(0, 5);
G2L["32"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.UICorner
G2L["33"] = Instance.new("UICorner", G2L["31"]);
G2L["33"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.CodeblockFrame.CodeBox.CopyButton
G2L["34"] = Instance.new("ImageButton", G2L["31"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["Image"] = [[rbxassetid://110180044304394]];
G2L["34"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Name"] = [[CopyButton]];
G2L["34"]["Position"] = UDim2.new(1, -15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded)
G2L["35"] = Instance.new("Frame", G2L["16"]);
G2L["35"]["Visible"] = false;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["35"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[AgentTaskFrame (Tool succeeded)]];
G2L["35"]["LayoutOrder"] = 2;
G2L["35"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor
G2L["36"] = Instance.new("Frame", G2L["35"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["36"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["36"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).IconColor.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);
G2L["37"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).TextLabel
G2L["38"] = Instance.new("TextLabel", G2L["35"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 14;
G2L["38"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["38"]["TextTransparency"] = 0.25;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["RichText"] = true;
G2L["38"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Tool succeeded]];
G2L["38"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["38"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool succeeded).UIPadding
G2L["39"] = Instance.new("UIPadding", G2L["35"]);
G2L["39"]["PaddingTop"] = UDim.new(0, 5);
G2L["39"]["PaddingRight"] = UDim.new(0, 15);
G2L["39"]["PaddingLeft"] = UDim.new(0, 15);
G2L["39"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed)
G2L["3a"] = Instance.new("Frame", G2L["16"]);
G2L["3a"]["Visible"] = false;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[AgentTaskFrame (Tool failed)]];
G2L["3a"]["LayoutOrder"] = 3;
G2L["3a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor
G2L["3b"] = Instance.new("Frame", G2L["3a"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["3b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["3b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).IconColor.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).TextLabel
G2L["3d"] = Instance.new("TextLabel", G2L["3a"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3d"]["TextTransparency"] = 0.25;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["RichText"] = true;
G2L["3d"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[Tool failed]];
G2L["3d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3d"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool failed).UIPadding
G2L["3e"] = Instance.new("UIPadding", G2L["3a"]);
G2L["3e"]["PaddingTop"] = UDim.new(0, 5);
G2L["3e"]["PaddingRight"] = UDim.new(0, 15);
G2L["3e"]["PaddingLeft"] = UDim.new(0, 15);
G2L["3e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy)
G2L["3f"] = Instance.new("Frame", G2L["16"]);
G2L["3f"]["Visible"] = false;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["3f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[AgentTaskFrame (Tool busy)]];
G2L["3f"]["LayoutOrder"] = 3;
G2L["3f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["40"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["40"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).IconColor.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).TextLabel
G2L["42"] = Instance.new("TextLabel", G2L["3f"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["42"]["TextTransparency"] = 0.25;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["RichText"] = true;
G2L["42"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[Shimmering...]];
G2L["42"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["42"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Tool busy).UIPadding
G2L["43"] = Instance.new("UIPadding", G2L["3f"]);
G2L["43"]["PaddingTop"] = UDim.new(0, 5);
G2L["43"]["PaddingRight"] = UDim.new(0, 15);
G2L["43"]["PaddingLeft"] = UDim.new(0, 15);
G2L["43"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying)
G2L["44"] = Instance.new("Frame", G2L["16"]);
G2L["44"]["Visible"] = false;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Name"] = [[AgentTaskFrame (Retrying)]];
G2L["44"]["LayoutOrder"] = 2;
G2L["44"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor
G2L["45"] = Instance.new("Frame", G2L["44"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(171, 171, 0);
G2L["45"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["45"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).IconColor.UICorner
G2L["46"] = Instance.new("UICorner", G2L["45"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).TextLabel
G2L["47"] = Instance.new("TextLabel", G2L["44"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 14;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextTransparency"] = 0.25;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["RichText"] = true;
G2L["47"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Tool succeeded]];
G2L["47"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["47"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.ElementTemplate.AgentTaskFrame (Retrying).UIPadding
G2L["48"] = Instance.new("UIPadding", G2L["44"]);
G2L["48"]["PaddingTop"] = UDim.new(0, 5);
G2L["48"]["PaddingRight"] = UDim.new(0, 15);
G2L["48"]["PaddingLeft"] = UDim.new(0, 15);
G2L["48"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.TotalElements
G2L["49"] = Instance.new("IntValue", G2L["13"]);
G2L["49"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.isAssistantBusy
G2L["4a"] = Instance.new("BoolValue", G2L["13"]);
G2L["4a"]["Name"] = [[isAssistantBusy]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame
G2L["4b"] = Instance.new("Frame", G2L["13"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[GreetFrame]];
G2L["4b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.TextLabel
G2L["4c"] = Instance.new("TextLabel", G2L["4b"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 41;
G2L["4c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4c"]["TextTransparency"] = 0.5;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[Welcome]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIListLayout
G2L["4d"] = Instance.new("UIListLayout", G2L["4b"]);
G2L["4d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.UIPadding
G2L["4e"] = Instance.new("UIPadding", G2L["4b"]);
G2L["4e"]["PaddingTop"] = UDim.new(0, 20);
G2L["4e"]["PaddingRight"] = UDim.new(0, 25);
G2L["4e"]["PaddingLeft"] = UDim.new(0, 25);
G2L["4e"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.SetApiKeyButton
G2L["4f"] = Instance.new("TextButton", G2L["4b"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["TextSize"] = 17;
G2L["4f"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["4f"]["LayoutOrder"] = 1;
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Text"] = [[Set your API key →]];
G2L["4f"]["Name"] = [[SetApiKeyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.OpenConversationHistoryButton
G2L["50"] = Instance.new("TextButton", G2L["4b"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["50"]["TextSize"] = 17;
G2L["50"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["50"]["LayoutOrder"] = 1;
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[Open conversation history →]];
G2L["50"]["Name"] = [[OpenConversationHistoryButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame
G2L["51"] = Instance.new("Frame", G2L["12"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["51"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[InputFrame]];
G2L["51"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput
G2L["52"] = Instance.new("TextBox", G2L["51"]);
G2L["52"]["Name"] = [[TextBoxInput]];
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["ClearTextOnFocus"] = false;
G2L["52"]["ClipsDescendants"] = true;
G2L["52"]["PlaceholderText"] = [[Ask me anything]];
G2L["52"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[]];
G2L["52"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UIPadding
G2L["53"] = Instance.new("UIPadding", G2L["52"]);
G2L["53"]["PaddingTop"] = UDim.new(0, 5);
G2L["53"]["PaddingRight"] = UDim.new(0, 5);
G2L["53"]["PaddingLeft"] = UDim.new(0, 7);
G2L["53"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UICorner
G2L["54"] = Instance.new("UICorner", G2L["52"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.UIPadding
G2L["55"] = Instance.new("UIPadding", G2L["51"]);
G2L["55"]["PaddingTop"] = UDim.new(0, 5);
G2L["55"]["PaddingRight"] = UDim.new(0, 5);
G2L["55"]["PaddingLeft"] = UDim.new(0, 5);
G2L["55"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton
G2L["56"] = Instance.new("ImageButton", G2L["51"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["ImageTransparency"] = 0.7;
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["Image"] = [[rbxassetid://94637657012010]];
G2L["56"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Name"] = [[SendButton]];
G2L["56"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton
G2L["58"] = Instance.new("ImageButton", G2L["51"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["Visible"] = false;
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["Image"] = [[rbxassetid://83095283930542]];
G2L["58"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[StopButton]];
G2L["58"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton.UICorner
G2L["59"] = Instance.new("UICorner", G2L["58"]);
G2L["59"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame
G2L["5a"] = Instance.new("Frame", G2L["12"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Name"] = [[ActionsFrame]];
G2L["5a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIGridLayout
G2L["5b"] = Instance.new("UIGridLayout", G2L["5a"]);
G2L["5b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["5b"]["CellSize"] = UDim2.new(0, 40, 0, 15);
G2L["5b"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["5b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.ClearButton
G2L["5c"] = Instance.new("TextButton", G2L["5a"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["BackgroundTransparency"] = 0.9;
G2L["5c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[Clear]];
G2L["5c"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage
G2L["5d"] = Instance.new("Frame", G2L["11"]);
G2L["5d"]["Visible"] = false;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[SettingsPage]];
G2L["5d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame
G2L["5e"] = Instance.new("ScrollingFrame", G2L["5d"]);
G2L["5e"]["Active"] = true;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["CanvasSize"] = UDim2.new(0, 0, 1.5, 0);
G2L["5e"]["ScrollBarImageTransparency"] = 0.85;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["ScrollBarThickness"] = 5;
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["5f"] = Instance.new("Frame", G2L["5e"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Name"] = [[APIKeyFrame]];
G2L["5f"]["LayoutOrder"] = 1;
G2L["5f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["60"] = Instance.new("TextLabel", G2L["5f"]);
G2L["60"]["ZIndex"] = 0;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[API Key]];
G2L["60"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["60"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["61"] = Instance.new("TextLabel", G2L["5f"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["61"]["ClipsDescendants"] = true;
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[]];
G2L["61"]["Position"] = UDim2.new(1, -325, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["62"] = Instance.new("TextBox", G2L["61"]);
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextTransparency"] = 1;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["ClearTextOnFocus"] = false;
G2L["62"]["ClipsDescendants"] = true;
G2L["62"]["PlaceholderText"] = [[sk-...]];
G2L["62"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["62"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[]];
G2L["62"]["LayoutOrder"] = 1;
G2L["62"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["63"] = Instance.new("UICorner", G2L["62"]);
G2L["63"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["64"] = Instance.new("UIPadding", G2L["61"]);
G2L["64"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["65"] = Instance.new("UIPadding", G2L["5f"]);
G2L["65"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["66"] = Instance.new("Frame", G2L["5e"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Name"] = [[HostSelectFrame]];
G2L["66"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
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
G2L["67"]["Text"] = [[Host Provider]];
G2L["67"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["67"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["68"] = Instance.new("Frame", G2L["66"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["68"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["69"] = Instance.new("TextButton", G2L["68"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextTransparency"] = 1;
G2L["69"]["TextSize"] = 14;
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["BackgroundTransparency"] = 0.95;
G2L["69"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["69"]["ClipsDescendants"] = true;
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[OpenRouter]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);
G2L["6a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["6b"] = Instance.new("ImageLabel", G2L["69"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Image"] = [[rbxassetid://88246357492813]];
G2L["6b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Position"] = UDim2.new(-0.03415, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["6c"] = Instance.new("UIPadding", G2L["69"]);
G2L["6c"]["PaddingTop"] = UDim.new(0, 5);
G2L["6c"]["PaddingRight"] = UDim.new(0, 5);
G2L["6c"]["PaddingLeft"] = UDim.new(0, 5);
G2L["6c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.UIGridLayout
G2L["6d"] = Instance.new("UIGridLayout", G2L["68"]);
G2L["6d"]["CellSize"] = UDim2.new(0, 30, 0, 30);
G2L["6d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["6e"] = Instance.new("TextButton", G2L["68"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["TextTransparency"] = 1;
G2L["6e"]["TextSize"] = 14;
G2L["6e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["BackgroundTransparency"] = 0.95;
G2L["6e"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["6e"]["ClipsDescendants"] = true;
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Text"] = [[Ollama]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);
G2L["6f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["70"] = Instance.new("ImageLabel", G2L["6e"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["Image"] = [[rbxassetid://136028604328894]];
G2L["70"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["71"] = Instance.new("UIPadding", G2L["6e"]);
G2L["71"]["PaddingTop"] = UDim.new(0, 5);
G2L["71"]["PaddingRight"] = UDim.new(0, 5);
G2L["71"]["PaddingLeft"] = UDim.new(0, 5);
G2L["71"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["72"] = Instance.new("TextButton", G2L["68"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextTransparency"] = 1;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["BackgroundTransparency"] = 0.95;
G2L["72"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["72"]["ClipsDescendants"] = true;
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[Mistral]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);
G2L["73"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["74"] = Instance.new("ImageLabel", G2L["72"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["Image"] = [[rbxassetid://104043776192224]];
G2L["74"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["75"] = Instance.new("UIPadding", G2L["72"]);
G2L["75"]["PaddingTop"] = UDim.new(0, 5);
G2L["75"]["PaddingRight"] = UDim.new(0, 5);
G2L["75"]["PaddingLeft"] = UDim.new(0, 5);
G2L["75"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["76"] = Instance.new("TextButton", G2L["68"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["TextTransparency"] = 1;
G2L["76"]["TextSize"] = 14;
G2L["76"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["BackgroundTransparency"] = 0.95;
G2L["76"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["76"]["ClipsDescendants"] = true;
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Text"] = [[Pollinations]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["77"] = Instance.new("UICorner", G2L["76"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["78"] = Instance.new("ImageLabel", G2L["76"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Image"] = [[rbxassetid://75323955386400]];
G2L["78"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["79"] = Instance.new("UIPadding", G2L["76"]);
G2L["79"]["PaddingTop"] = UDim.new(0, 5);
G2L["79"]["PaddingRight"] = UDim.new(0, 5);
G2L["79"]["PaddingLeft"] = UDim.new(0, 5);
G2L["79"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["7a"] = Instance.new("TextButton", G2L["68"]);
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextTransparency"] = 1;
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["BackgroundTransparency"] = 0.95;
G2L["7a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7a"]["ClipsDescendants"] = true;
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Text"] = [[HuggingFace]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["7b"] = Instance.new("UICorner", G2L["7a"]);
G2L["7b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["7c"] = Instance.new("ImageLabel", G2L["7a"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["Image"] = [[rbxassetid://106116930029262]];
G2L["7c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["7d"] = Instance.new("UIPadding", G2L["7a"]);
G2L["7d"]["PaddingTop"] = UDim.new(0, 5);
G2L["7d"]["PaddingRight"] = UDim.new(0, 5);
G2L["7d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["7d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["7e"] = Instance.new("TextButton", G2L["68"]);
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
G2L["7e"]["Text"] = [[Groq]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7e"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["80"] = Instance.new("ImageLabel", G2L["7e"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["Image"] = [[rbxassetid://135447140359444]];
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
G2L["82"] = Instance.new("TextButton", G2L["68"]);
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
G2L["82"]["Text"] = [[Google AI Studio]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["84"] = Instance.new("ImageLabel", G2L["82"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["Image"] = [[rbxassetid://105212340588125]];
G2L["84"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["85"] = Instance.new("UIPadding", G2L["82"]);
G2L["85"]["PaddingTop"] = UDim.new(0, 5);
G2L["85"]["PaddingRight"] = UDim.new(0, 5);
G2L["85"]["PaddingLeft"] = UDim.new(0, 5);
G2L["85"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["86"] = Instance.new("UIPadding", G2L["66"]);
G2L["86"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["87"] = Instance.new("Frame", G2L["5e"]);
G2L["87"]["ZIndex"] = 2;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Name"] = [[ModelSelectFrame]];
G2L["87"]["LayoutOrder"] = 2;
G2L["87"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["88"] = Instance.new("TextLabel", G2L["87"]);
G2L["88"]["ZIndex"] = 0;
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["TextSize"] = 14;
G2L["88"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Text"] = [[Model]];
G2L["88"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["88"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["89"] = Instance.new("Frame", G2L["87"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["89"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["8a"] = Instance.new("TextBox", G2L["89"]);
G2L["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["ClearTextOnFocus"] = false;
G2L["8a"]["ClipsDescendants"] = true;
G2L["8a"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["8a"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[]];
G2L["8a"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["8a"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["8a"]);
G2L["8c"]["PaddingTop"] = UDim.new(0, 10);
G2L["8c"]["PaddingRight"] = UDim.new(0, 10);
G2L["8c"]["PaddingLeft"] = UDim.new(0, 10);
G2L["8c"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["8d"] = Instance.new("ImageButton", G2L["89"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["Image"] = [[rbxassetid://117799502668485]];
G2L["8d"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["8e"] = Instance.new("UICorner", G2L["8d"]);
G2L["8e"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["8f"] = Instance.new("UIPadding", G2L["87"]);
G2L["8f"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["90"] = Instance.new("Frame", G2L["5e"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["90"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["90"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["90"]["Name"] = [[TestFrame]];
G2L["90"]["LayoutOrder"] = 5;
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["91"] = Instance.new("TextLabel", G2L["90"]);
G2L["91"]["ZIndex"] = 0;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["TextSize"] = 14;
G2L["91"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["91"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Text"] = [[Test Connection & Credential]];
G2L["91"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["92"] = Instance.new("UIGridLayout", G2L["90"]);
G2L["92"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["92"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["93"] = Instance.new("TextButton", G2L["90"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["TextSize"] = 14;
G2L["93"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["93"]["BackgroundTransparency"] = 0.95;
G2L["93"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["93"]["LayoutOrder"] = 1;
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Text"] = [[]];
G2L["93"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["94"] = Instance.new("UICorner", G2L["93"]);
G2L["94"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["95"] = Instance.new("Frame", G2L["93"]);
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["95"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["LayoutOrder"] = 3;
G2L["95"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["96"] = Instance.new("Frame", G2L["95"]);
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["96"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["96"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["98"] = Instance.new("TextLabel", G2L["95"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 14;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["TextTransparency"] = 0.25;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundTransparency"] = 1;
G2L["98"]["RichText"] = true;
G2L["98"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[Connection]];
G2L["98"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["98"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["95"]);
G2L["99"]["PaddingTop"] = UDim.new(0, 5);
G2L["99"]["PaddingRight"] = UDim.new(0, 15);
G2L["99"]["PaddingLeft"] = UDim.new(0, 15);
G2L["99"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["9a"] = Instance.new("TextButton", G2L["90"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["BackgroundTransparency"] = 0.95;
G2L["9a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["9a"]["LayoutOrder"] = 2;
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[]];
G2L["9a"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["9a"]);
G2L["9b"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["9c"] = Instance.new("Frame", G2L["9a"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["9c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["LayoutOrder"] = 3;
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["9d"] = Instance.new("Frame", G2L["9c"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["9d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["9d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["9e"] = Instance.new("UICorner", G2L["9d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["9f"] = Instance.new("TextLabel", G2L["9c"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9f"]["TextTransparency"] = 0.25;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["BackgroundTransparency"] = 1;
G2L["9f"]["RichText"] = true;
G2L["9f"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[Credential]];
G2L["9f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["9f"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["a0"] = Instance.new("UIPadding", G2L["9c"]);
G2L["a0"]["PaddingTop"] = UDim.new(0, 5);
G2L["a0"]["PaddingRight"] = UDim.new(0, 15);
G2L["a0"]["PaddingLeft"] = UDim.new(0, 15);
G2L["a0"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["a1"] = Instance.new("Frame", G2L["5e"]);
G2L["a1"]["ZIndex"] = 2;
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Name"] = [[MaxStepFrame]];
G2L["a1"]["LayoutOrder"] = 3;
G2L["a1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["a2"] = Instance.new("TextLabel", G2L["a1"]);
G2L["a2"]["ZIndex"] = 0;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["BackgroundTransparency"] = 1;
G2L["a2"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[Max Step]];
G2L["a2"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a2"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["a3"] = Instance.new("Frame", G2L["a1"]);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["a3"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["a4"] = Instance.new("TextBox", G2L["a3"]);
G2L["a4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["TextSize"] = 14;
G2L["a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a4"]["ClearTextOnFocus"] = false;
G2L["a4"]["ClipsDescendants"] = true;
G2L["a4"]["PlaceholderText"] = [[100]];
G2L["a4"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["a4"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Text"] = [[100]];
G2L["a4"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["a5"] = Instance.new("UICorner", G2L["a4"]);
G2L["a5"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["a6"] = Instance.new("UIPadding", G2L["a4"]);
G2L["a6"]["PaddingTop"] = UDim.new(0, 10);
G2L["a6"]["PaddingRight"] = UDim.new(0, 10);
G2L["a6"]["PaddingLeft"] = UDim.new(0, 10);
G2L["a6"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["a7"] = Instance.new("ImageButton", G2L["a4"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundTransparency"] = 1;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["Image"] = [[rbxassetid://74363941121004]];
G2L["a7"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[ResetButton]];
G2L["a7"]["Rotation"] = -180;
G2L["a7"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["a8"] = Instance.new("UIPadding", G2L["a1"]);
G2L["a8"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["a9"] = Instance.new("UIListLayout", G2L["5e"]);
G2L["a9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["aa"] = Instance.new("Frame", G2L["5e"]);
G2L["aa"]["ZIndex"] = 2;
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Name"] = [[TemperatureFrame]];
G2L["aa"]["LayoutOrder"] = 4;
G2L["aa"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["ab"] = Instance.new("TextLabel", G2L["aa"]);
G2L["ab"]["ZIndex"] = 0;
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["BackgroundTransparency"] = 1;
G2L["ab"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[Temperature]];
G2L["ab"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["ab"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["ac"] = Instance.new("Frame", G2L["aa"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["ac"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["ad"] = Instance.new("TextBox", G2L["ac"]);
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 14;
G2L["ad"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ad"]["ClearTextOnFocus"] = false;
G2L["ad"]["ClipsDescendants"] = true;
G2L["ad"]["PlaceholderText"] = [[100]];
G2L["ad"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["ad"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[1.0]];
G2L["ad"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["ae"] = Instance.new("UICorner", G2L["ad"]);
G2L["ae"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["af"] = Instance.new("UIPadding", G2L["ad"]);
G2L["af"]["PaddingTop"] = UDim.new(0, 10);
G2L["af"]["PaddingRight"] = UDim.new(0, 10);
G2L["af"]["PaddingLeft"] = UDim.new(0, 10);
G2L["af"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["b0"] = Instance.new("ImageButton", G2L["ad"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundTransparency"] = 1;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["Image"] = [[rbxassetid://74363941121004]];
G2L["b0"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Name"] = [[ResetButton]];
G2L["b0"]["Rotation"] = -180;
G2L["b0"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["b1"] = Instance.new("UIPadding", G2L["aa"]);
G2L["b1"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["b2"] = Instance.new("Frame", G2L["5e"]);
G2L["b2"]["ZIndex"] = 2;
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Name"] = [[SystemPromptFrame]];
G2L["b2"]["LayoutOrder"] = 4;
G2L["b2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["b3"] = Instance.new("UIPadding", G2L["b2"]);
G2L["b3"]["PaddingTop"] = UDim.new(0, 5);
G2L["b3"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["b4"] = Instance.new("TextButton", G2L["b2"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["TextSize"] = 17;
G2L["b4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b4"]["BackgroundTransparency"] = 0.95;
G2L["b4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["b5"] = Instance.new("UICorner", G2L["b4"]);
G2L["b5"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["b6"] = Instance.new("CanvasGroup", G2L["5d"]);
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Size"] = UDim2.new(1, -10, 0, 35);
G2L["b6"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b6"]);
G2L["b7"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["b8"] = Instance.new("TextLabel", G2L["b6"]);
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["TextSize"] = 14;
G2L["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["b9"] = Instance.new("UIPadding", G2L["b8"]);
G2L["b9"]["PaddingTop"] = UDim.new(0, 5);
G2L["b9"]["PaddingRight"] = UDim.new(0, 5);
G2L["b9"]["PaddingLeft"] = UDim.new(0, 10);
G2L["b9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["ba"] = Instance.new("TextButton", G2L["b8"]);
G2L["ba"]["BorderSizePixel"] = 0;
G2L["ba"]["TextSize"] = 14;
G2L["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["ba"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ba"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ba"]["Text"] = [[Save changes]];
G2L["ba"]["Name"] = [[Save]];
G2L["ba"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["bb"] = Instance.new("UICorner", G2L["ba"]);
G2L["bb"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["bc"] = Instance.new("TextButton", G2L["b8"]);
G2L["bc"]["RichText"] = true;
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["TextSize"] = 14;
G2L["bc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["bc"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bc"]["BackgroundTransparency"] = 1;
G2L["bc"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Text"] = [[<u>Revert</u>]];
G2L["bc"]["Name"] = [[Revert]];
G2L["bc"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["bd"] = Instance.new("UICorner", G2L["bc"]);
G2L["bd"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["5d"]);
G2L["be"]["PaddingTop"] = UDim.new(0, 10);
G2L["be"]["PaddingRight"] = UDim.new(0, 10);
G2L["be"]["PaddingLeft"] = UDim.new(0, 15);
G2L["be"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["bf"] = Instance.new("Frame", G2L["11"]);
G2L["bf"]["Visible"] = false;
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Name"] = [[CodePage]];
G2L["bf"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame
G2L["c0"] = Instance.new("Frame", G2L["bf"]);
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Name"] = [[ActionsFrame]];
G2L["c0"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.UIGridLayout
G2L["c1"] = Instance.new("UIGridLayout", G2L["c0"]);
G2L["c1"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["c1"]["CellSize"] = UDim2.new(0, 40, 0, 15);
G2L["c1"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["c1"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["c1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.ClearButton
G2L["c2"] = Instance.new("TextButton", G2L["c0"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["TextSize"] = 14;
G2L["c2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c2"]["BackgroundTransparency"] = 0.9;
G2L["c2"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c2"]["Text"] = [[Clear]];
G2L["c2"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.CopyButton
G2L["c3"] = Instance.new("TextButton", G2L["c0"]);
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["TextSize"] = 14;
G2L["c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c3"]["BackgroundTransparency"] = 0.9;
G2L["c3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c3"]["LayoutOrder"] = 1;
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["Text"] = [[Copy]];
G2L["c3"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ActionsFrame.RunButton
G2L["c4"] = Instance.new("TextButton", G2L["c0"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["TextSize"] = 14;
G2L["c4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c4"]["BackgroundTransparency"] = 0.9;
G2L["c4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c4"]["LayoutOrder"] = 2;
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Text"] = [[Run]];
G2L["c4"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["c5"] = Instance.new("UIListLayout", G2L["bf"]);
G2L["c5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["c6"] = Instance.new("ScrollingFrame", G2L["bf"]);
G2L["c6"]["Active"] = true;
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["c6"]["ScrollBarImageTransparency"] = 0.8;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["c6"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["ScrollBarThickness"] = 4;
G2L["c6"]["LayoutOrder"] = 1;
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["c7"] = Instance.new("UIListLayout", G2L["c6"]);
G2L["c7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c7"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["c8"] = Instance.new("TextBox", G2L["c6"]);
G2L["c8"]["Name"] = [[CodeBox]];
G2L["c8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["TextTransparency"] = 1;
G2L["c8"]["TextSize"] = 14;
G2L["c8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c8"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["c8"]["MultiLine"] = true;
G2L["c8"]["ClearTextOnFocus"] = false;
G2L["c8"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["c8"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Text"] = [[print("Hello world!")]];
G2L["c8"]["LayoutOrder"] = 1;
G2L["c8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["c9"] = Instance.new("UIPadding", G2L["c8"]);
G2L["c9"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["ca"] = Instance.new("TextLabel", G2L["c8"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["TextSize"] = 14;
G2L["ca"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ca"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ca"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["BackgroundTransparency"] = 1;
G2L["ca"]["RichText"] = true;
G2L["ca"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Text"] = [[]];
G2L["ca"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["ca"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["cb"] = Instance.new("TextLabel", G2L["c6"]);
G2L["cb"]["BorderSizePixel"] = 0;
G2L["cb"]["TextSize"] = 14;
G2L["cb"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["BackgroundTransparency"] = 0.85;
G2L["cb"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cb"]["Text"] = [[1]];
G2L["cb"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["cb"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["cc"] = Instance.new("UIPadding", G2L["cb"]);
G2L["cc"]["PaddingRight"] = UDim.new(0, 5);
G2L["cc"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["cd"] = Instance.new("Frame", G2L["11"]);
G2L["cd"]["Visible"] = false;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Name"] = [[ToolsPage]];
G2L["cd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["ce"] = Instance.new("ScrollingFrame", G2L["cd"]);
G2L["ce"]["Active"] = true;
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["ce"]["Name"] = [[ScrollingFrameMainChat]];
G2L["ce"]["ScrollBarImageTransparency"] = 0.85;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["ScrollBarThickness"] = 5;
G2L["ce"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["cf"] = Instance.new("UIListLayout", G2L["ce"]);
G2L["cf"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["d0"] = Instance.new("UIPadding", G2L["ce"]);
G2L["d0"]["PaddingTop"] = UDim.new(0, 5);
G2L["d0"]["PaddingRight"] = UDim.new(0, 5);
G2L["d0"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["d1"] = Instance.new("Folder", G2L["ce"]);
G2L["d1"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["d2"] = Instance.new("Frame", G2L["d1"]);
G2L["d2"]["Visible"] = false;
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d2"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Name"] = [[GroupFrame]];
G2L["d2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["d3"] = Instance.new("UIPadding", G2L["d2"]);
G2L["d3"]["PaddingTop"] = UDim.new(0, 5);
G2L["d3"]["PaddingRight"] = UDim.new(0, 5);
G2L["d3"]["PaddingLeft"] = UDim.new(0, 5);
G2L["d3"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["d4"] = Instance.new("Frame", G2L["d2"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["d5"] = Instance.new("TextLabel", G2L["d4"]);
G2L["d5"]["TextWrapped"] = true;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["TextSize"] = 15;
G2L["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["BackgroundTransparency"] = 1;
G2L["d5"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["Text"] = [[Group Title]];
G2L["d5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d5"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["d6"] = Instance.new("UICorner", G2L["d4"]);
G2L["d6"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["d7"] = Instance.new("UIListLayout", G2L["d4"]);
G2L["d7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["d8"] = Instance.new("UIPadding", G2L["d4"]);
G2L["d8"]["PaddingTop"] = UDim.new(0, 10);
G2L["d8"]["PaddingRight"] = UDim.new(0, 10);
G2L["d8"]["PaddingLeft"] = UDim.new(0, 10);
G2L["d8"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["d9"] = Instance.new("Frame", G2L["d4"]);
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["d9"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Name"] = [[ToolFrame]];
G2L["d9"]["LayoutOrder"] = 2;
G2L["d9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["da"] = Instance.new("Frame", G2L["d9"]);
G2L["da"]["BorderSizePixel"] = 0;
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["da"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["da"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["da"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["db"] = Instance.new("UICorner", G2L["da"]);
G2L["db"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["dc"] = Instance.new("TextLabel", G2L["d9"]);
G2L["dc"]["TextWrapped"] = true;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextSize"] = 14;
G2L["dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["dc"]["TextTransparency"] = 0.25;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["RichText"] = true;
G2L["dc"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[Tool Name]];
G2L["dc"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["dc"]["Name"] = [[ToolNameDesc]];
G2L["dc"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["dd"] = Instance.new("UIPadding", G2L["d9"]);
G2L["dd"]["PaddingTop"] = UDim.new(0, 5);
G2L["dd"]["PaddingRight"] = UDim.new(0, 15);
G2L["dd"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["de"] = Instance.new("IntValue", G2L["ce"]);
G2L["de"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["df"] = Instance.new("TextLabel", G2L["ce"]);
G2L["df"]["TextWrapped"] = true;
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["TextSize"] = 20;
G2L["df"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["df"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["BackgroundTransparency"] = 1;
G2L["df"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["df"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["df"]["LayoutOrder"] = -1;
G2L["df"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["df"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["e0"] = Instance.new("UIPadding", G2L["df"]);
G2L["e0"]["PaddingTop"] = UDim.new(0, 5);
G2L["e0"]["PaddingRight"] = UDim.new(0, 15);
G2L["e0"]["PaddingLeft"] = UDim.new(0, 15);
G2L["e0"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["e1"] = Instance.new("Frame", G2L["11"]);
G2L["e1"]["Visible"] = false;
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["Name"] = [[TemplatePage]];
G2L["e1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["e2"] = Instance.new("Frame", G2L["11"]);
G2L["e2"]["Visible"] = false;
G2L["e2"]["BorderSizePixel"] = 0;
G2L["e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e2"]["Name"] = [[StartupPage]];
G2L["e2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["e3"] = Instance.new("ScrollingFrame", G2L["e2"]);
G2L["e3"]["Active"] = true;
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["e3"]["Name"] = [[ScrollingFrameMainChat]];
G2L["e3"]["ScrollBarImageTransparency"] = 0.85;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["ScrollBarThickness"] = 5;
G2L["e3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["e4"] = Instance.new("UIListLayout", G2L["e3"]);
G2L["e4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["e5"] = Instance.new("UIPadding", G2L["e3"]);
G2L["e5"]["PaddingTop"] = UDim.new(0, 5);
G2L["e5"]["PaddingRight"] = UDim.new(0, 5);
G2L["e5"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["e6"] = Instance.new("Folder", G2L["e3"]);
G2L["e6"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["e7"] = Instance.new("Frame", G2L["e6"]);
G2L["e7"]["Visible"] = false;
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e7"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e7"]["Name"] = [[GroupFrame]];
G2L["e7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["e8"] = Instance.new("UIPadding", G2L["e7"]);
G2L["e8"]["PaddingTop"] = UDim.new(0, 5);
G2L["e8"]["PaddingRight"] = UDim.new(0, 5);
G2L["e8"]["PaddingLeft"] = UDim.new(0, 5);
G2L["e8"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["e9"] = Instance.new("Frame", G2L["e7"]);
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e9"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e9"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["ea"] = Instance.new("TextLabel", G2L["e9"]);
G2L["ea"]["TextWrapped"] = true;
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["TextSize"] = 15;
G2L["ea"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ea"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["BackgroundTransparency"] = 1;
G2L["ea"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ea"]["Text"] = [[Group Title]];
G2L["ea"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ea"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["eb"] = Instance.new("UICorner", G2L["e9"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["ec"] = Instance.new("UIListLayout", G2L["e9"]);
G2L["ec"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["ed"] = Instance.new("UIPadding", G2L["e9"]);
G2L["ed"]["PaddingTop"] = UDim.new(0, 10);
G2L["ed"]["PaddingRight"] = UDim.new(0, 10);
G2L["ed"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ed"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["ee"] = Instance.new("Frame", G2L["e9"]);
G2L["ee"]["BorderSizePixel"] = 0;
G2L["ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ee"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ee"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ee"]["Name"] = [[ToolFrame]];
G2L["ee"]["LayoutOrder"] = 2;
G2L["ee"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["ef"] = Instance.new("Frame", G2L["ee"]);
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["ef"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["ef"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ef"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["f1"] = Instance.new("TextLabel", G2L["ee"]);
G2L["f1"]["TextWrapped"] = true;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["TextSize"] = 14;
G2L["f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f1"]["TextTransparency"] = 0.25;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["BackgroundTransparency"] = 1;
G2L["f1"]["RichText"] = true;
G2L["f1"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Text"] = [[Tool Name]];
G2L["f1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f1"]["Name"] = [[ToolNameDesc]];
G2L["f1"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["f2"] = Instance.new("UIPadding", G2L["ee"]);
G2L["f2"]["PaddingTop"] = UDim.new(0, 5);
G2L["f2"]["PaddingRight"] = UDim.new(0, 15);
G2L["f2"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["f3"] = Instance.new("IntValue", G2L["e3"]);
G2L["f3"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["f4"] = Instance.new("TextLabel", G2L["e3"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["TextSize"] = 20;
G2L["f4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["BackgroundTransparency"] = 1;
G2L["f4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["f4"]["LayoutOrder"] = -1;
G2L["f4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f4"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["f5"] = Instance.new("UIPadding", G2L["f4"]);
G2L["f5"]["PaddingTop"] = UDim.new(0, 5);
G2L["f5"]["PaddingRight"] = UDim.new(0, 15);
G2L["f5"]["PaddingLeft"] = UDim.new(0, 15);
G2L["f5"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["f6"] = Instance.new("Frame", G2L["11"]);
G2L["f6"]["Visible"] = false;
G2L["f6"]["BorderSizePixel"] = 0;
G2L["f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f6"]["Name"] = [[HistoryPage]];
G2L["f6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["f8"] = Instance.new("UIListLayout", G2L["f7"]);
G2L["f8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["f9"] = Instance.new("UIPadding", G2L["f7"]);
G2L["f9"]["PaddingTop"] = UDim.new(0, 5);
G2L["f9"]["PaddingRight"] = UDim.new(0, 5);
G2L["f9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["fa"] = Instance.new("Folder", G2L["f7"]);
G2L["fa"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["fb"] = Instance.new("Frame", G2L["fa"]);
G2L["fb"]["Visible"] = false;
G2L["fb"]["BorderSizePixel"] = 0;
G2L["fb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fb"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fb"]["Name"] = [[GroupFrame]];
G2L["fb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["fc"] = Instance.new("UIPadding", G2L["fb"]);
G2L["fc"]["PaddingTop"] = UDim.new(0, 5);
G2L["fc"]["PaddingRight"] = UDim.new(0, 5);
G2L["fc"]["PaddingLeft"] = UDim.new(0, 5);
G2L["fc"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["fd"] = Instance.new("Frame", G2L["fb"]);
G2L["fd"]["BorderSizePixel"] = 0;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fd"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fd"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["fe"] = Instance.new("UICorner", G2L["fd"]);
G2L["fe"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["ff"] = Instance.new("UIPadding", G2L["fd"]);
G2L["ff"]["PaddingTop"] = UDim.new(0, 10);
G2L["ff"]["PaddingRight"] = UDim.new(0, 10);
G2L["ff"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ff"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["100"] = Instance.new("Frame", G2L["fd"]);
G2L["100"]["BorderSizePixel"] = 0;
G2L["100"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["100"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["100"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["100"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["100"]["Name"] = [[Left]];
G2L["100"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["101"] = Instance.new("UIListLayout", G2L["100"]);
G2L["101"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["102"] = Instance.new("Frame", G2L["100"]);
G2L["102"]["BorderSizePixel"] = 0;
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["102"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["102"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["102"]["Name"] = [[ToolsRowFrame]];
G2L["102"]["LayoutOrder"] = 2;
G2L["102"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["103"] = Instance.new("UIListLayout", G2L["102"]);
G2L["103"]["Padding"] = UDim.new(0, 5);
G2L["103"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["103"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["104"] = Instance.new("Frame", G2L["102"]);
G2L["104"]["BorderSizePixel"] = 0;
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["104"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["104"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["Name"] = [[ToolFrame]];
G2L["104"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["105"] = Instance.new("Frame", G2L["104"]);
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["105"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["105"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["106"] = Instance.new("UICorner", G2L["105"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["107"] = Instance.new("UICorner", G2L["104"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["108"] = Instance.new("TextLabel", G2L["104"]);
G2L["108"]["TextWrapped"] = true;
G2L["108"]["BorderSizePixel"] = 0;
G2L["108"]["TextSize"] = 14;
G2L["108"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["108"]["TextTransparency"] = 0.25;
G2L["108"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["108"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["108"]["BackgroundTransparency"] = 1;
G2L["108"]["RichText"] = true;
G2L["108"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["108"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["108"]["Text"] = [[Tool Name]];
G2L["108"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["108"]["Name"] = [[ToolName]];
G2L["108"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["109"] = Instance.new("UIPadding", G2L["104"]);
G2L["109"]["PaddingTop"] = UDim.new(0, 5);
G2L["109"]["PaddingRight"] = UDim.new(0, 7);
G2L["109"]["PaddingLeft"] = UDim.new(0, 7);
G2L["109"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["10a"] = Instance.new("UIPadding", G2L["102"]);
G2L["10a"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["10b"] = Instance.new("TextLabel", G2L["100"]);
G2L["10b"]["TextWrapped"] = true;
G2L["10b"]["BorderSizePixel"] = 0;
G2L["10b"]["TextSize"] = 15;
G2L["10b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10b"]["TextTransparency"] = 0.5;
G2L["10b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["10b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10b"]["BackgroundTransparency"] = 1;
G2L["10b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["10b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10b"]["Text"] = [[0 messages]];
G2L["10b"]["LayoutOrder"] = 1;
G2L["10b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10b"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["10c"] = Instance.new("TextLabel", G2L["100"]);
G2L["10c"]["TextWrapped"] = true;
G2L["10c"]["BorderSizePixel"] = 0;
G2L["10c"]["TextSize"] = 15;
G2L["10c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10c"]["TextTransparency"] = 0.5;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["10c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["BackgroundTransparency"] = 1;
G2L["10c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10c"]["Text"] = [[Timestamp]];
G2L["10c"]["LayoutOrder"] = 999;
G2L["10c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10c"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["10d"] = Instance.new("Frame", G2L["100"]);
G2L["10d"]["BorderSizePixel"] = 0;
G2L["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10d"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10d"]["Name"] = [[TopRowFrame]];
G2L["10d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["10e"] = Instance.new("TextLabel", G2L["10d"]);
G2L["10e"]["TextWrapped"] = true;
G2L["10e"]["BorderSizePixel"] = 0;
G2L["10e"]["TextSize"] = 15;
G2L["10e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10e"]["BackgroundTransparency"] = 1;
G2L["10e"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10e"]["Text"] = [[Title]];
G2L["10e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["10e"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["10f"] = Instance.new("UIListLayout", G2L["10d"]);
G2L["10f"]["Padding"] = UDim.new(0, 5);
G2L["10f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["10f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["110"] = Instance.new("Frame", G2L["10d"]);
G2L["110"]["BorderSizePixel"] = 0;
G2L["110"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["110"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["110"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["110"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["110"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["111"] = Instance.new("TextLabel", G2L["110"]);
G2L["111"]["BorderSizePixel"] = 0;
G2L["111"]["TextSize"] = 14;
G2L["111"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["111"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["111"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["111"]["BackgroundTransparency"] = 1;
G2L["111"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["111"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["111"]["Text"] = [[Active]];
G2L["111"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["112"] = Instance.new("UIPadding", G2L["111"]);
G2L["112"]["PaddingRight"] = UDim.new(0, 5);
G2L["112"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["113"] = Instance.new("UICorner", G2L["110"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["114"] = Instance.new("Frame", G2L["fd"]);
G2L["114"]["BorderSizePixel"] = 0;
G2L["114"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["114"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["114"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["114"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["114"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["114"]["Name"] = [[Right]];
G2L["114"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["115"] = Instance.new("UIGridLayout", G2L["114"]);
G2L["115"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["115"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["115"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["116"] = Instance.new("TextButton", G2L["114"]);
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["TextSize"] = 14;
G2L["116"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["116"]["BackgroundTransparency"] = 0.85;
G2L["116"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["116"]["LayoutOrder"] = 1;
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["Text"] = [[]];
G2L["116"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["117"] = Instance.new("UICorner", G2L["116"]);
G2L["117"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["118"] = Instance.new("ImageLabel", G2L["116"]);
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["Image"] = [[rbxassetid://98174359243805]];
G2L["118"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["118"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["118"]["BackgroundTransparency"] = 1;
G2L["118"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["119"] = Instance.new("UIPadding", G2L["116"]);
G2L["119"]["PaddingTop"] = UDim.new(0, 3);
G2L["119"]["PaddingRight"] = UDim.new(0, 1);
G2L["119"]["PaddingLeft"] = UDim.new(0, 3);
G2L["119"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["11a"] = Instance.new("TextButton", G2L["114"]);
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["TextSize"] = 14;
G2L["11a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11a"]["BackgroundTransparency"] = 0.85;
G2L["11a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["11a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["Text"] = [[]];
G2L["11a"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["11b"] = Instance.new("UICorner", G2L["11a"]);
G2L["11b"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["11c"] = Instance.new("ImageLabel", G2L["11a"]);
G2L["11c"]["BorderSizePixel"] = 0;
G2L["11c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11c"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["11c"]["Image"] = [[rbxassetid://115957379627811]];
G2L["11c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["11d"] = Instance.new("UIPadding", G2L["11a"]);
G2L["11d"]["PaddingTop"] = UDim.new(0, 3);
G2L["11d"]["PaddingRight"] = UDim.new(0, 3);
G2L["11d"]["PaddingLeft"] = UDim.new(0, 3);
G2L["11d"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["11e"] = Instance.new("IntValue", G2L["f7"]);
G2L["11e"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["11f"] = Instance.new("TextLabel", G2L["f7"]);
G2L["11f"]["TextWrapped"] = true;
G2L["11f"]["BorderSizePixel"] = 0;
G2L["11f"]["TextSize"] = 20;
G2L["11f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["11f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["BackgroundTransparency"] = 1;
G2L["11f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11f"]["Text"] = [[Conversation history]];
G2L["11f"]["LayoutOrder"] = -1;
G2L["11f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11f"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["120"] = Instance.new("UIPadding", G2L["11f"]);
G2L["120"]["PaddingTop"] = UDim.new(0, 5);
G2L["120"]["PaddingRight"] = UDim.new(0, 15);
G2L["120"]["PaddingLeft"] = UDim.new(0, 15);
G2L["120"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["121"] = Instance.new("Frame", G2L["10"]);
G2L["121"]["BorderSizePixel"] = 0;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["121"]["ClipsDescendants"] = true;
G2L["121"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIPadding
G2L["122"] = Instance.new("UIPadding", G2L["121"]);
G2L["122"]["PaddingTop"] = UDim.new(0, 30);
G2L["122"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame
G2L["123"] = Instance.new("Frame", G2L["121"]);
G2L["123"]["BorderSizePixel"] = 0;
G2L["123"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["123"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["123"]["Name"] = [[AgentButtonFrame]];
G2L["123"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.ImageLabel
G2L["124"] = Instance.new("ImageLabel", G2L["123"]);
G2L["124"]["BorderSizePixel"] = 0;
G2L["124"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["124"]["Image"] = [[rbxassetid://97622965928648]];
G2L["124"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["124"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.TextLabel
G2L["125"] = Instance.new("TextLabel", G2L["123"]);
G2L["125"]["BorderSizePixel"] = 0;
G2L["125"]["TextSize"] = 17;
G2L["125"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["125"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["125"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["125"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["125"]["BackgroundTransparency"] = 1;
G2L["125"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["125"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["125"]["Text"] = [[Agent]];
G2L["125"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.Hitbox
G2L["126"] = Instance.new("TextButton", G2L["123"]);
G2L["126"]["BorderSizePixel"] = 0;
G2L["126"]["TextTransparency"] = 1;
G2L["126"]["TextSize"] = 14;
G2L["126"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["126"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["126"]["ZIndex"] = 999;
G2L["126"]["BackgroundTransparency"] = 1;
G2L["126"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["126"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame
G2L["127"] = Instance.new("Frame", G2L["121"]);
G2L["127"]["BorderSizePixel"] = 0;
G2L["127"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["127"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["127"]["Name"] = [[SettingsButtonFrame]];
G2L["127"]["LayoutOrder"] = 999;
G2L["127"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.ImageLabel
G2L["128"] = Instance.new("ImageLabel", G2L["127"]);
G2L["128"]["BorderSizePixel"] = 0;
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["128"]["Image"] = [[rbxassetid://98245295559168]];
G2L["128"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["128"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["128"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.TextLabel
G2L["129"] = Instance.new("TextLabel", G2L["127"]);
G2L["129"]["BorderSizePixel"] = 0;
G2L["129"]["TextSize"] = 17;
G2L["129"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["129"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["129"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["BackgroundTransparency"] = 1;
G2L["129"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["129"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["129"]["Text"] = [[Settings]];
G2L["129"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.Hitbox
G2L["12a"] = Instance.new("TextButton", G2L["127"]);
G2L["12a"]["BorderSizePixel"] = 0;
G2L["12a"]["TextTransparency"] = 1;
G2L["12a"]["TextSize"] = 14;
G2L["12a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12a"]["ZIndex"] = 999;
G2L["12a"]["BackgroundTransparency"] = 1;
G2L["12a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12a"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame
G2L["12b"] = Instance.new("Frame", G2L["121"]);
G2L["12b"]["BorderSizePixel"] = 0;
G2L["12b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12b"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["12b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["Name"] = [[CodeButtonFrame]];
G2L["12b"]["LayoutOrder"] = 1;
G2L["12b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.ImageLabel
G2L["12c"] = Instance.new("ImageLabel", G2L["12b"]);
G2L["12c"]["BorderSizePixel"] = 0;
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12c"]["Image"] = [[rbxassetid://102596836544188]];
G2L["12c"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.TextLabel
G2L["12d"] = Instance.new("TextLabel", G2L["12b"]);
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["TextSize"] = 17;
G2L["12d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["BackgroundTransparency"] = 1;
G2L["12d"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["Text"] = [[Code]];
G2L["12d"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.Hitbox
G2L["12e"] = Instance.new("TextButton", G2L["12b"]);
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["TextTransparency"] = 1;
G2L["12e"]["TextSize"] = 14;
G2L["12e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12e"]["ZIndex"] = 999;
G2L["12e"]["BackgroundTransparency"] = 1;
G2L["12e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame
G2L["12f"] = Instance.new("Frame", G2L["121"]);
G2L["12f"]["BorderSizePixel"] = 0;
G2L["12f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12f"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["12f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12f"]["Name"] = [[ToolsButtonFrame]];
G2L["12f"]["LayoutOrder"] = 3;
G2L["12f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.ImageLabel
G2L["130"] = Instance.new("ImageLabel", G2L["12f"]);
G2L["130"]["BorderSizePixel"] = 0;
G2L["130"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["130"]["Image"] = [[rbxassetid://70572480663906]];
G2L["130"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["130"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.TextLabel
G2L["131"] = Instance.new("TextLabel", G2L["12f"]);
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["TextSize"] = 17;
G2L["131"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["131"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["BackgroundTransparency"] = 1;
G2L["131"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["131"]["Text"] = [[Tools]];
G2L["131"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.Hitbox
G2L["132"] = Instance.new("TextButton", G2L["12f"]);
G2L["132"]["BorderSizePixel"] = 0;
G2L["132"]["TextTransparency"] = 1;
G2L["132"]["TextSize"] = 14;
G2L["132"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["132"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["132"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["132"]["ZIndex"] = 999;
G2L["132"]["BackgroundTransparency"] = 1;
G2L["132"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["132"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["132"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame
G2L["133"] = Instance.new("Frame", G2L["121"]);
G2L["133"]["BorderSizePixel"] = 0;
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["133"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["133"]["Name"] = [[StartupButtonFrame]];
G2L["133"]["LayoutOrder"] = 4;
G2L["133"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.ImageLabel
G2L["134"] = Instance.new("ImageLabel", G2L["133"]);
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["Image"] = [[rbxassetid://136122222813963]];
G2L["134"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["134"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["134"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.TextLabel
G2L["135"] = Instance.new("TextLabel", G2L["133"]);
G2L["135"]["BorderSizePixel"] = 0;
G2L["135"]["TextSize"] = 17;
G2L["135"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["135"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["135"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["BackgroundTransparency"] = 1;
G2L["135"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["135"]["Text"] = [[Startup]];
G2L["135"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.Hitbox
G2L["136"] = Instance.new("TextButton", G2L["133"]);
G2L["136"]["BorderSizePixel"] = 0;
G2L["136"]["TextTransparency"] = 1;
G2L["136"]["TextSize"] = 14;
G2L["136"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["136"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["136"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["136"]["ZIndex"] = 999;
G2L["136"]["BackgroundTransparency"] = 1;
G2L["136"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["136"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["136"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIGridLayout
G2L["137"] = Instance.new("UIGridLayout", G2L["121"]);
G2L["137"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["137"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame
G2L["138"] = Instance.new("Frame", G2L["121"]);
G2L["138"]["BorderSizePixel"] = 0;
G2L["138"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["138"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["138"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["138"]["Name"] = [[HistoryButtonFrame]];
G2L["138"]["LayoutOrder"] = 2;
G2L["138"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.ImageLabel
G2L["139"] = Instance.new("ImageLabel", G2L["138"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["Image"] = [[rbxassetid://70487508311290]];
G2L["139"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.TextLabel
G2L["13a"] = Instance.new("TextLabel", G2L["138"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["TextSize"] = 17;
G2L["13a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["BackgroundTransparency"] = 1;
G2L["13a"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Text"] = [[History]];
G2L["13a"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.Hitbox
G2L["13b"] = Instance.new("TextButton", G2L["138"]);
G2L["13b"]["BorderSizePixel"] = 0;
G2L["13b"]["TextTransparency"] = 1;
G2L["13b"]["TextSize"] = 14;
G2L["13b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13b"]["ZIndex"] = 999;
G2L["13b"]["BackgroundTransparency"] = 1;
G2L["13b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13b"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["13c"] = Instance.new("TextLabel", G2L["10"]);
G2L["13c"]["ZIndex"] = 2;
G2L["13c"]["BorderSizePixel"] = 0;
G2L["13c"]["TextSize"] = 14;
G2L["13c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["13c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["13c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13c"]["Text"] = [[IYAI]];
G2L["13c"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["13d"] = Instance.new("UIPadding", G2L["13c"]);
G2L["13d"]["PaddingRight"] = UDim.new(0, 5);
G2L["13d"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["13e"] = Instance.new("TextButton", G2L["13c"]);
G2L["13e"]["BorderSizePixel"] = 0;
G2L["13e"]["TextSize"] = 14;
G2L["13e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13e"]["ZIndex"] = 999;
G2L["13e"]["BackgroundTransparency"] = 1;
G2L["13e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["13e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13e"]["Text"] = [[X]];
G2L["13e"]["Name"] = [[CloseButton]];
G2L["13e"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["13f"] = Instance.new("TextLabel", G2L["13c"]);
G2L["13f"]["BorderSizePixel"] = 0;
G2L["13f"]["TextSize"] = 11;
G2L["13f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13f"]["TextTransparency"] = 0.5;
G2L["13f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13f"]["BackgroundTransparency"] = 1;
G2L["13f"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["13f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13f"]["Text"] = [[by @urluri]];
G2L["13f"]["Name"] = [[AuthorLabel]];
G2L["13f"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["140"] = Instance.new("TextLabel", G2L["13c"]);
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["TextSize"] = 11;
G2L["140"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["140"]["TextTransparency"] = 0.5;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["140"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["BackgroundTransparency"] = 1;
G2L["140"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["Text"] = [[v]];
G2L["140"]["Name"] = [[VersionLabel]];
G2L["140"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["141"] = Instance.new("TextButton", G2L["13c"]);
G2L["141"]["BorderSizePixel"] = 0;
G2L["141"]["TextSize"] = 14;
G2L["141"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["141"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["141"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["141"]["ZIndex"] = 999;
G2L["141"]["BackgroundTransparency"] = 1;
G2L["141"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["141"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["141"]["Text"] = [[—]];
G2L["141"]["Name"] = [[MinimizeButton]];
G2L["141"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.Highlight
G2L["142"] = Instance.new("Frame", G2L["10"]);
G2L["142"]["BorderSizePixel"] = 0;
G2L["142"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["142"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["142"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["142"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["143"] = Instance.new("Frame", G2L["10"]);
G2L["143"]["Visible"] = false;
G2L["143"]["ZIndex"] = 999;
G2L["143"]["BorderSizePixel"] = 0;
G2L["143"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["143"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["Name"] = [[ModalFrame]];
G2L["143"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["144"] = Instance.new("UIPadding", G2L["143"]);
G2L["144"]["PaddingTop"] = UDim.new(0, 25);
G2L["144"]["PaddingRight"] = UDim.new(0, 25);
G2L["144"]["PaddingLeft"] = UDim.new(0, 25);
G2L["144"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["145"] = Instance.new("Frame", G2L["143"]);
G2L["145"]["BorderSizePixel"] = 0;
G2L["145"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["145"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["145"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["146"] = Instance.new("UICorner", G2L["145"]);
G2L["146"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["147"] = Instance.new("TextButton", G2L["145"]);
G2L["147"]["BorderSizePixel"] = 0;
G2L["147"]["TextSize"] = 14;
G2L["147"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["147"]["ZIndex"] = 999;
G2L["147"]["BackgroundTransparency"] = 1;
G2L["147"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["147"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["147"]["Text"] = [[X]];
G2L["147"]["Name"] = [[CloseButton]];
G2L["147"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["148"] = Instance.new("Frame", G2L["145"]);
G2L["148"]["Visible"] = false;
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["148"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["Name"] = [[SearchModelModal]];
G2L["148"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["149"] = Instance.new("UIPadding", G2L["148"]);
G2L["149"]["PaddingTop"] = UDim.new(0, 10);
G2L["149"]["PaddingRight"] = UDim.new(0, 10);
G2L["149"]["PaddingLeft"] = UDim.new(0, 10);
G2L["149"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["14a"] = Instance.new("TextBox", G2L["148"]);
G2L["14a"]["Name"] = [[SearchBox]];
G2L["14a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14a"]["BorderSizePixel"] = 0;
G2L["14a"]["TextSize"] = 14;
G2L["14a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14a"]["PlaceholderText"] = [[Search models...]];
G2L["14a"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["14a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14a"]["Text"] = [[]];
G2L["14a"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["14b"] = Instance.new("UICorner", G2L["14a"]);
G2L["14b"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["14c"] = Instance.new("UIPadding", G2L["14a"]);
G2L["14c"]["PaddingTop"] = UDim.new(0, 10);
G2L["14c"]["PaddingRight"] = UDim.new(0, 10);
G2L["14c"]["PaddingLeft"] = UDim.new(0, 10);
G2L["14c"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["14d"] = Instance.new("ImageButton", G2L["148"]);
G2L["14d"]["BorderSizePixel"] = 0;
G2L["14d"]["BackgroundTransparency"] = 1;
G2L["14d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["Image"] = [[rbxassetid://94907058451749]];
G2L["14d"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["14d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14d"]["Name"] = [[SearchButton]];
G2L["14d"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["14e"] = Instance.new("ScrollingFrame", G2L["148"]);
G2L["14e"]["Active"] = true;
G2L["14e"]["BorderSizePixel"] = 0;
G2L["14e"]["ScrollBarImageTransparency"] = 0.9;
G2L["14e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14e"]["Size"] = UDim2.new(1, 0, 0, 285);
G2L["14e"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["14e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14e"]["ScrollBarThickness"] = 6;
G2L["14e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["14f"] = Instance.new("TextButton", G2L["14e"]);
G2L["14f"]["BorderSizePixel"] = 0;
G2L["14f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14f"]["TextSize"] = 14;
G2L["14f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14f"]["BackgroundTransparency"] = 1;
G2L["14f"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["14f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14f"]["Text"] = [[SomeModel]];
G2L["14f"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["150"] = Instance.new("UIPadding", G2L["14f"]);
G2L["150"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["151"] = Instance.new("UIGridLayout", G2L["14e"]);
G2L["151"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["151"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["152"] = Instance.new("Frame", G2L["145"]);
G2L["152"]["Visible"] = false;
G2L["152"]["BorderSizePixel"] = 0;
G2L["152"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["152"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["152"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["152"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["152"]["Name"] = [[ToolResultViewModal]];
G2L["152"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["153"] = Instance.new("UIPadding", G2L["152"]);
G2L["153"]["PaddingTop"] = UDim.new(0, 10);
G2L["153"]["PaddingRight"] = UDim.new(0, 10);
G2L["153"]["PaddingLeft"] = UDim.new(0, 10);
G2L["153"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF
G2L["154"] = Instance.new("ScrollingFrame", G2L["152"]);
G2L["154"]["Active"] = true;
G2L["154"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["154"]["Name"] = [[ExecutionSF]];
G2L["154"]["ScrollBarImageTransparency"] = 0.8;
G2L["154"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["154"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["154"]["Size"] = UDim2.new(1, 0, 0.49, 0);
G2L["154"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["154"]["ScrollBarThickness"] = 4;
G2L["154"]["LayoutOrder"] = 1;
G2L["154"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF.TextBox
G2L["155"] = Instance.new("TextBox", G2L["154"]);
G2L["155"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["155"]["BorderSizePixel"] = 0;
G2L["155"]["TextEditable"] = false;
G2L["155"]["TextSize"] = 14;
G2L["155"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["155"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["155"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["155"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["155"]["MultiLine"] = true;
G2L["155"]["ClearTextOnFocus"] = false;
G2L["155"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["155"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["155"]["Text"] = [[Tool execution]];
G2L["155"]["LayoutOrder"] = 1;
G2L["155"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF.TextBox.UIPadding
G2L["156"] = Instance.new("UIPadding", G2L["155"]);
G2L["156"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.OutputSF
G2L["157"] = Instance.new("ScrollingFrame", G2L["152"]);
G2L["157"]["Active"] = true;
G2L["157"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["157"]["Name"] = [[OutputSF]];
G2L["157"]["ScrollBarImageTransparency"] = 0.8;
G2L["157"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["157"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["157"]["Size"] = UDim2.new(1, 0, 0.49, 0);
G2L["157"]["Position"] = UDim2.new(0, 0, 0.51, 0);
G2L["157"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["157"]["ScrollBarThickness"] = 4;
G2L["157"]["LayoutOrder"] = 1;
G2L["157"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.OutputSF.TextBox
G2L["158"] = Instance.new("TextBox", G2L["157"]);
G2L["158"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["158"]["BorderSizePixel"] = 0;
G2L["158"]["TextEditable"] = false;
G2L["158"]["TextSize"] = 14;
G2L["158"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["158"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["158"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["158"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["158"]["MultiLine"] = true;
G2L["158"]["ClearTextOnFocus"] = false;
G2L["158"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["158"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["158"]["Text"] = [[Tool output]];
G2L["158"]["LayoutOrder"] = 1;
G2L["158"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.OutputSF.TextBox.UIPadding
G2L["159"] = Instance.new("UIPadding", G2L["158"]);
G2L["159"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["15a"] = Instance.new("TextLabel", G2L["145"]);
G2L["15a"]["BorderSizePixel"] = 0;
G2L["15a"]["TextSize"] = 17;
G2L["15a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15a"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["15a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15a"]["BackgroundTransparency"] = 1;
G2L["15a"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["15a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15a"]["Name"] = [[TitleLabel]];
G2L["15a"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["15b"] = Instance.new("UIPadding", G2L["15a"]);
G2L["15b"]["PaddingTop"] = UDim.new(0, 10);
G2L["15b"]["PaddingRight"] = UDim.new(0, 10);
G2L["15b"]["PaddingLeft"] = UDim.new(0, 10);
G2L["15b"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["15c"] = Instance.new("Frame", G2L["145"]);
G2L["15c"]["Visible"] = false;
G2L["15c"]["BorderSizePixel"] = 0;
G2L["15c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15c"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["15c"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["15c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15c"]["Name"] = [[SystemPromptModal]];
G2L["15c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["15d"] = Instance.new("UIPadding", G2L["15c"]);
G2L["15d"]["PaddingTop"] = UDim.new(0, 10);
G2L["15d"]["PaddingRight"] = UDim.new(0, 10);
G2L["15d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["15d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF
G2L["15e"] = Instance.new("ScrollingFrame", G2L["15c"]);
G2L["15e"]["Active"] = true;
G2L["15e"]["BorderSizePixel"] = 0;
G2L["15e"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["15e"]["Name"] = [[OutputSF]];
G2L["15e"]["ScrollBarImageTransparency"] = 0.8;
G2L["15e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["15e"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["15e"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15e"]["ScrollBarThickness"] = 4;
G2L["15e"]["LayoutOrder"] = 1;
G2L["15e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF.TextBox
G2L["15f"] = Instance.new("TextBox", G2L["15e"]);
G2L["15f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15f"]["BorderSizePixel"] = 0;
G2L["15f"]["TextEditable"] = false;
G2L["15f"]["TextSize"] = 14;
G2L["15f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["15f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15f"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["15f"]["MultiLine"] = true;
G2L["15f"]["ClearTextOnFocus"] = false;
G2L["15f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15f"]["Text"] = [[Default system prompt]];
G2L["15f"]["LayoutOrder"] = 1;
G2L["15f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF.TextBox.UIPadding
G2L["160"] = Instance.new("UIPadding", G2L["15f"]);
G2L["160"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["161"] = Instance.new("Frame", G2L["15c"]);
G2L["161"]["BorderSizePixel"] = 0;
G2L["161"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["161"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["161"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["161"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["161"]["Name"] = [[BottomContainer]];
G2L["161"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["162"] = Instance.new("UIGridLayout", G2L["161"]);
G2L["162"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["162"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["162"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["162"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["163"] = Instance.new("ImageButton", G2L["161"]);
G2L["163"]["BorderSizePixel"] = 0;
G2L["163"]["BackgroundTransparency"] = 1;
G2L["163"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["163"]["Image"] = [[rbxassetid://74363941121004]];
G2L["163"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["163"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["163"]["Name"] = [[ResetButton]];
G2L["163"]["Rotation"] = -180;
G2L["163"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["164"] = Instance.new("ImageButton", G2L["161"]);
G2L["164"]["BorderSizePixel"] = 0;
G2L["164"]["BackgroundTransparency"] = 1;
G2L["164"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["164"]["Image"] = [[rbxassetid://78698324836944]];
G2L["164"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["164"]["LayoutOrder"] = 1;
G2L["164"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["164"]["Name"] = [[SaveButton]];
G2L["164"]["Rotation"] = -180;
G2L["164"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["165"] = Instance.new("CanvasGroup", G2L["e"]);
G2L["165"]["Visible"] = false;
G2L["165"]["GroupTransparency"] = 1;
G2L["165"]["ZIndex"] = 999;
G2L["165"]["BorderSizePixel"] = 0;
G2L["165"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["165"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["165"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["165"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["166"] = Instance.new("ImageLabel", G2L["165"]);
G2L["166"]["BorderSizePixel"] = 0;
G2L["166"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["166"]["Image"] = [[rbxassetid://115810237733262]];
G2L["166"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["166"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["166"]["BackgroundTransparency"] = 1;
G2L["166"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["167"] = Instance.new("TextLabel", G2L["166"]);
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["TextSize"] = 35;
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["167"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["BackgroundTransparency"] = 1;
G2L["167"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Text"] = [[Artificial Intelligence]];
G2L["167"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI Toast Container
G2L["168"] = Instance.new("Frame", G2L["1"]);
G2L["168"]["BorderSizePixel"] = 0;
G2L["168"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["168"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["168"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["168"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["168"]["Name"] = [[IYAI Toast Container]];
G2L["168"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["169"] = Instance.new("CanvasGroup", G2L["168"]);
G2L["169"]["BorderSizePixel"] = 0;
G2L["169"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["169"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["169"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["169"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["169"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["16a"] = Instance.new("UICorner", G2L["169"]);
G2L["16a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["16b"] = Instance.new("Frame", G2L["169"]);
G2L["16b"]["BorderSizePixel"] = 0;
G2L["16b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["16b"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["16b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16b"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["16c"] = Instance.new("TextLabel", G2L["169"]);
G2L["16c"]["ZIndex"] = 2;
G2L["16c"]["BorderSizePixel"] = 0;
G2L["16c"]["TextSize"] = 14;
G2L["16c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["16c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["16c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16c"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["16c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16c"]["Text"] = [[Toast Title]];
G2L["16c"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["16d"] = Instance.new("UIPadding", G2L["16c"]);
G2L["16d"]["PaddingRight"] = UDim.new(0, 5);
G2L["16d"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["16e"] = Instance.new("TextButton", G2L["16c"]);
G2L["16e"]["BorderSizePixel"] = 0;
G2L["16e"]["TextSize"] = 14;
G2L["16e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["16e"]["BackgroundTransparency"] = 1;
G2L["16e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["16e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16e"]["Text"] = [[X]];
G2L["16e"]["Name"] = [[CloseButton]];
G2L["16e"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["16f"] = Instance.new("UICorner", G2L["16e"]);
G2L["16f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["170"] = Instance.new("TextLabel", G2L["169"]);
G2L["170"]["TextWrapped"] = true;
G2L["170"]["BorderSizePixel"] = 0;
G2L["170"]["TextSize"] = 14;
G2L["170"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["170"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["170"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["170"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["170"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["170"]["BackgroundTransparency"] = 1;
G2L["170"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["170"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["170"]["Name"] = [[ToastDesc]];
G2L["170"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["171"] = Instance.new("UIPadding", G2L["170"]);
G2L["171"]["PaddingTop"] = UDim.new(0, 5);
G2L["171"]["PaddingRight"] = UDim.new(0, 10);
G2L["171"]["PaddingLeft"] = UDim.new(0, 10);
G2L["171"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["172"] = Instance.new("Frame", G2L["169"]);
G2L["172"]["ZIndex"] = 999;
G2L["172"]["BorderSizePixel"] = 0;
G2L["172"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["172"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["172"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["172"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["172"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["173"] = Instance.new("UICorner", G2L["172"]);
G2L["173"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["174"] = Instance.new("UIPadding", G2L["168"]);
G2L["174"]["PaddingTop"] = UDim.new(0, 15);
G2L["174"]["PaddingRight"] = UDim.new(0, 15);
G2L["174"]["PaddingLeft"] = UDim.new(0, 15);
G2L["174"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["175"] = Instance.new("StringValue", G2L["1"]);
G2L["175"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["176"] = Instance.new("StringValue", G2L["1"]);
G2L["176"]["Name"] = [[Version]];
G2L["176"]["Value"] = [[1.0.4]];

return G2L
