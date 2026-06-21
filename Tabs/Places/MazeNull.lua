elseif game.PlaceId == 14422118326 then
Window:ChangeTitle("Maze Null ☠️")

Tabs = {
    Tab = Window:AddTab("Misc", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Misc")

Misc1Group:AddToggle("Anti Null", {
    Text = "Anti Null",
    Default = false, 
    Callback = function(Value) 
_G.AntiNull = Value
while _G.AntiNull do
for i,v in pairs(game.Workspace.Mobs:GetChildren()) do
if v.Name == "Imp" and v:FindFirstChild("Body") then
game:GetService("ReplicatedStorage").b:FireServer(v.Body)
end
end
task.wait()
end
    end
})

Misc1Group:AddInput("FlySpeed", {
    Default = "50",
    Numeric = true,
    Text = "Fly Speed",
    Placeholder = "UserFlySpeed",
    Callback = function(Value)  
        _G.SetSpeedFly = Value  
    end  
})

_G.SetSpeedFly = 50
Misc1Group:AddToggle("Start Fly", {
    Text = "Start Fly",
    Default = false, 
    Callback = function(Value) 
Fly(Value)
	end
}):AddKeyPicker("Fly", {
   Default = "R",
   Text = "Fly",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc1Group:AddButton("Teleport Rob Plushie", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4833.31, -214, 800.529)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace._ugcQuestObjectBobPlushie.Handle.CFrame
end)

Misc1Group:AddDropdown("Badge", {
    Text = "Badge",
    Values = {"Tinkever", "Null"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Null" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5458, -184, 1822)
elseif Value == "Tinkever" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4833.31, -214, 800.529)
end
    end
})
