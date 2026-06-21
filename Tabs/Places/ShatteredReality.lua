elseif game.PlaceId == 75803343514634 then
Window:ChangeTitle("Shattered Reality ⚔️")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if GetBadge then return end
GetBadge = true
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local Stage1 = workspace:FindFirstChild("Stage1")
if workspace:FindFirstChild("Stage1") then
repeat task.wait() 
if Stage1:FindFirstChild("Lobby") and Stage1.Lobby.Portals:FindFirstChild("normal") then
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Stage1.Lobby.Portals.normal.Teleport1, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Stage1.Lobby.Portals.normal.Teleport1, 1)
end
if Stage1:FindFirstChild("glove") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage1.glove:FindFirstChild("Touch").CFrame
end
until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg")
local GloveEvolg = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg")
if GloveEvolg and GloveEvolg:FindFirstChild("Glove") and GloveEvolg.Glove:FindFirstChild("HitParticles") then
GloveEvolg.Glove:FindFirstChild("HitParticles"):Destroy()
end
repeat task.wait()
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg") then
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg").Parent = game:GetService("Players").LocalPlayer.Character
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") and game:GetService("Players").LocalPlayer.Character.Evolg:FindFirstChild("Network") then
for i, v in pairs(workspace:GetChildren()) do
if v.Name:find("shadow") and v:FindFirstChild("HumanoidRootPart") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg"):Activate()
game:GetService("Players").LocalPlayer.Character:WaitForChild("Evolg"):WaitForChild("Network"):FireServer("Hit",v.HumanoidRootPart)
end
end
end
until Stage1:FindFirstChild("Mirror") and Stage1.Mirror:FindFirstChild("Touch") and Stage1.Mirror.Touch:FindFirstChild("TouchInterest")
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage1.Mirror:FindFirstChild("Touch").CFrame
end
repeat task.wait() until workspace:FindFirstChild("Stage2")
wait(4)
if workspace:FindFirstChild("Stage2") then
local Stage2 = workspace:FindFirstChild("Stage2")
if Stage2:FindFirstChild("Lobby") and Stage2.Lobby.Portals:FindFirstChild("normal") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.Lobby.Portals.normal.Teleport1.CFrame
end
wait(0.5)
repeat task.wait()
if Stage2:FindFirstChild("spinner") and Stage2.spinner:FindFirstChild("Part") and Stage2.spinner.Part.Transparency < 0.5 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.spinner:FindFirstChild("Part").CFrame * CFrame.new(0, 60, 0)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
until Stage2:FindFirstChild("Mirror") and Stage2.Mirror:FindFirstChild("Touch") and Stage2.Mirror.Touch:FindFirstChild("TouchInterest")
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.Mirror:FindFirstChild("Touch").CFrame
wait(4)
end
repeat task.wait() until workspace:FindFirstChild("Stage3")
wait(0.3)
if workspace:FindFirstChild("Stage3") then
wait(5)
local Stage3 = workspace:FindFirstChild("Stage3")
if Stage3:FindFirstChild("Lobby") and Stage3.Lobby.Portals:FindFirstChild("default") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage3.Lobby.Portals.default.Teleport2.CFrame
end
end
repeat task.wait() until workspace:FindFirstChild("BossArena")
if workspace:FindFirstChild("BossAttackDebris") then
workspace.BossAttackDebris:Destroy()
end
local Boss = workspace:FindFirstChild("BossArena")
if Boss:FindFirstChild("Arena") and Boss.Arena:FindFirstChild("startTrigger") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Boss.Arena:FindFirstChild("startTrigger").CFrame
end
repeat task.wait()
if Boss:FindFirstChild("Arena"):FindFirstChild("mirrors") then
	for i, v in pairs(Boss.Arena.mirrors:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Meshes/Mirror1_Plane.008") and v["Meshes/Mirror1_Plane.008"].Transparency < 0.5 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Meshes/Mirror1_Plane.008").CFrame
		end
	end
end
until workspace:FindFirstChild("Rig") and workspace.Rig:FindFirstChild("Humanoid").Health <= 0
Notification("Done, Get Badge (Glove, but Hitman kill)", 5)
end
end)
