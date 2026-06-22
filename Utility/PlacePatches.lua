if game.PlaceId == 6403373529 or game.PlaceId == 136802962479827 or game.PlaceId == 127174121130060 or game.PlaceId == 11520107397 or game.PlaceId == 124596094333302 or game.PlaceId == 2380077519 then
if game.ReplicatedStorage:FindFirstChild("AdminGUI") then
	game.ReplicatedStorage.AdminGUI:Destroy()
end
if game.ReplicatedStorage:FindFirstChild("Ban") then
	game.ReplicatedStorage.Ban:Destroy()
end
if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("AntiMobileExploits", true) then
	game.StarterPlayer.StarterPlayerScripts:FindFirstChild("AntiMobileExploits", true):Destroy()
end
if game.ReplicatedStorage:FindFirstChild("GRAB") then
	game.ReplicatedStorage.GRAB:Destroy()
end
if game.ReplicatedStorage:FindFirstChild("SpecialGloveAccess") then
	game.ReplicatedStorage.SpecialGloveAccess:Destroy()
end
if game.ReplicatedStorage:FindFirstChild("WalkSpeedChanged") then
	game.ReplicatedStorage.WalkSpeedChanged:Destroy()
end

--- List ---

BlackList = {"stevebody", "rock", "Counterd", "Mirage", "Reversed"}

AnimationSlapHit = {
	["134954960138305"] = true,
	["98790126694213"] = true,
	["113677335266712"] = true,
	["16102850016"] = true,
	["86093582820019"] = true,
	["97212410160106"] = true,
	["92696348598076"] = true,
	["12666659393201"] = true,
	["126666659393201"] = true,
	["82224515307861"] = true,
	["13526158494"] = true,
	["13526154547"] = true,
	["16102722988"] = true,
	["135557283152371"] = true,
	["90524879630106"] = true,
	["16294032647"] = true,
	["109511274923523"] = true,
	["133068451086106"] = true,
	["116559255414365"] = true
}

_G.GetPotion = {
	  ["Idiot"] = {"Cake Mix"},
      ["Grug"] = {"Mushroom"},
      ["Nightmare"] = {"Dark Root","Dark Root","Dark Root"},
      ["Confusion"] = {"Red Crystal","Blue Crystal","Glowing Mushroom"},
      ["Power"] = {"Dire Flower","Red Crystal","Wild Vine"},
      ["Paralyzing"] = {"Plane Flower","Plane Flower"},
      ["Haste"] = {"Autumn Sprout","Jade Stone"},
      ["Invisibility"] = {"Hazel Lily","Hazel Lily","Blue Crystal"},
      ["Explosion"] = {"Red Crystal","Fire Flower","Fire Flower"},
      ["Invincible"] = {"Elder Wood","Mushroom","Mushroom"},
      ["Toxic"] = {"Dark Root","Dark Root","Blood Rose","Red Crystal"},
      ["Freeze"] = {"Winter Rose","Winter Rose","Wild Vine","Blue Crystal","Glowing Mushroom"},
      ["Feather"] = {"Mushroom","Hazel Lily"},
      ["Speed"] = {"Mushroom","Mushroom","Plane Flower","Hazel Lily","Blue Crystal"},
      ["Lethal"] = {"Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Blood Rose","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root","Dark Root"},
      ["Slow"] = {"Mushroom","Mushroom","Blue Crystal","Blue Crystal","Jade Stone","Plane Flower"},
      ["Antitoxin"] = {"Blue Crystal","Glowing Mushroom","Plane Flower","Plane Flower","Elder Wood"},
      ["Corrupted Vine"] = {"Wild Vine","Wild Vine","Wild Vine","Blood Rose","Dark Root","Elder Wood","Jade Stone"},
      ["Corrupted Field"] = {"Hazel Lily","Plane Flower","Plane Flower"},
      ["Lost"] = {"Blue Crystal","Elder Wood","Elder Wood","Elder Wood","Red Crystal"}
}

--- Script ---

pcall(function()
	if require then
		local flags = require(game:GetService("ReplicatedStorage").BACKEND.Shared.Flags.FlagService)
		local enabledFlags = flags.IsEnabled
		flags.IsEnabled = function(flag, ...)
		    if flag == "IgnoreSafety" then return true end
		    return enabledFlags(flag, ...)
		end
	end
end)

spawn(function()
	repeat task.wait()
		local success, gloves = pcall(function()
			return require(game:GetService("ReplicatedStorage").Common.Gloves)
		end)
		if success then
			_G.Gloves = gloves
		end
	until _G.Gloves
end)

