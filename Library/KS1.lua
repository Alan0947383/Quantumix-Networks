-- [[ Services ]] --
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local PandaAuth = loadstring(game:HttpGet(('https://pandadevelopment.net/service_api/PandaBetaLib.lua')))()
local UserInputService = game:GetService("UserInputService")
local Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x9PSwiftz/Panda/main/Notification.lua"))()

function MakeDraggable(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

-- [[ UI ]] --
local KS1 = {}
local options = {}

function KS1:Create(options)
  getgenv().ServiceName = options.ServiceName
  getgenv().HubName = options.HubName
  getgenv().Discord = options.Discord
  getgenv().SaveKey = options.SaveKey
  getgenv().Script = options.Script
  
  -- PandaAUTH:
  local function Script()
    local User = {"Zenith","YajeK","QX"}
    local Fake = {"Bladeball","Minecraft","BloxFruit"}
    PandaAuth:LoadScript(User, "Panda", Fake, getgenv().Script)
  end
  local function RandomString(length)
    local randomString = ""
    for i = 1, length do
      local randomNumber = math.random(97, 122)
      randomString = randomString .. string.char(randomNumber)
    end
    return tostring(randomString)
  end
  
  local KeyGUI = Instance.new("ScreenGui")
  local Frame = Instance.new("Frame")
  local Footer = Instance.new("Frame")
  local UICorner = Instance.new("UICorner")
  local FooterFixer = Instance.new("Frame")
  local Frame_2 = Instance.new("Frame")
  local GetKey = Instance.new("TextButton")
  local UICorner_2 = Instance.new("UICorner")
  local Login = Instance.new("TextButton")
  local UICorner_3 = Instance.new("UICorner")
  local UICorner_4 = Instance.new("UICorner")
  local Header = Instance.new("Frame")
  local UICorner_5 = Instance.new("UICorner")
  local HeaderOutline = Instance.new("Frame")
  local HeaderFixer = Instance.new("Frame")
  local Title = Instance.new("TextLabel")
  local Close = Instance.new("ImageButton")
  local Body = Instance.new("Frame")
  local Note = Instance.new("TextLabel")
  local KeyFrame = Instance.new("Frame")
  local UICorner_6 = Instance.new("UICorner")
  local KeyFrameOutline = Instance.new("Frame")
  local KeyFrameFixers = Instance.new("Frame")
  local KeyBox = Instance.new("TextBox")
  local Discord = Instance.new("TextLabel")
  local FrameShadow = Instance.new("ImageLabel")
  
  --Properties:
  
  KeyGUI.Name = "KeyGUI"
  KeyGUI.Parent = game.CoreGui
  KeyGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  
  Frame.Parent = KeyGUI
  Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
  Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Frame.BorderSizePixel = 0
  Frame.Position = UDim2.new(0.382183909, 0, 0.355555564, 0)
  Frame.Size = UDim2.new(0, 409, 0, 233)
  Frame.AnchorPoint = Vector2.new(0.5, 0.5)
  MakeDraggable(Frame)
  
  Footer.Name = "Footer"
  Footer.Parent = Frame
  Footer.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  Footer.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Footer.BorderSizePixel = 0
  Footer.Position = UDim2.new(0, 0, 0.755364835, 0)
  Footer.Size = UDim2.new(0, 409, 0, 57)
  
  UICorner.Parent = Footer
  
  FooterFixer.Name = "FooterFixer"
  FooterFixer.Parent = Footer
  FooterFixer.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
  FooterFixer.BorderColor3 = Color3.fromRGB(0, 0, 0)
  FooterFixer.BorderSizePixel = 0
  FooterFixer.Position = UDim2.new(0, 0, 0.0175438598, 0)
  FooterFixer.Size = UDim2.new(0, 409, 0, -1)
  
  Frame_2.Parent = Footer
  Frame_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Frame_2.BorderSizePixel = 0
  Frame_2.Position = UDim2.new(0, 0, 0.122807018, 0)
  Frame_2.Size = UDim2.new(0, 409, 0, -6)
  
  GetKey.Name = "GetKey"
  GetKey.Parent = Footer
  GetKey.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
  GetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
  GetKey.BorderSizePixel = 0
  GetKey.Position = UDim2.new(0.753056228, 0, 0.263157904, 0)
  GetKey.Size = UDim2.new(0, 85, 0, 26)
  GetKey.Font = Enum.Font.Gotham
  GetKey.Text = "Get Key"
  GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
  GetKey.TextSize = 13.000
  GetKey.MouseButton1Click:Connect(function()
    KeyBox.Text = PandaAuth:GetLink(getgenv().ServiceName)
    setclipboard(PandaAuth:GetLink(getgenv().ServiceName))
  end)
  
  UICorner_2.CornerRadius = UDim.new(0, 5)
  UICorner_2.Parent = GetKey
  
  Login.Name = "Login"
  Login.Parent = Footer
  Login.BackgroundColor3 = Color3.fromRGB(97, 152, 255)
  Login.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Login.BorderSizePixel = 0
  Login.Position = UDim2.new(0.513447404, 0, 0.263157904, 0)
  Login.Size = UDim2.new(0, 85, 0, 26)
  Login.Font = Enum.Font.Gotham
  Login.Text = "Login"
  Login.TextColor3 = Color3.fromRGB(255, 255, 255)
  Login.TextSize = 13.000
  Login.MouseButton1Click:Connect(function()
    Login()
  end)
  
  UICorner_3.CornerRadius = UDim.new(0, 5)
  UICorner_3.Parent = Login
  
  UICorner_4.Parent = Frame
  
  Header.Name = "Header"
  Header.Parent = Frame
  Header.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Header.BorderSizePixel = 0
  Header.Size = UDim2.new(0, 409, 0, 28)
  MakeDraggable(Header)
  
  UICorner_5.Parent = Header
  
  HeaderOutline.Name = "HeaderOutline"
  HeaderOutline.Parent = Header
  HeaderOutline.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
  HeaderOutline.BorderColor3 = Color3.fromRGB(0, 0, 0)
  HeaderOutline.BorderSizePixel = 0
  HeaderOutline.Position = UDim2.new(0, 0, 1.01754439, 0)
  HeaderOutline.Size = UDim2.new(0, 409, 0, -1)
  
  HeaderFixer.Name = "HeaderFixer"
  HeaderFixer.Parent = Header
  HeaderFixer.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
  HeaderFixer.BorderColor3 = Color3.fromRGB(0, 0, 0)
  HeaderFixer.BorderSizePixel = 0
  HeaderFixer.Position = UDim2.new(0, 0, 0.979949951, 0)
  HeaderFixer.Size = UDim2.new(0, 409, 0, -6)
  
  Title.Name = "Title"
  Title.Parent = Header
  Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Title.BackgroundTransparency = 1.000
  Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Title.BorderSizePixel = 0
  Title.Position = UDim2.new(0.017114915, 0, 0.25, 0)
  Title.Size = UDim2.new(0, 358, 0, 14)
  Title.Font = Enum.Font.Gotham
  if getgenv().HubName then
    Title.Text = getgenv().HubName
  else
    Title.Text = "Unknown HUB"
  end
  Title.TextColor3 = Color3.fromRGB(255, 255, 255)
  Title.TextSize = 14.000
  Title.TextXAlignment = Enum.TextXAlignment.Left
  
  Close.Name = "Close"
  Close.Parent = Header
  Close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
  Close.BackgroundTransparency = 1.000
  Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Close.BorderSizePixel = 0
  Close.Position = UDim2.new(0.931248128, 0, 0.142857149, 0)
  Close.Size = UDim2.new(0, 20, 0, 19)
  Close.Image = "http://www.roblox.com/asset/?id=14955089205"
  Close.MouseButton1Click:Connect(function()
    KeyGUI:Destroy()
  end)
  
  Body.Name = "Body"
  Body.Parent = Frame
  Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Body.BackgroundTransparency = 1.000
  Body.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Body.BorderSizePixel = 0
  Body.Position = UDim2.new(0.017114915, 0, 0.150214598, 0)
  Body.Size = UDim2.new(0, 393, 0, 134)
  
  Note.Name = "Note"
  Note.Parent = Body
  Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Note.BackgroundTransparency = 1.000
  Note.BorderColor3 = Color3.fromRGB(0, 0, 0)
  Note.BorderSizePixel = 0
  Note.Position = UDim2.new(0.0152671756, 0, -0.0485730544, 0)
  Note.Size = UDim2.new(0, 380, 0, 64)
  Note.Font = Enum.Font.Gotham
  if getgenv().HubName then
    Note.Text = "Thank you for supporting "..getgenv().HubName..". stay one step ahead of the machines!"
  else
    Note.Text = "Thank you for supporting UnknownHUB. stay one step ahead of the machines!"
  end
  Note.TextColor3 = Color3.fromRGB(255, 255, 255)
  Note.TextSize = 13.000
  Note.TextWrapped = true
  Note.TextXAlignment = Enum.TextXAlignment.Left
  
  KeyFrame.Name = "KeyFrame"
  KeyFrame.Parent = Body
  KeyFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
  KeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
  KeyFrame.BorderSizePixel = 0
  KeyFrame.Position = UDim2.new(0.0152671756, 0, 0.477611929, 0)
  KeyFrame.Size = UDim2.new(0, 325, 0, 34)
  
  UICorner_6.CornerRadius = UDim.new(0, 5)
  UICorner_6.Parent = KeyFrame
  
  KeyFrameOutline.Name = "KeyFrameOutline"
  KeyFrameOutline.Parent = KeyFrame
  KeyFrameOutline.BackgroundColor3 = Color3.fromRGB(97, 152, 255)
  KeyFrameOutline.BorderColor3 = Color3.fromRGB(0, 0, 0)
  KeyFrameOutline.BorderSizePixel = 0
  KeyFrameOutline.Position = UDim2.new(0, 0, 0.970588207, 0)
  KeyFrameOutline.Size = UDim2.new(0, 325, 0, 1)
  
  KeyFrameFixers.Name = "KeyFrameFixers"
  KeyFrameFixers.Parent = KeyFrame
  KeyFrameFixers.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
  KeyFrameFixers.BorderColor3 = Color3.fromRGB(0, 0, 0)
  KeyFrameFixers.BorderSizePixel = 0
  KeyFrameFixers.Position = UDim2.new(-0.000117375297, 0, 0.787969232, 0)
  KeyFrameFixers.Size = UDim2.new(0, 325, 0, 6)
  
  KeyBox.Name = "KeyBox"
  KeyBox.Parent = KeyFrame
  KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  KeyBox.BackgroundTransparency = 1.000
  KeyBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
  KeyBox.BorderSizePixel = 0
  KeyBox.Position = UDim2.new(0.0276923068, 0, 0, 0)
  KeyBox.Size = UDim2.new(0, 316, 0, 32)
  KeyBox.Font = Enum.Font.Gotham
  KeyBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
  KeyBox.PlaceholderText = "Enter Key"
  KeyBox.Text = ""
  KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
  KeyBox.TextSize = 14.000
  KeyBox.TextXAlignment = Enum.TextXAlignment.Left
  KeyBox.ClearTextOnFocus = false
  KeyBox.ClipsDescendants = true
  KeyBox.TextTruncate = Enum.TextTruncate.AtEnd
  
  if getgenv().SaveKey and isfile(getgenv().HubName..".txt") then
    KeyBox.Text = readfile(getgenv().HubName..".txt")
    Notify.new("["..getgenv().HubName.."]: Loaded Key", 5)
  end
  
  if getgenv().Discord then
    Discord.Name = "Discord"
    Discord.Parent = Body
    Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Discord.BackgroundTransparency = 1.000
    Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Discord.BorderSizePixel = 0
    Discord.Position = UDim2.new(0.0305343512, 0, 0.731343269, 0)
    Discord.Size = UDim2.new(0, 390, 0, 19)
    Discord.Font = Enum.Font.Cartoon
    Discord.Text = "discord.gg/"..getgenv().Discord
    Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
    Discord.TextSize = 14.000
    Discord.TextXAlignment = Enum.TextXAlignment.Left
  end
  
  FrameShadow.Name = "FrameShadow"
  FrameShadow.Parent = Frame
  FrameShadow.AnchorPoint = Vector2.new(0.5, 0.5)
  FrameShadow.BackgroundTransparency = 1.000
  FrameShadow.Position = UDim2.new(0.497555017, 0, 0.491416305, 2)
  FrameShadow.Size = UDim2.new(1, 142, 1, 142)
  FrameShadow.ZIndex = 0
  FrameShadow.Image = "rbxassetid://12817494724"
  FrameShadow.ImageTransparency = 0.500
  FrameShadow.ScaleType = Enum.ScaleType.Slice
  FrameShadow.SliceCenter = Rect.new(85, 85, 427, 427)
  
  oldstring = RandomString(10)
  function Login()
    pcall(function()
      print("[ "..getgenv().HubName.." ]".." Checking key..")
      Notify.New("["..getgenv().HubName.."]: Checking Key", 2)
      if RandomString(10) == oldstring then return Notify.New("Haha kid want to bypass PandaKeySystem v2", 2) end;oldstring = RandomString(10)
      if PandaAuth:GetLink(getgenv().ServiceName) == nil or PandaAuth:ValidateKey(getgenv().ServiceName, KeyBox.Text..RandomString(10)) then
        return Notify.New("Haha kid want to bypass PandaKeySystem v2", 2)
      elseif PandaAuth:ValidateKey(getgenv().ServiceName, KeyBox.Text) then
        print("[ "..getgenv().HubName.." ]".." Correct key..")
        Notify.New("["..getgenv().HubName.."]: Correct Key", 5)
        PandaAuth:SaveKey(getgenv().HubName..".txt")
        Script()
      else
        print("[ "..getgenv().HubName.." ]".." Incorrect key..")
        Notify.New("["..getgenv().HubName.."]: Incorrect Key", 2)
      end
    end)
  end
end

return KS1
