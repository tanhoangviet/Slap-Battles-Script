elseif game.PlaceId == 92516899071319 then
Window:ChangeTitle("Map Dreams 💤")
Tabs = {
	Tab = Window:AddTab("Misc", SolarIcon.Misc),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Misc")

Misc1Group:AddToggle("Auto Collect Pillow", {
    Text = "Auto Collect Pillow",
    Default = false, 
    Callback = function(Value) 
_G.AutoCollectPillow = Value
while _G.AutoCollectPillow do
for i,v in pairs(game.Workspace.map:GetChildren()) do
	if v.Name == "Meshes/pillow1" and v:FindFirstChild("ClickDetector") then
		fireclickdetector(v:FindFirstChild("ClickDetector"))
		end
	end
task.wait()
end
    end
})

Misc1Group:AddButton("Pick Up Unstable Artifact", function()
	workspace["Unstable Artifact"].Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
