local Badge3Group = Tabs.Tab3:AddLeftGroupbox("Teleport / Show")

Badge3Group:AddDropdown("Teleport Safe", {
    Text = "Teleport Safe",
    Values = {"SafeSpotBox 1.0", "SafeSpotBox 2.0", "Bed"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "SafeSpotBox 1.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
elseif Value == "SafeSpotBox 2.0" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
elseif Value == "Bed" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Bed"].Bed3.CFrame * CFrame.new(0,0,-1)
end
    end
})

Badge3Group:AddDropdown("Retro Obby", {
    Text = "Retro Obby",
    Values = {"Get Badge", "Show All", "Off Show All", "Teleport Spawn 1", "Teleport Spawn 2", "Teleport Spawn 3", "Click Button"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Get Badge" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
elseif Value == "Show All" then
if game.ReplicatedStorage.Assets:FindFirstChild("Retro") then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
elseif Value == "Off Show All" then
if game.Workspace:FindFirstChild("Retro") then
game.Workspace.Retro.Parent = game.ReplicatedStorage:FindFirstChild("Assets")
end
elseif Value == "Teleport Spawn 1" then
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") and game.Workspace.Retro.Map:FindFirstChild("RetroObbyMap") and game.Workspace.Retro.Map.RetroObbyMap:FindFirstChild("Spawn") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn.CFrame
end
elseif Value == "Teleport Spawn 2" then
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") and game.Workspace.Retro.Map:FindFirstChild("RetroObbyMap") and game.Workspace.Retro.Map.RetroObbyMap:FindFirstChild("Spawn_stage2") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage2.CFrame
end
elseif Value == "Teleport Spawn 3" then
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") and game.Workspace.Retro.Map:FindFirstChild("RetroObbyMap") and game.Workspace.Retro.Map.RetroObbyMap:FindFirstChild("Spawn_stage3") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Retro.Map.RetroObbyMap.Spawn_stage3.CFrame
end
elseif Value == "Click Button" then
repeat task.wait()
if game.ReplicatedStorage:FindFirstChild("Assets") and game.ReplicatedStorage.Assets:FindFirstChild("Retro") then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
until game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map")
wait(1.5)
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") then
for i, v in pairs(workspace.Retro.Map.RetroObbyMap:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("StaffApp") and v.StaffApp:FindFirstChild("Button") and v.StaffApp.Button:FindFirstChild("ClickDetector") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.StaffApp.Button.CFrame
wait(0.3)
fireclickdetector(v.StaffApp.Button.ClickDetector)
end
end
end
end
    end
})

Badge3Group:AddDropdown("Repressed Memory", {
    Text = "Repressed Memory",
    Values = {"Show All","Off Show All","Teleport Enter","Teleport Portal","Teleport Bob Plushie","Click Bob Plushie"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Show All" then
if game.ReplicatedStorage:FindFirstChild("RepressedMemoriesMap") then
game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
end
elseif Value == "Off Show All" then
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
end
elseif Value == "Teleport Enter" then
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.Limbo.CFrame * CFrame.new(0,-5,0)
end
elseif Value == "Teleport Portal" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories.SimonSaysGate.Portal.CFrame
elseif Value == "Teleport Bob Plushie" then
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
elseif game.ReplicatedStorage:FindFirstChild("RepressedMemoriesMap") then
game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
wait(1.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
end
elseif Value == "Click Bob Plushie" then
repeat task.wait()
if game.ReplicatedStorage:FindFirstChild("RepressedMemoriesMap") then
game.ReplicatedStorage.RepressedMemoriesMap.Parent = game.Workspace
end
until game.Workspace:FindFirstChild("RepressedMemoriesMap")
wait(1)
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.RepressedMemories._ugcQuestObjectBobPlushie.Handle.CFrame
wait(0.5)
fireclickdetector(workspace.RepressedMemories._ugcQuestObjectBobPlushie.ClickDetector)
end
wait(2)
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
game.Workspace.RepressedMemoriesMap.Parent = game.ReplicatedStorage
end
end
    end
})

Badge3Group:AddDropdown("Map Kraken", {
    Text = "Map Kraken",
    Values = {"Show All","Off Show All", "Teleport Enter"},
    Default = "",
    Multi = false,
    Callback = function(Value)
if Value == "Show All" then
if game.ReplicatedStorage:FindFirstChild("AbyssAssets") and game.ReplicatedStorage.AbyssAssets:FindFirstChild("Abyss") then
game.ReplicatedStorage.AbyssAssets.Abyss.Parent = game.Workspace
end
elseif Value == "Off Show All" then
if game.Workspace:FindFirstChild("Abyss") then
game.Workspace.Abyss.Parent = game.ReplicatedStorage:FindFirstChild("AbyssAssets")
end
elseif Value == "Teleport Enter" then
if game.Workspace:FindFirstChild("Abyss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Abyss.Spawn.CFrame * CFrame.new(0,10,0)
end
end
    end
})

local Badge1Group = Tabs.Tab3:AddLeftGroupbox("Badge Auto")

Badge1Group:AddButton({
    Text = "Auto Get Boxing",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
if game.Workspace:FindFirstChild("BoxingGloves") == nil then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Buildings.house:FindFirstChild("TP").CFrame * CFrame.new(0,10,0)
end
repeat task.wait() until game.Workspace:FindFirstChild("BoxingGloves")
wait(0.6)
if game.Workspace:FindFirstChild("BoxingGloves") then
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "BoxingGloves" and v:FindFirstChild("ClickDetector") then
if fireclickdetector then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
    end
})

Badge1Group:AddButton({
    Text = "Auto Get Boxing",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(2)
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local OpenedDoors = {}
	while true and task.wait() do
		if workspace:FindFirstChild("Hallways") then
			for i, v in pairs(workspace.Hallways:GetChildren()) do
				local HallwayDoor = v:FindFirstChild("Doors")
				if HallwayDoor then
					for j, b in pairs(HallwayDoor:GetChildren()) do
						if b:IsA("Model") and tonumber(b.Name) then
							if OpenedDoors[b] then 
                                continue 
                            end
							local DoorHitbox = b:FindFirstChild("Hitbox")
							local Click = DoorHitbox and DoorHitbox:FindFirstChild("ClickDetector")
							if DoorHitbox then
								repeat task.wait()
									if fireclickdetector then
										fireclickdetector(Click)
									end
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = DoorHitbox.CFrame * CFrame.new(0, 0, -5)
								until b:GetAttribute("Open")
								OpenedDoors[b] = true
							end
						end
					end
				end
			end
		end
	end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(125845699717230)
    end
})

Badge1Group:AddButton({
    Text = "Auto Get Bind",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
repeat task.wait() until game.Workspace:FindFirstChild("Orb") and game.Workspace.Orb:FindFirstChild("Meshes/rock chain glove_defaultglove_cell.001")
wait(0.5)
if game.Workspace:FindFirstChild("Orb") and game.Workspace.Orb:FindFirstChild("Meshes/rock chain glove_defaultglove_cell.001") then
if fireclickdetector then
fireclickdetector(game.Workspace.Orb.ClickDetector, 0)
fireclickdetector(game.Workspace.Orb.ClickDetector, 1)
elseif not fireclickdetector then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Orb["Meshes/rock chain glove_defaultglove_cell.001"].CFrame
end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(74169485398268)
    end
})

Badge1Group:AddButton({
    Text = "Auto Get Lotus",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lotus2Complete"):FireServer()
	if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Akari") then
		game:GetService("Players").LocalPlayer.PlayerGui.Akari:Destroy()
	end
	game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Minigames"):WaitForChild("Complete"):FireServer()
	wait(0.5)
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Folder") and v.Name:find("Lotus") and v:FindFirstChild("Lotus") and v.Lotus:FindFirstChild("Primary") and v.Lotus.Primary:FindFirstChild("ClickDetector") then
			for j, b in pairs(v.Lotus:GetChildren()) do
				if b:IsA("BasePart") and not b.Name:find("Primary") and b.Transparency < 1 then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Lotus.Primary.CFrame * CFrame.new(0, 5, 0)
					if fireclickdetector then
						fireclickdetector(v.Lotus.Primary.ClickDetector)
					end
					repeat task.wait() until b.Transparency >= 1
					break
				end
			end
		end
	end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(93981091811742)
    end
})

Badge1Group:AddButton({
    Text = "Auto Get Conker",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(2.5)
game:GetService("ReplicatedStorage").Remotes.Dialogue.FinishedNPCDialogue:FireServer()
repeat task.wait() until workspace:FindFirstChild("Map"):FindFirstChild("Props"):FindFirstChild("BasketCollection") and workspace.Map.Props.BasketCollection:FindFirstChild("Basket")
fireclickdetector(workspace.Map.Props.BasketCollection.Basket.ClickDetector)
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("ConkerHoldVisual")
task.wait(2.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CoreAssets.Bowl["Sphere.002"].CFrame
spawn(function()
	workspace.NPCs.DescendantAdded:Connect(function(s)
	    if s.Name == "squirrel" then
		    local ok, err = pcall(function()
		        while task.wait() and s do
					if s:FindFirstChild("HumanoidRootPart") then
			            game:GetService("ReplicatedStorage").Remotes.tool.use:FireServer("slap")
			            game:GetService("ReplicatedStorage").Remotes.tool.hit:FireServer("slap", {Instance = s.HumanoidRootPart})
					end
				end
	        end)
	    end
	end)
	workspace.DescendantAdded:Connect(function(n)
	    if n.Name == "Conker" then
	        if n:FindFirstChildOfClass("TouchTransmitter") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = n.CFrame
				if firetouchinterest then
		            firetouchinterest(n, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
		            firetouchinterest(n, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
				end
	            task.delay(0.1, function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.CoreAssets.Bowl["Sphere.002"].CFrame
					task.wait(0.5)
					workspace.Map.CoreAssets.Bowl.ProximityPrompt.HoldDuration = 0
					if fireproximityprompt then
						fireproximityprompt(workspace.Map.CoreAssets.Bowl.ProximityPrompt)
					end
					pcall(function()
						workspace.Map.CoreAssets.Bowl.ProximityPrompt:InputHoldBegin()
		                workspace.Map.CoreAssets.Bowl.ProximityPrompt:InputHoldEnd()
					end)
	            end)
	        end
	    end
	end)
end)
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(101113181694564)
    end
})

Badge1Group:AddButton({
    Text = "Auto Get FrostBite",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-554, 177, 56)
wait(0.7)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                v.HoldDuration = 0
                fireproximityprompt(v)
            end
        end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(17290438723)
  	end    
})

Badge1Group:AddButton({
    Text = "Auto Get Plate",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(0.3)
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("Obstacles")
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	if workspace:FindFirstChild("Obstacles") then workspace.Obstacles:Destroy() end
	game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Bypass plate obstacles",Icon = "rbxassetid://7733658504",Duration = 5})
	game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Wait in until glove appear",Icon = "rbxassetid://7733658504",Duration = 5})
	workspace:GetAttributeChangedSignal("Completed"):Connect(function()
		if workspace:GetAttribute("Completed") == true then
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Done Bro",Icon = "rbxassetid://7733658504",Duration = 5})
			while task.wait() do
				if workspace:FindFirstChild("Glove Model"):FindFirstChild("Hand") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Glove Model"].Hand.CFrame
				end
			end
		end
	end)
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(106620300132058)
  	end    
})

Badge1Group:AddButton({
    Text = "Auto Get Plunger",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat task.wait() until game.Players.LocalPlayer
wait(1.9)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local Plunger = workspace:FindFirstChild("plunger glove")
Plunger:FindFirstChild("plungerglove").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
if fireclickdetector then
fireclickdetector(Plunger:FindFirstChildOfClass("ClickDetector"))
end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
if workspace:FindFirstChild("BountyHunterRoom") and workspace.BountyHunterRoom:FindFirstChild("PlungerMain") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom:FindFirstChild("PlungerMain").CFrame
if fireclickdetector then
fireclickdetector(workspace.BountyHunterRoom.PlungerMain:FindFirstChildOfClass("ClickDetector"))
end
end
repeat task.wait() until workspace:FindFirstChild("plungers") and workspace.plungers:FindFirstChild("ToiletPlunger").Transparency < 1
wait(0.4)
if workspace:FindFirstChild("plungers") and workspace.plungers:FindFirstChild("ToiletPlunger") and workspace.plungers.ToiletPlunger:FindFirstChildOfClass("ClickDetector") then
if fireclickdetector then
fireclickdetector(workspace.plungers.ToiletPlunger:FindFirstChildOfClass("ClickDetector"))
end
end
  	end    
})

Badge1Group:AddButton({
    Text = "Auto Get Admin",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
    if teleportFunc then
        teleportFunc([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            repeat wait() until game.Players.LocalPlayer
wait(13.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(502, 76, 59)
task.wait(6)
if getconnections then
for i,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable() 
end
end
if not getconnections then
	local Virtual = game:GetService("VirtualUser")
	game.Players.LocalPlayer.Idled:Connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
	end)
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
repeat task.wait()
if game.ReplicatedStorage:FindFirstChild("Assets") and game.ReplicatedStorage.Assets:FindFirstChild("Retro") then
game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
end
until game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map")
wait(1.5)
if game.Workspace:FindFirstChild("Retro") and game.Workspace.Retro:FindFirstChild("Map") then
for i, v in pairs(workspace.Retro.Map.RetroObbyMap:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("StaffApp") and v.StaffApp:FindFirstChild("Button") and v.StaffApp.Button:FindFirstChild("ClickDetector") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.StaffApp.Button.CFrame
wait(0.3)
fireclickdetector(v.StaffApp.Button.ClickDetector)
end
end
end
    end
})

Badge1Group:AddButton({
    Text = "Auto Get Chain",
    Func = function()
if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Workspace:FindFirstChild("Map") and game.Workspace.Map:FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
local Code = {}
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
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
wait(0.25)
for i = 1, #Code do
local CodeNah = Code[i]
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[CodeNah].ClickDetector)
wait(0.25)
end
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
wait(0.5)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(9431156611)
else
Notification("You don't have 1000 slap.", _G.TimeNotify)
end
    end
})

Badge1Group:AddButton({
    Text = "Get Counter + Elude",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
Time = 121
wait(0.4)
game.Workspace.CounterLever.ClickDetector.MouseClick:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
for i = 1,Time do
Time = Time - 1
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ "..Time.." ] receive.",Icon = "rbxassetid://7733658504",Duration = 1})
wait(1)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
for i, v in pairs(workspace.Maze:GetChildren()) do
if v.Name == "Part" and v:FindFirstChild("A0") and v:FindFirstChild("ClickDetector") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,-20,0)
v.ClickDetector.MouseClick:Connect(function()
game.Workspace.Ruins.Elude.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
end
end
end)
wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.CounterLever.Main.CFrame
pcall(function()
	fireclickdetector(game.Workspace.CounterLever.ClickDetector)
	repeat task.wait() until Time == 0
	for i, v in pairs(workspace.Maze:GetChildren()) do
		if v.Name == "Part" and v:FindFirstChild("A0") and v:FindFirstChild("ClickDetector") then
			fireclickdetector(v.ClickDetector)
		end
	end
end)
    ]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game:GetService("TeleportService"):Teleport(11828384869)
    end
})

Badge1Group:AddButton({
    Text = "Get Riftshot",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
spawn(function()
	while true do
		Dialogue = game.Workspace:FindFirstChild("DialoguePrompts")
		NPC = game.Workspace:FindFirstChild("NPCS")
		Buildings = game.Workspace:FindFirstChild("Buildings")
		task.wait()
	end
end)
wait(0.4)
if Dialogue and Dialogue:FindFirstChild("Sharpshooter Sam") and Dialogue["Sharpshooter Sam"]:FindFirstChildOfClass("ProximityPrompt") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Dialogue["Sharpshooter Sam"].CFrame
	repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Dialogue["Sharpshooter Sam"].Position).Magnitude <= 10
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Bypass Success, bomb will bring you, your job is to shoot the bomb (Goodluck!)",Icon = "rbxassetid://7733658504",Duration = 5})
wait(0.3)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name:find("Sharpshooter Sam's") then
        SharpshooterTarget = v
    end
end
wait(0.3)
while true do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	if SharpshooterTarget then
		for i, v in pairs(SharpshooterTarget:GetChildren()) do
			if v.Name:find("bomb") and v:FindFirstChild("Handle") then
				v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
			end
		end
	end
end
task.wait()
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
    end
})

Badge1Group:AddButton({
    Text = "Get Badge OOG",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
spawn(function()
	while true do
		Dialogue = game.Workspace:FindFirstChild("DialoguePrompts")
		NPC = game.Workspace:FindFirstChild("NPCS")
		Buildings = game.Workspace:FindFirstChild("Buildings")
		task.wait()
	end
end)
wait(0.4)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	Gui = game:GetService("Players").LocalPlayer.PlayerGui
	for i = 1, 2 do
		if Dialogue and Dialogue:FindFirstChild("PabloPinkyPoo") and Dialogue.PabloPinkyPoo:FindFirstChildOfClass("ProximityPrompt") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Dialogue.PabloPinkyPoo.CFrame * CFrame.new(0, 0, -5)
			repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Dialogue.PabloPinkyPoo.Position).Magnitude <= 10
			wait(0.2)
			repeat task.wait()
				if fireproximityprompt then
					fireproximityprompt(Dialogue.PabloPinkyPoo:FindFirstChildOfClass("ProximityPrompt")) 
				end
			until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Dialogues"):FindFirstChild("DialogueFrame") and game:GetService("Players").LocalPlayer.PlayerGui.Dialogues.DialogueFrame.Visible == true
			wait(0.5)
		end
		wait(0.1)
		repeat task.wait() until Gui:FindFirstChild("Dialogues"):FindFirstChild("DialogueFrame") and Gui.Dialogues.DialogueFrame.Visible == false
		wait(0.6)
	end
	wait(0.5)
	if game.Workspace.QuestStuff:FindFirstChild("Key") and game.Workspace.QuestStuff.Key.Transparency == 0 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.QuestStuff.Key.CFrame
		repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.QuestStuff.Key.Position).Magnitude <= 10
		wait(0.3)
		if game.Workspace.QuestStuff.Key:FindFirstChild("ClickDetector") then
			fireclickdetector(game.Workspace.QuestStuff.Key.ClickDetector, 0)
	        fireclickdetector(game.Workspace.QuestStuff.Key.ClickDetector, 1)
        end
        repeat task.wait() until game.Workspace.QuestStuff:FindFirstChild("Key") and game.Workspace.QuestStuff.Key.Transparency ~= 0
        wait(0.3)
	end
	wait(2.6)
	if Buildings and Buildings:FindFirstChild("oog's cage") and Buildings["oog's cage"]:FindFirstChild("Door") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Buildings["oog's cage"].Door.Door.CFrame * CFrame.new(-3,0,0)
		repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Buildings["oog's cage"].Door.Door.Position).Magnitude <= 10
		wait(0.3)
		fireclickdetector(Buildings["oog's cage"].Door.ClickDetector, 0)
        fireclickdetector(Buildings["oog's cage"].Door.ClickDetector, 1)
	end
	wait(0.3)
	if Dialogue and Dialogue:FindFirstChild("PabloPinkyPoo") and Dialogue.PabloPinkyPoo:FindFirstChildOfClass("ProximityPrompt") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Dialogue.PabloPinkyPoo.CFrame * CFrame.new(0, 0, -5)
		repeat task.wait() until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Dialogue.PabloPinkyPoo.Position).Magnitude <= 10
		wait(0.2)
		repeat task.wait()
			if fireproximityprompt then
				fireproximityprompt(Dialogue.PabloPinkyPoo:FindFirstChildOfClass("ProximityPrompt")) 
			end
		until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Dialogues"):FindFirstChild("DialogueFrame") and game:GetService("Players").LocalPlayer.PlayerGui.Dialogues.DialogueFrame.Visible == true
	end
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
    end
})

Badge1Group:AddButton({
    Text = "Get Swordfighter",
    Func = function()
if CheckGlove() == "Retro" then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.CFrame * CFrame.new(0, 0, -7)
end
wait(0.36)
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Position = UDim2.new(0, 0, 0, 0)
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").BackgroundTransparency = 0.77
game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Size = UDim2.new(1, 0, 1, 0)
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("Head") then
if fireproximityprompt then
fireproximityprompt(workspace.Map.Components.NPCs.FinalBoss.FinalBoss.Head:FindFirstChild("ProximityPrompt"))
end
end
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("FinalBossHealthBar") and game:GetService("Players").LocalPlayer.PlayerGui.FinalBossHealthBar:FindFirstChild("FinalBossHealthBar").Visible == true
wait(0.5)
repeat task.wait()
if workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("FinalBoss") and workspace.Map.Components.NPCs.FinalBoss.FinalBoss:FindFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Default") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Default").Parent = game.Players.LocalPlayer.Character
end
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
game:GetService("ReplicatedStorage").Remotes.ToolSwingEvent:FireServer()
end
until game:GetService("Players").LocalPlayer.PlayerGui.SkipButton:FindFirstChild("SkipDialogueButton").Visible == true or game:GetService("Players").LocalPlayer.PlayerGui.FinalBossHealthBar:FindFirstChild("FinalBossHealthBar").Visible == false or workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("BridgeToGlove").Transparency == 0
workspace.Map.Components.NPCs.FinalBoss.FinalBoss.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
repeat task.wait() until workspace.Map.Components.NPCs.FinalBoss:FindFirstChild("BridgeToGlove").Transparency == 0
wait(1)
if workspace.Map.Components:FindFirstChild("GloveIsland") and workspace.Map.Components.GloveIsland:FindFirstChild("ClaimGlove") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Components.GloveIsland.ClaimGlove.CFrame
wait(1)
while true do
wait(0.3)
if fireproximityprompt then
fireproximityprompt(workspace.Map.Components.GloveIsland.ClaimGlove:FindFirstChild("ProximityPrompt"))
end
end
end
end
    ]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace.Arena:FindFirstChild("CannonIsland") and workspace.Arena.CannonIsland:FindFirstChild("Cannon Island [OLD]") then
for i, v in pairs(workspace.Arena.CannonIsland:FindFirstChild("Cannon Island [OLD]"):GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("Towers") and v.Towers:FindFirstChild("RevealHitbox") and v.Towers:FindFirstChild("TeleportSFHitbox") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Towers.RevealHitbox.CFrame * CFrame.new(3, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0))
wait(0.2)
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
until v.Towers:FindFirstChild("Ring of Fire") ~= nil
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Towers:FindFirstChild("Ring of Fire").CFrame
end
end
end
end
else
Notification("You don't have Retro equip", 5)
end
    end
})

