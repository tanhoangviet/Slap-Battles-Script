local Misc2Group = Tabs.Tab5:AddRightGroupbox("Misc Default")

Misc2Group:AddDropdown("GodMobe", {
    Text = "Godmobe",
    Values = {"Godmode", "Godmode + Invisibility"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Godmode" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        v.Parent = game.LogService
                    end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                    end
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(3.82)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Godmode + Invisibility" then
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildWhichIsA("Tool")
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        v.Parent = game.LogService
                    end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        v.Parent = game.LogService
                end
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(3.82)
OGlove = CheckGlove()
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
for i,v in pairs(game.LogService:GetChildren()) do
                        v.Parent = game.Players.LocalPlayer.Backpack
                end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name ~= "Humanoid" then
v.Transparency = 0
end
end
else
Notification("You need 666+ slaps", _G.TimeNotify)
end
end
    end
})

Misc2Group:AddDropdown("Teleport Place", {
    Text = "Teleport",
    Values = {"Arena", "Lobby", "Hunter Room", "Tournament", "Brazil", "Island Slapple", "Plate", "Cannon Island", "Keypad", "Cube Of Death", "Moai Island", "Default Arena", "Island 1", "Island 2", "Island 3"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
elseif Value == "Lobby" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
elseif Value == "Hunter Room" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterBooth._bountyRoomWarpPart.CFrame
elseif Value == "Brazil" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
elseif Value == "Island Slapple" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
elseif Value == "Plate" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame
elseif Value == "Tournament" then
if workspace:FindFirstChild("TournamentIsland") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TournamentIsland.Spawns.Part.CFrame * CFrame.new(0,2,0)
else
Notification("Tournament Island don't not spawn.", _G.TimeNotify)
end
elseif Value == "Cannon Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35)
elseif Value == "Keypad" then
if not workspace:FindFirstChild("Keypad") then
Notification("Server in don't have keypad.", _G.TimeNotify)
else
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Keypad.Buttons.Enter.CFrame
end
elseif Value == "Cube Of Death" then
if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].Part.CFrame * CFrame.new(0,5,0)
end
elseif Value == "Moai Island" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
elseif Value == "Default Arena" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
elseif Value == "Island 1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-211.210846, -5.27827597, 4.13719559, -0.0225322824, 1.83683113e-08, -0.999746144, -1.83560154e-08, 1, 1.87866842e-08, 0.999746144, 1.87746618e-08, -0.0225322824)
elseif Value == "Island 2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.17191315, -5.14452887, -205.249741, -0.98216176, -3.48867246e-09, -0.188037917, -4.19987778e-09, 1, 3.38382322e-09, 0.188037917, 4.11319823e-09, -0.98216176)
elseif Value == "Island 3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.66747713, -5.06731462, 213.575378, 0.945777893, 2.52095178e-10, 0.324814111, -3.7823856e-08, 1, 1.09357536e-07, -0.324814111, -1.15713661e-07, 0.945777893)
end
    end
})

Misc2Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.PlayerPut = FoundPlr(Value, true)
    end
})

Misc2Group:AddButton("Teleport Player", function()
if _G.PlayerPut and _G.PlayerPut.Character and _G.PlayerPut.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut.Character.HumanoidRootPart.CFrame
end
end)

Misc2Group:AddToggle("Auto Teleport Player", {
    Text = "Auto Teleport Player",
    Default = false, 
    Callback = function(Value) 
_G.PlayerTele = Value
while _G.PlayerTele do
if _G.PlayerPut and _G.PlayerPut.Character and _G.PlayerPut.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut.Character.HumanoidRootPart.CFrame
end
task.wait()
end
    end
})

Misc2Group:AddToggle("Auto View Player", {
    Text = "Auto View Player",
    Default = false, 
    Callback = function(Value) 
_G.PlayerView = Value
if _G.PlayerView == false then
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
end
end
while _G.PlayerView do
if _G.PlayerPut and _G.PlayerPut.Character and _G.PlayerPut.Character:FindFirstChild("Humanoid") then
	game.Workspace.CurrentCamera.CameraSubject = _G.PlayerPut.Character:FindFirstChild("Humanoid")
else
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	end
end
task.wait()
end
    end
})

_G.SetSpeedFly = 50
Misc2Group:AddInput("FlySpeed", {
    Default = "50",
    Numeric = true,
    Text = "Fly Speed",
    Placeholder = "UserFlySpeed",
    Callback = function(Value)  
        _G.SetSpeedFly = Value  
    end  
})

