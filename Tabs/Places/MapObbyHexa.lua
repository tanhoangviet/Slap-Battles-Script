elseif game.PlaceId == 98726100529621 then
Window:ChangeTitle("Map Obby Hexa 🔰")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Glove", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("Part I") then
workspace["Part I"].Obby["end"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat task.wait() until workspace:FindFirstChild("Part 2")
wait(10.5)
end
if workspace:FindFirstChild("Part 2") then
local OldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(97, 14, 644)
wait(2.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
wait(0.8)
until workspace["Part 2"]:FindFirstChild("Portal")
task.wait(2.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Part 2"].Portal.CFrame
repeat task.wait() until workspace:FindFirstChild("Part 3")
wait(9.5)
end
if workspace:FindFirstChild("Part 3") then
workspace["Part 3"].TpToNext.HitBox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if fireclickdetector then
fireclickdetector(workspace["Part 3"].TpToNext.HitBox:FindFirstChild("Click"))
end
repeat task.wait() until workspace:FindFirstChild("Part 4")
wait(7)
end
if workspace:FindFirstChild("Part 4") then
workspace["Part 4"].TPPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat task.wait() until workspace:FindFirstChild("Part 5")
wait(7)
end
if workspace:FindFirstChild("Part 5") then
workspace["Part 5"].Glove.Hitbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if fireclickdetector then
fireclickdetector(workspace["Part 5"].Glove.Hitbox:FindFirstChild("Click"))
end
repeat task.wait() until workspace:FindFirstChild("Finale") and workspace.Finale:FindFirstChild("Reward")
wait(7)
end
if workspace:FindFirstChild("Finale") and workspace.Finale:FindFirstChild("Reward") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Finale.Reward.Hitbox.CFrame
if fireclickdetector then
fireclickdetector(workspace.Finale.Reward.Hitbox:FindFirstChild("Click"))
end
end
end
end)
