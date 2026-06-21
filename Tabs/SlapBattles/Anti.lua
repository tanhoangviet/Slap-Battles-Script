local Anti1Group = Tabs.Tab2:AddLeftGroupbox("Toggle All")

_G.AntiToggles = {}
if game.Workspace:FindFirstChild("NoChanged") == nil then
	Create("BoolValue", {Name = "NoChanged", Parent = workspace})
end
_G.AntiToggles["Toggle Anti"] = Anti1Group:AddToggle("Toggle Anti", {
    Text = "Toggle Anti",
    Default = false,
    Callback = function(Value)
game.Workspace.NoChanged.Value = Value
    end
}):AddKeyPicker("ToggleAnti", {
   Default = "X",
   Text = "Toggle Anti",
   Mode = "Toggle" ,
   SyncToggleState = true
})

local Anti2Group = Tabs.Tab2:AddRightGroupbox("Anti")

Anti2Group:AddSlider("Transparency Anti Void", {
    Text = "Transparency Anti Void",
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
_G.Transparency = Value
    end
})

Anti2Group:AddDropdown("Choose Anti Void", {
    Text = "Choose Anti Void",
    Values = {"Normal","Retro","Water","Psycho","Bob","Fall"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AntiVoidChoose = Value
    end
})

local AntiDependencyBox = Anti2Group:AddDependencyBox()

AntiDependencyBox:AddButton({
    Text = "Set Fall Pos",
    Visible = false,
    Func = function()
if LoadSetFallPos then return end
LoadSetFallPos = true
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
if Character and Character:FindFirstChild("HumanoidRootPart") then
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Old Fall (Yourself)" then
			v:Destroy()
		end
	end
	if not workspace:FindFirstChild("Old Fall (Yourself)") then
		local desc = Players:GetHumanoidDescriptionFromUserId(LocalPlayer.UserId)
		local Yourself = Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R6)
		Yourself.Name = "Old Fall (Yourself)"
		Yourself.Parent = workspace
		local Root = Character.HumanoidRootPart
		local Position = Root.Position
		Yourself:SetPrimaryPartCFrame(CFrame.new(Position))
		Yourself.Humanoid:ApplyDescription(desc)
	end
end
task.wait(0.3)
LoadSetFallPos = false
    end
})

table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
	if workspace:FindFirstChild("Old Fall (Yourself)") then
		for i, v in pairs(workspace:FindFirstChild("Old Fall (Yourself)"):GetChildren()) do
			if v:IsA("BasePart") then
				v.Anchored = true
				v.CanCollide = false
				v.Transparency = _G.Transparency or 0.7
			end
		end
	end
end))

AntiDependencyBox:AddButton({
    Text = "Destroy Fall Pos",
    Visible = false,
    Func = function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name == "Old Fall (Yourself)" then
			v:Destroy()
		end
	end
end
    end
})

AntiDependencyBox:SetupDependencies({
	{Options["Choose Anti Void"], "Fall"}
})

