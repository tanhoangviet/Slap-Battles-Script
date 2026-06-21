elseif game.PlaceId == 13833961666 then
Window:ChangeTitle("Boss Bob 💥")
if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Name = "VoidPart"
VoidPart.Position = Vector3.new(-36, -3, 16)
VoidPart.Size = Vector3.new(2000, 1, 2000)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

Tabs = {
	Tab = Window:AddTab("Script", "rbxassetid://8997387937"),
    Tab1 = Window:AddTab("Misc", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Script1Group = Tabs.Tab:AddRightGroupbox("Script")

Script1Group:AddButton("Fly V3", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))()
end)

Script1Group:AddButton("Anti Lag", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Anti-lag.lua"))()
end)

Script1Group:AddButton("Inf Yield", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Script1Group:AddButton("Executor | Ui Library", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/SCRIPT/Executor.lua"))()
end)

Script1Group:AddButton("RemoteSpy", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/RemoteSpy-V2.lua", true))()
end)

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Info")

CanYouFps = Misc1Group:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]", true)
CanYouPing = Misc1Group:AddLabel("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]", true)
TimeServer = Misc1Group:AddLabel("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]", true)
TimeNow = Misc1Group:AddLabel("Now Time [ "..os.date("%X").." ]", true)
Health = Misc1Group:AddLabel("Health [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]", true)
HealthBoss = Misc1Group:AddLabel("Health Boss [ Nah ]", true)
if tonumber(os.date("%H")) >= 5 and tonumber(os.date("%H")) < 12 then
AlarmTime = Misc1Group:AddLabel("Good Morning [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 17 then
AlarmTime = Misc1Group:AddLabel("Good Afternoon [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 17 and tonumber(os.date("%H")) < 21 then
AlarmTime = Misc1Group:AddLabel("Good Evening [ "..tonumber(os.date("%H")).." Hour ]", true)
else
AlarmTime = Misc1Group:AddLabel("Good Night [ "..tonumber(os.date("%H")).." Hour ]", true)
end
AgeAccYou = Misc1Group:AddLabel("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]", true)

Misc1Group:AddToggle("Auto Set Info", {
    Text = "Auto Set Info",
    Default = false, 
    Callback = function(Value)
_G.InfoServerSet = Value
    end
})

table.insert(_G.ConnectFun, game.RunService.Heartbeat:Connect(function()
	if not _G.InfoServerSet then return end
	pcall(function()
		CanYouFps:SetText("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]", true)
		CanYouPing:SetText("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]", true)
		TimeServer:SetText("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]", true)
		TimeNow:SetText("Now Time [ "..os.date("%X").." ]", true)
		Health:SetText("Health [ "..game.Players.LocalPlayer.Character.Humanoid.Health.." ]", true)
		if game.Workspace:FindFirstChild("BossFolder") and game.Workspace.BossFolder:FindFirstChild("Health") then
			HealthBoss:SetText("Health Boss [ "..game.Workspace.BossFolder.Health.Value.." ]", true)
		else
			HealthBoss:SetText("Check Health Boss [ Not Started Yet ]", true)
		end
		if tonumber(os.date("%H")) >= 5 and tonumber(os.date("%H")) < 12 then
			AlarmTime:SetText("Good Morning [ "..tonumber(os.date("%H")).." Hour ]", true)
		elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 17 then
			AlarmTime:SetText("Good Afternoon [ "..tonumber(os.date("%H")).." Hour ]", true)
		elseif tonumber(os.date("%H")) >= 17 and tonumber(os.date("%H")) < 21 then
			AlarmTime:SetText("Good Evening [ "..tonumber(os.date("%H")).." Hour ]", true)
		else
			AlarmTime:SetText("Good Night [ "..tonumber(os.date("%H")).." Hour ]", true)
		end
		AgeAccYou:SetText("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]", true)
	end)
end))

table.insert(_G.ConnectFun, game.RunService.Heartbeat:Connect(function()
	if _G.AntiRing then
		if game.Workspace:FindFirstChild("Ring") then
			game.Workspace:FindFirstChild("Ring"):Destroy()
		end
	end
	if _G.AntiRagdoll then
		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
			if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
				game.Players.LocalPlayer.Character.Torso.Anchored = true
			else
				game.Players.LocalPlayer.Character.Torso.Anchored = false
			end
		end
	end
end))

local Misc2Group = Tabs.Tab1:AddLeftGroupbox("Combat")

Misc2Group:AddToggle("Damage Boss", {
    Text = "Damage Boss",
    Default = false, 
    Callback = function(Value)
_G.DameBossBob = Value
while _G.DameBossBob do
if game.Workspace:FindFirstChild("bobBoss") then
game.Workspace.bobBoss.DamageEvent:FireServer()
end
task.wait()
end
    end
})

Misc2Group:AddToggle("Auto Click Tycoon", {
    Text = "Auto Click Tycoon",
    Default = false, 
    Callback = function(Value)
_G.AutoTycoon = Value
while _G.AutoTycoon do
for _, v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
task.wait()
end
    end
})

Misc2Group:AddDropdown("Glove", {
    Text = "Glove",
    Values = {"Killstreak", "Reaper", "God's Hand", "Tycoon"},
    Default = "Player",
    Multi = false,
    Callback = function(Value)
GloveSlap = Value
    end
})

Misc2Group:AddToggle("Slap Aura Bob Mini", {
    Text = "Slap Aura Bob Mini",
    Default = false, 
    Callback = function(Value)
_G.SlapBobClone = Value
while _G.SlapBobClone do
if game.Workspace:FindFirstChild("BobClone") then
for _, v in pairs(workspace:GetChildren()) do
if v.Name == "BobClone" then
if GloveSlap == "Killstreak" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Reaper" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "God's Hand" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Tycoon" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
end
task.wait()
end
    end
})

Misc2Group:AddButton("Slap Aura Bob Mini", function()
if game.Workspace:FindFirstChild("BobClone") then
for _, v in pairs(workspace:GetChildren()) do
if v.Name == "BobClone" then
if GloveSlap == "Killstreak" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Reaper" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "God's Hand" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Tycoon" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
end
end)

Misc2Group:AddButton("Button Fight Rock", function()
if game.CoreGui:FindFirstChild("SlapRock") == nil then
local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("ImageButton")
local Corner = Instance.new("UICorner")
local ParticleEmitter = Instance.new("ParticleEmitter")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "SlapRock"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Button.Parent = ScreenGui
Button.Image = "http://www.roblox.com/asset/?id=85284641800085"
Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.120833337 - 0.1, 0, 0.0952890813 + 0.01, 0)
Button.Size = UDim2.new(0, 50, 0, 50)
Button.Draggable = true
Corner.Parent = Button
Corner.CornerRadius = UDim.new(0, 12)
ParticleEmitter.Parent = Button
ParticleEmitter.LightEmission = 1
ParticleEmitter.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
})
ParticleEmitter.Lifetime = NumberRange.new(0.5, 1)
ParticleEmitter.Rate = 0
ParticleEmitter.Speed = NumberRange.new(5, 10)
ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))
local ParticleEmitterAmin = game:GetService("TweenService"):Create(Button, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 360})
Button.MouseEnter:Connect(function()
	game:GetService("TweenService"):Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 65, 0, 65)}):Play()
