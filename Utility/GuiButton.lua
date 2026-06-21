if game.CoreGui:FindFirstChild("Gui Button Script") == nil then
local gui = Create("ScreenGui", {Name = "Gui Button Script", Enabled = false, Parent = game.CoreGui})

function CreatedButton(edit)
edit.ButtonName = edit.ButtonName or "U"
edit.ButtonPosition = edit.ButtonPosition or UDim2.new(0.175, 0, 0.175, 0)
edit.ButtonSize = edit.ButtonSize or UDim2.new(0.65, 0, 0.65, 0)
edit.ButtonImage = edit.ButtonImage or "rbxassetid://82648533253503"
edit.Callback = edit.Callback or function() end

local Frame = Create("Frame", {
    Name = edit.ButtonName.."AbilityFrame",
    Size = UDim2.new(0.3, 0, 0.5, 0),
    Position = UDim2.new(0.65, 0, 0.5, 0),
    BackgroundTransparency = 1,
    ZIndex = 1,
    Parent = gui
})

local FrameB = Create("ImageButton", {
    Name = "Button"..edit.ButtonName,
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0.45, 0, 0.45, 0),
    Position = UDim2.new(0.7, -25, -0.25, -25),
    BackgroundTransparency = 1,
    ZIndex = 1,
    Draggable = true,
    Parent = Frame
}, {
    Create("UIAspectRatioConstraint", {
        AspectType = Enum.AspectType.FitWithinMaxSize,
        AspectRatio = 1,
        DominantAxis = "Width"
    })
})

local UButton = Create("ImageLabel", {
    Name = edit.ButtonName.."Button",
    Position = UDim2.new(0.175, 0, 0.175, 0),
    Size = UDim2.new(0.65, 0, 0.65, 0),
    BackgroundTransparency = 1,
    Image = edit.ButtonImage,
    ImageColor3 = Color3.fromRGB(255, 255, 255),
    ZIndex = 1,
    Parent = FrameB
})

local DefaultSize = FrameB.Size
local function PlayHoverSound(id)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://"..id
    sound.Volume = 2
    sound.PlaybackSpeed = 1
    sound.Parent = workspace
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 2)
end

FrameB.MouseEnter:Connect(function()
    PlayHoverSound(10066942189)
    TweenService:Create(UButton, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        ImageColor3 = Color3.fromRGB(115, 115, 115),
    }):Play()
end)

FrameB.MouseLeave:Connect(function()
    TweenService:Create(UButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        ImageColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

FrameB.MouseButton1Click:Connect(function()
	PlayHoverSound(10066936758)
	UButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
	if CheckCooldown() then return end
	local suc, error = pcall(edit.Callback)
	if not suc then
		print(error)
	end
end)
end
end

if MobileOn and CreatedButton then
CreatedButton({
	Callback = function()
		if not AnimationRoll then
			AnimationRoll = Instance.new("Animation")
			AnimationRoll.AnimationId = "rbxassetid://16299510063"
		end
	    local LocalPlr = game:GetService("Players").LocalPlayer
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