Misc2Group:AddToggle("Start Fly", {
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

TabBoxMisc1 = Tabs.Tab5:AddLeftTabbox()
local Misc1Basic = TabBoxMisc1:AddTab("Misc") 

 Misc1Basic:AddToggle("Autofarm Slapples", {
    Text = "Autofarm Slapples",
    Default = false, 
    Callback = function(Value) 
_G.SlappleFarm = Value
while _G.SlappleFarm do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
	for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and (v.Name:lower() == "slapple" or v.Name:lower() == "goldenslapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
            v.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
task.wait()
end
    end
}):AddKeyPicker("AutofarmSlapples", {
   Default = "M",
   Text = "Autofarm Slapples",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc1Basic:AddToggle("Autofarm Candy", {
    Text = "Autofarm Candy",
    Default = false, 
    Callback = function(Value) 
_G.CandyCornsFarm = Value
while _G.CandyCornsFarm do
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
       v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end
task.wait()
end
    end
}):AddKeyPicker("AutofarmCandy", {
   Default = "C",
   Text = "Autofarm Candy",
   Mode = "Toggle",
   SyncToggleState = true
})

Misc1Basic:AddDropdown("Notify Workspace", {
    Text = "Notify",
    Values = {"Orb", "Toolbox", "Gravestone", "Gift", "Keypad"},
    Default = "",
    Multi = true
})

Misc1Basic:AddToggle("Notify Real", {
    Text = "Notify Choose",
    Default = false, 
    Callback = function(Value) 
_G.NotifyThank = Value
if _G.NotifyThank then
local function WorkspaceChild(v)
	if Options["Notify Workspace"].Value["Orb"] and (v.Name == "JetOrb" or v.Name == "PhaseOrb" or v.Name == "SiphonOrb" or v.Name == "MATERIALIZEOrb") then
		Notification("[Notify]: "..v.Name:gsub("Orb", " Orb").." Spawn", _G.TimeNotify)
	end
	if Options["Notify Workspace"].Value["Toolbox"] and v.Name == "Toolbox" then
		Notification("[Notify]: Toolbox Spawn", _G.TimeNotify)
	end
	if Options["Notify Workspace"].Value["Gravestone"] and v.Name == "Gravestone" then
		Notification("[Notify]: Gravestone Spawn", _G.TimeNotify)
	end
	if Options["Notify Workspace"].Value["Gift"] and v.Name == "Gift" then
		Notification("[Notify]: Gift Spawn", _G.TimeNotify)
	end
	if Options["Notify Workspace"].Value["Keypad"] and v.Name == "Keypad" then
		Notification("[Notify]: Keypad Spawn", _G.TimeNotify)
	end
end
for i, v in pairs(workspace:GetChildren()) do
	WorkspaceChild(v)
end
Child = workspace.ChildAdded:Connect(function(child)
	WorkspaceChild(child)
end)
else
if Child then
Child:Disconnect()
Child = nil
end
end
    end
})

Misc1Basic:AddToggle("Fling", {
    Text = "Fling",
    Default = false,
    Callback = function(Value) 
_G.FlingThen = Value
if not _G.FlingThen then
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = true
		end
	end
end
while _G.FlingThen do
	pcall(function()
		local char = game.Players.LocalPlayer.Character or nil
		local root = (char and char:FindFirstChild("HumanoidRootPart")) or nil
		local ragdoll = (char and char:FindFirstChild("Ragdolled")) or nil
		if not (char and root) then return end
		for i, v in pairs(char:GetChildren()) do
			if v:IsA("BasePart") then
				if ragdoll and ragdoll.Value == true then
					v.CanCollide = true
				else
					v.CanCollide = false
				end
			end
		end
		if ragdoll and ragdoll.Value == true then return end
		local vel, movel = nil, 0.1
		vel = root.Velocity
		if root and (ragdoll and ragdoll.Value == false) then
			root.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
		end
		game:GetService("RunService").RenderStepped:Wait()
		if root then
			root.Velocity = vel
		end
		game:GetService("RunService").Stepped:Wait()
		if root then
			root.Velocity = vel + Vector3.new(0, movel, 0)
			movel = movel * -1
		end
	end)
task.wait()
end
    end
})

Misc1Basic:AddButton({
    Text = "Auto Keypad",
    DoubleClick = true,
    Func = function()
if not workspace:FindFirstChild("Keypad") then
Notification("Server in don't have keypad, can have started serverhop", _G.TimeNotify)
task.wait(1.5)
for _, v in ipairs(game.HttpService:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
if v.playing < v.maxPlayers and v.JobId ~= game.JobId then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, v.id)
end
end
else
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace:FindFirstChild("SafeBoxSpace").CFrame * CFrame.new(0, 7, 0)
	wait(0.5)
end
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
local digits = tostring((#game.Players:GetPlayers()) * 25 + 1100 - 7)
for i = 1, #digits do
wait(.5)
local digit = digits:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
wait(1)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
    end
})

 Misc1Basic:AddToggle("Auto Code Pocket Keypad", {
    Text = "Auto Code Pocket Keypad",
    Default = false, 
    Callback = function(Value) 
_G.WriteCodeKeypad = Value
while _G.WriteCodeKeypad and task.wait() do
	for i, v in pairs(game.Workspace:FindFirstChild("RoomsFolder"):GetChildren()) do
		if string.find(v.Name, "'s Room") then
			local PockerKey = v:FindFirstChild("PocketKeypad", true)
			if PockerKey then
				if typeof(fireclickdetector) == "function" then
					if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
						game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
						repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
						wait(0.5)
						game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace:FindFirstChild("SafeBoxSpace").CFrame * CFrame.new(0, 7, 0)
						wait(0.8)
					end
					fireclickdetector(PockerKey.Buttons:FindFirstChild("Reset").ClickDetector)
					local digits = "4553293"
					for i = 1, #digits do
						wait(0.26)
						local CodeOPad = digits:sub(i,i)
						fireclickdetector(PockerKey.Buttons:FindFirstChild(CodeOPad).ClickDetector)
					end
					task.wait(0.15)
					fireclickdetector(PockerKey.Buttons:FindFirstChild("Enter").ClickDetector)
				end
			end
		end
	end
end
    end
})

 Misc1Basic:AddInput("Write Code Keypad", {
    Default = "",
    Numeric = true,
    Text = "Write Code Keypad",
    Placeholder = "UserCode",
    Callback = function(Value)
_G.writeCode = Value
    end
})

 Misc1Basic:AddDropdown("Enter Keypad", {
    Text = "Enter Keypad",
    Values = {"Not Enter","Enter"},
    Default = "Enter",
    Multi = false,
    Callback = function(Value)
_G.EnterKeypad = Value
    end
})

Misc1Basic:AddButton("Write Keypad", function()
if not workspace:FindFirstChild("Keypad") then
Notification("Server in don't have keypad.", _G.TimeNotify)
else
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace:FindFirstChild("SafeBoxSpace").CFrame * CFrame.new(0, 7, 0)
	wait(0.5)
end
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
for i = 1,#_G.writeCode do
wait(.35)
local digit = _G.writeCode:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
if _G.EnterKeypad == "Enter" then
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
end
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
end
end
end)

 Misc1Basic:AddDropdown("Easter Egg Code", {
    Text = "Easter Egg Code",
    Values = {"911","8008","666","6969","1987"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.EggCodes = Value
    end
})

 Misc1Basic:AddButton("Easter Egg Keypad", function()
if not workspace:FindFirstChild("Keypad") then
Notification("Server in don't have keypad.", _G.TimeNotify)
else
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace:FindFirstChild("SafeBoxSpace").CFrame * CFrame.new(0, 7, 0)
	wait(0.5)
end
game.Workspace.CurrentCamera.CameraSubject = workspace.Keypad.Buttons.Enter
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Reset").ClickDetector)
for i = 1,#_G.EggCodes do
wait(.35)
local digit = _G.EggCodes:sub(i,i)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild(digit).ClickDetector)
end
wait(1)
fireclickdetector(workspace:WaitForChild("Keypad").Buttons:FindFirstChild("Enter").ClickDetector)
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
end
end
end)

CloneAcc = Misc1Basic:AddInput("Players", {
    Text = "Clone Account",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.HelpPlayer1Slap = FoundPlr(Value, true)
    end
})

Misc1Basic:AddToggle("Clone Help Farm Slap", {
    Text = "Clone Help Farm Slap",
    Default = false, 
    Callback = function(Value) 
_G.CloneAccHelpFarm = Value
    end
})

Misc1Basic:AddSlider("Slap Cooldown", {
    Text = "Delay Slap (Clone)",
    Default = 0.75,
    Min = 0.7,
    Max = 1.75,
    Rounding = 2,
    Compact = true,
    Callback = function(Value)
_G.DelaySlapClone = Value
    end
})

Misc1Basic:AddDropdown("FarmSlap", {
    Text = "AutoFarm Slap",
    Values = {"Aimbot","Teleport", "Tween", "Clone Help"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AutoFarmSlapBattles = Value
    end
})

local LastPathTime = 0
local slapgloveclone = 0
local CurrentWaypointIndex = 1
local Waypoints = {}
local PFS = game:GetService("PathfindingService")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local pathFolder = workspace:FindFirstChild("PathFindPartsFolder") or Instance.new("Folder")
pathFolder.Name = "PathFindPartsFolder"
pathFolder.Parent = workspace

local function IsValidTarget(player)
    if player == LocalPlayer then return false end
    local char = player.Character
    local localChar = LocalPlayer.Character
    if not char or not localChar then return false end
    if not localChar:FindFirstChild("entered") or not char:FindFirstChild("entered") then return false end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not hrp or not humanoid then return false end
    if hrp.Position.Y < -10 then 
        return false 
    end
    if char:FindFirstChild("stevebody") or char:FindFirstChild("rock") or char:FindFirstChild("Mirage") then return false end
    if char.Head:FindFirstChild("UnoReverseCard") then return false end
    if _G.AutoFarmSlapBattles ~= "Aimbot" then
        if hrp.BrickColor == BrickColor.new("New Yeller") then return false end
    end
    local ragdolled = char:FindFirstChild("Ragdolled")
    if _G.AutoFarmSlapBattles == "Teleport" then
        if not ragdolled or ragdolled.Value == false then return false end
    else
        if ragdolled and ragdolled.Value == true then return false end
    end
    return true
end

local function EquipGlove()
    local char = LocalPlayer.Character
    if not char then return end
    if not char:FindFirstChildOfClass("Tool") then
        for _, v in ipairs(LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Glove") then
                v.Parent = char
                break
            end
        end
    end
end

local function DrawVisualPath(wps)
    pathFolder:ClearAllChildren()
    for _, wp in ipairs(wps) do
        local part = Instance.new("Part")
        part.Size = Vector3.new(1, 1, 1)
        part.Position = wp.Position
        part.Shape = Enum.PartType.Ball
        part.Material = Enum.Material.Neon
        part.Color = Color3.fromRGB(0, 255, 255)
        part.Anchored = true
        part.CanCollide = false
        part.Parent = pathFolder
    end
end

table.insert(_G.ConnectFun, RunService.RenderStepped:Connect(function()
	local char = LocalPlayer.Character
    local humanoid = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
	if _G.AutoFarmSlap and _G.AutoFarmSlapBattles == "Clone Help (Duel)" then
		if char and humanoid and char:FindFirstChild("entered") == nil then
			humanoid:MoveTo(game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").Position)
		end
		if char:FindFirstChild("entered") and hrp then
			CreateFreezeBV({Name = "Helpfarmslap"})
			if (hrp.Position - workspace["SafeBox"].Position).Magnitude > 200 then
				hrp.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0, (_G.CloneAccHelpFarm and 55 or 50), 0)
				if hrp:FindFirstChild("Helpfarmslap") then
					hrp:FindFirstChild("Helpfarmslap").Velocity = Vector3.zero
				end
			else
				if hrp:FindFirstChild("Helpfarmslap") then
					local direction = (workspace["SafeBox"].Position + Vector3.new(0, (_G.CloneAccHelpFarm and 55 or 50), 0) - hrp.Position) 
					local distance = direction.Magnitude
					if distance > 5 then
						local speed = math.clamp(distance * 5, 50, 150)
						hrp:FindFirstChild("Helpfarmslap").Velocity = direction.Unit * speed
					else
						hrp:FindFirstChild("Helpfarmslap").Velocity = Vector3.zero
					end
				end
			end
			if not _G.CloneAccHelpFarm then
				if char and char:FindFirstChild("entered") then
					if _G.HelpPlayer1Slap and _G.HelpPlayer1Slap.Character and _G.HelpPlayer1Slap.Character:FindFirstChild("entered") and _G.HelpPlayer1Slap.Character:FindFirstChild("HumanoidRootPart") then
						if (hrp.Position - _G.HelpPlayer1Slap.Character.HumanoidRootPart.Position).Magnitude < 50 then
							if tick() - slapgloveclone >= (_G.DelaySlapClone or 0.75) then
								slapgloveclone = tick()
								slapglove(_G.HelpPlayer1Slap.Character.HumanoidRootPart)
							end
						end
					end
				end
			end
		end
	end
	if _G.AutoFarmSlap and _G.AutoFarmSlapBattles == "Aimbot" then
        if char and humanoid and hrp and char:FindFirstChild("entered") then
			local HugeTarget, Target = math.huge, nil
			for i, v in pairs(game.Players:GetPlayers()) do
				if IsValidTarget(v) then
					local targetHrp = v.Character.HumanoidRootPart
					local dist = (hrp.Position - targetHrp.Position).Magnitude
					if dist < HugeTarget then
						Target = v.Character
						HugeTarget = dist
					end
				end
			end
			if Target then
                local targetHrp = Target.HumanoidRootPart
                local targetHumanoid = Target:FindFirstChildOfClass("Humanoid")
                hrp.CFrame = CFrame.new(hrp.Position, Vector3.new(targetHrp.Position.X, hrp.Position.Y, targetHrp.Position.Z))
                EquipGlove()
                if HugeTarget <= 7 then
                    humanoid:MoveTo(targetHrp.Position)
                    Waypoints = {}
                    if targetHrp.Position.Y - hrp.Position.Y > 2.5 and targetHumanoid and targetHumanoid.FloorMaterial == Enum.Material.Air then
                        if humanoid.FloorMaterial ~= Enum.Material.Air then
                            humanoid.Jump = true
                        end
                    end
                else
                    local path = PFS:CreatePath({
                        AgentRadius = 2,
                        WaypointSpacing = 4,
                        AgentHeight = 5,
                        AgentCanJump = true,
                        AgentJumpHeight = 10,
                        Costs = { BrickFind = 1000 }
                    })
                    pcall(function()
                        path:ComputeAsync(hrp.Position, targetHrp.Position)
                        if path.Status == Enum.PathStatus.Success then
                            Waypoints = path:GetWaypoints()
                            CurrentWaypointIndex = 2
                            DrawVisualPath(Waypoints)
                        else
                            Waypoints = {}
                            humanoid:MoveTo(targetHrp.Position)
                        end
                    end)
                end
                if #Waypoints > 0 and CurrentWaypointIndex <= #Waypoints then
                    local currentWP = Waypoints[CurrentWaypointIndex]
                    humanoid:MoveTo(currentWP.Position)
                    if currentWP.Action == Enum.PathWaypointAction.Jump then
                        humanoid.Jump = true
                    end
                    if (hrp.Position - currentWP.Position).Magnitude <= 2.5 then
                        CurrentWaypointIndex = CurrentWaypointIndex + 1
                    end
                else
                    humanoid:MoveTo(targetHrp.Position)
                end
                local tool = char:FindFirstChildOfClass("Tool")
                if tool and tool:FindFirstChild("Glove") then
                    if (tool.Glove.Position - targetHrp.Position).Magnitude <= 5.5 then
                        VirtualUser:ClickButton1(Vector2.new(200, 200))
                    end
                end
            else
                pathFolder:ClearAllChildren()
                Waypoints = {}
			end
		end
	else
        pathFolder:ClearAllChildren()
        Waypoints = {}
	end
end))

Misc1Basic:AddToggle("Auto Farm Slap", {
    Text = "Auto Farm Slap",
    Default = false, 
    Callback = function(Value) 
_G.AutoFarmSlap = Value
while _G.AutoFarmSlap do
    local char = LocalPlayer.Character
    local humanoid = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if char and humanoid and hrp then
        local mode = _G.AutoFarmSlapBattles
        local entered = char:FindFirstChild("entered")
        if not entered then
            local lobby = workspace:FindFirstChild("Lobby")
            local teleport = lobby and lobby:FindFirstChild("Teleport1")
            if teleport then
                humanoid:MoveTo(teleport.Position)
            end
        else
            if mode == "Aimbot" then
                for _, v in ipairs(workspace:GetChildren()) do
                    if v.Name == "Union" and not v:FindFirstChild("PathfindingModifier") then
                        local modifier = Instance.new("PathfindingModifier")
                        modifier.Label = "BrickFind"
                        modifier.Parent = v
                    end
                end
            end
        end
        if entered and (not char:FindFirstChild("Ragdolled") or char.Ragdolled.Value == false) then
            local closestTarget = nil
            local shortestDistance = math.huge
            for _, p in ipairs(Players:GetPlayers()) do
                if IsValidTarget(p) then
                    local targetHrp = p.Character.HumanoidRootPart
                    local distance = (hrp.Position - targetHrp.Position).Magnitude
                    if distance < shortestDistance then
                        closestTarget = p.Character
                        shortestDistance = distance
                    end
                end
            end
            if closestTarget and closestTarget:FindFirstChild("HumanoidRootPart") then
                local targetHrp = closestTarget.HumanoidRootPart
                if mode == "Teleport" then
                    hrp.CFrame = targetHrp.CFrame * CFrame.new(0, 3, 0)
                    task.wait(0.1)
                    if typeof(slapglove) == "function" then slapglove(targetHrp) end
                    task.wait(0.5)
                elseif mode == "Tween" then
				    local targetHrp = closestTarget.HumanoidRootPart
				    local targetPos = targetHrp.Position + Vector3.new(0, 4, 0)
			        for _, v in ipairs(char:GetChildren()) do
			            if v:IsA("BasePart") then
			                v.CanCollide = false
			            end
			        end
			        if typeof(CreateFreezeBV) == "function" then
			            CreateFreezeBV({Name = "AutoFarmSlapTween"})
			            local bv = hrp:FindFirstChild("AutoFarmSlapTween")
			            if bv then
			                local direction = targetPos - hrp.Position
			                local distance = direction.Magnitude
			                if distance > 5 then
			                    bv.Velocity = direction.Unit * 80
			                else
			                    bv.Velocity = Vector3.zero
			                end
			            end
			            local checkDistance = (hrp.Position - targetPos).Magnitude
			            if checkDistance <= 6 and _G.AutoFarmSlap then
			                if typeof(slapglove) == "function" then 
			                    slapglove(targetHrp) 
			                end
			                task.wait(0.6)
			            end
			        end
                elseif mode == "Aimbot" then
                    hrp.CFrame = CFrame.new(hrp.Position, Vector3.new(targetHrp.Position.X, hrp.Position.Y, targetHrp.Position.Z))
                    EquipGlove()
                    humanoid:MoveTo(targetHrp.Position)
                    if hrp.AssemblyLinearVelocity.Magnitude < 2 or (targetHrp.Position.Y - hrp.Position.Y > 3) then
                        if humanoid.FloorMaterial ~= Enum.Material.Air then
                            humanoid.Jump = true
                        end
                    end
                end
            else
	            if mode == "Tween" then
					local bv = hrp:FindFirstChild("AutoFarmSlapTween")
			        if bv then
			            bv.Velocity = Vector3.zero
			        end
			        for _, v in ipairs(char:GetChildren()) do
			            if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
			                v.CanCollide = true
			            end
			        end
				end
            end
        end
    end
    if _G.AutoFarmSlapBattles == "Aimbot" then
        task.wait()
    else
        task.wait(0.1)
    end
end
    end
})

Misc1Basic:AddToggle("Auto Spam Ability", {
    Text = "Auto Spam Ability",
    Default = false, 
    Callback = function(Value) 
_G.OnAbility = Value
while _G.OnAbility and CheckGlove() == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Home Run" do
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait(4.1)
end
while _G.OnAbility and CheckGlove() == "🗿" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(CFrame.new(target.Character.HumanoidRootPart.CFrame.X, -5.6, target.Character.HumanoidRootPart.CFrame.Z + 5))
end
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Shukuchi" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
wait(0.09)
game:GetService("ReplicatedStorage").SM:FireServer(Target)
end
wait(0.8)
end
while _G.OnAbility and CheckGlove() == "Slicer" do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Reverse" do
game:GetService("ReplicatedStorage"):WaitForChild("ReverseAbility"):FireServer()
task.wait(5.7)
end
while _G.OnAbility and CheckGlove() == "rob" do
game:GetService("ReplicatedStorage").rob:FireServer()
wait(3)
end
while _G.OnAbility and CheckGlove() == "bob" do
game:GetService("ReplicatedStorage").bob:FireServer()
wait(9)
end
while _G.OnAbility and (CheckGlove() == "Kraken" or CheckGlove() == "Sbeve") do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
wait(5)
end
while _G.OnAbility and CheckGlove() == "Psycho" do
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["grabEnabled"] = true})
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["throwbackAlpha"] = math.huge})
task.wait()
end
while _G.OnAbility and CheckGlove() == "Killstreak" do
game:GetService("ReplicatedStorage").KSABILI:FireServer()
wait(6.9)
end
while _G.OnAbility and CheckGlove() == "bus" do
game:GetService("ReplicatedStorage").busmoment:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Mitten" do
game.ReplicatedStorage.MittenA:FireServer(true)
wait(1.55)
game.ReplicatedStorage.MittenA:FireServer(false)
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Defense" do
game:GetService("ReplicatedStorage").Barrier:FireServer()
wait(0.25)
end
while _G.OnAbility and CheckGlove() == "Swashbuckler" do
game.ReplicatedStorage.Events.Swashbuckler_coins:FireServer()
game.ReplicatedStorage.Events.Swashbuckler:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Bomb" do
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(2.5)
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(4.1)
end
while _G.OnAbility and CheckGlove() == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
wait(6)
end
while _G.OnAbility and CheckGlove() == "Pusher" do
game:GetService("ReplicatedStorage").PusherWall:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Jet" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
		if Magnitude < 200 then
			table.insert(players, v)
		end
	end
end
if #players ~= 0 then
	local target = players[math.random(#players)]
	game.ReplicatedStorage.AirStrike:FireServer(target.Character)
end
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Tableflip" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Shield" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Rocky" do
game:GetService("ReplicatedStorage").RockyShoot:FireServer()
task.wait(7.5)
end
while _G.OnAbility and CheckGlove() == "God's Hand" do
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
wait(50.1)
end
while _G.OnAbility and CheckGlove() == "Za Hando" do
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Baller" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while _G.OnAbility and CheckGlove() == "Glitch" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(5.34)
end
while _G.OnAbility and CheckGlove() == "Stun" do
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stun") then
game:GetService("ReplicatedStorage").StunR:FireServer(game:GetService("Players").LocalPlayer.Character.Stun)
wait(10.1)
end
end
while _G.OnAbility and CheckGlove() == "STOP" do
game:GetService("ReplicatedStorage").STOP:FireServer(true)
wait(4.1)
end
while _G.OnAbility and CheckGlove() == "Quake" do
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["finished"] = true})
task.wait()
end
while _G.OnAbility and CheckGlove() == "Track" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
		if Magnitude < 500 then
			table.insert(players, v)
		end
	end
end
if #players ~= 0 then
	local target = players[math.random(#players)]
	game:GetService("ReplicatedStorage").GeneralAbility:FireServer(target.Character)
end
wait(10.1)
end
while _G.OnAbility and CheckGlove() == "Mail" do
game:GetService("ReplicatedStorage").MailSend:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Shard" do
game:GetService("ReplicatedStorage").Shards:FireServer()
wait(4.1)
end
while _G.OnAbility and CheckGlove() == "fish" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.05)
end
while _G.OnAbility and CheckGlove() == "Null" do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
wait(0.01)
end
while _G.OnAbility and CheckGlove() == "Counter" do
game:GetService("ReplicatedStorage").Counter:FireServer()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
task.wait(6.2)
end
while _G.OnAbility and CheckGlove() == "Voodoo" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(6.27)
end
while _G.OnAbility and CheckGlove() == "Swapper" do
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Gravity" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Bubble" do
game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Slapple" do
game:GetService("ReplicatedStorage").funnyTree:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Detonator" do
game:GetService("ReplicatedStorage").Fart:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Berserk" do
game:GetService("ReplicatedStorage").BerserkCharge:FireServer(game:GetService("Players").LocalPlayer.Character.Berserk)
wait(2.1)
end
while _G.OnAbility and CheckGlove() == "Rojo" do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
task.wait()
end
while _G.OnAbility and CheckGlove() == "Kinetic" do
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i = 1,100 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
task.wait(0.05)
end
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
if game.Players.LocalPlayer.Backpack:FindFirstChild("Kinetic") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Kinetic)
end
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game.Players.LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
wait(2.2)
end
while _G.OnAbility and CheckGlove() == "Dominance" do
game:GetService("ReplicatedStorage").DominanceAc:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "[REDACTED]" do
game:GetService("ReplicatedStorage").Well:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Duelist" do
game:GetService("ReplicatedStorage").DuelistAbility:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Engineer" do
game:GetService("ReplicatedStorage").Sentry:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Brick" do
game:GetService("ReplicatedStorage").lbrick:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game:GetService("Players").LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1
wait(1.1)
end
while _G.OnAbility and CheckGlove() == "Trap" do
game:GetService("ReplicatedStorage").funnyhilariousbeartrap:FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "woah" do
game:GetService("ReplicatedStorage").VineThud:FireServer()
wait(5.1)
end
while _G.OnAbility and CheckGlove() == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Recall" do
game:GetService("ReplicatedStorage").Recall:InvokeServer(game:GetService("Players").LocalPlayer.Character.Recall)
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "ZZZZZZZ" do
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Adios" do
game:GetService("ReplicatedStorage").AdiosActivated:FireServer()
wait(8.3)
end
while _G.OnAbility and CheckGlove() == "Boogie" do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Boogie") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Boogie)
elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Boogie") == nil then
game:GetService("ReplicatedStorage").BoogieBall:FireServer(game.Players.LocalPlayer.Character.Boogie, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Balloony" do
if game.Players.LocalPlayer.Backpack:FindFirstChild("Balloony") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Balloony)
elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Balloony") == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Balloony)
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Phase" do
game:GetService("ReplicatedStorage").PhaseA:FireServer()
wait(5.475)
end
while _G.OnAbility and CheckGlove() == "Hallow Jack" do
game:GetService("ReplicatedStorage"):WaitForChild("Hallow"):FireServer()
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Phantom" do
game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(workspace[game.Players.LocalPlayer.Name].Phantom) 
wait()
end
while _G.OnAbility and CheckGlove() == "Sparky" do
game:GetService("ReplicatedStorage").Sparky:FireServer(game:GetService("Players").LocalPlayer.Character.Sparky)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Charge" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game:GetService("Players").LocalPlayer.Character.Charge)
wait(3.1)
end
while _G.OnAbility and CheckGlove() == "Coil" do
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Coil") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game:GetService("Players").LocalPlayer.Character.Coil)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
wait(3.1)
end
end
while _G.OnAbility and CheckGlove() == "Diamond" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "MEGAROCK" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Excavator" do
game:GetService("ReplicatedStorage"):WaitForChild("Excavator"):InvokeServer()
game:GetService("ReplicatedStorage"):WaitForChild("ExcavatorCancel"):FireServer()
wait(7.3)
end
while _G.OnAbility and CheckGlove() == "Thor" do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").ThorAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Meteor" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Sun" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Cast")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Whirlwind" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Guardian Angel" do
game.ReplicatedStorage.GeneralAbility:FireServer(game.Players.LocalPlayer)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Parry" do
game.ReplicatedStorage.GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "MR" do
game:GetService("ReplicatedStorage").Spherify:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Druid" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(3.21)
end
while _G.OnAbility and CheckGlove() == "Oven" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(target.Character.HumanoidRootPart.CFrame)
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Jester" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Ability1")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Ferryman" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
if game.Players.LocalPlayer.Character:FindFirstChild("FerrymanStaff") and game.Players.LocalPlayer.Character.FerrymanStaff:FindFirstChild("StaffConfig") and game.Players.LocalPlayer.Character.FerrymanStaff.StaffConfig:FindFirstChild("AbilityEvent") then
game.Players.LocalPlayer.Character.FerrymanStaff.StaffConfig.AbilityEvent:FireServer("Leap")
wait(1.85)
game.Players.LocalPlayer.Character.FerrymanStaff.StaffConfig.AbilityEvent:FireServer("FinishLeap",target.Character.HumanoidRootPart.Position)
end
end
task.wait(5)
end
while _G.OnAbility and CheckGlove() == "Scythe" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Blackhole" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Jebaited" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Blink" do
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
task.wait()
end
while _G.OnAbility and CheckGlove() == "Joust" do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("Start")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Slapstick" do
game:GetService("ReplicatedStorage").slapstick:FireServer("charge")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Firework" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Chicken" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Lamp" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "BONK" do
game:GetService("ReplicatedStorage").BONK:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Frostbite" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(2)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Golem" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("recall")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Grab" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Spoonful" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game:GetService("ReplicatedStorage").GeneralAbility:FireServer({["state"] = "vfx",["origin"] = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(-3.141592502593994, 1.0475832223892212, 3.141592502593994),["vfx"] = "jumptween",["sendplr"] = game:GetService("Players").LocalPlayer})
game:GetService("ReplicatedStorage").GeneralAbility:FireServer({["state"] = "vfx",["cf"] = target.Character.HumanoidRootPart.CFrame * CFrame.Angles(-2.1319260597229004, 0.651054859161377, 2.3744168281555176),["vfx"] = "crash"})
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "el gato" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "UFO" do
if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s UFO VFX") == nil and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s UFO") == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
task.wait(0.3)
end
while _G.OnAbility and CheckGlove() == "Hive" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Siphon" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game:GetService("ReplicatedStorage").Events.Siphon:FireServer({["cf"] = target.Character.HumanoidRootPart.CFrame})
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Demolition" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("c4")
game:GetService("ReplicatedStorage").Events.c4:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Shotgun" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("buckshot")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Beachball" do
if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") == nil then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
end
wait(0.2)
if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") then
game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball"), Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Water" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("default")
task.wait()
end
while _G.OnAbility and CheckGlove() == "64" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, -2, 0) * CFrame.Angles(3.1415927410125732, -1.2705316543579102, 3.1415927410125732))
task.wait()
end
while _G.OnAbility and CheckGlove() == "Fan" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Shackle" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Bind" do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
local target = players[math.random(#players)]
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("default", {["goal"] = target.Character.HumanoidRootPart.CFrame, ["origin"] = target.Character.Head.CFrame})
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Poltergeist" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("ability2")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Lawnmower" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("lawnmower")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Virus" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Baby" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait(8)
end
while _G.OnAbility and CheckGlove() == "Angler" do
if game.Players.LocalPlayer.Character:FindFirstChild("fishing_rod") then
game:GetService("ReplicatedStorage").Events.Fisherman:FireServer("cast")
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Jerry" do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(-3, 0, -3))
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Snowroller" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.3)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer("release")
task.wait()
end
while _G.OnAbility and CheckGlove() == "Cherry" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Draw4" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Mouse" do
local function TrapItem(target, item)
	local trapCF = CFrame.new(target.Character.HumanoidRootPart.Position.X, -5.6, target.Character.HumanoidRootPart.Position.Z)
	return {
		cf = trapCF or CFrame.new(),
		data = {
			item = item,
			startcf = CFrame.new(),
			charge = math.huge,
			cf = trapCF or CFrame.new()
		}
	}
end
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
	local target = players[math.random(#players)]
	local randomNum = math.random(1, 58)
	if randomNum >= 50 then
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("mousetrap"):FireServer(TrapItem(target, "mouse trap"))
	else
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("mousetrap"):FireServer(TrapItem(target, "cheese"))
	end
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Agger" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Debug" do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Debug"):FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Medusa" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(true)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Swordfighter" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Hexa" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(true)
task.wait()
end
while _G.OnAbility and CheckGlove() == "Tank" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while _G.OnAbility and CheckGlove() == "Untitled Tag Glove" do
game:GetService("ReplicatedStorage").UTGGeneric:FireServer("enableRunMode")
for i,v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
		if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 30 then
				game:GetService("ReplicatedStorage").UTGGeneric:FireServer("slideStun", v.Character)
			end
		end
	end
end
task.wait()
end
while _G.OnAbility and CheckGlove() == "Killstreak" and game.Players.LocalPlayer.Character:FindFirstChild("KS250Complete") do
if game.Players.LocalPlayer.Character:FindFirstChild("KS250Complete") then
	game:GetService("ReplicatedStorage").TheForce:FireServer()
	for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Part" then
            v:Destroy()
        end
    end
end
task.wait()
end
    end
}):AddKeyPicker("SpamAbility", {
   Default = "B",
   Text = "Auto Spam Ability",
   Mode = "Toggle",
   SyncToggleState = true
})

if hookmetamethod and getnamecallmethod then
Misc1Basic:AddToggle("Method Glove", {
    Text = "Method Glove",
    Tooltip = "Method: Glovel, Charge, Golden, Psython, Stalker",
    Default = false, 
    Callback = function(Value) 
MethodGlove = Value
while MethodGlove do
if EquipGlove ~= CheckGlove() then
	EquipGlove = CheckGlove()
end
task.wait()
end
    end
})
end

Misc1Basic:AddToggle("Show Button Roll", {
    Text = "Show Button Roll (Custom)",
    Default = false, 
    Callback = function(Value)
ShowButtonU(Value)
    end
})

Misc1Basic:AddToggle("Show Gui Mastery", {
    Text = "Show Gui Mastery (Custom)",
    Default = false, 
    Callback = function(Value)
ShowMasteryGui(Value)
    end
})

Misc1Basic:AddSlider("Delay Cooldown", {
    Text = "Delay No Cooldown",
    Default = 0.1,
    Min = 0.1,
    Max = 0.9,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
_G.DelayCooldown = Value
    end
})

Misc1Basic:AddToggle("No Cooldown", {
    Text = "No Cooldown",
    Default = false, 
    Callback = function(Value) 
_G.NoCooldown = Value
while _G.NoCooldown do
local Tool = (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")) or game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
local CheckGlove = Tool and Tool:FindFirstChild("Glove")
local CheckLocalScript = CheckGlove and Tool and Tool:FindFirstChildOfClass("LocalScript")
if CheckLocalScript then
	local CloneLocalScript = CheckLocalScript:Clone()
	CheckLocalScript:Destroy()
	CloneLocalScript.Parent = Tool
end
task.wait(_G.DelayCooldown or 0.1)
end
    end
})

Misc1Basic:AddToggle("Infinite Rhythm", {
    Text = "Infinite Rhythm",
    Default = false, 
    Callback = function(Value) 
_G.RhythmNoteSpam = Value
if CheckGlove() == "Rhythm" then
while _G.RhythmNoteSpam do
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = false
game.Players.LocalPlayer.PlayerGui.Rhythm.LocalScript.Disabled = true
game.Players.LocalPlayer.Character.Rhythm:Activate()
task.wait()
end
elseif Value == true then
Notification("You don't have Rhythm equipped", _G.TimeNotify)
wait(0.05)
Toggles["Infinite Rhythm"]:SetValue(false)
end
    end
})

Misc1Basic:AddDropdown("Aimbot", {
    Text = "Aimbot",
    Values = {"Shard", "Horse", "Retro (Rocket Launcher)", "Scythe", "Tableflip", "Slasher", "G-X"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AimbotGlove = Value
    end
}) 

Misc1Basic:AddDropdown("AimbotCharacter", {
    Text = "Aimbot Character",
    Values = {"Character", "Camera"},
    Default = "Character",
    Multi = false,
    Callback = function(Value)
_G.AimbotCharacter = Value
    end
}) 

Misc1Basic:AddToggle("Aimbot", {
    Text = "Aimbot",
    Default = false, 
    Callback = function(Value) 
_G.Aimbot = Value
    end
})

_G.SharpnessAimbot = 0
Misc1Basic:AddSlider("Sharpness", {
    Text = "Sharpness Aimbot",
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.SharpnessAimbot = Value
    end
})

Misc1Basic:AddToggle("No Aimbot", {
    Text = "No Aimbot Friends",
    Default = false, 
    Callback = function(Value) 
_G.AimbotNoFriends = Value
    end
})
function Aimbot(target, prediction)
	local char = game.Players.LocalPlayer.Character
	if not char then return end
	local root = char:FindFirstChild("HumanoidRootPart")
	if not root then return end
	local cam = workspace.CurrentCamera
	local velocity = target.AssemblyLinearVelocity
	local predictedPosition = target.Position + (velocity * prediction)
	if _G.AimbotCharacter == "Camera" then
		cam.CFrame = CFrame.lookAt(cam.CFrame.Position, predictedPosition)
	else
		root.CFrame = CFrame.lookAt(root.Position, Vector3.new(predictedPosition.X, root.Position.Y, predictedPosition.Z))
	end
end
function foundShardYourself()
	local foundShard
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name:lower():find(game.Players.LocalPlayer.Name:lower().." sky shård") then
			foundShard = v
		end
	end
	return foundShard
end
function aimbotTarget()
	local target, targetroot, distance = nil, nil, math.huge
	for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
			if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character:FindFirstChild("Mirage") == nil then
				if v.Character.Head:FindFirstChild("UnoReverseCard") == nil and v:FindFirstChild("leaderstats"):FindFirstChild("Glove") and v.leaderstats.Glove.Value:lower() ~= "parry" then
					local distanceTarget = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
					if distanceTarget and distanceTarget <= distance then
						if not _G.AimbotNoFriends or not game.Players.LocalPlayer:IsFriendsWith(v.UserId) then
							target, targetroot, distance = v.Character, v.Character:FindFirstChild("HumanoidRootPart"), distanceTarget
						end
					end
				end
			end
		end
	end
	return target, targetroot, distance
end
spawn(function()
table.insert(_G.ConnectFun, game:GetService("RunService").Heartbeat:Connect(function()
	if not _G.Aimbot then return end
	local char = game.Players.LocalPlayer.Character
	if not char then return end
	local root = char:FindFirstChild("HumanoidRootPart")
	local hum = char:FindFirstChild("Humanoid")
	local AnimationTrack = hum and hum:FindFirstChildOfClass("Animator")
	local target, targetroot, distance = aimbotTarget()
	local AimbotEnable
	if root and targetroot then
		if char and not char:FindFirstChild("stevebody") and not char:FindFirstChild("rock") and char:FindFirstChild("Ragdolled") and not char.Ragdolled.Value then
			if _G.AimbotGlove == "Horse" and CheckGlove():lower():find("horse") then
				if (char:FindFirstChild("Horse") and char.Horse:FindFirstChild("RootPart")) or char:FindFirstChild("Lance") then
					AimbotEnable = true
				end
			end
			if _G.AimbotGlove == "Shard" and CheckGlove():lower():find("shard") then
				local foundShard = foundShardYourself()
				if foundShard then
					AimbotEnable = true
				end
			end
			if _G.AimbotGlove == "Retro (Rocket Launcher)" and CheckGlove():lower():find("retro") then
				if char:FindFirstChild("Rocket Launcher") then
					AimbotEnable = true
				end
			end
			if (_G.AimbotGlove == "Scythe" and CheckGlove():lower():find("scythe")) or (_G.AimbotGlove == "Slasher" and CheckGlove():lower():find("slasher")) or (_G.AimbotGlove == "G-X" and CheckGlove():lower():find("g-x")) then
				if AnimationTrack then
					for _, v in ipairs(AnimationTrack:GetPlayingAnimationTracks()) do
						local idAnim = v.Animation.AnimationId:match("%d+")
						if _G.AimbotGlove == "Scythe" and CheckGlove():lower():find("scythe") then
							if idAnim:find("15505686151") then
								AimbotEnable = true
							end
						end
						if _G.AimbotGlove == "G-X" and CheckGlove():lower():find("g-x") then
							if idAnim:find("86347899198448") then
								AimbotEnable = true
							end
						end
						if _G.AimbotGlove == "Slasher" and CheckGlove():lower():find("slasher") then
							if (idAnim:find("123476113915973") or idAnim:find("79720215321255")) and not idAnim:find("136125547655440") then
								AimbotEnable = true
							end
						end
					end
				end
			end
			if _G.AimbotGlove == "Tableflip" and CheckGlove():lower():find("tableflip") then
				for i, v in pairs(workspace:GetChildren()) do
					if v.Name:lower():find("tableobject") and v:FindFirstChild("TableOwner") and v.TableOwner.Value:find(game.Players.LocalPlayer.Name) then
						if (root.Position - v.Position).Magnitude <= 7 then
							AimbotEnable = true
							break
						end
					end
				end
			end
			if AimbotEnable and targetroot then
				if _G.AimbotCharacter ~= "Camera" then
					if not AutoRotate and hum then
				        AutoRotate = hum.AutoRotate
						hum.AutoRotate = false
				    end
				end
				Aimbot(targetroot, _G.SharpnessAimbot)
			else
				if AutoRotate and hum then
			        hum.AutoRotate = AutoRotate
					AutoRotate = nil
			    end
			end
		end
	end
end))
end)

Misc1Basic:AddSlider("Parry Range", {
    Text = "Range Parry (Distance)",
    Default = 15,
    Min = 10,
    Max = 35,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
_G.RangeParry = Value
    end
})

Misc1Basic:AddToggle("Direction check", {
    Text = "Direction Check",
    Default = false, 
    Callback = function(Value) 
_G.DirectionCheck = Value
    end
})

local Players = game:GetService("Players")
Misc1Basic:AddToggle("Auto Parry", {
    Text = "Auto Parry (Block)",
    Default = false, 
    Callback = function(Value) 
if CheckGlove() == "Parry" then
_G.AutoParry = Value
if Value then
	for _, v in pairs(Players:GetPlayers()) do
		if v ~= Players.LocalPlayer then
			SetupPlayer(v)
		end
	end
end
elseif Value == true then
Notification("You don't have Parry equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Parry"]:SetValue(false)
end
    end
})

Misc1Basic:AddToggle("Auto Counter", {
    Text = "Auto Counter",
    Default = false, 
    Callback = function(Value) 
if CheckGlove() == "Counter" then
_G.AutoCounter = Value
if Value then
	for _, v in pairs(Players:GetPlayers()) do
		if v ~= Players.LocalPlayer then
			SetupPlayer(v)
		end
	end
end
elseif Value == true then
Notification("You don't have Counter equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Counter"]:SetValue(false)
end
    end
})
spawn(function()
local function SetupCharacter(plr, char)
	local humanoid = char:WaitForChild("Humanoid")
	local animator = humanoid:WaitForChild("Animator")
	animator.AnimationPlayed:Connect(function(track)
		if not (_G.AutoParry or _G.AutoCounter) then return end
		if CheckGlove() ~= "Parry" and CheckGlove() ~= "Counter" then return end
		if char:FindFirstChild("entered") and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("stevebody") == nil and char:FindFirstChild("rock") == nil and char.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and char:FindFirstChild("Mirage") == nil then
			if char.Head:FindFirstChild("UnoReverseCard") == nil then
				local hrp = char:FindFirstChild("HumanoidRootPart")
				local root = game.Players.LocalPlayer.Character.HumanoidRootPart
				local direction = (hrp.Position - root.Position).Unit
				local dot = root.CFrame.LookVector:Dot(direction)
				if AnimationSlapHit[tostring(track.Animation.AnimationId):match("%d+")] and (not _G.DirectionCheck or dot > 0.3) then
				    if (root.Position - (hrp.Position + hrp.Velocity * 0.12)).Magnitude <= (_G.RangeParry or 18) then
						task.spawn(function()
							if CheckGlove() == "Parry" then
								game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
							end
							if CheckGlove() == "Counter" then
								game:GetService("ReplicatedStorage"):WaitForChild("Counter"):FireServer()
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()) then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()))
							end
						end)
				    end
				end
			end
		end
	end)
end
function SetupPlayer(plr)
	plr.CharacterAdded:Connect(function(char)
		SetupCharacter(plr, char)
	end)
	if plr.Character then
		SetupCharacter(plr, plr.Character)
	end
end
for _, v in pairs(Players:GetPlayers()) do
	if v ~= Players.LocalPlayer then
		SetupPlayer(v)
	end
end
Players.PlayerAdded:Connect(function(plr)
	if plr ~= Players.LocalPlayer then
		SetupPlayer(plr)
	end
end)
table.insert(_G.ConnectFun, game:GetService("RunService").Heartbeat:Connect(function()
	if not _G.AutoParry or not _G.AutoCounter then return end
	if CheckGlove() ~= "Parry" or CheckGlove() ~= "Counter" then return end
	if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
	local dis
	for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
			local hrp = v.Character:FindFirstChild("HumanoidRootPart")
			local root = game.Players.LocalPlayer.Character.HumanoidRootPart
			local direction = root and hrp and (hrp.Position - root.Position).Unit
			local dot = root and direction and root.CFrame.LookVector:Dot(direction)
			local glove = v.Character:FindFirstChild(v.leaderstats.Glove.Value) and v.Character[v.leaderstats.Glove.Value]:FindFirstChild("Glove")
			if glove and v.leaderstats.Glove.Value:lower() == "overkill" and dot and dot > 0.3 then
				if (root.Position - (hrp.Position + hrp.Velocity * 0.12)).Magnitude <= (_G.RangeParry or 18) then
					if CheckGlove() == "Parry" then
						game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
					end
					if CheckGlove() == "Counter" then
						game:GetService("ReplicatedStorage"):WaitForChild("Counter"):FireServer()
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()) then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()))
					end
	            end
			end
			if root and hrp and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and hrp.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
				if (v.Character:FindFirstChild("Horse") and v.Character.Horse:FindFirstChild("RootPart")) or v.Character:FindFirstChild("Lance") then
					if v.Character:FindFirstChild("Lance") then
						dis = (root.Position - v.Character:FindFirstChild("Lance").Position).Magnitude
					else
						dis = (root.Position - v.Character.Horse:FindFirstChild("RootPart").Position).Magnitude
					end
					if tonumber(dis) and dis <= (_G.RangeParry or 20) then
						if _G.AutoParry then
							if CheckGlove() == "Parry" then
								game:GetService("ReplicatedStorage"):WaitForChild("Counter"):FireServer()
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()) then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()))
							end
                        end
					end
				end
			end
		end
	end
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name:match("Slicer_Hitbox") then
			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 18 then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()) then
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()))
				end
				game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
            end
		end
	end
