elseif game.PlaceId == 128229958211947 then
Window:ChangeTitle("Chicken Boss 🐣")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
if not game.Workspace:GetAttribute("Phase") then
	Notification("You have wait until fight", 5)
	repeat task.wait() until game.Workspace:GetAttribute("Phase")
end
CreateFreezeBV()
if game.Workspace:GetAttribute("Phase") == 1 then
	repeat task.wait()
		pcall(function()
			if workspace:FindFirstChild("EasterMap"):FindFirstChild("Phase1"):FindFirstChild("MapObjects") then
				for i, v in pairs(workspace.EasterMap.Phase1.MapObjects:GetChildren()) do
					if v.Name:lower() == "slapapult" and v:FindFirstChild("ShootButton") and v:FindFirstChild("HandleButton") and not v:GetAttribute("Broken") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.ShootButton.CFrame * CFrame.new(0, 5, 0)
						repeat task.wait()
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveSwing"):FireServer()
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveHit"):FireServer(v:FindFirstChild("HandleButton"))
						until (v:GetAttribute("Charge") or 0) >= 2
						wait(0.3)
						repeat task.wait()
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveSwing"):FireServer()
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveHit"):FireServer(v:FindFirstChild("ShootButton"))
						until v:GetAttribute("Broken")
					end
				end
			end
		end)
	until game.Workspace:GetAttribute("Phase") >= 2
end
if game.Workspace:GetAttribute("Phase") >= 2 then
	repeat task.wait()
		if workspace:FindFirstChild("ChickenBoss") then
			local cf, size = workspace.ChickenBoss:GetBoundingBox()
			local pos = cf.Position + Vector3.new(0, size.Y/2 + 18, 0)
			if pos then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos, cf.Position)
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveSwing"):FireServer()
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Egg"):WaitForChild("GloveHit"):FireServer(workspace:WaitForChild("ChickenBoss"):WaitForChild("Body_model"))
			end
		end
	until workspace:FindFirstChild("RewardGlove")
end
CreateFreezeBV({Remove = true})
Notification("Ok, Very done", 5)
end)