function partapply(part, enable)
	part.CanCollide = enable and true or false
	part.Transparency = enable and _G.Transparency or 1
	for _, v in ipairs(part:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = enable and true or false
			v.Transparency = enable and _G.Transparency or 1
		end
	end
end
function disable(part)
	if part:IsA("BasePart") then
		part.CanCollide = false
		part.Transparency = 1
	end
end
function disableChildren(obj)
	for _, v in ipairs(obj:GetDescendants()) do
		if v:IsA("BasePart") then
			disable(v)
		end
	end
end

_G.AntiToggles["Anti Void"] = Anti2Group:AddToggle("Anti Void", {
    Text = "Anti Void",
    Default = false,
    Callback = function(Value)
_G.AntiVoid = Value
while _G.AntiVoid do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y < -30 then
	if _G.AntiVoidChoose == "Fall" then
		if workspace:FindFirstChild("Old Fall (Yourself)") and workspace["Old Fall (Yourself)"]:FindFirstChild("HumanoidRootPart") then
			FallCFrame = workspace["Old Fall (Yourself)"].HumanoidRootPart.CFrame
		else
			FallCFrame = game.Workspace.Origo.CFrame * CFrame.new(0,-5,0)
		end
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(FallCFrame)
	end
end
for _, v in ipairs(workspace:GetChildren()) do
	if v.Name == "BobWalk1" and v:IsA("BasePart") then
		partapply(v, _G.AntiVoidChoose:lower():find("bob"))
	end
	if v.Name == "Psycho" and v:IsA("BasePart") then
		partapply(v, _G.AntiVoidChoose:lower():find("psycho"))
		if v:FindFirstChild("Kraken") then
			partapply(v.Kraken, _G.AntiVoidChoose:lower():find("water"))
		end
		if v:FindFirstChild("Retro1") then
			partapply(v.Retro1, _G.AntiVoidChoose:lower():find("retro"))
		end
	end
	if v.Name == "VoidPart" then
		partapply(v, _G.AntiVoidChoose == "Normal")
		if v:FindFirstChild("TAntiVoid") then
			partapply(v.TAntiVoid, _G.AntiVoidChoose:lower():find("normal") or _G.AntiVoidChoose:lower():find("bob"))
		end
	end
end
task.wait()
end
for _, v in ipairs(workspace:GetChildren()) do
	if v.Name == "BobWalk1" then
		disable(v)
		disableChildren(v)
	end
	if v.Name == "Psycho" then
		disable(v)
		if v:FindFirstChild("Kraken") then
			disable(v.Kraken)
		end
		if v:FindFirstChild("Retro1") then
			disable(v.Retro1)
			disableChildren(v.Retro1)
		end
	end
	if v.Name == "VoidPart" then
		disable(v)
		if v:FindFirstChild("TAntiVoid") then
			disable(v.TAntiVoid)
		end
	end
end
    end
})

_G.AntiToggles["Anti Portal"] = Anti2Group:AddToggle("Anti Portal", {
    Text = "Anti Portal",
    Default = false,
    Callback = function(Value)
_G.AntiPortal = Value
if _G.AntiPortal == true then
workspace.Lobby.Teleport2.CanTouch = false
workspace.Lobby.Teleport3.CanTouch = false
workspace.Lobby.Teleport4.CanTouch = false
workspace.Lobby.Teleport6.CanTouch = false
else
workspace.Lobby.Teleport2.CanTouch = true
workspace.Lobby.Teleport3.CanTouch = true
workspace.Lobby.Teleport4.CanTouch = true
workspace.Lobby.Teleport6.CanTouch = true
end
    end
})

_G.AntiToggles["Anti Admin"] = Anti2Group:AddToggle("Anti Admin", {
    Text = "Anti Admin",
    Default = false,
    Callback = function(Value)
_G.AntiMods = Value
while _G.AntiMods do
for i,v in pairs(game.Players:GetChildren()) do
        if v:GetRankInGroupAsync(9950771) >= 2 then
         _G.AntiKick = false
     game.Players.LocalPlayer:Kick("High Rank Player Detected.".." [ "..v.Name.." ]")
   break
     end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Kick"] = Anti2Group:AddToggle("Anti Kick", {
    Text = "Anti Kick",
    Default = false,
    Callback = function(Value)
_G.AntiKick = Value
while _G.AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
    end
})

_G.AntiToggles["Anti Afk"] = Anti2Group:AddToggle("Anti Afk", {
    Text = "Anti Afk",
    Default = false,
    Callback = function(Value)
_G.AntiAfk = Value
if getconnections then
	for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
		if _G.AntiAfk then
			v:Disable()
		else
			v:Enable()
		end
	end
end
if not getconnections then
	if not AntiAfkConnect then
		AntiAfkConnect = game.Players.LocalPlayer.Idled:Connect(function()
			if _G.AntiAfk then
				game:GetService("VirtualUser"):CaptureController()
				game:GetService("VirtualUser"):ClickButton2(Vector2.new())
			end
		end)
	end
end
    end
})

_G.AntiToggles["Anti Obby"] = Anti2Group:AddToggle("Anti Obby", {
    Text = "Anti Obby",
    Default = false,
    Callback = function(Value)
_G.AntiObby = Value
while _G.AntiObby do
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "Lava") then
             if v.CanTouch == true then
                 v.CanTouch = false
             end
         end
     end
task.wait()
end
if _G.AntiObby == false then
for _, v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "Lava") then
              if v.CanTouch == false then
                  v.CanTouch = true
             end
         end
    end
end
    end
})

