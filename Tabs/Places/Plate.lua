elseif game.PlaceId == 106620300132058 then
Window:ChangeTitle("Plate 🍽️")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Badge")

MainGroup:AddButton("Get Badge", function()
if LoadingBadge then return end
LoadingBadge = true
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	if workspace:FindFirstChild("Obstacles") then workspace.Obstacles:Destroy() end
	Notification("Bypass plate obstacles", 5)
	Notification("Wait in until glove appear", 5)
	workspace:GetAttributeChangedSignal("Completed"):Connect(function()
		if workspace:GetAttribute("Completed") == true then
			Notification("Done Bro", 5)
			while task.wait() do
				if workspace:FindFirstChild("Glove Model"):FindFirstChild("Hand") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Glove Model"].Hand.CFrame
				end
			end
		end
	end)
end
end)
