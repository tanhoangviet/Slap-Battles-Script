elseif game.PlaceId == 18550498098 then
Window:ChangeTitle("Boss Guide ⚔️")
if game.Workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(538, 55, -231)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 11, 2048)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false

local Safe = Instance.new("Part", VoidPart)
Safe.Position = Vector3.new(595, 120, -330)
Safe.Name = "Safe"
Safe.Size = Vector3.new(2000, 10, 2000)
Safe.Anchored = true
Safe.Transparency = 0.5 
Safe.CanCollide = true
end

Tabs = {
	Tab = Window:AddTab("Misc", SolarIcon.Misc),
    Tab1 = Window:AddTab("Anti", SolarIcon.Anti),
    Tab2 = Window:AddTab("Local", SolarIcon.Local),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Prepare")

Misc1Group:AddButton("Start Enter + 1 HP", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -68, 823)
wait(2.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["the cube of life"].Part.CFrame
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace["Big Heart"].CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.ShackLever.Base.CFrame
wait(0.5)
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
		fireclickdetector(v.ClickDetector, 0)
		fireclickdetector(v.ClickDetector, 1)
	end
end
end):AddButton("Start Enter", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3258, -68, 823)
wait(2)
for i,v in pairs(game.Workspace:GetDescendants()) do
	if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
		fireclickdetector(v.ClickDetector, 0)
		fireclickdetector(v.ClickDetector, 1)
	end
end
end)

