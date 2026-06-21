local InfoServer1Group = Tabs.Tab:AddLeftGroupbox("Server")

CanYouFps = InfoServer1Group:AddLabel("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]", true)
CanYouPing = InfoServer1Group:AddLabel("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]", true)
ServerPlayer = InfoServer1Group:AddLabel("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]", true)
TimeServer = InfoServer1Group:AddLabel("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]", true)
TimeNow = InfoServer1Group:AddLabel("Now Time [ "..os.date("%X").." ]", true)
if tonumber(os.date("%H")) >= 5 and tonumber(os.date("%H")) < 12 then
AlarmTime = InfoServer1Group:AddLabel("Good Morning [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 17 then
AlarmTime = InfoServer1Group:AddLabel("Good Afternoon [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 17 and tonumber(os.date("%H")) < 21 then
AlarmTime = InfoServer1Group:AddLabel("Good Evening [ "..tonumber(os.date("%H")).." Hour ]", true)
else
AlarmTime = InfoServer1Group:AddLabel("Good Night [ "..tonumber(os.date("%H")).." Hour ]", true)
end
AgeAccYou = InfoServer1Group:AddLabel("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]", true)
if game.Workspace:FindFirstChild("RoomsFolder") then
PocketSpawn = {}
for i,v in pairs(game.Workspace.RoomsFolder:GetChildren()) do
if string.find(v.Name, "'s Room") then
table.insert(PocketSpawn, v)
end
end
end
if #PocketSpawn == 0 then
PocketKeypad = InfoServer1Group:AddLabel("Pocket Room [ No ]", true)
elseif #PocketSpawn > 0 then
PocketKeypad = InfoServer1Group:AddLabel("Pocket Room [ Yes ] [ "..#PocketSpawn.." ]", true)
end
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health == 0 then
ResetTime = InfoServer1Group:AddLabel("Time Spawn [ "..game.Players.RespawnTime.." ]", true)
else
ResetTime = InfoServer1Group:AddLabel("Time Spawn [ Not Dead ]", true)
end
CodeKeypad = InfoServer1Group:AddLabel("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]", true)
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn = InfoServer1Group:AddLabel("Keypad Spawn [ No ]", true)
else
KeypadSpawn = InfoServer1Group:AddLabel("Keypad Spawn [ Yes ]", true)
end
if not game.Workspace:FindFirstChild("Toolbox") then
ToolboxSpawn = InfoServer1Group:AddLabel("Player Spawn Toolbox [ No ]", true)
else
ToolboxSpawn = InfoServer1Group:AddLabel("Player Spawn Toolbox [ Yes ]", true)
end
if not game.Workspace:FindFirstChild("Gravestone") then
GravestoneSpawn = InfoServer1Group:AddLabel("Gravestone Spawn [ No ]", true)
else
GravestoneSpawn = InfoServer1Group:AddLabel("Gravestone Spawn [ Yes ]", true)
end
if not game.Workspace:FindFirstChild("Gift") then
GiftSpawn = InfoServer1Group:AddLabel("Player Spawn Gift [ No ]", true)
else
GiftSpawn = InfoServer1Group:AddLabel("Player Spawn Gift [ Yes ]", true)
end
if workspace.Arena.island5.Slapples:FindFirstChild("GoldenSlapple") and workspace.Arena.island5.Slapples.GoldenSlapple:FindFirstChild("Glove") and workspace.Arena.island5.Slapples.GoldenSlapple.Glove.Transparency == 1 then
GoldenSlappleSpawn = InfoServer1Group:AddLabel("Golden Slapple Spawn [ No ]", true)
else
GoldenSlappleSpawn = InfoServer1Group:AddLabel("Golden Slapple Spawn [ Yes ]", true)
end
if game.Workspace:FindFirstChild("JetOrb") then
OrbSpawn = InfoServer1Group:AddLabel("Spawn Orb [ Jet ]", true)
elseif game.Workspace:FindFirstChild("PhaseOrb") then
OrbSpawn = InfoServer1Group:AddLabel("Spawn Orb [ Phase ]", true)
elseif game.Workspace:FindFirstChild("SiphonOrb") then
OrbSpawn = InfoServer1Group:AddLabel("Spawn Orb [ Siphon ]", true)
elseif game.Workspace:FindFirstChild("MATERIALIZEOrb") then
OrbSpawn = InfoServer1Group:AddLabel("Spawn Orb [ MATERIALIZE ]", true)
else
OrbSpawn = InfoServer1Group:AddLabel("Spawn Orb [ No ]", true)
end
CheckNullShards = InfoServer1Group:AddLabel("Check Null Shard [ "..game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.Name].NullShards.Value.." ]", true)
CheckTournamentWins = InfoServer1Group:AddLabel("Check Tournament Win [ "..game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.Name].TournamentWins.Value.." ]", true)
CheckSlap = InfoServer1Group:AddLabel("Check Slap [ "..CheckSlap().." ]", true)
Glove = {}
for i,v in pairs(game.Workspace.Lobby.GloveStands:GetChildren()) do
if v.Name ~= "Unknown" then
table.insert(Glove, v)
end
end
InfoServer1Group:AddLabel("Much Glove [ "..#Glove.." ]", true)
GloveCheck = InfoServer1Group:AddLabel("You're Using Glove [ "..CheckGlove().." ]", true)
PlateTime = InfoServer1Group:AddLabel("Plate Time [ 0 ]", true)
GravityYou = InfoServer1Group:AddLabel("Gravity [ "..game.Workspace.Gravity.." ]")
PositionYou = InfoServer1Group:AddLabel("Position In Your [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]", true)
local InfoServer3Group = Tabs.Tab:AddLeftGroupbox("Glove Badge / Slap")

local BadgeSuccess = {}
local BadgeFailure = {}
for i, v in pairs(game.Players.LocalPlayer._unlockedGloves:GetChildren()) do
if v.Value == true then
table.insert(BadgeSuccess, v)
end
if v.Value == false then
table.insert(BadgeFailure , v)
end
end

InfoServer3Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.CheckGlovePlayer = FoundPlr(Value, false)
if _G.CheckGlovePlayer then
	PlayersCheck:SetText("Player Check [ ✅ ] [ ".._G.CheckGlovePlayer.Name.." ]", _G.TimeNotify)
else
	PlayersCheck:SetText("Player Check [ ❌ ]", _G.TimeNotify)
end
    end
})

