elseif game.PlaceId == 79885102123162 then
function CheckGloveHide(j)
	for i, v in pairs(workspace.Map.GloveLocation:GetDescendants()) do
		if v:IsA("Model") and v.Name:lower():find(j:lower()) then
			if v:GetAttribute("Visible") == true then
				return false
			end
		end
	end
	return true
end

function CheckGloveFind(j)
	for i, v in pairs(workspace.Map.GloveLocation:GetDescendants()) do
		if v:IsA("Model") and v.Name:lower():find(j:lower()) then
			if v:GetAttribute("Visible") == true then
				for _, k in pairs(v:GetDescendants()) do
					if k:IsA("BasePart") then
						return k.CFrame
					end
				end
			end
		end
	end
	return nil
end
			
Window:ChangeTitle("Find Glove 🔍")

Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Find Glove Touch", function()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	for i, v in pairs(workspace.Map.GloveLocation:GetDescendants()) do
		if v:IsA("Model") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:GetPivot().Position)
			task.wait(0.3)
		end
		if v:IsA("TouchTransmitter") and v.Parent:IsA("BasePart") and not v.Parent:GetAttribute("__Hidden") then
			repeat task.wait()
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
			until v.Parent:GetAttribute("__Hidden") == true
			task.wait(0.3)
		end
	end
end
end)

for _, j in pairs({"Plate", "Scythe", "Brick", "Jerry", "Prop", "Pineapple"}) do
	MainGroup:AddButton("Find Glove "..j, function()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			if j:lower():find("plate") then
				if workspace:WaitForChild("Map"):WaitForChild("obstacle/puzzles"):WaitForChild("RegularMap"):WaitForChild("Plate"):WaitForChild("Sign"):WaitForChild("hitbox") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("Map"):WaitForChild("obstacle/puzzles"):WaitForChild("RegularMap"):WaitForChild("Plate"):WaitForChild("Sign"):WaitForChild("hitbox").CFrame
					Notification("You have slap Sign to plate", 5)
					repeat task.wait() until not CheckGloveHide(j)
					wait(0.4)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (CheckGloveFind(j) or game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
			elseif j:lower():find("scythe") then
				Notification("You have click Pumpkin", 5)
				for i, v in pairs(workspace.Map["obstacle/puzzles"].Halloween.Scythe:GetChildren()) do
					if v.Name:find("Pumpkin") then
						for _, k in pairs(v:GetChildren()) do
							if k:IsA("BasePart") and not k:GetAttribute("__Hidden") then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = k.CFrame
								repeat task.wait() until k:GetAttribute("__Hidden") == true
								break
							end
						end
					end
				end
				repeat task.wait() until not CheckGloveHide(j)
				wait(0.4)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (CheckGloveFind(j) or game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			elseif j:lower():find("brick") then
				Notification("You have click brick in collect glove", 5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.GloveLocation.CastleIsland.Brick.Brick.CFrame
			elseif j:lower():find("prop") then
				Notification("You have click prop in collect glove", 5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map["obstacle/puzzles"].RegularMap.Prop.Prop_Rock.CFrame
			elseif j:lower():find("pineapple") then
				Notification("You have click pineapple in collect glove", 5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map["obstacle/puzzles"].Barzil.Pineslapple.Pineapple.CFrame
			elseif j:lower():find("jerry") then
				Notification("You have click Snowpeeps 3 time for the glove to appear", 5)
				for i, v in pairs(workspace.Map["obstacle/puzzles"].Winter.Jerry_Snowpeeps:GetDescendants()) do
					if v:IsA("ClickDetector") then
						if fireclickdetector then
							fireclickdetector(v)
						end
						if v.Parent:IsA("BasePart") then
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
							repeat task.wait() until v.Parent:GetAttribute("__Hidden") == true
						end
					end
				end
				repeat task.wait() until not CheckGloveHide(j)
				wait(0.4)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = (CheckGloveFind(j) or game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
		end
	end)
end