local data = game:GetService("ReplicatedStorage").PlayerData:FindFirstChild(game.Players.LocalPlayer.Name)
local masteryProgress = data and data:FindFirstChild("GloveMasteryProgress")
function UpdateMasteryProgress()
	local success, mastery = pcall(function()
		return game:GetService("HttpService"):JSONDecode(masteryProgress.Value)
	end)
	if success and mastery then
		_G.MasteryGlove = mastery
	end
end

UpdateMasteryProgress()
masteryProgress:GetPropertyChangedSignal("Value"):Connect(function()
	UpdateMasteryProgress()
end)

if not game.CoreGui:FindFirstChild("MasteryGui") then
	Create("ScreenGui", {
	    Name = "MasteryGui",
	    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	    Parent = game.CoreGui
	}, {
	    Create("Frame", {
	        Name = "Main",
	        Active = true,
	        BorderSizePixel = 0,
			Visible = false,
	        BackgroundColor3 = Color3.fromRGB(113, 113, 113),
	        Size = UDim2.new(0.27766, 0, 0.36659, 0),
	        Position = UDim2.new(0.65, 0, 0, 0),
	        BackgroundTransparency = 0.3
	    }, {
	        Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	        Create("UIStroke", { Transparency = 0.3, Thickness = 1.5 }),
	        Create("UIDragDetector", {}),
	        Create("UIAspectRatioConstraint", { AspectRatio = 1.77612 }),
	        Create("Frame", {
	            Name = "InfoMastery",
	            BorderSizePixel = 0,
	            BackgroundColor3 = Color3.fromRGB(166, 166, 166),
	            -- Thay đổi cấu trúc Size/Position để dễ làm Tween bóp méo (Scale)
	            Size = UDim2.new(0, 0, 1, 0), -- Mặc định Size X = 0 để giấu đi
	            Position = UDim2.new(0, 0, 0, 0), 
	            Visible = false,
	            BackgroundTransparency = 0.2
	        }, {
	            Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	            Create("UIStroke", { Transparency = 0.3, Thickness = 1.5 }),
	            Create("TextButton", {
	                Name = "Close",
	                TextWrapped = true,
	                BorderSizePixel = 0,
	                TextScaled = true,
	                BackgroundColor3 = Color3.fromRGB(204, 204, 204),
	                FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	                Size = UDim2.new(0.85, 0, 0.13433, 0),
	                Position = UDim2.new(0, 6, 0, 4),
					TextColor3 = Color3.fromRGB(0, 0, 0),
	                Text = "Close"
	            }, {
	                Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	                Create("UIStroke", { Transparency = 0.3, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
	            }),
	            Create("TextLabel", {
	                Name = "Info",
	                TextWrapped = true,
	                BorderSizePixel = 0,
	                TextScaled = true,
	                BackgroundColor3 = Color3.fromRGB(187, 187, 187),
	                FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	                BackgroundTransparency = 0.2,
	                Size = UDim2.new(0.85, 0, 0.76119, 0),
	                Position = UDim2.new(0, 6, 0, 26),
					TextColor3 = Color3.fromRGB(0, 0, 0),
	                Text = "Select a task info"
	            }, {
	                Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	                Create("UIStroke", { Transparency = 0.3, ApplyStrokeMode = Enum.ApplyStrokeMode.Border })
	            })
	        }),
	        Create("Frame", {
	            Name = "masteryGlove",
	            BorderSizePixel = 0,
	            BackgroundColor3 = Color3.fromRGB(139, 139, 139),
	            Size = UDim2.new(0.94958, 0, 0.9403, 0),
	            Position = UDim2.new(0.02521, 0, 0.02985, 0),
	            BackgroundTransparency = 0.2
	        }, {
	            Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	            Create("ScrollingFrame", {
	                Name = "Progress",
	                Active = true,
	                BorderSizePixel = 0,
	                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                ScrollBarImageTransparency = 1,
	                AutomaticCanvasSize = Enum.AutomaticSize.Y,
	                Size = UDim2.new(0.9292, 0, 0.88889, 0),
	                Position = UDim2.new(0.0354, 0, 0.04762, 0),
	                ScrollBarThickness = 0,
	                BackgroundTransparency = 1
	            }, {
	                Create("UIListLayout", {
	                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
	                    Padding = UDim.new(0, 2)
	                }),
	                Create("Folder", { Name = "TaskHere" }, {
	                    Create("Frame", {
	                        Name = "Task [???]",
	                        BorderSizePixel = 0,
							Visible = false,
	                        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                        Size = UDim2.new(1, 0, 0.32143, 0),
	                        BackgroundTransparency = 0.2
	                    }, {
	                        Create("UICorner", { CornerRadius = UDim.new(0, 5) }),
	                        Create("ImageButton", {
	                            Name = "Info [???]",
	                            BorderSizePixel = 0,
	                            BackgroundTransparency = 1,
	                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                            Image = "rbxassetid://108984542249016",
	                            Size = UDim2.new(0.09524, 0, 0.77778, 0),
								ImageColor3 = Color3.fromRGB(0, 0, 0),
	                            Position = UDim2.new(0, 4, 0, 4)
	                        }),
	                        Create("TextLabel", {
	                            Name = "ProgressTask",
	                            TextWrapped = true,
	                            BorderSizePixel = 0,
	                            TextSize = 10,
	                            TextStrokeColor3 = Color3.fromRGB(255, 255, 255),
	                            TextScaled = true,
	                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                            FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	                            TextColor3 = Color3.fromRGB(0, 0, 0),
	                            BackgroundTransparency = 1,
	                            Size = UDim2.new(0.69524, 0, 0.77778, 0),
	                            Position = UDim2.new(0.02857, 24, 0.11111, 0),
	                            Text = "Soon"
	                        }),
	                        Create("ImageLabel", {
	                            Name = "TaskUnComplete",
	                            BorderSizePixel = 0,
	                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                            Image = "rbxassetid://100988669582287",
	                            Size = UDim2.new(0.10476, 0, 0.61111, 0),
	                            BackgroundTransparency = 1,
	                            Position = UDim2.new(0.8619, 0, 0.18, 0)
	                        }, {
	                            Create("ImageLabel", {
	                                Name = "Complete",
	                                BorderSizePixel = 0,
	                                BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	                                Image = "rbxassetid://88066926099934",
	                                Size = UDim2.new(1.27273, 0, 1.18182, 0),
	                                Visible = false,
	                                BackgroundTransparency = 1,
	                                Position = UDim2.new(0, 0, -0.18182, 0)
	                            })
	                        })
	                    })
	                })
	            })
	        })
	    })
	})
end

local TweenService = game:GetService("TweenService")
local masteryGloveGui = game.CoreGui:FindFirstChild("MasteryGui")
local mainPanel = masteryGloveGui and masteryGloveGui:FindFirstChild("Main")
local infoMastery = mainPanel and mainPanel:FindFirstChild("InfoMastery")
local infoLabel = infoMastery and infoMastery:FindFirstChild("Info")
local closeButton = infoMastery and infoMastery:FindFirstChild("Close")
local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local isTweening = false
local lastGloveName = ""
local function ToggleInfoPanel(open, text)
	if not infoMastery then return end
	if text and infoLabel then infoLabel.Text = text end
	if open then
		infoMastery.Visible = true
		local openTween = TweenService:Create(infoMastery, tweenInfo, {
			Size = UDim2.new(0.336, 0, 1, 0),
			Position = UDim2.new(0, -88, 0, 2)
		})
		openTween:Play()
	else
		local closeTween = TweenService:Create(infoMastery, tweenInfo, {
			Size = UDim2.new(0, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 2)
		})
		closeTween:Play()
		closeTween.Completed:Connect(function()
			if infoMastery.Size.X.Offset == 0 and infoMastery.Size.X.Scale == 0 then
				infoMastery.Visible = false
			end
		end)
	end
end

if closeButton then
	closeButton.MouseButton1Click:Connect(function()
		ToggleInfoPanel(false)
	end)
end

function ShowMasteryGui(show)
	if mainPanel then
		mainPanel.Visible = show
		if not show then ToggleInfoPanel(false) end
	end
end

function UpdateTaskGloveMastery()
	local taskGlove = {}
	if not _G.MasteryGlove then return taskGlove end
	local function findMastery(name)
		for gloveName, gloveData in pairs(_G.MasteryGlove) do
			if gloveName:lower() == CheckGlove():lower() then
				for statName, statValue in pairs(gloveData) do
					if statName:lower() == name:lower() then 
						return tonumber(statValue)
					end
				end
			end
		end
		return 0
	end
	local currentGlove = CheckGlove():lower()
	if _G.Gloves then
		for i, v in pairs(_G.Gloves) do
			if i:lower() == currentGlove and v.MasteryInfo and v.MasteryInfo.MasteryChallenges then
				local taskGloveN = 0
				for j, b in pairs(v.MasteryInfo.MasteryChallenges) do
					taskGloveN += 1
					local current = tonumber(findMastery(j)) or 0
					local max = tonumber(b.ProgressMaxQuantity) or 1
					taskGlove[taskGloveN] = {Text = b.Name, Max = max, Current = current, Info = b.HoverTip, Percent = math.clamp(math.floor((current / max) * 100), 0, 100)}
				end
			end
		end
	end
	if #taskGlove == 0 then
		taskGlove[1] = {Text = "No "..(CheckGlove and CheckGlove() or "Unknown").." glove mastery or soon", IsFallback = true, Info = "You should change to a glove with mastery."}
	else
		for _, task in ipairs(taskGlove) do
			task.Percent = math.min(math.floor((task.Current / task.Max) * 100), 100)
		end
	end
	return taskGlove
end

local currentTaskDataCache = {}
table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
	if not mainPanel or not mainPanel.Visible then return end
	local currentGlove = CheckGlove() or "Unknown"
	if lastGloveName ~= "" and lastGloveName ~= currentGlove then
		ToggleInfoPanel(false)
	end
	lastGloveName = currentGlove 
	local masteryFrame = mainPanel:FindFirstChild("masteryGlove")
	local progress = masteryFrame and masteryFrame:FindFirstChild("Progress")
	local taskFolder = progress and progress:FindFirstChild("TaskHere")
	if not taskFolder then return end
	local update = UpdateTaskGloveMastery()
	currentTaskDataCache = update
	local template = taskFolder:FindFirstChild("Task [???]") or taskFolder:FindFirstChildOfClass("Frame")
	for _, v in ipairs(progress:GetChildren()) do
		if v.Name:match("^Task %[%d+%]$") then
			v.Visible = false
		end
	end
	for index, taskData in ipairs(update) do
		local taskName = "Task [" .. index .. "]"
		local infoName = "Info [" .. index .. "]"
		local frame = progress:FindFirstChild(taskName)
		if not frame and template then
			frame = template:Clone()
			frame.Name = taskName
			frame.Visible = true
			frame.Parent = progress
			local infoButton = frame:FindFirstChild("Info [???]")
			if infoButton then
				infoButton.Name = infoName
				infoButton.MouseButton1Click:Connect(function()
					local liveData = currentTaskDataCache[index]
					if liveData then
						ToggleInfoPanel(true, "Task "..index..": "..liveData.Info)
					end
				end)
			end
		end
		if frame then
			local textlabel = frame:FindFirstChild("ProgressTask")
			local complete = frame:FindFirstChild("TaskUnComplete") and frame.TaskUnComplete:FindFirstChild("Complete")
			if textlabel and textlabel:IsA("TextLabel") then
				if taskData.IsFallback then
					textlabel.Text = taskData.Text
					if complete then complete.Visible = false end
				else
					textlabel.Text = string.format("%s (%d/%d) (%d%%)", taskData.Text, taskData.Current, taskData.Max, taskData.Percent)
					if complete then
						complete.Visible = (taskData.Current >= taskData.Max)
					end
				end
				frame.Visible = true
			end
		end
	end
end))

