elseif game.PlaceId == 86045914443715 then
Window:ChangeTitle("Car Key 🚗")

Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	Map = game:GetService("Workspace"):WaitForChild("Map")
	if Map and Map:FindFirstChild("Racetrack") then
		Map.Racetrack:Destroy()
	end
	if Map and Map:FindFirstChild("kill_bricks") then
		Map.kill_bricks:Destroy()
	end
	local align = Instance.new("AlignPosition", game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
	align.Attachment0 = Instance.new("Attachment", game:GetService("Players").LocalPlayer.Character.HumanoidRootPart)
	align.Mode = Enum.PositionAlignmentMode.OneAttachment
	align.MaxForce = math.huge
	for i = 1, #Map.Waypoints:GetChildren() do
	    align.Position = Map.Waypoints[tostring(i)].Position
	    repeat task.wait() until (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Map.Waypoints[tostring(i)].Position).Magnitude <= 100
	end
	align.Position = Vector3.new(-1431, 425, -859)
end
end)
