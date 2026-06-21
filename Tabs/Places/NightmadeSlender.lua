elseif game.PlaceId == 132277598079047 then
Window:ChangeTitle("Nightmade Slender 🌑")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i, v in pairs(workspace:FindFirstChild("Pages"):GetChildren()) do
if v.Name == "Page" and v:FindFirstChild("Part") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
wait(0.38)
if fireproximityprompt then
fireproximityprompt(v.Part:FindFirstChild("ProximityPrompt"))
end
end
end
end
end)