_G.AntiToggles["Anti Megarock"] = Anti2Group:AddToggle("Anti Megarock", {
    Text = "Anti Megarock | Custom",
    Default = false,
    Callback = function(Value)
_G.AntiRock = Value
while _G.AntiRock do
for _,v in pairs(game.Players:GetChildren()) do
                    if v.Character and v.Character:FindFirstChild("rock") then
                        v.Character.rock.CanTouch = false
                        v.Character.rock.CanQuery = false
                    end
                end
task.wait()
end
    end
})

_G.AntiToggles["Anti Cherry"] = Anti2Group:AddToggle("Anti Cherry", {
    Text = "Anti Cherry",
    Default = false,
    Callback = function(Value)
_G.AntiCherry = Value
while _G.AntiCherry do
if workspace:FindFirstChild("cherry_storage") then
for i, v in pairs(workspace.cherry_storage:GetChildren()) do
if not v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("clone_remote") and v:FindFirstChild("HumanoidRootPart") then
slapglove(v:FindFirstChild("HumanoidRootPart"))
end
end
end
task.wait()
end
    end
})

if hookmetamethod then
	_G.AntiToggles["Anti Spam Bypass"] = Anti2Group:AddToggle("Anti Spam Bypass", {
	    Text = "Anti Spam Bypass (Chainsaw)",
	    Default = false,
	    Callback = function(Value)
	getgenv().AntiSpamBypass = Value
	    end
	})
end

_G.AntiToggles["Anti Piano"] = Anti2Group:AddToggle("Anti Piano", {
    Text = "Anti Piano",
    Default = false,
    Callback = function(Value)
if hookmetamethod then getgenv().AntiPiano = Value end
if not hookmetamethod then
	local Piano = game:GetService("ReplicatedStorage"):FindFirstChild("Piano") or game:GetService("ReplicatedStorage"):FindFirstChild("_Piano_")
	if Piano then
		Piano.Name = Value and "_Piano_" or "Piano"
	end
end
    end
})

_G.AntiToggles["Anti Boss Guide"] = Anti2Group:AddToggle("Anti Boss Guide", {
    Text = "Anti Join Boss Guide",
    Default = false,
    Callback = function(Value)
_G.AntiJoinBossGuide = Value
while _G.AntiJoinBossGuide do
for i, v in pairs(workspace.BountyHunterRoom.Build:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("Meshes/boxshadow_Cube.005") and v["Meshes/boxshadow_Cube.005"]:FindFirstChild("Hitbox") then
v["Meshes/boxshadow_Cube.005"].Hitbox.CanTouch = false
end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Snowball"] = Anti2Group:AddToggle("Anti Snowball", {
    Text = "Anti Snowball",
    Default = false,
    Callback = function(Value)
_G.AntiSnowball = Value
while _G.AntiSnowball do
for i, v in pairs(workspace:GetChildren()) do
if v.Name == "Snowball" then
v:Destroy()
end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Ball Baller"] = Anti2Group:AddToggle("Anti Ball Baller", {
    Text = "Anti Ball Baller",
    Default = false,
    Callback = function(Value)
_G.AntiBallBaller = Value
while _G.AntiBallBaller do
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "ClonedBall" then
        v:Destroy()
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Venom Infected"] = Anti2Group:AddToggle("Anti Venom Infected", {
    Text = "Anti Is Ice",
    Default = false,
    Callback = function(Value)
_G.AntiVenomInfected = Value
while _G.AntiVenomInfected do
for i, v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "is_ice" then
        v.CanTouch = false
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Ghost Player"] = Anti2Group:AddToggle("Anti Ghost Player", {
    Text = "Anti Ghost Player",
    Default = false,
    Callback = function(Value)
_G.AntiGhostPlayer = Value
while _G.AntiGhostPlayer do
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer.Name and game.Workspace:FindFirstChild(v.Name.."_Body") and game.Workspace[v.Name.."_Body"]:FindFirstChild("Part") then
slapglove(game.Workspace[v.Name.."_Body"].Part)
end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Trap"] = Anti2Group:AddToggle("Anti Trap", {
    Text = "Anti Trap",
    Default = false,
    Callback = function(Value)
_G.AntiTrap = Value
while _G.AntiTrap do
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "BearTrap" and v:FindFirstChild("HitBox") then
v.HitBox.CanTouch = false
v.HitBox.CanQuery = false
end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Paint Splash"] = Anti2Group:AddToggle("Anti Paint Splash", {
    Text = "Anti Paint Splash",
    Default = false,
    Callback = function(Value)
_G.AntiPaintSplash = Value
while _G.AntiPaintSplash do
for i,v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name:lower(), "paint") then
        v.CanTouch = false
        v.CanQuery = false
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Tycoon Mastery"] = Anti2Group:AddToggle("Anti Tycoon Mastery", {
    Text = "Anti Tycoon Kill Brick",
    Default = false,
    Callback = function(Value)
_G.AntiTycoonMatery = Value
while _G.AntiTycoonMatery do
for i,v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name:lower(), "tycoon") and not v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("Building") then
	    for _, j in pairs(v:GetDescendants()) do
			if j.Name:lower():find("killbrick") or j.Name:lower():find("doorbeam") then
				j.CanTouch = false
				j.CanQuery = false
			end
		end
    end
end
task.wait(0.3)
end
    end
})

