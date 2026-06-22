local kyri = loadstring(game:HttpGet("https://kyrilib.dev/kyrilib/"))()

local w = kyri.new("SWFL Script", {
    GameName = "MyGaSWFLme",
    AutoLoad = "default"
})

local playerTab = w:tab("Player", "user")
local tpTab = w:tab("Teleports", "navigation")
local playertpTab = w:tab("Player Teleports", "map-pin-plus")
local visualsTab = w:tab("Visuals", "eye")
local vehicleTab = w:tab("Vehicles", "car")

local TargetWalkSpeed = 16
local TargetJumpPower = 50
local InfiniteJumpEnabled = false
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local EventConnections = {}
local HighlightFolder = nil
visualsTab:slider("Field of View", 70, 120, 70, function(val)
    workspace.CurrentCamera.FieldOfView = val
end, "fov")

 tpTab:button("Spawn", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(-2449.22, 23.64, -271.58)
 end)

tpTab:button("Apartment Concierge", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(-2467.64, 23.14, -7743.05)
 end)

 tpTab:button("Automart", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9128.51, 23.14, -938.86)
 end)

  tpTab:button("Bubmart", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8712.13, 23.14, -577.37)
 end)

   tpTab:button("CVC Pharmacy", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9503.51, 23.14, -829.25)
 end)

    tpTab:button("Starblocks", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9519.83, 23.14, -4128.88)
 end)

 tpTab:button("Dealership", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8963.71, 25.02, 3099.98)
 end)

  tpTab:button("Dippin Donuts", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9569.47, 23.14, 717.91)
 end)

 tpTab:button("FL Fitness", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(10103.58, 23.14, 1257.14)
 end)

 tpTab:button("Fintech", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8727.02, 23.14, -2816.53)
 end)

 tpTab:button("FireFighter", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(7068.08, 22.52, 197.49)
 end)


tpTab:button("LHS Hospital", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9136.37, 23.14, -4635.51)
 end)

 
tpTab:button("Jeffs Pizza", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8536.60, 23.14, -579.31)
 end)

 tpTab:button("McBloxxers", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9566.47, 23.14, 1206.91)
 end)


 tpTab:button("Mirage", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8766.56, 23.03, 997.21)
 end)

 tpTab:button("Parademic", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9061.39, 23.14, -4759.16)
 end)

  tpTab:button("Police", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(5867.75, 23.14, 616.92)
 end)

 tpTab:button("Bank", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(6373.00, 23.77, 77.25)
 end)

  tpTab:button("Seaside Bar And Grill", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(-1801.46, 22.69, -7579.19)
 end)

  tpTab:button("Speed Kart", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(5860.51, 23.27, 3921.14)
 end)

 
  tpTab:button("Studrac", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(3337.68, 23.14, -291.89)
 end)


 tpTab:button("Sunset Performance", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(6878.23, 23.14, -90.09)
 end)

 tpTab:button("Sussys Mechanic", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(9190.56, 23.14, -1318.72)
 end)

 tpTab:button("Vorzen", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(8939.00, 23.14, -339.25)
 end)

  tpTab:button("Waterpark", function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
rootPart.CFrame = CFrame.new(4280.51, 23.02, 3682.01)
 end)

-- Persistent Loop to force values against anti-cheats
task.spawn(function()
    while task.wait() do
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                if humanoid.WalkSpeed ~= TargetWalkSpeed then
                    humanoid.WalkSpeed = TargetWalkSpeed
                end
                humanoid.UseJumpPower = true
                if humanoid.JumpPower ~= TargetJumpPower then
                    humanoid.JumpPower = TargetJumpPower
                end
            end
        end
    end
end)

-- Infinite Jump Core Physics
game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end)


playerTab:slider("WalkSpeed", 16, 500, 16, function(Value)
    TargetWalkSpeed = Value
end, "WalkSpeedFlag")

playerTab:slider("JumpPower", 50, 500, 50, function(Value)
    TargetJumpPower = Value
end, "JumpPowerFlag")

playerTab:toggle("Infinite Jump", false, function(Value)
    InfiniteJumpEnabled = Value
end, "InfJumpFlag")

-- Global storage for managing ESP states across toggles
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local ActiveESP = {}
local ESP_Loop = nil
local ESP_Connection1 = nil
local ESP_Connection2 = nil
local ESPFolder = nil

