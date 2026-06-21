elseif game.PlaceId == 103505724406848 then
Window:ChangeTitle("Battles Zombie 🧟")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Badge")

MainGroup:AddButton("Get Badge", function()
repeat task.wait() until workspace:FindFirstChild("BossAreaSpawn") and workspace:FindFirstChild("Enemies")
local Enemies = workspace:WaitForChild("Enemies")
repeat task.wait(1)
CreateFreezeBV()
if workspace:FindFirstChild("BossAreaSpawn") then
	game.Players.LocalPlayer.Character:PivotTo(workspace.BossAreaSpawn.CFrame * CFrame.new(0, 65, 0))
end
for i, v in pairs(Enemies:GetChildren()) do
	if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
		game:GetService("ReplicatedStorage").Remotes.GeneralHit:FireServer(v.Head)
	end
end
until workspace.Enemies:FindFirstChild("Boss Zombie")
wait(0.6)
while true do
if workspace.Enemies:FindFirstChild("Boss Zombie") and workspace.Enemies["Boss Zombie"]:FindFirstChild("Head") then
	spawn(function()
		game:GetService("ReplicatedStorage").Remotes.GeneralHit:FireServer(v.Head)
	end)
end
task.wait()
end
end)
