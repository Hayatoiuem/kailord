local LEVEL = game.Players.LocalPlayer.Data.Level.Value
local playersmain = game.Players.LocalPlayer
local Caservers = game.Players:GetPlayers()

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local JACKKAITUN = Instance.new("TextBox")
local BELI = Instance.new("TextBox")
local LEVEL = Instance.new("TextBox")
local TIME = Instance.new("TextBox")
local RACE = Instance.new("TextBox")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.335871398, 0, 0.148769706, 0)
Frame.Size = UDim2.new(0, 522, 0, 316)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.00164198596, 0, -0.000860672968, 0)
ImageLabel.Size = UDim2.new(0, 529, 0, 316)
ImageLabel.Image = "rbxassetid://14643452607"

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.524904191, 0, -0.0601266772, 0)
ImageLabel_2.Size = UDim2.new(0, 267, 0, 345)
ImageLabel_2.Image = "rbxassetid://14643693476"

JACKKAITUN.Name = "JACK KAITUN"
JACKKAITUN.Parent = Frame
JACKKAITUN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JACKKAITUN.BackgroundTransparency = 1.000
JACKKAITUN.BorderColor3 = Color3.fromRGB(0, 0, 0)
JACKKAITUN.BorderSizePixel = 0
JACKKAITUN.Position = UDim2.new(0.0996168554, 0, 0.0443037972, 0)
JACKKAITUN.Size = UDim2.new(0, 200, 0, 50)
JACKKAITUN.Font = Enum.Font.Unknown
JACKKAITUN.Text = "JACK KAITUN"
JACKKAITUN.TextColor3 = Color3.fromRGB(0, 0, 0)
JACKKAITUN.TextSize = 14.000

BELI.Name = "BELI"
BELI.Parent = Frame
BELI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BELI.BackgroundTransparency = 1.000
BELI.BorderColor3 = Color3.fromRGB(0, 0, 0)
BELI.BorderSizePixel = 0
BELI.Position = UDim2.new(0, -1, 0, 71)
BELI.Size = UDim2.new(0, 200, 0, 50)
BELI.Font = Enum.Font.Unknown
BELI.Text = "Beli : 999M"
BELI.TextColor3 = Color3.fromRGB(0, 0, 0)
BELI.TextSize = 14.000

    spawn(function()
        local players = game:GetService("Players").LocalPlayer
        while wait() do
            local BELI = players.Data.Beli.Value
            local formattedBeli = ""
            if BELI >= 1e12 then
                formattedBeli = string.format("%.1fT", beliValue / 1e12)
            elseif beliValue >= 1e9 then
                formattedBeli = string.format("%.1fB", beliValue / 1e9)
            elseif beliValue >= 1e6 then
                formattedBeli = string.format("%.1fM", beliValue / 1e6)
            elseif beliValue >= 1e3 then
                formattedBeli = string.format("%.1fk", beliValue / 1e3)
            else
                formattedBeli = tostring(beliValue)
            end
            BeliValue.Text = "$Beli : " .. formattedBeli
        end
    end)


LEVEL.Name = "LEVEL"
LEVEL.Parent = Frame
LEVEL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LEVEL.BackgroundTransparency = 1.000
LEVEL.BorderColor3 = Color3.fromRGB(0, 0, 0)
LEVEL.BorderSizePixel = 0
LEVEL.Position = UDim2.new(0, -1, 0, 122)
LEVEL.Size = UDim2.new(0, 209, 0, 50)
LEVEL.Font = Enum.Font.Unknown
LEVEL.Text = "LEVEL : 1"
LEVEL.TextColor3 = Color3.fromRGB(0, 0, 0)
LEVEL.TextSize = 14.000

spawn(function()
    while wait() do
        pcall(function()
            LEVEL.Text = "LEVEL : "..".. game:GetService("Players").LocalPlayer.Data.Level.Value"
        end)
    end
end)

TIME.Name = "TIME"
TIME.Parent = Frame
TIME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TIME.BackgroundTransparency = 1.000
TIME.BorderColor3 = Color3.fromRGB(0, 0, 0)
TIME.BorderSizePixel = 0
TIME.Position = UDim2.new(0, 0, 0, 159)
TIME.Size = UDim2.new(0, 252, 0, 76)
TIME.Font = Enum.Font.Unknown
TIME.Text = "Time : 0H 0M 0S"
TIME.TextColor3 = Color3.fromRGB(0, 0, 0)
TIME.TextSize = 14.000

function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60 ^ 2)) % 24
    local Minute = math.floor(GameTime / (60 ^ 1)) % 60
    local Second = math.floor(GameTime / (60 ^ 0)) % 60
    TextLabel_4.Text = Hour .. "H " .. Minute .. "M " .. Second .. "S"
end
spawn(function()
    while task.wait() do
        pcall(function()
            UpdateTime()
        end)
    end
end)

RACE.Name = "RACE"
RACE.Parent = Frame
RACE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RACE.BackgroundTransparency = 1.000
RACE.BorderColor3 = Color3.fromRGB(0, 0, 0)
RACE.BorderSizePixel = 0
RACE.Position = UDim2.new(0, -1, 0, 224)
RACE.Size = UDim2.new(0, 195, 0, 50)
RACE.Font = Enum.Font.Unknown
RACE.Text = "RACE :"
RACE.TextColor3 = Color3.fromRGB(0, 0, 0)
RACE.TextSize = 14.000

function Races()
    Race:Set("Race : "..game.Players.LocalPlayer.Data.Race.Value)
end

spawn(function()
    pcall(function()
        while true do wait()
            Races()
        end
    end)
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, -1, 0, 289)
TextBox.Size = UDim2.new(0, 136, 0, 27)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = "BY : tranvanphuong"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000
