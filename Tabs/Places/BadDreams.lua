elseif game.PlaceId == 118650724506449 then
Window:ChangeTitle("Bad Dreams 💤")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc2Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc2Group:AddButton("Teleport Badge", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.rooms["room exit"].EXIT.CFrame
end)
