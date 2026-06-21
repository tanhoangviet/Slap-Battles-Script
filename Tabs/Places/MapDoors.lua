elseif game.PlaceId == 125845699717230 then
Window:ChangeTitle("Map Doors 🚪")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		local OpenedDoors = {}
		while true and task.wait() do
			if workspace:FindFirstChild("Hallways") then
				for i, v in pairs(workspace.Hallways:GetChildren()) do
					local HallwayDoor = v:FindFirstChild("Doors")
					if HallwayDoor then
						for j, b in pairs(HallwayDoor:GetChildren()) do
							if b:IsA("Model") and tonumber(b.Name) then
								if OpenedDoors[b] then 
	                                continue 
	                            end
								local DoorHitbox = b:FindFirstChild("Hitbox")
								local Click = DoorHitbox and DoorHitbox:FindFirstChild("ClickDetector")
								if DoorHitbox then
									repeat task.wait()
										if fireclickdetector then
											fireclickdetector(Click)
										end
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = DoorHitbox.CFrame * CFrame.new(0, 0, -5)
									until b:GetAttribute("Open")
									OpenedDoors[b] = true
								end
							end
						end
					end
				end
			end
		end
	end
end)
end
