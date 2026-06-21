elseif game.PlaceId == 9431156611 then
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
Code = {}
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
	if v.Name == "IMGTemplate" then
	    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
			    table.insert(Code, "4")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
			    table.insert(Code, "2")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
			    table.insert(Code, "3")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
			    table.insert(Code, "9")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
			    table.insert(Code, "8")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
			    table.insert(Code, "2")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
			    table.insert(Code, "8")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
			    table.insert(Code, "3")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
			    table.insert(Code, "7")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
			    table.insert(Code, "8")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
			    table.insert(Code, "2")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
			    table.insert(Code, "6")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
			    table.insert(Code, "3")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
			    table.insert(Code, "6")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
			    table.insert(Code, "6")
			elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
			    table.insert(Code, "2")
			end
	    end
	end
end

Window:ChangeTitle("Slap Royale 🏆")

Tabs = {
	Tab = Window:AddTab("Combat", "rbxassetid://7733674079"),
    Tab1 = Window:AddTab("Anti / Misc", "rbxassetid://7734056608"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

TabBoxCombat1 = Tabs.Tab:AddLeftTabbox()
local Combat1Group = TabBoxCombat1:AddTab("Combat")

Combat1Group:AddToggle("Slap Aura", {
    Text = "Slap Aura",
    Default = false, 
    Callback = function(Value)
_G.SlapAura = Value
while _G.SlapAura do
	for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character then
			if v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("HumanoidRootPart") and not v.Character:GetAttribute("inBus") and v.Character:GetAttribute("inMatch") == true and v.Character:GetAttribute("Ragdolled") == false and not game.Players.LocalPlayer.Character:GetAttribute("inBus") and game.Players.LocalPlayer.Character:GetAttribute("inMatch") == true and game.Players.LocalPlayer.Character:GetAttribute("Ragdolled") == false then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 20 then
					game.ReplicatedStorage.Remotes.Slap:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
				end
			end
		end
	end
task.wait(0.3)
end
    end
}):AddKeyPicker("SlapAura", {
   Default = "F",
   Text = "Slap Aura",
   Mode = "Toggle",
   SyncToggleState = true
})

_G.GloveExtendReach = 5
Combat1Group:AddSlider("Extend Glove", {
    Text = "Extend Glove",
    Default = 5,
    Min = 2,
    Max = 20,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.GloveExtendReach = Value
    end
})

 Combat1Group:AddDropdown("Extend Option", {
    Text = "Extend Option",
    Values = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
    Default = "",
    Multi = false,
    Callback = function(Value)
GloveExtendOption = Value
    end
})

 Combat1Group:AddToggle("Extend Glove", {
    Text = "Extend Glove",
    Default = false, 
    Callback = function(Value) 
_G.GloveExtendGet = Value
if _G.GloveExtendGet == false then
	local function GloveOff(v)
		if v:IsA("Tool") and v:FindFirstChild("Glove") then
	        v:FindFirstChild("Glove").Size = Vector3.new(2.5, 2.5, 1.7)
	        v:FindFirstChild("Glove").Transparency = 0
	    end
	end
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		GloveOff(v)
	end
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		GloveOff(v)
	end
end
while _G.GloveExtendGet do
local function GloveReachOn(v)
	if v.ClassName == "Tool" and v:FindFirstChild("Glove") then
        if GloveExtendOption == "Meat Stick" then
	        GloveReachTo = Vector3.new(0, _G.GloveExtendReach, 2)
        elseif GloveExtendOption == "Pancake" then
	        GloveReachTo = Vector3.new(0, _G.GloveExtendReach, _G.GloveExtendReach)
        elseif GloveExtendOption == "Growth" then
	        GloveReachTo = Vector3.new(_G.GloveExtendReach,_G.GloveExtendReach,_G.GloveExtendReach)
        elseif GloveExtendOption == "North Korea Wall" then
	        GloveReachTo = Vector3.new(_G.GloveExtendReach,0,_G.GloveExtendReach)
        elseif GloveExtendOption == "Slight Extend" then
	        GloveReachTo = Vector3.new(3, 3, 3.7)
		end
        v:FindFirstChild("Glove").Size = GloveReachTo or Vector3.new(2.5, 2.5, 1.7)
        v:FindFirstChild("Glove").Transparency = 0.5
    end
end
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	GloveReachOn(v)
end
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	GloveReachOn(v)
end
task.wait()
end
    end
})

_G.ReachHitbox = 10
Combat1Group:AddSlider("Reach HitBox", {
    Text = "Reach Hitbox",
    Default = 10,
    Min = 10,
    Max = 25,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ReachHitbox = Value
    end
})

Combat1Group:AddToggle("Hitbox Player", {
    Text = "Hitbox Player",
    Default = false, 
    Callback = function(Value) 
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
        v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
        v.Character.HumanoidRootPart.Transparency = 0.75
    end
end
task.wait()
end
if _G.HitboxPlayer == false then
	for i,v in pairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
            v.Character.HumanoidRootPart.Transparency = 1
        end
    end
end
    end
})

Combat1Group:AddButton({
    Text = "Leave Bus Early",
    Tooltip = "People Vote You",
    Func = function()
game.ReplicatedStorage.Remotes.BusJumping:FireServer()
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("JumpPrompt")
game.Players.LocalPlayer.PlayerGui.JumpPrompt:Destroy()
    end
})

Combat1Group:AddButton({
    Text = "Check Rank Admin / Other",
    Func = function()
for i,v in pairs(game.Players:GetChildren()) do
	if v:GetRankInGroupAsync(9950771) >= 2 then
	    game.Players.LocalPlayer:Kick("High Rank Player Detected.".." [ "..v.Name.." ]")
		break
    end
end
    end
})

local Combat2Group = Tabs.Tab:AddRightGroupbox("Item")

Combat2Group:AddToggle("Auto Use Item Power", {
    Text = "Auto Use Item Power",
    Default = false,
    Callback = function(Value)
_G.AutoUseItemPower = Value
while _G.AutoUseItemPower do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	    if v.Name == "Bull's essence" or v.Name == "Potion of Strength" or v.Name == "Boba" or v.Name == "Speed Potion" or v.Name == "Frog Potion" or v.Name == "Strength Brew" or v.Name == "Frog Brew" or v.Name == "Speed Brew" then
	        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
	        v:Activate()
	    end
	end
end
task.wait(0.5)
end
    end
})

Combat2Group:AddToggle("Auto Pickup Item", {
    Text = "Auto Pickup Item",
    Default = false,
    Callback = function(Value)
_G.AutoPickUpItem = Value
while _G.AutoPickUpItem do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	for i, v in ipairs(game.Workspace.Items:GetChildren()) do
		if v:IsA("Tool") and v:FindFirstChild("Handle") and typeof(v.Handle:GetAttribute("ItemId")) == "string" then
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Handle.Position).Magnitude <= 17 then
				game.ReplicatedStorage.Remotes.Item:FireServer(v:FindFirstChild("Handle"):GetAttribute("ItemId"))
			end
		end
	end
end
task.wait(0.3)
end
    end
})

Combat2Group:AddSlider("Health Throw Tomahawk", {
    Text = "Health Aimbot",
    Default = 25,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Compact = true
})

Combat2Group:AddToggle("Throw Aimbot Tomahawk", {
    Text = "Throw Aimbot Tomahawk",
    Default = false,
    Callback = function(Value)
_G.TomahawkAimbot = Value
while _G.TomahawkAimbot do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	if game.Players.LocalPlayer.Character:FindFirstChild("Tomahawk") then
		for i, v in pairs(game.Players:GetChildren()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character:FindFirstChildOfClass("Humanoid").Health <= (Options["Health Throw Tomahawk"].Value or 50) then
				if v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:GetAttribute("inMatch") == true and game.Players.LocalPlayer.Character:GetAttribute("inMatch") == true and game.Players.LocalPlayer.Character:GetAttribute("Ragdolled") == false then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Throw"):FireServer(v.Character.HumanoidRootPart.Position + Vector3.new(0, 3, 0))
					end
				end
			end
		end
	end
end
task.wait()
end
    end
})

Combat2Group:AddSlider("AutoHeal", {
    Text = "Auto Heal",
    Default = 25,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Compact = true
})

Combat2Group:AddToggle("Auto Heal", {
    Text = "Auto Heal",
    Default = false,
    Callback = function(Value)
_G.AutoHeal = Value
while _G.AutoHeal do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		for x, n in pairs({"Apple", "Bandage", "Boba", "First Aid Kit", "Healing Brew", "Healing Potion"}) do
			if v.Name == n and game.Players.LocalPlayer.Character.Humanoid.Health < (Options["AutoHeal"].Value or 45) then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
				wait(0.27)
				v:Activate()	
				break
			end
		end
	end
end
task.wait()
end
    end
})

Combat2Group:AddButton("Use Item Power", function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	    if v.Name == "Bull's essence" or v.Name == "Potion of Strength" or v.Name == "Boba" or v.Name == "Speed Potion" or v.Name == "Frog Potion" or v.Name == "Strength Brew" or v.Name == "Frog Brew" or v.Name == "Speed Brew" then
	        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
	        v:Activate()
			task.wait(0.07)
	    end
	end
end)

local Esp1Group = TabBoxCombat1:AddTab("ESP") 

Esp1Group:AddToggle("Esp Glove", {
    Text = "Esp Glove",
    Default = false, 
    Callback = function(Value) 
_G.EspPlayer = Value
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") then
		ESPLibrary:RemoveESP(v.Character)
	end
end
while _G.EspPlayer do
local ColorGlove = _G.ColorESP or Color3.new(255,255,255)
for i,v in ipairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		ESPLibrary:AddESP({Object = v.Character, Text = "", Color = ColorGlove})
		ESPLibrary:UpdateObjectText(v.Character, (v:GetRankInGroupAsync(9950771) >= 2 and "[RANK]\n" or "")..v.Glove.Value.." | Health: "..v.Character:FindFirstChild("Humanoid").Health)
		ESPLibrary:UpdateObjectColor(v.Character, ColorGlove)
		ESPLibrary:SetOutlineColor(ColorGlove)
	elseif v.Character:FindFirstChild("Dead") then
		ESPLibrary:RemoveESP(v.Character)
	end
end
task.wait()
end
    end
}):AddColorPicker("Color Esp", {
     Default = Color3.new(255,255,255),
     Callback = function(Value)
_G.ColorESP = Value
     end
})

Esp1Group:AddToggle("Esp1", {
    Text = "Item Esp",
    Default = false, 
    Callback = function(Value) 
_G.ItemESP = Value
if _G.ItemESP == false then
	for i, v in ipairs(game.Workspace.Items:GetChildren()) do
		if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
			ESPLibrary:RemoveESP(v)
	    end
	end
end
while _G.ItemESP do
for i, v in ipairs(game.Workspace.Items:GetChildren()) do
	local ToolItem = _G.ColorESP1 or Color3.new(9, 237, 32)
	if v.ClassName == "Tool" and v:FindFirstChild("Handle") and not v:FindFirstChild("Glove") then
		ESPLibrary:AddESP({Object = v, Text = "", Color = ToolItem})
		ESPLibrary:UpdateObjectText(v, v.Name)
		ESPLibrary:UpdateObjectColor(v, ToolItem)
		ESPLibrary:SetOutlineColor(ToolItem)
	end
end
task.wait()
end
    end
}):AddColorPicker("Color Esp Item", {
     Default = Color3.new(9, 237, 32),
     Callback = function(Value)
_G.ColorESP1 = Value
     end
})

Esp1Group:AddDivider()

local Font = {}
for _, v in ipairs(Enum.Font:GetEnumItems()) do
    table.insert(Font, v.Name)
end
Esp1Group:AddDropdown("Font", {
    Text = "Set Font",
    Values = Font,
    Default = "Code",
    Multi = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetFont(Value)
end
    end
})

Esp1Group:AddToggle("Show Distance", {
    Text = "Show Distance",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetShowDistance(Value)
end
    end
})

Esp1Group:AddToggle("Show Rainbow", {
    Text = "Show Rainbow",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetRainbow(Value)
end
    end
})

Esp1Group:AddToggle("Show Tracers", {
    Text = "Show Tracers",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetTracers(Value)
end
    end
})

Esp1Group:AddDropdown("TracersOrigin", {
    Text = "Tracers Origin",
    Multi = false,
    Values = {"Bottom", "Top", "Center", "Mouse"},
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetTracerOrigin(Value)
end
    end
})

Esp1Group:AddToggle("Show Arrows", {
    Text = "Show Arrows",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetArrows(Value)
end
    end
})

Esp1Group:AddSlider("ArrowsSize", {
    Text = "Set Arrows Radius",
    Default = 300,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetArrowRadius(Value)
end
    end
})

Esp1Group:AddSlider("SetTextSize", {
    Text = "Set TextSize",
    Default = 15,
    Min = 1,
    Max = 50,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetTextSize(Value)
end
    end
})

Esp1Group:AddSlider("SetFillTransparency", {
    Text = "Set Fill Transparency",
    Default = 0.6,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetFillTransparency(Value)
end
    end
})

Esp1Group:AddSlider("SetOutlineTransparency", {
    Text = "Set OutLine Transparency",
    Default = 0.6,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetOutlineTransparency(Value)
end
    end
})

local Anti1Group = Tabs.Tab1:AddLeftGroupbox("Anti")

Anti1Group:AddToggle("Anti COD", {
    Text = "Anti Cube of Death",
    Default = false, 
    Callback = function(Value)
_G.AntiCubeofDeath = Value
while _G.AntiCubeofDeath do
if workspace.Map:FindFirstChild("ColossalCanyon") then
	for i, v in pairs(workspace.Map.ColossalCanyon:GetChildren()) do
		if v.Name:lower() == "cube of death" then
			v.CanTouch = not Value
		end
	end
end
task.wait()
end
    end
})

Anti1Group:AddToggle("Anti Ice", {
    Text = "Anti Ice",
    Default = false, 
    Callback = function(Value)
_G.AntiIce = Value
while _G.AntiIce do
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == "Icecube" then
        v:Destroy()
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
		end
    end
end
task.wait()
end
    end
})

Anti1Group:AddToggle("Anti Acid", {
    Text = "Anti Acid",
    Default = false, 
    Callback = function(Value)
for i, v in pairs(workspace.Map.AcidAbnormality:GetDescendants()) do
	if v.Name == "Acid" and v:IsA("BasePart") then
		v.CanTouch = not Value
		v.CanCollide = Value
	end
end
    end
})

Anti1Group:AddToggle("Anti Lava", {
    Text = "Anti Lava",
    Default = false, 
    Callback = function(Value)
local Lava = workspace.Map:FindFirstChild("DragonDepths", true):FindFirstChild("Lava", true)
if Lava then
	Lava.CanTouch = not value
	Lava.CanCollide = Value
end
    end
})

Anti1Group:AddDropdown("Anti RagdollV", {
    Text = "Anti Ragdoll",
    Values = {"V0.5", "V1", "V2", "V3"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AntiRagdolledV = Value
    end
})

Anti1Group:AddToggle("Anti Ragdoll", {
    Text = "Anti Ragdoll",
    Default = false,
    Callback = function(Value)
_G.AntiRagdoll = Value
if Value == false then
	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("AntiRagBV") then
		game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("AntiRagBV"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
		game.Players.LocalPlayer.Character.Torso.Anchored = false
	end
end
    end
})

table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
if _G.AntiRagdoll then
	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		if game.Players.LocalPlayer.Character:GetAttribute("Ragdolled") then
			for i, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
				if v:IsA("BodyVelocity") or v:IsA("VectorForce") or v:IsA("LinearVelocity") or v:IsA("BodyGyro") or v:IsA("BodyAngularVelocity") then
					if not (v.Name == "AntiRagBV" or v.Name == "GyroHandler" or v.Name == "VelocityHandler" or v.Name == "FreezeBV") then
						v:Destroy()
					end
				end
			end
			if _G.AntiRagdolledV == "V2" then
				CreateFreezeBV({Name = "AntiRagBV"})
			end
			if _G.AntiRagdolledV == "V1" then
				if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
					game.Players.LocalPlayer.Character.Torso.Anchored = true
				end
			end
			if _G.AntiRagdolledV == "V3" then
				local MoveDarTo = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.MoveDirection
		        if MoveDarTo and MoveDarTo.Magnitude > 0 then
		            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):Move(MoveDarTo, false)
		        end
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
					game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):ChangeState(Enum.HumanoidStateType.Running)
				end
				for i, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		            if v:IsA("Motor6D") then
		                v.Enabled = true
		            elseif v:IsA("BallSocketConstraint") or v:IsA("HingeConstraint") then
		                v.Enabled = false
		            end
		        end
			end
		else
			CreateFreezeBV({Name = "AntiRagBV", Remove = true})
			if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
				game.Players.LocalPlayer.Character.Torso.Anchored = false
			end
		end
	end
end
end))

local Misc1Group = Tabs.Tab1:AddRightGroupbox("Misc")

CodeLab = Misc1Group:AddLabel("Code [ ???? ]")

Misc1Group:AddButton("Get Lab Code", function()
if Code and CodeLab then
	CodeLab:SetText("Code [ "..table.concat(Code).." ]")
end
end)

Misc1Group:AddButton("Get Chain", function()
if Code then
	for i, v in pairs(game.Workspace.Map.OriginOffice:GetChildren()) do
		if v.Name:find("Close") and v:FindFirstChild("Door") and v.Door:FindFirstChild("Keypad") and v.Door.Keypad:FindFirstChild("Buttons") then
			fireclickdetector(v.Door.Keypad.Buttons.Reset.ClickDetector)
			wait(0.25)
			for i = 1, #Code do
				local CodeNah = Code[i]
				fireclickdetector(v.Door.Keypad.Buttons[CodeNah].ClickDetector)
				wait(0.25)
			end
			wait(0.25)
			fireclickdetector(v.Door.Keypad.Buttons.Enter.ClickDetector)
		end
	end
end
end)

Misc1Group:AddToggle("Free Emote", {
    Text = "Free Emote",
    Default = false, 
    Callback = function(Value) 
Animation(Value)
    end
})
