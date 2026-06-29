local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({


    Title = 'Shooter Game Fucker',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})


local Tabs = {
   
    Main = Window:AddTab('Main'),
 
}


local visual = Tabs.Main:AddLeftGroupbox('visuals')
local combat = Tabs.Main:AddRightGroupbox('hitbox')
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local highlightsEnabled = false -- Initial state
local highlightFolder = {} -- To track highlights

local function updateHighlights(enabled)
	for _, player in pairs(Players:GetPlayers()) do
		if player.Character then
			local highlight = player.Character:FindFirstChild("PlayerHighlight")
			if highlight then
				highlight.Enabled = enabled
			elseif enabled then
				-- Re-create if it was deleted
				local newHighlight = Instance.new("Highlight")
				newHighlight.Name = "PlayerHighlight"
				newHighlight.FillColor = Color3.fromRGB(255, 0, 4)
				newHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				newHighlight.FillTransparency = 0.5
				newHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				newHighlight.Parent = player.Character
			end
		end
	end
end

local function applyHighlight(player)
	player.CharacterAdded:Connect(function(character)
		local highlight = Instance.new("Highlight")
		highlight.Name = "PlayerHighlight"
		highlight.FillColor = Color3.fromRGB(255, 0, 4)
		highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
		highlight.FillTransparency = 0.5
		highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlight.Enabled = highlightsEnabled -- Match current state
		highlight.Parent = character
	end)
end

-- Initialize for existing players
for _, player in pairs(Players:GetPlayers()) do
	applyHighlight(player)
	-- Create initial highlight
	if player.Character then
		local h = Instance.new("Highlight")
		h.Name = "PlayerHighlight"
		h.FillColor = Color3.fromRGB(0, 255, 0)
		h.OutlineColor = Color3.fromRGB(255, 255, 255)
		h.FillTransparency = 0.5
		h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		h.Parent = player.Character
	end
end

Players.PlayerAdded:Connect(applyHighlight)


visual:AddToggle('chams', {
    Text = 'Chams',
    Default = false, 
    Tooltip = 'chams', 

    Callback = function(Value)
      highlightsEnabled = Value
       updateHighlights(highlightsEnabled)
    end
})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Configuration
getgenv().SilentAimEnabled = true
local isLeftMouseDown = false
local isRightMouseDown = false
local autoClickConnection = nil

-- Core Functions
local function isLobbyVisible()
    -- Ensure this path matches your game's UI
    return localPlayer.PlayerGui.MainGui.MainFrame.Lobby.Currency.Visible == true
end

local function getClosestPlayerToMouse()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local mousePosition = UserInputService:GetMouseLocation()

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local headPosition, onScreen = camera:WorldToViewportPoint(player.Character.Head.Position)
            if onScreen then
                local distance = (Vector2.new(headPosition.X, headPosition.Y) - mousePosition).Magnitude
                if distance < shortestDistance then
                    closestPlayer = player
                    shortestDistance = distance
                end
            end
        end
    end
    return closestPlayer
end

local function autoClick()
    if autoClickConnection then autoClickConnection:Disconnect() end
    autoClickConnection = RunService.Heartbeat:Connect(function()
        if (isLeftMouseDown or isRightMouseDown) and getgenv().SilentAimEnabled then
            if not isLobbyVisible() then
                mouse1click()
            end
        else
            autoClickConnection:Disconnect()
        end
    end)
end

-- Linoria UI Integration
CombatTab:AddToggle('SilentAim', {
    Text = 'Enable Silent Aim & Auto-Fire',
    Default = true,
    Tooltip = 'Toggles the silent aim camera lock and auto-clicking',
    Callback = function(Value)
        getgenv().SilentAimEnabled = Value
    end
})

-- Input Listeners
UserInputService.InputBegan:Connect(function(input, isProcessed)
    if isProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isLeftMouseDown = true
        if getgenv().SilentAimEnabled then autoClick() end
    elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
        isRightMouseDown = true
        if getgenv().SilentAimEnabled then autoClick() end
    end
end)

UserInputService.InputEnded:Connect(function(input, isProcessed)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isLeftMouseDown = false
    elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
        isRightMouseDown = false
    end
end)

-- Main Execution Loop
RunService.Heartbeat:Connect(function()
    if not getgenv().SilentAimEnabled or isLobbyVisible() then return end
    
    local target = getClosestPlayerToMouse()
    if target and target.Character and target.Character:FindFirstChild("Head") then
        local head = target.Character.Head
        -- Camera Lock
        camera.CFrame = CFrame.new(camera.CFrame.Position, head.Position)
    end
end)

Library:SetWatermarkVisibility(true)

-- Example of dynamically-updating watermark with common traits (fps and ping)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Made By UZI | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.ToggleKeybind = "RightCTRL"