Badge1Group:AddButton({
    Text = "Get Reflect",
    Func = function()
if workspace:FindFirstChild("BountyHunterRoom"):FindFirstChild("QuestObjects"):FindFirstChild("ShatteredRealityMirror"):FindFirstChild("Meshes/Mirror1_Plane.007") then
if workspace.BountyHunterRoom.QuestObjects.ShatteredRealityMirror["Meshes/Mirror1_Plane.007"].Transparency <= 0 then
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        wait(3)
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local Stage1 = workspace:FindFirstChild("Stage1")
if workspace:FindFirstChild("Stage1") then
repeat task.wait() 
if Stage1:FindFirstChild("Lobby") and Stage1.Lobby.Portals:FindFirstChild("normal") then
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Stage1.Lobby.Portals.normal.Teleport1, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), Stage1.Lobby.Portals.normal.Teleport1, 1)
end
if Stage1:FindFirstChild("glove") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage1.glove:FindFirstChild("Touch").CFrame
end
until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg")
local GloveEvolg = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg")
if GloveEvolg and GloveEvolg:FindFirstChild("Glove") and GloveEvolg.Glove:FindFirstChild("HitParticles") then
GloveEvolg.Glove:FindFirstChild("HitParticles"):Destroy()
end
repeat task.wait()
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg") then
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Evolg").Parent = game:GetService("Players").LocalPlayer.Character
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Evolg") and game:GetService("Players").LocalPlayer.Character.Evolg:FindFirstChild("Network") then
for i, v in pairs(workspace:GetChildren()) do
if v.Name:find("shadow") and v:FindFirstChild("HumanoidRootPart") then
game:GetService("Players").LocalPlayer.Character:WaitForChild("Evolg"):WaitForChild("Network"):FireServer("Hit",v.HumanoidRootPart)
end
end
end
until Stage1:FindFirstChild("Mirror") and Stage1.Mirror:FindFirstChild("Touch") and Stage1.Mirror.Touch:FindFirstChild("TouchInterest")
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage1.Mirror:FindFirstChild("Touch").CFrame
end
repeat task.wait() until workspace:FindFirstChild("Stage2")
wait(4)
if workspace:FindFirstChild("Stage2") then
local Stage2 = workspace:FindFirstChild("Stage2")
if Stage2:FindFirstChild("Lobby") and Stage2.Lobby.Portals:FindFirstChild("normal") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.Lobby.Portals.normal.Teleport1.CFrame
end
wait(0.5)
repeat task.wait()
if Stage2:FindFirstChild("spinner") and Stage2.spinner:FindFirstChild("Part") and Stage2.spinner.Part.Transparency < 0.5 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.spinner:FindFirstChild("Part").CFrame * CFrame.new(0, 60, 0)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end
until Stage2:FindFirstChild("Mirror") and Stage2.Mirror:FindFirstChild("Touch") and Stage2.Mirror.Touch:FindFirstChild("TouchInterest")
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage2.Mirror:FindFirstChild("Touch").CFrame
wait(4)
end
repeat task.wait() until workspace:FindFirstChild("Stage3")
wait(0.3)
if workspace:FindFirstChild("Stage3") then
wait(5)
local Stage3 = workspace:FindFirstChild("Stage3")
if Stage3:FindFirstChild("Lobby") and Stage3.Lobby.Portals:FindFirstChild("default") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage3.Lobby.Portals.default.Teleport2.CFrame
end
end
repeat task.wait() until workspace:FindFirstChild("BossArena")
if workspace:FindFirstChild("BossAttackDebris") then
workspace.BossAttackDebris:Destroy()
end
local Boss = workspace:FindFirstChild("BossArena")
if Boss:FindFirstChild("Arena") and Boss.Arena:FindFirstChild("startTrigger") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Boss.Arena:FindFirstChild("startTrigger").CFrame
end
repeat task.wait()
if Boss:FindFirstChild("Arena"):FindFirstChild("mirrors") then
	for i, v in pairs(Boss.Arena.mirrors:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Meshes/Mirror1_Plane.008") and v["Meshes/Mirror1_Plane.008"].Transparency < 0.5 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Meshes/Mirror1_Plane.008").CFrame
		end
	end
end
until workspace:FindFirstChild("Rig") and workspace.Rig:FindFirstChild("Humanoid").Health <= 0
end
    ]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.QuestObjects.ShatteredRealityMirror["Meshes/Mirror1_Plane.007"].CFrame
wait(0.4)
fireproximityprompt(workspace.BountyHunterRoom.QuestObjects.ShatteredRealityMirror["Meshes/Mirror1_Plane.007"].ProximityPrompt)
else
Notification("You have complete 4 quest hitman (2 quest easy, 2 quest hard)", _G.TimeNotify)
end
end
    end
})

Badge1Group:AddButton({
    Text = "Get Fight Guide",
    Func = function()
local teleportFunc = queueonteleport or queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "You wait time [ 10 second ].",Icon = "rbxassetid://7733658504",Duration = 1})
wait(10)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3260, -70, 823)
wait(2)
for i,v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "ShackLever" and v:FindFirstChild("ClickDetector") then
if fireclickdetector then
fireclickdetector(v.ClickDetector)
end
                    end
                end
repeat task.wait() until workspace.Map.Components:FindFirstChild("GuideNPC") ~= nil
wait(0.56)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(595, 120, -330)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
while true do
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TrackGloveMissile" or v.Name == "golem" or v.Name == "DungeonGolem" or v.Name == "ReplicaNPC" or v.Name == "GuideNPC" then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Lantern").Parent = game.Players.LocalPlayer.Character
elseif game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") then
game.Players.LocalPlayer.Character:FindFirstChild("Lantern"):Activate()
if game.Players.LocalPlayer.Character:FindFirstChild("Lantern") and game.Players.LocalPlayer.Character.Lantern:FindFirstChild("Network") then
game:GetService("Players").LocalPlayer.Character.Lantern.Network:FireServer("Hit", v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Hitbox") or v:FindFirstChild("Cube.001") or v)
end
end
end
end
end
task.wait()
end
]])
elseif not teleportFunc then
Notification("Bruh, Not only executor you autoexe", _G.TimeNotify)
end
for i, v in pairs(workspace.BountyHunterRoom.Build:GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("Meshes/boxshadow_Cube.005") and v["Meshes/boxshadow_Cube.005"]:FindFirstChild("Hitbox") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["Meshes/boxshadow_Cube.005"].Hitbox.CFrame
end
end
    end
})

local Badge2Group = Tabs.Tab3:AddRightGroupbox("Badge")

Badge2Group:AddButton({
    Text = "Get Glove Kinetic",
    Func = function()
if CheckGlove() == "Stun" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat task.wait()
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = -99})
until game.Players.LocalPlayer.Character:WaitForChild("KineticSlappedBadgeCounter").Value >= 100
wait(1.5)
repeat
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then break end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Stun") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Stun)
end
wait(0.1)
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character.Humanoid.Health ~= 0
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,-20,0)
wait(0.25)
game.ReplicatedStorage.StunR:FireServer(game.Players.LocalPlayer.Character.Stun)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(0.5)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") then
Notification("Counter Stun [ "..game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value.." ]", _G.TimeNotify)
end
wait(12.3)
until game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") and game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value >= 50
else
Notification("You don't have Stun equipped, or you aren't in the arena", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Auto Win Kraken",
    Func = function()
if game.Workspace:FindFirstChild("Abyss") ~= nil then
Notification("When the kraken stops attack, click to hit.", _G.TimeNotify)
repeat task.wait()
if game.Workspace:FindFirstChild("Abyss") and game.Workspace.Abyss:FindFirstChild("Ship") and game.Workspace.Abyss.Ship:FindFirstChild("Ghost_Ship") and game.Workspace.Abyss.Ship.Ghost_Ship:FindFirstChild("Wall") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Abyss.Ship.Ghost_Ship.Wall.CFrame * CFrame.new(0,10,0)
else break
end
for i,v in pairs(game.Workspace:GetChildren()) do
if v.Name == "kraken_hurtbox" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
until game.Workspace:FindFirstChild("Abyss") == nil
else
Notification("You have enter Map Abyss [ don't show all, not work ]", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove Bomb",
    Func = function()
if CheckGlove() == "Warp" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124919840) then
OldTouch = workspace.DEATHBARRIER.CanTouch
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame
task.wait(0.2)
game.ReplicatedStorage.WarpHt:FireServer(Target.Character:WaitForChild("HumanoidRootPart"))
task.wait(0.15)
workspace.DEATHBARRIER.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
wait(0.1)
game:GetService("ReplicatedStorage").WLOC:FireServer()
wait(0.2)
workspace.DEATHBARRIER.CanTouch = OldTouch
else
Notification("You don't have Warp equipped, or you have owner badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove Plank",
    Func = function()
if CheckGlove() == "Fort" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4031317971987872) then
local OldCFrew = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.SafeBoxSpace.CFrame * CFrame.new(0,60,0)
wait(0.3)
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(0.7)
for i, v in pairs(workspace:GetChildren()) do
if v.Name == "Part" and v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 50 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 25, 0)
end
end
else
Notification("You don't have Fort equipped, or you have Owner Badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove Pyscho (Win Obby)",
    Func = function()
if game.Workspace:FindFirstChild("RepressedMemoriesMap") then
OldPlayerCF = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
PsychokiTrigger = workspace:FindFirstChild("RepressedMemoriesMap") and workspace.RepressedMemoriesMap:FindFirstChild("Psychokinesis"):FindFirstChild("Triggers")
Start = PsychokiTrigger and PsychokiTrigger:FindFirstChild("StartPsychoEvent")
Stop = PsychokiTrigger and PsychokiTrigger:FindFirstChild("StopPsychoEvent")

VectorTween({Place = Start.Position, Speed = 80})
VectorTween({Place = Stop.Position, Speed = 40})
VectorTween({Place = OldPlayerCF.Position, Speed = 130})
else
Notification("You have enter limbo [ don't show all, not work ]", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Answer Recall",
    Func = function()
local rm = workspace:FindFirstChild("RepressedMemories")
local npc = rm and rm:FindFirstChild("RepressedMemoriesNPC")
local head = npc and npc:FindFirstChild("Head")
local dialog = head and head:FindFirstChild("Dialog")
local Dialog8Step = {
    [1] = "8 Steps To Get Recall",
    [2] = "Please allow me to START!?!?!?",
    [3] = "STEP 1",
    [4] = "STEP 2",
    [5] = "STEP 3",
    [6] = "STEP 4",
    [7] = "STEP 5",
    [8] = "STEP 6",
    [9] = "STEP 7",
    [10] = "STEP 8, DEEEEEEEEEEEEEEE"
}
if rm and dialog then
    local NumberQuest = 1
    for i, v in pairs(dialog:GetDescendants()) do
        if v:IsA("DialogChoice") then
            if v:FindFirstChild("RightChoice") then
                if NumberQuest ~= 11 then
                    v.UserDialog = Dialog8Step[NumberQuest]
                    NumberQuest = NumberQuest + 1
                end
            end
            if v:FindFirstChild("FailChoice") then
                v:Destroy()
            end
        end
    end
else
Notification("You have enter limbo [ don't show all, not work ]", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove Blasphemy",
    Func = function()
if CheckGlove() == "bus" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061) then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
_G.AntiRagdolledV = "V3"
Toggles["Anti Ragdoll"]:SetValue(true)
repeat
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then break end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil and RandomPlayer.Character:FindFirstChild("entered")
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
task.wait(0.34)
game:GetService("ReplicatedStorage").busmoment:FireServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
wait(0.8)
repeat task.wait()
for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name == "BusModel" then
		v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end
end
until game.Workspace:FindFirstChild("BusModel") == nil
end
wait(5.5)
until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 3335299217032061)
else
Notification("You don't have bus equipped, or you have owner badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Auto Quests Chest All Glove",
    Func = function()
if workspace.Arena.CannonIsland.TreasureSpots:FindFirstChild("_treasureSpot5").Decal.Transparency == 0 then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.TreasureSpots:FindFirstChild("_treasureSpot5").CFrame
game:GetService("ReplicatedStorage").DigEvent:FireServer({["index"] = 2, ["cf"] = CFrame.new()})
until game.Workspace:FindFirstChild("TreasureChestFolder") and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest")
wait(1)
if game.Workspace:FindFirstChild("TreasureChestFolder") and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest") and game.Workspace.TreasureChestFolder.TreasureChest:FindFirstChild("OpenRemote") then
game.Workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
end
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(0.2)
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterBooth._configPart.CFrame * CFrame.new(-5,0,0)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove [Redacted]",
    Func = function()
if CheckUnlockGlove("[REDACTED]").Value == false then
for i, v in pairs(workspace.PocketDimension.Doors:GetChildren()) do
if CheckUnlockGlove("[REDACTED]").Value == false then
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
task.wait(0.3)
end
end
else
Notification("you have owner [REDACTED]", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Glove [Redacted]",
    Func = function()
if CheckUnlockGlove("[REDACTED]").Value == false then
for i, v in pairs(workspace.PocketDimension.Doors:GetChildren()) do
if CheckUnlockGlove("[REDACTED]").Value == false then
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
task.wait(0.3)
end
end
else
Notification("you have owner [REDACTED]", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Voodoo + Fish + Trap Farm",
    Func = function()
if CheckGlove() == "Ghost" and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
EquipGloveRemote("ZZZZZZZ")
if fireclickdetector then
fireclickdetector(workspace.Lobby["ZZZZZZZ"].ClickDetector)
end
wait(0.2)
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
EquipGloveRemote("Brick")
if fireclickdetector then
fireclickdetector(workspace.Lobby["Brick"].ClickDetector)
end
wait(0.2)
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace.Lobby.Teleport1.CFrame)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.35)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
wait(0.2)
repeat task.wait()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Brick") then
	game.Players.LocalPlayer.Backpack:FindFirstChild("Brick").Parent = game.Players.LocalPlayer.Character
end
if game.Players.LocalPlayer.Character:FindFirstChild("Brick") then
	game:GetService("ReplicatedStorage").lbrick:FireServer()
end
until (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0) or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil or CheckUnlockGlove("Trap") == true
else
Notification("You don't have Ghost equipped, or You have go to lobby", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Duck & Orange & Knife Badge",
    Func = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760907) or not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2128220957) or not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124760916) then
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector) 
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
else
Notification("You have Owner 3 badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Free Ice Skate",
    Func = function()
if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2906002612987222) then
game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
else
Notification("You have Owner badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Free Lamp",
    Func = function()
if CheckGlove() == "ZZZZZZZ" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437) then
for i = 1, 5 do
game:GetService("ReplicatedStorage").nightmare:FireServer("LightBroken")
end
else
Notification("You don't have ZZZZZZZ equipped, or Owner badge", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get The Schlop",
    Func = function()
if CheckGlove() == "Cloud" and CheckUnlockGlove("fish") and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,2,35)
wait(0.3)
game:GetService("ReplicatedStorage").CloudAbility:FireServer()
EquipGloveRemote("fish")
if fireclickdetector then
fireclickdetector(workspace.Lobby.fish.ClickDetector)
end
wait(0.2)
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace.Lobby.Teleport1.CFrame)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.3)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                    end
               end
          end
wait(0.7)
for _ = 1, 10 do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
                        v.VehicleSeat.CFrame = CFrame.new(245, 129, -91)
                    end
               end
task.wait()
end
wait(0.4)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.5)
repeat task.wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" and v.Name ~= "Humanoid" then
v.CFrame = game.workspace.Arena.Plate.CFrame
end
end
end
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
else
Notification("You don't have equiped Cloud | Badge Fish | You are in the lobby.", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Undead",
    Func = function()
if CheckGlove() == "Clock" then
	Notification("Ok, you have wait until revival you", _G.TimeNotify)
	if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		repeat task.wait()
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
			firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
		until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	end
	wait(0.4)
	game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(17952.8671875, -125.5584487915039, -3477.072021484375))
	CreateFreezeBV()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,30,0)
	wait(0.2)
	repeat task.wait()
		if workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s clock") and game.Players.LocalPlayer.Character:GetAttribute("CurrentAbility") and game.Players.LocalPlayer.Character:GetAttribute("CurrentAbility") == 7 then
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Clock"):FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	until game.Players.LocalPlayer.Character:FindFirstChild("RevivalCharm") and game.Players.LocalPlayer.Character:FindFirstChild("RevivalCharm"):GetAttribute("clock")
	wait(0.3)
	repeat task.wait() until not game.Players.LocalPlayer.Character:FindFirstChild("RevivalCharm")
	wait(0.1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
else
Notification("You don't have Clock", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Debug",
    Func = function()
if workspace:FindFirstChild("Debug Room") then
    local code = {"_", "_", "_", "7"}
    local Room = workspace:FindFirstChild("Debug Room")
    local Glove = Room:FindFirstChild("UncollectedGloves")
    local Keypad = Room:FindFirstChild("Keypad")
    local ButtonKey = Keypad and Keypad:FindFirstChild("Buttons")
    local Backpiece = Keypad and Keypad:FindFirstChild("Backpiece")

    local DuckT = Room:FindFirstChild("DuckTable")
    local DuckC = DuckT and DuckT:FindFirstChild("DuckTable")
    local DuckValue = DuckC and DuckC:FindFirstChild("Duckies")

    local MazeNumber = Room:FindFirstChild("MazeNumber", true)
    local CodeAdmin = Room:FindFirstChild("AdminNumber", true)

    if DuckValue and MazeNumber and CodeAdmin then
        code[1] = tostring(DuckValue.Value)
        code[2] = tostring(CodeAdmin.Text)
        code[3] = tostring(MazeNumber.Text)
    end
    task.wait(0.1)
    if Glove then
        for _, v in pairs(Glove:GetChildren()) do
            if v:IsA("Model") then
                local click = v:FindFirstChildOfClass("ClickDetector")
                if click then
                    fireclickdetector(click)
                end
                local touch = v:FindFirstChildWhichIsA("TouchTransmitter")
                if touch then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touch.Parent, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, touch.Parent, 1)
                end
            end
        end
    end    
    task.wait(0.3)
    codeglove = table.concat(code)
    Notification("OK, you got code: "..codeglove)
    task.wait(0.3)
    if ButtonKey then
        for i = 1, #codeglove do
			local Code = codeglove:sub(i, i)
			if ButtonKey:FindFirstChild(Code) and ButtonKey[Code]:FindFirstChild("ClickDetector") then
				fireclickdetector(ButtonKey[Code].ClickDetector)
				wait(0.3)
			end
		end
		wait(0.5)
		if ButtonKey:FindFirstChild("Enter") and ButtonKey.Enter:FindFirstChild("ClickDetector") then
			fireclickdetector(ButtonKey.Enter.ClickDetector)
		end
    end
end
    end
})

Badge2Group:AddButton({
    Text = "Get Lag",
    Func = function()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
Notification("If you get glove lag you can reset", 5)
CreateFreezeBV()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,30,0)
else
Notification("You aren't in the arena", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Join Cheese",
    Func = function()
if CheckGlove() == "el gato" and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,2,35)
wait(0.37)
workspace.Cheese.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
if fireclickdetector then
fireclickdetector(workspace.Cheese.ClickDetector)
end
else
Notification("You don't have el gato equipped, or you aren't in the arena", _G.TimeNotify)
end
    end
})

if workspace:FindFirstChild("Arena") and workspace.Arena:FindFirstChild("XmasSnowPeeps") then
Badge2Group:AddButton({
    Text = "Get Join Boss Jerry",
    Func = function()
for i, v in pairs(workspace.Arena.XmasSnowPeeps:GetChildren()) do
	if v:IsA("BasePart") then
		local FireClick = v:FindFirstChild("ClickDetector", true)
		if FireClick then
			if fireclickdetector then
				fireclickdetector(FireClick)
			end
		end
	end
end
repeat task.wait() until workspace:FindFirstChild("XmasIsland") and workspace.XmasIsland:FindFirstChild("Portal") and workspace.XmasIsland.Portal.Transparency == 0
wait(0.3)
game.Players.LocalPlayer.Character:PivotTo(workspace.XmasIsland.Portal.CFrame * CFrame.new(0, 5, 0))
    end
})
end

Badge2Group:AddButton({
    Text = "Get Join Retro",
    Func = function()
if CheckGlove() == "Retro" then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if workspace.Arena:FindFirstChild("CannonIsland") and workspace.Arena.CannonIsland:FindFirstChild("Cannon Island [OLD]") then
for i, v in pairs(workspace.Arena.CannonIsland:FindFirstChild("Cannon Island [OLD]"):GetChildren()) do
if v.Name == "Model" and v:FindFirstChild("Towers") and v.Towers:FindFirstChild("RevealHitbox") and v.Towers:FindFirstChild("TeleportSFHitbox") then
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Towers.RevealHitbox.CFrame * CFrame.new(3, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0))
wait(0.2)
game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
until v.Towers:FindFirstChild("Ring of Fire") ~= nil
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Towers:FindFirstChild("Ring of Fire").CFrame
end
end
end
end
else
Notification("You don't have Retro equip", 5)
end
    end
})