_G.AntiToggles["Anti Lure"] = Anti2Group:AddToggle("Anti Lure", {
    Text = "Anti Lure",
    Default = false,
    Callback = function(Value)
_G.AntiLure = Value
while _G.AntiLure do
local function foundlurechar()
	local lure
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	    if v.Name:lower():find("lure") then
	        lure = v
	    end
	end
	return lure
end
for i,v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name, "_lure") and v:FindFirstChild("Root") and v:FindFirstChild("watercircle") and foundlurechar() then
        local OldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Root.CFrame
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
        wait(0.5)
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Mail"] = Anti2Group:AddToggle("Anti Mail", {
    Text = "Anti Mail",
    Default = false,
    Callback = function(Value)
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = Value
_G.AntiMail = Value
while _G.AntiMail do
if game.Players.LocalPlayer.Character:FindFirstChild("YouHaveGotMail") then
game.Players.LocalPlayer.Character.YouHaveGotMail.Disabled = true
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Water"] = Anti2Group:AddToggle("Anti Water", {
    Text = "Anti Water",
    Default = false,
    Callback = function(Value)
_G.AntiWater = Value
while _G.AntiWater do
if game.Workspace:FindFirstChild("puddles") then
   for i,v in pairs(game.Workspace.puddles:GetChildren()) do
          if v.Name == "puddle" then
             v.CanTouch = false
         end
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Jail Admin"] = Anti2Group:AddToggle("Anti Jail Admin", {
    Text = "Anti Jail Admin",
    Default = false,
    Callback = function(Value)
_G.AntiJailAdmin = Value
while _G.AntiJailAdmin do
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name == "jail" then
		for i,h in pairs(v:GetChildren()) do
			if h:IsA("BasePart") then
	            h.CanCollide = false
			end
        end
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Mitten Blind"] = Anti2Group:AddToggle("Anti Mitten Blind", {
    Text = "Anti Mitten Blind",
    Default = false,
    Callback = function(Value)
_G.AntiMittenBlind = Value
while _G.AntiMittenBlind do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MittenBlind") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("MittenBlind"):Destroy()
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Knockoff"] = Anti2Group:AddToggle("Anti Knockoff", {
    Text = "Anti Knockoff",
    Default = false,
    Callback = function(Value)
_G.AntiKnock = Value
while _G.AntiKnock do
if game.Workspace.CurrentCamera and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Workspace.CurrentCamera.CameraSubject == game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s_falsehead") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Hallow"] = Anti2Group:AddToggle("Anti Hallow", {
    Text = "Anti Hallow - Jack",
    Default = false,
    Callback = function(Value)
if game.Players.LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("LegacyClient") and game.Players.LocalPlayer.PlayerScripts.LegacyClient:FindFirstChild("HallowJackAbilities") then
	game.Players.LocalPlayer.PlayerScripts.LegacyClient.HallowJackAbilities.Disabled = Value
end
    end
})

