local GloveTabGroup = Tabs.Tab6:AddLeftGroupbox("Glove Options", SolarIcon.GlovesOptional)
local GloveTabBox = GloveTabGroup:AddTabbox({ Name = "Glove Tabs" })
local GloveSpamGroup = GloveTabBox:AddTab("Spam", SolarIcon.GlovesOptional)
local GloveTargetGroup = GloveTabBox:AddTab("Target", SolarIcon.Combat)
local GloveCollectGroup = GloveTabBox:AddTab("Collect", SolarIcon.Misc)
local GloveUtilityGroup = GloveTabBox:AddTab("Utility", SolarIcon.Settings)
local Glove1Group = GloveSpamGroup

Glove1Group:AddDropdown("Santa", {
    Text = "Santa Ability",
    Values = {"Bob Plush", "Snow Peep", "Milk"},
    Default = "",
    Multi = false,
    Callback = function(Value)
SantaAbility = Value
    end
})

Glove1Group:AddToggle("Spam Santa", {
    Text = "Auto Ability Santa",
    Default = false, 
    Callback = function(Value) 
SantaSpam = Value
if CheckGlove() == "Santa" then
while SantaSpam do
if SantaAbility == "Bob Plush" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("bobplush")
elseif SantaAbility == "Snow Peep" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("snowpeep")
elseif SantaAbility == "Milk" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("milk")
end
task.wait()
end
elseif SantaSpam == true then
Notification("You don't have Santa equipped", _G.TimeNotify)
wait(0.05)
Toggles["Spam Santa"]:SetValue(false)
end
    end
})

Glove1Group:AddDropdown("AdminAbility", {
    Text = "Admin Ability",
    Values = {"Fling", "Anvil", "Invisibility"},
    Default = "",
    Multi = false,
    Callback = function(Value)
AbilityAdmin = Value
    end
})

Glove1Group:AddToggle("Spam Admin", {
    Text = "Auto Ability Admin",
    Default = false, 
    Callback = function(Value) 
AdminSpam = Value
while AdminSpam do
game:GetService("ReplicatedStorage").AdminAbility:FireServer(AbilityAdmin)
task.wait()
end
    end
})

Glove1Group:AddDropdown("RetroAbility", {
    Text = "Retro Ability",
    Values = {"Rocket Launcher", "Ban Hammer", "Bomb"},
    Default = "",
    Multi = false,
    Callback = function(Value)
RetroAbility = Value
    end
})

Glove1Group:AddToggle("Spam Retro", {
    Text = "Auto Ability Retro",
    Default = false, 
    Callback = function(Value) 
RetroSpam = Value
while RetroSpam do
game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
task.wait()
end
    end
})

Glove1Group:AddDropdown("SlapStickAbility", {
    Text = "SlapStick Ability",
    Values = {"runeffect", "fullcharged", "dash", "addarm","charge","cancelrun","discharge"},
    Default = "",
    Multi = false,
    Callback = function(Value)
SlapstickAbility = Value
    end
})

Glove1Group:AddToggle("Spam Slapstick", {
    Text = "Auto Ability Slapstick",
    Default = false, 
    Callback = function(Value) 
SlapstickSpam = Value
if CheckGlove():lower():find("slapstick") then
if SlapstickSpam == true then
game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
end
while SlapstickSpam do
game:GetService("ReplicatedStorage").slapstick:FireServer(SlapstickAbility)
task.wait()
end
elseif Value == true then
Notification("You don't have Slapstick equipped", 5)
wait(0.05)
Toggles["Spam Slapstick"]:SetValue(false)
end
    end
})

Glove1Group = GloveTargetGroup

Glove1Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
	SaveThePlayer = game.Players.LocalPlayer.Name
else
	SaveThePlayer = FoundPlr(Value, true).Name
end
    end
})

Glove1Group:AddToggle("Godmobe Player", {
    Text = "Auto Godmobe Player",
    Default = false, 
    Callback = function(Value) 
if SaveThePlayer == nil then
SaveThePlayer = game.Players.LocalPlayer.Name
end
GuardianAngelSpam = Value
if CheckGlove() == "Guardian Angel" then
while GuardianAngelSpam do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players[SaveThePlayer])
task.wait()
end
elseif GuardianAngelSpam == true then
Notification("You don't have Guardian Angel equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Godmobe Player"]:SetValue(false)
end
    end
})

Glove1Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
if Value == "Me" or Value == "me" or Value == "Username" or Value == "" then
DivebombExplosion = game.Players.LocalPlayer.Name
else
DivebombExplosion = FoundPlr(Value, true).Name
end
    end
})

