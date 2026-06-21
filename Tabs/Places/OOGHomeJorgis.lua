elseif game.PlaceId == 102908326578005 then
Window:ChangeTitle("OOG Home Jorgis 🏠")
Tabs = {
	Tab = Window:AddTab("Misc", SolarIcon.Misc),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Misc")

Misc1Group:AddButton("Ball Teleport", function()
for i,v in ipairs(workspace.Furniture.jorgisBasketballs:GetChildren()) do
	if v.Name == "B-Ball" and v:FindFirstChild("ClickDetector") then
		v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if fireclickdetector then
			fireclickdetector(v.ClickDetector, 0)
			fireclickdetector(v.ClickDetector, 1)
		end
	end
end
end)

Misc1Group:AddButton("Key Teleport", function()
for i,v in ipairs(workspace.Furniture.jorgisDresser:GetChildren()) do
	if v.Name == "Drawer" and v:FindFirstChild("Handle") and v.Handle:FindFirstChild("ClickDetector") then
		v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if fireclickdetector then
			fireclickdetector(v.Handle.ClickDetector, 0)
			fireclickdetector(v.Handle.ClickDetector, 1)
		end
	end
end
end)

Misc1Group:AddButton("Teleport Door", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Furniture.finalDoor.Base.Base.CFrame
end)
