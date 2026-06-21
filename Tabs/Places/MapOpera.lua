elseif game.PlaceId == 77283826005207 then
Window:ChangeTitle("Map Opera ⭕")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
	local map = workspace:FindFirstChild("Map")
	local lobby = map and map:FindFirstChild("Lobby")
	local function firetouch(part)
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)
			if firetouchinterest then
				firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, part, 0)
				firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, part, 1)
			end
		end
	end
	local function fireclick(click, part)
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, 5, 0)
		end
		if fireclickdetector then
			fireclickdetector(click)
		end
	end
	local function AutoComplete(number)
		if lobby and lobby:FindFirstChild("Portal"..number) and lobby["Portal"..number]:FindFirstChild("Part"):FindFirstChild("TouchInterest") then
			firetouch(lobby["Portal"..number].Part)
			repeat task.wait() until map and map:FindFirstChild("Challenge"..number)
			wait(0.5)
			if map:FindFirstChild("Challenge"..number) and map["Challenge"..number]:FindFirstChild("RedButton") then
				fireclick(map["Challenge"..number].RedButton.Button:FindFirstChild("ClickDetector"), map["Challenge"..number].RedButton.Button.Sphere)
			end
			repeat task.wait() until not map:FindFirstChild("Challenge"..number) and not lobby["Portal"..number].Part:FindFirstChild("TouchInterest")
		end
	end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		AutoComplete(1)
		wait(0.5)
		AutoComplete(2)
		wait(0.5)
		AutoComplete(3)
		wait(0.5)
		if lobby and lobby:FindFirstChild("EndPortal") then
			local portal1 = not lobby["Portal1"].Part:FindFirstChild("TouchInterest")
			local portal2 = not lobby["Portal2"].Part:FindFirstChild("TouchInterest")
			local portal3 = not lobby["Portal3"].Part:FindFirstChild("TouchInterest")
			local getglove = lobby:FindFirstChild("EndPortal"):FindFirstChild("Portal")
			if portal1 and portal2 and portal3 and getglove then
				firetouch(getglove)
			end
		end
	end
end)
