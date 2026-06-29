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
    Default = true, 
    Tooltip = 'chams', 

    Callback = function(Value)
      highlightsEnabled = Value
       updateHighlights(highlightsEnabled)
    end
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Initialize settings
getgenv().Enabled = false         -- Master Switch
getgenv().ShowHitbox = false     -- Visual Toggle
getgenv().HitboxSize = Vector3.new(2, 2, 2)

-- Centralized Function
local function refreshHitboxes()
    if not getgenv().Enabled then return end
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                hrp.Size = getgenv().HitboxSize
                hrp.CanCollide = false
                hrp.Transparency = getgenv().ShowHitbox and 0.5 or 1
            end
        end
    end
end

-- 1. Master Switch
combat:AddToggle('MasterSwitch', {
    Text = 'Enable Hitbox System',
    Default = true,
    Callback = function(Value)
        getgenv().Enabled = Value
        if not Value then
            -- Reset players if disabled
            for _, p in ipairs(Players:GetPlayers()) do
                if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 2)
                    p.Character.HumanoidRootPart.Transparency = 1
                end
            end
        else
            refreshHitboxes()
        end
    end
})

-- 2. Visual Toggle
combat:AddToggle('ViewHitbox', {
    Text = 'View Hitboxes',
    Default = false,
    Callback = function(Value)
        getgenv().ShowHitbox = Value
        refreshHitboxes()
    end
})

-- 3. Size Slider
combat:AddSlider('HitboxSizeSlider', {
    Text = 'Hitbox Size',
    Default = 2,
    Min = 2,
    Max = 10,
    Rounding = 0,
    Callback = function(Value)
        getgenv().HitboxSize = Vector3.new(Value, Value, Value)
        refreshHitboxes()
    end
})

-- Auto-apply on new spawns
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait(0.5)
        refreshHitboxes()
    end)
end)

-- Background update loop
task.spawn(function()
    while true do
        if getgenv().Enabled then
            refreshHitboxes()
        end
        task.wait(5)
    end
end)



