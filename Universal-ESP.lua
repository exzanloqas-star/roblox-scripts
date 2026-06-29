-- 1. Load the library
local e = loadstring(game:HttpGet("https://pastebin.com/raw/G9N1ttQ4"))() 



local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()


local Window = Library:CreateWindow({
   

    Title = 'Universal ESP',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- CALLBACK NOTE:
-- Passing in callback functions via the initial element parameters (i.e. Callback = function(Value)...) works
-- HOWEVER, using Toggles/Options.INDEX:OnChanged(function(Value) ... ) is the RECOMMENDED way to do this.
-- I strongly recommend decoupling UI code from logic code. i.e. Create your UI elements FIRST, and THEN setup :OnChanged functions later.

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
}


local visuals = Tabs.Main:AddLeftGroupbox('Visuals')
local Combat = Tabs.Main:AddRightGroupbox('Combat')


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Logic Variables
local ESP_Active = false
local Chams_Active = false

-- Function to handle highlight creation/removal
local function updatePlayerESP(player)
    if not player.Character then return end
    
    local existingHighlight = player.Character:FindFirstChild("ESP_Highlight")
    
    -- Only show if Master is ON and Chams is ON
    if ESP_Active and Chams_Active and player ~= LocalPlayer then
        if not existingHighlight then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESP_Highlight"
            highlight.Parent = player.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            
            -- Apply initial color from picker
            highlight.FillColor = Options.ChamsColor.Value
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        else
            -- Update color if it already exists (useful when changing color in real-time)
            existingHighlight.FillColor = Options.ChamsColor.Value
        end
    else
        if existingHighlight then
            existingHighlight:Destroy()
        end
    end
end

-- Refresh all players
local function refreshAll()
    for _, p in pairs(Players:GetPlayers()) do
        updatePlayerESP(p)
    end
end



visuals:AddToggle('Master', {
    Text = 'Enable ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Master Switch', -- Information shown when you hover over the toggle

    Callback = function(Value)
         ESP_Active = Value
        refreshAll()
      if Value then
    ESP.Enabled = true  
      else
    ESP.Enabled = false  
      end
    end
})

visuals:AddToggle('Box', {
    Text = 'Box ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Player Box', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value then
     ESP.ShowBoxes = true 
      else
    ESP.ShowBoxes = false 
      end
    end
})

visuals:AddToggle('Nametag', {
    Text = 'Username ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Displays Roblox usernames above heads', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value then
     ESP.ShowNames = true 
      else
      ESP.ShowNames = false
      end
    end
})

visuals:AddToggle('Tracer', {
    Text = 'Tracers ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Draws lines from bottom of screen to players', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value then
     ESP.ShowTracers = true
      else
      ESP.ShowTracers = false
      end
    end
})

visuals:AddToggle('Health', {
    Text = 'Health ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Shows health bars', -- Information shown when you hover over the toggle

    Callback = function(Value)
      if Value then
     ESP.ShowHealth = true 
      else
      ESP.ShowHealth = false 
      end
    end
})

visuals:AddToggle('Chams', {
    Text = 'Chams ESP',
    Default = false, -- Default value (true / false)
    Tooltip = 'Shows Highlighted Players', -- Information shown when you hover over the toggle

    Callback = function(Value)
    Chams_Active = Value
        refreshAll()
    end
})
visuals:AddLabel('Chams Color Settings')

-- 2. Add the ColorPicker to the Groupbox directly
visuals:AddColorPicker('ChamsColor', {
    Default = Color3.new(0, 1, 0),
    Title = 'Chams Color',
    Transparency = 0,

    Callback = function(Value)
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local hl = player.Character:FindFirstChild("ESP_Highlight")
                if hl then
                    hl.FillColor = Value
                    -- Use the picker's transparency property directly
                    hl.FillTransparency = Options.ChamsColor.Transparency
                end
            end
        end
    end
})

-- Repeat the same logic for the ESP Color
visuals:AddLabel('ESP Color Settings')
visuals:AddColorPicker('ESPColor', {
    Default = Color3.fromRGB(0, 255, 0),
    Title = 'Choose ESP Color',
    Transparency = 0,

    Callback = function(Value)
        ESP.Color = Value 
    end
})

-- Connections for new players/respawns
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        updatePlayerESP(player)
    end)
end)
-- Global variables
getgenv().HitboxEnabled = false
getgenv().HitboxVisible = false
getgenv().HitboxSize = Vector3.new(5, 5, 5)
getgenv().TargetPart = "HumanoidRootPart"

local Players = game:GetService("Players")

-- The brains of the operation
game:GetService("RunService").RenderStepped:Connect(function()
    if not getgenv().HitboxEnabled then return end
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and player.Character then
            local targetPart = player.Character:FindFirstChild(getgenv().TargetPart)
            if targetPart and targetPart:IsA("BasePart") then
                targetPart.Size = getgenv().HitboxSize
                targetPart.CanCollide = false
                
                -- Visualizer logic
                if getgenv().HitboxVisible then
                    targetPart.Transparency = 0.5
                    targetPart.BrickColor = BrickColor.new("Really blue")
                    targetPart.Material = "Neon"
                else
                    targetPart.Transparency = 1
                end
            end
        end
    end
end)

-- UI Setup under the "Combat" group
Combat:AddToggle('HitboxToggle', {
    Text = 'Enable Hitbox',
    Default = false,
    Callback = function(Value)
        getgenv().HitboxEnabled = Value
    end
})

Combat:AddToggle('ViewToggle', {
    Text = 'View Hitbox',
    Default = false,
    Callback = function(Value)
        getgenv().HitboxVisible = Value
    end
})

Combat:AddSlider('SizeSlider', {
    Text = 'Hitbox Size',
    Default = 5,
    Min = 2,
    Max = 20,
    Rounding = 0,
    Callback = function(Value)
        getgenv().HitboxSize = Vector3.new(Value, Value, Value)
    end
})


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
