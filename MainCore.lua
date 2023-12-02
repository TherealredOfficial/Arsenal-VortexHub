
-- Create a ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Dark Gray Frame to hold your GUI elements
local darkGrayFrame = Instance.new("Frame")
darkGrayFrame.Size = UDim2.new(0, 200, 0, 250)  -- Adjusted height to 250
darkGrayFrame.Position = UDim2.new(1, -220, 0.5, -125)  -- Middle-right positioning
darkGrayFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)  -- Dark gray background color
darkGrayFrame.BorderSizePixel = 3  -- Thicker border at the bottom
darkGrayFrame.BorderColor3 = Color3.new(0.4, 0.4, 0.4)  -- Slightly lighter border color
darkGrayFrame.ClipsDescendants = true  -- Clip contents to the frame's boundaries
darkGrayFrame.Parent = gui

-- Create rounded corners using a UICorner for the Dark Gray Frame
local darkGrayCorner = Instance.new("UICorner")
darkGrayCorner.CornerRadius = UDim.new(0, 10)  -- Set the corner radius
darkGrayCorner.Parent = darkGrayFrame

-- Create a Black Frame for Toggles inside the Dark Gray Frame
local blackFrame = Instance.new("Frame")
blackFrame.Size = UDim2.new(0, 180, 0, 170)  -- Adjusted height to 170
blackFrame.Position = UDim2.new(0.5, -90, 0.5, -85)
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)  -- Black background color
blackFrame.BorderSizePixel = 0  -- Remove borders
blackFrame.Parent = darkGrayFrame

-- Create rounded corners using a UICorner for the Black Frame
local blackFrameCorner = Instance.new("UICorner")
blackFrameCorner.CornerRadius = UDim.new(0, 10)  -- Set the corner radius
blackFrameCorner.Parent = blackFrame

-- Create a Title Text inside the Black Frame
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 30)  -- Bigger title
titleText.Position = UDim2.new(0, 0, 0, 5)
titleText.BackgroundTransparency = 1
titleText.Text = "Combat"
titleText.TextSize = 24  -- Bigger text size
titleText.TextColor3 = Color3.new(1, 1, 1)  -- White text color
titleText.Font = Enum.Font.DenkOne
titleText.Parent = blackFrame

-- Create text labels on the left side of the Black Frame
local textLabels = {}
local textNames = {"Silent Aim", "Esp", "NoSlowdown", "Speed"}
for i, textName in ipairs(textNames) do
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0, 80, 0, 20)
    textLabel.Position = UDim2.new(0, 5, 0, (i - 1) * 30 + 40)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = textName
    textLabel.TextSize = 14
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.DenkOne
    textLabel.Parent = blackFrame
    table.insert(textLabels, textLabel)
end

local toggleButtons = {}
for i, textLabel in ipairs(textLabels) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 40, 0, 20)
    button.Position = UDim2.new(1, -45, 0, textLabel.Position.Y.Offset)
    button.BackgroundColor3 = Color3.new(1, 0, 0)  -- Red button color
    button.BorderSizePixel = 0  -- Remove borders
    button.Text = ""  -- Remove text
    button.AutoButtonColor = false  -- Prevent automatic button color change on click
    button.Parent = blackFrame

    -- ... (Your existing toggle buttons creation code goes here)

-- Create rounded corners using a UICorner for the button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)  -- Set the corner radius
buttonCorner.Parent = button

-- Move toggleGuiButton creation outside the gui ScreenGui
local toggleGuiButton = Instance.new("TextButton")
toggleGuiButton.Size = UDim2.new(0, 40, 0, 20)
toggleGuiButton.Position = UDim2.new(0.5, -20, 0, 5)  -- Adjusted position above the GUI
toggleGuiButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)  -- Dark gray background color
toggleGuiButton.BorderSizePixel = 0  -- Remove borders
toggleGuiButton.Text = "VC"  -- Text saying "VC"
toggleGuiButton.TextSize = 18  -- Adjusted text size for better visibility
toggleGuiButton.TextColor3 = Color3.new(1, 1, 1)  -- White text color
toggleGuiButton.AutoButtonColor = false  -- Prevent automatic button color change on click

-- Create rounded corners using a UICorner for the button
local toggleGuiButtonCorner = Instance.new("UICorner")
toggleGuiButtonCorner.CornerRadius = UDim.new(0, 10)  -- Set the corner radius
toggleGuiButtonCorner.Parent = toggleGuiButton

-- Add your keybind toggle logic here
toggleGuiButton.MouseButton1Click:Connect(function()
    if gui.Enabled then
        gui.Enabled = false  -- Toggle off the entire GUI
    else
        gui.Enabled = true  -- Toggle on the entire GUI
    end
end)

-- Parent toggleGuiButton to a separate ScreenGui
local toggleButtonGui = Instance.new("ScreenGui")
toggleButtonGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
toggleGuiButton.Parent = toggleButtonGui

    -- Add your logic here for each button
    if i == 1 then
        -- Silent Aim Button Logic
        button.MouseButton1Click:Connect(function()
            -- Toggle Silent Aim logic here
            if silentAimEnabled then
                print("Silent Aim Disabled")
            else
            -- Create a function to send a notification
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Toggle",
        Text = message,
        Duration = 5 -- Duration in seconds
    })
