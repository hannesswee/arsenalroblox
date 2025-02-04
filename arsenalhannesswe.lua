-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local SA = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SAText = Instance.new("TextLabel")
local SilentAim = Instance.new("TextButton")
local ESPButton = Instance.new("TextButton") -- ESP Button
local UICorner_ESP = Instance.new("UICorner") -- ESP Button Corner
local UICorner_2 = Instance.new("UICorner")
local MadeBy = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SA.Name = "SA"
SA.Parent = ScreenGui
SA.BackgroundColor3 = Color3.fromRGB(50, 0, 50) -- Dark purple
SA.BackgroundTransparency = 0.3 -- Slight transparency
SA.BorderSizePixel = 0
SA.Position = UDim2.new(0.4, 0, 0.3, 0)

-- Adjust the height to be shorter
local totalHeight = 350  -- Adjusted to a shorter length
SA.Size = UDim2.new(0, 360, 0, totalHeight)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = SA

SAText.Name = "SA Text"
SAText.Parent = SA
SAText.BackgroundTransparency = 1
SAText.Size = UDim2.new(0, 360, 0, 44)
SAText.Font = Enum.Font.GothamBold
SAText.Text = "Arsenal SA - hannes_swe"
SAText.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
SAText.TextSize = 30
SAText.TextStrokeTransparency = 0.5

SilentAim.Name = "Silent Aim"
SilentAim.Parent = SA
SilentAim.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Blackish gray
SilentAim.Position = UDim2.new(0.22, 0, 0.2, 0)
SilentAim.Size = UDim2.new(0, 213, 0, 60)
SilentAim.Font = Enum.Font.GothamBold
SilentAim.Text = "Enable Silent Aim"
SilentAim.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
SilentAim.TextSize = 25
SilentAim.TextStrokeTransparency = 0.5

UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = SilentAim

-- ESP Button
ESPButton.Name = "ESPButton"
ESPButton.Parent = SA
ESPButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Blackish gray
ESPButton.Position = UDim2.new(0.22, 0, 0.4, 0) -- Positioned below Silent Aim
ESPButton.Size = UDim2.new(0, 213, 0, 60)
ESPButton.Font = Enum.Font.GothamBold
ESPButton.Text = "Enable ESP"
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
ESPButton.TextSize = 25
ESPButton.TextStrokeTransparency = 0.5

UICorner_ESP.CornerRadius = UDim.new(0, 8)
UICorner_ESP.Parent = ESPButton

MadeBy.Name = "Made By"
MadeBy.Parent = SA
MadeBy.BackgroundTransparency = 1
MadeBy.Position = UDim2.new(0, 0, 0.85, 0)
MadeBy.Size = UDim2.new(0, 360, 0, 50)
MadeBy.Font = Enum.Font.GothamBold
MadeBy.Text = "B to Toggle GUI"
MadeBy.TextColor3 = Color3.fromRGB(180, 180, 180) -- Light gray text
MadeBy.TextSize = 22
MadeBy.TextStrokeTransparency = 0.5

-- Draggable functionality
local dragging = false
local dragInput, mousePos, framePos

local function updateInput(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - mousePos
		SA.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
	end
end

SA.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = SA.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if dragging then
		updateInput(input)
	end
end)

-- Toggle GUI with "B" key
local isVisible = true
game:GetService("UserInputService").InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.B then
		isVisible = not isVisible
		SA.Visible = isVisible
	end
end)

-- ESP Toggle Script

local ESPEnabled = false
local LocalPlayer = game.Players.LocalPlayer

local function isEnemy(player)
    -- Only show ESP for players not on the same team
    if player.Team and LocalPlayer.Team then
        return player.Team ~= LocalPlayer.Team -- Enemies are on different teams
    end
    return true -- If teams don't exist, show ESP for everyone
end