_G.AntiToggles["Anti Booster"] = Anti2Group:AddToggle("Anti Booster", {
    Text = "Anti Booster",
    Default = false,
    Callback = function(Value)
_G.AntiBooster = Value
while _G.AntiBooster do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if v.Name == "BoosterObject" then
        v:Destroy()
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Squid"] = Anti2Group:AddToggle("Anti Squid", {
    Text = "Anti Squid",
    Default = false,
    Callback = function(Value)
_G.AntiSquid = Value
if _G.AntiSquid == false then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = true
end
while _G.AntiSquid do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("SquidInk") then
game.Players.LocalPlayer.PlayerGui.SquidInk.Enabled = false
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Lamp"] = Anti2Group:AddToggle("Anti Lamp", {
    Text = "Anti Lamp",
    Default = false,
    Callback = function(Value)
_G.AntiLamp = Value
while _G.AntiLamp do
for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
	if v.Name:find("whiteframe") then
		v.Enabled = false
	end
end
for i, v in pairs(game.Lighting:GetChildren()) do
	if v.Name:find("lampcc") then
		v.Enabled = false
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Pie"] = Anti2Group:AddToggle("Anti Pie", {
    Text = "Anti Pie",
    Default = false,
    Callback = function(Value)
_G.AntiPie = Value
while _G.AntiPie do
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("PieSplash") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("PieSplash"):Destroy()
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Conveyor"] = Anti2Group:AddToggle("Anti Conveyor", {
    Text = "Anti Conveyor",
    Default = false,
    Callback = function(Value)
if game.Players.LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("LegacyClient") and game.Players.LocalPlayer.PlayerScripts.LegacyClient:FindFirstChild("ConveyorVictimized") then
	game.Players.LocalPlayer.PlayerScripts.LegacyClient.ConveyorVictimized.Disabled = Value
end
    end
})

