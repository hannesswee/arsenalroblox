function iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8715,10395,11970,10605,10605,11550,7455,12285,11025}))
local SA = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7350,11970,10185,11445,10605}))
local UICorner = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8925,7665,7035,11655,11970,11550,10605,11970}))
local SAText = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
local SilentAim = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550}))
local ESPButton = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8820,10605,12600,12180,6930,12285,12180,12180,11655,11550})) -- ESP Button
local UICorner_ESP = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8925,7665,7035,11655,11970,11550,10605,11970})) -- ESP Button Corner
local UICorner_2 = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8925,7665,7035,11655,11970,11550,10605,11970}))
local MadeBy = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8820,10605,12600,12180,7980,10185,10290,10605,11340}))

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8400,11340,10185,12705,10605,11970,7455,12285,11025}))
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SA.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8715,6825})
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

SAText.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8715,6825,3360,8820,10605,12600,12180})
SAText.Parent = SA
SAText.BackgroundTransparency = 1
SAText.Size = UDim2.new(0, 360, 0, 44)
SAText.Font = Enum.Font.GothamBold
SAText.Text = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6825,11970,12075,10605,11550,10185,11340,3360,8715,6825,3360,4725,3360,10920,10185,11550,11550,10605,12075,9975,12075,12495,10605})
SAText.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
SAText.TextSize = 30
SAText.TextStrokeTransparency = 0.5

SilentAim.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8715,11025,11340,10605,11550,12180,3360,6825,11025,11445})
SilentAim.Parent = SA
SilentAim.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Blackish gray
SilentAim.Position = UDim2.new(0.22, 0, 0.2, 0)
SilentAim.Size = UDim2.new(0, 213, 0, 60)
SilentAim.Font = Enum.Font.GothamBold
SilentAim.Text = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,11550,10185,10290,11340,10605,3360,8715,11025,11340,10605,11550,12180,3360,6825,11025,11445})
SilentAim.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
SilentAim.TextSize = 25
SilentAim.TextStrokeTransparency = 0.5

UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = SilentAim

-- ESP Button
ESPButton.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,6930,12285,12180,12180,11655,11550})
ESPButton.Parent = SA
ESPButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Blackish gray
ESPButton.Position = UDim2.new(0.22, 0, 0.4, 0) -- Positioned below Silent Aim
ESPButton.Size = UDim2.new(0, 213, 0, 60)
ESPButton.Font = Enum.Font.GothamBold
ESPButton.Text = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,11550,10185,10290,11340,10605,3360,7245,8715,8400})
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
ESPButton.TextSize = 25
ESPButton.TextStrokeTransparency = 0.5

UICorner_ESP.CornerRadius = UDim.new(0, 8)
UICorner_ESP.Parent = ESPButton

MadeBy.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8085,10185,10500,10605,3360,6930,12705})
MadeBy.Parent = SA
MadeBy.BackgroundTransparency = 1
MadeBy.Position = UDim2.new(0, 0, 0.85, 0)
MadeBy.Size = UDim2.new(0, 360, 0, 50)
MadeBy.Font = Enum.Font.GothamBold
MadeBy.Text = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6930,3360,12180,11655,3360,8820,11655,10815,10815,11340,10605,3360,7455,8925,7665})
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

game:GetService(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputChanged:Connect(function(input)
	if dragging then
		updateInput(input)
	end
end)

-- Toggle GUI with iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6930}) key
local isVisible = true
game:GetService(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8925,12075,10605,11970,7665,11550,11760,12285,12180,8715,10605,11970,12390,11025,10395,10605})).InputBegan:Connect(function(input)
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
    return true -- If teams doniRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({12180,3360,10605,12600,11025,12075,12180,4620,3360,12075,10920,11655,12495,3360,7245,8715,8400,3360,10710,11655,11970,3360,10605,12390,10605,11970,12705,11655,11550,10605,1365,1050,10605,11550,10500,1365,1050,1365,1050,11340,11655,10395,10185,11340,3360,10710,12285,11550,10395,12180,11025,11655,11550,3360,10395,11970,10605,10185,12180,10605,7245,8715,8400,4200,11760,11340,10185,12705,10605,11970,4305,1365,1050,3360,3360,3360,3360,11025,10710,3360,11025,12075,7245,11550,10605,11445,12705,4200,11760,11340,10185,12705,10605,11970,4305,3360,10185,11550,10500,3360,11760,11340,10185,12705,10605,11970,4830,7035,10920,10185,11970,10185,10395,12180,10605,11970,3360,10185,11550,10500,3360,11760,11340,10185,12705,10605,11970,4830,7035,10920,10185,11970,10185,10395,12180,10605,11970,6090,7350,11025,11550,10500,7350,11025,11970,12075,12180,7035,10920,11025,11340,10500,4200})UpperTorsoiRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({4305,3360,12180,10920,10605,11550,1365,1050,3360,3360,3360,3360,3360,3360,3360,3360,4725,4725,3360,7035,11970,10605,10185,12180,10605,3360,7245,8715,8400,3360,10710,11655,11970,3360,12180,10920,10605,3360,11550,10185,11445,10605,3360,10185,10290,11655,12390,10605,3360,12180,10920,10605,3360,11760,11340,10185,12705,10605,11970})s head
        if not player.Character.Head:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,8190,10185,11445,10605})) then
            local billboard = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6930,11025,11340,11340,10290,11655,10185,11970,10500,7455,12285,11025}))
            billboard.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,8190,10185,11445,10605})
            billboard.Parent = player.Character.Head
            billboard.Adornee = player.Character.Head
            billboard.Size = UDim2.new(0, 200, 0, 50) -- Size of the name text
            billboard.StudsOffset = Vector3.new(0, 2, 0) -- Position above head
            billboard.AlwaysOnTop = true

            local nameLabel = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8820,10605,12600,12180,7980,10185,10290,10605,11340}))
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
        if not player.Character:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,7035,10920,10605,12075,12180,7560,11025,10815,10920,11340,11025,10815,10920,12180})) then
            local highlight = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6930,11025,11340,11340,10290,11655,10185,11970,10500,7455,12285,11025}))
            highlight.Name = iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,7035,10920,10605,12075,12180,7560,11025,10815,10920,11340,11025,10815,10920,12180})
            highlight.Parent = player.Character.UpperTorso
            highlight.Adornee = player.Character.UpperTorso
            highlight.Size = UDim2.new(0, 50, 0, 50)  -- Smaller size of the highlight on the chest area
            highlight.StudsOffset = Vector3.new(0, 0, 0)  -- No offset, it will be on the chest
            highlight.AlwaysOnTop = true

            local highlightFrame = Instance.new(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7350,11970,10185,11445,10605}))
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
        if player.Character.Head:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,8190,10185,11445,10605})) then
            player.Character.Head.ESPName:Destroy()
        end
        
        -- Remove chest highlight ESP (BillboardGui with Frame)
        if player.Character:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8715,8400,7035,10920,10605,12075,12180,7560,11025,10815,10920,11340,11025,10815,10920,12180})) then
            player.Character.ESPChestHighlight:Destroy()
        end
    end