local function createESP(player)
    if isEnemy(player) and player.Character and player.Character:FindFirstChild("UpperTorso") then
        -- Create ESP for the name above the player's head
        if not player.Character.Head:FindFirstChild("ESPName") then
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "ESPName"
            billboard.Parent = player.Character.Head
            billboard.Adornee = player.Character.Head
            billboard.Size = UDim2.new(0, 200, 0, 50) -- Size of the name text
            billboard.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
            billboard.AlwaysOnTop = true

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Parent = billboard
            nameLabel.Size = UDim2.new(1, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1 -- No background
            nameLabel.Text = player.Name -- Display player name
            nameLabel.Font = Enum.Font.GothamBold
            nameLabel.TextSize = 16
            nameLabel.TextColor3 = Color3.fromRGB(150, 0, 150) -- Purple color for enemies
            nameLabel.TextStrokeTransparency = 0 -- Outline text for visibility
        end

        -- Create the highlight effect on the chest (UpperTorso)
        if not player.Character:FindFirstChild("ESPChestHighlight") then
            local highlight = Instance.new("BillboardGui")
            highlight.Name = "ESPChestHighlight"
            highlight.Parent = player.Character.UpperTorso
            highlight.Adornee = player.Character.UpperTorso
            highlight.Size = UDim2.new(0, 50, 0, 50)  -- Smaller size of the highlight on the chest area
            highlight.StudsOffset = Vector3.new(0, 0, 0)  -- No offset, it will be on the chest
            highlight.AlwaysOnTop = true

            local highlightFrame = Instance.new("Frame")
            highlightFrame.Parent = highlight
            highlightFrame.Size = UDim2.new(1, 0, 1, 0)  -- Make it the same size as the BillboardGui
            highlightFrame.BackgroundColor3 = Color3.fromRGB(150, 0, 150) -- Purple color
            highlightFrame.BackgroundTransparency = 0.6 -- Semi-transparent
            highlightFrame.BorderSizePixel = 0 -- No border
        end
    end
end

local function removeESP(player)
    if player.Character then
        -- Remove name ESP
        if player.Character.Head:FindFirstChild("ESPName") then
            player.Character.Head.ESPName:Destroy()
        end
        
        -- Remove chest highlight ESP (BillboardGui with Frame)
        if player.Character:FindFirstChild("ESPChestHighlight") then
            player.Character.ESPChestHighlight:Destroy()
        end
    end
end

local function toggleESP()
    ESPEnabled = not ESPEnabled
    ESPButton.Text = ESPEnabled and "Disable ESP" or "Enable ESP"

    -- Loop through all players and update ESP based on toggle
    for _, player in pairs(game.Players:GetPlayers()) do
        if ESPEnabled then
            createESP(player)
        else
            removeESP(player)
        end
    end
end

-- Connect the button to toggle ESP
ESPButton.MouseButton1Click:Connect(toggleESP)

-- Update ESP for new players
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if ESPEnabled and isEnemy(player) then
            createESP(player)
        end
    end)
end)

-- Keep ESP when players reset
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if ESPEnabled and isEnemy(player) then
            createESP(player)
        end
    end)
end)

-- Cleanup ESP for players who leave
game.Players.PlayerRemoving:Connect(function(player)
    removeESP(player)
end)

-- Ensure ESP is updated when the local player resets
LocalPlayer.CharacterAdded:Connect(function()
    if ESPEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= LocalPlayer and isEnemy(player) then
                createESP(player)
            end
        end
    end
end)

-- Scripts:

-- Silent Aim Toggle Script with Infinite Ammo and Fast Fire Rate

-- Infinite Ammo v1 and v2 Setup
local infiniteAmmoEnabled = false
local SettingsInfinite = false

local function toggleInfiniteAmmo()
    -- Infinite Ammo v1
    game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = infiniteAmmoEnabled and "Infinite Ammo" or ""

    -- Infinite Ammo v2
    if SettingsInfinite then
        game:GetService("RunService").Stepped:connect(function()
            pcall(function()
                if SettingsInfinite then
                    local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
                    playerGui.GUI.Client.Variables.ammocount.Value = 99
                    playerGui.GUI.Client.Variables.ammocount2.Value = 99
                end
            end)
        end)
    end
end

