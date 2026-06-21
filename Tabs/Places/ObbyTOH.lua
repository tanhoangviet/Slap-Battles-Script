elseif game.PlaceId == 115782629143468 then
Window:ChangeTitle("Obby TOH 🪜")
Tabs = {
	Tab = Window:AddTab("Misc", SolarIcon.Misc),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Misc")

Misc1Group:AddButton("Teleport Badge", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, 190, 0)
end)
