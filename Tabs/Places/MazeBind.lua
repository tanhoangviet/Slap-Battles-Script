elseif game.PlaceId == 74169485398268 then
Window:ChangeTitle("Maze Bind 👁️‍🗨️")
Tabs = {
	Tab = Window:AddTab("Misc", SolarIcon.Misc),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Get / Teleport")

Misc1Group:AddButton("Teleport Glove", function()
if fireclickdetector then
if game.Workspace:FindFirstChild("Orb") then
fireclickdetector(game.Workspace.Orb.ClickDetector, 0)
fireclickdetector(game.Workspace.Orb.ClickDetector, 1)
end
elseif not fireclickdetector then
if game.Workspace:FindFirstChild("Orb") and game.Workspace.Orb:FindFirstChild("Meshes/rock chain glove_defaultglove_cell.001") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Orb["Meshes/rock chain glove_defaultglove_cell.001"].CFrame
end
end
end)