_G.AntiToggles["Anti Ice"] = Anti2Group:AddToggle("Anti Ice", {
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

_G.AntiToggles["Anti Time Stop"] = Anti2Group:AddToggle("Anti Time Stop", {
    Text = "Anti Time Stop",
    Default = false,
    Callback = function(Value)
_G.AntiTimestop = Value
while _G.AntiTimestop do
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.ClassName == "Part" then
        v.Anchored = false
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Null"] = Anti2Group:AddToggle("Anti Null", {
    Text = "Anti Null",
    Default = false,
    Callback = function(Value)
_G.AntiNull = Value
while _G.AntiNull do
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name == "Imp" and v:FindFirstChild("Body") then
        slapglove(v:FindFirstChild("Body"))
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Run"] = Anti2Group:AddToggle("Anti Run", {
    Text = "Anti Run",
    Default = false,
    Callback = function(Value)
_G.AutoExit = Value
while _G.AutoExit do
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") then
for i, v in pairs(workspace:GetChildren()) do
    if string.find(v.Name, "Labyrinth") and v:FindFirstChild("Doors") then
        for i, y in ipairs(v.Doors:GetChildren()) do
            if y:FindFirstChild("Hitbox") and y.Hitbox:FindFirstChild("TouchInterest") then
	            y.Hitbox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Record"] = Anti2Group:AddToggle("Anti Record", {
    Text = "Anti Record (Chat)",
    Default = false,
    Callback = function(Value)
_G.AntiRecord = Value
    end
})
local function findRec(p)
	if p ~= game.Players.LocalPlayer then
		p.Chatted:Connect(function(message)
			Words = message:split(" ")
			if _G.AntiRecord == true then
				for i, v in pairs(Words) do
					if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") then
						Toggles["Anti Kick"]:SetValue(false)
						game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..p.Name.." ] [ "..message.." ]")
					end
				end
			end
		end)
	end
end
for i,p in pairs(game.Players:GetChildren()) do
findRec(p)
end
game.Players.PlayerAdded:Connect(function(p)
findRec(p)
end)

_G.AntiToggles["Anti REDACTED"] = Anti2Group:AddToggle("Anti REDACTED", {
    Text = "Anti [REDACTED]",
    Default = false,
    Callback = function(Value)
if game.Players.LocalPlayer:FindFirstChild("PlayerScripts"):FindFirstChild("LegacyClient") and game.Players.LocalPlayer.PlayerScripts.LegacyClient:FindFirstChild("Well") then
	game.Players.LocalPlayer.PlayerScripts.LegacyClient.Well.Disabled = Value
end
    end
})

_G.AntiToggles["Anti Brazil"] = Anti2Group:AddToggle("Anti Brazil", {
    Text = "Anti Brazil",
    Default = false,
    Callback = function(Value)
_G.AntiBrazil = Value
while _G.AntiBrazil do
for i,v in pairs(game.workspace.Lobby.brazil:GetChildren()) do
	if v.CanTouch == true then
		v.CanTouch = false
	end
end
task.wait()
end
if _G.AntiBrazil == false then
	for i,v in pairs(game.workspace.Lobby.brazil:GetChildren()) do
		if v.CanTouch == false then
			v.CanTouch = true
		end
	end
end
    end
})

_G.AntiToggles["Anti Za Hando"] = Anti2Group:AddToggle("Anti Za Hando", {
    Text = "Anti Za Hando",
    Default = false,
    Callback = function(Value)
_G.AntiZaHando = Value
while _G.AntiZaHando do
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Part" and not (v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound")) then
        v:Destroy()
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Bob"] = Anti2Group:AddToggle("Anti Bob", {
    Text = "Anti Bob",
    Default = false,
    Callback = function(Value)
_G.AntiBob = Value
while _G.AntiBob do
for i, v in pairs(game.Workspace:GetChildren()) do
	if string.find(v.Name:lower(), "bob_") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Target") and v.Target.Value == game.Players.LocalPlayer.Name then
		if IsNetworkOwner(v.HumanoidRootPart) then
			if firetouchinterest then
	            firetouchinterest(v.HumanoidRootPart, workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"], 0)
	            firetouchinterest(v.HumanoidRootPart, workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"], 1)
	        end
	        v.HumanoidRootPart:PivotTo(workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame)
		end
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Iceskate"] = Anti2Group:AddToggle("Anti Iceskate", {
    Text = "Anti Ice Skate",
    Default = false,
    Callback = function(Value)
_G.AntiIceskate = Value
while _G.AntiIceskate do 
if workspace:FindFirstChild("IceBin") then
    for i, v in pairs(workspace.IceBin:GetChildren()) do
        if v:IsA("BasePart") then
	        v:Destroy()
        end
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Mouse Trap"] = Anti2Group:AddToggle("Anti Iceskate", {
    Text = "Anti Mouse Trap",
    Default = false,
    Callback = function(Value)
_G.AntiMouseTrap = Value
while _G.AntiMouseTrap do 
for i, v in pairs(workspace:GetChildren()) do
	if v.Name:lower() == "mouse trap" and v:FindFirstChild("Hitbox") then
		v:FindFirstChild("Hitbox").CanTouch = false
		v:FindFirstChild("Hitbox").CanQuery = false
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Fort"] = Anti2Group:AddToggle("Anti Fort", {
    Text = "Anti Fort",
    Default = false,
    Callback = function(Value)
_G.AntiFort = Value
while _G.AntiFort do
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Part" and v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound") then
        v.CanCollide = false
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Pusher"] = Anti2Group:AddToggle("Anti Pusher", {
    Text = "Anti Pusher",
    Default = false,
    Callback = function(Value)
_G.AntiPusher = Value
while _G.AntiPusher do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "wall" then
                        v.CanCollide = false
                    end
                end
task.wait()
end
    end
})

_G.AntiToggles["Anti Defend"] = Anti2Group:AddToggle("Anti Defend", {
    Text = "Anti Defend",
    Default = false,
    Callback = function(Value)
_G.NoclipBarrier = Value
if _G.NoclipBarrier == false then
	for i,v in pairs(game.Workspace:GetChildren()) do
		if string.find(v.Name, "ÅBarrier") and v.CanCollide == false then
			v.CanCollide = true
		end
	end
end
while _G.NoclipBarrier do
for i,v in pairs(game.Workspace:GetChildren()) do
	if string.find(v.Name, "ÅBarrier") and v.CanCollide == true then
		v.CanCollide = false
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Bubble"] = Anti2Group:AddToggle("Anti Bubble", {
    Text = "Anti Bubble",
    Default = false,
    Callback = function(Value)
_G.AntiBubble = Value
while _G.AntiBubble do
for i,v in pairs(workspace:GetChildren()) do
	if v.Name == "BubbleObject" and v:FindFirstChildOfClass("Weld") then
	    v:FindFirstChildOfClass("Weld"):Destroy()
	end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Pylon"] = Anti2Group:AddToggle("Anti Pylon", {
    Text = "Anti Pylon",
    Default = false,
    Callback = function(Value)
_G.AntiPylon = Value
while _G.AntiPylon do
for i,v in pairs(workspace:GetChildren()) do
    if v.Name == "Pylon" and v:FindFirstChild("OwningPlayer") and v.OwningPlayer.Value ~= game.Players.LocalPlayer.Name then
	    if v:FindFirstChild("Hitbox") then
	        v:FindFirstChild("Hitbox"):Destroy()
		end
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Pile"] = Anti2Group:AddToggle("Anti Pile", {
    Text = "Anti Pile",
    Default = false,
    Callback = function(Value)
_G.AntiPile = Value
while _G.AntiPile do
for i,v in pairs(workspace:GetChildren()) do
    if v.Name:find("Pile") and v.CanTouch == true then
	    v.CanTouch = false
    end
end
task.wait()
end
    end
})