function EquipGloveRemote(Value)
	if game:GetService("ReplicatedStorage"):FindFirstChild("_NETWORK") and game:GetService("ReplicatedStorage")._NETWORK:FindFirstChild("SelectGlove [STUDIO]") then
	    game:GetService("ReplicatedStorage")._NETWORK["SelectGlove [STUDIO]"]:FireServer(tostring(Value))
	end
end
function CheckUnlockGlove(Value)
	return game.Players.LocalPlayer:FindFirstChild("_unlockedGloves") and game.Players.LocalPlayer._unlockedGloves:FindFirstChild(Value)
end
function CheckGlove()
	return game.Players.LocalPlayer:FindFirstChild("leaderstats") and game.Players.LocalPlayer.leaderstats:FindFirstChild("Glove") and game.Players.LocalPlayer.leaderstats.Glove.Value
end
function CheckSlap()
	local stats = game.Players.LocalPlayer:FindFirstChild("leaderstats")
	local slaps = stats and stats:FindFirstChild("Slaps")
	if not slaps then return 0 end
	return tonumber(slaps.Value) or 0
end
function IsNetworkOwner(Part)
    return Part.ReceiveAge == 0
end
function couldfound()
	GetCloudYour = nil
	for i,v in pairs(game.Workspace:GetChildren()) do
	    if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("VehicleSeat") then
	        GetCloudYour = v
	    end
	end
	return GetCloudYour
