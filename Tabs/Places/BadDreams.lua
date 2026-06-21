elseif game.PlaceId == 118650724506449 then
Window:ChangeTitle("Bad Dreams 💤")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc2Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc2Group:AddButton("Teleport Badge", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.rooms["room exit"].EXIT.CFrame
end)