end)
Button.MouseLeave:Connect(function()
	game:GetService("TweenService"):Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 50, 0, 50)}):Play()
end)
Button.MouseButton1Down:Connect(function()
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "SpiritRock" and v:FindFirstChild("DamageEvent") then
			v.DamageEvent:FireServer()
		end
	end
    ParticleEmitter.Rate = 100
    task.delay(1, function()
        ParticleEmitter.Rate = 0
    end)
    ParticleEmitterAmin:Play()
    ParticleEmitterAmin.Completed:Connect(function()
        Button.Rotation = 0
    end)
end)
end
end)

local Misc3Group = Tabs.Tab1:AddRightGroupbox("Anti")

Misc3Group:AddButton("Remove VFX", function()
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener") then
	game.Players.LocalPlayer.PlayerScripts.VFXListener:Destroy()
end
end)

Misc3Group:AddToggle("Anti Ring", {
    Text = "Anti Ring",
    Default = false, 
    Callback = function(Value)
_G.AntiRing = Value
    end
}):AddKeyPicker("AntiRing", {
   Default = "X",
   Text = "Anti Ring",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc3Group:AddToggle("Anti Void Damage", {
    Text = "Anti Void Damage",
    Default = false, 
    Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
if Value == true then
	game.Workspace["VoidPart"].Transparency = 0.5
else
	game.Workspace["VoidPart"].Transparency = 1
end
    end
}):AddKeyPicker("AntiVoidDamage", {
   Default = "X",
   Text = "Anti Void Damage",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc3Group:AddToggle("Anti Ragdoll", {
    Text = "Anti Ragdoll",
    Default = false, 
    Callback = function(Value)
_G.AntiRagdoll = Value
    end
}):AddKeyPicker("AntiRagdoll", {
   Default = "X",
   Text = "Anti Ragdoll",
   Mode = "Toggle",
   SyncToggleState = true
})
