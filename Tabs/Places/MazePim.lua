elseif game.PlaceId == 92483185275059 then
Window:ChangeTitle("Maze Pim 🕳️")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Badge")

MainGroup:AddButton("Get Badge", function()
if LoadingBadge then return end
LoadingBadge = true
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Transition") and game:GetService("Players").LocalPlayer.PlayerGui.Transition:FindFirstChild("Frame")
wait(0.5)
Transition = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Transition") and game:GetService("Players").LocalPlayer.PlayerGui.Transition:FindFirstChild("Frame")
ClickFreezeBV(function() end)
repeat task.wait(0.5)
local Maze = workspace:FindFirstChild("Maze")
local EndPrompt = Maze and Maze:FindFirstChild("EndPrompt", true)
local CylinderStart = workspace:FindFirstChild("Shed") and workspace.Shed:FindFirstChild("StartDoor") and workspace.Shed.StartDoor:FindFirstChild("Cylinder.025")
local StartEnter = CylinderStart and CylinderStart:FindFirstChild("Attachment") and CylinderStart.Attachment:FindFirstChildOfClass("ProximityPrompt")

if Transition and Transition.BackgroundTransparency == 1 then
	if EndPrompt then
		game.Players.LocalPlayer.Character:PivotTo(EndPrompt.Parent.Parent.CFrame)
		if fireproximityprompt then
			fireproximityprompt(EndPrompt)
		end
	elseif not Maze then
		if CylinderStart and StartEnter then
			game.Players.LocalPlayer.Character:PivotTo(CylinderStart.CFrame)
			if fireproximityprompt then
				fireproximityprompt(StartEnter)
			end
		end
	end
end
until workspace:FindFirstChild("Maze") and workspace.Maze:FindFirstChild("BarnMaze")
repeat task.wait() until Transition and Transition.BackgroundTransparency == 1
wait(0.7)
while true do
local Badge = workspace.Maze:FindFirstChild("ChaseOutroStart", true)
if Badge then
	game.Players.LocalPlayer.Character:PivotTo(Badge.CFrame)
else
	game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-84, 39, 1421))
end
task.wait()
end
end)
