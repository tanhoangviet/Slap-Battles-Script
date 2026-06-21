elseif game.PlaceId == 129665246576996 then
Window:ChangeTitle("Map Egger 🥚")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace:FindFirstChild("Kenneth") and workspace.Kenneth:FindFirstChild("Head") and workspace.Kenneth.Head:FindFirstChild("ProximityPrompt") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Kenneth.Head.CFrame
wait(0.6)
if fireproximityprompt then
fireproximityprompt(workspace.Kenneth.Head.ProximityPrompt)
end
end
for i, v in pairs(workspace:FindFirstChild("TrialCompletedPoints"):GetChildren()) do
if v.Name:find("Trial") and v:FindFirstChild("root") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.root.CFrame
wait(0.8)
end
end 
wait(2.5)
if workspace:FindFirstChild("Kenneth") and workspace.Kenneth:FindFirstChild("Head") and workspace.Kenneth.Head:FindFirstChild("ProximityPrompt") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Kenneth.Head.CFrame
wait(0.6)
if fireproximityprompt then
fireproximityprompt(workspace.Kenneth.Head.ProximityPrompt)
end
end
end
end)