end))
end)

Misc1Basic:AddToggle("Auto Play Rhythm", {
    Text = "Auto Play Rhythm",
    Default = false, 
    Callback = function(Value) 
if CheckGlove() ~= "Rhythm" and Value == true then
Notification("You don't have Rhythm equipped", _G.TimeNotify)
wait(0.05)
Toggles["Infinite Rhythm"]:SetValue(false)
end
    end
})
local bar = {}
table.insert(_G.ConnectFun, game:GetService("RunService").Heartbeat:Connect(function()
	if not Toggles["Auto Play Rhythm"] or not Toggles["Auto Play Rhythm"].Value then return end
	local rhythmGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("Rhythm")
	local mainRhythm = (rhythmGui and rhythmGui:FindFirstChild("MainFrame"))
	if not mainRhythm then return end
	local pointer = mainRhythm:FindFirstChild("Pointer")
	local bars = mainRhythm:FindFirstChild("Bars")
	if not pointer or not bars then return end
	for _, v in ipairs(bars:GetChildren()) do
		if v:IsA("Frame") and v.Name ~= "BarHit" then
			local id = v:GetDebugId(5)
			local aPos, aSize = pointer.AbsolutePosition, pointer.AbsoluteSize
			local bPos, bSize = v.AbsolutePosition, v.AbsoluteSize
			local over = not (aPos.X + aSize.X < bPos.X or aPos.X > bPos.X + bSize.X or aPos.Y + aSize.Y < bPos.Y or aPos.Y > bPos.Y + bSize.Y)
			if over and not bar[id] then
				bar[id] = true
				if game.Players.LocalPlayer.Character:FindFirstChild("Rhythm") then
					game.Players.LocalPlayer.Character:FindFirstChild("Rhythm"):Activate()
				end
			elseif not over then
				bar[id] = false
			end
		end
	end
end))

