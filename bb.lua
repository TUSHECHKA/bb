local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ControlPanel"
screenGui.Parent = playerGui

-- Создаем фон
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 130)
frame.Position = UDim2.new(0, 20, 0, 20)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.Parent = screenGui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 8)
frameCorner.Parent = frame

-- Заголовок
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0, 30)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
label.Text = "УПРАВЛЕНИЕ СКОРОСТЬЮ"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 14
label.Font = Enum.Font.GothamBold
label.Parent = frame

local labelCorner = Instance.new("UICorner")
labelCorner.CornerRadius = UDim.new(0, 8)
labelCorner.Parent = label

-- Кнопка скорости 100
local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0.8, 0, 0, 35)
speedButton.Position = UDim2.new(0.1, 0, 0.3, 0)
speedButton.BackgroundColor3 = Color3.fromRGB(52, 152, 219)
speedButton.Text = "СКОРОСТЬ 100"
speedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
speedButton.TextSize = 14
speedButton.Font = Enum.Font.GothamBold
speedButton.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.Parent = speedButton

-- Кнопка нормальной скорости
local normalButton = Instance.new("TextButton")
normalButton.Size = UDim2.new(0.8, 0, 0, 35)
normalButton.Position = UDim2.new(0.1, 0, 0.65, 0)
normalButton.BackgroundColor3 = Color3.fromRGB(39, 174, 96)
normalButton.Text = "НОРМАЛЬНАЯ СКОРОСТЬ"
normalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
normalButton.TextSize = 12
normalButton.Font = Enum.Font.GothamBold
normalButton.Parent = frame

local normalCorner = Instance.new("UICorner")
normalCorner.Parent = normalButton

-- Функции
function setSpeed(speedValue)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = speedValue
        print("Скорость установлена: " .. speedValue)
    end
end

-- Обработчики кнопок
speedButton.MouseButton1Click:Connect(function()
    setSpeed(100)
end)

normalButton.MouseButton1Click:Connect(function()
    setSpeed(16)
end)
