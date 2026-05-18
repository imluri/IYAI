-- Instances: 498 | Scripts: 2 | Modules: 10 | Tags: 0
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


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ScrollingFrameMainChat.GreetFrame.ConnectToBrowserButton
G2L["51"] = Instance.new("TextButton", G2L["4b"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["TextSize"] = 17;
G2L["51"]["TextColor3"] = Color3.fromRGB(0, 77, 255);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["51"]["LayoutOrder"] = 2;
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[Connect to browser →]];
G2L["51"]["Name"] = [[ConnectToBrowserButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame
G2L["52"] = Instance.new("Frame", G2L["12"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["52"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[InputFrame]];
G2L["52"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput
G2L["53"] = Instance.new("TextBox", G2L["52"]);
G2L["53"]["Name"] = [[TextBoxInput]];
G2L["53"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["ClearTextOnFocus"] = false;
G2L["53"]["ClipsDescendants"] = true;
G2L["53"]["PlaceholderText"] = [[Ask me anything]];
G2L["53"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[]];
G2L["53"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UIPadding
G2L["54"] = Instance.new("UIPadding", G2L["53"]);
G2L["54"]["PaddingTop"] = UDim.new(0, 5);
G2L["54"]["PaddingRight"] = UDim.new(0, 5);
G2L["54"]["PaddingLeft"] = UDim.new(0, 7);
G2L["54"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.TextBoxInput.UICorner
G2L["55"] = Instance.new("UICorner", G2L["53"]);
G2L["55"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.UIPadding
G2L["56"] = Instance.new("UIPadding", G2L["52"]);
G2L["56"]["PaddingTop"] = UDim.new(0, 5);
G2L["56"]["PaddingRight"] = UDim.new(0, 5);
G2L["56"]["PaddingLeft"] = UDim.new(0, 5);
G2L["56"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton
G2L["57"] = Instance.new("ImageButton", G2L["52"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["ImageTransparency"] = 0.7;
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Image"] = [[rbxassetid://94637657012010]];
G2L["57"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[SendButton]];
G2L["57"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.SendButton.UICorner
G2L["58"] = Instance.new("UICorner", G2L["57"]);
G2L["58"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton
G2L["59"] = Instance.new("ImageButton", G2L["52"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["Visible"] = false;
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Image"] = [[rbxassetid://83095283930542]];
G2L["59"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[StopButton]];
G2L["59"]["Position"] = UDim2.new(1, -25, 0.5, -12);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.InputFrame.StopButton.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["59"]);
G2L["5a"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame
G2L["5b"] = Instance.new("Frame", G2L["12"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["5b"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[ActionsFrame]];
G2L["5b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIGridLayout
G2L["5c"] = Instance.new("UIGridLayout", G2L["5b"]);
G2L["5c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["5c"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["5c"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["5c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.UIPadding
G2L["5d"] = Instance.new("UIPadding", G2L["5b"]);
G2L["5d"]["PaddingTop"] = UDim.new(0, 5);
G2L["5d"]["PaddingRight"] = UDim.new(0, 5);
G2L["5d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["5d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton
G2L["5e"] = Instance.new("TextButton", G2L["5b"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextTransparency"] = 1;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["BackgroundTransparency"] = 0.9;
G2L["5e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["5e"]["LayoutOrder"] = 2;
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[Clear]];
G2L["5e"]["Name"] = [[NewChatButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.ImageLabel
G2L["5f"] = Instance.new("ImageLabel", G2L["5e"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["Image"] = [[rbxassetid://115487068891941]];
G2L["5f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UICorner
G2L["60"] = Instance.new("UICorner", G2L["5e"]);
G2L["60"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.AgentPage.ActionsFrame.NewChatButton.UIPadding
G2L["61"] = Instance.new("UIPadding", G2L["5e"]);
G2L["61"]["PaddingTop"] = UDim.new(0, 3);
G2L["61"]["PaddingRight"] = UDim.new(0, 3);
G2L["61"]["PaddingLeft"] = UDim.new(0, 3);
G2L["61"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage
G2L["62"] = Instance.new("Frame", G2L["11"]);
G2L["62"]["Visible"] = false;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Name"] = [[SettingsPage]];
G2L["62"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame
G2L["63"] = Instance.new("ScrollingFrame", G2L["62"]);
G2L["63"]["Active"] = true;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["CanvasSize"] = UDim2.new(0, 0, 1.5, 0);
G2L["63"]["ScrollBarImageTransparency"] = 0.85;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["ScrollBarThickness"] = 5;
G2L["63"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame
G2L["64"] = Instance.new("Frame", G2L["63"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Name"] = [[APIKeyFrame]];
G2L["64"]["LayoutOrder"] = 1;
G2L["64"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.Title
G2L["65"] = Instance.new("TextLabel", G2L["64"]);
G2L["65"]["ZIndex"] = 0;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["TextSize"] = 14;
G2L["65"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["65"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["BackgroundTransparency"] = 1;
G2L["65"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Text"] = [[API Key]];
G2L["65"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["65"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel
G2L["66"] = Instance.new("TextLabel", G2L["64"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["TextSize"] = 14;
G2L["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["66"]["ClipsDescendants"] = true;
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Text"] = [[]];
G2L["66"]["Position"] = UDim2.new(1, -325, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox
G2L["67"] = Instance.new("TextBox", G2L["66"]);
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextTransparency"] = 1;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["ClearTextOnFocus"] = false;
G2L["67"]["ClipsDescendants"] = true;
G2L["67"]["PlaceholderText"] = [[sk-...]];
G2L["67"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["67"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[]];
G2L["67"]["LayoutOrder"] = 1;
G2L["67"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.TextBox.UICorner
G2L["68"] = Instance.new("UICorner", G2L["67"]);
G2L["68"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.TextLabel.UIPadding
G2L["69"] = Instance.new("UIPadding", G2L["66"]);
G2L["69"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.APIKeyFrame.UIPadding
G2L["6a"] = Instance.new("UIPadding", G2L["64"]);
G2L["6a"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame
G2L["6b"] = Instance.new("Frame", G2L["63"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[HostSelectFrame]];
G2L["6b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Title
G2L["6c"] = Instance.new("TextLabel", G2L["6b"]);
G2L["6c"]["ZIndex"] = 0;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextSize"] = 14;
G2L["6c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[Host Provider]];
G2L["6c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["6c"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame
G2L["6d"] = Instance.new("Frame", G2L["6b"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["6d"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["6e"] = Instance.new("TextButton", G2L["6d"]);
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
G2L["6e"]["Text"] = [[OpenRouter]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);
G2L["6f"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["70"] = Instance.new("ImageLabel", G2L["6e"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["Image"] = [[rbxassetid://88246357492813]];
G2L["70"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Position"] = UDim2.new(-0.03415, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["71"] = Instance.new("UIPadding", G2L["6e"]);
G2L["71"]["PaddingTop"] = UDim.new(0, 5);
G2L["71"]["PaddingRight"] = UDim.new(0, 5);
G2L["71"]["PaddingLeft"] = UDim.new(0, 5);
G2L["71"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.UIGridLayout
G2L["72"] = Instance.new("UIGridLayout", G2L["6d"]);
G2L["72"]["CellSize"] = UDim2.new(0, 30, 0, 30);
G2L["72"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["73"] = Instance.new("TextButton", G2L["6d"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextTransparency"] = 1;
G2L["73"]["TextSize"] = 14;
G2L["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["BackgroundTransparency"] = 0.95;
G2L["73"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["73"]["ClipsDescendants"] = true;
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[Ollama]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["74"] = Instance.new("UICorner", G2L["73"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["75"] = Instance.new("ImageLabel", G2L["73"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["Image"] = [[rbxassetid://136028604328894]];
G2L["75"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["76"] = Instance.new("UIPadding", G2L["73"]);
G2L["76"]["PaddingTop"] = UDim.new(0, 5);
G2L["76"]["PaddingRight"] = UDim.new(0, 5);
G2L["76"]["PaddingLeft"] = UDim.new(0, 5);
G2L["76"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["77"] = Instance.new("TextButton", G2L["6d"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextTransparency"] = 1;
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["BackgroundTransparency"] = 0.95;
G2L["77"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["77"]["ClipsDescendants"] = true;
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Mistral]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);
G2L["78"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["79"] = Instance.new("ImageLabel", G2L["77"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["Image"] = [[rbxassetid://104043776192224]];
G2L["79"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["7a"] = Instance.new("UIPadding", G2L["77"]);
G2L["7a"]["PaddingTop"] = UDim.new(0, 5);
G2L["7a"]["PaddingRight"] = UDim.new(0, 5);
G2L["7a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["7a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["7b"] = Instance.new("TextButton", G2L["6d"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextTransparency"] = 1;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["BackgroundTransparency"] = 0.95;
G2L["7b"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7b"]["ClipsDescendants"] = true;
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[Pollinations]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["7c"] = Instance.new("UICorner", G2L["7b"]);
G2L["7c"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["7d"] = Instance.new("ImageLabel", G2L["7b"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["Image"] = [[rbxassetid://75323955386400]];
G2L["7d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["7e"] = Instance.new("UIPadding", G2L["7b"]);
G2L["7e"]["PaddingTop"] = UDim.new(0, 5);
G2L["7e"]["PaddingRight"] = UDim.new(0, 5);
G2L["7e"]["PaddingLeft"] = UDim.new(0, 5);
G2L["7e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["7f"] = Instance.new("TextButton", G2L["6d"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextTransparency"] = 1;
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7f"]["BackgroundTransparency"] = 0.95;
G2L["7f"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["7f"]["ClipsDescendants"] = true;
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[HuggingFace]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7f"]);
G2L["80"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["81"] = Instance.new("ImageLabel", G2L["7f"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["Image"] = [[rbxassetid://106116930029262]];
G2L["81"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["82"] = Instance.new("UIPadding", G2L["7f"]);
G2L["82"]["PaddingTop"] = UDim.new(0, 5);
G2L["82"]["PaddingRight"] = UDim.new(0, 5);
G2L["82"]["PaddingLeft"] = UDim.new(0, 5);
G2L["82"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["83"] = Instance.new("TextButton", G2L["6d"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextTransparency"] = 1;
G2L["83"]["TextSize"] = 14;
G2L["83"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["83"]["BackgroundTransparency"] = 0.95;
G2L["83"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["83"]["ClipsDescendants"] = true;
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[Groq]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);
G2L["84"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["85"] = Instance.new("ImageLabel", G2L["83"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["Image"] = [[rbxassetid://135447140359444]];
G2L["85"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["86"] = Instance.new("UIPadding", G2L["83"]);
G2L["86"]["PaddingTop"] = UDim.new(0, 5);
G2L["86"]["PaddingRight"] = UDim.new(0, 5);
G2L["86"]["PaddingLeft"] = UDim.new(0, 5);
G2L["86"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton
G2L["87"] = Instance.new("TextButton", G2L["6d"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextTransparency"] = 1;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["BackgroundTransparency"] = 0.95;
G2L["87"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["87"]["ClipsDescendants"] = true;
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[Google AI Studio]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UICorner
G2L["88"] = Instance.new("UICorner", G2L["87"]);
G2L["88"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.ImageLabel
G2L["89"] = Instance.new("ImageLabel", G2L["87"]);
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Image"] = [[rbxassetid://105212340588125]];
G2L["89"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.Frame.TextButton.UIPadding
G2L["8a"] = Instance.new("UIPadding", G2L["87"]);
G2L["8a"]["PaddingTop"] = UDim.new(0, 5);
G2L["8a"]["PaddingRight"] = UDim.new(0, 5);
G2L["8a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["8a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.HostSelectFrame.UIPadding
G2L["8b"] = Instance.new("UIPadding", G2L["6b"]);
G2L["8b"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame
G2L["8c"] = Instance.new("Frame", G2L["63"]);
G2L["8c"]["ZIndex"] = 2;
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Name"] = [[ModelSelectFrame]];
G2L["8c"]["LayoutOrder"] = 2;
G2L["8c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Title
G2L["8d"] = Instance.new("TextLabel", G2L["8c"]);
G2L["8d"]["ZIndex"] = 0;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["TextSize"] = 14;
G2L["8d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Text"] = [[Model]];
G2L["8d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["8d"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame
G2L["8e"] = Instance.new("Frame", G2L["8c"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["8e"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox
G2L["8f"] = Instance.new("TextBox", G2L["8e"]);
G2L["8f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["TextSize"] = 14;
G2L["8f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8f"]["ClearTextOnFocus"] = false;
G2L["8f"]["ClipsDescendants"] = true;
G2L["8f"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["8f"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Text"] = [[]];
G2L["8f"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UICorner
G2L["90"] = Instance.new("UICorner", G2L["8f"]);
G2L["90"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.TextBox.UIPadding
G2L["91"] = Instance.new("UIPadding", G2L["8f"]);
G2L["91"]["PaddingTop"] = UDim.new(0, 10);
G2L["91"]["PaddingRight"] = UDim.new(0, 10);
G2L["91"]["PaddingLeft"] = UDim.new(0, 10);
G2L["91"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton
G2L["92"] = Instance.new("ImageButton", G2L["8e"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["Image"] = [[rbxassetid://117799502668485]];
G2L["92"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.Frame.ImageButton.UICorner
G2L["93"] = Instance.new("UICorner", G2L["92"]);
G2L["93"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.ModelSelectFrame.UIPadding
G2L["94"] = Instance.new("UIPadding", G2L["8c"]);
G2L["94"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame
G2L["95"] = Instance.new("Frame", G2L["63"]);
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["95"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["Name"] = [[TestFrame]];
G2L["95"]["LayoutOrder"] = 5;
G2L["95"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Title
G2L["96"] = Instance.new("TextLabel", G2L["95"]);
G2L["96"]["ZIndex"] = 0;
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["TextSize"] = 14;
G2L["96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[Test Connection & Credential]];
G2L["96"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.UIGridLayout
G2L["97"] = Instance.new("UIGridLayout", G2L["95"]);
G2L["97"]["CellSize"] = UDim2.new(1, -20, 0, 25);
G2L["97"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection
G2L["98"] = Instance.new("TextButton", G2L["95"]);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextSize"] = 14;
G2L["98"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["98"]["BackgroundTransparency"] = 0.95;
G2L["98"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["98"]["LayoutOrder"] = 1;
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Text"] = [[]];
G2L["98"]["Name"] = [[Connection]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.UICorner
G2L["99"] = Instance.new("UICorner", G2L["98"]);
G2L["99"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame
G2L["9a"] = Instance.new("Frame", G2L["98"]);
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["9a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["LayoutOrder"] = 3;
G2L["9a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor
G2L["9b"] = Instance.new("Frame", G2L["9a"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["9b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["9b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["9b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9b"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.IconColor.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.TextLabel
G2L["9d"] = Instance.new("TextLabel", G2L["9a"]);
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["TextSize"] = 14;
G2L["9d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9d"]["TextTransparency"] = 0.25;
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["BackgroundTransparency"] = 1;
G2L["9d"]["RichText"] = true;
G2L["9d"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Text"] = [[Connection]];
G2L["9d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["9d"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Connection.Frame.UIPadding
G2L["9e"] = Instance.new("UIPadding", G2L["9a"]);
G2L["9e"]["PaddingTop"] = UDim.new(0, 5);
G2L["9e"]["PaddingRight"] = UDim.new(0, 15);
G2L["9e"]["PaddingLeft"] = UDim.new(0, 15);
G2L["9e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential
G2L["9f"] = Instance.new("TextButton", G2L["95"]);
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["BackgroundTransparency"] = 0.95;
G2L["9f"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["9f"]["LayoutOrder"] = 2;
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[]];
G2L["9f"]["Name"] = [[Credential]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.UICorner
G2L["a0"] = Instance.new("UICorner", G2L["9f"]);
G2L["a0"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame
G2L["a1"] = Instance.new("Frame", G2L["9f"]);
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["a1"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["LayoutOrder"] = 3;
G2L["a1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor
G2L["a2"] = Instance.new("Frame", G2L["a1"]);
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
G2L["a2"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["a2"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.IconColor.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.TextLabel
G2L["a4"] = Instance.new("TextLabel", G2L["a1"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["TextSize"] = 14;
G2L["a4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a4"]["TextTransparency"] = 0.25;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["BackgroundTransparency"] = 1;
G2L["a4"]["RichText"] = true;
G2L["a4"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Text"] = [[Credential]];
G2L["a4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["a4"]["Position"] = UDim2.new(0, 15, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TestFrame.Credential.Frame.UIPadding
G2L["a5"] = Instance.new("UIPadding", G2L["a1"]);
G2L["a5"]["PaddingTop"] = UDim.new(0, 5);
G2L["a5"]["PaddingRight"] = UDim.new(0, 15);
G2L["a5"]["PaddingLeft"] = UDim.new(0, 15);
G2L["a5"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame
G2L["a6"] = Instance.new("Frame", G2L["63"]);
G2L["a6"]["ZIndex"] = 2;
G2L["a6"]["BorderSizePixel"] = 0;
G2L["a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a6"]["Name"] = [[MaxStepFrame]];
G2L["a6"]["LayoutOrder"] = 3;
G2L["a6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Title
G2L["a7"] = Instance.new("TextLabel", G2L["a6"]);
G2L["a7"]["ZIndex"] = 0;
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["TextSize"] = 14;
G2L["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a7"]["BackgroundTransparency"] = 1;
G2L["a7"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Text"] = [[Max Step]];
G2L["a7"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a7"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame
G2L["a8"] = Instance.new("Frame", G2L["a6"]);
G2L["a8"]["BorderSizePixel"] = 0;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["a8"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox
G2L["a9"] = Instance.new("TextBox", G2L["a8"]);
G2L["a9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["TextSize"] = 14;
G2L["a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a9"]["ClearTextOnFocus"] = false;
G2L["a9"]["ClipsDescendants"] = true;
G2L["a9"]["PlaceholderText"] = [[100]];
G2L["a9"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["a9"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[100]];
G2L["a9"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.UIPadding
G2L["ab"] = Instance.new("UIPadding", G2L["a9"]);
G2L["ab"]["PaddingTop"] = UDim.new(0, 10);
G2L["ab"]["PaddingRight"] = UDim.new(0, 10);
G2L["ab"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ab"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.Frame.TextBox.ResetButton
G2L["ac"] = Instance.new("ImageButton", G2L["a9"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundTransparency"] = 1;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["Image"] = [[rbxassetid://74363941121004]];
G2L["ac"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Name"] = [[ResetButton]];
G2L["ac"]["Rotation"] = -180;
G2L["ac"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.MaxStepFrame.UIPadding
G2L["ad"] = Instance.new("UIPadding", G2L["a6"]);
G2L["ad"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.UIListLayout
G2L["ae"] = Instance.new("UIListLayout", G2L["63"]);
G2L["ae"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame
G2L["af"] = Instance.new("Frame", G2L["63"]);
G2L["af"]["ZIndex"] = 2;
G2L["af"]["BorderSizePixel"] = 0;
G2L["af"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["af"]["Name"] = [[TemperatureFrame]];
G2L["af"]["LayoutOrder"] = 4;
G2L["af"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Title
G2L["b0"] = Instance.new("TextLabel", G2L["af"]);
G2L["b0"]["ZIndex"] = 0;
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["TextSize"] = 14;
G2L["b0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["BackgroundTransparency"] = 1;
G2L["b0"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Text"] = [[Temperature]];
G2L["b0"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["b0"]["Name"] = [[Title]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame
G2L["b1"] = Instance.new("Frame", G2L["af"]);
G2L["b1"]["BorderSizePixel"] = 0;
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["Size"] = UDim2.new(0, 325, 0, 30);
G2L["b1"]["Position"] = UDim2.new(1, -325, 0, 0);
G2L["b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b1"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox
G2L["b2"] = Instance.new("TextBox", G2L["b1"]);
G2L["b2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["TextSize"] = 14;
G2L["b2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b2"]["ClearTextOnFocus"] = false;
G2L["b2"]["ClipsDescendants"] = true;
G2L["b2"]["PlaceholderText"] = [[100]];
G2L["b2"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["b2"]["Position"] = UDim2.new(0, 0, 1, -30);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Text"] = [[1.0]];
G2L["b2"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b2"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.UIPadding
G2L["b4"] = Instance.new("UIPadding", G2L["b2"]);
G2L["b4"]["PaddingTop"] = UDim.new(0, 10);
G2L["b4"]["PaddingRight"] = UDim.new(0, 10);
G2L["b4"]["PaddingLeft"] = UDim.new(0, 10);
G2L["b4"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.Frame.TextBox.ResetButton
G2L["b5"] = Instance.new("ImageButton", G2L["b2"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundTransparency"] = 1;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["Image"] = [[rbxassetid://74363941121004]];
G2L["b5"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[ResetButton]];
G2L["b5"]["Rotation"] = -180;
G2L["b5"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.TemperatureFrame.UIPadding
G2L["b6"] = Instance.new("UIPadding", G2L["af"]);
G2L["b6"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame
G2L["b7"] = Instance.new("Frame", G2L["63"]);
G2L["b7"]["ZIndex"] = 2;
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Name"] = [[SystemPromptFrame]];
G2L["b7"]["LayoutOrder"] = 4;
G2L["b7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.UIPadding
G2L["b8"] = Instance.new("UIPadding", G2L["b7"]);
G2L["b8"]["PaddingTop"] = UDim.new(0, 5);
G2L["b8"]["PaddingRight"] = UDim.new(0, 20);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton
G2L["b9"] = Instance.new("TextButton", G2L["b7"]);
G2L["b9"]["BorderSizePixel"] = 0;
G2L["b9"]["TextSize"] = 17;
G2L["b9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b9"]["BackgroundTransparency"] = 0.95;
G2L["b9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b9"]["Text"] = [[Modify System Prompt ↗]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.ScrollingFrame.SystemPromptFrame.TextButton.UICorner
G2L["ba"] = Instance.new("UICorner", G2L["b9"]);
G2L["ba"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges
G2L["bb"] = Instance.new("CanvasGroup", G2L["62"]);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Size"] = UDim2.new(1, -10, 0, 35);
G2L["bb"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Name"] = [[UnsavedChanges]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["bb"]);
G2L["bc"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel
G2L["bd"] = Instance.new("TextLabel", G2L["bb"]);
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["TextSize"] = 14;
G2L["bd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["BackgroundTransparency"] = 1;
G2L["bd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Text"] = [[You have unsaved changes!]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bd"]);
G2L["be"]["PaddingTop"] = UDim.new(0, 5);
G2L["be"]["PaddingRight"] = UDim.new(0, 5);
G2L["be"]["PaddingLeft"] = UDim.new(0, 10);
G2L["be"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save
G2L["bf"] = Instance.new("TextButton", G2L["bd"]);
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["TextSize"] = 14;
G2L["bf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["bf"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bf"]["Size"] = UDim2.new(0, 125, 1, 0);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Text"] = [[Save changes]];
G2L["bf"]["Name"] = [[Save]];
G2L["bf"]["Position"] = UDim2.new(1, -125, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Save.UICorner
G2L["c0"] = Instance.new("UICorner", G2L["bf"]);
G2L["c0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert
G2L["c1"] = Instance.new("TextButton", G2L["bd"]);
G2L["c1"]["RichText"] = true;
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["TextSize"] = 14;
G2L["c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(47, 140, 69);
G2L["c1"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c1"]["BackgroundTransparency"] = 1;
G2L["c1"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Text"] = [[<u>Revert</u>]];
G2L["c1"]["Name"] = [[Revert]];
G2L["c1"]["Position"] = UDim2.new(1, -180, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UnsavedChanges.TextLabel.Revert.UICorner
G2L["c2"] = Instance.new("UICorner", G2L["c1"]);
G2L["c2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SettingsPage.UIPadding
G2L["c3"] = Instance.new("UIPadding", G2L["62"]);
G2L["c3"]["PaddingTop"] = UDim.new(0, 10);
G2L["c3"]["PaddingRight"] = UDim.new(0, 10);
G2L["c3"]["PaddingLeft"] = UDim.new(0, 15);
G2L["c3"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage
G2L["c4"] = Instance.new("Frame", G2L["11"]);
G2L["c4"]["Visible"] = false;
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[CodePage]];
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame
G2L["c5"] = Instance.new("Frame", G2L["c4"]);
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c5"]["Size"] = UDim2.new(1, 0, 0, 15);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Name"] = [[TopFrame]];
G2L["c5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame
G2L["c6"] = Instance.new("Frame", G2L["c5"]);
G2L["c6"]["BorderSizePixel"] = 0;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["c6"]["Position"] = UDim2.new(1, -100, 0, 0);
G2L["c6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c6"]["Name"] = [[ActionsFrame]];
G2L["c6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIGridLayout
G2L["c7"] = Instance.new("UIGridLayout", G2L["c6"]);
G2L["c7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["c7"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["c7"]["StartCorner"] = Enum.StartCorner.TopRight;
G2L["c7"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["c7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.UIPadding
G2L["c8"] = Instance.new("UIPadding", G2L["c6"]);
G2L["c8"]["PaddingTop"] = UDim.new(0, 5);
G2L["c8"]["PaddingRight"] = UDim.new(0, 5);
G2L["c8"]["PaddingLeft"] = UDim.new(0, 5);
G2L["c8"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton
G2L["c9"] = Instance.new("TextButton", G2L["c6"]);
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["TextTransparency"] = 1;
G2L["c9"]["TextSize"] = 14;
G2L["c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c9"]["BackgroundTransparency"] = 0.9;
G2L["c9"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["c9"]["LayoutOrder"] = 2;
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["Text"] = [[Clear]];
G2L["c9"]["Name"] = [[ClearButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.ImageLabel
G2L["ca"] = Instance.new("ImageLabel", G2L["c9"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["ImageColor3"] = Color3.fromRGB(171, 100, 100);
G2L["ca"]["Image"] = [[rbxassetid://115957379627811]];
G2L["ca"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UICorner
G2L["cb"] = Instance.new("UICorner", G2L["c9"]);
G2L["cb"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.ClearButton.UIPadding
G2L["cc"] = Instance.new("UIPadding", G2L["c9"]);
G2L["cc"]["PaddingTop"] = UDim.new(0, 3);
G2L["cc"]["PaddingRight"] = UDim.new(0, 3);
G2L["cc"]["PaddingLeft"] = UDim.new(0, 3);
G2L["cc"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton
G2L["cd"] = Instance.new("TextButton", G2L["c6"]);
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["TextTransparency"] = 1;
G2L["cd"]["TextSize"] = 14;
G2L["cd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cd"]["BackgroundTransparency"] = 0.9;
G2L["cd"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["cd"]["LayoutOrder"] = 1;
G2L["cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cd"]["Text"] = [[Copy]];
G2L["cd"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.ImageLabel
G2L["ce"] = Instance.new("ImageLabel", G2L["cd"]);
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["Image"] = [[rbxassetid://110180044304394]];
G2L["ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UIPadding
G2L["cf"] = Instance.new("UIPadding", G2L["cd"]);
G2L["cf"]["PaddingTop"] = UDim.new(0, 5);
G2L["cf"]["PaddingRight"] = UDim.new(0, 5);
G2L["cf"]["PaddingLeft"] = UDim.new(0, 5);
G2L["cf"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.CopyButton.UICorner
G2L["d0"] = Instance.new("UICorner", G2L["cd"]);
G2L["d0"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton
G2L["d1"] = Instance.new("TextButton", G2L["c6"]);
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["TextTransparency"] = 1;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["BackgroundTransparency"] = 0.9;
G2L["d1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[Run]];
G2L["d1"]["Name"] = [[RunButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.ImageLabel
G2L["d2"] = Instance.new("ImageLabel", G2L["d1"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["ImageColor3"] = Color3.fromRGB(86, 171, 0);
G2L["d2"]["Image"] = [[rbxassetid://135141271354749]];
G2L["d2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.ActionsFrame.RunButton.UICorner
G2L["d3"] = Instance.new("UICorner", G2L["d1"]);
G2L["d3"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame
G2L["d4"] = Instance.new("Frame", G2L["c5"]);
G2L["d4"]["BorderSizePixel"] = 0;
G2L["d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d4"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d4"]["Name"] = [[TabsFrame]];
G2L["d4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame
G2L["d5"] = Instance.new("ScrollingFrame", G2L["d4"]);
G2L["d5"]["Active"] = true;
G2L["d5"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["d5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d5"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.TabButton
G2L["d6"] = Instance.new("TextButton", G2L["d5"]);
G2L["d6"]["BorderSizePixel"] = 0;
G2L["d6"]["TextSize"] = 14;
G2L["d6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["d6"]["BackgroundTransparency"] = 0.9;
G2L["d6"]["Size"] = UDim2.new(0, 39, 0, 20);
G2L["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d6"]["Text"] = [[Tab 1]];
G2L["d6"]["Name"] = [[TabButton]];
G2L["d6"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIListLayout
G2L["d7"] = Instance.new("UIListLayout", G2L["d5"]);
G2L["d7"]["Padding"] = UDim.new(0, 2);
G2L["d7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["d7"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.UIPadding
G2L["d8"] = Instance.new("UIPadding", G2L["d5"]);
G2L["d8"]["PaddingTop"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.ScrollingFrame.NewTabButton
G2L["d9"] = Instance.new("TextButton", G2L["d5"]);
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["TextSize"] = 20;
G2L["d9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["d9"]["BackgroundTransparency"] = 1;
G2L["d9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["d9"]["LayoutOrder"] = 999;
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Text"] = [[+]];
G2L["d9"]["Name"] = [[NewTabButton]];
G2L["d9"]["Position"] = UDim2.new(0, 0, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.TopFrame.TabsFrame.UIPadding
G2L["da"] = Instance.new("UIPadding", G2L["d4"]);
G2L["da"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.UIListLayout
G2L["db"] = Instance.new("UIListLayout", G2L["c4"]);
G2L["db"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame
G2L["dc"] = Instance.new("ScrollingFrame", G2L["c4"]);
G2L["dc"]["Active"] = true;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["dc"]["ScrollBarImageTransparency"] = 0.8;
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["dc"]["Size"] = UDim2.new(1, 0, 1, -15);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["ScrollBarThickness"] = 4;
G2L["dc"]["LayoutOrder"] = 1;
G2L["dc"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.UIListLayout
G2L["dd"] = Instance.new("UIListLayout", G2L["dc"]);
G2L["dd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["dd"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox
G2L["de"] = Instance.new("TextBox", G2L["dc"]);
G2L["de"]["Name"] = [[CodeBox]];
G2L["de"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["de"]["BorderSizePixel"] = 0;
G2L["de"]["TextTransparency"] = 1;
G2L["de"]["TextSize"] = 14;
G2L["de"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["de"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["de"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["de"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["de"]["MultiLine"] = true;
G2L["de"]["ClearTextOnFocus"] = false;
G2L["de"]["Size"] = UDim2.new(1, -20, 1, 0);
G2L["de"]["Position"] = UDim2.new(0, 20, 0, 0);
G2L["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["de"]["Text"] = [[print("Hello world!")]];
G2L["de"]["LayoutOrder"] = 1;
G2L["de"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.UIPadding
G2L["df"] = Instance.new("UIPadding", G2L["de"]);
G2L["df"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.CodeBox.IntelLabel
G2L["e0"] = Instance.new("TextLabel", G2L["de"]);
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["TextSize"] = 14;
G2L["e0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e0"]["BackgroundTransparency"] = 1;
G2L["e0"]["RichText"] = true;
G2L["e0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Text"] = [[]];
G2L["e0"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["e0"]["Name"] = [[IntelLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel
G2L["e1"] = Instance.new("TextLabel", G2L["dc"]);
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["TextSize"] = 14;
G2L["e1"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["BackgroundTransparency"] = 0.85;
G2L["e1"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e1"]["Text"] = [[1]];
G2L["e1"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["e1"]["Name"] = [[LineLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.CodePage.ScrollingFrame.LineLabel.UIPadding
G2L["e2"] = Instance.new("UIPadding", G2L["e1"]);
G2L["e2"]["PaddingRight"] = UDim.new(0, 5);
G2L["e2"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage
G2L["e3"] = Instance.new("Frame", G2L["11"]);
G2L["e3"]["Visible"] = false;
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e3"]["Name"] = [[ToolsPage]];
G2L["e3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat
G2L["e4"] = Instance.new("ScrollingFrame", G2L["e3"]);
G2L["e4"]["Active"] = true;
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["e4"]["Name"] = [[ScrollingFrameMainChat]];
G2L["e4"]["ScrollBarImageTransparency"] = 0.85;
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e4"]["ScrollBarThickness"] = 5;
G2L["e4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIListLayout
G2L["e5"] = Instance.new("UIListLayout", G2L["e4"]);
G2L["e5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.UIPadding
G2L["e6"] = Instance.new("UIPadding", G2L["e4"]);
G2L["e6"]["PaddingTop"] = UDim.new(0, 5);
G2L["e6"]["PaddingRight"] = UDim.new(0, 5);
G2L["e6"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate
G2L["e7"] = Instance.new("Folder", G2L["e4"]);
G2L["e7"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["e8"] = Instance.new("Frame", G2L["e7"]);
G2L["e8"]["Visible"] = false;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["e8"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Name"] = [[GroupFrame]];
G2L["e8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["e9"] = Instance.new("UIPadding", G2L["e8"]);
G2L["e9"]["PaddingTop"] = UDim.new(0, 5);
G2L["e9"]["PaddingRight"] = UDim.new(0, 5);
G2L["e9"]["PaddingLeft"] = UDim.new(0, 5);
G2L["e9"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["ea"] = Instance.new("Frame", G2L["e8"]);
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ea"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ea"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ea"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["eb"] = Instance.new("TextLabel", G2L["ea"]);
G2L["eb"]["TextWrapped"] = true;
G2L["eb"]["BorderSizePixel"] = 0;
G2L["eb"]["TextSize"] = 15;
G2L["eb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["BackgroundTransparency"] = 1;
G2L["eb"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["eb"]["Text"] = [[Group Title]];
G2L["eb"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["eb"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["ec"] = Instance.new("UICorner", G2L["ea"]);
G2L["ec"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["ed"] = Instance.new("UIListLayout", G2L["ea"]);
G2L["ed"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["ee"] = Instance.new("UIPadding", G2L["ea"]);
G2L["ee"]["PaddingTop"] = UDim.new(0, 10);
G2L["ee"]["PaddingRight"] = UDim.new(0, 10);
G2L["ee"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ee"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["ef"] = Instance.new("Frame", G2L["ea"]);
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ef"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ef"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ef"]["Name"] = [[ToolFrame]];
G2L["ef"]["LayoutOrder"] = 2;
G2L["ef"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["f0"] = Instance.new("Frame", G2L["ef"]);
G2L["f0"]["BorderSizePixel"] = 0;
G2L["f0"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["f0"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["f0"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f0"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["f1"] = Instance.new("UICorner", G2L["f0"]);
G2L["f1"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["f2"] = Instance.new("TextLabel", G2L["ef"]);
G2L["f2"]["TextWrapped"] = true;
G2L["f2"]["BorderSizePixel"] = 0;
G2L["f2"]["TextSize"] = 14;
G2L["f2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f2"]["TextTransparency"] = 0.25;
G2L["f2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f2"]["BackgroundTransparency"] = 1;
G2L["f2"]["RichText"] = true;
G2L["f2"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["f2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f2"]["Text"] = [[Tool Name]];
G2L["f2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f2"]["Name"] = [[ToolNameDesc]];
G2L["f2"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["f3"] = Instance.new("UIPadding", G2L["ef"]);
G2L["f3"]["PaddingTop"] = UDim.new(0, 5);
G2L["f3"]["PaddingRight"] = UDim.new(0, 15);
G2L["f3"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.TotalElements
G2L["f4"] = Instance.new("IntValue", G2L["e4"]);
G2L["f4"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip
G2L["f5"] = Instance.new("TextLabel", G2L["e4"]);
G2L["f5"]["TextWrapped"] = true;
G2L["f5"]["BorderSizePixel"] = 0;
G2L["f5"]["TextSize"] = 20;
G2L["f5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["f5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f5"]["BackgroundTransparency"] = 1;
G2L["f5"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f5"]["Text"] = [[Below is a list of tools loaded by the plugin, including built-in ones. You'll be able to see if your custom tool has been loaded.]];
G2L["f5"]["LayoutOrder"] = -1;
G2L["f5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["f5"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.ToolsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["f6"] = Instance.new("UIPadding", G2L["f5"]);
G2L["f6"]["PaddingTop"] = UDim.new(0, 5);
G2L["f6"]["PaddingRight"] = UDim.new(0, 15);
G2L["f6"]["PaddingLeft"] = UDim.new(0, 15);
G2L["f6"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.TemplatePage
G2L["f7"] = Instance.new("Frame", G2L["11"]);
G2L["f7"]["Visible"] = false;
G2L["f7"]["BorderSizePixel"] = 0;
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f7"]["Name"] = [[TemplatePage]];
G2L["f7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage
G2L["f8"] = Instance.new("Frame", G2L["11"]);
G2L["f8"]["Visible"] = false;
G2L["f8"]["BorderSizePixel"] = 0;
G2L["f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f8"]["Name"] = [[StartupPage]];
G2L["f8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat
G2L["f9"] = Instance.new("ScrollingFrame", G2L["f8"]);
G2L["f9"]["Active"] = true;
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["f9"]["Name"] = [[ScrollingFrameMainChat]];
G2L["f9"]["ScrollBarImageTransparency"] = 0.85;
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["ScrollBarThickness"] = 5;
G2L["f9"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIListLayout
G2L["fa"] = Instance.new("UIListLayout", G2L["f9"]);
G2L["fa"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.UIPadding
G2L["fb"] = Instance.new("UIPadding", G2L["f9"]);
G2L["fb"]["PaddingTop"] = UDim.new(0, 5);
G2L["fb"]["PaddingRight"] = UDim.new(0, 5);
G2L["fb"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate
G2L["fc"] = Instance.new("Folder", G2L["f9"]);
G2L["fc"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["fd"] = Instance.new("Frame", G2L["fc"]);
G2L["fd"]["Visible"] = false;
G2L["fd"]["BorderSizePixel"] = 0;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["fd"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fd"]["Name"] = [[GroupFrame]];
G2L["fd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["fe"] = Instance.new("UIPadding", G2L["fd"]);
G2L["fe"]["PaddingTop"] = UDim.new(0, 5);
G2L["fe"]["PaddingRight"] = UDim.new(0, 5);
G2L["fe"]["PaddingLeft"] = UDim.new(0, 5);
G2L["fe"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["ff"] = Instance.new("Frame", G2L["fd"]);
G2L["ff"]["BorderSizePixel"] = 0;
G2L["ff"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ff"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ff"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["ff"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ff"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.GroupTitle
G2L["100"] = Instance.new("TextLabel", G2L["ff"]);
G2L["100"]["TextWrapped"] = true;
G2L["100"]["BorderSizePixel"] = 0;
G2L["100"]["TextSize"] = 15;
G2L["100"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["100"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["100"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["100"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["100"]["BackgroundTransparency"] = 1;
G2L["100"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["100"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["100"]["Text"] = [[Group Title]];
G2L["100"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["100"]["Name"] = [[GroupTitle]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["101"] = Instance.new("UICorner", G2L["ff"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIListLayout
G2L["102"] = Instance.new("UIListLayout", G2L["ff"]);
G2L["102"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["103"] = Instance.new("UIPadding", G2L["ff"]);
G2L["103"]["PaddingTop"] = UDim.new(0, 10);
G2L["103"]["PaddingRight"] = UDim.new(0, 10);
G2L["103"]["PaddingLeft"] = UDim.new(0, 10);
G2L["103"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame
G2L["104"] = Instance.new("Frame", G2L["ff"]);
G2L["104"]["BorderSizePixel"] = 0;
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["104"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["104"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["104"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["Name"] = [[ToolFrame]];
G2L["104"]["LayoutOrder"] = 2;
G2L["104"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor
G2L["105"] = Instance.new("Frame", G2L["104"]);
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["105"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["105"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.IconColor.UICorner
G2L["106"] = Instance.new("UICorner", G2L["105"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.ToolNameDesc
G2L["107"] = Instance.new("TextLabel", G2L["104"]);
G2L["107"]["TextWrapped"] = true;
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["TextSize"] = 14;
G2L["107"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["107"]["TextTransparency"] = 0.25;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["107"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["BackgroundTransparency"] = 1;
G2L["107"]["RichText"] = true;
G2L["107"]["Size"] = UDim2.new(1, -20, 0, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["Text"] = [[Tool Name]];
G2L["107"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["107"]["Name"] = [[ToolNameDesc]];
G2L["107"]["Position"] = UDim2.new(0, 20, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.ToolFrame.UIPadding
G2L["108"] = Instance.new("UIPadding", G2L["104"]);
G2L["108"]["PaddingTop"] = UDim.new(0, 5);
G2L["108"]["PaddingRight"] = UDim.new(0, 15);
G2L["108"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.TotalElements
G2L["109"] = Instance.new("IntValue", G2L["f9"]);
G2L["109"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip
G2L["10a"] = Instance.new("TextLabel", G2L["f9"]);
G2L["10a"]["TextWrapped"] = true;
G2L["10a"]["BorderSizePixel"] = 0;
G2L["10a"]["TextSize"] = 20;
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["10a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["BackgroundTransparency"] = 1;
G2L["10a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["Text"] = [[Below shows whether startup data retrieval and any other features requiring full functionality have been initialized.]];
G2L["10a"]["LayoutOrder"] = -1;
G2L["10a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["10a"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.StartupPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["10b"] = Instance.new("UIPadding", G2L["10a"]);
G2L["10b"]["PaddingTop"] = UDim.new(0, 5);
G2L["10b"]["PaddingRight"] = UDim.new(0, 15);
G2L["10b"]["PaddingLeft"] = UDim.new(0, 15);
G2L["10b"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage
G2L["10c"] = Instance.new("Frame", G2L["11"]);
G2L["10c"]["Visible"] = false;
G2L["10c"]["BorderSizePixel"] = 0;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10c"]["Name"] = [[HistoryPage]];
G2L["10c"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat
G2L["10d"] = Instance.new("ScrollingFrame", G2L["10c"]);
G2L["10d"]["Active"] = true;
G2L["10d"]["BorderSizePixel"] = 0;
G2L["10d"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["10d"]["Name"] = [[ScrollingFrameMainChat]];
G2L["10d"]["ScrollBarImageTransparency"] = 0.85;
G2L["10d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10d"]["ScrollBarThickness"] = 5;
G2L["10d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIListLayout
G2L["10e"] = Instance.new("UIListLayout", G2L["10d"]);
G2L["10e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.UIPadding
G2L["10f"] = Instance.new("UIPadding", G2L["10d"]);
G2L["10f"]["PaddingTop"] = UDim.new(0, 5);
G2L["10f"]["PaddingRight"] = UDim.new(0, 5);
G2L["10f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate
G2L["110"] = Instance.new("Folder", G2L["10d"]);
G2L["110"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["111"] = Instance.new("Frame", G2L["110"]);
G2L["111"]["Visible"] = false;
G2L["111"]["BorderSizePixel"] = 0;
G2L["111"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["111"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["111"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["111"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["111"]["Name"] = [[GroupFrame]];
G2L["111"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["112"] = Instance.new("UIPadding", G2L["111"]);
G2L["112"]["PaddingTop"] = UDim.new(0, 5);
G2L["112"]["PaddingRight"] = UDim.new(0, 5);
G2L["112"]["PaddingLeft"] = UDim.new(0, 5);
G2L["112"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["113"] = Instance.new("Frame", G2L["111"]);
G2L["113"]["BorderSizePixel"] = 0;
G2L["113"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["113"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["113"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["113"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["114"] = Instance.new("UICorner", G2L["113"]);
G2L["114"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["115"] = Instance.new("UIPadding", G2L["113"]);
G2L["115"]["PaddingTop"] = UDim.new(0, 10);
G2L["115"]["PaddingRight"] = UDim.new(0, 10);
G2L["115"]["PaddingLeft"] = UDim.new(0, 10);
G2L["115"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["116"] = Instance.new("Frame", G2L["113"]);
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["116"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["Name"] = [[Left]];
G2L["116"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["117"] = Instance.new("UIListLayout", G2L["116"]);
G2L["117"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame
G2L["118"] = Instance.new("Frame", G2L["116"]);
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["118"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["118"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["118"]["Name"] = [[ToolsRowFrame]];
G2L["118"]["LayoutOrder"] = 2;
G2L["118"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIListLayout
G2L["119"] = Instance.new("UIListLayout", G2L["118"]);
G2L["119"]["Padding"] = UDim.new(0, 5);
G2L["119"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["119"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame
G2L["11a"] = Instance.new("Frame", G2L["118"]);
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["11a"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["11a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11a"]["Name"] = [[ToolFrame]];
G2L["11a"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor
G2L["11b"] = Instance.new("Frame", G2L["11a"]);
G2L["11b"]["BorderSizePixel"] = 0;
G2L["11b"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["11b"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["11b"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["11b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11b"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.IconColor.UICorner
G2L["11c"] = Instance.new("UICorner", G2L["11b"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UICorner
G2L["11d"] = Instance.new("UICorner", G2L["11a"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.ToolName
G2L["11e"] = Instance.new("TextLabel", G2L["11a"]);
G2L["11e"]["TextWrapped"] = true;
G2L["11e"]["BorderSizePixel"] = 0;
G2L["11e"]["TextSize"] = 14;
G2L["11e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11e"]["TextTransparency"] = 0.25;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["BackgroundTransparency"] = 1;
G2L["11e"]["RichText"] = true;
G2L["11e"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["Text"] = [[Tool Name]];
G2L["11e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["11e"]["Name"] = [[ToolName]];
G2L["11e"]["Position"] = UDim2.new(0, 10, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.ToolFrame.UIPadding
G2L["11f"] = Instance.new("UIPadding", G2L["11a"]);
G2L["11f"]["PaddingTop"] = UDim.new(0, 5);
G2L["11f"]["PaddingRight"] = UDim.new(0, 7);
G2L["11f"]["PaddingLeft"] = UDim.new(0, 7);
G2L["11f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.ToolsRowFrame.UIPadding
G2L["120"] = Instance.new("UIPadding", G2L["118"]);
G2L["120"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.MessageCountLabel
G2L["121"] = Instance.new("TextLabel", G2L["116"]);
G2L["121"]["TextWrapped"] = true;
G2L["121"]["BorderSizePixel"] = 0;
G2L["121"]["TextSize"] = 15;
G2L["121"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["121"]["TextTransparency"] = 0.5;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["121"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["BackgroundTransparency"] = 1;
G2L["121"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["Text"] = [[0 messages]];
G2L["121"]["LayoutOrder"] = 1;
G2L["121"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["121"]["Name"] = [[MessageCountLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TimestampLabel
G2L["122"] = Instance.new("TextLabel", G2L["116"]);
G2L["122"]["TextWrapped"] = true;
G2L["122"]["BorderSizePixel"] = 0;
G2L["122"]["TextSize"] = 15;
G2L["122"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["122"]["TextTransparency"] = 0.5;
G2L["122"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["122"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["122"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["122"]["BackgroundTransparency"] = 1;
G2L["122"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["122"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["Text"] = [[Timestamp]];
G2L["122"]["LayoutOrder"] = 999;
G2L["122"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["122"]["Name"] = [[TimestampLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["123"] = Instance.new("Frame", G2L["116"]);
G2L["123"]["BorderSizePixel"] = 0;
G2L["123"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["123"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["123"]["Name"] = [[TopRowFrame]];
G2L["123"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.TitleLabel
G2L["124"] = Instance.new("TextLabel", G2L["123"]);
G2L["124"]["TextWrapped"] = true;
G2L["124"]["BorderSizePixel"] = 0;
G2L["124"]["TextSize"] = 15;
G2L["124"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["124"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["124"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["124"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["124"]["BackgroundTransparency"] = 1;
G2L["124"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["124"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["124"]["Text"] = [[Title]];
G2L["124"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["124"]["Name"] = [[TitleLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["125"] = Instance.new("UIListLayout", G2L["123"]);
G2L["125"]["Padding"] = UDim.new(0, 5);
G2L["125"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["125"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame
G2L["126"] = Instance.new("Frame", G2L["123"]);
G2L["126"]["BorderSizePixel"] = 0;
G2L["126"]["BackgroundColor3"] = Color3.fromRGB(0, 86, 128);
G2L["126"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["126"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["126"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["126"]["Name"] = [[ActiveTagFrame]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel
G2L["127"] = Instance.new("TextLabel", G2L["126"]);
G2L["127"]["BorderSizePixel"] = 0;
G2L["127"]["TextSize"] = 14;
G2L["127"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["127"]["TextColor3"] = Color3.fromRGB(0, 171, 255);
G2L["127"]["BackgroundTransparency"] = 1;
G2L["127"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["127"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["127"]["Text"] = [[Active]];
G2L["127"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.TextLabel.UIPadding
G2L["128"] = Instance.new("UIPadding", G2L["127"]);
G2L["128"]["PaddingRight"] = UDim.new(0, 5);
G2L["128"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.ActiveTagFrame.UICorner
G2L["129"] = Instance.new("UICorner", G2L["126"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["12a"] = Instance.new("Frame", G2L["113"]);
G2L["12a"]["BorderSizePixel"] = 0;
G2L["12a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["12a"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["12a"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["12a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12a"]["Name"] = [[Right]];
G2L["12a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["12b"] = Instance.new("UIGridLayout", G2L["12a"]);
G2L["12b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["12b"]["CellSize"] = UDim2.new(0, 35, 0, 35);
G2L["12b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton
G2L["12c"] = Instance.new("TextButton", G2L["12a"]);
G2L["12c"]["BorderSizePixel"] = 0;
G2L["12c"]["TextSize"] = 14;
G2L["12c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12c"]["BackgroundTransparency"] = 0.85;
G2L["12c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["12c"]["LayoutOrder"] = 1;
G2L["12c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["Text"] = [[]];
G2L["12c"]["Name"] = [[LoadButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UICorner
G2L["12d"] = Instance.new("UICorner", G2L["12c"]);
G2L["12d"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.ImageLabel
G2L["12e"] = Instance.new("ImageLabel", G2L["12c"]);
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12e"]["Image"] = [[rbxassetid://98174359243805]];
G2L["12e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["BackgroundTransparency"] = 1;
G2L["12e"]["Rotation"] = 90;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.LoadButton.UIPadding
G2L["12f"] = Instance.new("UIPadding", G2L["12c"]);
G2L["12f"]["PaddingTop"] = UDim.new(0, 3);
G2L["12f"]["PaddingRight"] = UDim.new(0, 1);
G2L["12f"]["PaddingLeft"] = UDim.new(0, 3);
G2L["12f"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton
G2L["130"] = Instance.new("TextButton", G2L["12a"]);
G2L["130"]["BorderSizePixel"] = 0;
G2L["130"]["TextSize"] = 14;
G2L["130"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["130"]["BackgroundTransparency"] = 0.85;
G2L["130"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["130"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["130"]["Text"] = [[]];
G2L["130"]["Name"] = [[DeleteButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UICorner
G2L["131"] = Instance.new("UICorner", G2L["130"]);
G2L["131"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.ImageLabel
G2L["132"] = Instance.new("ImageLabel", G2L["130"]);
G2L["132"]["BorderSizePixel"] = 0;
G2L["132"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["132"]["ImageColor3"] = Color3.fromRGB(255, 120, 122);
G2L["132"]["Image"] = [[rbxassetid://115957379627811]];
G2L["132"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["132"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["132"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.DeleteButton.UIPadding
G2L["133"] = Instance.new("UIPadding", G2L["130"]);
G2L["133"]["PaddingTop"] = UDim.new(0, 3);
G2L["133"]["PaddingRight"] = UDim.new(0, 3);
G2L["133"]["PaddingLeft"] = UDim.new(0, 3);
G2L["133"]["PaddingBottom"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.TotalElements
G2L["134"] = Instance.new("IntValue", G2L["10d"]);
G2L["134"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip
G2L["135"] = Instance.new("TextLabel", G2L["10d"]);
G2L["135"]["TextWrapped"] = true;
G2L["135"]["BorderSizePixel"] = 0;
G2L["135"]["TextSize"] = 20;
G2L["135"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["135"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["135"]["BackgroundTransparency"] = 1;
G2L["135"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["135"]["Text"] = [[Conversation history]];
G2L["135"]["LayoutOrder"] = -1;
G2L["135"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["135"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.HistoryPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["136"] = Instance.new("UIPadding", G2L["135"]);
G2L["136"]["PaddingTop"] = UDim.new(0, 5);
G2L["136"]["PaddingRight"] = UDim.new(0, 15);
G2L["136"]["PaddingLeft"] = UDim.new(0, 15);
G2L["136"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage
G2L["137"] = Instance.new("Frame", G2L["11"]);
G2L["137"]["Visible"] = false;
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["Name"] = [[BrowserPage]];
G2L["137"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer
G2L["138"] = Instance.new("Frame", G2L["137"]);
G2L["138"]["BorderSizePixel"] = 0;
G2L["138"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["138"]["Size"] = UDim2.new(1, 0, 0, 200);
G2L["138"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["138"]["Name"] = [[PlatformsContainer]];
G2L["138"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["139"] = Instance.new("Frame", G2L["138"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["13a"] = Instance.new("UIListLayout", G2L["139"]);
G2L["13a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["13a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["13b"] = Instance.new("ImageLabel", G2L["139"]);
G2L["13b"]["BorderSizePixel"] = 0;
G2L["13b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13b"]["Image"] = [[rbxassetid://73464751831922]];
G2L["13b"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["13b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["13c"] = Instance.new("TextLabel", G2L["139"]);
G2L["13c"]["BorderSizePixel"] = 0;
G2L["13c"]["TextSize"] = 20;
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["BackgroundTransparency"] = 1;
G2L["13c"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["13c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13c"]["Text"] = [[You]];
G2L["13c"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["13d"] = Instance.new("Frame", G2L["139"]);
G2L["13d"]["BorderSizePixel"] = 0;
G2L["13d"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["13d"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["13d"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["13d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13d"]["Name"] = [[IconColor]];
G2L["13d"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["13e"] = Instance.new("UICorner", G2L["13d"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.UIGridLayout
G2L["13f"] = Instance.new("UIGridLayout", G2L["138"]);
G2L["13f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["13f"]["CellSize"] = UDim2.new(0, 175, 0, 100);
G2L["13f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["13f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["140"] = Instance.new("Frame", G2L["138"]);
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["140"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["LayoutOrder"] = 1;
G2L["140"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["141"] = Instance.new("UIListLayout", G2L["140"]);
G2L["141"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["141"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["142"] = Instance.new("ImageLabel", G2L["140"]);
G2L["142"]["BorderSizePixel"] = 0;
G2L["142"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["Image"] = [[rbxassetid://131600704891794]];
G2L["142"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["142"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["142"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["143"] = Instance.new("TextLabel", G2L["140"]);
G2L["143"]["BorderSizePixel"] = 0;
G2L["143"]["TextSize"] = 20;
G2L["143"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["143"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["143"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["143"]["BackgroundTransparency"] = 1;
G2L["143"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["143"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["143"]["Text"] = [[Bridge]];
G2L["143"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["144"] = Instance.new("Frame", G2L["140"]);
G2L["144"]["BorderSizePixel"] = 0;
G2L["144"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["144"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["144"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["144"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["144"]["Name"] = [[IconColor]];
G2L["144"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["145"] = Instance.new("UICorner", G2L["144"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame
G2L["146"] = Instance.new("Frame", G2L["138"]);
G2L["146"]["BorderSizePixel"] = 0;
G2L["146"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["146"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["146"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["146"]["LayoutOrder"] = 2;
G2L["146"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.UIListLayout
G2L["147"] = Instance.new("UIListLayout", G2L["146"]);
G2L["147"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["147"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.ImageLabel
G2L["148"] = Instance.new("ImageLabel", G2L["146"]);
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["Image"] = [[rbxassetid://90807079339617]];
G2L["148"]["Size"] = UDim2.new(0, 75, 0, 75);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.TextLabel
G2L["149"] = Instance.new("TextLabel", G2L["146"]);
G2L["149"]["BorderSizePixel"] = 0;
G2L["149"]["TextSize"] = 20;
G2L["149"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["149"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["149"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["149"]["BackgroundTransparency"] = 1;
G2L["149"]["Size"] = UDim2.new(0, 200, 0, 35);
G2L["149"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["149"]["Text"] = [[Web]];
G2L["149"]["LayoutOrder"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor
G2L["14a"] = Instance.new("Frame", G2L["146"]);
G2L["14a"]["BorderSizePixel"] = 0;
G2L["14a"]["BackgroundColor3"] = Color3.fromRGB(109, 217, 161);
G2L["14a"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["14a"]["Position"] = UDim2.new(0, 0, 0.5, -2);
G2L["14a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14a"]["Name"] = [[IconColor]];
G2L["14a"]["LayoutOrder"] = 2;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PlatformsContainer.Frame.IconColor.UICorner
G2L["14b"] = Instance.new("UICorner", G2L["14a"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip
G2L["14c"] = Instance.new("TextLabel", G2L["137"]);
G2L["14c"]["TextWrapped"] = true;
G2L["14c"]["BorderSizePixel"] = 0;
G2L["14c"]["TextSize"] = 20;
G2L["14c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["14c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["BackgroundTransparency"] = 1;
G2L["14c"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["14c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14c"]["Text"] = [[You can connect IYAI to your browser]];
G2L["14c"]["LayoutOrder"] = -1;
G2L["14c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["14c"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.PageTip.UIPadding
G2L["14d"] = Instance.new("UIPadding", G2L["14c"]);
G2L["14d"]["PaddingTop"] = UDim.new(0, 5);
G2L["14d"]["PaddingRight"] = UDim.new(0, 15);
G2L["14d"]["PaddingLeft"] = UDim.new(0, 15);
G2L["14d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.UIPadding
G2L["14e"] = Instance.new("UIPadding", G2L["137"]);
G2L["14e"]["PaddingTop"] = UDim.new(0, 5);
G2L["14e"]["PaddingRight"] = UDim.new(0, 5);
G2L["14e"]["PaddingLeft"] = UDim.new(0, 5);
G2L["14e"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer
G2L["14f"] = Instance.new("Frame", G2L["137"]);
G2L["14f"]["BorderSizePixel"] = 0;
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["14f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14f"]["Name"] = [[ShimmerContainer]];
G2L["14f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1
G2L["150"] = Instance.new("Frame", G2L["14f"]);
G2L["150"]["BorderSizePixel"] = 0;
G2L["150"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["150"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["150"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["150"]["Name"] = [[Shimmer1]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UICorner
G2L["151"] = Instance.new("UICorner", G2L["150"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer1.UIGradient
G2L["152"] = Instance.new("UIGradient", G2L["150"]);
G2L["152"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["152"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.UIGridLayout
G2L["153"] = Instance.new("UIGridLayout", G2L["14f"]);
G2L["153"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["153"]["CellSize"] = UDim2.new(0, 75, 0, 3);
G2L["153"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["153"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["153"]["CellPadding"] = UDim2.new(0, 105, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2
G2L["154"] = Instance.new("Frame", G2L["14f"]);
G2L["154"]["BorderSizePixel"] = 0;
G2L["154"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["154"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["154"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["154"]["Name"] = [[Shimmer2]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UICorner
G2L["155"] = Instance.new("UICorner", G2L["154"]);



-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ShimmerContainer.Shimmer2.UIGradient
G2L["156"] = Instance.new("UIGradient", G2L["154"]);
G2L["156"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0.9),NumberSequenceKeypoint.new(1.000, 1)};
G2L["156"]["Offset"] = Vector2.new(-1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer
G2L["157"] = Instance.new("Frame", G2L["137"]);
G2L["157"]["BorderSizePixel"] = 0;
G2L["157"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["157"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["157"]["Position"] = UDim2.new(0, 0, 0, 175);
G2L["157"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["157"]["Name"] = [[InstructionsContainer]];
G2L["157"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIListLayout
G2L["158"] = Instance.new("UIListLayout", G2L["157"]);
G2L["158"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.UIPadding
G2L["159"] = Instance.new("UIPadding", G2L["157"]);
G2L["159"]["PaddingTop"] = UDim.new(0, 10);
G2L["159"]["PaddingRight"] = UDim.new(0, 10);
G2L["159"]["PaddingLeft"] = UDim.new(0, 10);
G2L["159"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1
G2L["15a"] = Instance.new("Frame", G2L["157"]);
G2L["15a"]["BorderSizePixel"] = 0;
G2L["15a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15a"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["15a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15a"]["Name"] = [[Frame1]];
G2L["15a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.UIListLayout
G2L["15b"] = Instance.new("UIListLayout", G2L["15a"]);
G2L["15b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["15b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.TextLabel
G2L["15c"] = Instance.new("TextLabel", G2L["15a"]);
G2L["15c"]["BorderSizePixel"] = 0;
G2L["15c"]["TextSize"] = 17;
G2L["15c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["15c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["15c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15c"]["BackgroundTransparency"] = 1;
G2L["15c"]["RichText"] = true;
G2L["15c"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["15c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15c"]["Text"] = [[<b>1.</b> Download and run bridge (<font color="#aa6b6b">iyai_bridge.py</font> or <font color="#aa6b6b">iyai_bridge.ps1</font>) from]];
G2L["15c"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton
G2L["15d"] = Instance.new("TextButton", G2L["15a"]);
G2L["15d"]["BorderSizePixel"] = 0;
G2L["15d"]["TextSize"] = 17;
G2L["15d"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["15d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["15d"]["BackgroundTransparency"] = 1;
G2L["15d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["15d"]["Size"] = UDim2.new(0, 32, 0, 25);
G2L["15d"]["LayoutOrder"] = 1;
G2L["15d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15d"]["Text"] = [[here]];
G2L["15d"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame1.CopyButton.Value
G2L["15e"] = Instance.new("StringValue", G2L["15d"]);
G2L["15e"]["Value"] = [[https://github.com/imluri/IYAI]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2
G2L["15f"] = Instance.new("Frame", G2L["157"]);
G2L["15f"]["BorderSizePixel"] = 0;
G2L["15f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15f"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["15f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15f"]["Name"] = [[Frame2]];
G2L["15f"]["LayoutOrder"] = 1;
G2L["15f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.UIListLayout
G2L["160"] = Instance.new("UIListLayout", G2L["15f"]);
G2L["160"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["160"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["161"] = Instance.new("TextLabel", G2L["15f"]);
G2L["161"]["BorderSizePixel"] = 0;
G2L["161"]["TextSize"] = 17;
G2L["161"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["161"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["161"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["161"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["161"]["BackgroundTransparency"] = 1;
G2L["161"]["RichText"] = true;
G2L["161"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["161"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["161"]["Text"] = [[<b>2.</b>]];
G2L["161"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton
G2L["162"] = Instance.new("TextButton", G2L["15f"]);
G2L["162"]["BorderSizePixel"] = 0;
G2L["162"]["TextSize"] = 17;
G2L["162"]["TextColor3"] = Color3.fromRGB(0, 133, 255);
G2L["162"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["162"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["162"]["BackgroundTransparency"] = 1;
G2L["162"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["162"]["Size"] = UDim2.new(0, 58, 0, 25);
G2L["162"]["LayoutOrder"] = 1;
G2L["162"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["162"]["Text"] = [[Copy link]];
G2L["162"]["Name"] = [[CopyButton]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.CopyButton.Value
G2L["163"] = Instance.new("StringValue", G2L["162"]);
G2L["163"]["Value"] = [[https://imluri.github.io/iyai]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.InstructionsContainer.Frame2.TextLabel
G2L["164"] = Instance.new("TextLabel", G2L["15f"]);
G2L["164"]["BorderSizePixel"] = 0;
G2L["164"]["TextSize"] = 17;
G2L["164"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["164"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["164"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["164"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["164"]["BackgroundTransparency"] = 1;
G2L["164"]["RichText"] = true;
G2L["164"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["164"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["164"]["Text"] = [[and paste into your browser]];
G2L["164"]["LayoutOrder"] = 2;
G2L["164"]["AutomaticSize"] = Enum.AutomaticSize.X;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton
G2L["165"] = Instance.new("TextButton", G2L["137"]);
G2L["165"]["BorderSizePixel"] = 0;
G2L["165"]["TextSize"] = 23;
G2L["165"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["165"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["165"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["165"]["BackgroundTransparency"] = 0.95;
G2L["165"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["165"]["LayoutOrder"] = 1;
G2L["165"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["165"]["Text"] = [[Open Logs]];
G2L["165"]["Name"] = [[OpenBrowserLogsButton]];
G2L["165"]["Position"] = UDim2.new(0, 0, 1, -30);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.OpenBrowserLogsButton.UICorner
G2L["166"] = Instance.new("UICorner", G2L["165"]);
G2L["166"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton
G2L["167"] = Instance.new("TextButton", G2L["137"]);
G2L["167"]["BorderSizePixel"] = 0;
G2L["167"]["TextSize"] = 23;
G2L["167"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["167"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["167"]["BackgroundTransparency"] = 0.95;
G2L["167"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["167"]["LayoutOrder"] = 1;
G2L["167"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["167"]["Text"] = [[Force Refresh]];
G2L["167"]["Name"] = [[ForceRefreshButton]];
G2L["167"]["Position"] = UDim2.new(0, 0, 1, -65);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.BrowserPage.ForceRefreshButton.UICorner
G2L["168"] = Instance.new("UICorner", G2L["167"]);
G2L["168"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage
G2L["169"] = Instance.new("Frame", G2L["11"]);
G2L["169"]["BorderSizePixel"] = 0;
G2L["169"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["169"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["169"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["169"]["Name"] = [[SkillsPage]];
G2L["169"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat
G2L["16a"] = Instance.new("ScrollingFrame", G2L["169"]);
G2L["16a"]["Active"] = true;
G2L["16a"]["BorderSizePixel"] = 0;
G2L["16a"]["CanvasSize"] = UDim2.new(0, 0, 0, 2);
G2L["16a"]["Name"] = [[ScrollingFrameMainChat]];
G2L["16a"]["ScrollBarImageTransparency"] = 0.85;
G2L["16a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["16a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16a"]["ScrollBarThickness"] = 5;
G2L["16a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIListLayout
G2L["16b"] = Instance.new("UIListLayout", G2L["16a"]);
G2L["16b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.UIPadding
G2L["16c"] = Instance.new("UIPadding", G2L["16a"]);
G2L["16c"]["PaddingTop"] = UDim.new(0, 5);
G2L["16c"]["PaddingRight"] = UDim.new(0, 5);
G2L["16c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate
G2L["16d"] = Instance.new("Folder", G2L["16a"]);
G2L["16d"]["Name"] = [[ElementTemplate]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame
G2L["16e"] = Instance.new("Frame", G2L["16d"]);
G2L["16e"]["Visible"] = false;
G2L["16e"]["BorderSizePixel"] = 0;
G2L["16e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["16e"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["16e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16e"]["Name"] = [[GroupFrame]];
G2L["16e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.UIPadding
G2L["16f"] = Instance.new("UIPadding", G2L["16e"]);
G2L["16f"]["PaddingTop"] = UDim.new(0, 5);
G2L["16f"]["PaddingRight"] = UDim.new(0, 5);
G2L["16f"]["PaddingLeft"] = UDim.new(0, 5);
G2L["16f"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame
G2L["170"] = Instance.new("Frame", G2L["16e"]);
G2L["170"]["BorderSizePixel"] = 0;
G2L["170"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["170"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["170"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["170"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["170"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UICorner
G2L["171"] = Instance.new("UICorner", G2L["170"]);
G2L["171"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.UIPadding
G2L["172"] = Instance.new("UIPadding", G2L["170"]);
G2L["172"]["PaddingTop"] = UDim.new(0, 10);
G2L["172"]["PaddingRight"] = UDim.new(0, 10);
G2L["172"]["PaddingLeft"] = UDim.new(0, 10);
G2L["172"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left
G2L["173"] = Instance.new("Frame", G2L["170"]);
G2L["173"]["BorderSizePixel"] = 0;
G2L["173"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["173"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["173"]["Size"] = UDim2.new(0.75, 0, 0, 0);
G2L["173"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["173"]["Name"] = [[Left]];
G2L["173"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.UIListLayout
G2L["174"] = Instance.new("UIListLayout", G2L["173"]);
G2L["174"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.DescriptionLabel
G2L["175"] = Instance.new("TextLabel", G2L["173"]);
G2L["175"]["TextWrapped"] = true;
G2L["175"]["BorderSizePixel"] = 0;
G2L["175"]["TextSize"] = 15;
G2L["175"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["175"]["TextTransparency"] = 0.5;
G2L["175"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["175"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["175"]["BackgroundTransparency"] = 1;
G2L["175"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["175"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["175"]["Text"] = [[Description]];
G2L["175"]["LayoutOrder"] = 1;
G2L["175"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["175"]["Name"] = [[DescriptionLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame
G2L["176"] = Instance.new("Frame", G2L["173"]);
G2L["176"]["BorderSizePixel"] = 0;
G2L["176"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["176"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["176"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["176"]["Name"] = [[TopRowFrame]];
G2L["176"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.SkillLabel
G2L["177"] = Instance.new("TextLabel", G2L["176"]);
G2L["177"]["TextWrapped"] = true;
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["TextSize"] = 15;
G2L["177"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["177"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["BackgroundTransparency"] = 1;
G2L["177"]["Size"] = UDim2.new(0, 0, 0, 15);
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["Text"] = [[Skill]];
G2L["177"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["177"]["Name"] = [[SkillLabel]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Left.TopRowFrame.UIListLayout
G2L["178"] = Instance.new("UIListLayout", G2L["176"]);
G2L["178"]["Padding"] = UDim.new(0, 5);
G2L["178"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["178"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right
G2L["179"] = Instance.new("Frame", G2L["170"]);
G2L["179"]["BorderSizePixel"] = 0;
G2L["179"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["179"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["179"]["Size"] = UDim2.new(0.25, 0, 0, 0);
G2L["179"]["Position"] = UDim2.new(0.75, 0, 0, 0);
G2L["179"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["179"]["Name"] = [[Right]];
G2L["179"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.UIGridLayout
G2L["17a"] = Instance.new("UIGridLayout", G2L["179"]);
G2L["17a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["17a"]["CellSize"] = UDim2.new(0, 40, 0, 40);
G2L["17a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer
G2L["17b"] = Instance.new("Frame", G2L["179"]);
G2L["17b"]["BorderSizePixel"] = 0;
G2L["17b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17b"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["17b"]["Position"] = UDim2.new(0.5, -50, 0, 0);
G2L["17b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17b"]["Name"] = [[ToggleContainer]];
G2L["17b"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG
G2L["17c"] = Instance.new("Frame", G2L["17b"]);
G2L["17c"]["BorderSizePixel"] = 0;
G2L["17c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17c"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["17c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17c"]["Name"] = [[BG]];
G2L["17c"]["BackgroundTransparency"] = 0.9;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.UICorner
G2L["17d"] = Instance.new("UICorner", G2L["17c"]);
G2L["17d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button
G2L["17e"] = Instance.new("TextButton", G2L["17c"]);
G2L["17e"]["BorderSizePixel"] = 0;
G2L["17e"]["TextSize"] = 14;
G2L["17e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["17e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["Text"] = [[]];
G2L["17e"]["Name"] = [[Button]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.ElementTemplate.GroupFrame.Frame.Right.ToggleContainer.BG.Button.UICorner
G2L["17f"] = Instance.new("UICorner", G2L["17e"]);
G2L["17f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.TotalElements
G2L["180"] = Instance.new("IntValue", G2L["16a"]);
G2L["180"]["Name"] = [[TotalElements]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip
G2L["181"] = Instance.new("TextLabel", G2L["16a"]);
G2L["181"]["TextWrapped"] = true;
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["TextSize"] = 20;
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["181"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["BackgroundTransparency"] = 1;
G2L["181"]["RichText"] = true;
G2L["181"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["Text"] = [[The AI references these guides when handling complex tasks.<br />Add your own to extend its knowledge.]];
G2L["181"]["LayoutOrder"] = -2;
G2L["181"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["181"]["Name"] = [[PageTip]];


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.PageTip.UIPadding
G2L["182"] = Instance.new("UIPadding", G2L["181"]);
G2L["182"]["PaddingTop"] = UDim.new(0, 5);
G2L["182"]["PaddingRight"] = UDim.new(0, 15);
G2L["182"]["PaddingLeft"] = UDim.new(0, 15);
G2L["182"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame
G2L["183"] = Instance.new("Frame", G2L["16a"]);
G2L["183"]["BorderSizePixel"] = 0;
G2L["183"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["183"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["183"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["183"]["LayoutOrder"] = -1;
G2L["183"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshButton
G2L["184"] = Instance.new("ImageButton", G2L["183"]);
G2L["184"]["BorderSizePixel"] = 0;
G2L["184"]["BackgroundTransparency"] = 1;
G2L["184"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["184"]["Image"] = [[rbxassetid://74363941121004]];
G2L["184"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["184"]["LayoutOrder"] = -1;
G2L["184"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["184"]["Name"] = [[RefreshButton]];
G2L["184"]["Rotation"] = -180;
G2L["184"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.UIPadding
G2L["185"] = Instance.new("UIPadding", G2L["183"]);
G2L["185"]["PaddingTop"] = UDim.new(0, 5);
G2L["185"]["PaddingRight"] = UDim.new(0, 5);
G2L["185"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ContentPages.SkillsPage.ScrollingFrameMainChat.Frame.RefreshText
G2L["186"] = Instance.new("TextLabel", G2L["183"]);
G2L["186"]["BorderSizePixel"] = 0;
G2L["186"]["TextSize"] = 14;
G2L["186"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["186"]["TextTransparency"] = 0.5;
G2L["186"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic);
G2L["186"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["186"]["BackgroundTransparency"] = 1;
G2L["186"]["Size"] = UDim2.new(1, -25, 1, 0);
G2L["186"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["186"]["Text"] = [[Refreshed]];
G2L["186"]["Name"] = [[RefreshText]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar
G2L["187"] = Instance.new("Frame", G2L["10"]);
G2L["187"]["BorderSizePixel"] = 0;
G2L["187"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
G2L["187"]["ClipsDescendants"] = true;
G2L["187"]["Size"] = UDim2.new(0, 45, 1, 0);
G2L["187"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["Name"] = [[LeftSidebar]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIPadding
G2L["188"] = Instance.new("UIPadding", G2L["187"]);
G2L["188"]["PaddingTop"] = UDim.new(0, 30);
G2L["188"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame
G2L["189"] = Instance.new("Frame", G2L["187"]);
G2L["189"]["BorderSizePixel"] = 0;
G2L["189"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["189"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["189"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["189"]["Name"] = [[AgentButtonFrame]];
G2L["189"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.ImageLabel
G2L["18a"] = Instance.new("ImageLabel", G2L["189"]);
G2L["18a"]["BorderSizePixel"] = 0;
G2L["18a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18a"]["Image"] = [[rbxassetid://97622965928648]];
G2L["18a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.TextLabel
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
G2L["18b"]["Text"] = [[Agent]];
G2L["18b"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.AgentButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame
G2L["18d"] = Instance.new("Frame", G2L["187"]);
G2L["18d"]["BorderSizePixel"] = 0;
G2L["18d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["18d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["Name"] = [[SettingsButtonFrame]];
G2L["18d"]["LayoutOrder"] = 999;
G2L["18d"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.ImageLabel
G2L["18e"] = Instance.new("ImageLabel", G2L["18d"]);
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["Image"] = [[rbxassetid://98245295559168]];
G2L["18e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.TextLabel
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SettingsButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame
G2L["191"] = Instance.new("Frame", G2L["187"]);
G2L["191"]["BorderSizePixel"] = 0;
G2L["191"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["191"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["191"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["191"]["Name"] = [[CodeButtonFrame]];
G2L["191"]["LayoutOrder"] = 1;
G2L["191"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.ImageLabel
G2L["193"] = Instance.new("ImageLabel", G2L["191"]);
G2L["193"]["BorderSizePixel"] = 0;
G2L["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["Image"] = [[rbxassetid://102596836544188]];
G2L["193"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["193"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.CodeButtonFrame.TextLabel
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
G2L["194"]["Text"] = [[Code]];
G2L["194"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame
G2L["195"] = Instance.new("Frame", G2L["187"]);
G2L["195"]["BorderSizePixel"] = 0;
G2L["195"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["195"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["195"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["195"]["Name"] = [[ToolsButtonFrame]];
G2L["195"]["LayoutOrder"] = 3;
G2L["195"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.ImageLabel
G2L["196"] = Instance.new("ImageLabel", G2L["195"]);
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["196"]["Image"] = [[rbxassetid://70572480663906]];
G2L["196"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["196"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["196"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.TextLabel
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
G2L["197"]["Text"] = [[Tools]];
G2L["197"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.ToolsButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame
G2L["199"] = Instance.new("Frame", G2L["187"]);
G2L["199"]["BorderSizePixel"] = 0;
G2L["199"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["199"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["199"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["199"]["Name"] = [[StartupButtonFrame]];
G2L["199"]["LayoutOrder"] = 4;
G2L["199"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.ImageLabel
G2L["19a"] = Instance.new("ImageLabel", G2L["199"]);
G2L["19a"]["BorderSizePixel"] = 0;
G2L["19a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19a"]["Image"] = [[rbxassetid://136122222813963]];
G2L["19a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19a"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.TextLabel
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.StartupButtonFrame.Hitbox
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.UIGridLayout
G2L["19d"] = Instance.new("UIGridLayout", G2L["187"]);
G2L["19d"]["CellSize"] = UDim2.new(1, 0, 0, 25);
G2L["19d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame
G2L["19e"] = Instance.new("Frame", G2L["187"]);
G2L["19e"]["BorderSizePixel"] = 0;
G2L["19e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["19e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19e"]["Name"] = [[HistoryButtonFrame]];
G2L["19e"]["LayoutOrder"] = 2;
G2L["19e"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.ImageLabel
G2L["19f"] = Instance.new("ImageLabel", G2L["19e"]);
G2L["19f"]["BorderSizePixel"] = 0;
G2L["19f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19f"]["Image"] = [[rbxassetid://70487508311290]];
G2L["19f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["19f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19f"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.TextLabel
G2L["1a0"] = Instance.new("TextLabel", G2L["19e"]);
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["TextSize"] = 17;
G2L["1a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["BackgroundTransparency"] = 1;
G2L["1a0"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Text"] = [[History]];
G2L["1a0"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.HistoryButtonFrame.Hitbox
G2L["1a1"] = Instance.new("TextButton", G2L["19e"]);
G2L["1a1"]["BorderSizePixel"] = 0;
G2L["1a1"]["TextTransparency"] = 1;
G2L["1a1"]["TextSize"] = 14;
G2L["1a1"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a1"]["ZIndex"] = 999;
G2L["1a1"]["BackgroundTransparency"] = 1;
G2L["1a1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a1"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame
G2L["1a2"] = Instance.new("Frame", G2L["187"]);
G2L["1a2"]["BorderSizePixel"] = 0;
G2L["1a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a2"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a2"]["Name"] = [[BrowserButtonFrame]];
G2L["1a2"]["LayoutOrder"] = 10;
G2L["1a2"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.ImageLabel
G2L["1a3"] = Instance.new("ImageLabel", G2L["1a2"]);
G2L["1a3"]["BorderSizePixel"] = 0;
G2L["1a3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a3"]["Image"] = [[rbxassetid://90807079339617]];
G2L["1a3"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a3"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.TextLabel
G2L["1a4"] = Instance.new("TextLabel", G2L["1a2"]);
G2L["1a4"]["BorderSizePixel"] = 0;
G2L["1a4"]["TextSize"] = 17;
G2L["1a4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a4"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a4"]["BackgroundTransparency"] = 1;
G2L["1a4"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a4"]["Text"] = [[Browser]];
G2L["1a4"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.BrowserButtonFrame.Hitbox
G2L["1a5"] = Instance.new("TextButton", G2L["1a2"]);
G2L["1a5"]["BorderSizePixel"] = 0;
G2L["1a5"]["TextTransparency"] = 1;
G2L["1a5"]["TextSize"] = 14;
G2L["1a5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a5"]["ZIndex"] = 999;
G2L["1a5"]["BackgroundTransparency"] = 1;
G2L["1a5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a5"]["Name"] = [[Hitbox]];


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame
G2L["1a6"] = Instance.new("Frame", G2L["187"]);
G2L["1a6"]["BorderSizePixel"] = 0;
G2L["1a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a6"]["Name"] = [[SkillsButtonFrame]];
G2L["1a6"]["LayoutOrder"] = 5;
G2L["1a6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.Hitbox
G2L["1a7"] = Instance.new("TextButton", G2L["1a6"]);
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


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.ImageLabel
G2L["1a8"] = Instance.new("ImageLabel", G2L["1a6"]);
G2L["1a8"]["BorderSizePixel"] = 0;
G2L["1a8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a8"]["Image"] = [[rbxassetid://119927491521709]];
G2L["1a8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a8"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.SkillsButtonFrame.TextLabel
G2L["1a9"] = Instance.new("TextLabel", G2L["1a6"]);
G2L["1a9"]["BorderSizePixel"] = 0;
G2L["1a9"]["TextSize"] = 17;
G2L["1a9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a9"]["BackgroundTransparency"] = 1;
G2L["1a9"]["Size"] = UDim2.new(1, -30, 1, 0);
G2L["1a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a9"]["Text"] = [[Skills]];
G2L["1a9"]["Position"] = UDim2.new(0, 35, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1aa"] = Instance.new("Frame", G2L["187"]);
G2L["1aa"]["BorderSizePixel"] = 0;
G2L["1aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Name"] = [[DummyButtonFrame]];
G2L["1aa"]["LayoutOrder"] = 6;
G2L["1aa"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1ab"] = Instance.new("Frame", G2L["187"]);
G2L["1ab"]["BorderSizePixel"] = 0;
G2L["1ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ab"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["Name"] = [[DummyButtonFrame]];
G2L["1ab"]["LayoutOrder"] = 7;
G2L["1ab"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1ac"] = Instance.new("Frame", G2L["187"]);
G2L["1ac"]["BorderSizePixel"] = 0;
G2L["1ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ac"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ac"]["Name"] = [[DummyButtonFrame]];
G2L["1ac"]["LayoutOrder"] = 8;
G2L["1ac"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.LeftSidebar.DummyButtonFrame
G2L["1ad"] = Instance.new("Frame", G2L["187"]);
G2L["1ad"]["BorderSizePixel"] = 0;
G2L["1ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ad"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["1ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ad"]["Name"] = [[DummyButtonFrame]];
G2L["1ad"]["LayoutOrder"] = 9;
G2L["1ad"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.TopBar
G2L["1ae"] = Instance.new("TextLabel", G2L["10"]);
G2L["1ae"]["ZIndex"] = 2;
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["TextSize"] = 14;
G2L["1ae"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1ae"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ae"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1ae"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ae"]["Text"] = [[IYAI]];
G2L["1ae"]["Name"] = [[TopBar]];


-- StarterGui.IYAI.IYAI.Frame.TopBar.UIPadding
G2L["1af"] = Instance.new("UIPadding", G2L["1ae"]);
G2L["1af"]["PaddingRight"] = UDim.new(0, 5);
G2L["1af"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.CloseButton
G2L["1b0"] = Instance.new("TextButton", G2L["1ae"]);
G2L["1b0"]["BorderSizePixel"] = 0;
G2L["1b0"]["TextSize"] = 14;
G2L["1b0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b0"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b0"]["ZIndex"] = 999;
G2L["1b0"]["BackgroundTransparency"] = 1;
G2L["1b0"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b0"]["Text"] = [[X]];
G2L["1b0"]["Name"] = [[CloseButton]];
G2L["1b0"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.TopBar.AuthorLabel
G2L["1b1"] = Instance.new("TextLabel", G2L["1ae"]);
G2L["1b1"]["BorderSizePixel"] = 0;
G2L["1b1"]["TextSize"] = 11;
G2L["1b1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b1"]["TextTransparency"] = 0.5;
G2L["1b1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b1"]["BackgroundTransparency"] = 1;
G2L["1b1"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1b1"]["Visible"] = false;
G2L["1b1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b1"]["Text"] = [[by @urluri]];
G2L["1b1"]["Name"] = [[AuthorLabel]];
G2L["1b1"]["Position"] = UDim2.new(0, 25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.VersionLabel
G2L["1b2"] = Instance.new("TextLabel", G2L["1ae"]);
G2L["1b2"]["BorderSizePixel"] = 0;
G2L["1b2"]["TextSize"] = 11;
G2L["1b2"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1b2"]["TextTransparency"] = 0.5;
G2L["1b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b2"]["BackgroundTransparency"] = 1;
G2L["1b2"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b2"]["Text"] = [[v]];
G2L["1b2"]["Name"] = [[VersionLabel]];
G2L["1b2"]["Position"] = UDim2.new(1, -145, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.TopBar.MinimizeButton
G2L["1b3"] = Instance.new("TextButton", G2L["1ae"]);
G2L["1b3"]["BorderSizePixel"] = 0;
G2L["1b3"]["TextSize"] = 14;
G2L["1b3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b3"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b3"]["ZIndex"] = 999;
G2L["1b3"]["BackgroundTransparency"] = 1;
G2L["1b3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b3"]["Text"] = [[—]];
G2L["1b3"]["Name"] = [[MinimizeButton]];
G2L["1b3"]["Position"] = UDim2.new(1, -40, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.Highlight
G2L["1b4"] = Instance.new("Frame", G2L["10"]);
G2L["1b4"]["BorderSizePixel"] = 0;
G2L["1b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b4"]["Size"] = UDim2.new(0, 3, 0, 25);
G2L["1b4"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["1b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b4"]["Name"] = [[Highlight]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame
G2L["1b5"] = Instance.new("Frame", G2L["10"]);
G2L["1b5"]["Visible"] = false;
G2L["1b5"]["ZIndex"] = 999;
G2L["1b5"]["BorderSizePixel"] = 0;
G2L["1b5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["Name"] = [[ModalFrame]];
G2L["1b5"]["BackgroundTransparency"] = 0.4;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.UIPadding
G2L["1b6"] = Instance.new("UIPadding", G2L["1b5"]);
G2L["1b6"]["PaddingTop"] = UDim.new(0, 25);
G2L["1b6"]["PaddingRight"] = UDim.new(0, 25);
G2L["1b6"]["PaddingLeft"] = UDim.new(0, 25);
G2L["1b6"]["PaddingBottom"] = UDim.new(0, 25);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame
G2L["1b7"] = Instance.new("Frame", G2L["1b5"]);
G2L["1b7"]["Visible"] = false;
G2L["1b7"]["BorderSizePixel"] = 0;
G2L["1b7"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1b7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.UICorner
G2L["1b8"] = Instance.new("UICorner", G2L["1b7"]);
G2L["1b8"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.CloseButton
G2L["1b9"] = Instance.new("TextButton", G2L["1b7"]);
G2L["1b9"]["BorderSizePixel"] = 0;
G2L["1b9"]["TextSize"] = 14;
G2L["1b9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b9"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b9"]["ZIndex"] = 999;
G2L["1b9"]["BackgroundTransparency"] = 1;
G2L["1b9"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1b9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b9"]["Text"] = [[X]];
G2L["1b9"]["Name"] = [[CloseButton]];
G2L["1b9"]["Position"] = UDim2.new(1, -25, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal
G2L["1ba"] = Instance.new("Frame", G2L["1b7"]);
G2L["1ba"]["Visible"] = false;
G2L["1ba"]["BorderSizePixel"] = 0;
G2L["1ba"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ba"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1ba"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ba"]["Name"] = [[SearchModelModal]];
G2L["1ba"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.UIPadding
G2L["1bb"] = Instance.new("UIPadding", G2L["1ba"]);
G2L["1bb"]["PaddingTop"] = UDim.new(0, 10);
G2L["1bb"]["PaddingRight"] = UDim.new(0, 10);
G2L["1bb"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1bb"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox
G2L["1bc"] = Instance.new("TextBox", G2L["1ba"]);
G2L["1bc"]["Name"] = [[SearchBox]];
G2L["1bc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1bc"]["BorderSizePixel"] = 0;
G2L["1bc"]["TextSize"] = 14;
G2L["1bc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1bc"]["PlaceholderText"] = [[Search models...]];
G2L["1bc"]["Size"] = UDim2.new(1, -35, 0, 30);
G2L["1bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bc"]["Text"] = [[]];
G2L["1bc"]["BackgroundTransparency"] = 0.95;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UICorner
G2L["1bd"] = Instance.new("UICorner", G2L["1bc"]);
G2L["1bd"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchBox.UIPadding
G2L["1be"] = Instance.new("UIPadding", G2L["1bc"]);
G2L["1be"]["PaddingTop"] = UDim.new(0, 10);
G2L["1be"]["PaddingRight"] = UDim.new(0, 10);
G2L["1be"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1be"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.SearchButton
G2L["1bf"] = Instance.new("ImageButton", G2L["1ba"]);
G2L["1bf"]["BorderSizePixel"] = 0;
G2L["1bf"]["BackgroundTransparency"] = 1;
G2L["1bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bf"]["Image"] = [[rbxassetid://94907058451749]];
G2L["1bf"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bf"]["Name"] = [[SearchButton]];
G2L["1bf"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame
G2L["1c0"] = Instance.new("ScrollingFrame", G2L["1ba"]);
G2L["1c0"]["Active"] = true;
G2L["1c0"]["BorderSizePixel"] = 0;
G2L["1c0"]["ScrollBarImageTransparency"] = 0.9;
G2L["1c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c0"]["Size"] = UDim2.new(1, 0, 0, 285);
G2L["1c0"]["Position"] = UDim2.new(0, 0, 0.43077, -100);
G2L["1c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c0"]["ScrollBarThickness"] = 6;
G2L["1c0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton
G2L["1c1"] = Instance.new("TextButton", G2L["1c0"]);
G2L["1c1"]["BorderSizePixel"] = 0;
G2L["1c1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c1"]["TextSize"] = 14;
G2L["1c1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c1"]["BackgroundTransparency"] = 1;
G2L["1c1"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c1"]["Text"] = [[SomeModel]];
G2L["1c1"]["Name"] = [[ExampleModelButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.ExampleModelButton.UIPadding
G2L["1c2"] = Instance.new("UIPadding", G2L["1c1"]);
G2L["1c2"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SearchModelModal.ScrollingFrame.UIGridLayout
G2L["1c3"] = Instance.new("UIGridLayout", G2L["1c0"]);
G2L["1c3"]["CellSize"] = UDim2.new(1, 0, 0, 30);
G2L["1c3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal
G2L["1c4"] = Instance.new("Frame", G2L["1b7"]);
G2L["1c4"]["Visible"] = false;
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c4"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1c4"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Name"] = [[ToolResultViewModal]];
G2L["1c4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.UIPadding
G2L["1c5"] = Instance.new("UIPadding", G2L["1c4"]);
G2L["1c5"]["PaddingTop"] = UDim.new(0, 10);
G2L["1c5"]["PaddingRight"] = UDim.new(0, 10);
G2L["1c5"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1c5"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF
G2L["1c6"] = Instance.new("ScrollingFrame", G2L["1c4"]);
G2L["1c6"]["Active"] = true;
G2L["1c6"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1c6"]["Name"] = [[ExecutionSF]];
G2L["1c6"]["ScrollBarImageTransparency"] = 0.8;
G2L["1c6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c6"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c6"]["ScrollBarThickness"] = 4;
G2L["1c6"]["LayoutOrder"] = 1;
G2L["1c6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF.TextBox
G2L["1c7"] = Instance.new("TextBox", G2L["1c6"]);
G2L["1c7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c7"]["BorderSizePixel"] = 0;
G2L["1c7"]["TextEditable"] = false;
G2L["1c7"]["TextSize"] = 14;
G2L["1c7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1c7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c7"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1c7"]["MultiLine"] = true;
G2L["1c7"]["ClearTextOnFocus"] = false;
G2L["1c7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c7"]["Text"] = [[Tool execution]];
G2L["1c7"]["LayoutOrder"] = 1;
G2L["1c7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.ToolResultViewModal.ExecutionSF.TextBox.UIPadding
G2L["1c8"] = Instance.new("UIPadding", G2L["1c7"]);
G2L["1c8"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel
G2L["1c9"] = Instance.new("TextLabel", G2L["1b7"]);
G2L["1c9"]["BorderSizePixel"] = 0;
G2L["1c9"]["TextSize"] = 17;
G2L["1c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c9"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c9"]["BackgroundTransparency"] = 1;
G2L["1c9"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c9"]["Name"] = [[TitleLabel]];
G2L["1c9"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.TitleLabel.UIPadding
G2L["1ca"] = Instance.new("UIPadding", G2L["1c9"]);
G2L["1ca"]["PaddingTop"] = UDim.new(0, 10);
G2L["1ca"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ca"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ca"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal
G2L["1cb"] = Instance.new("Frame", G2L["1b7"]);
G2L["1cb"]["Visible"] = false;
G2L["1cb"]["BorderSizePixel"] = 0;
G2L["1cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cb"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1cb"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1cb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cb"]["Name"] = [[SystemPromptModal]];
G2L["1cb"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.UIPadding
G2L["1cc"] = Instance.new("UIPadding", G2L["1cb"]);
G2L["1cc"]["PaddingTop"] = UDim.new(0, 10);
G2L["1cc"]["PaddingRight"] = UDim.new(0, 10);
G2L["1cc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1cc"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF
G2L["1cd"] = Instance.new("ScrollingFrame", G2L["1cb"]);
G2L["1cd"]["Active"] = true;
G2L["1cd"]["BorderSizePixel"] = 0;
G2L["1cd"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1cd"]["Name"] = [[OutputSF]];
G2L["1cd"]["ScrollBarImageTransparency"] = 0.8;
G2L["1cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1cd"]["Size"] = UDim2.new(1, 0, 1, -25);
G2L["1cd"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cd"]["ScrollBarThickness"] = 4;
G2L["1cd"]["LayoutOrder"] = 1;
G2L["1cd"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF.TextBox
G2L["1ce"] = Instance.new("TextBox", G2L["1cd"]);
G2L["1ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ce"]["BorderSizePixel"] = 0;
G2L["1ce"]["TextEditable"] = false;
G2L["1ce"]["TextSize"] = 14;
G2L["1ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ce"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ce"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1ce"]["MultiLine"] = true;
G2L["1ce"]["ClearTextOnFocus"] = false;
G2L["1ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ce"]["Text"] = [[Default system prompt]];
G2L["1ce"]["LayoutOrder"] = 1;
G2L["1ce"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.OutputSF.TextBox.UIPadding
G2L["1cf"] = Instance.new("UIPadding", G2L["1ce"]);
G2L["1cf"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer
G2L["1d0"] = Instance.new("Frame", G2L["1cb"]);
G2L["1d0"]["BorderSizePixel"] = 0;
G2L["1d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d0"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1d0"]["Position"] = UDim2.new(0, 0, 1, -20);
G2L["1d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d0"]["Name"] = [[BottomContainer]];
G2L["1d0"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.UIGridLayout
G2L["1d1"] = Instance.new("UIGridLayout", G2L["1d0"]);
G2L["1d1"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d1"]["CellSize"] = UDim2.new(0, 25, 0, 25);
G2L["1d1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d1"]["CellPadding"] = UDim2.new(0, 1, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.ResetButton
G2L["1d2"] = Instance.new("ImageButton", G2L["1d0"]);
G2L["1d2"]["BorderSizePixel"] = 0;
G2L["1d2"]["BackgroundTransparency"] = 1;
G2L["1d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d2"]["Image"] = [[rbxassetid://74363941121004]];
G2L["1d2"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d2"]["Name"] = [[ResetButton]];
G2L["1d2"]["Rotation"] = -180;
G2L["1d2"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.SystemPromptModal.BottomContainer.SaveButton
G2L["1d3"] = Instance.new("ImageButton", G2L["1d0"]);
G2L["1d3"]["BorderSizePixel"] = 0;
G2L["1d3"]["BackgroundTransparency"] = 1;
G2L["1d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d3"]["Image"] = [[rbxassetid://78698324836944]];
G2L["1d3"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d3"]["LayoutOrder"] = 1;
G2L["1d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d3"]["Name"] = [[SaveButton]];
G2L["1d3"]["Rotation"] = -180;
G2L["1d3"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal
G2L["1d4"] = Instance.new("Frame", G2L["1b7"]);
G2L["1d4"]["Visible"] = false;
G2L["1d4"]["BorderSizePixel"] = 0;
G2L["1d4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d4"]["Size"] = UDim2.new(1, 0, 0, 325);
G2L["1d4"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["1d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d4"]["Name"] = [[BrowserLogsViewModal]];
G2L["1d4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.UIPadding
G2L["1d5"] = Instance.new("UIPadding", G2L["1d4"]);
G2L["1d5"]["PaddingTop"] = UDim.new(0, 10);
G2L["1d5"]["PaddingRight"] = UDim.new(0, 10);
G2L["1d5"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1d5"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.LogsSF
G2L["1d6"] = Instance.new("ScrollingFrame", G2L["1d4"]);
G2L["1d6"]["Active"] = true;
G2L["1d6"]["CanvasSize"] = UDim2.new(1, 0, 1, -15);
G2L["1d6"]["Name"] = [[LogsSF]];
G2L["1d6"]["ScrollBarImageTransparency"] = 0.8;
G2L["1d6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["1d6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d6"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d6"]["ScrollBarThickness"] = 4;
G2L["1d6"]["LayoutOrder"] = 1;
G2L["1d6"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.LogsSF.TextBox
G2L["1d7"] = Instance.new("TextBox", G2L["1d6"]);
G2L["1d7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d7"]["BorderSizePixel"] = 0;
G2L["1d7"]["TextEditable"] = false;
G2L["1d7"]["TextSize"] = 14;
G2L["1d7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d7"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1d7"]["MultiLine"] = true;
G2L["1d7"]["ClearTextOnFocus"] = false;
G2L["1d7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d7"]["Text"] = [[Browser logs]];
G2L["1d7"]["LayoutOrder"] = 1;
G2L["1d7"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.Frame.BrowserLogsViewModal.LogsSF.TextBox.UIPadding
G2L["1d8"] = Instance.new("UIPadding", G2L["1d7"]);
G2L["1d8"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame
G2L["1d9"] = Instance.new("CanvasGroup", G2L["1b5"]);
G2L["1d9"]["Visible"] = false;
G2L["1d9"]["BorderSizePixel"] = 0;
G2L["1d9"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1d9"]["Size"] = UDim2.new(0, 250, 0, 125);
G2L["1d9"]["Position"] = UDim2.new(0.5, -125, 0.5, -62);
G2L["1d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d9"]["Name"] = [[ConfirmationFrame]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.UICorner
G2L["1da"] = Instance.new("UICorner", G2L["1d9"]);
G2L["1da"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame
G2L["1db"] = Instance.new("Frame", G2L["1d9"]);
G2L["1db"]["BorderSizePixel"] = 0;
G2L["1db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1db"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["1db"]["Position"] = UDim2.new(0, 0, 1, -35);
G2L["1db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1db"]["Name"] = [[ButtonsContainerFrame]];
G2L["1db"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.UIGridLayout
G2L["1dc"] = Instance.new("UIGridLayout", G2L["1db"]);
G2L["1dc"]["CellSize"] = UDim2.new(0.5, 0, 1, 0);
G2L["1dc"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1dc"]["CellPadding"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.YesButton
G2L["1dd"] = Instance.new("TextButton", G2L["1db"]);
G2L["1dd"]["BorderSizePixel"] = 0;
G2L["1dd"]["TextSize"] = 14;
G2L["1dd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1dd"]["BackgroundTransparency"] = 0.9;
G2L["1dd"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dd"]["Text"] = [[Yes]];
G2L["1dd"]["Name"] = [[YesButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.ButtonsContainerFrame.NoButton
G2L["1de"] = Instance.new("TextButton", G2L["1db"]);
G2L["1de"]["BorderSizePixel"] = 0;
G2L["1de"]["TextSize"] = 14;
G2L["1de"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1de"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1de"]["BackgroundTransparency"] = 0.9;
G2L["1de"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["1de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1de"]["Text"] = [[No]];
G2L["1de"]["Name"] = [[NoButton]];


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel
G2L["1df"] = Instance.new("TextLabel", G2L["1d9"]);
G2L["1df"]["TextWrapped"] = true;
G2L["1df"]["BorderSizePixel"] = 0;
G2L["1df"]["TextSize"] = 17;
G2L["1df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1df"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1df"]["BackgroundTransparency"] = 1;
G2L["1df"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["1df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1df"]["Text"] = [[Are you sure?]];
G2L["1df"]["Position"] = UDim2.new(0, 0, 0, 5);


-- StarterGui.IYAI.IYAI.Frame.ModalFrame.ConfirmationFrame.TextLabel.UIPadding
G2L["1e0"] = Instance.new("UIPadding", G2L["1df"]);
G2L["1e0"]["PaddingTop"] = UDim.new(0, 10);
G2L["1e0"]["PaddingRight"] = UDim.new(0, 10);
G2L["1e0"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1e0"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.IYAI.IYAI.IntroFrame
G2L["1e1"] = Instance.new("CanvasGroup", G2L["e"]);
G2L["1e1"]["Visible"] = false;
G2L["1e1"]["GroupTransparency"] = 1;
G2L["1e1"]["ZIndex"] = 999;
G2L["1e1"]["BorderSizePixel"] = 0;
G2L["1e1"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1e1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e1"]["Name"] = [[IntroFrame]];


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel
G2L["1e2"] = Instance.new("ImageLabel", G2L["1e1"]);
G2L["1e2"]["BorderSizePixel"] = 0;
G2L["1e2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e2"]["Image"] = [[rbxassetid://115810237733262]];
G2L["1e2"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["1e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e2"]["BackgroundTransparency"] = 1;
G2L["1e2"]["Position"] = UDim2.new(0.5, -150, 0.5, -175);


-- StarterGui.IYAI.IYAI.IntroFrame.ImageLabel.TextLabel
G2L["1e3"] = Instance.new("TextLabel", G2L["1e2"]);
G2L["1e3"]["BorderSizePixel"] = 0;
G2L["1e3"]["TextSize"] = 35;
G2L["1e3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e3"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e3"]["BackgroundTransparency"] = 1;
G2L["1e3"]["Size"] = UDim2.new(1, 0, 0.4, 0);
G2L["1e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e3"]["Text"] = [[Artificial Intelligence]];
G2L["1e3"]["Position"] = UDim2.new(0, 0, 0.6, 0);


-- StarterGui.IYAI.IYAI Toast Container
G2L["1e4"] = Instance.new("Frame", G2L["1"]);
G2L["1e4"]["BorderSizePixel"] = 0;
G2L["1e4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e4"]["Size"] = UDim2.new(0, 330, 1, 0);
G2L["1e4"]["Position"] = UDim2.new(1, -330, 0, 0);
G2L["1e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e4"]["Name"] = [[IYAI Toast Container]];
G2L["1e4"]["BackgroundTransparency"] = 1;


-- StarterGui.IYAI.IYAI Toast Container.Toast
G2L["1e5"] = Instance.new("CanvasGroup", G2L["1e4"]);
G2L["1e5"]["BorderSizePixel"] = 0;
G2L["1e5"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["1e5"]["Size"] = UDim2.new(0, 300, 0, 80);
G2L["1e5"]["Position"] = UDim2.new(1, -300, 0, 0);
G2L["1e5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e5"]["Name"] = [[Toast]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.UICorner
G2L["1e6"] = Instance.new("UICorner", G2L["1e5"]);
G2L["1e6"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.IYAI.IYAI Toast Container.Toast.TimerFrame
G2L["1e7"] = Instance.new("Frame", G2L["1e5"]);
G2L["1e7"]["BorderSizePixel"] = 0;
G2L["1e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e7"]["Size"] = UDim2.new(1, 0, 0, 3);
G2L["1e7"]["Position"] = UDim2.new(0, 0, 1, -3);
G2L["1e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Name"] = [[TimerFrame]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle
G2L["1e8"] = Instance.new("TextLabel", G2L["1e5"]);
G2L["1e8"]["ZIndex"] = 2;
G2L["1e8"]["BorderSizePixel"] = 0;
G2L["1e8"]["TextSize"] = 14;
G2L["1e8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e8"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["1e8"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e8"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["1e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e8"]["Text"] = [[Toast Title]];
G2L["1e8"]["Name"] = [[ToastTitle]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.UIPadding
G2L["1e9"] = Instance.new("UIPadding", G2L["1e8"]);
G2L["1e9"]["PaddingRight"] = UDim.new(0, 5);
G2L["1e9"]["PaddingLeft"] = UDim.new(0, 23);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton
G2L["1ea"] = Instance.new("TextButton", G2L["1e8"]);
G2L["1ea"]["BorderSizePixel"] = 0;
G2L["1ea"]["TextSize"] = 14;
G2L["1ea"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1ea"]["BackgroundTransparency"] = 1;
G2L["1ea"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ea"]["Text"] = [[X]];
G2L["1ea"]["Name"] = [[CloseButton]];
G2L["1ea"]["Position"] = UDim2.new(1, -20, 0.5, -10);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastTitle.CloseButton.UICorner
G2L["1eb"] = Instance.new("UICorner", G2L["1ea"]);
G2L["1eb"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc
G2L["1ec"] = Instance.new("TextLabel", G2L["1e5"]);
G2L["1ec"]["TextWrapped"] = true;
G2L["1ec"]["BorderSizePixel"] = 0;
G2L["1ec"]["TextSize"] = 14;
G2L["1ec"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1ec"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["1ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["FontFace"] = Font.new([[rbxassetid://11702779240]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ec"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ec"]["BackgroundTransparency"] = 1;
G2L["1ec"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ec"]["Name"] = [[ToastDesc]];
G2L["1ec"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.IYAI.IYAI Toast Container.Toast.ToastDesc.UIPadding
G2L["1ed"] = Instance.new("UIPadding", G2L["1ec"]);
G2L["1ed"]["PaddingTop"] = UDim.new(0, 5);
G2L["1ed"]["PaddingRight"] = UDim.new(0, 10);
G2L["1ed"]["PaddingLeft"] = UDim.new(0, 10);
G2L["1ed"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor
G2L["1ee"] = Instance.new("Frame", G2L["1e5"]);
G2L["1ee"]["ZIndex"] = 999;
G2L["1ee"]["BorderSizePixel"] = 0;
G2L["1ee"]["BackgroundColor3"] = Color3.fromRGB(171, 108, 108);
G2L["1ee"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["1ee"]["Position"] = UDim2.new(0, 10, 0, 11);
G2L["1ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ee"]["Name"] = [[IconColor]];


-- StarterGui.IYAI.IYAI Toast Container.Toast.IconColor.UICorner
G2L["1ef"] = Instance.new("UICorner", G2L["1ee"]);
G2L["1ef"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.IYAI.IYAI Toast Container.UIPadding
G2L["1f0"] = Instance.new("UIPadding", G2L["1e4"]);
G2L["1f0"]["PaddingTop"] = UDim.new(0, 15);
G2L["1f0"]["PaddingRight"] = UDim.new(0, 15);
G2L["1f0"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1f0"]["PaddingBottom"] = UDim.new(0, 30);


-- StarterGui.IYAI.CurrentPage
G2L["1f1"] = Instance.new("StringValue", G2L["1"]);
G2L["1f1"]["Name"] = [[CurrentPage]];


-- StarterGui.IYAI.Version
G2L["1f2"] = Instance.new("StringValue", G2L["1"]);
G2L["1f2"]["Name"] = [[Version]];
G2L["1f2"]["Value"] = [[1.0.6]];

return G2L