-- Helper function to safely detect custom teams/roles in roleplay games
local function getPlayerTeamInfo(player)
    local teamName = "No Team"
    local teamColor = Color3.fromRGB(255, 255, 255) -- Default White

    if player.Team then
        teamName = player.Team.Name
        teamColor = player.TeamColor.Color
        return teamName, teamColor
    end

    local customIdentifiers = {"Team", "Role", "Job", "Rank"}
    for _, name in ipairs(customIdentifiers) do
        local found = player:FindFirstChild(name) or (player.Character and player.Character:FindFirstChild(name))
        if found then
            if found:IsA("StringValue") or found:IsA("ObjectValue") then
                teamName = tostring(found.Value)
                if found:IsA("ObjectValue") and found.Value and found.Value:FindFirstChild("TeamColor") then
                    teamColor = found.Value.TeamColor.Value
                elseif player:FindFirstChild("TeamColor") then
                    teamColor = player.TeamColor.Value
                end
                return teamName, teamColor
            end
        end
        local attr = player:GetAttribute(name)
        if attr then return tostring(attr), teamColor end
    end
    return teamName, teamColor
end

local function createESP(player)
    if player == LocalPlayer then return end

    local function onCharacterAdded(character)
        local hrp = character:WaitForChild("HumanoidRootPart", 10)
        if not hrp or not ESPFolder then return end

        if ESPFolder:FindFirstChild(player.Name) then
            ESPFolder[player.Name]:Destroy()
        end

        local playerVisuals = Instance.new("Folder")
        playerVisuals.Name = player.Name
        playerVisuals.Parent = ESPFolder

        local teamName, teamColor = getPlayerTeamInfo(player)

        -- 1. THE 2D BOX FRAME
        local boxFrame = Instance.new("Frame")
        boxFrame.Name = "2DBox"
        boxFrame.BackgroundTransparency = 1
        boxFrame.Visible = false
        boxFrame.Parent = playerVisuals

        local stroke = Instance.new("UIStroke")
        stroke.Thickness = 1.5
        stroke.Color = teamColor
        stroke.Parent = boxFrame

        -- 2. THE TWO-LINE NAMETAG
        local frame = Instance.new("Frame")
        frame.Name = "ESPNametag"
        frame.Size = UDim2.new(0, 180, 0, 45)
        frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        frame.BackgroundTransparency = 0.3
        frame.Visible = false
        frame.Parent = playerVisuals

        local uiCorner = Instance.new("UICorner")
        uiCorner.CornerRadius = UDim.new(0, 8)
        uiCorner.Parent = frame

        local uiStroke = Instance.new("UIStroke")
        uiStroke.Thickness = 1.5
        uiStroke.Color = teamColor
        uiStroke.Parent = frame

        -- Line 1: Custom Team Name
        local teamLabel = Instance.new("TextLabel")
        teamLabel.Size = UDim2.new(1, 0, 0.5, 0)
        teamLabel.Position = UDim2.new(0, 0, 0, 2)
        teamLabel.BackgroundTransparency = 1
        teamLabel.Text = teamName:upper()
        teamLabel.TextColor3 = teamColor
        teamLabel.Font = Enum.Font.GothamBold
        teamLabel.TextSize = 11
        teamLabel.Parent = frame

        -- Line 2: Player Identity Display Name
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 0.5, 0)
        textLabel.Position = UDim2.new(0, 0, 0.5, -2)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = player.DisplayName
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 12
        textLabel.Parent = frame

        ActiveESP[player] = {
            Character = character,
            HRP = hrp,
            Box = boxFrame,
            Tag = frame,
            TeamTxt = teamLabel,
            Stroke = stroke,
            TagStroke = uiStroke
        }
    end

    if player.Character then
        task.spawn(onCharacterAdded, player.Character)
    end
    player.CharacterAdded:Connect(onCharacterAdded)
end

