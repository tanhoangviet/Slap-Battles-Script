elseif game.PlaceId == 94481828238038 then
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
local CoreGui = game:GetService("CoreGui")
if not CoreGui:FindFirstChild("ClickButton") then
	local gui = Instance.new("ScreenGui", CoreGui)
	gui.Name = "ClickButton"
	
	local TextButton = Instance.new("TextButton")
	TextButton.Name = "FlingYour"
	TextButton.Size = UDim2.new(0.12, 0, 0.12, 0)
	TextButton.Position = UDim2.new(0.42, 0, 0.7, 0)
	TextButton.BackgroundColor3 = Color3.new(255, 255, 255)
	TextButton.Text = "Fling Your"
	TextButton.TextScaled = true
	TextButton.BackgroundTransparency = 0 
	TextButton.TextColor3 = Color3.new(0, 0, 0)
	TextButton.Font = Enum.Font.Code
	TextButton.Draggable = true
	TextButton.Visible = false
	TextButton.Parent = gui
	Instance.new("UICorner").Parent = TextButton
	TextButton.MouseButton1Click:Connect(function()
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			for i, v in pairs(workspace.Interactables.Instances:GetChildren()) do
				if v.Name == "object" and v:FindFirstChild("Root"):IsA("MeshPart") and v.Root.MeshId:find("11351437058") then
					if firetouchinterest then
			            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Root, 0)
			            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Root, 1)
					end
					break
				end
			end
		end
	end)
	local Stroke = Instance.new("UIStroke")
	Stroke.Color = Color3.new(0, 0, 0)
	Stroke.Thickness = 2.2
	Stroke.ApplyStrokeMode = "Border"
	Stroke.Parent = TextButton
	
	if TextButton then
		local ButtonClone = TextButton:Clone()
		ButtonClone.Name = "ButtonTween"
		ButtonClone.Text = "Tween Hell"
		ButtonClone.Visible = false
		ButtonClone.Parent = gui
		ButtonClone.MouseButton1Click:Connect(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil then
					local bv = Instance.new("BodyVelocity")
					bv.Name = "VelocityHandler"
					bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					bv.MaxForce = Vector3.new(100000, 100000, 100000)
					bv.Velocity = Vector3.new(0, 0, 0)
				end
				local Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.zone.Position).Magnitude / 31, Enum.EasingStyle.Linear), {CFrame = workspace.zone.CFrame})
				Tween:Play()
				Tween.Completed:Wait()
				Tween:Cancel()
				if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
				end
			end
		end)
	end
end
Window:ChangeTitle("SnowBall ☃️")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Combat")

MainGroup:AddSlider("Reach Aura", {
    Text = "Reach Slap Aura",
    Default = 25,
    Min = 10,
    Max = 50,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ReachSlapArua = Value
    end
})

MainGroup:AddToggle("Slap Aura", {
    Text = "Slap Aura",
    Default = false, 
    Callback = function(Value) 
_G.SlapAura = Value
while _G.SlapAura do
Remote:WaitForChild("tool"):WaitForChild("use"):FireServer("slap")
for i,v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
		if v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Team ~= v.Team then
			if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude then
				Remote:WaitForChild("tool"):WaitForChild("hit"):FireServer("slap", {Instance = v.Character.HumanoidRootPart, Direction = v.Character.HumanoidRootPart.Position})
				break
			end
		end
	end
end
task.wait(0.2)
end
    end
})

MainGroup:AddSlider("Power Snowball (Shallow)", {
    Text = "Power Snowball (Shallow)",
    Default = 5,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.PowerSnowball = Value
    end
})

MainGroup:AddToggle("Spam SnowBall", {
    Text = "Spam Throw Snowball",
    Default = false, 
    Callback = function(Value) 
_G.ThrowSnowBall = Value
while _G.ThrowSnowBall do
for i,v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
		if v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Team ~= v.Team then
			if 150 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude then
				Remote:WaitForChild("SnowballThrow"):FireServer(v.Character.HumanoidRootPart.Position, tonumber(_G.PowerSnowball))
				break
			end
		end
	end
end
task.wait()
end
    end
})

local MainGroup1 = Tabs.Tab:AddRightGroupbox("Misc")

MainGroup1:AddToggle("Heal", {
    Text = "Collect Heal",
    Default = false, 
    Callback = function(Value) 
_G.CollectHeal = Value
while _G.CollectHeal do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	for i, v in pairs(workspace.Interactables.Instances:GetChildren()) do
		if v.Name == "object" and v:FindFirstChild("Hot Cocoa") then
			local GetTouch = v:FindFirstChildWhichIsA("TouchTransmitter", true)
			if firetouchinterest then
	            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, GetTouch.Parent, 0)
	            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, GetTouch.Parent, 1)
			end
		end
	end
end
task.wait()
end
    end
})

MainGroup1:AddToggle("Button Fling", {
    Text = "Button Fling",
    Default = false, 
    Callback = function(Value) 
if CoreGui:FindFirstChild("ClickButton") and CoreGui.ClickButton:FindFirstChild("FlingYour") then
	CoreGui.ClickButton:FindFirstChild("FlingYour").Visible = Value
end
    end
})

MainGroup1:AddToggle("Button Tween Hell", {
    Text = "Button Tween Hell",
    Default = false, 
    Callback = function(Value) 
if CoreGui:FindFirstChild("ClickButton") and CoreGui.ClickButton:FindFirstChild("ButtonTween") then
	CoreGui.ClickButton:FindFirstChild("ButtonTween").Visible = Value
end
    end
})