Glove1Group:AddSlider("ChargeExplosion", {
    Text = "Charge Explosion",
    Default = 20,
    Min = 20,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ChargeExplosion = Value
    end
})

Glove1Group:AddToggle("Ability Divebomb", {
    Text = "Auto Ability Divebomb",
    Default = false, 
    Callback = function(Value) 
if DivebombExplosion == nil then
DivebombExplosion = game.Players.LocalPlayer.Name
end
_G.DivebombSpam = Value
if CheckGlove() == "Divebomb" then
while _G.DivebombSpam do
game:GetService("ReplicatedStorage").RocketJump:InvokeServer({["chargeAlpha"] = 100,["rocketJump"] = true})
game:GetService("ReplicatedStorage").RocketJump:InvokeServer({["position"] = game.Players[DivebombExplosion].Character.HumanoidRootPart.Position,["explosion"] = true,["explosionAlpha"] = _G.ChargeExplosion})
task.wait()
end
elseif _G.DivebombSpam == true then
Notification("You don't have Divebomb equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Ability Divebomb"]:SetValue(false)
end
    end
})

Glove1Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.BarrelPlayer = FoundPlr(Value, true).Name
    end
})

Glove1Group:AddToggle("AbilityBarrelPlayer", {
    Text = "Auto Barrel Player",
    Default = false, 
    Callback = function(Value) 
_G.BarrelSpamPlayer = Value
if CheckGlove() == "Barrel" then
while _G.BarrelSpamPlayer do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer({["cf"] = game.Players[_G.BarrelPlayer].Character.HumanoidRootPart.CFrame})
task.wait()
end
elseif _G.BarrelSpamPlayer == true then
Notification("You don't have Barrel equipped.", _G.TimeNotify)
wait(0.05)
Toggles.AbilityBarrelPlayer:SetValue(false)
end
    end
})

Glove1Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.BindPlayer = FoundPlr(Value, true)
    end
})

Glove1Group:AddDropdown("BindAbility", {
    Text = "Bind Ability",
    Values = {"Default", "Ultimate"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BindAbility = Value
    end
})

Glove1Group:AddToggle("AbilityBindPlayer", {
    Text = "Auto Bind Player",
    Default = false, 
    Callback = function(Value) 
_G.BindSpamPlayer = Value
if CheckGlove() == "Bind" then
while _G.BindSpamPlayer do
if _G.BindAbility == "Default" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("default", {["goal"] = game.Players[_G.BindPlayer].Character.HumanoidRootPart.CFrame, ["origin"] = game.Players[_G.BindPlayer].Character.Head.CFrame})
elseif _G.BindAbility == "Ultimate" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("ultimate", {["goal"] = game.Players[_G.BindPlayer].Character.HumanoidRootPart.CFrame * CFrame.Angles(3.141592502593994, 1.0641214847564697, -3.141592502593994), ["origin"] = game.Players[_G.BindPlayer].Character.HumanoidRootPart.CFrame * CFrame.Angles(3.141592502593994, 1.0641214847564697, -3.141592502593994)})
end
task.wait()
end
elseif _G.BindSpamPlayer == true then
Notification("You don't have Bind equipped.", _G.TimeNotify)
wait(0.05)
Toggles.AbilityBindPlayer:SetValue(false)
end
    end
})

_G.PlayerChoose = "Username"
Glove1Group:AddDropdown("PlayerChoose", {
    Text = "Player Choose",
    Values = {"Username","Random"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PlayerChoose = Value
    end
})

Glove1Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.PlayerButton = FoundPlr(Value, true).Name
    end
})