Misc1Group:AddButton("Teleport Safe", function()
if game.Workspace.VoidPart:FindFirstChild("Safe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.VoidPart.Safe.CFrame * CFrame.new(0,25,0)
end
end):AddButton("Guide", function()
if game.Workspace.VoidPart:FindFirstChild("Safe") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.VoidPart.Safe.CFrame * CFrame.new(0,-40,0)
end
end)

Misc1Group:AddButton("Lever Lobby", function()
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "Gate1Lever" and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
end)

Misc1Group:AddInput("FlySpeed", {
    Default = "50",
    Numeric = true,
    Text = "Fly Speed",
    Placeholder = "UserFlySpeed",
    Callback = function(Value)  
        _G.SetSpeedFly = Value  
    end  
})

_G.SetSpeedFly = 50
Misc1Group:AddToggle("Start Fly", {
    Text = "Start Fly",
    Default = false, 
    Callback = function(Value) 
Fly(Value)
	end
}):AddKeyPicker("Fly", {
   Default = "R",
   Text = "Fly",
   Mode = "Toggle",
   SyncToggleState = true
})

local Misc2Group = Tabs.Tab:AddRightGroupbox("Combat")

function slapglove(object)
	local player = game.Players.LocalPlayer
	if not player then return end
	local char = player.Character
	local backpack = player.Backpack
	if not char then return end
	local part = object
	if not part then return end
	if backpack:FindFirstChild("Lantern") then
		backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
	end
	if char:FindFirstChild("Lantern") and char.Lantern:FindFirstChild("Network") then
		char.Lantern:Activate()
		char.Lantern.Network:FireServer("Hit", part)
	end
end

Misc2Group:AddToggle("Fight Trask", {
    Text = "Auto Slap Trask",
    Default = false, 
    Callback = function(Value) 
_G.BringTrask = Value
while _G.BringTrask do
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name:lower() == "trackglovemissile" then
		slapglove(v)
	end
end
task.wait()
end
    end
}):AddKeyPicker("FightTrask", {
   Default = "V",
   Text = "Fight Trask",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc2Group:AddToggle("Fight Boss Final", {
    Text = "Slap  Boss Final",
    Default = false, 
    Callback = function(Value) 
_G.FightBossFinal = Value
while _G.FightBossFinal do
if game.Workspace:FindFirstChild("GuideNPC") and game.Workspace.GuideNPC:FindFirstChild("HumanoidRootPart") then
	slapglove(game.Workspace.GuideNPC.HumanoidRootPart)
end
task.wait()
end
    end
}):AddKeyPicker("FightBossFinal", {
   Default = "V",
   Text = "Fight Boss Final",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc2Group:AddToggle("Fight Replica", {
    Text = "Fight Replica",
    Default = false, 
    Callback = function(Value) 
_G.FightReplica = Value
while _G.FightReplica do
for i,v in pairs(game.workspace:GetChildren()) do
	if v.Name:lower() == "replicanpc" and v:FindFirstChild("HumanoidRootPart") then
		slapglove(v.HumanoidRootPart)
	end
end
task.wait()
end
    end
}):AddKeyPicker("FightReplica", {
   Default = "V",
   Text = "Fight Replica",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc2Group:AddToggle("Fight Golem", {
    Text = "Fight Golem",
    Default = false, 
    Callback = function(Value) 
_G.FightGolem = Value
while _G.FightGolem do
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name:lower() == "golem" or v.Name:lower() == "dungeongolem" then
		slapglove(v:FindFirstChild("Hitbox") or v:FindFirstChild("Cube.001"))
	end
end
task.wait()
end
    end
}):AddKeyPicker("FightGolem", {
   Default = "V",
   Text = "Fight Golem",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc2Group:AddToggle("Fight All", {
    Text = "Fight All",
    Default = false, 
    Callback = function(Value) 
_G.FightAll = Value
while _G.FightAll do
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name:lower() == "trackglovemissile" or v.Name:lower() == "golem" or v.Name:lower() == "dungeongolem" or v.Name:lower() == "replicanpc" or v.Name:lower() == "guidenpc" then
		slapglove(v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Hitbox") or v:FindFirstChild("Cube.001") or v)
	end
end
task.wait()
end
    end
}):AddKeyPicker("FightAll", {
   Default = "O",
   Text = "Fight All",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc2Group:AddButton("Fight Potato", function()
if game.Workspace:FindFirstChild("PotatoLord") and game.Workspace.PotatoLord:FindFirstChild("HumanoidRootPart") then
	slapglove(game.Workspace.PotatoLord.HumanoidRootPart)
end
end)

local Anti1Group = Tabs.Tab1:AddLeftGroupbox("Anti")

Anti1Group:AddToggle("Anti Void", {
    Text = "Anti Void",
    Default = false, 
    Callback = function(Value) 
game.Workspace.VoidPart.CanCollide = Value
if Value == true then
game.Workspace.VoidPart.Transparency = 0.5
else
game.Workspace.VoidPart.Transparency = 1
end
    end
})

Anti1Group:AddToggle("Anti Sbeve", {
    Text = "Anti Sbeve",
    Default = false, 
    Callback = function(Value) 
_G.AntiSbeve = Value
while _G.AntiSbeve do
for i,v in pairs(game.Workspace.Sbeves:GetChildren()) do
                    if v.Name == "sbeveai" then
                        v.CanTouch = false
                    end
                end
task.wait()
end
    end
})

Anti1Group:AddToggle("Anti Wall", {
    Text = "Anti Wall",
    Default = false, 
    Callback = function(Value) 
_G.AntiWall = Value
while _G.AntiWall do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "PusherWall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
    end
})

local Local1Group = Tabs.Tab2:AddLeftGroupbox("Speed")

Local1Group:AddSlider("WalkSpeed", {
    Text = "Speed",
    Default = 20,
    Min = 20,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
    end
})

Local1Group:AddInput("WalkSpeed1", {
    Default = "20",
    Numeric = false,
    Text = "Speed",
    Placeholder = "UserSpeed",
    Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
Walkspeed = Value
    end
})

Local1Group:AddToggle("SetSpeed", {
    Text = "Auto Set Speed",
    Default = false, 
    Callback = function(Value) 
KeepWalkspeed = Value
            while KeepWalkspeed do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
                end
task.wait()
            end
    end
})

local Local2Group = Tabs.Tab2:AddRightGroupbox("Jump")

Local2Group:AddSlider("JumpPower", {
    Text = "Jump",
    Default = 50,
    Min = 50,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
    end
})

Local2Group:AddInput("JumpPower1", {
    Default = "50",
    Numeric = true,
    Text = "Jump",
    Placeholder = "UserJump",
    Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
Jumppower = Value
    end
})

Local2Group:AddToggle("SetJump", {
    Text = "Auto Set Jump",
    Default = false, 
    Callback = function(Value) 
KeepJumppower = Value
            while KeepJumppower do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.JumpPower ~= Jumppower then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jumppower
                end
task.wait()
            end
    end
})