GeneralBadge = InfoServer3Group:AddLabel("General Glove / Badge [ ✅ - "..(#BadgeSuccess == 0 and "Nah" or #BadgeSuccess).." / ❌ - "..(#BadgeFailure == 0 and "Nah" or #BadgeFailure).." ]", true)
PlayersCheck = InfoServer3Group:AddLabel("Player Check [ User ]", true)

InfoServer3Group:AddButton({
    Text = "Check Glove / Badge",
    Func = function()
local BadgeSuccess = {}
local BadgeFailure = {}
local PlayerTarg = game.Players:FindFirstChild(_G.CheckGlovePlayer) or game.Players.LocalPlayer
local UnlockedGloves = PlayerTarg:FindFirstChild("_unlockedGloves")
for i, v in pairs(UnlockedGloves:GetChildren()) do
if v.Value == true then
table.insert(BadgeSuccess, v)
end
if v.Value == false then
table.insert(BadgeFailure , v)
end
end
GeneralBadge:SetText("General Glove / Badge [ ✅ - "..(#BadgeSuccess == 0 and "Nah" or #BadgeSuccess).." / ❌ - "..(#BadgeFailure == 0 and "Nah" or #BadgeFailure).." ]", true)
for i, v in pairs(UnlockedGloves:GetChildren()) do
GloveBadges["Check "..v.Name]:SetText(v.Name.." - "..(v.Value == true and "✅" or "❌"), true)
end
    end
})

GloveBadges = {}
for i, v in pairs(game.Players.LocalPlayer._unlockedGloves:GetChildren()) do
GloveBadges["Check "..v.Name] = InfoServer3Group:AddLabel(v.Name.." - "..(v.Value == true and "✅" or "❌"), true)
end

local InfoServer2Group = Tabs.Tab:AddRightGroupbox("Toggle Return")

InfoServer2Group:AddToggle("Toggle Set", {
    Text = "Toggle Return",
    Default = false,
    Callback = function(Value)
_G.AutoSetInfo = Value
    end
})
table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
if not _G.AutoSetInfo then return end
pcall(function()
CanYouFps:SetText("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]")
CanYouPing:SetText("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]")
ServerPlayer:SetText("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]", true)
TimeServer:SetText("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]")
TimeNow:SetText("Now Time [ "..os.date("%X").." ]")
if tonumber(os.date("%H")) >= 5 and tonumber(os.date("%H")) < 12 then
AlarmTime:SetText("Good Morning [ "..tonumber(os.date("%H")).." Hour ]")
elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 17 then
AlarmTime:SetText("Good Afternoon [ "..tonumber(os.date("%H")).." Hour ]")
elseif tonumber(os.date("%H")) >= 17 and tonumber(os.date("%H")) < 21 then
AlarmTime:SetText("Good Evening [ "..tonumber(os.date("%H")).." Hour ]")
else
AlarmTime:SetText("Good Night [ "..tonumber(os.date("%H")).." Hour ]")
end
if game.Workspace:FindFirstChild("RoomsFolder") then
PocketSpawn = {}
for i,v in pairs(game.Workspace.RoomsFolder:GetChildren()) do
if string.find(v.Name, "'s Room") then
table.insert(PocketSpawn, v)
end
end
end
if #PocketSpawn == 0 then
PocketKeypad:SetText("Pocket Room [ No ]")
elseif #PocketSpawn > 0 then
PocketKeypad:SetText("Pocket Room [ Yes ] [ "..#PocketSpawn.." ]")
end
AgeAccYou:SetText("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]")
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health == 0 then
ResetTime:SetText("Time Spawn [ "..game.Players.RespawnTime.." ]")
else
ResetTime:SetText("Time Spawn [ Not Dead ]")
end
CodeKeypad:SetText("Code Keypad [ "..tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7).." ]")
if not game.Workspace:FindFirstChild("Keypad") then
KeypadSpawn:SetText("Keypad Spawn [ No ]")
else
KeypadSpawn:SetText("Keypad Spawn [ Yes ]")
end
if not game.Workspace:FindFirstChild("Toolbox") then
ToolboxSpawn:SetText("Player Spawn Toolbox [ No ]")
else
ToolboxSpawn:SetText("Player Spawn Toolbox [ Yes ]")
end
if not game.Workspace:FindFirstChild("Gravestone") then
GravestoneSpawn:SetText("Gravestone Spawn [ No ]")
else
GravestoneSpawn:SetText("Gravestone Spawn [ Yes ]")
end
if not game.Workspace:FindFirstChild("Gift") then
GiftSpawn:SetText("Player Spawn Gift [ No ]")
else
GiftSpawn:SetText("Player Spawn Gift [ Yes ]")
end
if workspace.Arena.island5.Slapples:FindFirstChild("GoldenSlapple") and workspace.Arena.island5.Slapples.GoldenSlapple:FindFirstChild("Glove") and workspace.Arena.island5.Slapples.GoldenSlapple.Glove.Transparency == 1 then
GoldenSlappleSpawn:SetText("Golden Slapple Spawn [ No ]")
else
GoldenSlappleSpawn:SetText("Golden Slapple Spawn [ Yes ]")
end
if game.Workspace:FindFirstChild("JetOrb") then
OrbSpawn:SetText("Spawn Orb [ Jet ]")
elseif game.Workspace:FindFirstChild("PhaseOrb") then
OrbSpawn:SetText("Spawn Orb [ Phase ]")
elseif game.Workspace:FindFirstChild("SiphonOrb") then
OrbSpawn:SetText("Spawn Orb [ Siphon ]")
elseif game.Workspace:FindFirstChild("MATERIALIZEOrb") then
OrbSpawn:SetText("Spawn Orb [ MATERIALIZE ]")
else
OrbSpawn:SetText("Spawn Orb [ No ]")
end
CheckNullShards:SetText("Check Null Shard [ "..game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.Name].NullShards.Value.." ]")
CheckTournamentWins:SetText("Check Tournament Win [ "..game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.Name].TournamentWins.Value.." ]")
CheckSlap:SetText("Check Slap [ "..game.Players.LocalPlayer.leaderstats.Slaps.Value.." ]")
GloveCheck:SetText("You're Using Glove [ "..CheckGlove().." ]")
PlateTime:SetText("Plate Time [ "..(game.Players.LocalPlayer.Character:FindFirstChild("PlateCounter") and game.Players.LocalPlayer.Character:FindFirstChild("PlateCounter").Value or "0").." ]")
GravityYou:SetText("Gravity [ "..game.Workspace.Gravity.." ]", true)
PositionYou:SetText("Position In Your [ "..tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)).." ]")
end)
end))