end
function notSlap(part, list)
    if not part then return false end
    for _, v in ipairs(part:GetChildren()) do
        local childName = v.Name:lower()
        for _, b in ipairs(list) do
            if childName:find(b:lower()) then
                return false
            end
        end
    end
    return true
end

if hookmetamethod and getnamecallmethod then
	if not loadingGetOut then
		loadingGetOut = true
		MethodGlove, EquipGlove, ReplicaCount = false, "Default", 0
		getgenv().HookFun = hookmetamethod(game, "__namecall", function(method, ...) 
			local args = {...}
			local methodcall = getnamecallmethod()
		    if methodcall == "FireServer" then
			    if ((tostring(method) == "GoldenHit" and EquipGlove:lower():find("golden")) or (tostring(method) == "GeneralHit" and (EquipGlove:lower():find("glovel") or EquipGlove:lower():find("mace") or EquipGlove:lower():find("charge") or EquipGlove:lower():find("stalker")))) and MethodGlove == true then
					if not EquipGlove:lower():find("stalker") then
						args[2] = (EquipGlove:lower():find("mace") and 200 or true)
					else
						args[3] = 48
					end
					return getgenv().HookFun(method, unpack(args))
				end
				if tostring(method) == "GeneralAbility" then
					if args[1] == "antispam" and getgenv().AntiSpamBypass then
						return
					end
					if MethodGlove == true and EquipGlove:lower():find("frostbite") then
						if type(args[1]):find("number") and type(args[2]):find("number") then
							args[1] = 3
							args[2] = 2
						end
					end
				end
				if tostring(method) == "Piano" and getgenv().AntiPiano then
					return
				end
				if tostring(method) == "Duplicate" and args[1] == true then
					ReplicaCount += 1
				end
			elseif methodcall == "InvokeServer" then
				if tostring(method) == "Psychokinesis" and MethodGlove == true then
					if typeof(args[1]) == "table" and typeof(args[1]["throwbackAlpha"]) == "number" then
						args[1]["throwbackAlpha"] = math.huge
						return getgenv().HookFun(method, unpack(args))
					end
				end
			elseif methodcall == "FireClient" or methodcall == "FireAllClients" then
				if tostring(method) == "Confuse" and getgenv().AntiConfuse then
					return
				end
				if tostring(method) == "VFX" then
					if args[1] == "NightmareEffect" and getgenv().AntiNightmare then
						return 
					end
				end
		    end
			return getgenv().HookFun(method, ...)
		end)
	end