Badge2Group:AddButton({
    Text = "Get Join Limbo",
    Func = function()
if CheckGlove() == "Reverse" then
	if not workspace:FindFirstChild("Limbo Ducky Teleport") then
		game:GetService("ReplicatedStorage"):WaitForChild("ClaimLimboFastTravel"):FireServer()
	end
	if not game.Players.LocalPlayer.Character:FindFirstChild("enteredRepressedMems") then
		repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered") and workspace:FindFirstChild("Limbo Ducky Teleport") 
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Limbo Ducky Teleport"].CFrame
		if fireclickdetector then
			fireclickdetector(workspace:FindFirstChild("Limbo Ducky Teleport").ClickDetector)
		end
	end
else
Notification("You don't have Reverse", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Join Map Slenderman",
    Func = function()
if CheckGlove() == "Balloony" and CheckUnlockGlove("Pocket").Value == true and (workspace:FindFirstChild("TapeRecorder") and workspace.TapeRecorder:FindFirstChild("Front")) then
if workspace:FindFirstChild("TapeRecorder") and workspace.TapeRecorder:FindFirstChild("Front") then
_G.Code = {}
Soon = {}
if workspace.TapeRecorder:FindFirstChild("PowerButton").Color ~= Color3.fromRGB(0, 255, 0) then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.TapeRecorder:FindFirstChild("PowerButton").CFrame * CFrame.new(0, 0, -5)
wait(0.5)
if fireproximityprompt then
fireproximityprompt(workspace.TapeRecorder.Front:FindFirstChild("ProximityPrompt"))
end
end
repeat task.wait()
if workspace.TapeRecorder:FindFirstChild("PowerButton").Color == Color3.fromRGB(0, 255, 0) then
	for i, v in pairs(workspace.TapeRecorder.Front:FindFirstChild("DigitsSFX"):GetChildren()) do
		if v:IsA("Sound") and v.Playing == true and not Soon[v.Name] then
			table.insert(_G.Code, v.Name)
			Soon[v.Name] = true
		end
	end
end
until workspace.TapeRecorder:FindFirstChild("PowerButton").Color == Color3.fromRGB(255, 0, 0)
wait(0.3)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(0.3)
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
end
wait(0.13)
if fireclickdetector then
fireclickdetector(workspace.Lobby["Pocket"].ClickDetector)
end
EquipGloveRemote("Pocket")
wait(0.2)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,0,35))
wait(0.2)
repeat task.wait() until workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Pocket") and workspace[game.Players.LocalPlayer.Name.."'s Pocket"]:FindFirstChild("Hitbox") and workspace[game.Players.LocalPlayer.Name.."'s Pocket"]:FindFirstChild("ProximityPrompt")
wait(0.3)
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.3)
if workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Pocket"):FindFirstChild("Hitbox") then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[game.Players.LocalPlayer.Name.."'s Pocket"].Hitbox.CFrame
	wait(0.4)
	fireproximityprompt(workspace[game.Players.LocalPlayer.Name.."'s Pocket"].ProximityPrompt)
end
wait(5)
if game.Workspace:FindFirstChild("RoomsFolder") then
for i,v in pairs(game.Workspace.RoomsFolder:GetChildren()) do
if v.Name == (game.Players.LocalPlayer.Name.."'s Room") and v:FindFirstChild("PocketKeypad") then
fireclickdetector(v.PocketKeypad.Buttons:FindFirstChild("Reset"):FindFirstChild("ClickDetector"))
wait(0.2)
for _, b in ipairs(_G.Code) do
fireclickdetector(v.PocketKeypad.Buttons:FindFirstChild(b):FindFirstChild("ClickDetector"))
wait(0.46)
end
task.wait(0.15)
fireclickdetector(v.PocketKeypad.Buttons:FindFirstChild("Enter"):FindFirstChild("ClickDetector"))
end
end
end
wait(0.3)
game:GetService("Players").LocalPlayer.Reset:FireServer()
wait(0.3)
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
wait(0.3)
for i, v in pairs(workspace.BountyHunterRoom:FindFirstChild("BountyHunterMysteryRoom"):FindFirstChild("Pages"):GetChildren()) do
if v:IsA("BasePart") and v:FindFirstChild("ClickDetector") then
fireclickdetector(v:FindFirstChild("ClickDetector"))
end
end
wait(0.3)
repeat task.wait() until workspace:FindFirstChild("BountyHunterRoom") and workspace.BountyHunterRoom:FindFirstChild("BountyHunterLever") and workspace.BountyHunterRoom.BountyHunterLever:FindFirstChild("Root")
wait(0.15)
if workspace:FindFirstChild("BountyHunterRoom") and workspace.BountyHunterRoom:FindFirstChild("BountyHunterLever") and workspace.BountyHunterRoom.BountyHunterLever:FindFirstChild("Root") then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterLever.Root.CFrame
wait(0.4)
if fireproximityprompt then
	fireproximityprompt(workspace.BountyHunterRoom.BountyHunterLever.Root:FindFirstChild("ProximityPrompt"))
end
repeat task.wait() until workspace.Lobby:FindFirstChild("Clothesline Model") and workspace.Lobby["Clothesline Model"]:FindFirstChild("Part") and workspace.Lobby["Clothesline Model"].Part:FindFirstChild("jerma").Texture == "rbxassetid://16591849948"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby["Clothesline Model"]:FindFirstChild("Part").CFrame
wait(0.3)
if fireclickdetector then
	fireclickdetector(workspace.Lobby["Clothesline Model"].Part:FindFirstChild("ClickDetector"))
end
end
end
else
Notification("You don't have Balloon or not owner glove Pocket, or you have equip Pocket spawn Tape Recorder", _G.TimeNotify)
end
    end
})

Badge2Group:AddButton({
    Text = "Join JOB!?!?!",
    Func = function()
if fireclickdetector then
fireclickdetector(workspace.Lobby["Extended"].ClickDetector)
end
EquipGloveRemote("Extended")
wait(0.3)
if workspace:FindFirstChild("JobApplication") and workspace.JobApplication:FindFirstChild("paper") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.JobApplication.paper.CFrame
wait(0.3)
fireclickdetector(workspace.JobApplication.paper.ClickDetector)
end
    end
})

Badge2Group:AddButton({
    Text = "Join Map Egger",
    Func = function()
if workspace:FindFirstChild("EasterHuntEggs") == nil then
Notification("You have get Hitman quest", _G.TimeNotify)
repeat task.wait() until workspace:FindFirstChild("EasterHuntEggs")
end
if workspace:FindFirstChild("EasterHuntEggs") then
for i, v in pairs(workspace.EasterHuntEggs:GetChildren()) do
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
wait(0.5)
if workspace:FindFirstChild("EggTeleport") == nil then
repeat task.wait() until workspace:FindFirstChild("EggTeleport")
end
if workspace:FindFirstChild("EggTeleport") and workspace.EggTeleport:FindFirstChild("ClickDetector") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("EggTeleport").CFrame
if fireclickdetector then
fireclickdetector(workspace.EggTeleport.ClickDetector)
end
end
    end
})

Badge2Group:AddButton({
    Text = "Join Map Plunger",
    Func = function()
if workspace:FindFirstChild("BountyHunterRoom") and workspace.BountyHunterRoom:FindFirstChild("PlungerMain") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom:FindFirstChild("PlungerMain").CFrame
if fireclickdetector then
fireclickdetector(workspace.BountyHunterRoom.PlungerMain:FindFirstChildOfClass("ClickDetector"))
end
end
repeat task.wait() until workspace:FindFirstChild("plungers") and workspace.plungers:FindFirstChild("ToiletPlunger").Transparency < 1
wait(0.4)
if workspace:FindFirstChild("plungers") and workspace.plungers:FindFirstChild("ToiletPlunger") and workspace.plungers.ToiletPlunger:FindFirstChildOfClass("ClickDetector") then
if fireclickdetector then
fireclickdetector(workspace.plungers.ToiletPlunger:FindFirstChildOfClass("ClickDetector"))
end
end
    end
})

Badge2Group:AddToggle("Friday the 13th", {
    Text = "Auto Join Friday the 13th",
    Default = false, 
    Callback = function(Value) 
_G.Fridayth = Value
while _G.Fridayth do
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") then
for i, v in pairs(workspace:GetChildren()) do
    if string.find(v.Name, "Labyrinth") and v:FindFirstChild("PaintingModel") and v.PaintingModel:FindFirstChild("HitBox") then
        if v.PaintingModel.HitBox:FindFirstChild("TouchInterest") then
	        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PaintingModel:FindFirstChild("HitBox").CFrame
        end
    end
end
end
task.wait()
end
    end
})

local BobChance = Badge2Group:AddLabel("Glove Replica", true)

if not hookmetamethod then
	local ReplicaCount = 0
	if game.ReplicatedStorage:FindFirstChild("Duplicate") then
		table.insert(_G.ConnectFun, game.ReplicatedStorage:FindFirstChild("Duplicate").OnClientEvent:Connect(function(...)
		    local arge = {...}
			if arge[1] == true then
				ReplicaCount += 1
			end
		end))
	end
end

table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
	local Chance = (1 - (1 - (1 / 7500))^ReplicaCount) * 100
	if BobChance then
		if CheckGlove():lower():find("replica") then
			BobChance:SetText(string.format("Spawn Replica: %d | Rate: 1/7500 | Chance: %.2f%%", ReplicaCount, Chance))
		else
			BobChance:SetText("Replica reset, The reason is because you changed gloves ["..CheckGlove().."]")
			ReplicaCount = 0
		end
	end
end))

Badge2Group:AddDropdown("Farm Bob", {
    Text = "Farm Bob",
    Values = {"Walk", "Teleport"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BobFarmCh = Value
    end
})

Badge2Group:AddToggle("Bob", {
    Text = "Bob Farm",
    Default = false, 
    Callback = function(Value) 
_G.BobFarm = Value
if CheckGlove() == "Replica" then
while _G.BobFarm do
pcall(function()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
		ArenaLobby = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1")
		if ArenaLobby then
			if _G.BobFarmCh == "Walk" then
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
					game.Players.LocalPlayer.Character.Humanoid:MoveTo(ArenaLobby.Position)
				end
			else
				if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, ArenaLobby, 0)
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, ArenaLobby, 1)
				end
			end
		end
	elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") then
		if _G.BobFarmCh == "Walk" then
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
			end
		end
		task.wait(0.17)
		game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
		task.wait(0.12)
		game:GetService("Players").LocalPlayer.Reset:FireServer()
		task.wait(0.2)
		repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	end
end
end)
task.wait()
end
elseif _G.BobFarm == true then
Notification("You don't have Replica equipped", 5)
wait(0.05)
Toggles["Bob"]:SetValue(false)
end
    end
})

Badge2Group:AddToggle("Bus Stab", {
    Text = "Bus Stab",
    Default = false, 
    Callback = function(Value) 
_G.BusStab = Value
while _G.BusStab do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "BusModel" then
			v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
task.wait()
end
    end
})

Badge2Group:AddToggle("Toolbox Farm", {
    Text = "Toolbox Farm",
    Default = false, 
    Callback = function(Value) 
_G.Toolboxfarm = Value
while _G.Toolboxfarm do
if game.Workspace:FindFirstChild("Toolbox") then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Toolbox" then
if v:FindFirstChild("Main") then
v.Main.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-5, -1.63, 0)
end
if fireclickdetector and v:FindFirstChild("ClickDetector") then
fireclickdetector(v.ClickDetector, 0)
fireclickdetector(v.ClickDetector, 1)
                    end
                end
                end
            end
task.wait()
end
    end
})

Badge2Group:AddToggle("Hallow Jack Farm", {
    Text = "Hallow Jack Farm",
    Default = false, 
    Callback = function(Value) 
_G.HallowJackFarm = Value
while _G.HallowJackFarm do
if workspace:FindFirstChild("Gravestone") then
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == "Gravestone" and v:FindFirstChild("ClickDetector") then
			if game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel") and game.Players.LocalPlayer.Character.KillstreakLevel.Value > 9 then
				for _, s in pairs(v:GetChildren()) do
					if s:IsA("BasePart") then
						s.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 1, 0)
					end
				end
				if fireclickdetector then
					fireclickdetector(v.ClickDetector, 0)
					fireclickdetector(v.ClickDetector, 1)
				end
			end
		end
	end
elseif workspace:FindFirstChild("Gravestone") == nil and game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel") and game.Players.LocalPlayer.Character:FindFirstChild("KillstreakLevel").Value > 9 then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0,10,0)
end
task.wait()
end
    end
})

Badge2Group:AddDropdown("OrbFarm", {
    Text = "Orb Farm",
    Values = {"Phase", "Jet", "MATERIALIZE", "Siphon", "Glitch"},
    Default = {"Phase", "Jet"},
    Multi = true
})

Badge2Group:AddToggle("Orb Farm", {
    Text = "Auto Orb Farm",
    Default = false, 
    Callback = function(Value) 
_G.FarmOrbTP = Value
while _G.FarmOrbTP do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
	local ChooseOrbFarm = Options.OrbFarm and Options.OrbFarm.Value or nil
	if ChooseOrbFarm then
		for i,v in pairs(game.Workspace:GetChildren()) do
	        if (ChooseOrbFarm["Jet"] and v.Name == "JetOrb") or (ChooseOrbFarm["Phase"] and v.Name == "PhaseOrb") or (ChooseOrbFarm["MATERIALIZE"] and v.Name == "MATERIALIZEOrb") or (ChooseOrbFarm["Siphon"] and v.Name == "SiphonOrb") or (ChooseOrbFarm["Glitch"] and v.Name:find("Orb") and v:FindFirstChild("Attachment") and v.Attachment:FindFirstChild("OrbGlitchEffect")) then
				local CFOld = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame
				wait(0.37)
				game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFOld
				wait(0.7)
	        end
	    end
	end
end
task.wait()
end
    end
})

Badge2Group:AddToggle("Phase Or Jet Glitch", {
    Text = "Phase & Jet Glitch",
    Default = false, 
    Callback = function(Value) 
_G.Glitchfarm = Value
while _G.Glitchfarm do
if CheckGlove() == "Error" then
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "JetOrb" or v.Name == "PhaseOrb" then
game.ReplicatedStorage.Errorhit:FireServer(v)
                    end
                end
            end
task.wait()
end
    end
})

Badge2Group:AddToggle("Gift Farm", {
    Text = "Gift Farm",
    Default = false, 
    Callback = function(Value) 
_G.Giftfarm = Value
while _G.Giftfarm do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Gift" then
			v.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        end
    end
end
task.wait()
end
    end
})

Badge2Group:AddToggle("AutoFram Brick", {
    Text = "AutoFram Brick",
    Default = false, 
    Callback = function(Value) 
_G.Brickfarm = Value
if CheckGlove() == "Brick" then
while _G.Brickfarm do
if game.Players.LocalPlayer.Character:FindFirstChild("Brick") then
	game:GetService("ReplicatedStorage").lbrick:FireServer()
end
task.wait()
end
elseif Brickfarm == true then
Notification("You don't have Brick equipped", _G.TimeNotify)
wait(0.05)
Toggles["AutoFram Brick"]:SetValue(false)
end
    end
})

Badge2Group:AddToggle("Get Tycoon", {
    Text = "Get Tycoon",
    Default = false, 
    Callback = function(Value) 
_G.AutoTpPlate = Value
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
while _G.AutoTpPlate do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and #game.Players:GetPlayers() >= 7 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.Plate.CFrame
end
task.wait()
end
elseif _G.AutoTpPlate == true then
Notification("You need enter erane, or 7 people the server", _G.TimeNotify)
wait(0.05)
Toggles["Get Tycoon"]:SetValue(false)
end
    end
})

local MasteryTabGroup = Tabs.Tab3:AddRightGroupbox("Mastery", SolarIcon.Mastery)
TabBoxMastery = MasteryTabGroup:AddTabbox({ Name = "Mastery Tabs" })
local Badge3Group = TabBoxMastery:AddTab("Farm", SolarIcon.Mastery)

Badge3Group:AddDropdown("Farm Mastery", {
    Text = "Farm Mastery",
    Values = {"Replica", "Baller", "Null"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.FarmMastery = Value
    end
})

function MasteryPlayers(glove, ghost)
	local player = game.Players.LocalPlayer
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	
	local function enterporter(tp)
		local char = player.Character
		if not char then return end
		if not char:FindFirstChild("entered") then
			local portal = workspace.Lobby[tp].TouchInterest.Parent
			repeat task.wait()
				if firetouchinterest then
					firetouchinterest(char.Head,portal, 0)
					firetouchinterest(char.Head,portal, 1)
				else
					char.HumanoidRootPart.CFrame = portal.CFrame
				end
			until char:FindFirstChild("entered")
		end
	end

	player.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	wait(0.5)
	if ghost == true then
		if char:FindFirstChild("entered") == nil and game.Players.LocalPlayer:FindFirstChild("leaderstats"):FindFirstChild("Slaps").Value >= 666 then
			equipglove("Ghost")
			repeat task.wait() until CheckGlove():lower() == "ghost"
			game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
			equipglove(glove)
			task.wait(1)
			for i,v in pairs(char:GetChildren()) do
				if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
					v.Transparency = 0
				end
			end
		end
	end
	enterporter("Teleport1")
	wait(0.35)
	player.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	wait(0.3)
	if char:FindFirstChild("entered") then
		local players = {}
		for i, v in pairs(game.Players:GetChildren()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
				table.insert(players, v)
			end
		end
		if #players ~= 0 then
			return players[math.random(#players)]
		end
	end
	return nil
end

function SpawnFarmMastery()
	local player = game.Players.LocalPlayer
	local char = player.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	local oldglove = CheckGlove()
	local gloveEquip
	if _G.FarmMastery then
		if _G.FarmMastery:lower() == "baller" then
			gloveEquip = "Baller"
		elseif _G.FarmMastery:lower() == "null" then
			gloveEquip = "Null"
		else
			gloveEquip = "Replica"
		end
	else
		gloveEquip = "Replica"
	end

	local function abilityspawn()
		local g = CheckGlove():lower()
		if g == "baller" then
			game.ReplicatedStorage.GeneralAbility:FireServer()
		elseif g == "null" then
			game.ReplicatedStorage.NullAbility:FireServer()
		else
			game.ReplicatedStorage.Duplicate:FireServer(true)
		end
	end
	
	local function enterporter(tp)
		local char = player.Character
		if not char then return end
		if not char:FindFirstChild("entered") then
			local portal = workspace.Lobby[tp].TouchInterest.Parent
			repeat task.wait()
				if firetouchinterest then
					firetouchinterest(char.Head,portal, 0)
					firetouchinterest(char.Head,portal, 1)
				else
					char.HumanoidRootPart.CFrame = portal.CFrame
				end
			until char:FindFirstChild("entered")
		end
	end
	equipglove(gloveEquip)
	task.wait(0.3)
	if gloveEquip:lower() ~= "null" then
		enterporter("Teleport2")
	end
	player.Character.HumanoidRootPart.CFrame = workspace.SafeBox.CFrame * CFrame.new(0,5,0)
	if gloveEquip:lower() == "null" then
		player.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.Build.Union.CFrame * CFrame.new(0,0,5)
	end
	task.wait(0.6)
	if gloveEquip:lower() ~= "null" then
		abilityspawn()
	else
		repeat task.wait()
			abilityspawn()
		until gloveEquip:lower() ~= "null" or (workspace:FindFirstChild("Imp") and workspace.Imp:FindFirstChild("Body"))
	end
	if gloveEquip:lower() ~= "null" then
		player.Reset:FireServer()
		repeat task.wait() until player.Character and player.Character:FindFirstChild("HumanoidRootPart") and not player.Character:FindFirstChild("entered")
	end
	equipglove(oldglove)
	task.wait(0.3)
	enterporter("Teleport1")
	player.Character.HumanoidRootPart.CFrame = workspace.SafeBox.CFrame * CFrame.new(0,5,0)
end

Badge3Group = TabBoxMastery:AddTab("Spring-Defense", SolarIcon.Local)

Badge3Group:AddDropdown("Spring Mastery", {
    Text = "Spring Mastery",
    Values = {"Jump Over Player", "Evade Player", "Jump Land 2 Sec Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.SpringMastery = Value
    end
})

Badge3Group:AddToggle("Auto Spring Mastery", {
    Text = "Auto Spring Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoSpringMastery = Value
if CheckGlove() == "Spring" then
while _G.AutoSpringMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), false)
if RandomPlayer then
	CreateFreezeBV()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = true
		end
	end
	if _G.SpringMastery == "Jump Over Player" then
		game:GetService("ReplicatedStorage"):WaitForChild("SpringJump"):FireServer()
		wait(0.56)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -6, 5))
		repeat task.wait() until _G.AutoSpringMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.HumanoidRootPart)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(2.7)
	elseif _G.SpringMastery == "Evade Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -6, 5))
		repeat task.wait() until _G.AutoSpringMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.HumanoidRootPart)
			task.wait()
		end
		game:GetService("ReplicatedStorage"):WaitForChild("SpringJump"):FireServer()
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(2.7)
	elseif _G.SpringMastery == "Jump Land 2 Sec Player" then
		game:GetService("ReplicatedStorage"):WaitForChild("SpringJump"):FireServer()
		task.wait(1.4)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -6, 5))
		repeat task.wait() until _G.AutoSpringMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.HumanoidRootPart)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(4.6)
	end