end

local function toggleESP()
    ESPEnabled = not ESPEnabled
    ESPButton.Text = ESPEnabled and iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7140,11025,12075,10185,10290,11340,10605,3360,7245,8715,8400}) or iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,11550,10185,10290,11340,10605,3360,7245,8715,8400})

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
    game:GetService(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})).wkspc.CurrentCurse.Value = infiniteAmmoEnabled and iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7665,11550,10710,11025,11550,11025,12180,10605,3360,6825,11445,11445,11655}) or iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({})

    -- Infinite Ammo v2
    if SettingsInfinite then
        game:GetService(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8610,12285,11550,8715,10605,11970,12390,11025,10395,10605})).Stepped:connect(function()
            pcall(function()
                if SettingsInfinite then
                    local playerGui = game:GetService(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8400,11340,10185,12705,10605,11970,12075})).LocalPlayer.PlayerGui
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
        if v.Name == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7350,11025,11970,10605,8610,10185,12180,10605}) or v.Name == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6930,7350,11025,11970,10605,8610,10185,12180,10605}) then
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
        if v:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8610,10605,11340,11655,10185,10500,8820,11025,11445,10605})) then
            if state then
                if not originalValuesReload.ReloadTime[v] then
                    originalValuesReload.ReloadTime[v] = v.ReloadTime.Value
                end
                v.ReloadTime.Value = 0.01  -- Fast Reload
            else
                v.ReloadTime.Value = originalValuesReload.ReloadTime[v] or 0.8  -- Default Reload Time
            end
        end

        if v:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7245,8610,10605,11340,11655,10185,10500,8820,11025,11445,10605})) then
            if state then
                if not originalValuesReload.EReloadTime[v] then
                    originalValuesReload.EReloadTime[v] = v.EReloadTime.Value
                end
                v.EReloadTime.Value = 0.01  -- Fast Reload
            else
                v.EReloadTime.Value = originalValuesReload.EReloadTime[v] or 0.8  -- Default Reload Time
            end
        end

        if v:FindFirstChild(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6825,12285,12180,11655})) then
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
        if v.Name == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8715,11760,11970,10605,10185,10500}) then
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
        if v.Name == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8610,10605,10395,11655,11025,11340}) then
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
            if v.ClassName == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8400,11340,10185,12705,10605,11970,12075}) then
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
GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7665,11550,10710,11025,11550,11025,12180,10605,3360,6825,11445,11445,11655,3360,12390,5145}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(v)
    infiniteAmmoEnabled = v
    toggleInfiniteAmmo()  -- Enable or Disable Infinite Ammo
end)

GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7665,11550,10710,11025,11550,11025,12180,10605,3360,6825,11445,11445,11655,3360,12390,5250}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(K)
    SettingsInfinite = K
    if SettingsInfinite then
        toggleInfiniteAmmo()  -- Enable Infinite Ammo v2
    end
end)

-- Setup Fast Fire Rate toggle button
GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7350,10185,12075,12180,3360,7350,11025,11970,10605,3360,8610,10185,12180,10605}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(state)
    toggleFireRate(state)  -- Enable or Disable Fast Fire Rate
end)

-- Setup Fast Reload, Always Auto, No Spread, and No Recoil toggle buttons
GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({7350,10185,12075,12180,3360,8610,10605,11340,11655,10185,10500,3360,10185,11550,10500,3360,6825,12285,12180,11655}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(state)
    toggleReloadAndAuto(state)  -- Enable or Disable Fast Reload & Always Auto
end)

GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8190,11655,3360,8715,11760,11970,10605,10185,10500}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(state)
    toggleSpread(state)  -- Enable or Disable No Spread
end)

GunmodsSection:NewToggle(iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8190,11655,3360,8610,10605,10395,11655,11025,11340}), iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({6615}), function(state)
    toggleRecoil(state)  -- Enable or Disable No Recoil
end)

coroutine.wrap(TGYL_fake_script)()

coroutine.wrap(BNQNGFT_fake_script)()
coroutine.wrap(BNQNGFT_fake_script)()
SilentAim.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == iRAiIWyEfkdwTzwOCBlwHtzsrHGPIv({8400,11340,10185,12705,10605,11970,12075}) then
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