Glove1Group:AddButton("Swapper Player Void", function()
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
	OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	CreateFreezeBV()
	repeat task.wait()
	if workspace[_G.PlayerButton]:FindFirstChild("HumanoidRootPart") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[_G.PlayerButton].HumanoidRootPart.CFrame * CFrame.new(0, -70, 0)
	end
	until game.Players[_G.PlayerButton].Character and workspace[_G.PlayerButton]:FindFirstChild("HumanoidRootPart") and workspace[_G.PlayerButton]:FindFirstChild("entered") and workspace[_G.PlayerButton].Ragdolled.Value == false
	task.wait(0.6)
	game:GetService("ReplicatedStorage").SLOC:FireServer()
	wait(.25)
	CreateFreezeBV({Remove = true})
	task.wait(0.05)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
else
	Notification("You don't have Swapper equipped, or you aren't in the arena.", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Home Run Kill Player", function()
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if CheckGlove() == "Home Run" and game.Players[_G.PlayerButton].Character:FindFirstChild("entered") then
	CreateFreezeBV()
	OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	game.Players[_G.PlayerButton].Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
	game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
	wait(4.2)
	game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
	task.wait(0.12)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton].Character.HumanoidRootPart.CFrame
	task.wait(0.25)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
	CreateFreezeBV({Remove = true})
else
	Notification("You don't have Home Run equipped", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Hive Player", function()
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if CheckGlove() == "Hive" and game.Players[_G.PlayerButton].Character:FindFirstChild("entered") then
	CreateFreezeBV()
	OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
	task.wait(4.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton].Character.HumanoidRootPart.CFrame
	repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.PlayerButton].Character.HumanoidRootPart.Position).Magnitude <= 7
	task.wait(0.33)
	game:GetService("ReplicatedStorage"):WaitForChild("GeneralHit"):FireServer(game.Players[_G.PlayerButton].Character:WaitForChild("HumanoidRootPart"))
	wait(0.25)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
	CreateFreezeBV({Remove = true})
else
	Notification("You don't have Hive equipped", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Quake Player", function()
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if CheckGlove() == "Quake" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PlayerButton].Character:FindFirstChild("entered") then
	CreateFreezeBV()
	OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	repeat task.wait()
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Quake") then
			game.Players.LocalPlayer.Backpack.Quake.Parent = game.Players.LocalPlayer.Character
		end
	until game.Players.LocalPlayer.Character:FindFirstChild("Quake")
	task.wait(0.3)
	game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
	wait(3.45)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton].Character:FindFirstChild("Head").CFrame * CFrame.new(0,4,0)
	repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Players[_G.PlayerButton].Character.HumanoidRootPart.Position).Magnitude <= 7
	task.wait(0.35)
	game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["finished"] = true})
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
	CreateFreezeBV({Remove = true})
else
	Notification("You don't have Quake equipped.", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Cards Player", function()
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if CheckGlove() == "Jester" then
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability3", game.Players[_G.PlayerButton])
else
	Notification("You don't have Jester glove equipped", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Grab Player Teleport", function()
if CheckGlove() == "Grab" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PlayerButton].Character:FindFirstChild("entered") then
	CreateFreezeBV()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Grab") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Character
	end
	wait(0.36)
	OLG = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
	wait(0.2)
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
	wait(0.15)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OLG
	wait(0.37)
	if game.Players.LocalPlayer.Character:FindFirstChild("Grab") then
		game.Players.LocalPlayer.Character:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Backpack
	end
	CreateFreezeBV({Remove = true})
else
	Notification("You don't have Grab equipped, or you have to go Arena, or player go to Arena", _G.TimeNotify)
end
end)

Glove1Group:AddToggle("Auto Oven Player", {
    Text = "Auto Oven Player",
    Default = false, 
    Callback = function(Value) 
_G.OvenPlayerAuto = Value
if CheckGlove() == "Oven" then
while _G.OvenPlayerAuto do
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Oven") then
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players[_G.PlayerButton].Character.HumanoidRootPart.CFrame)
end
task.wait()
end
elseif _G.OvenPlayerAuto == true then
Notification("You don't have Oven equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Oven Player"]:SetValue(false)
end
    end
})

Glove1Group:AddToggle("Auto Cards Player", {
    Text = "Auto Cards Player",
    Default = false, 
    Callback = function(Value) 
_G.OvenPlayerAuto = Value
if CheckGlove() == "Jester" then
while _G.OvenPlayerAuto do
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if CheckGlove() == "Jester" then
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability3", game.Players[_G.PlayerButton])
end
task.wait()
end
elseif _G.OvenPlayerAuto == true then
Notification("You don't have Jester equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Cards Player"]:SetValue(false)
end
    end
})

Glove1Group:AddToggle("Auto Siphon Player", {
    Text = "Auto Siphon Player",
    Default = false, 
    Callback = function(Value) 
_G.AutoSiphonPlayer = Value
if CheckGlove() == "Siphon" then
while _G.AutoSiphonPlayer do
if _G.PlayerChoose == "Random" then
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and not v.Character:FindFirstChild("Counterd") and not v.Character:FindFirstChild("Mirage") and not v.Character:FindFirstChild("rock") and not v.Character:FindFirstChild("Reversed") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		_G.PlayerButton = players[math.random(#players)].Name
	end
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PlayerButton].Character:FindFirstChild("entered") then
	game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = game.Players[_G.PlayerButton].Character.HumanoidRootPart.CFrame})
end
task.wait()
end
elseif _G.AutoSiphonPlayer == true then
Notification("You don't have Siphon equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Siphon Player"]:SetValue(false)
end
    end
})