end

local function combinations(list, n)
	local result = {}
	local function recurse(start, combo)
		if #combo == n then
			table.insert(result, table.clone(combo))
			return
		end
		for i = start, #list do
			table.insert(combo, list[i])
			recurse(i + 1, combo)
			table.remove(combo)
		end
	end
	recurse(1, {})
	return result
end

function findGroup(maxDist, groupSize)
	local players = {}
	for i, v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Ragdolled") and not v.Character.HumanoidRootPart:FindFirstChild("BlockedShield") and v.Character.Ragdolled.Value == false and v.Character.isInArena.Value == true and notSlap(v.Character, BlackList)then
			table.insert(players, v)
		end
	end
	if #players ~= 0 then
		for _, v in ipairs(combinations(players, groupSize)) do
			local allClose = true
			for i = 1, #v do
				for j = i+1, #v do
					local c1 = v[i].Character
					local c2 = v[j].Character
					if not (c1 and c1:FindFirstChild("HumanoidRootPart") and c2 and c2:FindFirstChild("HumanoidRootPart")) then
						allClose = false
						break
					end
					local p1 = c1.HumanoidRootPart.Position
					local p2 = c2.HumanoidRootPart.Position
					if (p1 - p2).Magnitude >= maxDist then
						allClose = false
						break
					end
				end
				if not allClose then break end
			end
			if allClose then
				return v
			end
		end
	end
	return nil
end

function equipglove(name)
	if CheckGlove():lower() ~= name:lower() then
		EquipGloveRemote(name)
		local click = workspace.Lobby:FindFirstChild(name)
		if click and fireclickdetector then
			fireclickdetector(click.ClickDetector)
		end
	end
end

function slapglove(obj)
	local current = CheckGlove()
	local arg
	if gloveHits[current] then
		gloveHits[current]:FireServer(obj)
	else
		if current then
			if current:lower() == "stalker" then
				arg = {obj, false, 45}
			elseif current:lower() == "glovel" then
				arg = {obj, true}
			elseif current:lower() == "mace" then
				arg = {obj, 100}
			else
				arg = {obj}
			end
			gloveHits["All"]:FireServer(unpack(arg))
		end
	end
end

---SafeSpotSpace---

if not workspace:FindFirstChild("SafeBoxSpace") then
	Create("Part", {
		Name = "SafeBoxSpace",
		Anchored = true,
		CanCollide = true,
		Transparency = 0.5,
		Position = Vector3.new(0, 15000, 0),
		Size = Vector3.new(150, 5, 150),
		Parent = workspace
	})
end

---SafeBox---