visualsTab:toggle("2D Team ESP", false, function(State)
    if State then
         -- ==================== TOGGLE ON ====================
         if ESPFolder then ESPFolder:Destroy() end -- Sanity check cleanup
         
         ESPFolder = Instance.new("ScreenGui")
         ESPFolder.Name = "Rayfield_2D_ESP"
         ESPFolder.ResetOnSpawn = false
         ESPFolder.IgnoreGuiInset = true
         ESPFolder.Parent = LocalPlayer:WaitForChild("PlayerGui")

         -- Generate tracking wrappers for all initial clients
         for _, player in ipairs(Players:GetPlayers()) do
             createESP(player)
         end

         -- Track inbound network clients
         ESP_Connection1 = Players.PlayerAdded:Connect(createESP)
         ESP_Connection2 = Players.PlayerRemoving:Connect(function(player)
             ActiveESP[player] = nil
             if ESPFolder and ESPFolder:FindFirstChild(player.Name) then
                 ESPFolder[player.Name]:Destroy()
             end
         end)

         -- Run full-scale screen projection calculation loop
         ESP_Loop = RunService.RenderStepped:Connect(function()
             for _, player in ipairs(Players:GetPlayers()) do
                 if player ~= LocalPlayer then
                     if not ActiveESP[player] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                         createESP(player)
                     end
                     
                     local data = ActiveESP[player]
                     if data and data.Character and data.Character.Parent and data.HRP and data.HRP.Parent then
                         local hrpPos, onScreen = Camera:WorldToViewportPoint(data.HRP.Position)

                         if onScreen then
                             -- Update team data in real-time
                             local currentTeam, currentColor = getPlayerTeamInfo(player)
                             if data.TeamTxt.Text ~= currentTeam:upper() then
                                 data.TeamTxt.Text = currentTeam:upper()
                                 data.TeamTxt.TextColor3 = currentColor
                                 data.Stroke.Color = currentColor
                                 data.TagStroke.Color = currentColor
                             end

                             local distance = (Camera.CFrame.Position - data.HRP.Position).Magnitude
                             local scaleFactor = (1 / distance) * 1000
                             local boxWidth = 3.5 * scaleFactor
                             local boxHeight = 5.0 * scaleFactor

                             data.Box.Size = UDim2.new(0, boxWidth, 0, boxHeight)
                             data.Box.Position = UDim2.new(0, hrpPos.X - (boxWidth / 2), 0, hrpPos.Y - (boxHeight / 2))
                             data.Box.Visible = true

                             data.Tag.Position = UDim2.new(0, hrpPos.X - 90, 0, hrpPos.Y - (boxHeight / 2) - 55)
                             data.Tag.Visible = true
                         else
                             data.Box.Visible = false
                             data.Tag.Visible = false
                         end
                     elseif data then
                         data.Box.Visible = false
                         data.Tag.Visible = false
                     end
                 end
             end
         end)
      else
         -- ==================== TOGGLE OFF ====================
         if ESP_Loop then ESP_Loop:Disconnect() ESP_Loop = nil end
         if ESP_Connection1 then ESP_Connection1:Disconnect() ESP_Connection1 = nil end
         if ESP_Connection2 then ESP_Connection2:Disconnect() ESP_Connection2 = nil end
         if ESPFolder then ESPFolder:Destroy() ESPFolder = nil end
         ActiveESP = {}
      end
end, "ESP")