Glove1Group:AddDropdown("Black Hole", {
    Text = "Black Hole",
    Values = {"Normal", "Teleport Cannon Island"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BlackHoleCre = Value
    end
})

Glove1Group:AddButton("Auto Create Black Hole", function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2147429609) then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,30,0)
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	wait(0.05)
	fireclickdetector(workspace.Lobby["rob"].ClickDetector)
	wait(0.3)
	game:GetService("ReplicatedStorage").rob:FireServer()
	repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("RobTransformed") and game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head.Transparency >= 1
	fireclickdetector(workspace.Lobby["bob"].ClickDetector)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	repeat task.wait() until CheckGlove() == "bob"
	game:GetService("ReplicatedStorage").bob:FireServer()
	wait(0.5)
	for i = 1,26 do
		for _, v in pairs(workspace:GetChildren()) do
			if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
			end
		end
	end
	if _G.BlackHoleCre == "Teleport Cannon Island" then
		repeat task.wait() until game.Players.LocalPlayer.Character
		if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
			until game.Players.LocalPlayer.Character:FindFirstChild("entered")
		end
		wait(0.27)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
		wait(0.25)
		for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
		    if v.ClassName == "ProximityPrompt" then
		        fireproximityprompt(v)
		    end
		end
	end
else
	Notification("You have in lobby, or You don't have badge bob, or badge rob.", _G.TimeNotify)
end
end)

Glove1Group:AddButton("Auto Enter Map Null", function()
if game.Workspace:FindFirstChild("Blackhole_Particles") == nil then
Notification("When will someone create a black hole [ BOB + ROB ].", _G.TimeNotify)
return
end
if CheckGlove() ~= "Default" then
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
		game:GetService("Players").LocalPlayer.Reset:FireServer()
		wait(0.4)
		repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
		wait(0.3)
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
		equipglove("Default")
	end
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") ~= nil then
	repeat task.wait() until game.Players.LocalPlayer.Character
	if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		repeat task.wait()
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
		until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	end
end
wait(0.3)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
	repeat task.wait()
	if game.Workspace:FindFirstChild("Blackhole_Particles") and game.Workspace.Blackhole_Particles:FindFirstChild("BlackHole") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Blackhole_Particles.BlackHole.CFrame
	end
	until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
end)

Glove1Group:AddButton("Auto Enter Cannon", function()
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	repeat task.wait()
		firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
		firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
	until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.26)
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
	wait(0.25)
	for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
        if v.ClassName == "ProximityPrompt" then
            fireproximityprompt(v)
        end
    end
end
end)

local Glove2Group = GloveCollectGroup

Glove2Group:AddButton("Spawn Orb Siphon", function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and CheckGlove() == "Siphon" then
repeat task.wait()
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame})
until game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("siphon_charge")
repeat task.wait()
if game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("siphon_charge") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
until game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("siphon_charge") == nil
else
Notification("You don't have Siphon equipped or you haven't in arena.", _G.TimeNotify)
end
end)