end

-- Example: Send a notification with a custom message
sendNotification("Silent Aim Enabled!")

                function resizeBodyParts()
    local players = game.Players
    local localPlayer = players.LocalPlayer

    while wait(1) do
        for _, player in pairs(players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local character = player.Character

                if character:FindFirstChild("RightUpperLeg") then
                    local rightUpperLeg = character.RightUpperLeg
                    rightUpperLeg.CanCollide = false
                    rightUpperLeg.Transparency = 1
                    rightUpperLeg.Size = Vector3.new(21, 21, 21)
                end

                if character:FindFirstChild("LeftUpperLeg") then
                    local leftUpperLeg = character.LeftUpperLeg
                    leftUpperLeg.CanCollide = false
                    leftUpperLeg.Transparency = 1
                    leftUpperLeg.Size = Vector3.new(21, 21, 21)
                end

                if character:FindFirstChild("HeadHB") then
                    local headHB = character.HeadHB
                    headHB.CanCollide = false
                    headHB.Transparency = 1
                    headHB.Size = Vector3.new(21, 21, 21)
                end

                if character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    humanoidRootPart.CanCollide = false
                    humanoidRootPart.Transparency = 1
                    humanoidRootPart.Size = Vector3.new(21, 21, 21)
                end
            end
        end
    end
end

coroutine.resume(coroutine.create(resizeBodyParts))

                
            end
            silentAimEnabled = not silentAimEnabled
        end)
    elseif i == 2 then
        -- Esp Button Logic
        button.MouseButton1Click:Connect(function()
        -- Create a function to send a notification
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Toggle",
        Text = message,
        Duration = 5 -- Duration in seconds
    })
end

-- Example: Send a notification with a custom message
sendNotification("ESP Enabled")

          local Players = game:GetService("Players")

-- Function to create a thicker rainbow outline at the torso for a given player
local function createThickerTorsoRainbowOutline(player)
    local character = player.Character
    local localPlayer = Players.LocalPlayer

    if character and player ~= localPlayer and player.Team ~= localPlayer.Team then
        local torso = character:WaitForChild("HumanoidRootPart")  -- Use the torso as the Adornee
        -- Create a BillboardGui for the outline
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Adornee = torso
        billboardGui.Size = UDim2.new(1, 0, 2, 0)  -- Adjusted size for better positioning
        billboardGui.StudsOffset = Vector3.new(0, 2, 0)  -- Adjusted offset for better positioning
        billboardGui.AlwaysOnTop = true

        -- Create a frame as the thicker rainbow outline
        local thickerRainbowOutline = Instance.new("Frame")
        thickerRainbowOutline.Size = UDim2.new(1, 15, 1, 15)  -- Make it even thicker
        thickerRainbowOutline.Position = UDim2.new(-0.5, 0, -1, 0)  -- Adjusted position to center on the torso
        thickerRainbowOutline.BackgroundTransparency = 0
        thickerRainbowOutline.BackgroundColor3 = Color3.fromHSV(math.random(), 1, 1)
        thickerRainbowOutline.Parent = billboardGui

        -- Update color over time to create a rainbow effect
        local function updateColor()
            thickerRainbowOutline.BackgroundColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
        end

        -- Update color every 30 seconds
        spawn(function()
            while thickerRainbowOutline.Parent do
                updateColor()
                wait(30)
            end
        end)

        billboardGui.Parent = torso
    end
end

-- Loop through existing players and create thicker torso rainbow outlines
for _, player in pairs(Players:GetPlayers()) do
    createThickerTorsoRainbowOutline(player)
end

-- Event to handle new players joining
Players.PlayerAdded:Connect(function(player)
    createThickerTorsoRainbowOutline(player)
end)

-- Event to handle players leaving
Players.PlayerRemoving:Connect(function(player)
    -- Remove outline when player leaves
    local character = player.Character
    if character then
        local torso = character:FindFirstChild("HumanoidRootPart")
        if torso then
            local billboardGui = torso:FindFirstChild("BillboardGui")
            if billboardGui then
                billboardGui:Destroy()
            end
        end
    end
end)

        end)
    elseif i == 3 then
        -- NoSlowdown Button Logic
        button.MouseButton1Click:Connect(function()
        
        -- Create a function to send a notification
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Toggle",
        Text = message,
        Duration = 5 -- Duration in seconds
    })
end

-- Example: Send a notification with a custom message
sendNotification("NoSlowdown Enabled! Guns Wont Slow U Down Anymore!")

        
        -- Place this script in a LocalScript in StarterPlayer > StarterPlayerScripts

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

while wait(0.01) do
    humanoid.WalkSpeed = 23.9
end


        end)
    elseif i == 4 then
        -- Speed Button Logic
        button.MouseButton1Click:Connect(function()
            -- Place this script in a LocalScript in StarterPlayer > StarterPlayerScripts
-- Create a function to send a notification
local function sendNotification(message)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Toggle!",
        Text = message,
        Duration = 5 -- Duration in seconds
    })
end

-- Example: Send a notification with a custom message
sendNotification("Speed Enabled! Go BRRRRRRR")

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

while wait(0.01) do
    humanoid.WalkSpeed = 35
end

        end)
    end

    table.insert(toggleButtons, button)
end
        