playerTab:toggle("Fly GUI", false, function(Value)
 if Value then
         -- ==================== TOGGLE ON: CREATE & START FLY GUI ====================
         local main = Instance.new("ScreenGui")
         local Frame = Instance.new("Frame")
         local up = Instance.new("TextButton")
         local down = Instance.new("TextButton")
         local onof = Instance.new("TextButton")
         local TextLabel = Instance.new("TextLabel")
         local plus = Instance.new("TextButton")
         local speed = Instance.new("TextLabel")
         local mine = Instance.new("TextButton")
         local closebutton = Instance.new("TextButton")
         local mini = Instance.new("TextButton")
         local mini2 = Instance.new("TextButton")

         main.Name = "main"
         main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
         main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
         main.ResetOnSpawn = false
         
         currentMainGui = main -- Save reference to destroy later

         Frame.Parent = main
         Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
         Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
         Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
         Frame.Size = UDim2.new(0, 190, 0, 57)

         up.Name = "up"
         up.Parent = Frame
         up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
         up.Size = UDim2.new(0, 44, 0, 28)
         up.Font = Enum.Font.SourceSans
         up.Text = "UP"
         up.TextColor3 = Color3.fromRGB(0, 0, 0)
         up.TextSize = 14.000

         down.Name = "down"
         down.Parent = Frame
         down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
         down.Position = UDim2.new(0, 0, 0.491228074, 0)
         down.Size = UDim2.new(0, 44, 0, 28)
         down.Font = Enum.Font.SourceSans
         down.Text = "DOWN"
         down.TextColor3 = Color3.fromRGB(0, 0, 0)
         down.TextSize = 14.000

         onof.Name = "onof"
         onof.Parent = Frame
         onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
         onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
         onof.Size = UDim2.new(0, 56, 0, 28)
         onof.Font = Enum.Font.SourceSans
         onof.Text = "fly"
         onof.TextColor3 = Color3.fromRGB(0, 0, 0)
         onof.TextSize = 14.000

         TextLabel.Parent = Frame
         TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
         TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
         TextLabel.Size = UDim2.new(0, 100, 0, 28)
         TextLabel.Font = Enum.Font.SourceSans
         TextLabel.Text = "FLY GUI V3"
         TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
         TextLabel.TextScaled = true
         TextLabel.TextSize = 14.000
         TextLabel.TextWrapped = true

         plus.Name = "plus"
         plus.Parent = Frame
         plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
         plus.Position = UDim2.new(0.231578946, 0, 0, 0)
         plus.Size = UDim2.new(0, 45, 0, 28)
         plus.Font = Enum.Font.SourceSans
         plus.Text = "+"
         plus.TextColor3 = Color3.fromRGB(0, 0, 0)
         plus.TextScaled = true
         plus.TextSize = 14.000
         plus.TextWrapped = true

         speed.Name = "speed"
         speed.Parent = Frame
         speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
         speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
         speed.Size = UDim2.new(0, 44, 0, 28)
         speed.Font = Enum.Font.SourceSans
         speed.Text = "1"
         speed.TextColor3 = Color3.fromRGB(0, 0, 0)
         speed.TextScaled = true
         speed.TextSize = 14.000
         speed.TextWrapped = true

         mine.Name = "mine"
         mine.Parent = Frame
         mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
         mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
         mine.Size = UDim2.new(0, 45, 0, 29)
         mine.Font = Enum.Font.SourceSans
         mine.Text = "-"
         mine.TextColor3 = Color3.fromRGB(0, 0, 0)
         mine.TextScaled = true
         mine.TextSize = 14.000
         mine.TextWrapped = true

         closebutton.Name = "Close"
         closebutton.Parent = Frame
         closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
         closebutton.Font = "SourceSans"
         closebutton.Size = UDim2.new(0, 45, 0, 28)
         closebutton.Text = "X"
         closebutton.TextSize = 30
         closebutton.Position =  UDim2.new(0, 0, -1, 27)

         mini.Name = "minimize"
         mini.Parent = Frame
         mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
         mini.Font = "SourceSans"
         mini.Size = UDim2.new(0, 45, 0, 28)
         mini.Text = "-"
         mini.TextSize = 40
         mini.Position = UDim2.new(0, 44, -1, 27)

         mini2.Name = "minimize2"
         mini2.Parent = Frame
         mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
         mini2.Font = "SourceSans"
         mini2.Size = UDim2.new(0, 45, 0, 28)
         mini2.Text = "+"
         mini2.TextSize = 40
         mini2.Position = UDim2.new(0, 44, -1, 57)
         mini2.Visible = false

         _G.speeds = 1
         _G.nowe = false
         _G.tpwalking = false

         local speaker = game:GetService("Players").LocalPlayer

         game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "FLY GUI V3";
            Text = "BY SXRFWR"; -- Updated Credits Here
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
         })

         Frame.Active = true
         Frame.Draggable = true

         onof.MouseButton1Down:connect(function()
            if _G.nowe == true then
               _G.nowe = false

               if speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") then
                  local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
                  for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
                     hum:SetStateEnabled(state, true)
                  end
                  hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
               end
            else 
               _G.nowe = true

               for i = 1, _G.speeds do
                  task.spawn(function()
                     local hb = game:GetService("RunService").Heartbeat	
                     _G.tpwalking = true
                     while _G.tpwalking and hb:Wait() and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") do
                        local hum = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                        if hum.MoveDirection.Magnitude > 0 then
                           speaker.Character:TranslateBy(hum.MoveDirection)
                        end
                     end
                  end)
               end

               if speaker.Character and speaker.Character:FindFirstChild("Animate") then
                  speaker.Character.Animate.Disabled = true
               end
               
               local Char = speaker.Character
               local Hum = Char and (Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController"))

               if Hum then
                  for i,v in next, Hum:GetPlayingAnimationTracks() do
                     v:AdjustSpeed(0)
                  end
                  for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
                     Hum:SetStateEnabled(state, false)
                  end
                  Hum:ChangeState(Enum.HumanoidStateType.Swimming)
               end
            end

            local plr = game.Players.LocalPlayer
            if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
               local torso = plr.Character:FindFirstChild("Torso")
               if not torso then return end
               local ctrl = {f = 0, b = 0, l = 0, r = 0}
               local lastctrl = {f = 0, b = 0, l = 0, r = 0}
               local maxspeed = 50
               local speed = 0

               local bg = Instance.new("BodyGyro", torso)
               bg.P = 9e4
               bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
               bg.cframe = torso.CFrame
               local bv = Instance.new("BodyVelocity", torso)
               bv.velocity = Vector3.new(0,0.1,0)
               bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
               if _G.nowe == true then
                  plr.Character.Humanoid.PlatformStand = true
               end
               while _G.nowe == true or (plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health == 0) do
                  game:GetService("RunService").RenderStepped:Wait()

                  if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                     speed = speed+.5+(speed/maxspeed)
                     if speed > maxspeed then speed = maxspeed end
                  elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                     speed = speed-1
                     if speed < 0 then speed = 0 end
                  end
                  if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                     bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
                     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                  elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                     bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
                  else
                     bv.velocity = Vector3.new(0,0,0)
                  end
                  bg.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
               end
               ctrl = {f = 0, b = 0, l = 0, r = 0}
               lastctrl = {f = 0, b = 0, l = 0, r = 0}
               speed = 0
               bg:Destroy()
               bv:Destroy()
               if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
                  plr.Character.Humanoid.PlatformStand = false
               end
               if plr.Character and plr.Character:FindFirstChild("Animate") then
                  plr.Character.Animate.Disabled = false
               end
               _G.tpwalking = false
            else
               local plr = game.Players.LocalPlayer
               local UpperTorso = plr.Character and plr.Character:FindFirstChild("UpperTorso")
               if not UpperTorso then return end
               local ctrl = {f = 0, b = 0, l = 0, r = 0}
               local lastctrl = {f = 0, b = 0, l = 0, r = 0}
               local maxspeed = 50
               local speed = 0

               local bg = Instance.new("BodyGyro", UpperTorso)
               bg.P = 9e4
               bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
               bg.cframe = UpperTorso.CFrame
               local bv = Instance.new("BodyVelocity", UpperTorso)
               bv.velocity = Vector3.new(0,0.1,0)
               bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
               if _G.nowe == true then
                  plr.Character.Humanoid.PlatformStand = true
               end
               while _G.nowe == true or (plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health == 0) do
                  task.wait()

                  if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                     speed = speed+.5+(speed/maxspeed)
                     if speed > maxspeed then speed = maxspeed end
                  elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                     speed = speed-1
                     if speed < 0 then speed = 0 end
                  end
                  if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                     bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
                     lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                  elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                     bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
                  else
                     bv.velocity = Vector3.new(0,0,0)
                  end

                  bg.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
               end
               ctrl = {f = 0, b = 0, l = 0, r = 0}
               lastctrl = {f = 0, b = 0, l = 0, r = 0}
               speed = 0
               bg:Destroy()
               bv:Destroy()
               if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
                  plr.Character.Humanoid.PlatformStand = false
               end
               if plr.Character and plr.Character:FindFirstChild("Animate") then
                  plr.Character.Animate.Disabled = false
               end
               _G.tpwalking = false
            end
         end)

         local tis
         up.MouseButton1Down:connect(function()
            tis = up.MouseEnter:connect(function()
               while tis do
                  task.wait()
                  if speaker.Character and speaker.Character:FindFirstChild("HumanoidRootPart") then
                     speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
                  end
               end
            end)
         end)

         up.MouseLeave:connect(function()
            if tis then tis:Disconnect() tis = nil end
         end)

         local dis
         down.MouseButton1Down:connect(function()
            dis = down.MouseEnter:connect(function()
               while dis do
                  task.wait()
                  if speaker.Character and speaker.Character:FindFirstChild("HumanoidRootPart") then
                     speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
                  end
               end
            end)
         end)

         down.MouseLeave:connect(function()
            if dis then dis:Disconnect() dis = nil end
         end)

         plus.MouseButton1Down:connect(function()
            _G.speeds = _G.speeds + 1
            speed.Text = _G.speeds
            if _G.nowe == true then
               _G.tpwalking = false
               for i = 1, _G.speeds do
                  task.spawn(function()
                     local hb = game:GetService("RunService").Heartbeat	
                     _G.tpwalking = true
                     while _G.tpwalking and hb:Wait() and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") do
                        local hum = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                        if hum.MoveDirection.Magnitude > 0 then
                           speaker.Character:TranslateBy(hum.MoveDirection)
                        end
                     end
                  end)
               end
            end
         end)

         mine.MouseButton1Down:connect(function()
            if _G.speeds == 1 then
               speed.Text = 'cannot be less than 1'
               task.wait(1)
               speed.Text = _G.speeds
            else
               _G.speeds = _G.speeds - 1
               speed.Text = _G.speeds
               if _G.nowe == true then
                  _G.tpwalking = false
                  for i = 1, _G.speeds do
                     task.spawn(function()
                        local hb = game:GetService("RunService").Heartbeat	
                        _G.tpwalking = true
                        while _G.tpwalking and hb:Wait() and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") do
                           local hum = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                           if hum.MoveDirection.Magnitude > 0 then
                              speaker.Character:TranslateBy(hum.MoveDirection)
                           end
                        end
                     end)
                  end
               end
            end
         end)

         closebutton.MouseButton1Click:Connect(function()
            main:Destroy()
         end)

         mini.MouseButton1Click:Connect(function()
            up.Visible = false; down.Visible = false; onof.Visible = false
            plus.Visible = false; speed.Visible = false; mine.Visible = false; mini.Visible = false
            mini2.Visible = true
            Frame.BackgroundTransparency = 1
            closebutton.Position =  UDim2.new(0, 0, -1, 57)
         end)

         mini2.MouseButton1Click:Connect(function()
            up.Visible = true; down.Visible = true; onof.Visible = true
            plus.Visible = true; speed.Visible = true; mine.Visible = true; mini.Visible = true
            mini2.Visible = false
            Frame.BackgroundTransparency = 0 
            closebutton.Position =  UDim2.new(0, 0, -1, 27)
         end)

      else
         -- ==================== TOGGLE OFF: CLEANUP & UNFLY ====================
         _G.nowe = false
         _G.tpwalking = false
         
         local speaker = game:GetService("Players").LocalPlayer
         if speaker.Character then
            local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
            if hum then
               -- Re-enable states
               for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
                  hum:SetStateEnabled(state, true)
               end
               hum.PlatformStand = false
               hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            end
            if speaker.Character:FindFirstChild("Animate") then
               speaker.Character.Animate.Disabled = false
            end
         end

         -- Delete the GUI completely
         if currentMainGui then
            currentMainGui:Destroy()
            currentMainGui = nil
         end
      end
end, "thing")