_G.AntiToggles["Anti Stun"] = Anti2Group:AddToggle("Anti Stun", {
    Text = "Anti Stun",
    Default = false,
    Callback = function(Value)
_G.AntiStun = Value
while _G.AntiStun do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Workspace:FindFirstChild("Shockwave") and game.Players.LocalPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
task.wait()
end
    end
})

_G.AntiToggles["Anti COD"] = Anti2Group:AddToggle("Anti COD", {
    Text = "Anti Cube Of Death",
    Default = false,
    Callback = function(Value)
_G.AntiCod = Value
while _G.AntiCod do
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = false
end
task.wait()
end
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) and game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:FindFirstChild("Part") then
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CanTouch = true
end
    end
})

_G.AntiToggles["Anti Death Barriers"] = Anti2Group:AddToggle("Anti Death Barriers", {
    Text = "Anti Death Barriers",
    Default = false,
    Callback = function(Value)
_G.AntiDead = Value
while _G.AntiDead do
if game.Workspace:FindFirstChild("DEATHBARRIER") then
workspace.DEATHBARRIER.CanTouch = not Value
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
    if v.ClassName == "Part" and v.Name == "BLOCK" then
        v.CanTouch = not Value
    end
end
end
workspace.DEATHBARRIER2.CanTouch = not Value 
workspace.dedBarrier.CanTouch = not Value
workspace.ArenaBarrier.CanTouch = not Value
workspace.AntiDefaultArena.CanTouch = not Value
task.wait()
end
if game.Workspace:FindFirstChild("DEATHBARRIER") then
workspace.DEATHBARRIER.CanTouch = true
for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
    if v.ClassName == "Part" and v.Name == "BLOCK" then
        v.CanTouch = true
    end
end
end
workspace.DEATHBARRIER2.CanTouch = true
workspace.dedBarrier.CanTouch = true
workspace.ArenaBarrier.CanTouch = true
workspace.AntiDefaultArena.CanTouch = true
    end
})

Anti2Group:AddDropdown("Anti RagdollV", {
    Text = "Anti Ragdoll",
    Values = {"V0.5", "V1", "V2", "V3"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AntiRagdolledV = Value
    end
})

_G.AntiToggles["Anti Ragdoll"] = Anti2Group:AddToggle("Anti Ragdoll", {
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
		if game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
			for i, v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
				if v:IsA("BodyVelocity") or v:IsA("VectorForce") or v:IsA("LinearVelocity") or v:IsA("BodyGyro") or v:IsA("BodyAngularVelocity") then
					if not (v.Name == "AntiRagBV" or v.Name == "GyroHandler" or v.Name == "VelocityHandler" or v.Name == "FreezeBV" or v.Name == "HelpMasteryFreezeBv") then
						v:Destroy()
					end
				end
			end
			if _G.AntiRagdolledV == "V1" then
				if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
					game.Players.LocalPlayer.Character.Torso.Anchored = true
				end
			end
			if _G.AntiRagdolledV == "V2" then
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("AntiRagBV") == nil then
					CreateFreezeBV({Name = "AntiRagBV"})
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
		elseif game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false then
			hasBounced = false
			CreateFreezeBV({Remove = true, Name = "AntiRagBV"})
			if game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
				game.Players.LocalPlayer.Character.Torso.Anchored = false
			end
		end
	end
end
end))

