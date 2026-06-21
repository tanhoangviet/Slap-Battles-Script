elseif game.PlaceId == 136690395520488 then
Window:ChangeTitle("Friday the 13th 🔪")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
end
local MapStuff = game.Workspace:FindFirstChild("Map") and game.Workspace.Map:FindFirstChild("PuzzleStuff")
wait(0.5)
if MapStuff:FindFirstChild("ButtonPlants") then
for i, v in pairs(MapStuff:FindFirstChild("ButtonPlants"):GetChildren()) do
if v.Name == "Plant" and v:FindFirstChild("Button") and v:FindFirstChild("Hitbox") and v.Hitbox:FindFirstChild("ClickDetector") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
if fireclickdetector then
fireclickdetector(v.Hitbox:FindFirstChild("ClickDetector"))
end
until v.Button.Color ~= Color3.fromRGB(255, 0, 0)
end
end
end
wait(0.3)
repeat task.wait()
if MapStuff:FindFirstChild("Sledgehammer") and MapStuff.Sledgehammer:FindFirstChild("Hitbox") then
if fireclickdetector then
fireclickdetector(MapStuff.Sledgehammer.Hitbox:FindFirstChild("ClickDetector"))
end
end
until game.Players.LocalPlayer.Backpack:FindFirstChild("Sledgehammer") or game.Players.LocalPlayer.Character:FindFirstChild("Sledgehammer")
wait(0.2)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Sledgehammer") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Sledgehammer").Parent = game.Players.LocalPlayer.Character
wait(0.2)
end
if MapStuff:FindFirstChild("Glass") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = MapStuff.Glass.CFrame
wait(0.3)
if MapStuff:FindFirstChild("Glass") and MapStuff.Glass:FindFirstChild("ClickDetector") then
if fireclickdetector then
fireclickdetector(MapStuff.Glass:FindFirstChild("ClickDetector"))
end
end
end
wait(0.5)
local count = {X = 0, V = 0, II = 0}
local function CalculatePanel(number)
	local str = tostring(number)
	local abc = tonumber(str:sub(1,3))
	local def = tonumber(str:sub(4,6))
	local needed = def - abc
	local result = {}
	if needed < 0 then
		return {}, ""
	end
	local countX = needed // 10
	needed = needed % 10
	local countV = needed // 5
	needed = needed % 5
	local countII = needed // 2
	needed = needed % 2
	for i = 1, countX do
		table.insert(result, "X")
	end
	for i = 1, countV do
		table.insert(result, "V")
	end
	for i = 1, countII do
		table.insert(result, "II")
	end
	return result, needed
end
local Numberchar = {
	["X"] = 10,
	["V"] = 5,
	["II"] = 2
}
repeat task.wait() 
	pcall(function()
		repeat task.wait() until MapStuff:FindFirstChild("AddAmountsPanel") and MapStuff.AddAmountsPanel:FindFirstChild("Screen") and MapStuff.AddAmountsPanel.Screen:FindFirstChild("SurfaceGui") and MapStuff.AddAmountsPanel.Screen.SurfaceGui:FindFirstChild("TextLabel") and (tonumber(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text) or MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "unlocked" or MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "error")
		repeat task.wait() until MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "unlocked" or tonumber(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text)
		wait(0.7)
		local count = {X = 0, V = 0, II = 0}
		local result, remainder
		if MapStuff:FindFirstChild("AddAmountsPanel") and MapStuff.AddAmountsPanel:FindFirstChild("Screen") and MapStuff.AddAmountsPanel.Screen:FindFirstChild("SurfaceGui") and MapStuff.AddAmountsPanel.Screen.SurfaceGui:FindFirstChild("TextLabel") and MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() ~= "unlocked" then
			result, remainder = CalculatePanel(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text)
			local Amount1 = tonumber(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:sub(1,3))
			local Amount2 = tonumber(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:sub(4,6))
			if #result > 0 then
				for i, v in ipairs(result) do
					Amount1 += Numberchar[v]
				end
				local CheckAmount = Amount1..Amount2
				result, remainder = CalculatePanel(CheckAmount)
			end
			if #result < 0 then
				Notification("The second number is smaller than the first number, you have reset amounts now.", 5)
				for i = 1, 20 do
					for j, k in pairs(MapStuff.AddAmountsPanel:GetChildren()) do
						if k.Name == "Key" then
							if fireclickdetector then
								fireclickdetector(k.ClickDetector)
							end
						end
					end
				end
				repeat task.wait() until MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "unlocked" or MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "error"
			else
				result, remainder = CalculatePanel(MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text)
				if #result > 0 then
					for _, v in pairs(result) do
						if count[v] then
							count[v] += 1
						end
					end
					for _, k in pairs(MapStuff.AddAmountsPanel:GetChildren()) do
						if k.Name == "Key" then
							local amount = k:GetAttribute("AddAmount")
							local label = k:FindFirstChild("SurfaceGui") and k.SurfaceGui:FindFirstChild("TextLabel")
							for char, num in pairs(Numberchar) do
								if num == amount then
									if label then
										label.Text = char..": "..count[char]
									end
								end
							end
						end
					end
					for _, v in pairs(result) do
						for _, k in pairs(MapStuff.AddAmountsPanel:GetChildren()) do
							if k.Name == "Key" and k:GetAttribute("AddAmount") == Numberchar[v] then
								if fireclickdetector and k:FindFirstChild("ClickDetector") then
									fireclickdetector(k.ClickDetector)
								end
							end
						end
						wait(0.7)
					end
				end
			end
		end
	end)