playerTab:toggle("Noclip Through Walls", false, function(Value)
    if Value then
        local player = game.Players.LocalPlayer
        noclipConnection = RunService.Stepped:Connect(function()
            if player.Character then
                for _, part in ipairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        if noclipConnection then
            noclipConnection:Disconnect()
            noclipConnection = nil
        end
        local player = game.Players.LocalPlayer
        if player.Character then
            for _, part in ipairs(player.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end
end, "NoclipMasterToggle")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local velocityEnabled = true
local flightEnabled = false
local flightSpeed = 1
local velocityMult = 0.025
local velocityMult2 = 0.150
local velocityEnabledKeyCode = Enum.KeyCode.W
local qbEnabledKeyCode = Enum.KeyCode.S
local stopKeyCode = Enum.KeyCode.P

-- Vehicle Locating Logic
local function GetVehicleFromDescendant(Descendant)
    return Descendant:FindFirstAncestor(LocalPlayer.Name .. "'s Car") 
        or (Descendant:FindFirstAncestor("Body") and Descendant:FindFirstAncestor("Body").Parent) 
        or Descendant:FindFirstAncestorWhichIsA("Model")
end

-- Function to adjust car suspension properties
local function TuneSuspension(property, value)
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
    local SeatPart = Humanoid and Humanoid.SeatPart
    
    if SeatPart and SeatPart:IsA("VehicleSeat") then
        local Vehicle = GetVehicleFromDescendant(SeatPart)
        if Vehicle then
            -- Loop through every item in the car to find the springs
            for _, object in pairs(Vehicle:GetDescendants()) do
                if object:IsA("SpringConstraint") then
                    object[property] = value
                end
            end
        end
    end
end

-- Function to adjust wheel offset (Track Width / Spacers)
local function TuneWheelOffset(value)
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
    local SeatPart = Humanoid and Humanoid.SeatPart
    
    if SeatPart and SeatPart:IsA("VehicleSeat") then
        local Vehicle = GetVehicleFromDescendant(SeatPart)
        if Vehicle then
            for _, object in pairs(Vehicle:GetDescendants()) do
                -- Many chassis use CylindricalConstraints for the wheels
                if object:IsA("CylindricalConstraint") then
                    -- Adjusting the attachment offset shifts the wheel outward
                    if object.Attachment0 then
                        object.Attachment0.Position = Vector3.new(value, object.Attachment0.Position.Y, object.Attachment0.Position.Z)
                    end
                end
            end
        end
    end
end

-- Function to adjust Camber Angle (Tilting the wheels)
local function TuneCamber(angleDegrees)
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
    local SeatPart = Humanoid and Humanoid.SeatPart
    
    if SeatPart and SeatPart:IsA("VehicleSeat") then
        local Vehicle = GetVehicleFromDescendant(SeatPart)
        if Vehicle then
            for _, object in pairs(Vehicle:GetDescendants()) do
                if object:IsA("Attachment") and (object.Name:find("Wheel") or object.Name:find("Hub")) then
                    -- Reset and apply a fresh rotation angle to the attachment
                    local currentPos = object.Position
                    object.CFrame = CFrame.new(currentPos) * CFrame.Angles(0, 0, math.rad(angleDegrees))
                end
            end
        end
    end
end
-- Flight System Core
RunService.Stepped:Connect(function()
    local Character = LocalPlayer.Character
    if flightEnabled and Character then
        local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
        local SeatPart = Humanoid and Humanoid.SeatPart
        if SeatPart and SeatPart:IsA("VehicleSeat") then
            local Vehicle = GetVehicleFromDescendant(SeatPart)
            if Vehicle and Vehicle:IsA("Model") then
                Character.Parent = Vehicle
                local PrimaryPart = Vehicle.PrimaryPart or SeatPart
                Vehicle.PrimaryPart = PrimaryPart
                
                local cf = PrimaryPart.CFrame
                local move = Vector3.new(
                    (UserInputService:IsKeyDown(Enum.KeyCode.D) and flightSpeed or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.A) and flightSpeed or 0),
                    (UserInputService:IsKeyDown(Enum.KeyCode.E) and flightSpeed/2 or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.Q) and flightSpeed/2 or 0),
                    (UserInputService:IsKeyDown(Enum.KeyCode.S) and flightSpeed or 0) - (UserInputService:IsKeyDown(Enum.KeyCode.W) and flightSpeed or 0)
                )
                Vehicle:SetPrimaryPartCFrame(CFrame.new(cf.Position, cf.Position + workspace.CurrentCamera.CFrame.LookVector) * CFrame.new(move))
                SeatPart.AssemblyLinearVelocity = Vector3.zero
                SeatPart.AssemblyAngularVelocity = Vector3.zero
            end
        end
    end
end)

