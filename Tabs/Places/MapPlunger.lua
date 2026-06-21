elseif game.PlaceId == 89837553336708 then
Window:ChangeTitle("Map Plunger 🪠")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local Plunger = workspace:FindFirstChild("plunger glove")
Plunger:FindFirstChild("plungerglove").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
if fireclickdetector then
fireclickdetector(Plunger:FindFirstChildOfClass("ClickDetector"))
end
end
end)