end
task.wait()
end
elseif _G.AutoSpringMastery == true then
Notification("You don't have Spring equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Spring Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Acrobat Mastery", {
    Text = "Acrobat Mastery",
    Values = {"Roll Slap Player", "Slap Roll Player", "Combo Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AcrobatMastery = Value
    end
})

Badge3Group:AddToggle("Auto Acrobat Mastery", {
    Text = "Auto Acrobat Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoAcrobatMastery = Value
if CheckGlove() == "Acrobat" then
while _G.AutoAcrobatMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	if _G.AcrobatMastery == "Roll Slap Player" then
		game:GetService("ReplicatedStorage").Roll:FireServer()
		wait(0.8)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoAcrobatMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(2.7)
	elseif _G.AcrobatMastery == "Slap Roll Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoAcrobatMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			game:GetService("ReplicatedStorage").Roll:FireServer()
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(2.7)
	elseif _G.AcrobatMastery == "Combo Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoAcrobatMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		game:GetService("ReplicatedStorage").Roll:FireServer()
		repeat task.wait() until _G.AutoAcrobatMastery == false or RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
		wait(0.15)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoAcrobatMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(4.4)
	end
end
task.wait()
end
elseif _G.AutoAcrobatMastery == true then
Notification("You don't have Acrobat equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Acrobat Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Phantom Mastery", {
    Text = "Phantom Mastery",
    Values = {"Jumpscare Player", "Combo Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PhantomMastery = Value
    end
})

Badge3Group:AddToggle("Auto Phantom Mastery", {
    Text = "Auto Phantom Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoPhantomMastery = Value
if CheckGlove() == "Phantom" then
while _G.AutoPhantomMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	PhantomTool = (game.Players.LocalPlayer.Character:FindFirstChild(CheckGlove()) or game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove())) or nil
	if _G.PlankMastery == "Jumpscare Player" then
		repeat task.wait()
			if PhantomTool then
				game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(PhantomTool) 
			end
		until _G.AutoPhantomMastery == false or game.Players.LocalPlayer.Character:GetAttribute("phantom")
		wait(0.4)
		repeat task.wait() until _G.AutoPhantomMastery == false or not game.Players.LocalPlayer.Character:GetAttribute("phantom")
		wait(0.3)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoPhantomMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 5 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(0.65)
	elseif _G.PlankMastery == "Combo Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoPhantomMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(0.35)
		repeat task.wait()
			if PhantomTool then
				game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(PhantomTool) 
			end
		until _G.AutoPhantomMastery == false or game.Players.LocalPlayer.Character:GetAttribute("phantom")
		wait(0.4)
		repeat task.wait() until _G.AutoPhantomMastery == false or not game.Players.LocalPlayer.Character:GetAttribute("phantom")
		task.wait(0.1)
		local RandomPlayer = players[math.random(#players)]
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoPhantomMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(4.4)
	end
end
task.wait()
end
elseif _G.AutoPhantomMastery == true then
Notification("You don't have Phantom equipped, or you have 19k+ slap", _G.TimeNotify)
wait(0.05)
Toggles["Auto Phantom Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Plank Mastery", {
    Text = "Plank Mastery",
    Values = {"Ambush Player", "Plank Hit Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PlankMastery = Value
    end
})

Badge3Group:AddToggle("Auto Plank Mastery", {
    Text = "Auto Plank Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoPlankMastery = Value
if CheckGlove() == "Plank" then
while _G.AutoPlankMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	if _G.PlankMastery == "Ambush Player" then
		if not workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank") or workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank"):GetAttribute("collect") then
			game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(0, 0, 0), Vector3.new(math.huge, 0, 0))
			wait(1.7)
		end
		if workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank") and not workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank"):GetAttribute("collect") then
			CreateFreezeBV({Remove = true})
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank").CFrame * CFrame.new(0, 0, 3) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)))
			wait(1.7)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank").CFrame * CFrame.new(0, 7, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)))
		end
		wait(2.5)
		CreateFreezeBV()
		wait(0.25)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoPlankMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 5 do
			slapglove(RandomPlayer.Character.Head)
			task.wait()
		end
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		task.wait(4.5)
	elseif _G.PlankMastery == "Plank Hit Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 6))
		repeat task.wait() until _G.AutoPlankMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(0, 0, 0), Vector3.new(math.huge, 0, 0))
		wait(0.3)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(3.7)
	end
end
task.wait()
end
elseif _G.AutoPlankMastery == true then
Notification("You don't have Plank equipped, or you have 19k+ slap", _G.TimeNotify)
wait(0.05)
Toggles["Auto Plank Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Moon Mastery", {
    Text = "Moon Mastery",
    Values = {"Unequip + Ragdoll Time", "Slap Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.MoonMastery = Value
    end
})

Badge3Group:AddToggle("Auto Moon Mastery", {
    Text = "Auto Moon Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoMoonMastery = Value
if not _G.AutoMoonMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Moon" then
while _G.AutoMoonMastery do
if _G.MoonMastery == "Slap Player" then
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
	repeat task.wait() until _G.AutoMoonMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
	wait(0.3)
	for i = 1, 3 do
		slapglove(RandomPlayer.Character:FindFirstChild("Head"))
		wait(0.2)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	task.wait(4.5)
end
elseif _G.MoonMastery == "Unequip + Ragdoll Time" then
	if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		repeat task.wait()
		firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
		firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
		until game.Players.LocalPlayer.Character:FindFirstChild("entered")
		wait(0.3)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	CreateFreezeBV()
	game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = -99})
	if game.Players.LocalPlayer.Character:FindFirstChild("Moon") then
		game.Players.LocalPlayer.Character:FindFirstChild("Moon").Parent = game.Players.LocalPlayer.Backpack
	end
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Moon") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("Moon").Parent = game.Players.LocalPlayer.Character
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Moon equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Moon Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Eggler Mastery", {
    Text = "Eggler Mastery",
    Values = {"Unegg Slap Player", "Deny Slap Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.EgglerMastery = Value
    end
})

Badge3Group:AddToggle("Auto Eggler Mastery", {
    Text = "Auto Eggler Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoEgglerMastery = Value
if not _G.AutoEgglerMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Eggler" then
while _G.AutoEgglerMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	if _G.EgglerMastery == "Deny Slap Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoEgglerMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(random.Character:FindFirstChild("Head"))
			task.wait(0.2)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		repeat task.wait()
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
		until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("isEgg")
		repeat task.wait()
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
		until game.Players.LocalPlayer.Character and not game.Players.LocalPlayer.Character:GetAttribute("isEgg")
	elseif _G.EgglerMastery == "Unegg Slap Player" then
		repeat task.wait()
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
		until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:GetAttribute("isEgg")
		repeat task.wait()
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
		until game.Players.LocalPlayer.Character and not game.Players.LocalPlayer.Character:GetAttribute("isEgg")
		wait(0.3)
		for i = 1, 3 do
			slapglove(random.Character:FindFirstChild("Head"))
			task.wait(0.2)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	end
	task.wait(4.5)
end
task.wait()
end
elseif Value == true then
Notification("You don't have Eggler equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Eggler Mastery"]:SetValue(false)
end
    end
})

Badge3Group = TabBoxMastery:AddTab("Thanos-Tycoon", SolarIcon.Combat)

Badge3Group:AddDropdown("Thanos Mastery", {
    Text = "Thanos Mastery",
    Values = {"Ambush Player", "Combo Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ThanosMastery = Value
    end
})

Badge3Group:AddToggle("Auto Thanos Mastery", {
    Text = "Auto Thanos Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoThanosMastery = Value
if not _G.AutoThanosMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Thanos" then
while _G.AutoThanosMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	CreateFreezeBV()
	if _G.ThanosMastery == "Ambush Player" then
		game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(2)
		task.wait(1.9)
		for i = 1, 3 do
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
			repeat task.wait() until _G.AutoThanosMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
			wait(0.3)
			slapglove(RandomPlayer.Character:FindFirstChild("Head"))
			task.wait(0.8)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	elseif _G.ThanosMastery == "Combo Player" then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoThanosMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		wait(0.3)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character:FindFirstChild("Head"))
			task.wait(0.2)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(2)
		task.wait(1.9)
		for i = 1, 3 do
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
			repeat task.wait() until _G.AutoThanosMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
			wait(0.3)
			slapglove(RandomPlayer.Character:FindFirstChild("Head"))
			task.wait(0.9)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	end
	task.wait(5.8)
end
task.wait()
end
elseif Value == true then
Notification("You don't have Thanos equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Thanos Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Chain Mastery", {
    Text = "Chain Mastery",
    Values = {"Arc lightning", "Lightning 3 player", "Lightning 6 player (7 player)", "Slap (No player group)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ChainMastery = Value
    end
})

Badge3Group:AddToggle("Auto Chain Mastery", {
    Text = "Auto Chain Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoChainMastery = Value
if not _G.AutoChainMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Chain" then
while _G.AutoChainMastery do
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if _G.ChainMastery:find("lightning") or _G.ChainMastery:find("Lightning") then
	if _G.ChainMastery == "Arc lightning" then
		numberPlayers = 2 
	elseif _G.ChainMastery == "Lightning 3 player" then
		numberPlayers = 3
	elseif _G.ChainMastery == "Lightning 6 player (7 player)" then
		numberPlayers = 7
	end
	local GroupPlayer = findGroup(20, (numberPlayers or 2))
	if GroupPlayer then
		local random = GroupPlayer[math.random(1, #GroupPlayer)]
		if random.Character and random.Character:FindFirstChild("HumanoidRootPart") and random.Character:FindFirstChild("Head") and random.Character:FindFirstChild("Ragdolled") and not random.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and random.Character.Ragdolled.Value == false and random.Character.isInArena.Value == true and notSlap(random.Character, BlackList) then
			CreateFreezeBV()
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(random.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
			repeat task.wait() until _G.AutoChainMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - random.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
			wait(0.26)
			for i = 1, 3 do
				slapglove(random.Character:FindFirstChild("Head"))
				task.wait(0.2)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
			wait(0.4)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			wait(0.2)
		end
	end
elseif _G.ChainMastery:find("Slap") then
	if RandomPlayer then
		CreateFreezeBV()
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoChainMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		task.wait(0.25)
		for i = 1, 3 do
			slapglove(RandomPlayer.Character:FindFirstChild("Head"))
			wait(0.2)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(0.4)
		game:GetService("Players").LocalPlayer.Reset:FireServer()
		wait(0.3)
		repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		wait(0.2)
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Chain equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Chain Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Obby Mastery", {
    Text = "Obby Mastery",
    Values = {"Spam Obby", "Slap Entity"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ObbyMastery = Value
    end
})

Badge3Group:AddToggle("Auto Obby Mastery", {
    Text = "Auto Obby Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoObbyMastery = Value
if CheckGlove() == "Obby" then
while _G.AutoObbyMastery do
if _G.ObbyMastery:match("Entity") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoObbyMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoObbyMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoObbyMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
elseif _G.ObbyMastery == "Spam Obby" then
	game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.75, -6.5), 1)
	task.wait(4.3)
end
task.wait()
end
elseif Value == true then
Notification("You don't have Obby equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Obby Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Bonk Mastery", {
    Text = "BONK Mastery",
    Values = {"BONK Player", "BONK + Slap"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BonkMastery = Value
    end
})

Badge3Group:AddToggle("Auto Bonk Mastery", {
    Text = "Auto BONK Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoBonkMastery = Value
if not _G.AutoBonkMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "BONK" then
while _G.AutoBonkMastery do
if _G.BonkMastery:match("BONK") then
	local RandomPlayer = MasteryPlayers(CheckGlove(), true)
	if RandomPlayer then
		CreateFreezeBV()
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
		repeat task.wait() until _G.AutoBonkMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		task.wait(0.25)
		game:GetService("ReplicatedStorage"):WaitForChild("BONK"):FireServer()
		if _G.BonkMastery == "BONK + Slap" then
			wait(0.2)
			for i = 1, 3 do
				slapglove(RandomPlayer.Character:FindFirstChild("Head"))
				wait(0.2)
			end
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		wait(0.4)
		game:GetService("Players").LocalPlayer.Reset:FireServer()
		wait(0.3)
		repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have BONK equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Bonk Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Voodoo Mastery", {
    Text = "Voodoo Mastery",
    Values = {"Farm Voodoo", "Voodoo Slap 20 Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.VoodooMastery = Value
    end
})

Badge3Group:AddToggle("Auto Voodoo Mastery", {
    Text = "Auto Voodoo Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoVoodooMastery = Value
if not _G.AutoVoodooMastery then
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = true
		end
	end
end
if CheckGlove() == "Voodoo" then
while _G.AutoVoodooMastery do
if _G.VoodooMastery:match("Voodoo") then
	local RandomPlayer = MasteryPlayers(CheckGlove(), true)
	if RandomPlayer then
		CreateFreezeBV()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -6, 5))
		repeat task.wait() until _G.AutoVoodooMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		task.wait(0.25)
		slapglove(RandomPlayer.Character:FindFirstChild("Head"))
		wait(0.2)
		repeat task.wait() until RandomPlayer.Character:FindFirstChild("DOLLPART")
		wait(0.1)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("DOLLPART"))
		wait(0.2)
		slapglove(RandomPlayer.Character:FindFirstChild("DOLLPART"))
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		if _G.VoodooMastery == "Farm Voodoo" then
			wait(0.4)
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.3)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		end
		if _G.VoodooMastery == "Farm Voodoo" then task.wait(7) end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Voodoo equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Voodoo Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Car Mastery", {
    Text = "Car Mastery",
    Values = {"Farm Exp (Clone)", "Farm Exp (Player)", "Upgrade All"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.CarMastery = Value
    end
})

Badge3Group:AddToggle("Auto Car Mastery", {
    Text = "Auto Car Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoCarMastery = Value
if CheckGlove() == "Car Keys" then
while _G.AutoCarMastery do
if _G.CarMastery == "Farm Exp (Clone)" then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") then
						v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.CarKeysCar.Front:FindFirstChild("BumperHitbox").CFrame * CFrame.new(0, 10, 0)
						game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("VehicleSeat").CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,55,0) * CFrame.Angles(math.rad(-90), 0, 0)
					end
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoCarMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoCarMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
elseif _G.CarMastery == "Farm Exp (Player)" then
if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") == nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.3)
repeat task.wait() until _G.AutoCarMastery == false or game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") and game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("VehicleSeat")
wait(3)
else
if game.Players.LocalPlayer.Character:FindFirstChild("CarKeysCar") then
game.Players.LocalPlayer.Character.CarKeysCar.Front:FindFirstChild("BumperHitbox").Size = Vector3.new(25, 25, 25)
game.Players.LocalPlayer.Character.CarKeysCar.Front:FindFirstChild("BumperHitbox").CanCollide = false
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.CarKeysCar.Front:FindFirstChild("BumperHitbox").CFrame * CFrame.new(0, 10, 0)
game.Players.LocalPlayer.Character.CarKeysCar:FindFirstChild("VehicleSeat").CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,55,0) * CFrame.Angles(math.rad(-90), 0, 0)
end
end
end
end
end
end
elseif _G.CarMastery == "Upgrade All" then
for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "CarKeysGUI" and v:FindFirstChild("CarKeysAttributes") then
for j, b in pairs(v.CarKeysAttributes:GetChildren()) do
if b.ClassName == "ImageLabel" then
game:GetService("ReplicatedStorage").CarKeysUpgrade:FireServer(b.Name)
wait(0.15)
end
end
end
end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Car Keys equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Car Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Defense Mastery", {
    Text = "Defense Mastery",
    Values = {"Slap 20 Player", "Slap Player From Cude (Walk)", "Slap Player From Cude (TP)", "Cude Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.DefenseMastery = Value
    end
})

Badge3Group:AddToggle("Auto Defense Mastery", {
    Text = "Auto Defense Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoDefenseMastery = Value
if CheckGlove() == "Defense" then
while _G.AutoDefenseMastery do
if _G.DefenseMastery == "Slap 20 Player" then
local Target, Huge = nil, math.huge
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < Huge then
Target = v.Character
end
end
end
end
end
if Target then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.HumanoidRootPart.CFrame)
task.wait(0.3)
slapglove(Target.HumanoidRootPart)
wait(0.25)
end
elseif _G.DefenseMastery:match("Slap Player From Cude") then
local Target = nil
if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier") then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
if (v.Character.HumanoidRootPart.Position - game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier").Position).Magnitude < 20 then
Target = v.Character
end
end
end
end
end
end
if Target then
if _G.DefenseMastery == "Slap Player From Cude (TP)" then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.HumanoidRootPart.CFrame)
wait(0.3)
slapglove(Target.HumanoidRootPart)
wait(0.3)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier").CFrame)
elseif _G.DefenseMastery == "Slap Player From Cude (Walk)" then
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Glove") then
if (v:FindFirstChild("Glove").Position - Target.HumanoidRootPart.Position).Magnitude <= 5 then
game:GetService("VirtualUser"):ClickButton1(Vector2.new(200, 200))
else
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Target.HumanoidRootPart.Position)
end
end
end
end
end
else
if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier") then
if _G.DefenseMastery == "Slap Player From Cude (TP)" then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier").CFrame)
elseif _G.DefenseMastery == "Slap Player From Cude (Walk)" then
game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."ÅBarrier").Position)
end
end
end
elseif _G.DefenseMastery == "Cude Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
repeat task.wait() until _G.AutoDefenseMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 6
wait(0.22)
game:GetService("ReplicatedStorage").Barrier:FireServer(1)
wait(0.05)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
task.wait(3.5)
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
elseif Value == true then
Notification("You don't have Defense equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Defense Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Tycoon Mastery", {
    Text = "Tycoon Mastery",
    Values = {"15k Point Die", "Defense Tycoon (Walk)", "Defense Tycoon (TP)", "Kill Player (Tycoon God)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.TycoonMastery = Value
    end
})

Badge3Group:AddToggle("Auto Tycoon Mastery", {
    Text = "Auto Tycoon Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoTycoonMastery = Value
if CheckGlove() == "Tycoon" then
while _G.AutoTycoonMastery do
if _G.TycoonMastery == "15k Point Die" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") < 15000 then
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
GuiTrackUpdate(true, {
	Text = "Tycoon Your Point\n"..game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount").." / 15000",
	Size = game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount") / 15000
})
elseif game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) == nil then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(17894, -26.257728576660156, -3579.11279296875, 0.9996822476387024, -1.1041408759515647e-10, 0.02520809881389141, 2.8899729831444176e-10, 1, -7.080715569429685e-09, -0.02520809881389141, 7.085750652890965e-09, 0.9996822476387024))
spawn(function()
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
until (game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 15000) or (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0)
end)
wait(1)
end
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 15000 then
GuiTrackUpdate(false)
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
end
end
elseif _G.TycoonMastery:match("Defense Tycoon") then
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) then
local Target = nil
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
if (v.Character.HumanoidRootPart.Position - game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):FindFirstChild("End").Position).Magnitude < 30 then
Target = v.Character
end
if _G.TycoonMastery == "Defense Tycoon (Walk)" then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):FindFirstChild("End").Position).Magnitude > 45 then
local DstancePlayer = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if DstancePlayer < 75 then
Target = v.Character
end
end
end
end
end
end
end
if Target then
if _G.TycoonMastery == "Defense Tycoon (Walk)" then
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") and v:FindFirstChild("Glove") then
if (v:FindFirstChild("Glove").Position - Target.HumanoidRootPart.Position).Magnitude <= 5 then
game:GetService("VirtualUser"):ClickButton1(Vector2.new(200, 200))
else
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Target.HumanoidRootPart.Position)
end
end
end
end
elseif _G.TycoonMastery == "Defense Tycoon (TP)" then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.HumanoidRootPart.CFrame)
wait(0.3)
for i = 1, 1000 do
slapglove(Target.HumanoidRootPart)
end
end
else
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):FindFirstChild("End") then
if _G.TycoonMastery == "Defense Tycoon (Walk)" then
game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):FindFirstChild("End").Position)
elseif _G.TycoonMastery == "Defense Tycoon (TP)" then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):FindFirstChild("End").CFrame)
end
end
end
end
elseif _G.TycoonMastery == "Kill Player (Tycoon God)" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") < 5000 then
for _,v in pairs(game.Workspace:GetChildren()) do
if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
GuiTrackUpdate(true, {
	Text = "Tycoon Your Point\n"..game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount").." / 5000",
	Size = game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount") / 5000
})
elseif game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) == nil then
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(17894, -26.257728576660156, -3579.11279296875, 0.9996822476387024, -1.1041408759515647e-10, 0.02520809881389141, 2.8899729831444176e-10, 1, -7.080715569429685e-09, -0.02520809881389141, 7.085750652890965e-09, 0.9996822476387024))
spawn(function()
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
until (game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 5000) or (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0)
end)
wait(1)
end
if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 5000 then
GuiTrackUpdate(false)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.Character:FindFirstChild("HumanoidRootPart").CFrame)
repeat task.wait() until _G.AutoTycoonMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 6
wait(0.35)
slapglove(v.Character:FindFirstChild("HumanoidRootPart"))
wait(0.05)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
task.wait(7)
end
end
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
GuiTrackUpdate(false)
elseif Value == true then
Notification("You don't have Tycoon equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Tycoon Mastery"]:SetValue(false)
end
    end
})

Badge3Group = TabBoxMastery:AddTab("Phase-Wormhole", SolarIcon.Misc)

Badge3Group:AddDropdown("Phase Mastery", {
    Text = "Phase Mastery",
    Values = {"200 Second Island", "Slap + Ability", "Ability + Slap (2 Sec)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PhaceMastery = Value
    end
})

Badge3Group:AddToggle("Auto Phase Mastery", {
    Text = "Auto Phase Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoPhaseMastery = Value
if CheckGlove() == "Phase" then
while _G.AutoPhaseMastery do
if _G.PhaceMastery == "200 Second Island" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if not _G.PlaceTp then
_G.PlaceTp = {
	["Island 1"] = workspace.Arena.island4:FindFirstChild("moyai").CFrame * CFrame.new(0, 0, -30),
	["Island 2"] = game.workspace:FindFirstChild("Origo").CFrame * CFrame.new(0, -5, 0),
	["Island 3"] = workspace.Arena["Sakura Tree"]["petal pile"].CFrame * CFrame.new(0, 5, 0),
	["Island 4"] = workspace.Arena.island2["Sakura Tree"]["petal pile"].CFrame * CFrame.new(0, 5, 0),
	["Island 5"] = workspace.Arena.island3["Sakura Tree"]["petal pile"].CFrame * CFrame.new(0, 5, 0),
	["Island 6"] = workspace.Arena.island5:FindFirstChild("Union").CFrame * CFrame.new(0, 3.25, 0),
	["Island 7"] = workspace.Arena.CannonIsland.Cannon:FindFirstChild("Base").CFrame * CFrame.new(0, 0, 35),
	["Island 8"] = workspace.Arena.Fort:FindFirstChild("Floor").CFrame * CFrame.new(0, 5, 0)
}
end
for i, v in pairs(_G.PlaceTp) do
if _G.AutoPhaseMastery == true then
game:GetService("ReplicatedStorage").PhaseA:FireServer()
wait(0.3)
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v)
end
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BlackheartREAL") == nil
task.wait(1)
end
end
end
elseif _G.PhaceMastery:match("Ability") then
local RandomPlayer = MasteryPlayers(CheckGlove(), true)
if RandomPlayer then
	if _G.AutoPhaseMastery == true then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character.HumanoidRootPart.CFrame)
		repeat task.wait() until _G.AutoPhaseMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character.HumanoidRootPart.Position).Magnitude < 6
		wait(0.35)
		if _G.PhaceMastery == "Slap + Ability" then
			slapglove(RandomPlayer.Character.HumanoidRootPart)
			game:GetService("ReplicatedStorage").PhaseA:FireServer()
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
			wait(0.2)
			repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BlackheartREAL") == nil
		elseif _G.PhaceMastery == "Ability + Slap (2 Sec)" then
			game:GetService("ReplicatedStorage").PhaseA:FireServer()
			task.wait(0.2)
			repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BlackheartREAL") == nil
			task.wait(0.1)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.Character:FindFirstChild("HumanoidRootPart").CFrame)
			repeat task.wait() until _G.AutoPhaseMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character.HumanoidRootPart.Position).Magnitude < 6
			task.wait(0.25)
			slapglove(RandomPlayer.Character.HumanoidRootPart)
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
		end
		task.wait(3)
	end