-- Unified Loops for Accel & Brake Keybinds
task.spawn(function()
    while task.wait() do
        if velocityEnabled and UserInputService:IsKeyDown(velocityEnabledKeyCode) and not UserInputService:GetFocusedTextBox() then
            local Character = LocalPlayer.Character
            local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
            local SeatPart = Humanoid and Humanoid.SeatPart
            if SeatPart and SeatPart:IsA("VehicleSeat") then
                SeatPart.AssemblyLinearVelocity *= Vector3.new(1 + velocityMult, 1, 1 + velocityMult)
            end
        end
    end
end)
RunService.RenderStepped:Connect(function(dt)
    if not velocityEnabled or UserInputService:GetFocusedTextBox() then return end
    
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
    local SeatPart = Humanoid and Humanoid.SeatPart
    
    if SeatPart and SeatPart:IsA("VehicleSeat") then
        -- We work with the magnitude of the velocity to apply consistent braking
        local currentVel = SeatPart.AssemblyLinearVelocity
        local speed = currentVel.Magnitude
        
        -- Acceleration
        if UserInputService:IsKeyDown(velocityEnabledKeyCode) then
            -- Multiply by 'dt' to make acceleration smooth and frame-rate independent
            local accel = currentVel.Unit * (velocityMult * 5000 * dt)
            SeatPart.AssemblyLinearVelocity += accel
        end
        
        -- Deceleration (Brake)
        if UserInputService:IsKeyDown(qbEnabledKeyCode) then
            if speed > 0.1 then -- Only apply brake if the car is actually moving
                -- Subtracting a constant force per second creates a smooth stop
                local brakeForce = currentVel.Unit * (velocityMult2 * 5000 * dt)
                
                -- Ensure we don't go into reverse by braking too hard
                if brakeForce.Magnitude > currentVel.Magnitude then
                    SeatPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                else
                    SeatPart.AssemblyLinearVelocity -= brakeForce
                end
            end
        end
    end
end)

