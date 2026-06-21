elseif game.PlaceId == 97220865182663 then
Window:ChangeTitle("Boss Mouse 🐀")
if workspace.Game:FindFirstChild("Buildings") and workspace.Game.Buildings:FindFirstChild("City") and workspace.Game.Buildings.City:FindFirstChild("City") == nil then
game:GetService("ReplicatedStorage").Remotes.PlaceBuilding:FireServer("City", Vector3.new(4.6566128730773926e-09, 43.496280670166016, -45), 0)
end

Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local Misc1Group = Tabs.Tab:AddLeftGroupbox("Badge")

Misc1Group:AddButton("Get Glove 3000 Orb", function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UnlockGloveWithOrbs"):FireServer()
end)

Misc1Group:AddToggle("Auto Slap Rat", {
    Text = "Auto Slap Rat",
    Default = false, 
    Callback = function(Value) 
_G.AutoSlapMouse = Value
while _G.AutoSlapMouse do
if game.Workspace:FindFirstChild("Game") and game.Workspace.Game:FindFirstChild("Enemies") then
for i,v in pairs(workspace.Game.Enemies:GetChildren()) do
	if v.Name == "Rat" and v:FindFirstChild("Hitbox") then
	    v.Hitbox.Anchored = true
		game:GetService("ReplicatedStorage").Remotes.GloveHit:FireServer(v.Hitbox)
		end
	end
end
task.wait()
end
    end
})
