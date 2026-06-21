------------------------------------------------------------------------
function Unfreeze()
	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("FreezeBVButton") then
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("FreezeBVButton"):Destroy()
	end
end
function ClickFreezeBV(call)
local success, err = pcall(call)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("AntiRagBV1") == nil then
	local bv = Instance.new("BodyVelocity")
	bv.Name = "FreezeBVButton"
	bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	bv.MaxForce = Vector3.new(100000, 100000, 100000)
	bv.Velocity = Vector3.new(0, 0, 0)
end
local CoreGui = game:GetService("CoreGui")
if not CoreGui:FindFirstChild("ClickDestroyFreezeBV") then
	local gui = Instance.new("ScreenGui", CoreGui)
	gui.Name = "ClickDestroyFreezeBV"
	
	Freeze = true
	TextButton = Instance.new("TextButton")
	TextButton.Name = "Remote Freeze"
	TextButton.Size = UDim2.new(0.12, 0, 0.12, 0)
	TextButton.Position = UDim2.new(0.42, 0, 0.7, 0)
	TextButton.BackgroundColor3 = Color3.new(255, 255, 255)
	TextButton.Text = "Unfreeze"
	TextButton.TextScaled = true
	TextButton.BackgroundTransparency = 0 
	TextButton.TextColor3 = Color3.new(0, 0, 0)
	TextButton.Font = Enum.Font.Code
	TextButton.Draggable = true
	TextButton.Parent = gui
	Instance.new("UICorner").Parent = TextButton
	TextButton.MouseButton1Click:Connect(function()
		Freeze = not Freeze
		if not Freeze then
			if TextButton then
				TextButton.Text = "Freeze"
			end
			Unfreeze()
		else
			if TextButton then
				TextButton.Text = "Unfreeze"
			end
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("FreezeBVButton") == nil then
				local bv = Instance.new("BodyVelocity")
				bv.Name = "FreezeBVButton"
				bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
				bv.MaxForce = Vector3.new(100000, 100000, 100000)
				bv.Velocity = Vector3.new(0, 0, 0)
			end
			pcall(call)
		end
	end)
	local Stroke = Instance.new("UIStroke")
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = 2.2
	Stroke.ApplyStrokeMode = "Border"
	Stroke.Parent = TextButton
end
end