-- Hard Stop Keybind Listener
UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and velocityEnabled and input.KeyCode == stopKeyCode then
        local Character = LocalPlayer.Character
        local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
        local SeatPart = Humanoid and Humanoid.SeatPart
        if SeatPart and SeatPart:IsA("VehicleSeat") then
            SeatPart.AssemblyLinearVelocity = Vector3.zero
            SeatPart.AssemblyAngularVelocity = Vector3.zero
        end
    end
end)
---------------------------------------------------------------------
-- VEHICLES TAB (Standard Format)
---------------------------------------------------------------------

vehicleTab:toggle("Keybinds Active", true, function(v) velocityEnabled = v end, "velEn")
vehicleTab:toggle("Flight Enabled", false, function(v) flightEnabled = v end, "fltEn")

vehicleTab:slider("Flight Speed", 0, 800, 100, function(v) flightSpeed = v/100 end, "fltSpd")
vehicleTab:slider("Accel Mult (Thousandths)", 0, 50, 25, function(v) velocityMult = v/1000 end, "velMult")
vehicleTab:keybind("Accel Key", "W", function(k) velocityEnabledKeyCode = Enum.KeyCode[k] end, "velKey")

vehicleTab:slider("Brake Force", 0, 300, 150, function(v) velocityMult2 = v/1000 end, "velMult2")
vehicleTab:keybind("Brake Key", "S", function(k) qbEnabledKeyCode = Enum.KeyCode[k] end, "qbKey")
vehicleTab:keybind("Stop Key", "P", function(k) stopKeyCode = Enum.KeyCode[k] end, "stopKey")

