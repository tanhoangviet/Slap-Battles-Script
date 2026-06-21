elseif game.PlaceId == 95706409702231 then
if workspace:FindFirstChild("Attacks") then
	workspace:FindFirstChild("Attacks"):Destroy()
end
if workspace:FindFirstChild("Effects") then
	workspace:FindFirstChild("Effects"):Destroy()
end
Window:ChangeTitle("Boss Jerry ☃️")

Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Badge")

MainGroup:AddButton("Get Badge", function()
CreateFreezeBV()
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.KillPart.CFrame * CFrame.new(0, 150, 0)
game:GetService("RunService").RenderStepped:Connect(function()
	if workspace:FindFirstChild("Boss") and workspace.Boss:FindFirstChildOfClass("Humanoid") then
		workspace.Boss:FindFirstChildOfClass("Humanoid").Health = -math.huge
		workspace.Boss:FindFirstChildOfClass("Humanoid").Sit = true
	end
end)
end)