Misc1Basic:AddButton("Get All Sword", function()
if CheckGlove() == "Swordfighter" then
for i,v in pairs({"Ice Dagger", "Darkheart", "Ghostwalker", "Venomshank", "Windforce", "Illumina", "Firebrand"}) do
game:GetService("ReplicatedStorage").Events.swordevent:FireServer("AddSword", v)
end
else
Notification("You don't have Swordfighter equipped", _G.TimeNotify)
end
end)

Misc1Basic:AddToggle("Auto Slap Cherry", {
    Text = "Auto Cherry Fast",
    Default = false, 
    Callback = function(Value) 
_G.AutoSlapCherry = Value
if CheckGlove() == "Cherry" then
while _G.AutoSlapCherry do
if workspace:FindFirstChild("cherry_storage") then
for i, v in pairs(workspace.cherry_storage:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("clone_remote") then
v.clone_remote:FireServer()
end
end
end
task.wait()
end
elseif _G.AutoSlapCherry == true then
Notification("You don't have Cherry equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Slap Cherry"]:SetValue(false)
end
    end
})

Misc1Basic:AddToggle("Auto 5 More Fast", {
    Text = "Auto 5 More Fast",
    Default = false, 
    Callback = function(Value) 
_G.AutoSlapFiveMore = Value
if CheckGlove() == "5 More" then
while _G.AutoSlapFiveMore do
if workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_More") then
	for i, v in pairs(workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_More"):GetChildren()) do
		if v:IsA("Model") then
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("fivemore"):FireServer()			
		end
	end
end
task.wait()
end
elseif _G.AutoSlapCherry == true then
Notification("You don't have 5 More equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto 5 More Fast"]:SetValue(false)
end
    end
})

Misc1Basic:AddToggle("Free Emote", {
    Text = "Free Emote",
    Default = false, 
    Callback = function(Value) 
Animation(Value)
    end
})

Misc1Basic:AddDropdown("ArenaEnter", {
    Text = "Enter",
    Values = {"Arena", "Arena Default"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AutoEnter = Value
    end
})

 Misc1Basic:AddToggle("Auto Enter", {
    Text = "Auto Enter",
    Default = false, 
    Callback = function(Value) 
_G.AutoEnterJoin = Value
while _G.AutoEnterJoin do
if _G.AutoEnter == "Arena" then
	EnterPo = workspace.Lobby:FindFirstChild("Teleport1")
elseif _G.AutoEnter == "Arena Default" then
	EnterPo = workspace.Lobby:FindFirstChild("Teleport2")
end
if EnterPo then
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		repeat task.wait()
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, EnterPo, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, EnterPo, 1)
			end
		until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	end
end
task.wait()
end
    end
})

_G.SlapAuraCharacter = "HumanoidRootPart"
_G.ReachSlapArua = 25
_G.DelaySlapArua = 0.35
_G.SlapAuraFriend = "Fight"
_G.SlapAuraChoose = "Normal"
_G.WidthHitbox = 15
_G.LengthHitbox = 10

Misc1Basic:AddSlider("Reach Aura", {
    Text = "Reach Slap Aura",
    Default = 25,
    Min = 10,
    Max = 50,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ReachSlapArua = Value
    end
})

Misc1Basic:AddSlider("Delay Aura", {
    Text = "Delay Slap Aura",
    Default = 0.75,
    Min = 0.35,
    Max = 1,
    Rounding = 2,
    Compact = true,
    Callback = function(Value)
_G.DelaySlapArua = Value
    end
})

 Misc1Basic:AddDropdown("Slap Friend", {
    Text = "Slap Aura Friend",
    Values = {"Fight", "Not Fight"},
    Default = "Fight",
    Multi = false,
    Callback = function(Value)
_G.SlapAuraFriend = Value
    end
})

 Misc1Basic:AddDropdown("ChooseCharacter", {
    Text = "Slap Aura Character",
    Values = {"HumanoidRootPart", "Head", "Left Arm", "Left Leg", "Right Arm", "Right Leg"},
    Default = "HumanoidRootPart",
    Multi = false,
    Callback = function(Value)
_G.SlapAuraCharacter = Value
    end
})

 Misc1Basic:AddDropdown("Slap Aura Choose", {
    Text = "Slap Aura Choose",
    Values = {"Normal", "Target", "Reverse", "Hitbox"},
    Default = "Normal",
    Multi = false,
    Callback = function(Value)
_G.SlapAuraChoose = Value
    end
})

local SlapAuraDependencyBox = Misc1Basic:AddDependencyBox()

SlapAuraDependencyBox:SetupDependencies({
	{Options["Slap Aura Choose"], "Hitbox"}
})

SlapAuraDependencyBox:AddDivider()

SlapAuraDependencyBox:AddSlider("Width Hitbox", {
    Text = "Width Hitbox",
    Default = 15,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.WidthHitbox = Value
    end
})

SlapAuraDependencyBox:AddSlider("Length Hitbox", {
    Text = "Length Hitbox",
    Default = 10,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.LengthHitbox = Value
    end
})

SlapAuraDependencyBox:AddDivider()

function checkRagdollBaseFake(char)
	for i, v in pairs(char:GetChildren()) do
		if v:IsA("BasePart") and v.Name:lower():find("fake") then
			return false
		end
	end
	return true
end
function SlapHitbox()
    local player = game.Players.LocalPlayer
    local char = player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    local ToolGlove = char:FindFirstChildOfClass("Tool") 
    local GlovePart = ToolGlove and ToolGlove:FindFirstChild("Glove")
    if not (ToolGlove and GlovePart) then return end
    local ToolPos = GlovePart.Position
    local FaceRotation = CFrame.new(root.Position, root.Position + root.CFrame.LookVector)
    local offsetZ = -(_G.LengthHitbox / 2) - 1
    local FinalCFrame = CFrame.new(ToolPos) * FaceRotation.Rotation * CFrame.new(0, 0, offsetZ)
    local CurrentHitbox = Create("Part", {
        Name = "SlapZone", 
        Size = Vector3.new(_G.WidthHitbox, 8, _G.LengthHitbox),
        Anchored = true,
        CanCollide = false,
        CanTouch = false,
        CanQuery = false,
        Material = Enum.Material.ForceField,
        Transparency = 0.5,
        Color = Color3.fromRGB(255,0,0),
        CFrame = FinalCFrame,
        Parent = workspace
    })
    local HitPlayer = false
    if workspace:FindFirstChild("cherry_storage") then
        for _, v in pairs(workspace.cherry_storage:GetChildren()) do
            if string.find(v.Name, "Cherry") and v:FindFirstChild("HumanoidRootPart") then
                if InsideBox(v.HumanoidRootPart, CurrentHitbox) then
                    HitPlayer = true
                    slapglove(v.HumanoidRootPart)
                end
            end
        end
    end
    for _, c in pairs(workspace:GetChildren()) do
        if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
            if InsideBox(c.HumanoidRootPart, CurrentHitbox) then
                HitPlayer = true
                slapglove(c.HumanoidRootPart)
            end
        end
        if c.Name == "Balls" then
            for _, z in pairs(c:GetChildren()) do
                if string.find(z.Name, "'s Ball") then
                    if InsideBox(z, CurrentHitbox) then
                        HitPlayer = true
                        slapglove(z)
                    end
                end
            end
        end
    end
    if not HitPlayer then
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                local targetChar = v.Character
                if targetChar:FindFirstChild("entered") and targetChar:FindFirstChild("Humanoid") and targetChar:FindFirstChild("Ragdolled") and notSlap(targetChar, BlackList) and targetChar.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and (targetChar.Ragdolled.Value == false or checkRagdollBaseFake(targetChar)) then
                    if targetChar.Head:FindFirstChild("UnoReverseCard") == nil or CheckGlove() == "Error" then
                        if targetChar.Humanoid.Health > 0 then
                            if InsideBox(targetChar.HumanoidRootPart, CurrentHitbox) then
                                HitPlayer = true
                                slapglove(targetChar.HumanoidRootPart)
                                break
                            end
                        end
                    end
                end
            end
        end
    end
    if HitPlayer then
        CurrentHitbox.Color = Color3.fromRGB(0,255,0)
    else
        CurrentHitbox.Color = Color3.fromRGB(255,0,0)
    end
    task.delay(0.45, function()
        if CurrentHitbox then
            CurrentHitbox:Destroy()
        end
    end)
    return HitPlayer
end
local Cooldown = false
local function IsSlapping(humanoid)
    local activeTracks = humanoid:GetPlayingAnimationTracks()
    for _, track in pairs(activeTracks) do
        local id = tostring(track.Animation.AnimationId):match("%d+")
        if AnimationSlapHit[id] and track.TimePosition < 0.75 then
            return true
        end
    end
    return false
end
table.insert(_G.ConnectFun, game:GetService("RunService").Heartbeat:Connect(function()
    if not (_G.SlapAura and _G.SlapAuraChoose == "Hitbox") then return end
    local player = game.Players.LocalPlayer
    local char = player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local ragdoll = char and char:FindFirstChild("Ragdolled")
    if not char or not hum then return end
    local ToolGlove = char:FindFirstChildOfClass("Tool") 
    if ToolGlove and ToolGlove:FindFirstChild("Glove") then
        if ToolGlove:GetAttribute("CustomActivatedEnabled") then return end
        ToolGlove:SetAttribute("CustomActivatedEnabled", true)
        local UserInputService = game:GetService("UserInputService")
        local connection
        connection = UserInputService.InputBegan:Connect(function(input, processed)
            if processed then return end
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                if ToolGlove.Parent == char and not Cooldown then
                    task.wait(0.05) 
                    if IsSlapping(hum) then
                        Cooldown = true
                        task.spawn(function()
                            while ToolGlove.Parent == char and IsSlapping(hum) and ragdoll and not ragdoll.Value and (_G.SlapAura and _G.SlapAuraChoose == "Hitbox") do
	                            local hasHit = SlapHitbox() 
						        if hasHit then 
						            break 
						        end
                                task.wait()
                            end
                            Cooldown = false
                        end)
                    end
                end
            end
        end)
        ToolGlove.Unequipped:Connect(function()
            ToolGlove:SetAttribute("CustomActivatedEnabled", nil)
            if connection then connection:Disconnect() end
            Cooldown = false
        end)
    end
end))

Misc1Basic:AddToggle("Slap Aura", {
    Text = "Slap Aura",
    Default = false, 
    Callback = function(Value) 
_G.SlapAura = Value
task.spawn(function()
    while _G.SlapAura do
        local function PlayerTarget(slap)
			local Target
			for i,v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
					if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and notSlap(v.Character, BlackList) and (tonumber(_G.DelaySlapArua) > 0.7 or (v.Character.Ragdolled.Value == false or checkRagdollBaseFake(v.Character))) then
						if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or CheckGlove() == "Error" then
							if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude then
								if _G.SlapAuraFriend == "Fight" or (_G.SlapAuraFriend == "Not Fight" and not game.Players.LocalPlayer:IsFriendsWith(v.UserId)) then
									Target = v.Character:WaitForChild(_G.SlapAuraCharacter)
									if slap and Target then
										slapglove(Target)
									end
								end
							end
						end
					end
				end
			end
			return Target
		end
        if _G.SlapAuraChoose == "Target" then
            local target = PlayerTarget(false)
            if target then
                slapglove(target)
            end
        elseif _G.SlapAuraChoose == "Normal" then
            PlayerTarget(true)
        end
        task.wait(tonumber(_G.DelaySlapArua) or 0.05)
    end
end)
while _G.SlapAura do
if _G.SlapAuraChoose == "Normal" then
	if workspace:FindFirstChild("cherry_storage") then
		for i, v in pairs(workspace.cherry_storage:GetChildren()) do
			if string.find(v.Name, "Cherry") and v:FindFirstChild("HumanoidRootPart") then
				if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude then
					slapglove(v:WaitForChild(_G.SlapAuraCharacter))
				end
			end
		end
	end
	for i, c in pairs(workspace:GetChildren()) do
		if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
			if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c.HumanoidRootPart.Position).Magnitude then
				slapglove(c:WaitForChild(_G.SlapAuraCharacter))
			end
		end
		if c.Name == "Balls" then
			for i, z in pairs(c:GetChildren()) do
				if string.find(z.Name, "'s Ball") then
					if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - z.Position).Magnitude then
						game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(z, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
					end
				end
			end
		end
	end
elseif _G.SlapAuraChoose == "Reverse" then
	if CheckGlove() == "Reverse" then
		for i,v in pairs(game.Players:GetChildren()) do
			if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
				if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and notSlap(targetChar, {"stevebody", "rock", "Counterd", "Mirage"}) then
					if v.Character.Head:FindFirstChild("UnoReverseCard") and game.Players.LocalPlayer.Character.Head:FindFirstChild("UnoReverseCard") then
						if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude then
							if _G.SlapAuraFriend == "Fight" or (_G.SlapAuraFriend == "Not Fight" and not game.Players.LocalPlayer:IsFriendsWith(v.UserId)) then
								slapglove(v.Character:WaitForChild(_G.SlapAuraCharacter))
							end
						end
					end
				end
			end
		end
	end
end
task.wait()
end
    end
}):AddKeyPicker("SlapAura", {
   Default = "H",
   Text = "Slap Aura",
   Mode = "Toggle",
   SyncToggleState = true
})

_G.ReachShukuchi = 50
_G.ShukuchiFriend = "Fight"

 Misc1Basic:AddSlider("Reach Shukuchi", {
    Text = "Reach Shukuchi",
    Default = 50,
    Min = 1,
    Max = 130,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ReachShukuchi = Value
    end
})

 Misc1Basic:AddDropdown("Shukuchi Friend", {
    Text = "Shukuchi Friend",
    Values = {"Fight", "Not Fight"},
    Default = "Fight",
    Multi = false,
    Callback = function(Value)
_G.ShukuchiFriend = Value
    end
})

 Misc1Basic:AddToggle("Auto Shukuchi Player", {
    Text = "Auto Shukuchi Player",
    Default = false, 
    Callback = function(Value) 
_G.AutoShukuchi = Value
if CheckGlove() == "Shukuchi" then
while _G.AutoShukuchi do
	for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
			if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and notSlap(v.Character, BlackList) then
				if _G.ReachSlapArua >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude then
					if _G.ShukuchiFriend == "Fight" or (_G.ShukuchiFriend == "Not Fight" and not game.Players.LocalPlayer:IsFriendsWith(v.UserId)) then
						game:GetService("ReplicatedStorage").SM:FireServer(v)
					end
				end
			end
		end
	end
task.wait()
end
elseif _G.AutoShukuchi == true then
Notification("You don't have Shukuchi equipped.", _G.TimeNotify)
wait(0.05)
Toggles["Auto Shukuchi Player"]:SetValue(false)
end
    end
})

_G.ReachHitbox = 10
 Misc1Basic:AddSlider("Reach HitBox", {
    Text = "Reach Hitbox",
    Default = 10,
    Min = 4,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(Value)
_G.ReachHitbox = Value
    end
})

Misc1Basic:AddToggle("Hitbox Player Mod", {
    Text = "Hitbox Player & Mod,",
    Default = false, 
    Callback = function(Value) 
_G.HitboxPlayer = Value
while _G.HitboxPlayer do
for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
	    local seat = (v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Sit and v.Character:FindFirstChild("Humanoid").SeatPart) or nil
		local leash = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("LeashRope")
		local leashPlayer
		if leash and leash.Attachment1 then
			leashPlayer = game.Players:GetPlayerFromCharacter(leash.Attachment1:FindFirstAncestorOfClass("Model"))
		end
	    if not v.Character:FindFirstChild("Horse") and notSlap(v.Character, BlackList) and leashPlayer ~= v and not seat then
		    v.Character.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
		    v.Character.HumanoidRootPart.Transparency = 0.75
		else
			v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
	        v.Character.HumanoidRootPart.Transparency = 1
		end
    end
end
for i, c in pairs(workspace:GetChildren()) do
	if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
		c.HumanoidRootPart.Size = Vector3.new(_G.ReachHitbox,_G.ReachHitbox,_G.ReachHitbox)
		c.HumanoidRootPart.Transparency = 0.75
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
	for i, c in pairs(workspace:GetChildren()) do
		if string.find(c.Name, "Å") and c:FindFirstChild("HumanoidRootPart") then
			c.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
			c.HumanoidRootPart.Transparency = 1
		end
	end
end
    end
}):AddKeyPicker("Hitbox", {
   Default = "Z",
   Text = "Hitbox Player & Mod",
   Mode = "Toggle",
   SyncToggleState = true
})

_G.GloveExtendReach = 5
Misc1Basic:AddSlider("Extend Glove", {
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

 Misc1Basic:AddDropdown("Extend Option", {
    Text = "Extend Option",
    Values = {"Meat Stick","Pancake","Growth","North Korea Wall","Slight Extend"},
    Default = "",
    Multi = false,
    Callback = function(Value)
GloveExtendOption = Value
    end
})

 Misc1Basic:AddToggle("Extend Glove", {
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
	        GloveReachTo = Vector3.new(_G.GloveExtendReach, _G.GloveExtendReach, tonumber(_G.GloveExtendReach..".7"))
		end
		if GloveReachTo then
			v:FindFirstChild("Glove").Size = GloveReachTo
		end
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
}):AddKeyPicker("ExtendGlove", {
   Default = "C",
   Text = "Extend Glove",
   Mode = "Toggle",
   SyncToggleState = true
})

 Misc1Basic:AddInput("Auto Change Nametag", {
    Default = "Change Nametag...",
    Numeric = false,
    Text = "Change Name",
    Placeholder = "Change",
    Callback = function(Value)
_G.FakeName = Value
    end
})

 Misc1Basic:AddToggle("NameTag", {
    Text = "Auto Set NameTag",
    Default = false, 
    Callback = function(Value) 
_G.AutoSetNameTag = Value
while _G.AutoSetNameTag do
if game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head:FindFirstChild("Nametag") then
	if game.Players.LocalPlayer.Character.Head.Nametag:FindFirstChild("Labels") then
		for i, v in pairs(game.Players.LocalPlayer.Character.Head.Nametag.Labels:GetChildren()) do
			if v:IsA("TextLabel") then
				v.Text = _G.FakeName
			end
		end
	end
end
task.wait()
end
    end
})

Misc1Basic:AddInput("Auto Change Slap", {
    Default = "Change Slap...",
    Numeric = false,
    Text = "Change Slap / Random",
    Placeholder = "Change",
    Callback = function(Value)
_G.FakeSlap = Value
    end
})

Misc1Basic:AddToggle("SlapFake", {
    Text = "Auto Set Slap",
    Default = false, 
    Callback = function(Value) 
_G.AutoChangeSlapFake = Value
while _G.AutoChangeSlapFake do
if game.Players.LocalPlayer.leaderstats.Slaps.Value ~= _G.FakeSlap then
game.Players.LocalPlayer.leaderstats.Slaps.Value = _G.FakeSlap
end
task.wait()
end
    end
})

Misc1Basic:AddToggle("Auto Set Random Slap", {
    Text = "Auto Set Random Slap",
    Default = false, 
    Callback = function(Value) 
_G.AutoChangeSlapFake = Value
while _G.AutoChangeSlapFake do
if game.Players.LocalPlayer.leaderstats:FindFirstChild("Slaps") then
local random = math.random(0, (_G.FakeSlap or 9e9))
game.Players.LocalPlayer.leaderstats.Slaps.Value = random
end
task.wait()
end
    end
})

Misc1Basic:AddInput("Auto Change Glove", {
    Default = "Change Glove...",
    Numeric = false,
    Text = "Change Glove",
    Placeholder = "Change",
    Callback = function(Value)
_G.FakeGlove = Value
    end
})

 Misc1Basic:AddToggle("GloveFake", {
    Text = "Auto Set Glove",
    Default = false, 
    Callback = function(Value) 
_G.AutoChangeSlapFake = Value
while _G.AutoChangeSlapFake do
if game.Players.LocalPlayer.leaderstats.Glove.Value ~= _G.FakeGlove then
game.Players.LocalPlayer.leaderstats.Glove.Value = _G.FakeGlove
end
task.wait()
end
    end
})

Misc1Basic:AddDropdown("Tycoon", {
    Text = "Tycoon",
    Values = {"All","Your","Other"},
    Default = "All",
    Multi = false,
    Callback = function(Value)
_G.TycoonAuto = Value
    end
})

Misc1Basic:AddToggle("Bring Drop End", {
    Text = "Bring Drop End (Network Owner)",
    Default = false, 
    Callback = function(Value) 
_G.DropEndTycoon = Value
    end
})

Misc1Basic:AddToggle("Click Tycoon", {
    Text = "Auto Click Tycoon",
    Default = false, 
    Callback = function(Value) 
_G.AutoClickTycoon = Value
while _G.AutoClickTycoon do
local function BringDrop(drop)
	if _G.DropEndTycoon then
		if drop and drop:FindFirstChild("End") and drop.End:IsA("BasePart") then
			for i,x in pairs(drop:GetChildren()) do
				if x.Name:lower() == "tycoondrop" and IsNetworkOwner(x) then
					x.CFrame = drop.End.CFrame
				end
			end
		end
	end
end
for _, v in pairs(workspace:GetChildren()) do
    local hasClick = v:FindFirstChild("Click")
    if hasClick then
	    local isTycoon = v.Name:find("Tycoon")
	    local isYour = v.Name:match(game.Players.LocalPlayer.Name)
	    if (_G.TycoonAuto == "All" and isTycoon) or (_G.TycoonAuto == "Your" and isYour) or (_G.TycoonAuto == "Other" and isTycoon and not isYour) then
	        BringDrop(v)
	        local cd = hasClick:FindFirstChildOfClass("ClickDetector")
	        if cd then
	            fireclickdetector(cd, 0)
	            fireclickdetector(cd, 1)
	        end
	    end
	end
end
task.wait()
end
    end
})

Misc1Basic:AddToggle("Auto Destroy Tycoon", {
    Text = "Auto Destroy Tycoon",
    Default = false, 
    Callback = function(Value) 
_G.AutoDestroyTycoon = Value
while _G.AutoDestroyTycoon do
for _, v in pairs(workspace:GetChildren()) do
	if v:FindFirstChild("Destruct") then
		local isTycoon = v.Name:find("Tycoon")
		local isYourTycoon = v.Name:match(game.Players.LocalPlayer.Name)
		if (_G.TycoonAuto == "All" and isTycoon) or (_G.TycoonAuto == "Your" and isYourTycoon) or (_G.TycoonAuto == "Other" and isTycoon and not isYourTycoon) then
			fireclickdetector(v.Destruct.ClickDetector,0)
			fireclickdetector(v.Destruct.ClickDetector,1)
		end
	end
end
task.wait()
end
    end
})

local Misc2Esp = TabBoxMisc1:AddTab("Esp") 

Misc2Esp:AddToggle("Esp Glove", {
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
local ColorESP0 = _G.ColorESP or Color3.new(255,255,255)
for i,v in ipairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		ESPLibrary:AddESP({
			Object = v.Character,
			Text = v.leaderstats.Glove.Value,
			Color = ColorESP0
		})
		ESPLibrary:UpdateObjectText(v.Character, v.leaderstats.Glove.Value)
		ESPLibrary:UpdateObjectColor(v.Character, ColorESP0)
		ESPLibrary:SetOutlineColor(ColorESP0)
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
}):AddKeyPicker("EspGlove", {
   Default = "T",
   Text = "Esp Glove",
   Mode = "Toggle",
   SyncToggleState = true
})


Misc2Esp:AddToggle("Esp", {
    Text = "Esp Orb",
    Default = false, 
    Callback = function(Value) 
_G.EspOrb = Value
for i, v in pairs(workspace:GetChildren()) do
	if v.Name:find("Orb") then
		ESPLibrary:RemoveESP(v)
	end
end
while _G.EspOrb do
local ColorEsp1 = _G.ColorESP1 or Color3.fromRGB(28, 3, 252)
for i, v in pairs(workspace:GetChildren()) do
	if v.Name:find("Orb") then
		ESPLibrary:AddESP({
			Object = v,
			Text = v.Name:gsub("Orb", " Orb"),
			Color = ColorEsp1
		})
		ESPLibrary:UpdateObjectText(v, v.Name:gsub("Orb", " Orb"))
		ESPLibrary:UpdateObjectColor(v, ColorEsp1)
		ESPLibrary:SetOutlineColor(ColorEsp1)
	end
end
task.wait()
end
    end
}):AddColorPicker("Color Esp Orb", {
     Default = Color3.fromRGB(28, 3, 252),
     Callback = function(Value)
_G.ColorESP1 = Value
     end
})

Misc2Esp:AddToggle("Esp", {
    Text = "Esp Toolbox, Gravestone...",
    Default = false, 
    Callback = function(Value) 
_G.EspChoose = Value
for i, v in pairs(workspace:GetChildren()) do
	if v.Name == "Keypad" or v.Name == "Gift" or v.Name == "Gravestone" or v.Name == "Toolbox" then
		ESPLibrary:RemoveESP(v)
	end
end
while _G.EspChoose do
local ColorESP2 = _G.ColorESP2 or Color3.fromRGB(9, 230, 86)
for i, v in pairs(workspace:GetChildren()) do
	if v.Name == "Keypad" or v.Name == "Gift" or v.Name == "Gravestone" or v.Name == "Toolbox" then
		ESPLibrary:AddESP({
			Object = v,
			Text = v.Name,
			Color = ColorESP2
		})
		ESPLibrary:UpdateObjectText(v, v.Name)
		ESPLibrary:UpdateObjectColor(v, ColorESP2)
		ESPLibrary:SetOutlineColor(ColorESP2)
	end
end
task.wait()
end
    end
}):AddColorPicker("Color Esp Choose", {
     Default = Color3.fromRGB(9, 230, 86),
     Callback = function(Value)
_G.ColorESP2 = Value
     end
})

Misc2Esp:AddDivider()

local Font = {}
for _, v in ipairs(Enum.Font:GetEnumItems()) do
    table.insert(Font, v.Name)
end
Misc2Esp:AddDropdown("Font", {
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

Misc2Esp:AddToggle("Show Distance", {
    Text = "Show Distance",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetShowDistance(Value)
end
    end
})

Misc2Esp:AddToggle("Show Rainbow", {
    Text = "Show Rainbow",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetRainbow(Value)
end
    end
})

Misc2Esp:AddToggle("Show Tracers", {
    Text = "Show Tracers",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetTracers(Value)
end
    end
})

Misc2Esp:AddDropdown("TracersOrigin", {
    Text = "Tracers Origin",
    Multi = false,
    Values = {"Bottom", "Top", "Center", "Mouse"},
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetTracerOrigin(Value)
end
    end
})

Misc2Esp:AddToggle("Show Arrows", {
    Text = "Show Arrows",
    Default = false,
    Callback = function(Value)
if ESPLibrary then
	ESPLibrary:SetArrows(Value)
end
    end
})

Misc2Esp:AddSlider("ArrowsSize", {
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

Misc2Esp:AddSlider("SetTextSize", {
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

Misc2Esp:AddSlider("SetFillTransparency", {
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

Misc2Esp:AddSlider("SetOutlineTransparency", {
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

local Misc3Group = Tabs.Tab5:AddRightGroupbox("Misc Help")

Misc3Group:AddInput("Players", {
    Default = "",
    Numeric = false,
    Text = "Player",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.PlayerPut1 = FoundPlr(Value, true)
    end
})

Misc3Group:AddDropdown("Retro", {
    Text = "Retro",
    Values = {"Get Retro","Teleport Button","Enter Retro"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.HelpPlayerGetHehe = Value
    end
})

Misc3Group:AddButton("Help Player Retro", function()
if _G.HelpPlayerGetHehe == "Get Retro" then
if CheckGlove() == "Grab" then
if game.Workspace:FindFirstChild("Retro") == nil then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
wait(1)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Grab") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Character
end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
wait(0.2)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.6)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
wait(1)
if game.Players.LocalPlayer.Character:FindFirstChild("Grab") then
game.Players.LocalPlayer.Character:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Backpack
end
else
Notification("You don't have Grab equipped", _G.TimeNotify)
end
elseif _G.HelpPlayerGetHehe == "Teleport Button" then
if CheckGlove() == "Grab" then
if game.Workspace:FindFirstChild("Retro") == nil then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
wait(1)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Grab") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Character
end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3)
wait(0.2)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.6)
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") then
for i, v in pairs(workspace.Retro.Map.RetroObbyMap:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("StaffApp") and v.StaffApp:FindFirstChild("Button") and v.StaffApp.Button:FindFirstChild("ClickDetector") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.StaffApp.Button.CFrame
end
end
end
wait(1)
if game.Players.LocalPlayer.Character:FindFirstChild("Grab") then
game.Players.LocalPlayer.Character:FindFirstChild("Grab").Parent = game.Players.LocalPlayer.Backpack
end
else
Notification("You don't have Grab equipped", _G.TimeNotify)
end
elseif _G.HelpPlayerGetHehe == "Enter Retro" then
if CheckGlove() == "Glitch" and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 50000 and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and _G.PlayerPut1.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame
wait(0.35)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
fireclickdetector(workspace.Lobby["Error"].ClickDetector)
task.wait(8.5)
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame
until 4.5 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.PlayerPut1.Character.HumanoidRootPart.Position).Magnitude or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or _G.PlayerPut1.Character:FindFirstChild("Humanoid") and _G.PlayerPut1.Character.Humanoid.Health <= 0
wait(0.07)
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 or _G.PlayerPut1.Character:FindFirstChild("Humanoid") and _G.PlayerPut1.Character.Humanoid.Health > 0 then
game.ReplicatedStorage.Errorhit:FireServer(_G.PlayerPut1.Character:WaitForChild("Head"))
end
else
Notification("You have in Lobby | Player [ ".._G.PlayerPut1.Name.." ] in arena, or You don't have Glitch equipped, or you have don't have 50K Slap", _G.TimeNotify)
end
end
end)

Misc3Group:AddButton("Help Player Quake", function()
if CheckGlove() == "Home Run" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and _G.PlayerPut1.leaderstats.Glove.Value == "Berserk" then
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
fireclickdetector(workspace.Lobby.woah.ClickDetector)
wait(4.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame
task.wait(.2)
game:GetService("ReplicatedStorage").VineThud:FireServer()
task.wait(1)
fireclickdetector(workspace.Lobby["Home Run"].ClickDetector)
wait(0.4)
spawn(function()
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.Character.HumanoidRootPart.CFrame
until 4.5 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - _G.PlayerPut1.Character.Character.HumanoidRootPart.Position).Magnitude or game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0 or _G.PlayerPut1.Character:FindFirstChild("Humanoid") and _G.PlayerPut1.Character.Humanoid.Health <= 0
end)
wait(0.7)
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
else
Notification("You don't have Home Run equipped, or you have to go lobby, or player don't have Berserk equipped.", _G.TimeNotify)
end
end)

Misc3Group:AddButton("Help Player Goofy", function()
if CheckGlove() == "Confusion" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2133016756) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame
wait(0.2)
game:GetService("ReplicatedStorage").GeneralHit:FireServer(_G.PlayerPut1.Character:WaitForChild("HumanoidRootPart"))
fireclickdetector(workspace.Lobby.Goofy.ClickDetector)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.HumanoidRootPart.CFrame
wait(0.2)
game:GetService("ReplicatedStorage").GeneralHit:FireServer(_G.PlayerPut1.Character.Character:WaitForChild("HumanoidRootPart"))
else
Notification("You don't have Confusion equipped, or you have to go lobby.", _G.TimeNotify)
end
end)

Misc3Group:AddButton("Help Player Wheelchair", function()
local CheckGloveWheel = 0
local WhatGloveNo = {}
for i, v in pairs({"bull", "bomb", "brick", "slicer", "blasphemy", "tableflip", "l.o.l.b.o.m.b"}) do
    local FoundGlove = false
    for j, b in pairs(game.Players.LocalPlayer:FindFirstChild("_unlockedGloves"):GetChildren()) do
        if b.Value == true and string.find(b.Name:lower(), v) then
            CheckGloveWheel += 1
            FoundGlove = true
            break
        end
    end
    if not FoundGlove then
        table.insert(WhatGloveNo, v)
    end
end
if tonumber(CheckGloveWheel) == 7 then
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and _G.PlayerPut1.Character:FindFirstChild("entered") then
		spawn(function()
			repeat task.wait()
				CreateFreezeBV()
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
					game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
				end
			until StopFreezeBV
			wait(0.3)
			CreateFreezeBV({Remove = true})
		end)
		if _G.PlayerPut1.Character:FindFirstChild("HumanoidRootPart") then
			local charpl = _G.PlayerPut1.Character
			local rootpl = charpl and charpl:FindFirstChild("HumanoidRootPart")
			equipglove("Bull")
			spawn(function()
				repeat task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
				until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			end)
			wait(0.3)
			repeat task.wait()
				slapglove(rootpl)
				task.wait(0.3)
			until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			wait(0.1)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			wait(0.35)
			equipglove("Bomb")
			spawn(function()
				repeat task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
				until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			end)
			wait(0.5)
			game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
			game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
			wait(0.12)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			equipglove("Brick")
			task.wait(0.1)
			repeat task.wait() until game.Players.LocalPlayer.Character
			if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				repeat task.wait()
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
				until game.Players.LocalPlayer.Character:FindFirstChild("entered")
			end
			task.wait(0.3)
			repeat task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 0, 5)
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Brick") then
					game.Players.LocalPlayer.Backpack.Brick.Parent = game.Players.LocalPlayer.Character
				else
					game:GetService("ReplicatedStorage").lbrick:FireServer()
				end
			until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			wait(0.3)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.3)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			task.wait(0.55)
			equipglove("Slicer")
			task.wait(0.1)
			repeat task.wait() until game.Players.LocalPlayer.Character
			if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				repeat task.wait()
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
				until game.Players.LocalPlayer.Character:FindFirstChild("entered")
			end
			task.wait(0.5)
			repeat task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 8, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Slicer") then
					game.Players.LocalPlayer.Backpack.Slicer.Parent = game.Players.LocalPlayer.Character
				else
					game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
				end
			until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			wait(0.3)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			task.wait(0.1)
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.3)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			task.wait(0.5)
			equipglove("Blasphemy")
			spawn(function()
				repeat task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
				until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			end)
			task.wait(0.36)
			repeat task.wait()
				slapglove(rootpl)
				task.wait(0.3)
			until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			wait(0.1)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			wait(0.1)
			equipglove("Tableflip")
			spawn(function()
				repeat task.wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0))
				until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == true
			end)
			task.wait(0.37)
			game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
			wait(0.1)
			repeat task.wait() until charpl:FindFirstChild("Ragdolled") and charpl.Ragdolled.Value == false
			equipglove("L.O.L.B.O.M.B")
			repeat task.wait() until game.Players.LocalPlayer.Character
			if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				repeat task.wait()
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
					firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
				until game.Players.LocalPlayer.Character:FindFirstChild("entered")
			end
			wait(0.3)
			spawn(function()
				repeat task.wait()
					if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = rootpl.CFrame * CFrame.new(0, 3, 0)
					end
				until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0
			end)
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.7)
			StopFreezeBV = true
		end
	else
		Notification("You have to go lobby or, player have to go arena.", _G.TimeNotify)
	end
else
	Notification("You have owner ".."\"7 Glove\"".." ("..table.concat(", ", WhatGloveNo)..")", _G.TimeNotify)
end
end)

Misc3Group:AddSlider("Time Help Berserk", {
    Text = "Time Help Berserk",
    Default = 3,
    Min = 1,
    Max = 3,
    Rounding = 0,
    Callback = function(Value)
_G.TimeHelpGotIm = Value
    end
})

Misc3Group:AddButton("Help Player Berserk", function()
if CheckGlove() == "Kinetic" and game.Players.LocalPlayer.Character:FindFirstChild("entered") and _G.PlayerPut1.Character:FindFirstChild("entered") then
for o = 1, _G.TimeHelpGotIm do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
repeat task.wait()
	game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = -99})
until game.Players.LocalPlayer.Character:WaitForChild("KineticSlappedBadgeCounter").Value >= 100
wait(2.8)
spawn(function()
	repeat task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.PlayerPut1.Character.Head.CFrame * CFrame.new(0,5.80,0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	until _G.PlayerPut1.Character:FindFirstChild("Ragdolled") and _G.PlayerPut1.Character.Ragdolled.Value == true
end)
wait(0.28)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Kinetic") then
	game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Kinetic)
end
wait(0.19)
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game.Players.LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(3.8)
end
else
Notification("You don't have Kinetic equipped, or you have to go Arena, or player have go to arena.", _G.TimeNotify)
end
end)

