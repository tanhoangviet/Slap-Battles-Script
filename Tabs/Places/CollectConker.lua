elseif game.PlaceId == 101113181694564 then
Window:ChangeTitle("Collect Conker 🍎")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Badge")

MainGroup:AddButton("Get Badge", function()
if LoadingBadge then return end
LoadingBadge = true
game:GetService("ReplicatedStorage").Remotes.Dialogue.FinishedNPCDialogue:FireServer()
repeat task.wait() until workspace:FindFirstChild("Map"):FindFirstChild("Props"):FindFirstChild("BasketCollection") and workspace.Map.Props.BasketCollection:FindFirstChild("Basket")
fireclickdetector(workspace.Map.Props.BasketCollection.Basket.ClickDetector)
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("ConkerHoldVisual")
ClickFreezeBV(function() 
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CoreAssets.Bowl["Sphere.002"].CFrame
end)
task.wait(2.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CoreAssets.Bowl["Sphere.002"].CFrame
spawn(function()
	workspace.NPCs.DescendantAdded:Connect(function(s)
	    if s.Name == "squirrel" then
		    local ok, err = pcall(function()
		        while task.wait() and s do
					if s:FindFirstChild("HumanoidRootPart") then
			            game:GetService("ReplicatedStorage").Remotes.tool.use:FireServer("slap")
			            game:GetService("ReplicatedStorage").Remotes.tool.hit:FireServer("slap", {Instance = s.HumanoidRootPart})
					end
				end
	        end)
	    end
	end)
	workspace.DescendantAdded:Connect(function(n)
	    if n.Name == "Conker" then
	        if n:FindFirstChildOfClass("TouchTransmitter") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = n.CFrame
				if firetouchinterest then
		            firetouchinterest(n, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
		            firetouchinterest(n, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
				end
	            task.delay(0.1, function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CoreAssets.Bowl["Sphere.002"].CFrame
					task.wait(0.5)
					workspace.Map.CoreAssets.Bowl.ProximityPrompt.HoldDuration = 0
					if fireproximityprompt then
						fireproximityprompt(workspace.Map.CoreAssets.Bowl.ProximityPrompt)
					end
					pcall(function()
						workspace.Map.CoreAssets.Bowl.ProximityPrompt:InputHoldBegin()
		                workspace.Map.CoreAssets.Bowl.ProximityPrompt:InputHoldEnd()
					end)
	            end)
	        end
	    end
	end)
end)
end)
