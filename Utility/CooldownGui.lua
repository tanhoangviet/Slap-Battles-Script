if game.CoreGui:FindFirstChild("Cooldown Script") == nil then
local gui = Create("ScreenGui", {Name = "Cooldown Script", IgnoreGuiInset = true, Parent = game.CoreGui})
local ImageLabel = Create("ImageLabel", {
    Size = UDim2.new(0.215, 0, 0.059, 0),
    Position = UDim2.new(1.01, 0, 0.305, -50),
    BackgroundTransparency = 1,
    AnchorPoint = Vector2.new(1, 0),
    Image = "rbxassetid://17253889398",
    ImageColor3 = Color3.fromRGB(255,255,255),
    Visible = false,
    ClipsDescendants = true,
    Parent = gui
}, {
    Create("UIAspectRatioConstraint", {
        AspectRatio = 6.438,
        AspectType = Enum.AspectType.FitWithinMaxSize
    })
})

local FrameBar = Create("Frame", {
    Size = UDim2.new(1, 0, 0.98, 0),
    Position = UDim2.new(0, 0, 0.5, 0),
    BackgroundTransparency = 1,
    AnchorPoint = Vector2.new(0, 0.5),
    ClipsDescendants = true,
    Parent = ImageLabel
}, {
    Create("ImageLabel", {
        Size = UDim2.new(0, 161, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Image = "rbxassetid://17253892073",
        ImageColor3 = Color3.fromRGB(255,255,255),
        AutoLocalize = true,
        Interactable = true
    })
})

local TextLabel = Create("TextLabel", {
    Size = UDim2.new(1, 0, 1, 0),
    Position = UDim2.new(0, 0, 0, 0),
    TextScaled = true,
    Text = "",
    Rotation = 15,
    TextColor3 = Color3.fromRGB(255,255,255),
    BackgroundTransparency = 1,
    Font = Enum.Font.FredokaOne,
    ZIndex = 2,
    Parent = ImageLabel
}, {
    Create("UIPadding", {
        PaddingBottom = UDim.new(0.15, 0),
        PaddingLeft = UDim.new(0.05, 0),
        PaddingRight = UDim.new(0.05, 0),
        PaddingTop = UDim.new(0.15, 0),
    }),
    Create("UIStroke", {
        Thickness = 0.84,
        StrokeSizingMode = Enum.StrokeSizingMode.FixedSize,
        Color = Color3.new(0, 0, 0)
    })
})
end