if not workspace:FindFirstChild("SafeBox") then
	local SafeBox = Create("Part", {
		Name = "SafeBox",
		Anchored = true,
		CanCollide = true,
		Transparency = 0.5,
		Position = Vector3.new(-5500, -5000, -5000),
		Size = Vector3.new(21, 5, 21),
		Parent = workspace
	}, {
		Create("Part", {
			Name = "S1",
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5,
			Position = Vector3.new(-5499.91, -4991.5, -4989.09),
			Size = Vector3.new(20, 13, 2)
		}),
		Create("Part", {
			Name = "S2",
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5,
			Size = Vector3.new(21, 14, 2),
			CFrame = CFrame.new(-5510.27979, -4991.5, -5000.08984) * CFrame.Angles(0, math.rad(-90), 0),
		}),
		Create("Part", {
			Name = "S3",
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5,
			Position = Vector3.new(-5499.3, -4991.5, -5011.12),
			Size = Vector3.new(21, 13, 2)
		}),
		Create("Part", {
			Name = "S4",
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5,
			Size = Vector3.new(22, 13, 2),
			CFrame = CFrame.new(-5489.97559, -4991.5, -4999.52637) * CFrame.Angles(0, math.rad(-90), 0)
		}),
		Create("Part", {
			Name = "S5",
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5,
			Position = Vector3.new(-5499.39, -4984, -5000.07),
			Size = Vector3.new(24, 3, 24)
		})
	})

	for _, v in ipairs(workspace.SafeBox:GetChildren()) do
		if v:IsA("BasePart") and v ~= workspace.SafeBox then
			Create("WeldConstraint", {Part0 = workspace.SafeBox, Part1 = v, Name = v.Name.." (Weld)", Parent = workspace.SafeBox})
			v.Anchored = false
		end
	end
end

---Bed---

if not workspace:FindFirstChild("Bed") then
	local Bed = Create("Part", {
		Name = "Bed",
		Anchored = true,
		CanCollide = false,
		Transparency = 1,
		Position = Vector3.new(-100019.5, 104, -1500),
		Size = Vector3.new(0.01, 0.01, 0.01),
		Parent = workspace
	}, {
		Create("Part", {
			Name = "Bed1",
			Anchored = true,
			Position = Vector3.new(-100025, 104, -1500),
			Size = Vector3.new(1, 6, 7),
			BrickColor = BrickColor.new("Burnt Sienna")
		}),
		Create("Part", {
			Name = "Bed2",
			Anchored = true,
			Position = Vector3.new(-100023, 104.5, -1500),
			Size = Vector3.new(2, 1, 6),
			BrickColor = BrickColor.new("Mid gray")
		}),
		Create("Part", {
			Name = "Bed3",
			Anchored = true,
			Position = Vector3.new(-100019, 104, -1500),
			Size = Vector3.new(11, 1, 7),
			BrickColor = BrickColor.new("Crimson")
		}),
		Create("Part", {
			Name = "Bed4",
			Anchored = true,
			Position = Vector3.new(-100013, 104, -1500),
			Size = Vector3.new(1, 6, 7),
			BrickColor = BrickColor.new("Burnt Sienna")
		}),
		Create("Part", {
			Name = "Bed5",
			Anchored = true,
			Position = Vector3.new(-100019, 103, -1500),
			Size = Vector3.new(11, 1, 7),
			BrickColor = BrickColor.new("Dark orange")
		})
	})
	
	for _, v in ipairs(workspace.Bed:GetChildren()) do
		if v:IsA("BasePart") and v ~= workspace.Bed then
			Create("WeldConstraint", {Part0 = workspace.Bed, Part1 = v, Name = v.Name.." (Weld)", Parent = workspace.Bed})
			v.Anchored = false
		end
	end
end

---SafeSpot---

if not workspace:FindFirstChild("Safespot") then
	local Safespot = Create("Part", {
		Name = "Safespot",
		Position = Vector3.new(10000,-50,10000),
		Size = Vector3.new(500,10,500),
		Anchored = true,
		CanCollide = true,
		Transparency = 0.5,
		Parent = workspace
	}, {
		Create("Part", {
			Name = "DefendPart",
			Position = Vector3.new(10000.2, 13, 9752.45),
			Size = Vector3.new(500, 117, 5),
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5
		}),
		Create("Part", {
			Name = "DefendPart1",
			Position = Vector3.new(10248.2, 13, 10002.4),
			Size = Vector3.new(5, 117, 496),
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5
		}),
		Create("Part", {
			Name = "DefendPart2",
			Position = Vector3.new(9998.13, 13, 10247.2),
			Size = Vector3.new(497, 117, 6),
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5
		}),
		Create("Part", {
			Name = "DefendPart3",
			Position = Vector3.new(9752.71, 13, 9999.28),
			Size = Vector3.new(7, 117, 490),
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5
		}),
		Create("Part", {
			Name = "DefendPart4",
			Position = Vector3.new(10001.1, 76, 9999.66),
			Size = Vector3.new(491, 10, 491),
			Anchored = true,
			CanCollide = true,
			Transparency = 0.5
		})
	})
	
	for _, v in ipairs(workspace.Safespot:GetChildren()) do
		if v:IsA("BasePart") and v ~= workspace.Safespot then
			Create("WeldConstraint", {Part0 = workspace.Safespot, Part1 = v, Name = v.Name.." (Weld)", Parent = workspace.Safespot})
			v.Anchored = false
		end
	end
