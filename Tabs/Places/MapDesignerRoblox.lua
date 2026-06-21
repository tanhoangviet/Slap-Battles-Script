elseif game.PlaceId == 136005148166028 then
Window:ChangeTitle("Map Designer Roblox 🛠️")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Badge", function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if fireclickdetector then
fireclickdetector(workspace.Kitchen.Fridge.HitBox:FindFirstChild("ClickDetector"))
end
repeat task.wait() until workspace.Kitchen.Fridge:FindFirstChild("GrantAward") or workspace.Kitchen.Fridge:FindFirstChild("GrantAward") == nil
wait(0.25)
if fireclickdetector then
if workspace.Kitchen.Fridge:FindFirstChild("GrantAward") then
fireclickdetector(workspace.Kitchen.Fridge.GrantAward:FindFirstChild("ClickDetector"))
end
end
repeat task.wait() until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Brewzucki") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki")
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki").Parent = game:GetService("Players").LocalPlayer.Backpack
end
wait(0.5)
local OldCF = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
if fireclickdetector then
	if workspace.Microwave:FindFirstChild("HitBox") then
		fireclickdetector(workspace.Microwave.HitBox:FindFirstChild("ClickDetector"))
	end
end
wait(0.8)
repeat task.wait()
if fireclickdetector then
	if workspace.Microwave:FindFirstChild("HitBox") then
		fireclickdetector(workspace.Microwave.HitBox:FindFirstChild("ClickDetector"))
	end
end
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Brewzucki") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki")
wait(0.2)
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Brewzucki") then
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Brewzucki").Parent = game:GetService("Players").LocalPlayer.Character
end
wait(0.3)
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki") then
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Brewzucki"):Activate()
end
wait(3.5)
if fireclickdetector then
	fireclickdetector(workspace.BasementTable.HitBox:FindFirstChild("ClickDetector"))
end
wait(1)
if fireproximityprompt then
	fireproximityprompt(workspace.BasementDoor.Door.Base:FindFirstChild("ProximityPrompt"))
end
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("RealComputerScreenGui") ~= nil then
if workspace.ComputerChair:FindFirstChild("Seat") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.ComputerChair.Seat.CFrame
end
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("RealComputerScreenGui") and game:GetService("Players").LocalPlayer.PlayerGui.RealComputerScreenGui.Enabled == true
wait(0.5)
if game:GetService("Players").LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen:FindFirstChild("SuggestionsQTE").Visible == true then
repeat task.wait()
for i, v in pairs(game.Players.LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen.SuggestionsQTE:GetChildren()) do
if v.Name:find("Popup_") then
v.Position = game:GetService("Players").LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen.SuggestionsQTE:FindFirstChild("RecyclingBin").Position
end
end
until game:GetService("Players").LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen:FindFirstChild("UpdateGameQTE").Visible == true
game:GetService("Players").LocalPlayer.PlayerGui.RealComputerScreenGui.ComputerScreen.UpdateGameQTE.MainFrame.PatchNotesTextBox.Text = "Articles - Hub, how do you feel, or are things in your life okay, you must be struggling, do you see you are tired or not?, Skibidi Toilet Dop Dop Yes Yes"
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("RealComputerScreenGui") == nil
wait(0.5)
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true then
game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
end
end
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Stages.Stage4:FindFirstChild("CloseDavidsDoor").CFrame
wait(0.7)
GuiClick = game:GetService("Players").LocalPlayer.PlayerGui.DavidShrineQTE:FindFirstChild("DavidShrineQTE")
repeat task.wait()
if GuiClick.Mobile.SpawnArea:FindFirstChild("TapLabel") then
GuiClick.Mobile.SpawnArea:FindFirstChild("TapLabel").Size = UDim2.new(1001, 0, 1001, 0)
game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
elseif GuiClick:FindFirstChild("PC").Visible == true and GuiClick.PC:FindFirstChild("QuickTimeLabel").Visible == true then
game:GetService("VirtualInputManager"):SendKeyEvent(true, GuiClick.PC.QuickTimeLabel.Text, false, x)
end
until game:GetService("Players").LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE:FindFirstChild("ScoreLabel").Visible == true and game:GetService("Players").LocalPlayer.PlayerGui.DavidShrineQTE.DavidShrineQTE:FindFirstChild("ScoreLabel").Text == "Score: 150"
end
end
end)