vehicleTab:slider("Car Height (Stance)", 1, 5, 2.5, function(Value)
    TuneSuspension("FreeLength", Value)
end, "CarHeightFlag")

vehicleTab:slider("Suspension Stiffness", 1000, 500000, 15000, function(Value)
    TuneSuspension("Stiffness", Value)
end, "SuspensionStiffFlag")




-- 1. Teleport to Player
local function GetPlayerList()
    local names = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

-- We pass the result of GetPlayerList() (which is a table) to the dropdown
playertpTab:dropdown("Teleport to Player", GetPlayerList(), "None", function(val)
    local targetPlayer = game.Players:FindFirstChild(val)
    if targetPlayer and targetPlayer.Character then
        game.Players.LocalPlayer.Character:PivotTo(targetPlayer.Character:GetPivot())
    end
end, "PlayerTPDropdown")

-- 2. Spectate Player
local function GetSpectateList()
    local names = {"LocalPlayer"} -- Start with local
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(names, player.Name)
    end
    return names
end

playerTab:dropdown("Spectate Player Camera", GetSpectateList(), "LocalPlayer", function(val)
    local camera = workspace.CurrentCamera
    if val == "LocalPlayer" then
        camera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    else
        local targetPlayer = game.Players:FindFirstChild(val)
        if targetPlayer and targetPlayer.Character then
            camera.CameraSubject = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
        end
    end
end, "SpectateDropdownFlag")
