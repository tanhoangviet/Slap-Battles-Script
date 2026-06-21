elseif game.PlaceId == 113228834069218 or game.PlaceId == 95356852680586 then
Window:ChangeTitle("Cosplay Penguins 🐧")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

if game.PlaceId == 113228834069218 then
	MainGroup:AddButton("Collect All Fish", function()
		if workspace:FindFirstChild("Fih") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			for i, v in pairs(workspace:FindFirstChild("Fih"):GetChildren()) do
				if v:IsA("Model") and v.Name:lower() == "spinningfish" and v:FindFirstChild("Fish") and v.Fish:FindFirstChild("TouchInterest") then
					if typeof(firetouchinterest) == "function" then
						firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v.Fish, 0)
						firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v.Fish, 1)
					end
					v.Fish.CFrame = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
				end
			end
		end
	end)
	
	MainGroup:AddButton("Teleport To Finish", function()
		if workspace:FindFirstChild("FinishPart") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			if typeof(firetouchinterest) == "function" then
				firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), workspace.FinishPart.TouchInterest.Parent, 0)
				firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), workspace.FinishPart.TouchInterest.Parent, 1)
			end
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.FinishPart.CFrame * CFrame.new(0, -10, 0)
		end
	end)
elseif game.PlaceId == 95356852680586 then
	local ModelSnow = workspace:WaitForChild("Snowman"):WaitForChild("Models")
	MainGroup:AddButton("Pickup Item Cosplay", function()
		CosplayName = {}
		for _, v in pairs(ModelSnow.DisplaySnowman.Accessories:GetChildren()) do
			if v:IsA("Folder") then
				for j, h in pairs(v:GetDescendants()) do
					if h:IsA("Model") then
						local handle = h:FindFirstChild("Handle")
						if handle and handle.Transparency == 0 then
							table.insert(CosplayName, h.Name)
						end
					end
				end
			end
		end
		if #CosplayName > 0 then
			for i, v in pairs(CosplayName) do
				for j, k in pairs(workspace:FindFirstChild("Accessories"):GetChildren()) do
					if k.Name:lower() == v:lower() and k:FindFirstChild("Handle") and k:FindFirstChild("ProximityPrompt") then
						local handle = k:FindFirstChild("Handle", true)
						local prompt = k:FindFirstChild("ProximityPrompt", true)
						repeat task.wait()
							if typeof(fireproximityprompt) == "function" then
								fireproximityprompt(prompt)
							end
							game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = handle.CFrame * CFrame.new(0, 3, 0)
						until (game.Players.LocalPlayer.Character:FindFirstChild(k:GetAttribute("SnowmanPartType")) and game.Players.LocalPlayer.Character:FindFirstChild(k:GetAttribute("SnowmanPartType")):IsA("Tool")) or (game.Players.LocalPlayer.Backpack:FindFirstChild(k:GetAttribute("SnowmanPartType")) and game.Players.LocalPlayer.Backpack:FindFirstChild(k:GetAttribute("SnowmanPartType")):IsA("Tool"))
					end
				end
			end
		end
	end)
	
	MainGroup:AddButton("Put Snowman", function()
		if not (game.Players.LocalPlayer.Character:FindFirstChild("Snow") or game.Players.LocalPlayer.Backpack:FindFirstChild("Snow")) then
			repeat task.wait()
				if typeof(fireproximityprompt) == "function" then
					fireproximityprompt(workspace.Interactables.SnowObject.ProximityPrompt)
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.Interactables.SnowObject.CFrame * CFrame.new(0, 5, 0)
			until game.Players.LocalPlayer.Character:FindFirstChild("Snow") or game.Players.LocalPlayer.Backpack:FindFirstChild("Snow")
		end
		local function PlayerSnow()
			for i, v in pairs(ModelSnow.PlayerSnowman:GetChildren()) do
				if v:IsA("BasePart") and v.Transparency > 0 then
					return false
				end
			end
			return true
		end
		repeat task.wait()
			if ModelSnow.PlayerSnowman:FindFirstChildOfClass("ProximityPrompt") then
				if typeof(fireproximityprompt) == "function" then
					fireproximityprompt(ModelSnow.PlayerSnowman:FindFirstChildOfClass("ProximityPrompt"))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Snow") then
					game.Players.LocalPlayer.Backpack:FindFirstChild("Snow").Parent = game.Players.LocalPlayer.Character
				end
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = ModelSnow.PlayerSnowman:FindFirstChild("Head").CFrame * CFrame.new(0, 3, 0)
			end
		until PlayerSnow() == true
		wait(0.5)
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = ModelSnow.PlayerSnowman:FindFirstChild("Head").CFrame * CFrame.new(0, 3, 0)
				wait(0.3)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				wait(0.3)
				if typeof(fireproximityprompt) == "function" then
					fireproximityprompt(ModelSnow.PlayerSnowman:FindFirstChildOfClass("ProximityPrompt"))
				end
				v.Destroying:Wait()
			end
		end
	end)
end
