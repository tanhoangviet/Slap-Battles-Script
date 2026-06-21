elseif game.PlaceId == 15228348051 then
spawn(function()
	repeat task.wait()
		local success, gloves = pcall(function()
			return require(game.ReplicatedStorage.TowerDefenceAssets.TD_Dictionary)
		end)
		if success then
			_G.TDDefence = gloves
		end
	until _G.TDDefence
end)

local LocalPlayer = game.Players.LocalPlayer
local DefenceFile = game.Workspace.Maps:WaitForChild(LocalPlayer.Name.."'s Map"):WaitForChild("Defences")
local TD_Event = game:GetService("ReplicatedStorage"):WaitForChild("TowerDefenceAssets"):WaitForChild("TD_Event")

if LocalPlayer:GetAttribute("CurrentMap") and LocalPlayer:GetAttribute("CurrentMap"):lower() == "mapfarm" then
	SaveDefence = {
	    ["Scarecrow"] = {
	        CFrame.new(18.160, 9.250, -18.350),
	        CFrame.new(18.674, 9.250, -21.802),
	        CFrame.new(15.060, 9.250, -17.360),
	        CFrame.new(17.183, 9.250, -19.138),
	        CFrame.new(16.553, 9.250, -20.415),
	    },
	    ["Farmer2"] = {
	        CFrame.new(46.449, 9.900, -9.293),
	        CFrame.new(26.838, 9.900, 22.784),
	        CFrame.new(58.493, 9.900, 14.624),
	        CFrame.new(20.492, 9.900, 41.426),
	    },
	    ["Farmer1"] = {
	        CFrame.new(-2.882, 9.900, 7.012),
	        CFrame.new(-0.657, 9.900, 6.825),
	        CFrame.new(1.067, 9.900, 6.587),
	        CFrame.new(3.232, 9.900, 6.386),
	        CFrame.new(5.214, 9.900, 5.814),
	    },
	    ["Farmer Tencelll"] = {
	        CFrame.new(21.962, 9.150, -11.323),
	        CFrame.new(80.139, 9.150, -4.739),
	        CFrame.new(37.594, 9.150, 6.968),
	    }
	}
else
	SaveDefence = {
	    ["Defence2"] = {
	        CFrame.new(29.400, 9.667, 4.490),
	        CFrame.new(67.450, 9.667, 22.996),
	        CFrame.new(19.844, 9.667, 8.144),
	        CFrame.new(24.326, 9.667, 50.881),
	        CFrame.new(14.049, 9.667, 32.988),
	    },
	    ["Defence3"] = {
	        CFrame.new(22.585, 9.150, 23.971),
	        CFrame.new(58.277, 9.150, 21.029),
	        CFrame.new(55.227, 9.150, 22.113),
	        CFrame.new(22.134, 9.150, -13.296),
	        CFrame.new(30.495, 9.150, 18.987),
	        CFrame.new(48.039, 9.150, -15.423),
	    },
	    ["Defence1"] = {
	        CFrame.new(23.324, 9.667, -10.980),
	        CFrame.new(50.683, 9.667, -7.535),
	        CFrame.new(50.611, 9.667, 9.831),
	        CFrame.new(38.331, 9.667, -13.706),
	        CFrame.new(38.883, 9.667, 16.625),
	        CFrame.new(48.638, 9.667, -18.055),
	        CFrame.new(49.790, 9.667, 2.143),
	        CFrame.new(53.311, 9.667, 14.962),
	    }
	}
end

Window:ChangeTitle("Map Tower Defence 🌻")
Tabs = {
	Tab = Window:AddTab("Main", "rbxassetid://4370318685"),
	["UI Settings"] = Window:AddTab("UI Settings", "rbxassetid://7733955511")
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Main")

MainGroup:AddButton("Get Badge", function()
local function DeployDefences(targetName)
    local cframe = SaveDefence[targetName]
    if not cframe then return end
    for _, targetCF in ipairs(cframe) do
        repeat task.wait(0.7)
            local found = false
            for _, v in pairs(DefenceFile:GetChildren()) do
                if v.Name == targetName and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - targetCF.Position).Magnitude < 1 then
                    found = true
                    break
                end
            end
            wait(0.5)
			if not found and _G.TDDefence and _G.TDDefence.Defences[targetName] then
                local cost = _G.TDDefence.Defences[targetName].Cost
                local currentGold = LocalPlayer:GetAttribute("Gold")
                if currentGold >= cost then
				    TD_Event:FireServer("PlaceDefence", {
                        ["cf"] = targetCF,
                        ["defencename"] = targetName
                    })
                    wait(0.5)
                end
			end
        until found == true
    end
end
if LocalPlayer:GetAttribute("CurrentMap"):lower() == "mapfarm" then
	DefenceList = {"Scarecrow", "Farmer1", "Farmer2", "Farmer Tencelll"}
else
	DefenceList = {"Defence1", "Defence2", "Defence3"}
end
for _, v in ipairs(DefenceList) do
    DeployDefences(v)
end
while task.wait() do
    if _G.TDDefence then
        for _, v in pairs(DefenceFile:GetChildren()) do
            local config = _G.TDDefence.Defences[v.Name]
            local level = v:GetAttribute("Level")
            if config and level and level < 3 then
                local baseCost = tonumber(config.Cost) or 0
                local upgradeCost = baseCost * 1.3 * level
                if LocalPlayer:GetAttribute("Gold") >= upgradeCost then
                    TD_Event:FireServer("Upgrade", {["defence"] = v})
                end
            end
        end
    end
end
end)
