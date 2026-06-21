elseif game.PlaceId == 117232463555132 then
Window:ChangeTitle("Map Retro Boss ⚔️")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
end
wait(0.36)
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Position = UDim2.new(0, 0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").BackgroundTransparency = 0.77
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Size = UDim2.new(1, 0, 1, 0)
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("Head") then
if fireproximityprompt then
fireproximityprompt(workspace.Map.Components.NPCs.FinalBoss.FinalBoss.Head:FindFirstChild("ProximityPrompt"))
end
end
repeat task.wait()
	if firesignal and game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton") then
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Activated)
	end
until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("FinalBossHealthBar") and game:GetService("Players").LocalPlayer.PlayerGui.FinalBossHealthBar:FindFirstChild("FinalBossHealthBar").Visible == true
wait(0.5)
repeat task.wait()
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Default") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Default").Parent = game.Players.LocalPlayer.Character
end
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
game:GetService("ReplicatedStorage").Remotes.ToolSwingEvent:FireServer()
end
until game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.FinalBossHealthBar:FindFirstChild("FinalBossHealthBar").Visible == false or workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("BridgeToGlove").Transparency == 0
wait(0.5)
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
repeat task.wait()
	if firesignal and game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton") then
		firesignal(game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Activated)
	end
until workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("BridgeToGlove") and workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("BridgeToGlove").Transparency == 0
wait(1)
if workspace.Map.Components:FindFirstChild("GloveIsland") and workspace.Map.Components.GloveIsland:FindFirstChild("ClaimGlove") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Components.GloveIsland.ClaimGlove.CFrame
wait(1)
while true do
wait(0.3)
if fireproximityprompt then
fireproximityprompt(workspace.Map.Components.GloveIsland.ClaimGlove:FindFirstChild("ProximityPrompt"))
end
end
end
end
end)