Glove2Group:AddButton("Ability Lure Safe", function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and CheckGlove() == "Lure" then
OldTP = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
task.wait(0.2)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(0.15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldTP
else
Notification("You don't have Lure equipped or you haven't in arena.", _G.TimeNotify)
end
end)

Glove2Group:AddToggle("Auto Collect Ingredients", {
    Text = "Auto Collect Ingredients",
    Default = false, 
    Callback = function(Value) 
_G.AutoPickupIngredients = Value
while _G.AutoPickupIngredients do
if CheckGlove() == "Alchemist" and game.Workspace:FindFirstChild("Alchemist_Ingredients_") then
for i,v in pairs(game.Workspace:FindFirstChild("Alchemist_Ingredients_"):GetChildren()) do
if v:IsA("Model") and v:FindFirstChild("Clickbox") and v.Clickbox:FindFirstChild("ClickDetector") then
v.Clickbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end
task.wait()
end
    end
})

Glove2Group:AddToggle("Auto Collect Pillow", {
    Text = "Auto Collect Pillow",
    Default = false, 
    Callback = function(Value) 
_G.AutoCollectPillow = Value
while _G.AutoCollectPillow do
if CheckGlove() == "Pillow" and game.Workspace:FindFirstChild("pillows_") then
for i,v in pairs(game.Workspace:FindFirstChild("pillows_"):GetChildren()) do
if v.Name == "pillow_model" and v:FindFirstChild("Clickbox") and v.Clickbox:FindFirstChild("ClickDetector") then
v.Clickbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end
task.wait()
end
    end
})

Glove2Group:AddToggle("Infinity Pillow", {
    Text = "Infinity Pillow",
    Default = false, 
    Callback = function(Value) 
_G.InfinityPillow = Value
if CheckGlove() == "Pillow" then
while _G.InfinityPillow do
game:GetService("ReplicatedStorage").Events.PillowEvent:FireServer("AddPillow")
task.wait()
end
elseif _G.InfinityPillow == true then
Notification("You don't have Pillow equipped", _G.TimeNotify)
wait(0.05)
Toggles["Infinity Pillow"]:SetValue(false)
end
    end
})

Glove2Group:AddToggle("Infinite Ingredients", {
    Text = "Infinite Ingredients",
    Default = false, 
    Callback = function(Value) 
_G.InfiniteIngredients = Value
if CheckGlove() == "Alchemist" then
while _G.InfiniteIngredients do
if CheckGlove() == "Alchemist" then
	for i, v in ipairs({"Mushroom", "Glowing Mushroom", "Fire Flower", "Winter Rose", "Dark Root", "Dire Flower", "Autumn Sprout", "Elder Wood", "Hazel Lily", "Wild Vine", "Jade Stone", "Lamp Grass", "Blood Rose", "Plane Flower", "Blue Crystal", "Red Crystal", "Cake Mix"}) do
		game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem", v)
	end
end
task.wait()
end
elseif _G.InfiniteIngredients == true then
Toggles["Infinite Ingredients"]:SetValue(false)
wait(0.05)
Notification("You don't have Alchemist equipped", _G.TimeNotify)
end
    end
})

local PotionNames = {}
for i, v in pairs(_G.GetPotion) do
    table.insert(PotionNames, i)
end
Glove2Group:AddDropdown("Potion", {
    Text = "Potion",
    Values = PotionNames,
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.MakePotion = Value
    end
})

Glove2Group:AddSlider("Potion1", {
    Text = "Potion",
    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.PotionNumber = Value
    end
})

Glove2Group:AddDropdown("Potion2", {
    Text = "Potion",
    Values = {"Number","Normal"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.Potion2 = Value
    end
})

Glove2Group:AddButton("Get Potions", function()
if CheckGlove() == "Alchemist" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
if _G.Potion2 == "Normal" then
for i = 1, #_G.GetPotion[_G.MakePotion] do
repeat task.wait()
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron")
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", _G.GetPotion[_G.MakePotion][i])
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", _G.GetPotion[_G.MakePotion][i])
task.wait()
end
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
elseif _G.Potion2 == "Number" then
for a = 1, _G.PotionNumber do
for i = 1, #_G.GetPotion[_G.MakePotion] do
repeat task.wait()
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron")
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", _G.GetPotion[_G.MakePotion][i])
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", _G.GetPotion[_G.MakePotion][i])
end
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
end
end
else
Notification("You don't have Alchemist equipped", _G.TimeNotify)
end
end)

Glove2Group:AddButton("Get All Potions", function()
if CheckGlove() == "Alchemist" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for i, v in pairs(_G.GetPotion) do
    for j, p in pairs(v) do
	    repeat task.wait(0.2)
			if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
				game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
			end
		until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron")
        game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", p)
        game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", p)
        task.wait(0.07)
    end
    game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
end
else
Notification("You don't have Alchemist equipped", _G.TimeNotify)
end
end)

Glove2Group:AddToggle("Auto Get Potion", {
    Text = "Auto Get Potion",
    Default = false, 
    Callback = function(Value)
_G.AutoMakePotion = Value
if CheckGlove() == "Alchemist" then
while _G.AutoMakePotion do
if CheckGlove() == "Alchemist" then
if not game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Cauldron") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
for i = 1, #_G.GetPotion[_G.MakePotion] do
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem", _G.GetPotion[_G.MakePotion][i])
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("MixItem", _G.GetPotion[_G.MakePotion][i])
end
game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("BrewPotion")
end
task.wait(0.01)
end
elseif _G.AutoMakePotion == true then
Toggles["Auto Get Potion"]:SetValue(false)
wait(0.05)
Notification("You don't have Alchemist equipped", _G.TimeNotify)
end
    end
})

Glove2Group = GloveUtilityGroup

Glove2Group:AddToggle("Auto PingPong", {
    Text = "Auto Slap Ping Pong",
    Default = false, 
    Callback = function(Value) 
_G.AutoPingPongReal = Value
while _G.AutoPingPongReal do
if CheckGlove() == "Ping Pong" then
	if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v.Name:find("_PingPongBall") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 48 then
				game:GetService("ReplicatedStorage"):WaitForChild("PingPongEvent"):FireServer()
			end
		end
	end
end
task.wait()
end
    end
})

Glove2Group = GloveTargetGroup

Glove2Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.PlayerButton2 = FoundPlr(Value, true).Name
    end
})

