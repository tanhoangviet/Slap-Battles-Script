elseif game.PlaceId == 7234087065 then
spawn(function()
	while true do
		Dialogue = game.Workspace:FindFirstChild("DialoguePrompts")
		NPC = game.Workspace:FindFirstChild("NPCS")
		Buildings = game.Workspace:FindFirstChild("Buildings")
		task.wait()
	end
end)

Window:ChangeTitle("Lobby OOG 🐕")
Tabs = {
	Tab = Window:AddTab("Misc", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Main")

Misc1Group:AddButton("Get Badge OOG", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.QuestStuff.Key.CFrame
	repeat task.wait() until 
	game:GetService("ReplicatedStorage").RemoteEvents.SuitUpClown:FireServer()
	task.wait(0.25)
	game:GetService("ReplicatedStorage").RemoteEvents.KeyQuest:FireServer()
	task.wait(0.25)
	game:GetService("ReplicatedStorage").RemoteEvents.KeyAcquired:FireServer()
	task.wait(0.25)
	game:GetService("ReplicatedStorage").RemoteEvents.GOHOME:FireServer()
	task.wait(0.25)
	game:GetService("ReplicatedStorage").RemoteEvents.KeyBadgeReward:FireServer()
end
end)

Misc1Group:AddButton("Get Badge Riftshot", function()
if Dialogue and Dialogue:FindFirstChild("Sharpshooter Sam") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Dialogue["Sharpshooter Sam"].CFrame
end
Notification("Bypass Success, Now bomb will bring you, your job is to shoot", 5)
wait(0.3)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name:find("Sharpshooter Sam's") then
        SharpshooterTarget = v
    end
end
wait(0.3)
while true do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	if SharpshooterTarget then
		for i, v in pairs(SharpshooterTarget:GetChildren()) do
			if v.Name:find("bomb") and v:FindFirstChild("Handle") then
				v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
			end
		end
	end
end
task.wait()
end
end)

Misc1Group:AddButton("Get Badge Boxer", function()
if game.Workspace:FindFirstChild("BoxingGloves") == nil then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Buildings.house:FindFirstChild("TP").CFrame * CFrame.new(0,10,0)
end
repeat task.wait() until game.Workspace:FindFirstChild("BoxingGloves")
wait(0.6)
if game.Workspace:FindFirstChild("BoxingGloves"):FindFirstChild("ClickDetector") then
	fireclickdetector(game.Workspace.BoxingGloves.ClickDetector, 0)
	fireclickdetector(game.Workspace.BoxingGloves.ClickDetector, 1)
end
end)

Misc1Group:AddDivider()
Misc1Group:AddButton("Enter Event Area", function()
for i, v in ipairs(workspace.Signs:GetChildren()) do
	if v.Name == "Sign" and v:FindFirstChild("Text") and v.Text:FindFirstChild("ClickDetector") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Text.CFrame
		if fireclickdetector then
			fireclickdetector(v.Text.ClickDetector, 0)
			fireclickdetector(v.Text.ClickDetector, 1)
		end
	end
end
end)

Misc1Group:AddButton("Enter Designer Roblox", function()
repeat task.wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(249, 94, -62841)
until workspace.Buildings:FindFirstChild("wizard twoer 2")
wait(0.8)
for i, v in pairs(workspace.Buildings["wizard twoer 2"]:GetChildren()) do
	if v.Name == "Model" and v:FindFirstChild("Trigger") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Trigger").CFrame
	end
end
end)

Misc1Group:AddDivider()
Misc1Group:AddToggle("Auto Tp Clock", {
    Text = "Auto Teleport Clock",
    Default = false, 
    Callback = function(Value) 
_G.AutoTPClock = Value
while _G.AutoTPClock do
for i,v in pairs(workspace.Buildings:GetChildren()) do
	if v.Name == "wizard twoer" and v:FindFirstChild("Cone") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Cone.CFrame * CFrame.new(0,15,0)
	end
end
task.wait()
end
    end
})