end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Phase equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Phase Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Shard Mastery", {
    Text = "Shard Mastery",
    Values = {"Aimbot Overkill", "Get Slap", "Aimbot Character"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ShardMastery = Value
    end
})

Badge3Group:AddToggle("Auto Shard Mastery", {
    Text = "Auto Shard Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoShardMastery = Value
if CheckGlove() == "Shard" then
while _G.AutoShardMastery do
if _G.ShardMastery == "Aimbot Overkill" then
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.leaderstats.Glove.Value == "OVERKILL" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled").Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(v.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, v.Character.HumanoidRootPart.Position.Z))
end
end
end
end
end
elseif _G.ShardMastery == "Get Slap" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.6)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoShardMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoShardMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoShardMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
elseif _G.ShardMastery == "Aimbot Character" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
local Distance, TargetCharacter = math.huge, nil
for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("stevebody") == nil and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character.Ragdolled.Value == false and v.Character:FindFirstChild("Mirage") == nil then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil then
local DistancePlayer = (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - v.Character.HumanoidRootPart.Position).Magnitude
if DistancePlayer < Distance then
Distance, TargetCharacter = DistancePlayer, v
end
end
end
end
end
if TargetCharacter then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled").Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(TargetCharacter.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, TargetCharacter.Character.HumanoidRootPart.Position.Z))
end
end
end
end
task.wait()
end
elseif _G.AutoShardMastery == true then
Notification("You don't have Shard equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Shard Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Space Mastery", {
    Text = "Space Mastery",
    Values = {"Place Time", "Complete On Island Slapple"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.SpaceMastery = Value
    end
})

Badge3Group:AddToggle("Auto Space Mastery", {
    Text = "Auto Space Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoSpaceMastery = Value
if CheckGlove() == "Space" then
while _G.AutoSpaceMastery do
if _G.SpaceMastery == "Place Time" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
task.wait(1)
game:GetService("ReplicatedStorage").ZeroGSound:FireServer()
game:GetService("Players").LocalPlayer.Reset:FireServer()
repeat wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
wait(0.3)
elseif _G.SpaceMastery == "Complete On Island Slapple" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
end
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(227, 48, 169)
wait(0.25)
for i,v in ipairs(game.Workspace.Arena.CannonIsland:GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true
wait(0.3)
if game.Players.LocalPlayer.Backpack:FindFirstChild("Space") then
game.Players.LocalPlayer.Backpack:FindFirstChild("Space").Parent = game.Players.LocalPlayer.Character
end
wait(0.2)
game:GetService("ReplicatedStorage").ZeroGSound:FireServer()
wait(1)
repeat task.wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" and v.Name ~= "Humanoid" then
v.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
end
end
end
until game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
wait(1)
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0))
task.wait(6)
end
task.wait()
end
elseif _G.AutoSpaceMastery == true then
Notification("You don't have Space equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Space Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Flash Mastery", {
    Text = "Flash Mastery",
    Values = {"Time + Slap", "Ambush"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.FlashMastery = Value
    end
})

Badge3Group:AddToggle("Auto Flash Mastery", {
    Text = "Auto Flash Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoFlashMastery = Value
if CheckGlove() == "Flash" then
while _G.AutoFlashMastery do
if _G.FlashMastery == "Time + Slap" then
for i = 1, 9000 do
spawn(function() game:GetService("ReplicatedStorage").FlashTeleport:FireServer() end)
end
elseif _G.FlashMastery == "Ambush" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.6)
	game:GetService("ReplicatedStorage").FlashTeleport:FireServer()
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			spawn(function()
				repeat task.wait(5.4)
					if CheckGlove() == "Flash" and v:FindFirstChild("HumanoidRootPart") then
						game:GetService("ReplicatedStorage").FlashTeleport:FireServer()
					end
				until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoFlashMastery == false
			end)
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoFlashMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoFlashMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoFlashMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
end
task.wait()
end
elseif _G.AutoFlashMastery == true then
Notification("You don't have Flash equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Flash Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Fort Mastery", {
    Text = "Fort Mastery",
    Values = {"Build", "Build + Break"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.FortMastery = Value
    end
})

Badge3Group:AddToggle("Auto Fort Mastery", {
    Text = "Auto Fort Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoFortMastery = Value
if CheckGlove() == "Fort" then
spawn(function()
	while _G.AutoFortMastery do
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") then
			game:GetService("ReplicatedStorage").Fortlol:FireServer()
		end
		wait(3.4)
	end
end)
while _G.AutoFortMastery do
if _G.FortMastery == "Build + Break" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Fort") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Fort)
end
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "Part" and v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound") and 200 >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude then
if v.CanCollide == true then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.CFrame)
task.wait(0.05)
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Ragdolled") and game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false then
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = -99})
end
end
end
end
until _G.AutoFortMastery == false or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
end
elseif _G.FortMastery == "Build" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Fort") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Fort)
end
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
until _G.AutoFortMastery == false or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
end
end
task.wait()
end
elseif _G.AutoFortMastery == true then
Notification("You don't have Fort equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Fort Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Rob Mastery", {
    Text = "Rob Mastery",
    Values = {"Studs", "Get Kill"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.RobMastery = Value
    end
})

local TweenRob = 1
Badge3Group:AddToggle("Auto Rob Mastery", {
    Text = "Auto Rob Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoRobMastery = Value
if CheckGlove() == "rob" then
while _G.AutoRobMastery do
if _G.RobMastery == "Studs" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local TweenPlayRob = {
	CFrame.new(9762, 38, 10237),
	CFrame.new(9763, 38, 9761),
	CFrame.new(10241, 38, 9758),
	CFrame.new(10236, 38, 10236)
}
function NextTweenRob()
    local RobFarm = TweenPlayRob[TweenRob]
    TweenRob = TweenRob + 1
    if TweenRob > #TweenPlayRob then
        TweenRob = 1
    end
    return RobFarm
end
game:GetService("ReplicatedStorage").rob:FireServer()
for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
	if v.Name == "whiteframe" then
		v:Destroy()
	end
end
repeat task.wait() until _G.AutoRobMastery == false or game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("Head").Transparency == 1
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
	local TweenRobTag = NextTweenRob()
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(TweenRobTag)
		end
	end
end
elseif _G.RobMastery == "Get Kill" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	CreateFreezeBV()
	local function AbilityRob()
		game:GetService("ReplicatedStorage").rob:FireServer()
		for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
			if v.Name == "whiteframe" then
				v:Destroy()
			end
		end
	end
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				AbilityRob()
				if game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head.Transparency >= 1 then
					if v:FindFirstChild("HumanoidRootPart") then
						v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or (v:FindFirstChild("Head") and v.Head.Transparency >= 1) or _G.AutoRobMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				AbilityRob()
				if game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character.Head.Transparency >= 1 then
					if v:FindFirstChild("Body") then
						v:FindFirstChild("Body").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			until v:FindFirstChild("Body") == nil or _G.AutoRobMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoRobMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
end
task.wait()
end
elseif _G.AutoRobMastery == true then
Notification("You don't have Rob equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Rob Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Cloud Mastery", {
    Text = "Cloud Mastery",
    Values = {"Studs (200k Fly)", "Afk (200 Min)", "Pickup Player (100 Player)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.CloudMastery = Value
    end
})

local TweenGet = 1
_G.GetPlayerSit = {}
Badge3Group:AddToggle("Auto Cloud Mastery", {
    Text = "Auto Cloud Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoCloudMastery = Value
if CheckGlove() == "Cloud" then
while _G.AutoCloudMastery do
if _G.CloudMastery == "Studs (200k Fly)" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local GetCloudYour = couldfound()
local TweenPlay = {
	CFrame.new(730, 128, -600),
	CFrame.new(-680, 22, 500)
}
function NextTween()
    local TweenNextGo = TweenPlay[TweenGet]
    TweenGet = TweenGet + 1
    if TweenGet > #TweenPlay then
        TweenGet = 1
    end
    return TweenNextGo
end
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    if GetCloudYour and GetCloudYour:FindFirstChild("VehicleSeat") then
        VectorTween({Part = GetCloudYour.VehicleSeat, Place = NextTween().Position, Speed = 80})
    end
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
    if GetCloudYour and GetCloudYour:FindFirstChild("VehicleSeat") then
        VectorTween({Place = GetCloudYour.VehicleSeat.Position, Speed = 80})
    end
end
end
elseif _G.CloudMastery == "Afk (200 Min)" then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.CannonIsland.Cannon.Base.CFrame * CFrame.new(0,2,35)
wait(0.3)
game:GetService("ReplicatedStorage").CloudAbility:FireServer()
fireclickdetector(workspace.Lobby.Diamond.ClickDetector)
wait(0.2)
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace.Lobby.Teleport1.CFrame)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.3)
local GetCloudYour = couldfound()
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == false then
    if GetCloudYour and GetCloudYour:FindFirstChild("VehicleSeat") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetCloudYour.VehicleSeat.CFrame
    end
end
until game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game.Players.LocalPlayer.Character.Humanoid.Sit == true
task.wait(1)
if GetCloudYour and GetCloudYour:FindFirstChild("VehicleSeat") then
    VectorTween({Part = GetCloudYour.VehicleSeat, Place = Vector3.new(CFrame.new(245, 129, -91)), Speed = 80})
end
wait(0.3)
game:GetService("ReplicatedStorage").Rockmode:FireServer()
Toggles["Anti Afk"]:SetValue(true)
end
elseif _G.CloudMastery == "Pickup Player (100 Player)" then
local GetCloudYour = couldfound()
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
if _G.GetPlayerSit[RandomPlayer] then return end
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character:FindFirstChild("Humanoid") and RandomPlayer.Character:FindFirstChild("stevebody") == nil and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Humanoid.Sit == false and RandomPlayer.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and RandomPlayer.Character.Ragdolled.Value == false and RandomPlayer.Character:FindFirstChild("Mirage") == nil then
repeat task.wait()
if GetCloudYour and GetCloudYour:FindFirstChild("Seat") then
    RandomPlayer.Character.HumanoidRootPart.CFrame = GetCloudYour.Seat.CFrame
end
until RandomPlayer.Character.Humanoid.Sit == true
if not _G.GetPlayerSit[RandomPlayer] then
_G.GetPlayerSit[RandomPlayer] = true
end
if RandomPlayer.Character.Humanoid.Sit == true then
slapglove(RandomPlayer.Character.HumanoidRootPart)
end
task.wait(0.5)
end 
end
end
task.wait()
end
elseif _G.AutoCloudMastery == true then
Notification("You don't have Cloud equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Cloud Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Wormhole Mastery", {
    Text = "Wormhole Mastery",
    Values = {"Place", "Teleport Time", "Ambush Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.WormholeMastery = Value
    end
})

Badge3Group:AddToggle("Auto Wormhole Mastery", {
    Text = "Auto Wormhole Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoWormholeMastery = Value
if CheckGlove() == "Wormhole" then
while _G.AutoWormholeMastery do
if _G.WormholeMastery == "Place" then
game:GetService("ReplicatedStorage").WormholePlace:FireServer()
elseif _G.WormholeMastery == "Teleport Time" then
game:GetService("ReplicatedStorage").WormholeTP:FireServer(CFrame.new(-57.48336410522461, -4.672852516174316, 67.94768524169922, 0.5769212245941162, 0.0005397791974246502, 0.8167997002601624, 1.468715993269143e-07, 0.9999997615814209, -0.0006609398988075554, -0.8167998790740967, 0.00038141835830174387, 0.5769210457801819))
elseif _G.WormholeMastery == "Ambush Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	game:GetService("ReplicatedStorage").WormholeTP:FireServer(CFrame.new(-57.48336410522461, -4.672852516174316, 67.94768524169922, 0.5769212245941162, 0.0005397791974246502, 0.8167997002601624, 1.468715993269143e-07, 0.9999997615814209, -0.0006609398988075554, -0.8167998790740967, 0.00038141835830174387, 0.5769210457801819))
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
					game:GetService("ReplicatedStorage").WormholeTP:FireServer(CFrame.new(-57.48336410522461, -4.672852516174316, 67.94768524169922, 0.5769212245941162, 0.0005397791974246502, 0.8167997002601624, 1.468715993269143e-07, 0.9999997615814209, -0.0006609398988075554, -0.8167998790740967, 0.00038141835830174387, 0.5769210457801819))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoWormholeMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoWormholeMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoWormholeMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
end
task.wait()
end
elseif _G.AutoWormholeMastery == true then
Notification("You don't have Wormhole equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Wormhole Mastery"]:SetValue(false)
end
    end
})

Badge3Group = TabBoxMastery:AddTab("Run-Brick", SolarIcon.Mastery)

Badge3Group:AddDropdown("Run Mastery", {
    Text = "Run Mastery",
    Values = {"Esp Player", "Auto Kill Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.RunMastery = Value
    end
})

Badge3Group:AddToggle("Auto Run Mastery", {
    Text = "Auto Run Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoRunMastery = Value
if CheckGlove() == "Run" then
if _G.AutoRunMastery == false then
if _G.RunMastery == "Esp Player" then
for i,v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("InLabyrinth") then
if v.Character.HumanoidRootPart:FindFirstChild("RunEsp") then
v.Character.HumanoidRootPart.RunEsp:Destroy()
end
end
end
end
end
while _G.AutoRunMastery do
if _G.RunMastery == "Esp Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") then
for i,v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("InLabyrinth") then
if v.Character.HumanoidRootPart:FindFirstChild("RunEsp") == nil then
RunEsp = Instance.new("BillboardGui", v.Character.HumanoidRootPart)
RunEsp.Adornee = v.Character.HumanoidRootPart
RunEsp.Name = "RunEsp"
RunEsp.Size = UDim2.new(0, 100, 0, 150)
RunEsp.AlwaysOnTop = true
RunEspText = Instance.new("TextLabel", RunEsp)
RunEspText.BackgroundTransparency = 1
RunEspText.Font = Enum.Font.SourceSansBold
RunEspText.Size = UDim2.new(0, 100, 0, 100)
RunEspText.TextSize = 15
RunEspText.TextStrokeTransparency = 0.5
RunEspText.Text = "Target Player"
end
elseif v.Character and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("InLabyrinth") == nil then
if v.Character.HumanoidRootPart:FindFirstChild("RunEsp") then
v.Character.HumanoidRootPart.RunEsp:Destroy()
end
end
end
end
elseif _G.RunMastery == "Auto Kill Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") then
for i,v in ipairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("InLabyrinth") then
v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end
end
task.wait()
end
elseif _G.AutoRunMastery == true then
Notification("You don't have Run equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Run Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Glovel Mastery", {
    Text = "Glovel Mastery",
    Values = {"Dip (350 Time)", "Land Player"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.GlovelMastery = Value
    end
})

Badge3Group:AddToggle("Auto Glovel Mastery", {
    Text = "Auto Glovel Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoGlovelMastery = Value
if CheckGlove() == "Glovel" then
while _G.AutoGlovelMastery do
if _G.GlovelMastery == "Dip (350 Time)" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.3)
for i = 1, 400 do
spawn(function()
	game:GetService("ReplicatedStorage").GlovelFunc:InvokeServer()
end)
task.wait(0.05)
end
wait(0.4)
game:GetService("ReplicatedStorage").GlovelCancel:FireServer()
wait(0.8)
elseif _G.GlovelMastery == "Land Player" then
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoGlovelMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoGlovelMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoGlovelMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
end
task.wait()
end
elseif _G.AutoGlovelMastery == true then
Notification("You don't have Glovel equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Glovel Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddDropdown("Bomb Mastery", {
    Text = "Bomb Mastery",
    Values = {"Throw Bomb", "Snipe Bomb + Void", "Void Kill"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BombMastery = Value
    end
})

Badge3Group:AddToggle("Auto Bomb Mastery", {
    Text = "Auto Bomb Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoBombMastery = Value
if CheckGlove() == "Bomb" then
while _G.AutoBombMastery do
if _G.BombMastery == "Throw Bomb" then
for i = 1, 1000 do
spawn(function()
	game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
	game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
end)
end
elseif _G.BombMastery == "Snipe Bomb + Void" then
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Backpack:FindFirstChild("Bomb") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Bomb)
end
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.4)
game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
task.delay(12.5, function()
	game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
end)
repeat task.wait() 
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
end
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb")
wait(0.5)
repeat task.wait() 
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb") then
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb").CFrame)
end
until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb") == nil
task.wait(0.75)
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
elseif _G.BombMastery == "Void Kill" then
repeat task.wait() until game.Players.LocalPlayer.Character
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.3)
game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
repeat task.wait() 
if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
end
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
end
until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb")
task.wait(0.2)
game:GetService("ReplicatedStorage"):WaitForChild("BombThrow"):FireServer("Ebutton")
task.wait(0.75)
repeat task.wait() until game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name.."_bømb") == nil
repeat task.wait()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end
task.wait()
end
elseif _G.AutoBombMastery == true then
Notification("You don't have Bomb equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Bomb Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Stalker Mastery", {
    Text = "Auto Stalker Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoStalkerMastery = Value
if not _G.AutoStalkerMastery then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Stalker" then
while _G.AutoStalkerMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
wait(0.5)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
	fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
	game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	fireclickdetector(workspace.Lobby["Stalker"].ClickDetector)
	task.wait(1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
			v.Transparency = 0
		end
	end
end
wait(0.2)
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
wait(0.35)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
if game.Players.LocalPlayer.Character:FindFirstChild("Stalker") then
game.Players.LocalPlayer.Character:FindFirstChild("Stalker").Parent = game.Players.LocalPlayer.Backpack
end
wait(0.3)
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
	repeat task.wait() until _G.AutoStalkerMastery == false or game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil or game.Players.LocalPlayer.Character:FindFirstChild("ReadyToBurst")
	local RandomPlayer = players[math.random(#players)]
	CreateFreezeBV()
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("Head").CFrame * CFrame.new(0, 7, 0))
	repeat task.wait() until _G.AutoStalkerMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
	wait(0.3)
	for i = 1, 3 do
		slapglove(RandomPlayer.Character:FindFirstChild("Head"))
		wait(0.2)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
	task.wait(3)
end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Stalker equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Stalker Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Rage Mastery", {
    Text = "Auto Rage Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoRageMastery = Value
if CheckGlove() == "Rage" then
while _G.AutoRageMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	spawn(function()
		for _,v in ipairs(workspace:GetChildren()) do
			if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
				repeat task.wait()
					if v:FindFirstChild("HumanoidRootPart") then
						slapglove(v:FindFirstChild("HumanoidRootPart"))
					end
				until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoRageMastery == false
			end
			if v.Name == "Imp" and v:FindFirstChild("Body") then
				repeat task.wait()
					if v:FindFirstChild("Body") then
						slapglove(v:FindFirstChild("Body"))
					end
				until v:FindFirstChild("Body") == nil or _G.AutoRageMastery == false
			end
		end
	end)
	repeat task.wait() until game:GetService("Players").LocalPlayer.Character and (game:GetService("Players").LocalPlayer.Character:GetAttribute("rage_percent") or 0) >= 53
	game:GetService("ReplicatedStorage"):WaitForChild("GRRRRR"):FireServer("frenzy")
	repeat task.wait() until game:GetService("Players").LocalPlayer.Character and (game:GetService("Players").LocalPlayer.Character:GetAttribute("rage_percent") or 0) <= 49
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoRageMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
task.wait()
end
elseif _G.AutoRageMastery == true then
Notification("You don't have Rage equipped, or you have 19k+ slap", _G.TimeNotify)
wait(0.05)
Toggles["Auto Rage Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Stick Mastery", {
    Text = "Auto Stick Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoStickMastery = Value
if CheckGlove() == "Stick" then
while _G.AutoStickMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			repeat task.wait()
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
			until v:FindFirstChild("HumanoidRootPart") == nil or _G.AutoGlovelMastery == false
		end
		if v.Name == "Imp" and v:FindFirstChild("Body") then
			repeat task.wait()
				if v:FindFirstChild("Body") then
					slapglove(v:FindFirstChild("Body"))
				end
			until v:FindFirstChild("Body") == nil or _G.AutoGlovelMastery == false
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoGlovelMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
task.wait()
end
elseif Value == true then
Notification("You don't have Stick equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Stick Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Dice Mastery", {
    Text = "Auto Dice Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoDiceMastery = Value
if CheckGlove() == "Dice" then
while _G.AutoDiceMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local RandomPlayer = MasteryPlayers(CheckGlove(), true)
	if RandomPlayer then
		CreateFreezeBV()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -6, 5))
		repeat task.wait() until _G.AutoDiceMastery == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - RandomPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 8
		slapglove(RandomPlayer.Character.Head)
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
		task.wait(0.7)
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Dice equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Dice Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Booster Mastery", {
    Text = "Auto Booster Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoBoosterMastery = Value
if CheckGlove() == "Booster" then
while _G.AutoBoosterMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
	local Gloveold = CheckGlove()
	SpawnFarmMastery(true)
	repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("entered")
	wait(0.5)
	for _,v in ipairs(workspace:GetChildren()) do
		if v.Name:find("Å") and v:FindFirstChild("HumanoidRootPart") then
			for o = 1, 35 do
				if v:FindFirstChild("HumanoidRootPart") then
					slapglove(v:FindFirstChild("HumanoidRootPart"))
				end
				task.wait()
			end
		end
	end
	game:GetService("Players").LocalPlayer.Reset:FireServer()
	repeat task.wait() until not _G.AutoBoosterMastery or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	equipglove(Gloveold)
end
task.wait()
end
elseif _G.AutoBoosterMastery == true then
Notification("You don't have Booster equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Booster Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Killstreak Mastery", {
    Text = "Auto Killstreak Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoKillstreakMastery = Value
if Value == false then
	CreateFreezeBV({Remove = true})
end
if CheckGlove() == "Killstreak" then
while _G.AutoKillstreakMastery do
local players = {}
for i, v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList) then
		table.insert(players, v)
	end
end
if #players ~= 0 then
	CreateFreezeBV()
	local target = players[math.random(#players)]
	repeat task.wait()
	if target.Character.Ragdolled.Value == false then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(target.Character.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0))
		task.wait(0.25)
		game.ReplicatedStorage.KSHit:FireServer(target.Character:FindFirstChild("HumanoidRootPart"))
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
		task.wait(0.85)
	end
	until _G.AutoKillstreakMastery ~= true or (target.Character:FindFirstChild("HumanoidRootPart") and target.Character.HumanoidRootPart.Position.Y < -10) or (target.Character:FindFirstChild("Humanoid") and target.Character.Humanoid.Health <= 0)
end
task.wait()
end
elseif _G.AutoKillstreakMastery == true then
Notification("You don't have Killstreak equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Killstreak Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Spin Mastery", {
    Text = "Auto Spin Mastery",
    Default = false, 
    Callback = function(Value) 
_G.AutoSpinMastery = Value
if CheckGlove() == "spin" then
while _G.AutoSpinMastery do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
repeat task.wait()
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)
end
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace["SafeBox"].CFrame * CFrame.new(0,5,0))
until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
end
task.wait()
end
elseif _G.AutoSpinMastery == true then
Notification("You don't have Spin equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Spin Mastery"]:SetValue(false)
end
    end
})

Badge3Group:AddToggle("Auto Brick Mastery", {
    Text = "Auto Big Brick",
    Default = false, 
    Callback = function(Value) 
_G.AutoBrickMastery = Value
if CheckGlove() == "Brick" then
while _G.AutoBrickMastery do
for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Union" then
v.Size = Vector3.new(20, 1, 20)
                    end
                end
task.wait()
end
elseif _G.AutoBrickMastery == true then
Notification("You don't have Brick equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Brick Mastery"]:SetValue(false)
end
    end
})

local Badge4Group = TabBoxMastery:AddTab("Help Setup", SolarIcon.Help)

spawn(function()
	while true do
		pcall(function()
			Players1 = (_G.HelpPlayer1 and _G.HelpPlayer1.Character) or nil
			root1 = (Players1 and Players1:FindFirstChild("HumanoidRootPart")) or nil
			head1 = (Players1 and Players1:FindFirstChild("Head")) or nil
			torso1 = (Players1 and Players1:FindFirstChild("Torso")) or nil
			hum1 = (Players1 and Players1:FindFirstChild("Humanoid")) or nil
			
			Players2 = game.Players.LocalPlayer.Character or nil
			root = (Players2 and Players2:FindFirstChild("HumanoidRootPart")) or nil
			head = (Players2 and Players2:FindFirstChild("Head")) or nil
			hum = (Players2 and Players2:FindFirstChild("Humanoid")) or nil
			
			PlayersMain = (_G.HelpPlayer2 and _G.HelpPlayer2.Character) or nil
			rootmain = (PlayersMain and PlayersMain:FindFirstChild("HumanoidRootPart")) or nil
			headmain = (PlayersMain and PlayersMain:FindFirstChild("Head")) or nil
			hummain = (PlayersMain and PlayersMain:FindFirstChild("Humanoid")) or nil
		end)
		task.wait()
	end
end)

function HelpMasteryJoin(data)
	data = data or {}
	data.NoCF = data.NoCF or false
	data.CloneCF = data.CloneCF or CFrame.new(0,5,0)
	data.MainCF = data.MainCF or CFrame.new(0,5,-3)
	data.PlaceCF = data.PlaceCF or workspace["SafeBox"].S5
	
	if Players2 then
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if Players2 and game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()) then
			game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove()).Parent = Players2
		end
		if not data.NoCF then
			if Players2 and Players2:FindFirstChild("entered") then
				root.CFrame = data.PlaceCF.CFrame * (_G.Players1CloneHelp and data.CloneCF or data.MainCF)
			end
		end
		if Players2 and Players2:FindFirstChild("entered") == nil then
			root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
		end
	end
end

Badge4Group:AddLabel("[<font color=\"rgb(73, 230, 133)\">Mastery Help</font>] Please have a input Account Clone ready to help.", true)
CloneAccHelp = Badge4Group:AddInput("Players", {
    Text = "Clone Account",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.HelpPlayer1 = FoundPlr(Value, true)
    end
})

Badge4Group:AddInput("Players1", {
    Text = "Main Account",
    Finished = true,
    Placeholder = "Username",
    Callback = function(Value)
_G.HelpPlayer2 = FoundPlr(Value, true)
    end
})

Badge4Group:AddToggle("Enabled Players 1 Help", {
    Text = "Enabled Account Clone Help",
    Default = false, 
    Callback = function(Value) 
_G.Players1CloneHelp = Value
if CloneAccHelp then
	CloneAccHelp:SetVisible(not _G.Players1CloneHelp)
end
    end
})

Badge4Group = TabBoxMastery:AddTab("Help A-B", SolarIcon.Help)

Badge4Group:AddDropdown("Acrobat Mastery", {
    Text = "Acrobat Mastery",
    Values = {"Roll + Slap", "Slap + Roll + Slap"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.AcrobatMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Acrobat", {
    Text = "Auto Mastery Acrobat",
    Default = false, 
    Callback = function(Value) 
_G.AutoAcrobatMasteryHelp = Value
if not _G.AutoAcrobatMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Acrobat" then
spawn(function()
	while _G.AutoAcrobatMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if _G.AcrobatMasteryHelp == "Roll + Slap" then
					if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
						slapglove(root1)
					end
					game:GetService("ReplicatedStorage"):WaitForChild("Roll"):FireServer()
					wait(0.2)
					repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(1)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoAcrobatMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,5),
})
if not _G.Players1CloneHelp then
	if Players1 and Players1:FindFirstChild("entered") and root1 and root and (root.Position - root1.Position).Magnitude <= 150 then
		if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if _G.AcrobatMasteryHelp == "Slap + Roll + Slap" then
				slapglove(root1)
				wait(0.2)
				repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				game:GetService("ReplicatedStorage"):WaitForChild("Roll"):FireServer()
				wait(0.3)
				slapglove(root1)
				wait(1.7)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Acrobat equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Acrobat"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Tinkerer Mastery", {
    Text = "Tinkerer Mastery",
    Values = {"Bomb Clone", "Bomb + Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.TinkeverMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Tinkerer", {
    Text = "Auto Mastery Tinkerer",
    Default = false, 
    Callback = function(Value) 
_G.AutoTinkeverMasteryHelp = Value
if not _G.AutoTinkeverMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Tinkerer" then
spawn(function()
	while _G.AutoTinkeverMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
					game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer("E_ABILITY")
					task.wait(3.7)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoTinkeverMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,-3),
	MainCF = CFrame.new(0,5,0),
	PlaceCF = workspace.SafeBoxSpace
})
if not _G.Players1CloneHelp then
	if Players1 and Players1:FindFirstChild("entered") and root1 and root and (root.Position - root1.Position).Magnitude <= 150 then
		if _G.TinkeverMasteryHelp == "Bomb + Slap Clone" then
			if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value then
				wait(0.5)
				repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				wait(0.3)
				for i = 1, 10 do
					slapglove(root1)
					task.wait(0.85)
				end
				repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.35)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Tinkerer equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Tinkerer"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Bubble Mastery", {
    Text = "Bubble Mastery",
    Values = {"Bubble + Slap Clone", "Bubble Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BubbleMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Bubble", {
    Text = "Auto Mastery Bubble",
    Default = false, 
    Callback = function(Value) 
_G.AutoBubbleMasteryHelp = Value
if not _G.AutoBubbleMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Bubble" then
function BubbleChild()
	for i,v in pairs(workspace:GetChildren()) do
        if v.Name == "BubbleObject" and (root.Position - v.Position).Magnitude <= 200 then
            return v
        end
	end
	return nil
end
spawn(function()
	while _G.AutoBubbleMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if _G.BubbleMasteryHelp == "Bubble Clone" then
				if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
					if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
						game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
						wait(0.5)
						repeat task.wait() until not BubbleTo()
						task.wait(2)
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoBubbleMasteryHelp do
HelpMasteryJoin({NoCF = true})
if Players2 and Players2:FindFirstChild("entered") then
	if _G.Players1CloneHelp then
		if BubbleChild() then
			pcall(function() root.CFrame = BubbleChild().CFrame end)
		else
			root.CFrame = workspace.SafeBoxSpace.CFrame * CFrame.new(0,9,0)
		end
	else
		root.CFrame = workspace.SafeBoxSpace.CFrame * CFrame.new(0,9,5.9)
	end
end
if not _G.Players1CloneHelp then
	if _G.BubbleMasteryHelp == "Bubble + Slap Clone" then
		if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				slapglove(root1)
				wait(0.4)
				repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.35)
				game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
				wait(0.5)
				repeat task.wait() until BubbleChild() ~= nil
				wait(0.4)
				repeat task.wait() until not BubbleChild()
				task.wait(5.5)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Bubble equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Bubble"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Engineer Mastery", {
    Text = "Engineer Mastery",
    Values = {"Kill Clone", "Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.EngineerMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Engineer", {
    Text = "Auto Mastery Engineer",
    Default = false, 
    Callback = function(Value) 
_G.AutoEngineerMasteryHelp = Value
if not _G.AutoEngineerMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	Notification("You have input main account", _G.TimeNotify)
	wait(0.05)
	Toggles["Auto Mastery Engineer"]:SetValue(false)
end
if _G.Players1CloneHelp or CheckGlove() == "Engineer" then
function TurretSpawn()
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name:lower():find("turret") and v:FindFirstChild("Hitbox") and (root.Position - v.Hitbox.Position).Magnitude <= 200 then
			return v
		end
	end
	return nil
end
spawn(function()
	while _G.AutoEngineerMasteryHelp do
		Turret = TurretSpawn()
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if _G.Players1CloneHelp then
			if PlayersMain and Players2 and Players2:FindFirstChild("entered") and PlayersMain:FindFirstChild("entered") then
				if Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == false then
					repeat task.wait()
						if Turret then
							for i, v in pairs(Turret:GetChildren()) do
								local GloveFind = v:FindFirstChild("Glove", true)
								if GloveFind then
									Players2:SetPrimaryPartCFrame(GloveFind.CFrame)
								end
							end
						end
					until Players2.Ragdolled.Value == true
					if _G.EngineerMasteryHelp == "Kill Clone" then
						wait(0.5)
						repeat task.wait()
							Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
						until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
						repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						wait(0.3)
					end
				end
			end
		else
			if not TurretSpawn() and Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == false then
				game:GetService("ReplicatedStorage").Sentry:FireServer()
				wait(5.5)
			end
		end
		task.wait()
	end
end)
while _G.AutoEngineerMasteryHelp do
HelpMasteryJoin({NoCF = true})
if Players2 and Players2:FindFirstChild("entered") then
	local TurretFind = TurretSpawn()
	if _G.Players1CloneHelp then
		if not TurretFind then
			Players2:SetPrimaryPartCFrame(workspace.Safespot.DefendPart4.CFrame * CFrame.new(0,8,-7.5))
		end
	elseif not _G.Players1CloneHelp then
		Players2:SetPrimaryPartCFrame(workspace.Safespot.DefendPart4.CFrame * TurretFind and CFrame.new(0,8,9) or CFrame.new(0,8,0))
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Engineer equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Engineer"]:SetValue(false)
end
    end
})

Badge4Group = TabBoxMastery:AddTab("Help V-S", SolarIcon.Combat)

Badge4Group:AddDropdown("Voodoo Mastery", {
    Text = "Voodoo Mastery",
    Values = {"Farm Voodoo Clone", "Voodoo Slap 20 Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.VoodooMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Voodoo", {
    Text = "Auto Mastery Voodoo",
    Default = false, 
    Callback = function(Value) 
_G.AutoVoodooMasteryHelp = Value
if not _G.AutoVoodooMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Voodoo" then
spawn(function()
	while _G.AutoVoodooMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
					if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
						game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
						task.wait(6.66)
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoVoodooMasteryHelp do
local function FoundDollPlr(object)
	local DollPlr
	for i, v in pairs(object:GetChildren()) do
		if v.Name:lower():find("doll") then
			DollPlr = v
		end
	end
	return DollPlr
end
if Players2 and Players2:FindFirstChild("entered") then
	if Players2 and FoundDollPlr(Players2) then
		TpGetDoll = CFrame.new(0,8,0)
	else
		TpGetDoll = CFrame.new(0,5,0)
	end
end
HelpMasteryJoin({
	CloneCF = TpGetDoll,
	MainCF = CFrame.new(0,5,0),
})
local function HasEnabledParticle()
	if Players2 and Players2:FindFirstChild(CheckGlove()) and Players2[CheckGlove()]:FindFirstChild("Glove") and Players2[CheckGlove()].Glove:FindFirstChild("ParticleAttachement") then
		for _, v in ipairs(Players2[CheckGlove()].Glove.ParticleAttachement:GetChildren()) do
			if v.Name:find("Particle") and v.Enabled then
				return true
			end
		end
	end
	return false
end
if not _G.Players1CloneHelp then
	if _G.VoodooMasteryHelp:match("Voodoo") then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				if HasEnabledParticle() then
					slapglove(root1)
					wait(0.3)
					repeat task.wait() until FoundDollPlr(Players1)
					wait(0.3)
					local DollPlrTo = FoundDollPlr(Players1)
					if DollPlrTo then
						slapglove(DollPlrTo)
					end
					task.wait(0.5)
				end
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Voodoo equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Voodoo"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Bus Mastery", {
    Text = "Bus Mastery",
    Values = {"Farm Slap Clone", "Bus Crash Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BusMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Bus", {
    Text = "Auto Mastery Bus",
    Default = false, 
    Callback = function(Value) 
_G.AutoBusMasteryHelp = Value
if not _G.AutoBusMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "bus" then
spawn(function()
	while _G.AutoBusMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
					if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
						if _G.BusMasteryHelp == "Bus Crash Clone" then
							game:GetService("ReplicatedStorage").busmoment:FireServer()
							task.wait(6.1)
						end
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoBusMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,6.5),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if _G.BusMasteryHelp == "Farm Slap Clone" then
				for i = 1, 10 do
					if root1 then
						slapglove(root1)
						task.wait(0.87)
					end
				end
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				wait(0.6)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have bus equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery bus"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Shard Mastery", {
    Text = "Shard Mastery",
    Values = {"Slap + Shard Clone", "150 Studs Clone", "Shard Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ShardMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Shard", {
    Text = "Auto Mastery Shard",
    Default = false, 
    Callback = function(Value) 
_G.AutoShardMasteryHelp = Value
if not _G.AutoShardMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Shard" then
spawn(function()
	while _G.AutoShardMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
					if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 then
						game:GetService("ReplicatedStorage").Shards:FireServer()
						task.wait(4.87)
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoShardMasteryHelp do
HelpMasteryJoin({
	CloneCF = (_G.ShardMasteryHelp:find("Shard Clone") and CFrame.new(0,5,0) or CFrame.new(0, 5, -200)),
	MainCF = CFrame.new(0,5,8)
})
if not _G.Players1CloneHelp then
	if _G.AutoShardMasteryHelp == "Slap + Shard Clone" then
		if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
			repeat task.wait() until Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value
			wait(0.5)
			for i = 1, 5 do
				slapglove(root1)
				task.wait(0.9)
			end
			task.wait(0.7)
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Shard equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Shard"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Bonk Mastery", {
    Text = "BONK Mastery",
    Values = {"BONK Clone", "BONK + Slap"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.BonkMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery BONK", {
    Text = "Auto Mastery BONK",
    Default = false, 
    Callback = function(Value) 
_G.AutoBonkMasteryHelp = Value
if not _G.AutoBonkMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "BONK" then
spawn(function()
	while _G.AutoBonkMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 then
					game:GetService("ReplicatedStorage"):WaitForChild("BONK"):FireServer()
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoBonkMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,5),
})
if Players2 and Players2:FindFirstChild("entered") then
	if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
		if _G.BonkMasteryHelp == "BONK + Slap" then
			if torso1 and torso1.Size.Y < 1.7 then
				for i = 1, 9 do
					if torso1 and torso1.Size.Y < 1.7 then
						slapglove(root1)
						task.wait(0.9)
					end
				end
				task.wait(0.7)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have BONK equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery BONK"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Hexa Mastery", {
    Text = "Hexa Mastery",
    Values = {"Ability Clone", "Slap + Ability Clone", "Kill Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.HexaMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Hexa", {
    Text = "Auto Mastery Hexa",
    Default = false, 
    Callback = function(Value) 
_G.AutoHexaMasteryHelp = Value
if not _G.AutoBonkMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Hexa" then
spawn(function()
	while _G.AutoHexaMasteryHelp do
		if _G.Players1CloneHelp then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if _G.HexaMasteryHelp == "Kill Clone" then
					repeat task.wait() until _G.AutoHexaMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					wait(1)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					repeat task.wait() until not _G.AutoHexaMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.5)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoHexaMasteryHelp do
pcall(function()
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,-7),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) <= 100 then
				if _G.HexaMasteryHelp == "Ability Clone" or _G.HexaMasteryHelp == "Kill Clone" then
					game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
				elseif _G.HexaMasteryHelp == "Slap + Ability Clone" then
					slapglove(root1)
					task.wait(0.6)
					game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
				end
				task.wait(0.5)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.5)
			end
		end
	end
end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have BONK equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery BONK"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Thanos Mastery", {
    Text = "Thanos Mastery",
    Values = {"Ambush Clone", "Recover/Save Yourself", "Combo Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ThanosMasteryHelp = Value
if Value == "Recover/Save Yourself" then
	Notification("Clone account have choose Recover/Save Yourself", 5)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Thanos", {
    Text = "Auto Mastery Thanos",
    Default = false, 
    Callback = function(Value) 
_G.AutoThanosMasteryHelp = Value
if not _G.AutoThanosMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Thanos" then
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	Notification("You have input main account", _G.TimeNotify)
	wait(0.05)
	Toggles["Auto Mastery Thanos"]:SetValue(false)
	return
end
spawn(function()
	while _G.AutoThanosMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if _G.Players1CloneHelp then
			if PlayersMain and Players2 and Players2:FindFirstChild("entered") and PlayersMain:FindFirstChild("entered") and PlayersMain:FindFirstChild("Ragdolled") and PlayersMain.Ragdolled.Value == false then
				if (root and rootmain and (root.Position - rootmain.Position).Magnitude or 0) < 200 then
					if _G.ThanosMasteryHelp == "Recover/Save Yourself" then
						slapglove(rootmain)
						task.wait(6.2)
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoThanosMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,5),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if _G.ThanosMasteryHelp == "Ambush Clone" then
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(2)
				task.wait(1.9)
				for i = 1, 9 do
					slapglove(root1)
					task.wait(0.8)
				end
			elseif _G.ThanosMasteryHelp == "Combo Clone" then
				slapglove(root1)
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(2)
				task.wait(1.9)
				slapglove(root1)
			else
				repeat task.wait() until Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == true
				wait(0.3)
				repeat task.wait() until Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == false
				wait(0.3)
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(2)
				task.wait(6.3)
			end
			wait(0.5)
			repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
			task.wait(0.5)
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Thanos equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Thanos"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Soul Mastery", {
    Text = "Soul Mastery",
    Values = {"Combo clone", "Kill clone for strongest", "Kill clone AOE blast"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.SoulMasteryHelp = Value
if Value:find("Kill") then
	Notification("Clone account have choose kill clone", 5)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Soul", {
    Text = "Auto Mastery Soul",
    Default = false, 
    Callback = function(Value) 
_G.AutoSoulMasteryHelp = Value
if not _G.AutoSoulMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Soul" then
spawn(function()
	while _G.AutoSoulMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if _G.Players1CloneHelp then
			if PlayersMain and Players2 and Players2:FindFirstChild("entered") and PlayersMain:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == true then
				if (root and rootmain and (root.Position - rootmain.Position).Magnitude or 0) < 200 then
					if tonumber(PlayersMain:GetAttribute("souls")) >= 50 then
						if _G.SoulMasteryHelp:find("Kill") and (not _G.SoulMasteryHelp == "Kill clone for strongest" or tonumber(PlayersMain:GetAttribute("charge")) >= 100) then
							repeat task.wait() until _G.AutoSoulMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
							wait(1)
							repeat task.wait()
								Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
							until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
							repeat task.wait() until not _G.AutoSoulMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						end
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoSoulMasteryHelp do
HelpMasteryJoin({NoCF = true})
if root and Players2 and Players2:FindFirstChild("entered") then
	root.CFrame = workspace["SafeBox"].S5.CFrame * (not _G.Players1CloneHelp and CFrame.new(0, 20, 0) or CFrame.new(0, 20, 10))
end
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if tonumber(Players2:GetAttribute("souls")) >= 50 and (not _G.SoulMasteryHelp == "Kill clone for strongest" or tonumber(Players2:GetAttribute("charge")) >= 100) then
				if _G.SoulMasteryHelp == "Combo clone" then
					slapglove(root1)
					wait(0.2)
					repeat task.wait() until _G.AutoSoulMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and not Players2.Ragdolled.Value
					wait(0.1)
					game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(false)
					wait(0.6)
				elseif _G.SoulMasteryHelp == "Kill clone for strongest" then
					if tonumber(Players2:GetAttribute("charge")) >= 100 then
						game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(false)
					end
				elseif _G.SoulMasteryHelp == "Kill clone AOE blast" then
					if tonumber(Players2:GetAttribute("souls")) >= 50 then
						game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(true)
					end
				end
			else
				if tonumber(Players2:GetAttribute("souls")) < 75 then
					for i = 1, 9 do
						slapglove(root1)
						task.wait(0.75)
					end
					wait(0.3)
				else
					if tonumber(Players2:GetAttribute("charge")) < 100 then
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("soul"):FireServer("charge")
					end
				end
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Soul equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Soul"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Eggler Mastery", {
    Text = "Eggler Mastery",
    Values = {"Kill Clone 5 Time", "Eggler Clone", "Unegg Slap Clone", "Deny Slap Eggler"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.EgglerMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Eggler", {
    Text = "Auto Mastery Eggler",
    Default = false, 
    Callback = function(Value) 
_G.AutoEgglerMasteryHelp = Value
if not _G.AutoEgglerMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Eggler" then
local function FoundEggVictim(target)
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name:lower() == "egg_victim" and v:GetAttribute("target") == target.Name then
			return v
		end
	end
	return nil
end
spawn(function()
	while _G.AutoEgglerMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 then
					if _G.EgglerMasteryHelp == "Eggler Clone" or _G.EgglerMasteryHelp == "Kill Clone 5 Time" then
						if not FoundEggVictim(Players2) then
							game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
						end
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoEgglerMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,-7),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and not FoundEggVictim(Players1) and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if _G.EgglerMasteryHelp == "Unegg Slap Clone" then
				repeat task.wait()
					game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
				until Players2 and Players2:GetAttribute("isEgg")
				wait(0.3)
				repeat task.wait()
					game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
				until Players2 and not Players2:GetAttribute("isEgg")
				wait(0.3)
				for i = 1, 9 do
					slapglove(root1)
					task.wait(0.8)
				end
			elseif _G.EgglerMasteryHelp == "Deny Slap Eggler" then
				slapglove(root1)
				wait(0.3)
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
				wait(0.3)
				repeat task.wait()
					game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EgglerRAbility"):FireServer()
				until Players2 and not Players2:GetAttribute("isEgg")
			end
			wait(0.67)
			repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
			task.wait(0.5)
		end
	end
elseif _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if FoundEggVictim(Players2) then
			wait(0.5)
			repeat task.wait()
				Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
			until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			wait(0.65)
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Eggler equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Eggler"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Phantom Mastery", {
    Text = "Phantom Mastery",
    Values = {"Jumpscare Clone", "Combo Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PhantomMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Phantom", {
    Text = "Auto Mastery Phantom",
    Default = false, 
    Callback = function(Value) 
_G.AutoPhantomMasteryHelp = Value
if not _G.AutoPhantomMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Phantom" then
spawn(function()
	while _G.AutoPhantomMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 then
					if _G.PhantomMasteryHelp == "Jumpscare Clone" then
						local PhantomTool = ((Players2 and Players2:FindFirstChild(CheckGlove())) or game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove())) or nil
						if PhantomTool then
							game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(PhantomTool) 
						end
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoPhantomMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,5),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if _G.PhantomMasteryHelp == "Jumpscare Clone" then
				if Players2:GetAttribute("phantom") then
					task.wait(0.2)
					repeat task.wait() until not _G.AutoPhantomMasteryHelp or not Players2 or not Players2:GetAttribute("phantom")
					task.wait(0.3)
					for i = 1, 4 do
						slapglove(root1)
						task.wait(0.9)
					end
					wait(0.3)
				end
			else
				slapglove(root1)
				wait(0.3)
				local PhantomTool = ((Players2 and Players2:FindFirstChild(CheckGlove())) or game.Players.LocalPlayer.Backpack:FindFirstChild(CheckGlove())) or nil
				if PhantomTool then
					game:GetService("ReplicatedStorage").PhantomDash:InvokeServer(PhantomTool) 
				end
				wait(0.3)
				repeat task.wait() until not _G.AutoPhantomMasteryHelp or not Players2 or not Players2:GetAttribute("phantom")
				wait(0.2)
				slapglove(root1)
				wait(4)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Phantom equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Phantom"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Rage Mastery", {
    Text = "Rage Mastery",
    Values = {"Max Rage", "50% Rage", "Murder Rage"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.RageMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Rage", {
    Text = "Auto Mastery Rage",
    Default = false, 
    Callback = function(Value) 
_G.AutoRageMasteryHelp = Value
if not _G.AutoRageMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	if _G.RageMasteryHelp == "Murder Rage" then
		Notification("You have input main account", _G.TimeNotify)
		wait(0.05)
		Toggles["Auto Mastery Rage"]:SetValue(false)
	end
end
if _G.Players1CloneHelp or CheckGlove() == "Rage" then
spawn(function()
	while _G.AutoRageMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if (Players2 and Players2:GetAttribute("rage_percent") or 0) > 55 then
					if Players2 and not Players2:GetAttribute("frenzy") then
						game:GetService("ReplicatedStorage"):WaitForChild("GRRRRR"):FireServer("frenzy")
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoRageMasteryHelp do
pcall(function()
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,7,0),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if (Players2 and Players2:GetAttribute("rage_percent") or 0) < (_G.RageMasteryHelp == "Max Rage" and 100 or 55) then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				for i = 1, 5 do
					slapglove(root1)
					task.wait(0.9)
				end
				task.wait(0.3)
			end
		end
	end
else
	if _G.RageMasteryHelp == "Murder Rage" then
		repeat task.wait() until PlayersMain and PlayersMain:GetAttribute("frenzy") and Players2 and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == false
		wait(0.5)
		repeat task.wait()
			Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
		until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
		repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		task.wait(0.6)
	end
end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Rage equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Rage"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Plank Mastery", {
    Text = "Plank Mastery",
    Values = {"Ambush Clone", "Plank Clone", "Plank Kill"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PlankMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Plank", {
    Text = "Auto Mastery Plank",
    Default = false, 
    Callback = function(Value) 
_G.AutoPlankMasteryHelp = Value
if not _G.AutoPlankMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Plank" then
spawn(function()
	while _G.AutoPlankMasteryHelp do
		if _G.Players1CloneHelp then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if _G.PlankMasteryHelp == "Plank Kill" then
					repeat task.wait() until _G.AutoPlankMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					wait(1)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					repeat task.wait() until not _G.AutoPlankMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.5)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoPlankMasteryHelp do
pcall(function()
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = (_G.PlankMasteryHelp:find("Plank") and CFrame.new(0,5,5) or CFrame.new(0,-20,0)),
})
if not _G.Players1CloneHelp then
	if _G.PlankMasteryHelp == "Ambush Clone" then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				wait(0.32)
				if not workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank") or workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank"):GetAttribute("collect") then
					game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(0, 0, 0), Vector3.new(math.huge, 0, 0))
					wait(1.7)
				end
				if workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank") and not workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank"):GetAttribute("collect") then
					CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
					Players2:SetPrimaryPartCFrame(workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank").CFrame * CFrame.new(0, 0, 3) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)))
					task.wait(1)
					Players2:SetPrimaryPartCFrame(workspace:FindFirstChild(game.Players.LocalPlayer.Name.."'s Plank").CFrame * CFrame.new(0, 7, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)))
				end
				wait(0.8)
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				Players2:SetPrimaryPartCFrame(root1.CFrame * CFrame.new(0, 7, 0))
				repeat task.wait() until _G.AutoPlankMasteryHelp == false or (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 8
				wait(0.3)
				slapglove(root1)
				wait(0.2)
				root.CFrame = workspace["SafeBox"].CFrame * CFrame.new(0,5,0)
				repeat task.wait() until _G.AutoPlankMasteryHelp == false or Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.4)
			end
		end
	elseif _G.PlankMasteryHelp:find("Plank") then
		if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 30 then
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(0, 0, 0), Vector3.new(math.huge, 0, 0))
			end
		end
	end
end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Plank equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Plank"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Obby Mastery", {
    Text = "Obby Mastery",
    Values = {"Kill Clone", "Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ObbyMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Obby", {
    Text = "Auto Mastery Obby",
    Default = false, 
    Callback = function(Value) 
_G.AutoObbyMasteryHelp = Value
if not _G.AutoObbyMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Obby" then
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	Notification("You have input main account", _G.TimeNotify)
	wait(0.05)
	Toggles["Auto Mastery Obby"]:SetValue(false)
	return
end
if not _G.Players1CloneHelp and _G.AutoObbyMasteryHelp and _G.ObbyMasteryHelp == "Kill Clone" then
	repeat task.wait()
		if Players2:FindFirstChild("HumanoidRootPart") and Players2:FindFirstChild("entered") == nil then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if fireclickdetector then
				fireclickdetector(workspace.Lobby["Fort"].ClickDetector) 
			end
			EquipGloveRemote("Fort")
			repeat task.wait() until not _G.AutoObbyMasteryHelp or CheckGlove() == "Fort"
			wait(0.3)
			repeat task.wait()
				if Players2 and Players2:FindFirstChild("entered") == nil then
					root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
				end
			until Players2 and Players2:FindFirstChild("entered")
			task.wait(0.1)
			root.CFrame = CFrame.new(209, -28006, 1)
			wait(0.5)
			for i = 1, 2 do
				game:GetService("ReplicatedStorage").Fortlol:FireServer()
				wait(3.6)
			end
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.3)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			wait(0.5)
			if fireclickdetector then
				fireclickdetector(workspace.Lobby["Obby"].ClickDetector) 
			end
			EquipGloveRemote("Obby")
			repeat task.wait() until not _G.AutoObbyMasteryHelp or CheckGlove() == "Obby"
			wait(0.4)
			repeat task.wait()
				if Players2 and Players2:FindFirstChild("entered") == nil then
					root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
				end
			until game.Players.LocalPlayer.Character:FindFirstChild("entered")
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			wait(0.4)
			root.CFrame = CFrame.new(209, -28006, 1) * CFrame.Angles(math.rad(0), -55, 0)
			wait(0.6)
			for i, v in pairs(workspace:GetChildren()) do
				if v.Name == "Part" and v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound") and (root.Position - v.Position).Magnitude <= 50 then
					FortWall = v
					break
				end
			end
			if FortWall then
				local WallSize = FortWall.Size
				local NEWY = FortWall.Position.Y + (WallSize.Y/2) + 0.4
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(FortWall.Position.X, NEWY, FortWall.Position.Z) * CFrame.Angles(math.rad(0), 55, 0), 1)
			end
			task.wait(4)
		end
	until not _G.AutoObbyMasteryHelp or workspace:FindFirstChild("ObbyItem"..game.Players.LocalPlayer.Name.."LavaBlock")
end
wait(0.3)
spawn(function()
	while _G.AutoObbyMasteryHelp do
		if _G.Players1CloneHelp then
			if PlayersMain and Players2 and Players2:FindFirstChild("entered") and PlayersMain:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.ObbyMasteryHelp == "Kill Clone" then
					repeat task.wait()
						if workspace:FindFirstChild("ObbyItem".._G.HelpPlayer2.Name.."LavaBlock") then
							Players2:SetPrimaryPartCFrame(workspace:FindFirstChild("ObbyItem".._G.HelpPlayer2.Name.."LavaBlock").CFrame)
						end
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					repeat task.wait() until not _G.AutoObbyMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.5)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoObbyMasteryHelp do
pcall(function()
CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
HelpMasteryJoin({NoCF = true})
if Players2 and Players2:FindFirstChild("entered") then
	if _G.ObbyMasteryHelp == "Kill Clone" then
		root.CFrame = (not _G.Players1CloneHelp and CFrame.new(360, -28006, 1))
	else
		root.CFrame = workspace["SafeBox"].S5.CFrame * (_G.Players1CloneHelp and CFrame.new(0,5,0) or CFrame.new(0,5,8))
	end
end
if not _G.Players1CloneHelp then
	if _G.ObbyMasteryHelp == "Slap Clone" then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					for i = 1, 9 do
						slapglove(root1)
						task.wait(0.9)
					end
					wait(0.3)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.6)
				end
			end
		end
	end
end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Obby equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Obby"]:SetValue(false)
end
    end
})

Badge4Group = TabBoxMastery:AddTab("Help T-M", SolarIcon.Misc)

Badge4Group:AddDropdown("Tycoon Mastery", {
    Text = "Tycoon Mastery",
    Values = {"Defense Tycoon", "Kill Clone (Tycoon God)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.TycoonMasteryHelp = Value
    end
})

function FoundTycoon(rootp)
	local TargetTycoon
	for i, v in pairs(game.Workspace:GetChildren()) do
		if v.Name:match("ÅTycoon") and v:FindFirstChild("End") and (rootp.Position - v.End.Position).Magnitude <= 100 then
			TargetTycoon = v
		end
	end
	return TargetTycoon
end
Badge4Group:AddToggle("Auto Mastery Tycoon", {
    Text = "Auto Mastery Tycoon",
    Default = false, 
    Callback = function(Value) 
_G.AutoTycoonMasteryHelp = Value
if not _G.AutoTycoonMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Tycoon" then
	repeat task.wait()
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if Players2 and Players2:FindFirstChild("entered") == nil then
			root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
		end
		if Players2:FindFirstChild("entered") then
			root.CFrame = CFrame.new(17894, 15, -3579)
		end
		if not _G.Players1CloneHelp and not game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and Players2:FindFirstChild("entered") then
			game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(17893.587890625, -26.257728576660156, -3571.69775390625, 0.9998365640640259, -6.031721255794764e-08, 0.01807994209229946, 6.185813816728114e-08, 1, -8.466933820727718e-08, -0.01807994209229946, 8.577389110087097e-08, 0.9998365640640259))
			task.wait(6.5)
		end
	until not _G.AutoTycoonMasteryHelp or game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name)
	wait(0.3)
	if not _G.Players1CloneHelp and _G.AutoTycoonMasteryHelp and _G.TycoonMasteryHelp == "Kill Clone (Tycoon God)" then
		if _G.TycoonMasteryHelp == "Kill Clone (Tycoon God)" then
			repeat task.wait()
				if Players2 and Players2:FindFirstChild("entered") == nil then
					root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
				end
				if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) then
					GuiTrackUpdate(true, {
						Text = "Tycoon Your Point\n"..game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount").." / 5000",
						Size = game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name):GetAttribute("LastCount") / 5000
					})
				end
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				root.CFrame = CFrame.new(350, -28006, 1)
				for _, v in pairs(workspace:GetChildren()) do
				    local hasClick = v:FindFirstChild("Click")
				    if hasClick then
					    if v.Name:match(game.Players.LocalPlayer.Name) then
					        local cd = hasClick:FindFirstChildOfClass("ClickDetector")
					        if cd then
					            fireclickdetector(cd, 0)
					            fireclickdetector(cd, 1)
					        end
					    end
					end
				end
			until not _G.AutoTycoonMasteryHelp or _G.TycoonMasteryHelp ~= "Kill Clone (Tycoon God)" or (game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 5000)
			GuiTrackUpdate(false)
		end
	end
wait(0.3)
spawn(function()
	while _G.AutoTycoonMasteryHelp do
		if _G.Players1CloneHelp then
			if Players2 and Players2:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.TycoonMasteryHelp == "Kill Clone (Tycoon God)" then
					repeat task.wait() until Players2 and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					wait(0.4)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					wait(0.1)
					repeat task.wait() until not _G.AutoTycoonMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.5)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoTycoonMasteryHelp do
local TycoonF = FoundTycoon(root)
HelpMasteryJoin({NoCF = true})
if Players2 and Players2:FindFirstChild("entered") then
	if _G.TycoonMasteryHelp == "Kill Clone (Tycoon God)" then
		root.CFrame = (not _G.Players1CloneHelp and CFrame.new(360, -28006, 1) or CFrame.new(355, -28006, 1))
	else
		if TycoonF and TycoonF:FindFirstChild("End") then
			root.CFrame = TycoonF:FindFirstChild("End").CFrame * (_G.Players1CloneHelp and CFrame.new(0,20,0) or CFrame.new(0,25,0))
		else
			root.CFrame = CFrame.new(17894, 15, -3579)
		end
	end
end
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 100 then
				if _G.TycoonMasteryHelp == "Defense Tycoon" then
					for i = 1, 9 do
						slapglove(root1)
						task.wait(0.9)
					end
				elseif _G.TycoonMasteryHelp == "Kill Clone (Tycoon God)" then
					if game.Workspace:FindFirstChild("ÅTycoon"..game.Players.LocalPlayer.Name) and game.Workspace["ÅTycoon"..game.Players.LocalPlayer.Name]:GetAttribute("LastCount") >= 5000 then
						wait(0.5)
						slapglove(root1)
					end
				end
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.6)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Tycoon equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Tycoon"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Hive Mastery", {
    Text = "Hive Mastery",
    Values = {"Honey Clone", "Swarm Clone", "Kill Clone Honey"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.HiveMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Hive", {
    Text = "Auto Mastery Hive",
    Default = false, 
    Callback = function(Value) 
_G.AutoHiveMasteryHelp = Value
if not _G.AutoHiveMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Hive" then
spawn(function()
	while _G.AutoHiveMasteryHelp do
		if _G.Players1CloneHelp then
			if Players2 and Players2:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.HiveMasteryHelp == "Kill Clone Honey" then
					repeat task.wait() until Players2 and Players2:GetAttribute("honey_mark")
					wait(0.4)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					wait(0.1)
					repeat task.wait() until not _G.AutoHiveMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.8)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoHiveMasteryHelp do
pcall(function()
	HelpMasteryJoin({
		CloneCF = CFrame.new(0,5,0),
		MainCF = CFrame.new(0,7,0)
	})
	if not _G.Players1CloneHelp then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Humanoid") and Players1:FindFirstChild("Ragdolled") and Players1.Humanoid.Health > 0 and Players1.Ragdolled.Value == false then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					if _G.HiveMasteryHelp == "Honey Clone" then
						for i = 1, 9 do
							slapglove(root1)
							task.wait(0.9)
						end
					elseif _G.HiveMasteryHelp == "Swarm Clone" then
						repeat task.wait()
							game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
						until Players2 and Players2:GetAttribute("hiveability")
						wait(0.2)
						slapglove(root1)
						wait(0.3)
						repeat task.wait() until Players2 and not Players2:GetAttribute("glovebroken")
					else
						slapglove(root1)
						task.wait(0.9)
					end
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.6)
				end
			end
		end
	end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Hive equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Hive"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Dice Mastery", {
    Text = "Dice Mastery",
    Values = {"Slap Clone", "Kill Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.DiceMasteryHelp = Value
    end
})

function foundDice(rootD)
	local DiceMax, Dice = 0, nil
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name:lower():find("DicePart") and v:FindFirstChild("BillboardGui") and v.BillboardGui:FindFirstChild("ImageLabel") and v.BillboardGui.ImageLabel:FindFirstChild("TextLabel") then
			if v.BillboardGui.ImageLabel.BackgroundTransparency <= 0.5 then
				local Dice = (rootD.Position - v.Position).Magnitude
				if Dice and Dice <= 70 then
					DiceMax, Dice = math.max(DiceMax, tonumber(v.BillboardGui.ImageLabel.TextLabel)), v
				end
			end
		end
	end
	return DiceMax, Dice
end
Badge4Group:AddToggle("Auto Mastery Dice", {
    Text = "Auto Mastery Dice",
    Default = false, 
    Callback = function(Value) 
_G.AutoDiceMasteryHelp = Value
if not _G.AutoDiceMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Dice" then
spawn(function()
	while _G.AutoDiceMasteryHelp do
		pcall(function()
			if _G.Players1CloneHelp then
				if Players2 and Players2:FindFirstChild("entered") then
					CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
					if _G.DiceMasteryHelp == "Kill Clone" then
						local DiceMax, Dice = foundDice(root)
						if DiceMax and tonumber(DiceMax) <= 60 then
							repeat task.wait() until Players2 and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
							wait(0.4)
							repeat task.wait()
								Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
							until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
							wait(0.1)
							repeat task.wait() until not _G.DiceMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							wait(0.5)
							if Dice then
								Dice:Destroy()
							end
						end
					end
				end
			end
		end)
		task.wait()
	end
end)
while _G.AutoDiceMasteryHelp do
pcall(function()
	HelpMasteryJoin({
		CloneCF = CFrame.new(0,5,0),
		MainCF = CFrame.new(0,7,0),
	})
	if not _G.Players1CloneHelp then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					if _G.DiceMasteryHelp == "Slap Clone" then
						for i = 1, 10 do
							slapglove(root1)
							task.wait(0.78)
						end
					else
						slapglove(root1)
						task.wait(0.4)
					end
					wait(0.4)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.4)
				end
			end
		end
	end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Dice equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Dice"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Phase Mastery", {
    Text = "Phase Mastery",
    Values = {"Slap + Ability", "Ability + Slap (2 Sec)"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.PhaseMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Phase", {
    Text = "Auto Mastery Phase",
    Default = false, 
    Callback = function(Value) 
_G.AutoPhaseMasteryHelp = Value
if not _G.AutoPhaseMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Phase" then
while _G.AutoPhaseMasteryHelp do
HelpMasteryJoin({CloneCF = CFrame.new(0,5,0), MainCF = CFrame.new(0,7,0)})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				if _G.PhaseMasteryHelp == "Slap + Ability" then
					slapglove(root1)
					game:GetService("ReplicatedStorage").PhaseA:FireServer()
					wait(0.2)
					repeat task.wait() until root and root:FindFirstChild("BlackheartREAL") == nil
					wait(0.15)
				elseif _G.PhaseMasteryHelp == "Ability + Slap (2 Sec)" then
					game:GetService("ReplicatedStorage").PhaseA:FireServer()
					task.wait(0.2)
					repeat task.wait() until root and root:FindFirstChild("BlackheartREAL") == nil
					task.wait(0.25)
					for i = 1, 5 do
						slapglove(root1)
						task.wait(0.73)
					end
				end
				wait(0.56)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.5)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Phase equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Phase"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Spring Mastery", {
    Text = "Spring Mastery",
    Values = {"Jump Over Clone", "Evade Clone", "Jump Land 2 Sec Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.SpringMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Spring", {
    Text = "Auto Mastery Spring",
    Default = false, 
    Callback = function(Value) 
_G.AutoSpringMasteryHelp = Value
if not _G.AutoSpringMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Spring" then
while _G.AutoSpringMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,6,0),
	MainCF = CFrame.new(0,6,3.8),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 100 then
				if _G.SpringMasteryHelp == "Jump Over Clone" or _G.SpringMasteryHelp == "Jump Land 2 Sec Clone" then
					repeat task.wait()
						game:GetService("ReplicatedStorage"):WaitForChild("SpringJump"):FireServer()
					until char and char:FindFirstChild("JumpSoundDB")
					if _G.SpringMasteryHelp == "Jump Land 2 Sec Clone" then task.wait(1.4) end
					wait(0.17)
					slapglove(root1)
					wait(0.3)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.65)
				elseif _G.SpringMasteryHelp == "Evade Clone" then
					slapglove(root1)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					wait(0.1)
					repeat task.wait()
						game:GetService("ReplicatedStorage"):WaitForChild("SpringJump"):FireServer()
					until char and char:FindFirstChild("JumpSoundDB")
					task.wait(1.5)
				end
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Spring equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Spring"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Gummy Mastery", {
    Text = "Gummy Mastery",
    Values = {"Slap Clone", "Kill Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.GummyMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Gummy", {
    Text = "Auto Mastery Gummy",
    Default = false, 
    Callback = function(Value) 
_G.AutoGummyMasteryHelp = Value
if not _G.AutoGummyMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Gummy" then
spawn(function()
	while _G.AutoGummyMasteryHelp do
		if _G.Players1CloneHelp then
			if Players2 and Players2:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.GummyMasteryHelp == "Kill Clone" then
					repeat task.wait() until Players2 and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					wait(0.4)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					wait(0.1)
					repeat task.wait() until not _G.AutoGummyMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.5)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoGummyMasteryHelp do
pcall(function()
HelpMasteryJoin({
	CloneCF = CFrame.new(0,6,0),
	MainCF = CFrame.new(0,6,3.8),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 100 then
				if _G.GummyMasteryHelp == "Slap Clone" then
					slapglove(root1)
				end
				task.wait(0.2)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.5)
			end
		end
	end
end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Gummy equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Gummy"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Mace Mastery", {
    Text = "Mace Mastery",
    Values = {"Kill Clone", "Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.MaceMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Mace", {
    Text = "Auto Mastery Mace",
    Default = false, 
    Callback = function(Value) 
_G.AutoMaceMasteryHelp = Value
if not _G.AutoMaceMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Mace" then
spawn(function()
	while _G.AutoMaceMasteryHelp do
		HelpMasteryJoin({CloneCF = CFrame.new(0,6,0), MainCF = CFrame.new(0,6,-6)})
		if not _G.Players1CloneHelp then
			if Players2 and Players2:FindFirstChild("entered") then
				if Players2:FindFirstChild("Mace") and Players2.Mace:FindFirstChild("Glove") and Players2.Mace.Glove:FindFirstChild("glove_mesh") then
					if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 then
						local offset = (root.Position - Players2.Mace.Glove.glove_mesh.Position)
						if offset then
							Players2.Mace.Glove.glove_mesh.AssemblyLinearVelocity = Vector3.new(-offset.Z, 0, offset.X).Unit * 220
						end
					end
				end
			end
		end
		task.wait()
	end
end)
spawn(function()
	while _G.AutoMaceMasteryHelp do
		if _G.Players1CloneHelp then
			if Players2 and Players2:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.MaceMasteryHelp == "Kill Clone" then
					repeat task.wait() until Players2 and Players2:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value
					wait(0.4)
					repeat task.wait()
						Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
					until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					wait(0.1)
					repeat task.wait() until not _G.AutoMaceMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.8)
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoMaceMasteryHelp do
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players2:FindFirstChild("MaceSpin") then
			Create("BodyAngularVelocity", {Name = "MaceSpin", Parent = root, MaxTorque = Vector3.new(0, math.huge, 0), AngularVelocity = Vector3.new(0,130,0)})
		end
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 200 and Players2:GetAttribute("SwingingFast") then
				for i = 1, 10 do
					slapglove(root1)
					task.wait(0.73)
				end
				wait(0.56)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.5)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Mace equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Mace"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Defense Mastery", {
    Text = "Defense Mastery",
    Values = {"Slap Clone 100 sec", "Kill Clone Box", "Protect Defence", "Slap clone Into Box"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.DefenseMasteryHelp = Value
    end
})

function FoundDefenseBox(rootp)
	local FoundBox
	for i,v in pairs(game.Workspace:GetChildren()) do
		if string.find(v.Name, "ÅBarrier") and (rootp.Position - v.Position).Magnitude <= 100 then
			FoundBox = v
		end
	end
	return FoundBox
end
Badge4Group:AddToggle("Auto Mastery Defense", {
    Text = "Auto Mastery Defense",
    Default = false, 
    Callback = function(Value) 
_G.AutoDefenseMasteryHelp = Value
if not _G.AutoDefenseMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Defense" then
spawn(function()
	while _G.AutoDefenseMasteryHelp and task.wait() do
		pcall(function()
			for i,v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "ÅBarrier") then
					v.CanCollide = false
				end
			end
			if not _G.Players1CloneHelp then
				if root and Players2 and Players2:FindFirstChild("entered") then
					local FoundBox = FoundDefenseBox(root)
					if not FoundBox then
						game:GetService("ReplicatedStorage").Barrier:FireServer(1)
						task.wait(0.8)
					end
				end
			end
		end)
	end
end)
spawn(function()
	while _G.AutoDefenseMasteryHelp do
		if _G.Players1CloneHelp then
			if root and Players2 and Players2:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				local FoundBox = FoundDefenseBox(root)
				if _G.DefenseMasteryHelp == "Kill Clone Box" then
					if FoundBox and InsideBox(root, FoundBox) then
						if Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == true then
							wait(0.1)
							repeat task.wait()
								Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
							until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
							repeat task.wait() until not _G.AutoHiveMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							wait(0.8)
						end
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoDefenseMasteryHelp do
CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
HelpMasteryJoin({NoCF = true})
local FoundBox = FoundDefenseBox(root)
if Players2 and Players2:FindFirstChild("entered") then
	if _G.Players1CloneHelp and FoundBox then
		if _G.DefenseMasteryHelp ~= "Slap clone Into Box" or (Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == true) then
			Players2:SetPrimaryPartCFrame(FoundBox.CFrame)
		elseif Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value == false then
			Players2:SetPrimaryPartCFrame(workspace["SafeBox"].S5.CFrame * CFrame.new(0, 20, 25))
		end
	else
		Players2:SetPrimaryPartCFrame(workspace["SafeBox"].S5.CFrame * (_G.DefenseMasteryHelp == "Slap clone Into Box" and FoundBox and CFrame.new(0, 20, 22) or CFrame.new(0, 20, 0)))
	end
end
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 100 then
				if _G.DefenseMasteryHelp == "Slap Clone 100 sec" then
					for i = 1, 20 do
						if _G.AutoDefenseMasteryHelp then
							slapglove(root1)
							task.wait(0.78)
						end
					end
				elseif _G.DefenseMasteryHelp == "Slap clone Into Box" then
					slapglove(root1)
					task.wait(0.9)
				end
				if FoundBox and InsideBox(root1, FoundBox) then
					if _G.DefenseMasteryHelp == "Kill Clone Box" then
						slapglove(root1)
						task.wait(0.9)
					elseif _G.DefenseMasteryHelp == "Protect Defence" then
						for i = 1, 9 do
							slapglove(root1)
							task.wait(0.9)
						end
					end
				end
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Spring equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Spring"]:SetValue(false)
end
    end
})

Badge4Group:AddDropdown("Moai Mastery", {
    Text = "Moai Mastery",
    Values = {"Ragdoll Clone", "Kill Clone", "Slap Clone"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.MoaiMasteryHelp = Value
    end
})

Badge4Group:AddToggle("Auto Mastery Moai", {
    Text = "Auto Mastery Moai",
    Default = false, 
    Callback = function(Value) 
_G.AutoMoaiMasteryHelp = Value
if not _G.AutoMoaiMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "🗿" then
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	Notification("You have input main account", _G.TimeNotify)
	wait(0.05)
	Toggles["Auto Mastery Moai"]:SetValue(false)
	return
end
if not _G.Players1CloneHelp and _G.AutoMoaiMasteryHelp then
	repeat task.wait()
		if Players2:FindFirstChild("HumanoidRootPart") and Players2:FindFirstChild("entered") == nil then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if fireclickdetector then
				fireclickdetector(workspace.Lobby["Fort"].ClickDetector) 
			end
			EquipGloveRemote("Fort")
			repeat task.wait() until not _G.AutoMoaiMasteryHelp or CheckGlove() == "Fort"
			wait(0.3)
			repeat task.wait()
				if Players2 and Players2:FindFirstChild("entered") == nil then
					root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
				end
			until Players2 and Players2:FindFirstChild("entered")
			task.wait(0.1)
			root.CFrame = CFrame.new(209, -28006, 1)
			wait(0.5)
			for i = 1, 2 do
				game:GetService("ReplicatedStorage").Fortlol:FireServer()
				wait(3.6)
			end
			game:GetService("Players").LocalPlayer.Reset:FireServer()
			wait(0.3)
			repeat task.wait() until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			wait(0.5)
			if fireclickdetector then
				fireclickdetector(workspace.Lobby["🗿"].ClickDetector) 
			end
			EquipGloveRemote("🗿")
			repeat task.wait() until not _G.AutoMoaiMasteryHelp or CheckGlove() == "🗿"
			wait(0.4)
			repeat task.wait()
				if Players2 and Players2:FindFirstChild("entered") == nil then
					root.CFrame = game.Workspace:FindFirstChild("Lobby"):FindFirstChild("Teleport1").CFrame
				end
			until game.Players.LocalPlayer.Character:FindFirstChild("entered")
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			wait(0.4)
			root.CFrame = CFrame.new(209, -28006, 1) * CFrame.Angles(math.rad(0), -55, 0)
			wait(0.6)
			for i, v in pairs(workspace:GetChildren()) do
				if v.Name == "Part" and v:FindFirstChild("brownsmoke") and v:FindFirstChild("Sound") and (root.Position - v.Position).Magnitude <= 50 then
					FortWall = v
					break
				end
			end
			if FortWall then
				local WallSize = FortWall.Size
				local NEWY = FortWall.Position.Y + (WallSize.Y/2) + 2.6
				game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(FortWall.Position.X, NEWY, FortWall.Position.Z))
			end
			task.wait(4)
		end
	until not _G.AutoMoaiMasteryHelp or workspace:FindFirstChild("ÅMoyaiStatue".._G.HelpPlayer2.Name)
end
wait(0.3)
spawn(function()
	while _G.AutoMoaiMasteryHelp do
		if _G.Players1CloneHelp then
			if PlayersMain and Players2 and Players2:FindFirstChild("entered") and PlayersMain:FindFirstChild("entered") then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if _G.MoaiMasteryHelp == "Ragdoll Clone" or _G.MoaiMasteryHelp == "Kill Clone" then
					repeat task.wait()
						if workspace:FindFirstChild("ÅMoyaiStatue".._G.HelpPlayer2.Name) and workspace["ÅMoyaiStatue".._G.HelpPlayer2.Name]:FindFirstChild("Hitbox") then
							Players2:SetPrimaryPartCFrame(workspace:FindFirstChild("ÅMoyaiStatue".._G.HelpPlayer2.Name).Hitbox.CFrame * CFrame.new(0, 7, 0))
						end
					until not Players2 or Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					if _G.MoaiMasteryHelp == "Ragdoll Clone" then
						game:GetService("Players").LocalPlayer.Reset:FireServer()
					elseif _G.MoaiMasteryHelp == "Kill Clone" then
						repeat task.wait()
							Players2:SetPrimaryPartCFrame(game.Workspace.DEATHBARRIER.CFrame)
						until not Players2 or Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health <= 0
					end
					wait(0.4)
					repeat task.wait() until not _G.AutoMoaiMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoMoaiMasteryHelp do
CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
HelpMasteryJoin({NoCF = true})
if Players2 and Players2:FindFirstChild("entered") then
	if not _G.Players1CloneHelp then
		root.CFrame = CFrame.new(209, -28006, 1)
	end
end
if not _G.Players1CloneHelp then
	if _G.MoaiMasteryHelp == "Slap Clone" or _G.MoaiMasteryHelp == "Kill Clone" then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					slapglove(root1)
					task.wait(0.9)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.6)
				end
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Moai equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Moai"]:SetValue(false)
end
    end
})

Badge4Group = TabBoxMastery:AddTab("Help Quick", SolarIcon.Mastery)

Badge4Group:AddDivider()

Badge4Group:AddToggle("Auto Mastery Wormhole", {
    Text = "Auto Mastery Wormhole",
    Default = false, 
    Callback = function(Value) 
_G.AutoWormholeMasteryHelp = Value
if not _G.AutoWormholeMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Wormhole" then
spawn(function()
	while _G.AutoWormholeMasteryHelp do
		if not _G.Players1CloneHelp then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if Players2 and Players2:FindFirstChild("entered") and Players1 and Players1:FindFirstChild("entered") then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					game:GetService("ReplicatedStorage").WormholeTP:FireServer(CFrame.new(-57, -4, 67))
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoWormholeMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,7,0),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				slapglove(root1)
				task.wait(0.7)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Wormhole equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Wormhole"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Moon", {
    Text = "Auto Mastery Moon",
    Default = false, 
    Callback = function(Value) 
_G.AutoMoonMasteryHelp = Value
if not _G.AutoMoonMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Moon" then
while _G.AutoMoonMasteryHelp do
CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,7,0),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				slapglove(root1)
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.4)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Moon equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Moon"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Brick", {
    Text = "Auto Mastery Brick",
    Default = false, 
    Callback = function(Value) 
_G.AutoBrickMasteryHelp = Value
if not _G.AutoTinkeverMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Brick" then
spawn(function()
	while _G.AutoBrickMasteryHelp do
		CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
		if not _G.Players1CloneHelp then
			if Players1 and Players2 and Players2:FindFirstChild("entered") and Players1:FindFirstChild("entered") then
				if Players1 and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
					if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
						game:GetService("ReplicatedStorage").lbrick:FireServer()
					end
				end
			end
		end
		task.wait()
	end
end)
while _G.AutoBrickMasteryHelp do
HelpMasteryJoin({CloneCF = CFrame.new(0,5,0), MainCF = CFrame.new(0,7,3)})
task.wait()
end
elseif Value == true then
Notification("You don't have Brick equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Brick"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Killstreak", {
    Text = "Auto Mastery Killstreak",
    Default = false, 
    Callback = function(Value) 
_G.AutoKillstreakMasteryHelp = Value
if not _G.AutoKillstreakMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Killstreak" then
spawn(function()
	while _G.AutoKillstreakMasteryHelp do
		pcall(function()
			if _G.Players1CloneHelp then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if Players2 and Players2:FindFirstChild("entered") then
					repeat task.wait() until _G.AutoKillstreakMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
					wait(1)
					game:GetService("Players").LocalPlayer.Reset:FireServer()
					wait(0.25)
					repeat task.wait() until not _G.AutoKillstreakMasteryHelp or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
					wait(0.8)
				end
			end
		end)
		task.wait()
	end
end)
while _G.AutoKillstreakMasteryHelp do
pcall(function()
	HelpMasteryJoin({
		CloneCF = CFrame.new(0,5,0),
		MainCF = CFrame.new(0,7,0),
	})
	if not _G.Players1CloneHelp then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					slapglove(root1)
					wait(0.3)
					repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
					task.wait(0.4)
				end
			end
		end
	end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have Killstreak equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Killstreak"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Space", {
    Text = "Auto Mastery Space",
    Default = false, 
    Callback = function(Value) 
_G.AutoSpaceMasteryHelp = Value
if not _G.AutoSpaceMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Space" then
while _G.AutoSpaceMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,7,0),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				repeat task.wait()
					game:GetService("ReplicatedStorage"):WaitForChild("ZeroGSound"):FireServer()
				until _G.AutoSpaceMasteryHelp == false or root and root:FindFirstChild("ZeroGSoundEffect")
				wait(0.65)
				for i = 1, 10 do
					if root1 and root and root:FindFirstChild("ZeroGSoundEffect") then
						slapglove(root1)
						task.wait(0.87)
					end
				end
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.4)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Space equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Space"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Run", {
    Text = "Auto Mastery Run",
    Default = false, 
    Callback = function(Value) 
_G.AutoRunMasteryHelp = Value
if not _G.AutoRunMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Run" then
if _G.Players1CloneHelp and not PlayersMain and Value == true then
	Notification("You have input main account", _G.TimeNotify)
	wait(0.05)
	Toggles["Auto Mastery Run"]:SetValue(false)
	return
end
spawn(function()
	while _G.AutoRunMasteryHelp do
		pcall(function()
			if not _G.Players1CloneHelp then
				CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
				if Players2 and Players2:FindFirstChild("entered") and not Players2:FindFirstChild("InLabyrinth") then
					if Players1 and not Players1:FindFirstChild("InLabyrinth") and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
						if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 100 then
							game:GetService("ReplicatedStorage").GeneralAbility:FireServer(root.Position + Vector3.new(0, -3.75, 0))
							task.wait(3.75)
						end
					end
				end
			end
		end)
		task.wait()
	end
end)
while _G.AutoRunMasteryHelp do
HelpMasteryJoin({CloneCF = CFrame.new(0,5,0), MainCF = CFrame.new(0,5,-5)})
if _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") and PlayersMain and PlayersMain:FindFirstChild("entered") then
		if (rootmain and root and (root.Position - rootmain.Position).Magnitude or 0) < 270 then
			if PlayersMain:FindFirstChild("InLabyrinth") and Players2:FindFirstChild("InLabyrinth") then
				repeat task.wait() 
					Players2:SetPrimaryPartCFrame(rootmain.CFrame)
				until not _G.AutoRunMasteryHelp or (hum and hum.Health <= 0) or not Players2:FindFirstChild("InLabyrinth")
				wait(0.5)
				repeat task.wait() until not _G.AutoRunMasteryHelp or not game.Players.LocalPlayer.Character:FindFirstChild("InLabyrinth") or game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				task.wait(0.8)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Run equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Run"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Glovel", {
    Text = "Auto Mastery Glovel",
    Default = false, 
    Callback = function(Value) 
_G.AutoGlovelMasteryHelp = Value
if not _G.AutoGlovelMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Glovel" then
while _G.AutoGlovelMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,-3),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				for i = 1, 9 do
					slapglove(root1, true)
					task.wait(0.9)
				end
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.4)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Glovel equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Glovel"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Booster", {
    Text = "Auto Mastery Booster",
    Default = false, 
    Callback = function(Value) 
_G.AutoBoosterMasteryHelp = Value
if not _G.AutoBoosterMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Booster" then
while _G.AutoBoosterMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,5,-3),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				slapglove(root1)
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(2.5)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Glovel equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Glovel"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Rob", {
    Text = "Auto Mastery Rob",
    Default = false, 
    Callback = function(Value) 
_G.AutoRobMasteryHelp = Value
if not _G.AutoRobMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "rob" then
while _G.AutoRobMasteryHelp do
pcall(function()
	HelpMasteryJoin({
		CloneCF = CFrame.new(0,5,0),
		MainCF = CFrame.new(0,5,-3),
	})
	if not _G.Players1CloneHelp then
		if Players2 and Players2:FindFirstChild("entered") then
			if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
				if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
					game:GetService("ReplicatedStorage").rob:FireServer()
					for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
						if v.Name == "whiteframe" then
							v:Destroy()
						end
					end
					repeat task.wait() until _G.AutoRobMasteryHelp == false or Players2:FindFirstChild("entered") and Players2 and Players2:FindFirstChild("Humanoid") and Players2:FindFirstChild("Humanoid").Health > 0 and tonumber(Players2:FindFirstChild("Head").Transparency) < 1
					wait(0.3)
				end
			end
		end
	end
end)
task.wait()
end
elseif Value == true then
Notification("You don't have rob equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Rob"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Stalker", {
    Text = "Auto Mastery Stalker",
    Default = false, 
    Callback = function(Value) 
_G.AutoStalkerMasteryHelp = Value
if not _G.AutoStalkerMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Stalker" then
while _G.AutoStalkerMasteryHelp do
CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,4,-3),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				for i = 1, 9 do
					slapglove(root1)
					task.wait(0.9)
				end
				wait(0.3)
				repeat task.wait() until Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false
				task.wait(0.4)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Stalker equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Stalker"]:SetValue(false)
end
    end
})

Badge4Group:AddToggle("Auto Mastery Stick", {
    Text = "Auto Mastery Stick",
    Default = false, 
    Callback = function(Value) 
_G.AutoStickMasteryHelp = Value
if not _G.AutoStickMasteryHelp then
	CreateFreezeBV({Remove = true, Name = "HelpMasteryFreezeBv"})
end
if _G.Players1CloneHelp or CheckGlove() == "Stick" then
spawn(function()
	while _G.AutoStickMasteryHelp do
		if _G.Players1CloneHelp then
			CreateFreezeBV({Name = "HelpMasteryFreezeBv"})
			if Players2 and Players2:FindFirstChild("entered") then
				repeat task.wait() until _G.AutoStickMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and Players2.Ragdolled.Value
				game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
				wait(0.15)
				repeat task.wait() until _G.AutoStickMasteryHelp == false or Players2 and Players2:FindFirstChild("entered") and Players2:FindFirstChild("Ragdolled") and not Players2.Ragdolled.Value
			end
		end
		task.wait()
	end
end)
while _G.AutoStickMasteryHelp do
HelpMasteryJoin({
	CloneCF = CFrame.new(0,5,0),
	MainCF = CFrame.new(0,10,0),
})
if not _G.Players1CloneHelp then
	if Players2 and Players2:FindFirstChild("entered") then
		if Players1 and Players1:FindFirstChild("entered") and Players1:FindFirstChild("Ragdolled") and Players1.Ragdolled.Value == false then
			if (root and root1 and (root.Position - root1.Position).Magnitude or 0) < 50 then
				slapglove(root1)
				task.wait(0.7)
			end
		end
	end
end
task.wait()
end
elseif Value == true then
Notification("You don't have Stick equipped", _G.TimeNotify)
wait(0.05)
Toggles["Auto Mastery Stick"]:SetValue(false)
end
    end
})