Glove2Group:AddInput("SpeedOrbit", {
    Default = "20",
    Numeric = false,
    Text = "Speed",
    Placeholder = "UserSpeed",
    Callback = function(Value)
if Value == "inf" or Value == "Inf" or Value == "infinity" or Value == "Infinity" then
OrbitSpeed = 9e9
else
OrbitSpeed = Value
end
    end
})

Glove2Group:AddSlider("Extend", {
    Text = "Extend Ability",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ExtendPingPong = Value
    end
})

Glove2Group:AddDropdown("Clone", {
    Text = "Clone",
    Values = {"Orbit", "Orbit Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.Clone = Value
    end
})

Glove2Group:AddToggle("Auto Clone", {
    Text = "Auto Clone",
    Default = false, 
    Callback = function(Value) 
_G.CloneAuto = Value
if CheckGlove() == "Cherry" or CheckGlove() == "Replica" then
while _G.CloneAuto do
local OrbitTick = CFrame.new(math.cos(tick() * OrbitSpeed + (i - 1) * math.pi / 2) * _G.ExtendPingPong, 0, math.sin(tick() * OrbitSpeed + (i - 1) * math.pi / 2) * _G.ExtendPingPong)
if CheckGlove() == "Cherry" then
	if workspace:FindFirstChild("cherry_storage") then
		for i, v in pairs(workspace.cherry_storage:GetChildren()) do
			if v.Name == ("Cherry "..game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("clone_remote") and IsNetworkOwner(v.HumanoidRootPart) then
				v.clone_remote:FireServer()
				if _G.Clone == "Orbit" then
					v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * OrbitTick
				elseif _G.Clone == "Orbit Player" then
					v.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton2].Character.HumanoidRootPart.CFrame * OrbitTick
				end
			end
		end
	end
elseif CheckGlove() == "Replica" then
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == ("Å"..game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") and IsNetworkOwner(v.HumanoidRootPart) then
			if _G.Clone == "Orbit" then
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * OrbitTick
			elseif _G.Clone == "Orbit Player" then
				v.HumanoidRootPart.CFrame = game.Players[_G.PlayerButton2].Character.HumanoidRootPart.CFrame * OrbitTick
			end
		end
	end
end
task.wait()
end
elseif _G.CloneAuto == true then
Notification("You don't have Cherry or Replica equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Clone"]:SetValue(false)
end
    end
})

Glove2Group:AddDropdown("Ping Pong Choose", {
    Text = "Ping Pong",
    Values = {"Fling", "Fling Player", "Orbit", "Orbit Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PingPongServer = Value
    end
})

Glove2Group:AddToggle("PingPong", {
    Text = "Ping Pong",
    Default = false, 
    Callback = function(Value) 
_G.PingPongServerBr = Value
if CheckGlove() == "Ping Pong" then
PingPongBall = game.Players.LocalPlayer.Name.."_PingPongBall"
if _G.PingPongServer == "Orbit" then
Orbit = "0"
if OrbitSpeed == nil then
OrbitSpeed = 1
end
game.Players.LocalPlayer.Character.Torso.RadioPart.Rotation = game.Players.LocalPlayer.Character.HumanoidRootPart.Rotation
end
while _G.PingPongServerBr do
if _G.PingPongServer == "Orbit" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
Orbit = Orbit + OrbitSpeed
game.Players.LocalPlayer.Character.Torso.RadioPart.Rotation = Vector3.new(-180, Orbit, -180)
if game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[2] then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.CFrame = game.Players.LocalPlayer.Character.Torso.RadioPart.CFrame * CFrame.new(0,0,-_G.ExtendPingPong) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
                    end
                end
for i,v in pairs(game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
                        v.CFrame = game.Players.LocalPlayer.Character.Torso.RadioPart.CFrame * CFrame.new(0,0,_G.ExtendPingPong) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
                    end
                end
elseif game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[1] or game.Players.LocalPlayer.Character.Torso.RadioPart:GetChildren()[2] then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.ClassName == "Part" and v.Name == PingPongBall then
v.Parent = game.Players.LocalPlayer.Character.Torso.RadioPart
break
                    end
                end
end
elseif _G.PingPongServer == "Orbit Player" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
if game.Players[_G.PlayerButton2].Character and game.Players[_G.PlayerButton2].Character:WaitForChild("Ragdolled").Value == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == (game.Players.LocalPlayer.Name.."_PingPongBall") then
v.CFrame = game.Players[_G.PlayerButton2].Character.HumanoidRootPart.CFrame * CFrame.new(math.cos(tick() * OrbitSpeed + (i - 1) * math.pi / 2) * _G.ExtendPingPong, 0, math.sin(tick() * OrbitSpeed + (i - 1) * math.pi / 2) * _G.ExtendPingPong)
                    end
                end
end
elseif _G.PingPongServer == "Fling" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
for i, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
for i,a in pairs(game.Workspace:GetChildren()) do
                    if a.Name == (game.Players.LocalPlayer.Name.."_PingPongBall") then
a.CFrame = v.Character.HumanoidRootPart.CFrame
break
                    end
                end
end
end
end
elseif _G.PingPongServer == "Fling Player" then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
if game.Players[_G.PlayerButton2].Character and game.Players[_G.PlayerButton2].Character:WaitForChild("Ragdolled").Value == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == (game.Players.LocalPlayer.Name.."_PingPongBall") then
v.CFrame = game.Players[_G.PlayerButton2].Character.HumanoidRootPart.CFrame
                    end
                end
end
end
task.wait(0.01)
end
elseif Value == true then
Notification("You don't have Ping Pong equipped.", _G.TimeNotify)
wait(0.05)
Toggles["PingPong"]:SetValue(false)
end
    end
})

Glove2Group:AddSlider("ExtendRob", {
    Text = "Extend HitBox Rob",
    Default = 16,
    Min = 16,
    Max = 400,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
_G.ExtendHitboxRob = Value
    end
})

Glove2Group:AddDropdown("Hitbox Rob", {
    Text = "Hitbox Rob",
    Values = {"You","All"},
    Default = "All",
    Multi = false,
    Callback = function(Value)
_G.RobHitbox = Value
    end
})

Glove2Group:AddToggle("Hitbox Rob", {
    Text = "Hitbox All Rob & Color",
    Default = false, 
    Callback = function(Value)
_G.HitboxRob = Value
while _G.HitboxRob do
if _G.RobHitbox == "All" then
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Field" then
        v.Size = Vector3.new(_G.ExtendHitboxRob,_G.ExtendHitboxRob,_G.ExtendHitboxRob)
        v.BrickColor = BrickColor.new(_G.ColorHitboxRob)
    end
end
elseif _G.RobHitbox == "You" then
for i,v in pairs(game.Workspace:GetChildren()) do
         if v.Name == "Field" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 1 then
              v.Size = Vector3.new(_G.ExtendHitboxRob,_G.ExtendHitboxRob,_G.ExtendHitboxRob)
              v.BrickColor = BrickColor.new(_G.ColorHitboxRob)
         end
     end
end
task.wait()
end
if _G.HitboxRob == false then
	for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Field" then
            v.Size = Vector3.new(16,16,16)
            v.BrickColor = BrickColor.new(255,255,255)
        end
    end
end
    end
}):AddColorPicker("Color Hitbox Rob", {
     Default = Color3.new(255,255,255),
     Callback = function(Value)
_G.ColorHitboxRob = Value
     end
})

_G.SetSpeedFlyCloud = 2
Glove2Group:AddInput("FlySpeed", {
    Default = "2",
    Numeric = true,
    Text = "Fly Speed Cloud",
    Placeholder = "UserFlySpeed",
    Callback = function(Value)
_G.SetSpeedFlyCloud = Value
    end
})

Glove2Group:AddToggle("Cloud Speed", {
    Text = "Cloud Speed",
    Default = false, 
    Callback = function(Value)
_G.CloudSpeed = Value
if CheckGlove() == "Cloud" then
while _G.CloudSpeed do
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("BodyVelocity") and v:FindFirstChild("VehicleSeat") then
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if 3 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.VehicleSeat.Position).Magnitude then
	                local VectorBV = v.BodyVelocity.Velocity
					if MobileOn then
				        local controlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector()
						if controlModule.X > 0 then
							VectorBV = VectorBV + game.Workspace.CurrentCamera.CFrame.RightVector * (controlModule.X * _G.SetSpeedFlyCloud)
						end
						if controlModule.X < 0 then
							VectorBV = VectorBV + game.Workspace.CurrentCamera.CFrame.RightVector * (controlModule.X * _G.SetSpeedFlyCloud)
						end
						if controlModule.Z > 0 then
							VectorBV = VectorBV - game.Workspace.CurrentCamera.CFrame.LookVector * (controlModule.Z * _G.SetSpeedFlyCloud)
						end
						if controlModule.Z < 0 then
							VectorBV = VectorBV - game.Workspace.CurrentCamera.CFrame.LookVector * (controlModule.Z * _G.SetSpeedFlyCloud)
						end
					else
					    VectorBV = VectorBV + (game.Workspace.CurrentCamera.CFrame.LookVector * (ctrlCould.f.f + ctrlCould.b)) + (game.Workspace.CurrentCamera.CFrame.RightVector * (ctrlCould.r + ctrlCould.l))
					end
			        v.BodyVelocity.Velocity = VectorBV
			    end
			end
		end
	end
    task.wait()
end
elseif _G.CloudSpeed == true then
Notification("You don't have Cloud equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Cloud Speed"]:SetValue(false)
end
    end
})

Glove2Group = GloveTargetGroup

Glove2Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.PlayerButton3 = FoundPlr(Value, true).Name
    end
}) 

Glove2Group:AddDropdown("Cloud Bring", {
    Text = "Cloud Seat",
    Values = {"Player","Your"},
    Default = "Player",
    Multi = false,
    Callback = function(Value)
_G.CloudBring = Value
    end
})

Glove2Group:AddButton("TP Seat Could (Yourself)", function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
		end
	end
end
end)

Glove2Group:AddToggle("Auto Bring Cloud", {
    Text = "Auto Seat Cloud",
    Default = false, 
    Callback = function(Value)
_G.BringCloud = Value
if CheckGlove() == "Cloud" then
while _G.BringCloud do
if _G.CloudBring == "Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PlayerButton3].Character:FindFirstChild("entered") and game.Players[_G.PlayerButton3].Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players[_G.PlayerButton3].Character.HumanoidRootPart.CFrame * CFrame.new(0,-2.32,0)
                    end
               end
          end
elseif _G.CloudBring == "Your" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2.32,0)
                    end
               end
          end
end
task.wait()
end
elseif _G.BringCloud == true then
Notification("You don't have Cloud equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Bring Cloud"]:SetValue(false)
end
    end
})

