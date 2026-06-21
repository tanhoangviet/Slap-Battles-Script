function ShowButtonU(show)
	if MobileOn then
		if game.CoreGui:FindFirstChild("Gui Button Script") then
			game.CoreGui:FindFirstChild("Gui Button Script").Enabled = show
		end
	else
		if game.CoreGui:FindFirstChild("Keybind Script") then
			game.CoreGui:FindFirstChild("Keybind Script").Enabled = show
		end
	end
end

if not game.CoreGui:FindFirstChild("Gui Track") then
    local gui = Create("ScreenGui", {Name = "Gui Track", Enabled = false, Parent = game.CoreGui})
    local Frame = Create("Frame", {
        Size = UDim2.new(0.2, 0, 0.1, 0),
        Position = UDim2.new(0.02, 0, 0.87, 0),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderColor3 = Color3.new(0, 0, 0),
        BorderSizePixel = 1,
        Active = true,
        BackgroundTransparency = 0,
        Parent = gui
    }, {
        Create("UIStroke", {
            Color = Color3.new(0, 0, 0),
            Thickness = 2.5
        }),
        Create("UICorner", {
            CornerRadius = UDim.new(0, 8)
        })
    })

    local Frame1 = Create("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = Color3.fromRGB(255, 0, 0),
        BorderColor3 = Color3.new(0, 0, 0),
        BorderSizePixel = 1,
        Active = true,
        BackgroundTransparency = 0.3,
        Parent = Frame
    }, {
        Create("UICorner", {
            CornerRadius = UDim.new(0, 8)
        })
    })
    
    local Frame2 = Create("Frame", {
        Name = "Frame1",
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Parent = Frame1
    })

    local Frame3 = Create("Frame", {
        Name = "FrameTo",
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = Color3.fromRGB(0, 255, 0),
        BackgroundTransparency = 0.15,
        Parent = Frame2
    }, {
		Create("UICorner", {
            CornerRadius = UDim.new(0, 8)
        })
	})

    local TextLabel = Create("TextLabel", {
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = Color3.new(0, 0, 0),
        BorderColor3 = Color3.new(0, 0, 0),
        BorderSizePixel = 1,
        Text = "",
        TextSize = 16,
        ZIndex = 5,
        BackgroundTransparency = 1,
        TextColor3 = Color3.new(0, 0, 0),
        Font = Enum.Font.Code,
        TextWrapped = true,
        Parent = Frame
    }, {
        Create("UITextSizeConstraint", {
            MaxTextSize = 35
        })
    })
end
function GuiTrackUpdate(enabled, update)
	update = update or {}
	update.Text = update.Text or "Bruh"
	update.Size = update.Size or 1
	if update.Size > 1 then
		update.Size = 1
	end
	local enabledGui = enabled or false
	if not enabledGui then
		game.CoreGui["Gui Track"].Frame:FindFirstChild("TextLabel").Text = "Nah"
		game.CoreGui["Gui Track"].Frame.Frame.Frame1.Size = UDim2.new(0, 0, 1, 0)
	end
	if game.CoreGui:FindFirstChild("Gui Track") then
		game.CoreGui["Gui Track"].Enabled = enabledGui
		if game.CoreGui["Gui Track"].Enabled then
			game.CoreGui["Gui Track"].Frame:FindFirstChild("TextLabel").Text = update.Text
			local TweenBar = game:GetService("TweenService"):Create(game.CoreGui["Gui Track"].Frame.Frame.Frame1, TweenInfo.new(1.5), {Size = UDim2.new(update.Size, 0, 1, 0)})
			TweenBar:Play()
		end
	end
end
pcall(function()
	if require then
		ControlMove = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	end
end)
ctrl = {f = 0, b = 0, l = 0, r = 0}
ctrlCould = {f = 0, b = 0, l = 0, r = 0}
table.insert(_G.ConnectFun, UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if not _G.SetSpeedFlyCloud then
		_G.SetSpeedFlyCloud = 0
	elseif not _G.SetSpeedFly then
		_G.SetSpeedFly = 0
	end
	if input.KeyCode == Enum.KeyCode.W then
		ctrl.f = _G.SetSpeedFly
		ctrlCould.f = _G.SetSpeedFlyCloud
	elseif input.KeyCode == Enum.KeyCode.S then
		ctrl.b = -_G.SetSpeedFly
		ctrlCould.b = -_G.SetSpeedFlyCloud
	elseif input.KeyCode == Enum.KeyCode.A then
		ctrl.l = -_G.SetSpeedFly
		ctrlCould.l = -_G.SetSpeedFlyCloud
	elseif input.KeyCode == Enum.KeyCode.D then
		ctrl.r = _G.SetSpeedFly
		ctrlCould.r = _G.SetSpeedFlyCloud
	end
end))
table.insert(_G.ConnectFun, UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.W then
		ctrl.f = 0
		ctrlCould.f = 0
	elseif input.KeyCode == Enum.KeyCode.S then
		ctrl.b = 0
		ctrlCould.b = 0
	elseif input.KeyCode == Enum.KeyCode.A then
		ctrl.l = 0
		ctrlCould.l = 0
	elseif input.KeyCode == Enum.KeyCode.D then
		ctrl.r = 0
		ctrlCould.r = 0
	end
end))