end

---AntiVoidBadge---

if not workspace:FindFirstChild("Psycho") then
	Create("Part", {
		Name = "Psycho",
		Size = Vector3.new(2000,1,2000),
		Anchored = true,
		Transparency = 1,
		CanCollide = false,
		Rotation = Vector3.new(0, 0, 0),
		CFrame = CFrame.new(17800.9082, 2947, -226.017517),
		Parent = workspace
	}, {
		Create("Part", {
			Name = "Kraken",
			Size = Vector3.new(2000,1,2000),
			Anchored = true,
			Transparency = 1,
			CanCollide = false,
			Position = Vector3.new(221,29,-12632)
		}),
		Create("Part", {
			Name = "Retro1",
			Size = Vector3.new(2000,1,2000),
			Anchored = true,
			Transparency = 1,
			CanCollide = false,
			Position = Vector3.new(-16643.6289,770.0464,4707.8193)
		}, {
			Create("Part", {
				Name = "Retro2",
				Size = Vector3.new(2000,1,2000),
				Anchored = true,
				Transparency = 1,
				CanCollide = false,
				Position = Vector3.new(-16862.7910,-7.87957,4791.5551)
			}),
			Create("Part", {
				Name = "Retro3",
				Size = Vector3.new(2000,1,2000),
				Anchored = true,
				Transparency = 1,
				CanCollide = false,
				Position = Vector3.new(-28023.3046,-219.9238,4906.6015)
			})
		})
	})
end

---Anti Void---