Glove2Group:AddDropdown("Firework Bring", {
    Text = "Firework Seat",
    Values = {"Player","Your"},
    Default = "Player",
    Multi = false,
    Callback = function(Value)
_G.FireworkBring = Value
    end
})

Glove2Group:AddToggle("Auto Bring Firework", {
    Text = "Auto Seat Firework",
    Default = false, 
    Callback = function(Value)
_G.BringFirework = Value
if CheckGlove() == "Firework" then
while _G.BringFirework do
if _G.FireworkBring == "Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players[_G.PlayerButton3].Character:FindFirstChild("entered") and game.Players[_G.PlayerButton3].Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players[_G.PlayerButton3].Character.HumanoidRootPart.CFrame
                    end
               end
          end
elseif _G.FireworkBring == "Your" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
               end
          end
end
task.wait()
end
elseif _G.BringFirework == true then
Notification("You don't have Firework equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Bring Firework"]:SetValue(false)
end
    end
})

Glove2Group = GloveUtilityGroup

Glove2Group:AddToggle("Auto Full Kinetic", {
    Text = "Auto Full Kinetic",
    Default = false, 
    Callback = function(Value)
_G.FullKineticSpam = Value
if CheckGlove() == "Kinetic" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
while _G.FullKineticSpam do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
task.wait()
end
elseif _G.FullKineticSpam == true then
Notification("You don't have Kinetic equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Full Kinetic"]:SetValue(false)
end
    end
})

Glove2Group:AddButton("Infinite Invisibility", function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
local OGlove = CheckGlove()
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
task.wait(1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
v.Transparency = 0
end
end
else
Notification("You need to be in lobby and have 666+ slaps.", _G.TimeNotify)
end
end)
----// Set Toggle Anti \\-----
table.insert(_G.ConnectFun, game.Workspace.NoChanged.Changed:Connect(function()
	for i, v in pairs(_G.AntiToggles) do
		spawn(function()
			Toggles[i]:SetValue(game.Workspace.NoChanged.Value)
		end)
	end
end))