InfoServer2Group:AddButton("Copy Position", function()
    if setclipboard then
        setclipboard(tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)))
        Notification("Copied Success", _G.TimeNotify)
    else
        Notification(tostring(math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)), _G.TimeNotify)
    end
end)

local InfoServer4Group = Tabs.Tab:AddRightGroupbox("Search Glove Player")

InfoServer4Group:AddInput("GlovePlayers", {
    Default = "",
    Numeric = false,
    Text = "Search Glove",
    Finished = false,
    Placeholder = "Glove",
    Callback = function(Value)
local GlovePlayer = Value
local Glove
for _, v in pairs(game.Workspace.Lobby.GloveStands:GetChildren()) do
if string.sub(v.Name, 1, #GlovePlayer):lower() == GlovePlayer:lower() then
Glove = v
break
end
end
if Glove then
_G.GlovePlayer = Glove.Name
TagGlove:SetText("Glove Check [ ✅ ] [ "..Glove.Name.." ]", _G.TimeNotify)
else
TagGlove:SetText("Glove Check [ ❌ ]", _G.TimeNotify)
end
    end
})

TagGlove = InfoServer4Group:AddLabel("Glove Search [ Nah ]", true)

InfoServer4Group:AddButton({
    Text = "Search Glove",
    Func = function()
_G.GloveSearch = {}
_G.PlayerOwner = {}
for i, v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
for i, b in pairs(v._unlockedGloves:GetChildren()) do
if b.Name == _G.GlovePlayer and b.Value == true then
table.insert(_G.GloveSearch, b)
_G.PlayerOwner[#_G.PlayerOwner + 1] = (v.Name == v.DisplayName and " • "..v.Name or " • "..v.Name.." ("..v.DisplayName..")")
OwnerPlayer:SetText("Owner [\n"..(_G.PlayerOwner == 0 and "Nah" or (table.concat(_G.PlayerOwner, ",\n"))).."\n]")
end
end
end
end
if #_G.GloveSearch > 0 then
SearchPlayer:SetText("Player Owner [ "..(#_G.GloveSearch == 0 and "Nah" or #_G.GloveSearch).." ]")
elseif #_G.GloveSearch == 0 then
SearchPlayer:SetText("Player Owner [ Nah ]")
OwnerPlayer:SetText("Owner [ Nah ]")
end
    end
})

InfoServer4Group:AddToggle("Search Glove", {
    Text = "Auto Search Glove",
    Default = false,
    Callback = function(Value)
_G.AutoSearchGlove = Value
while _G.AutoSearchGlove do
_G.GloveSearch = {}
_G.PlayerOwner = {}
for i, v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
for i, b in pairs(v._unlockedGloves:GetChildren()) do
if b.Name == _G.GlovePlayer and b.Value == true then
table.insert(_G.GloveSearch, b)
_G.PlayerOwner[#_G.PlayerOwner + 1] = (v.Name == v.DisplayName and " • "..v.Name or " • "..v.Name.." ("..v.DisplayName..")")
OwnerPlayer:SetText("Owner [\n"..(_G.PlayerOwner == 0 and "Nah" or (table.concat(_G.PlayerOwner, ",\n"))).."\n]")
end
end
end
end
if #_G.GloveSearch > 0 then
SearchPlayer:SetText("Player Owner [ "..(#_G.GloveSearch == 0 and "Nah" or #_G.GloveSearch).." ]")
elseif #_G.GloveSearch == 0 then
SearchPlayer:SetText("Player Owner [ Nah ]")
OwnerPlayer:SetText("Owner [ Nah ]")
end
task.wait()
end
    end
})

SearchPlayer = InfoServer4Group:AddLabel("Player Owner [ Nah ]", true)
OwnerPlayer = InfoServer4Group:AddLabel("Owner [ Nah ]", true)

local InfoServer5Group = Tabs.Tab:AddRightGroupbox("Check")

InfoServer5Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.CheckPlayer = FoundPlr(Value, false)
if _G.CheckPlayer then
	PlayersCheck1:SetText("Player Check [ ✅ ] [ ".._G.CheckPlayer.Name.." ]")
else
	PlayersCheck1:SetText("Player Check [ ❌ ]")
end
    end
})

PlayersCheck1 = InfoServer5Group:AddLabel("Player Check [ Nah ]", true)

InfoServer5Group:AddToggle("Toggle Set", {
    Text = "Toggle Return",
    Default = false,
    Callback = function(Value)
_G.AutosetCheckPlayer = Value
    end
})

table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
if not _G.AutosetCheckPlayer then return end
pcall(function()
	if _G.CheckPlayer.Character and game.ReplicatedStorage.PlayerData:FindFirstChild(_G.CheckPlayer.Name) then
		CheckNullShardsPlayer:SetText("Check Null Shard [ "..game.ReplicatedStorage.PlayerData[_G.CheckPlayer.Name].NullShards.Value.." ]")
		CheckTournamentWinsPlayer:SetText("Check Tournament Win [ "..game.ReplicatedStorage.PlayerData[_G.CheckPlayer.Name].TournamentWins.Value.." ]")
		CheckSlapPlayer:SetText("Check Slap [ "..game.Players[_G.CheckPlayer.Name].leaderstats.Slaps.Value.." ]")
		GloveCheckPlayer:SetText("Using Glove [ "..game.Players[_G.CheckPlayer.Name].leaderstats.Glove.Value.." ]")
		if game.Players[_G.CheckPlayer].Character ~= nil and game.Players[_G.CheckPlayer.Name].Character:FindFirstChild("HumanoidRootPart") ~= nil then
			PositionPlayer:SetText("Position [ "..tostring(math.round(game.Players[_G.CheckPlayer.Name].Character.HumanoidRootPart.Position.X)..", ".. math.round(game.Players[_G.CheckPlayer].Character.HumanoidRootPart.Position.Y)..", "..math.round(game.Players[_G.CheckPlayer].Character.HumanoidRootPart.Position.Z)).." ]")
		else
			PositionPlayer:SetText("Position [ Nah ]")
		end
	else
		CheckNullShardsPlayer:SetText("Check Null Shard [ Nah ]")
		CheckTournamentWinsPlayer:SetText("Check Tournament Win [ Nah ]")
		CheckSlapPlayer:SetText("Check Slap [ Nah ]")
		GloveCheckPlayer:SetText("Using Glove [ Nah ]")
		PositionPlayer:SetText("Position [ Nah ]")
	end
end)
end))

CheckNullShardsPlayer = InfoServer5Group:AddLabel("Check Null Shard [ Nah ]", true)
CheckTournamentWinsPlayer = InfoServer5Group:AddLabel("Check Tournament Win [ Nah ]", true)
CheckSlapPlayer = InfoServer5Group:AddLabel("Check Slap [ Nah ]", true)
GloveCheckPlayer = InfoServer5Group:AddLabel("Using Glove [ Nah ]", true)
PositionPlayer = InfoServer5Group:AddLabel("Position [ Nah ]", true)