until MapStuff:FindFirstChild("AddAmountsPanel") and MapStuff.AddAmountsPanel:FindFirstChild("Screen") and MapStuff.AddAmountsPanel.Screen:FindFirstChild("SurfaceGui") and MapStuff.AddAmountsPanel.Screen.SurfaceGui:FindFirstChild("TextLabel") and MapStuff.AddAmountsPanel.Screen.SurfaceGui.TextLabel.Text:lower() == "unlocked"
wait(0.8)
for i, v in pairs(MapStuff.RotatedPaintings:GetChildren()) do
	if v.Name == "Painting" and tonumber(v:GetAttribute("RotationIndex")) ~= 0 then
		repeat task.wait(0.85)
			if tonumber(v:GetAttribute("RotationIndex")) > 0 and fireclickdetector then
				fireclickdetector(v.ClickDetector)
			end
		until tonumber(v:GetAttribute("RotationIndex")) == 0
		wait(0.25)
		v.ClickDetector:Destroy()
	end
end
wait(0.3)
repeat task.wait()
if MapStuff:FindFirstChild("ShovelChest") and MapStuff.ShovelChest:FindFirstChild("Hitbox") then
if fireclickdetector then
fireclickdetector(MapStuff.ShovelChest.Hitbox:FindFirstChild("ClickDetector"))
end
end
until game.Players.LocalPlayer.Backpack:FindFirstChild("Shovel") or game.Players.LocalPlayer.Character:FindFirstChild("Shovel")
wait(0.5)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Shovel") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Shovel").Parent = game.Players.LocalPlayer.Character
wait(0.3)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = MapStuff:FindFirstChild("Grave"):FindFirstChild("Hitbox").CFrame * CFrame.new(0, 10, 0)
wait(0.5)
repeat task.wait()
	if fireclickdetector then
		fireclickdetector(MapStuff:FindFirstChild("Grave"):FindFirstChild("Hitbox"):FindFirstChild("ClickDetector"))
	end
until game.Workspace:FindFirstChild("Rig") and game.Workspace.Rig:FindFirstChild("Head") and game.Workspace.Rig.Head.Transparency <= 0
wait(0.3)
if MapStuff:FindFirstChild("Grave"):FindFirstChild("Hitbox") then
	ClickFreezeBV(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = MapStuff:FindFirstChild("Grave"):FindFirstChild("Hitbox").CFrame * CFrame.new(0, 25, 0)
	end)
end
wait(2)
repeat task.wait(0.05)
if game.Workspace:FindFirstChild("Rig") and game.Workspace.Rig:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Workspace:FindFirstChild("Rig") and game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", game.Workspace.Rig:FindFirstChild("HumanoidRootPart"))
end
end
end
end
until (workspace:FindFirstChild("Slasher") and workspace.Slasher:FindFirstChild("Glove")) or (game.Workspace:FindFirstChild("Rig") and game.Workspace.Rig:FindFirstChild("Humanoid") and game.Workspace.Rig.Humanoid.Health <= 0)
wait(0.3)
repeat task.wait() until workspace:FindFirstChild("Slasher") and workspace.Slasher:FindFirstChild("Glove")
Unfreeze()
task.wait(0.3)
repeat task.wait()
if workspace:FindFirstChild("Slasher") and workspace.Slasher:FindFirstChild("Glove") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Slasher.Glove.CFrame * CFrame.new(0, 3, 0)
end
until workspace:FindFirstChild("Slasher") == nil
end
end)
