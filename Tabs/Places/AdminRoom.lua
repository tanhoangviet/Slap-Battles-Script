elseif game.PlaceId == 16034567693 then
Window:ChangeTitle("ADMIN ROOM 💻")
Tabs = {
    Tab = Window:AddTab("Misc", SolarIcon.Misc),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local InfoServer1Group = Tabs.Tab:AddLeftGroupbox("Info")

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

InfoServer1Group:AddToggle("Toggle Set", {
    Text = "Toggle Return",
    Default = false,
    Callback = function(Value)
_G.AutoSetInfo = Value
if _G.AutoSetInfo == true then
AutoSetInfoServer = game:GetService("RunService").RenderStepped:Connect(function()
if _G.AutoSetInfo == true then
CanYouFps:SetText("Your Fps [ "..math.floor(workspace:GetRealPhysicsFPS()).." ]", true)
CanYouPing:SetText("Your Ping [ "..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString().." ]", true)
ServerPlayer:SetText("Player In Server [ "..#game.Players:GetPlayers().." / "..game.Players.MaxPlayers.." ]", true)
TimeServer:SetText("Server Time [ "..math.floor(workspace.DistributedGameTime / 60 / 60).." Hour | "..math.floor(workspace.DistributedGameTime / 60) - (math.floor(workspace.DistributedGameTime / 60 / 60) * 60).." Minute | "..math.floor(workspace.DistributedGameTime) - (math.floor(workspace.DistributedGameTime / 60) * 60).." Second ]", true)
TimeNow:SetText("Now Time [ "..os.date("%X").." ]", true)
if tonumber(os.date("%H")) >= 5 and tonumber(os.date("%H")) < 12 then
AlarmTime:SetText("Good Morning [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 12 and tonumber(os.date("%H")) < 17 then
AlarmTime:SetText("Good Afternoon [ "..tonumber(os.date("%H")).." Hour ]", true)
elseif tonumber(os.date("%H")) >= 17 and tonumber(os.date("%H")) < 21 then
AlarmTime:SetText("Good Evening [ "..tonumber(os.date("%H")).." Hour ]", true)
else
AlarmTime:SetText("Good Night [ "..tonumber(os.date("%H")).." Hour ]", true)
end
AgeAccYou:SetText("You Account Age [ "..game.Players.LocalPlayer.AccountAge.." ]", true)
end
end)
end
if _G.AutoSetInfo == false then
if AutoSetInfoServer then
AutoSetInfoServer:Disconnect()
AutoSetInfoServer = nil
return AutoSetInfoServer
end
end
    end
})

local Misc2Group = Tabs.Tab:AddRightGroupbox("Misc")

Misc2Group:AddToggle("Anti Afk", {
    Text = "Anti Afk",
    Default = false, 
    Callback = function(Value)
_G.AntiAfk = Value
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
if _G.AntiAfk then
v:Disable()
else
v:Enable()
end
end
    end
})

Misc2Group:AddButton("Teleport Room", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
wait(4)
Toggles["Anti Afk"]:SetValue(true)
end)
