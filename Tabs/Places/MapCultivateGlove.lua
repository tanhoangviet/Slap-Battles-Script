elseif game.PlaceId == 93981091811742 then
Window:ChangeTitle("Map Cultivate Glove 🧘")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lotus2Complete"):FireServer()
		if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Akari") then
			game:GetService("Players").LocalPlayer.PlayerGui.Akari:Destroy()
		end
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Minigames"):WaitForChild("Complete"):FireServer()
		wait(0.5)
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("Folder") and v.Name:find("Lotus") and v:FindFirstChild("Lotus") and v.Lotus:FindFirstChild("Primary") and v.Lotus.Primary:FindFirstChild("ClickDetector") then
				for j, b in pairs(v.Lotus:GetChildren()) do
					if b:IsA("BasePart") and not b.Name:find("Primary") and b.Transparency < 1 then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Lotus.Primary.CFrame * CFrame.new(0, 5, 0)
						if fireclickdetector then
							fireclickdetector(v.Lotus.Primary.ClickDetector)
						end
						repeat task.wait() until b.Transparency >= 1
						break
					end
				end
			end
		end
	end
end)
