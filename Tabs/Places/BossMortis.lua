elseif game.PlaceId == 80420091630966 then
_G.GetOldBright = {
	["Old"] = {
		Brightness = game.Lighting.Brightness,
		ClockTime = game.Lighting.ClockTime,
		FogEnd = game.Lighting.FogEnd,
		FogStart = game.Lighting.FogStart,
		GlobalShadows = game.Lighting.GlobalShadows,
		OutdoorAmbient = game.Lighting.OutdoorAmbient
	},
	["New"] = {
		Brightness = 2,
		ClockTime = 14,
		FogEnd = 200000,
		FogStart = 100000,
		GlobalShadows = false,
		OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	}
}

for i, v in pairs(_G.GetOldBright.New) do
game.Lighting:GetPropertyChangedSignal(i):Connect(function()
	if _G.FullBright then
		game.Lighting[i] = v
	end
end)
end

Window:ChangeTitle("Boss Mortis ⚔️")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	Tab1 = Window:AddTab("Boss", "rbxassetid://10734975486"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Round 1")

Misc1Group:AddToggle("Auto Slap Mortis", {
    Text = "Auto Slap Snoob",
    Default = false, 
    Callback = function(Value) 
_G.AutoSlapMortis = Value
while _G.AutoSlapMortis do
if workspace:FindFirstChild("TheOutside") then
for i, v in pairs(workspace.TheOutside:GetChildren()) do
if v.Name == "evilSnoob" and v:FindFirstChild("hittable") then
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern") and game:GetService("Players").LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character:WaitForChild("Lantern"):WaitForChild("Network"):FireServer("Hit", v.hittable)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
end
end
end
end
task.wait()
end
    end
})

Misc1Group:AddButton("Get Key", function()
for i, v in pairs(game.Workspace:GetChildren()) do
if v:IsA("Tool") and v.Name:find("Key") and v:FindFirstChild("Handle") and v:FindFirstChild("KeyClient") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
until not v:IsDescendantOf(workspace)
end
end
wait(0.1)
if workspace:FindFirstChild("GateMechanism"):FindFirstChild("Touchpad") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.GateMechanism.Touchpad.CFrame
end
end)

Misc1Group:AddButton("Teleport Portal", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("TheOutside"):FindFirstChild("TowerENT1") and workspace.TheOutside.TowerENT1:FindFirstChild("teleport") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TheOutside.TowerENT1.teleport.CFrame
end
end
end)

local Misc2Group = Tabs.Tab:AddRightGroupbox("Round 2")

Misc2Group:AddButton("Fix Elevator", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChild("Screwdriver") == nil or game.Players.LocalPlayer.Backpack:FindFirstChild("Screwdriver") == nil then
repeat task.wait()
if workspace:FindFirstChild("Screwdriver") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Screwdriver.CFrame
end
until not workspace:FindFirstChild("Screwdriver")
end
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Clickable.boltClick.CFrame
Notification("You have click, to fix", 5)
end
end)

Misc2Group:AddButton("Teleport Eli Vator", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("DialoguePrompts"):FindFirstChild("Eli Vator") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.DialoguePrompts["Eli Vator"].Camera.CFrame
wait(0.4)
fireproximityprompt(workspace.DialoguePrompts["Eli Vator"]:FindFirstChild("ProximityPrompt"))
end
end
end)

local Misc3Group = Tabs.Tab:AddRightGroupbox("Round 3")

Misc3Group:AddButton("Teleport Hammer Big", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("TheOffice"):FindFirstChild("HallwaySection3"):FindFirstChild("LargeHammerBox1"):FindFirstChild("Large Hammer") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TheOffice.HallwaySection3.LargeHammerBox1["Large Hammer"].CFrame
wait(0.4)
fireproximityprompt(workspace.TheOffice.HallwaySection3.LargeHammerBox1["Large Hammer"]:FindFirstChild("ProximityPrompt"))
end
end
end)

Misc3Group:AddButton("Teleport Hook", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("TheOffice"):FindFirstChild("HallwaySection3") then
for i, v in pairs(workspace.TheOffice.HallwaySection3:GetChildren()) do
if v.Name == "GlassShowcase1" and v:FindFirstChild("Hook") then
for _, z in pairs(v:GetChildren()) do
if z.Name == "Hook" and z:FindFirstChild("ProximityPrompt") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = z.CFrame
wait(0.4)
fireproximityprompt(z:FindFirstChild("ProximityPrompt"))
end
end
end
end
end
end
end)

Misc3Group:AddButton("Teleport Glasses", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("TheOffice"):FindFirstChild("toIndoor") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TheOffice.toIndoor.CFrame
end
end
end)

Misc3Group:AddButton("Grappler", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("TheOffice"):FindFirstChild("Scaffold"):FindFirstChild("Grappler"):FindFirstChild("GrapplingParts") then
for i, v in pairs(workspace:FindFirstChild("TheOffice"):FindFirstChild("Scaffold"):FindFirstChild("Grappler"):FindFirstChild("GrapplingParts"):GetChildren()) do
if v:IsA("BasePart") then
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TheOffice"):WaitForChild("GrapplerHook"):WaitForChild("onActivated"):FireServer(v)
end
end
end
end
end)

local Boss1Group = Tabs.Tab1:AddLeftGroupbox("Boss Dice")

Boss1Group:AddToggle("Tied", {
    Text = "Anti Glare Wire",
    Default = false, 
    Callback = function(Value) 
_G.AntiGlare = Value
while _G.AntiGlare do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("WeldConstraint") then
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ProcessJump"):FireServer()
end
task.wait()
end
	end
})

Boss1Group:AddToggle("Tied", {
    Text = "Anti Touch Head",
    Default = false, 
    Callback = function(Value) 
_G.AntiHead = Value
while _G.AntiHead do
if workspace:FindFirstChild("bossStorage") and workspace.bossStorage:FindFirstChild("head") then
workspace.bossStorage.head.CanTouch = false
end
task.wait()
end
if workspace:FindFirstChild("bossStorage") and workspace.bossStorage:FindFirstChild("head") then
workspace.bossStorage.head.CanTouch = true
end
	end
})

Boss1Group:AddToggle("Handleft", {
    Text = "Auto Slap Left Hand",
    Default = false, 
    Callback = function(Value) 
_G.AutoSlap = Value
spawn(function()
while _G.AutoSlap do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern") then
if workspace:FindFirstChild("bossStorage") and workspace.bossStorage:FindFirstChild("leftHand") and workspace.bossStorage.leftHand:FindFirstChild("PointerMimic") and workspace.bossStorage.leftHand.PointerMimic:FindFirstChild("TouchInterest") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.bossStorage.leftHand.PointerMimic.CFrame * CFrame.new(0, 0, 6.8)
end
end
end
task.wait()
end
end)
if NotificationUnSh then return end
NotificationUnSh = true
Notification("You have turn off Shiftlock and but you have to stand still for it to work but you have to dodge the attack hand", 10)
	end
})

CloneHead = false
Boss1Group:AddToggle("Nail", {
    Text = "Auto Slap Nail",
    Default = false, 
    Callback = function(Value) 
_G.NailSlap = Value
while _G.NailSlap do
_G.TeleportSafe = false
if workspace:FindFirstChild("bossStorage") and workspace.bossStorage:FindFirstChild("head") then
workspace.bossStorage.head.CanTouch = false
end
if workspace:FindFirstChild("BossfightCore") and workspace.BossfightCore:FindFirstChild("BossTargetArea") then
AreaBoss = workspace.BossfightCore.BossTargetArea
end
if workspace:FindFirstChild("bossStorage") then
for i, v in pairs(workspace:WaitForChild("bossStorage"):GetChildren()) do
if (v.Name:find("thicc") or v.Name == "nail") and v:FindFirstChild("object") then
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern") and v:FindFirstChild("AnimationController") and v.AnimationController:FindFirstChild("Animator") and #v.AnimationController.Animator:GetPlayingAnimationTracks() == 0 then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v:FindFirstChild("object").CFrame * CFrame.new(0, -10, 0)
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
end
else
_G.TeleportSafe = true
end
end
end
end
if _G.TeleportSafe and AreaBoss then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = AreaBoss.CFrame * CFrame.new(0, 100, 0)
end
if _G.StartFly == false then
CreateFreezeBV()
end
elseif not _G.TeleportSafe then
CreateFreezeBV({Remove = true})
end
task.wait()
end
if workspace:FindFirstChild("bossStorage") and workspace.bossStorage:FindFirstChild("head") then
workspace.bossStorage.head.CanTouch = _G.AntiHead or false
end
CreateFreezeBV({Remove = true})
	end
})

Boss1Group:AddButton("PickUp C4", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
oldCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i, v in pairs(workspace:GetChildren()) do
if v.Name == "C4" then
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame
wait(0.4)
if fireproximityprompt then
fireproximityprompt(v:FindFirstChildOfClass("ProximityPrompt"))
end
v.Destroying:Wait()
end
end
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCF
end
end)

Boss1Group:AddButton("Install C4", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
oldCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i, v in pairs(workspace.ExplosiveGhosts:GetChildren()) do
if v:IsA("BasePart") and v:FindFirstChild("SurfaceAppearance") == nil then
if game.Players.LocalPlayer.Backpack:FindFirstChild("C4") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("C4"))
end
wait(0.3)
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame
wait(0.4)
fireproximityprompt(v:FindFirstChildOfClass("ProximityPrompt"))
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCF
wait(0.5)
end
end
end
end)