if workspace:FindFirstChild("BobWalk1") == nil then
	local BobWalk1 = Create("Part", {
		CanCollide = false,
		Anchored = true,
		CFrame = CFrame.new(23.2798462, -19.8447475, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1),
		Size = Vector3.new(1139.2593994140625, 1.5, 2048),
		Name = "BobWalk1",
		Transparency = 1,
		Parent = workspace
	})
	
	local ExtraWedges = {
		{
			CFrame = CFrame.new(-458.458344, -9.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1),
			Size = Vector3.new(1139.2593994140625, 1.5, 2048),
			Name = "BobWalk2"
		},
		{
			CFrame = CFrame.new(-690.65979, 47.25, 1.83554196, -1, 0, 0, 0, -1, 0, 0, 0, 1),
			Size = Vector3.new(674.8563232421875, 0.6048492789268494, 2048),
			Name = "BobWalk3"
		},
		{
			CFrame = CFrame.new(402.964996, 29.25, 222.310089, -1, 0, 0, 0, -1, 0, 0, 0, 1),
			Size = Vector3.new(379.88922119140625, 1.5, 160.8837127685547),
			Name = "BobWalk4"
		},
		{
			CFrame = CFrame.new(178.719162, -18.9417267, 1.83554196, -0.989596844, -0.143868446, 0, 0.143868446, -0.989596844, 0, 0, 0, 1),
			Size = Vector3.new(143.94830322265625, 1.5, 2048),
			Name = "BobWalk5"
		},
		{
			CFrame = CFrame.new(-309.152832, 15.4761791, 1.83554196, -0.816968799, -0.576681912, 0, 0.576681912, -0.816968799, 0, 0, 0, 1),
			Size = Vector3.new(110.13511657714844, 2.740000009536743, 2048),
			Name = "BobWalk6"
		},
		{
			CFrame = CFrame.new(174.971924, 5.34897423, 222.310089, -0.838688731, 0.544611216, 0, -0.544611216, -0.838688731, 0, 0, 0, 1),
			Size = Vector3.new(89.76103210449219, 1.5, 160.8837127685547),
			Name = "BobWalk7",
		},
		{
			CFrame = CFrame.new(402.965027, 5.49165154, 74.8157959, 2.98023224e-05, -1.14142895e-05, -1, -0.668144584, -0.744031429, -1.14142895e-05, -0.744031489, 0.668144584, -2.98023224e-05),
			Size = Vector3.new(74.23055267333984, 1, 379.88922119140625),
			Name = "BobWalk8"
		},
		{
			Size = Vector3.new(379.88922119140625, 1.5, 39.77305603027344),
			CFrame = CFrame.new(402.964996, 29.9136467, 121.981705, -1,0,0,0,-1,0,0,0,1),
			Name = "BobWalk9"
		},
		{
			Size = Vector3.new(1, 88.66793823242188, 34.42972946166992),
			CFrame = CFrame.new(134.084229, -17.8583984, 94.3953705, 0.541196942, -0.354067981, 0.762719929, -0.840263784, -0.192543149, 0.506837189, -0.0325982571, -0.915184677, -0.401714325),
			Name = "BobWalk10"
		},
		{
			CFrame = CFrame.new(168.441879, 2.46393585, 125.815231, -0.350553155, -0.534268022, 0.769201458, -0.198098332, 0.845035911, 0.496660322, -0.915352523, 0.0217281878, -0.402067661),
			Size = Vector3.new(1, 0.9999924302101135, 82.1865463256836),
			Name = "BobWalk11"
		},
		{
			Name = "BobWalk12",
			Size = Vector3.new(1, 13.53612232208252, 9.847718238830566),
			CFrame = CFrame.new(206.315063, 26.9295502, 105.471031, 0.534210563, -0.415855825, -0.73599112, -0.845072925, -0.285055399, -0.452321947, -0.021697551, 0.863601387, -0.503708005)
		},
		{
			Name = "BobWalk13",
			Size = Vector3.new(1, 13.53612232208252, 99.8001480102539),
			CFrame = CFrame.new(165.965088, 2.12955856, 77.8575592, -0.53421092, -0.415855944, 0.735991359, 0.845073164, -0.285055757, 0.452322066, 0.0216975808, 0.863601625, 0.503708005)
		},
		{
			Name = "BobWalk14",
			Size = Vector3.new(1, 74.23055267333984, 80.699951171875),
			CFrame = CFrame.new(172.67041, 5.49164963, 74.8157959, -4.58955765e-05, 2.05039978e-05, 1, 0.743987858, 0.668193102, 2.05039978e-05, -0.668193102, 0.743987858, -4.58955765e-05)
		},
		{
			Name = "BobWalk15",
			Size = Vector3.new(1, 0.8520558476448059, 39.773048400878906),
			CFrame = CFrame.new(212.753906, 30.0632439, 121.981705, -0.283976078, -0.95883137, 0, 0.95883137, -0.283976078, 0, 0, 0, 1)
		},
		{
			Name = "BobWalk16",
			Size = Vector3.new(1, 36.08900451660156, 16.739320755004883),
			CFrame = CFrame.new(212.884216, 30.1233234, 121.984734, 0.544644356, 0.33412537, -0.769235253, -0.838644743, 0.223680317, -0.496630788, 0.00612583756, 0.915602207, 0.402038693)
		},
		{
			Name = "BobWalk17",
			Size = Vector3.new(1, 36.08900451660156, 82.1865463256836),
			CFrame = CFrame.new(174.83577, 5.55865097, 141.871262, -0.544644356, 0.33412537, 0.769235253, 0.838644743, 0.223680317, 0.496630788, -0.00612583756, 0.915602207, -0.402038693)
		},
		{
			Name = "BobWalk18",
			Size = Vector3.new(1, 88.66793823242188, 47.76289749145508),
			CFrame = CFrame.new(165.427338, 2.97219658, 77.884697, -0.541196942, -0.354067981, -0.762719929, 0.840263784, -0.192543149, -0.506837189, 0.0325982571, -0.915184677, 0.401714325)
		}
	}

	for _, data in ipairs(ExtraWedges) do
		Create("Part", {
			Name = data.Name,
			Size = data.Size,
			CFrame = data.CFrame,
			Anchored = true,
			CanCollide = false,
			Transparency = 1,
			Parent = BobWalk1
		})
	end
	for _, v in ipairs(workspace.BobWalk1:GetChildren()) do
		if v:IsA("BasePart") and v ~= workspace.BobWalk1 then
			Create("WeldConstraint", {Part0 = workspace.BobWalk1, Part1 = v, Name = v.Name.." (Weld)", Parent = workspace.BobWalk1})
			v.Anchored = false
		end
	end
end

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Create("Part", {
	Position = Vector3.new(-80.5, -10.005, -246.5),
	Name = "VoidPart",
	Size = Vector3.new(2048, 1, 2048),
	Anchored = true,
	Transparency = 1,
	CanCollide = false,
	Parent = workspace
}, {
	Create("Part", {
		Name = "TAntiVoid",
		Size = Vector3.new(2048, 15, 2048),
		Position = Vector3.new(3393, 228, 97),
		Anchored = true,
		Transparency = 1,
		CanCollide = false,
	})
})
end
elseif game.PlaceId == 9431156611 then
	local Remotes = game.ReplicatedStorage.Remotes
	if Remotes:FindFirstChild("Ban") then
		Remotes:FindFirstChild("Ban"):Destroy()
	end
	if Remotes:FindFirstChild("Grab") then
		Remotes:FindFirstChild("Grab"):Destroy()
	end
	if Remotes:FindFirstChild("LegacyBan") then
		Remotes:FindFirstChild("LegacyBan"):Destroy()
	end
	if Remotes:FindFirstChild("LegacyAntiCheatFunction") then
		Remotes:FindFirstChild("LegacyAntiCheatFunction"):Destroy()
	end
end
Loading:SetCurrentStep(2)
task.wait(3)