-- Fast Fire Rate Toggle Script
local originalValues = { FireRate = {} }
local function toggleFireRate(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "FireRate" or v.Name == "BFireRate" then
            if state then
                if not originalValues.FireRate[v] then
                    originalValues.FireRate[v] = v.Value
                end
                v.Value = 0.02  -- Fast Fire Rate
            else
                if originalValues.FireRate[v] then
                    v.Value = originalValues.FireRate[v]
                else
                    v.Value = 0.8  -- Default Fire Rate
                end
            end
        end
    end
end

-- Fast Reload, Always Auto, No Spread, No Recoil Setup
local originalValuesReload = { ReloadTime = {}, EReloadTime = {} }
local function toggleReloadAndAuto(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
        if v:FindFirstChild("ReloadTime") then
            if state then
                if not originalValuesReload.ReloadTime[v] then
                    originalValuesReload.ReloadTime[v] = v.ReloadTime.Value
                end
                v.ReloadTime.Value = 0.01  -- Fast Reload
            else
                v.ReloadTime.Value = originalValuesReload.ReloadTime[v] or 0.8  -- Default Reload Time
            end
        end

        if v:FindFirstChild("EReloadTime") then
            if state then
                if not originalValuesReload.EReloadTime[v] then
                    originalValuesReload.EReloadTime[v] = v.EReloadTime.Value
                end
                v.EReloadTime.Value = 0.01  -- Fast Reload
            else
                v.EReloadTime.Value = originalValuesReload.EReloadTime[v] or 0.8  -- Default Reload Time
            end
        end

        if v:FindFirstChild("Auto") then
            if state then
                v.Auto.Value = true  -- Always Auto
            else
                v.Auto.Value = false  -- Default Auto (off)
            end
        end
    end
end

local originalValuesSpread = { Spread = {} }
local function toggleSpread(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "Spread" then
            if state then
                if not originalValuesSpread.Spread[v] then
                    originalValuesSpread.Spread[v] = v.Value
                end
                v.Value = 0  -- No Spread
            else
                v.Value = originalValuesSpread.Spread[v] or 1  -- Default Spread
            end
        end
    end
end

local originalValuesRecoil = { Recoil = {} }
local function toggleRecoil(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "Recoil" then
            if state then
                if not originalValuesRecoil.Recoil[v] then
                    originalValuesRecoil.Recoil[v] = v.Value
                end
                v.Value = 0  -- No Recoil
            else
                v.Value = originalValuesRecoil.Recoil[v] or 1  -- Default Recoil
            end
        end
    end
end

-- Silent Aim Button Script (toggles the Silent Aim along with Infinite Ammo and Fire Rate)
SilentAim.MouseButton1Down:connect(function()
    function getplrsname()
        for i,v in pairs(game:GetChildren()) do
            if v.ClassName == "Players" then
                return v.Name
            end
        end
    end
    local players = getplrsname()
    local plr = game[players].LocalPlayer
    coroutine.resume(coroutine.create(function()
        while wait(1) do
            coroutine.resume(coroutine.create(function()
                for _, v in pairs(game[players]:GetPlayers()) do
                    if v.Name ~= plr.Name and v.Character then
                        -- Silent Aim: Modify parts to make them non-collidable and transparent
                        v.Character.RightUpperLeg.CanCollide = false
                        v.Character.RightUpperLeg.Transparency = 10
                        v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

                        v.Character.LeftUpperLeg.CanCollide = false
                        v.Character.LeftUpperLeg.Transparency = 10
                        v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

                        v.Character.HeadHB.CanCollide = false
                        v.Character.HeadHB.Transparency = 10
                        v.Character.HeadHB.Size = Vector3.new(20,20,20)

                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Transparency = 10
                        v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)
                    end
                end
            end))

            -- Enable Infinite Ammo and Fire Rate when Silent Aim is toggled
            if infiniteAmmoEnabled then
                toggleInfiniteAmmo()  -- Enable Infinite Ammo
            end
            if SilentAim.Visible then
                toggleFireRate(true)  -- Enable Fast Fire Rate
                toggleReloadAndAuto(true)  -- Enable Fast Reload & Always Auto
                toggleSpread(true)  -- Enable No Spread
                toggleRecoil(true)  -- Enable No Recoil
            else
                toggleFireRate(false)  -- Reset Fire Rate
                toggleReloadAndAuto(false)  -- Reset Reload & Auto
                toggleSpread(false)  -- Reset Spread
                toggleRecoil(false)  -- Reset Recoil
            end
        end
    end))
end)

-- Setup Infinite Ammo toggle button
GunmodsSection:NewToggle("Infinite Ammo v1", "?", function(v)
    infiniteAmmoEnabled = v
    toggleInfiniteAmmo()  -- Enable or Disable Infinite Ammo
end)

GunmodsSection:NewToggle("Infinite Ammo v2", "?", function(K)
    SettingsInfinite = K
    if SettingsInfinite then
        toggleInfiniteAmmo()  -- Enable Infinite Ammo v2
    end
end)

-- Setup Fast Fire Rate toggle button
GunmodsSection:NewToggle("Fast Fire Rate", "?", function(state)
    toggleFireRate(state)  -- Enable or Disable Fast Fire Rate
end)

-- Setup Fast Reload, Always Auto, No Spread, and No Recoil toggle buttons
GunmodsSection:NewToggle("Fast Reload and Auto", "?", function(state)
    toggleReloadAndAuto(state)  -- Enable or Disable Fast Reload & Always Auto
end)

GunmodsSection:NewToggle("No Spread", "?", function(state)
    toggleSpread(state)  -- Enable or Disable No Spread
end)

GunmodsSection:NewToggle("No Recoil", "?", function(state)
    toggleRecoil(state)  -- Enable or Disable No Recoil
end)

coroutine.wrap(TGYL_fake_script)()

coroutine.wrap(BNQNGFT_fake_script)()
coroutine.wrap(BNQNGFT_fake_script)()
SilentAim.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(20,20,20)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
end)