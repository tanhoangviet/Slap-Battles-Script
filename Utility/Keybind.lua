if not game.CoreGui:FindFirstChild("Keybind Script") then
local gui = Create("ScreenGui", {Name = "Keybind Script", Enabled = false, IgnoreGuiInset = true, Parent = game.CoreGui})

function CreatedKeybind(edit)
edit.Name = edit.Name or "U"
edit.Key = edit.Key or Enum.KeyCode.U
edit.Text = edit.Text or "Keybind"
edit.Callback = edit.Callback or function() end

local Frame = Create("Frame", {
    Size = UDim2.new(0.198, 0, 0.094, 0),
    Position = UDim2.new(0.98, 0, 0.6, -50),
    BackgroundTransparency = 1,
    AnchorPoint = Vector2.new(1, 0),
    Visible = true,
    Parent = gui
}, {
    Create("UIAspectRatioConstraint", {
        AspectRatio = 6.07,
        AspectType = Enum.AspectType.FitWithinMaxSize
    }),
	Create("UIListLayout", {
        Padding = Vector2.new(0.25, 0),
		SortOrder = "LayoutOrder",
		VerticalAlignment = "Bottom",
    })
})

local Button = Create("Frame", {
    Size = UDim2.new(1, 0, 1, 0),
    Position = UDim2.new(0, 0, 0, 0),
    BackgroundTransparency = 1,
    AnchorPoint = Vector2.new(1, 0),
    Visible = true,
    Parent = Frame
})

local Folder = Create("Folder", {Parent = Button}, {
	Create("TextLabel", {
	    Size = UDim2.new(0.167, 0, 0.759, 0),
	    Position = UDim2.new(0.051, 0, 0.001, 0),
	    BackgroundTransparency = 1,
		TextColor3 = Color3.new(255,255,255),
		Font = "FredokaOne",
		Text = edit.Name,
		TextScaled = true,
		ZIndex = 2,
	    Visible = true
	}, {
		Create("UIStroke", {
		    Thickness = 1.296
		})
	})
})

local ButtonTop = Create("ImageLabel", {
	Size = UDim2.new(0.17, 0, 1, 0),
    Position = UDim2.new(0.049, 0, -0.054, 0),
    BackgroundTransparency = 1,
    Image = "rbxassetid://132237752209803",
    ImageColor3 = Color3.fromRGB(47,47,47),
	Parent = Button
}, {
	Create("ImageLabel", {
		Size = UDim2.new(0.9, 0, 0.9, 0),
	    Position = UDim2.new(0.5, 0, 0, 0),
	    BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
	    Image = "rbxassetid://94740529495833",
	    ImageColor3 = Color3.fromRGB(84,84,84),
	})
})

local ButtonName = Create("TextLabel", {
	Size = UDim2.new(0.703, 0, 0.619, 0),
    Position = UDim2.new(0.288, 0, 0.055, 0),
    BackgroundTransparency = 1,
	TextColor3 = Color3.new(255,255,255),
	Font = "FredokaOne",
	Text = edit.Text,
	TextScaled = true,
    Visible = true,
	Parent = Button
}, {
	Create("UIStroke", {
	    Thickness = 1.232
	})
})

local textLabel = Folder:FindFirstChildOfClass("TextLabel")
local innerImage = ButtonTop:FindFirstChildOfClass("ImageLabel")
local TweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
table.insert(_G.ConnectFun, UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.KeyCode == edit.Key then
		TweenService:Create(textLabel, TweenInfo, {Position = UDim2.new(0.051,0,0.001,0)}):Play()
		TweenService:Create(innerImage, TweenInfo, {Position = UDim2.new(0.5,0,0,0), ImageColor3 = Color3.fromRGB(84,84,84)}):Play()
	end
end))

table.insert(_G.ConnectFun, UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if CheckCooldown() and (game.CoreGui:FindFirstChild("Keybind Script") and game.CoreGui:FindFirstChild("Keybind Script").Enabled) or (game.CoreGui:FindFirstChild("Gui Roll Script") and not game.CoreGui:FindFirstChild("Gui Roll Script").Enabled) then return end
	if input.KeyCode == edit.Key then
		TweenService:Create(textLabel, TweenInfo, {Position = UDim2.new(0.05,0,0.001,3)}):Play()
		TweenService:Create(innerImage, TweenInfo, {Position = UDim2.new(0.5,0,0,4), ImageColor3 = Color3.fromRGB(122,122,122)}):Play()
		pcall(edit.Callback)
	end
end))
end
end

if not MobileOn and CreatedKeybind then
CreatedKeybind({
	Text = "Roll Script",
	Callback = function()
		local Players = game:GetService("Players")
		local AnimationRoll = Instance.new("Animation")
		AnimationRoll.AnimationId = "rbxassetid://16299510063"
		local LocalPlr = Players.LocalPlayer
	    if LocalPlr.Character and LocalPlr.Character:FindFirstChild("Humanoid") and LocalPlr.Character.Humanoid.Health > 0 and not LocalPlr.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("FreezeBV") then
			Cooldown(2, "Roll Script")
	        local humanoid = LocalPlr.Character:WaitForChild("Humanoid")
	        local hrp = LocalPlr.Character:WaitForChild("HumanoidRootPart")
	        humanoid.Animator:LoadAnimation(AnimationRoll):Play()
	        local BV = CreateFreezeBV({Velocity = hrp.CFrame.LookVector * 100, MaxForce = Vector3.new(1e6, 0, 1e6)})
	        game:GetService("Debris"):AddItem(BV, 0.17)
	        for _, v in pairs(LocalPlr.Character:GetDescendants()) do
	            if v:IsA("BasePart") then
	                v.Massless = true
	            end
	        end
	        task.delay(0.6, function()
	            if LocalPlr.Character then
	                for _, v in pairs(LocalPlr.Character:GetChildren()) do
	                    if v:IsA("BasePart") then
	                        v.Massless = false
	                    end
	                end
	            end
	        end)
	    end
	end
})
end