Boss1Group:AddButton("Pickup Bomb", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("BombGlove") and workspace.BombGlove:FindFirstChild("Glove") then
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.BombGlove.Glove.CFrame
wait(0.4)
fireproximityprompt(workspace.BombGlove.Glove:FindFirstChildOfClass("ProximityPrompt"))
end
end
end)

local Misc4Group = Tabs.Tab1:AddRightGroupbox("Misc")

Misc4Group:AddToggle("No Cooldown Proximity", {
    Text = "No Cooldown Proximity",
    Default = false, 
    Callback = function(Value) 
_G.NoCooldownProximity = Value
if _G.NoCooldownProximity == true then
for i, v in pairs(workspace:GetDescendants()) do
if v.ClassName == "ProximityPrompt" then
v.HoldDuration = 0
end
end
else
if CooldownProximity then
CooldownProximity:Disconnect()
CooldownProximity = nil
end
end
CooldownProximity = workspace.DescendantAdded:Connect(function(Cooldown)
if _G.NoCooldownProximity == true then
if Cooldown:IsA("ProximityPrompt") then
Cooldown.HoldDuration = 0
end
end
end)
    end
})

Misc4Group:AddInput("FlySpeed", {
    Default = "50",
    Numeric = true,
    Text = "Fly Speed",
    Placeholder = "UserFlySpeed",
    Callback = function(Value)  
        _G.SetSpeedFly = Value  
    end  
})

_G.SetSpeedFly = 50
Misc4Group:AddToggle("Start Fly", {
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

Misc4Group:AddToggle("Full Bright", {
    Text = "Full Bright",
    Default = false, 
    Callback = function(Value) 
_G.FullBright = Value
if not _G.FullBright then
for i, v in pairs(_G.GetOldBright.Old) do
game:GetService("Lighting")[i] = v
end
else
for i, v in pairs(_G.GetOldBright.New) do
game:GetService("Lighting")[i] = v
end
end
    end
})

Misc4Group:AddToggle("No Fog", {
    Text = "No Fog",
    Default = false, 
    Callback = function(Value) 
_G.Nofog = Value
while _G.Nofog do
for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
if v.ClassName == "Atmosphere" then
v.Density = 0
v.Haze = 0
end
end
task.wait()
end
for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
if v.ClassName == "Atmosphere" then
v.Density = 0.3
v.Haze = 1
end
end
    end
})
