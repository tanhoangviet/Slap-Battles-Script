elseif game.PlaceId == 122901288403496 then
function InTable(t, value)
	for _, v in ipairs(t) do
		if v == value then
			return true
		end
	end
	return false
end

Window:ChangeTitle("JOB APPLICATION!!! 📦")
Tabs = {
	Tab = Window:AddTab("Main", SolarIcon.Main),
	["UI Settings"] = Window:AddTab("UI Settings", SolarIcon.Settings)
}

local MainGroup = Tabs.Tab:AddLeftGroupbox("Clean Trash")

MainGroup:AddButton("Collect Mop / Broom", function()
	for i, v in pairs(workspace.Tools.Prompts:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
			wait(0.5)
			fireproximityprompt(v)
		end
	end
end)

local function Unequip()
	for _, v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game.Players.LocalPlayer.Backpack
		end
	end
end
local function Equip(toolName)
	Unequip()
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(toolName)
	if tool and game.Players.LocalPlayer.Character then
		tool.Parent = game.Players.LocalPlayer.Character
	end
end
MainGroup:AddToggle("Auto Clean Trash", {
    Text = "Auto Clean Trash",
    Default = false, 
    Callback = function(Value) 
_G.AutoCleanTrash = Value
while _G.AutoCleanTrash do
for i, v in pairs(workspace.Trash.Instances:GetChildren()) do
	if v.Name == "TrashPile" and v:FindFirstChild("trash pile") then
		OldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Equip("Broom")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["trash pile"].CFrame * CFrame.new(0, 5, 0)
		repeat task.wait()
			game:GetService("ReplicatedStorage").Remotes.CleanTrash:FireServer(v)
		until not (v and v:FindFirstChild("trash pile"))
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
	elseif v.Name == "TrashSpill" and v:FindFirstChild("Slime") then
		OldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		Equip("Mop")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v["Slime"].CFrame * CFrame.new(0, 5, 0)
		repeat task.wait()
			game:GetService("ReplicatedStorage").Remotes.CleanTrash:FireServer(v)
		until not (v and v:FindFirstChild("Slime"))
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
	end
end
task.wait()
end
    end
})

local MainGroup1 = Tabs.Tab:AddRightGroupbox("Misc")

MainGroup1:AddToggle("Auto Stock Shelf Glove", {
    Text = "Auto Stock Shelf Glove",
    Default = false, 
    Callback = function(Value) 
_G.AutoStockGlove = Value
while _G.AutoStockGlove do
for _, v in ipairs(workspace.GloveShipment:GetChildren()) do
    if v:IsA("Model") and v.Name:lower():find("stockbox_") and v:FindFirstChild("Box") then      
        local FoundGlove = v.Name:match("_(.+)")
        if not FoundGlove then continue end
        repeat task.wait()
            game:GetService("ReplicatedStorage").Remotes.PickupBox:FireServer(v)
        until workspace:FindFirstChild("HeldBox_" .. FoundGlove)
        for _, sh in ipairs(workspace.Shelves:GetChildren()) do
            if sh:IsA("Model") and sh:FindFirstChild("Base") and workspace:FindFirstChild("HeldBox_" .. FoundGlove) then
                local hasGlove = false
				function GloveSh()
	                for _, j in pairs(sh:GetDescendants()) do
	                    if j.Name:match("Glove") then
	                        return true
	                    end
	                end
					return false
				end
                if GloveSh() then continue end
                repeat task.wait()
                    game:GetService("ReplicatedStorage").Remotes.StockShelf:FireServer(sh)
                until not workspace:FindFirstChild("HeldBox_" .. FoundGlove) or GloveSh() 
                break
            end
        end
    end
end
task.wait()
end
    end
})

MainGroup1:AddButton("Teleport Sell Glove", function()
	if workspace.Counter:FindFirstChild("ItemPlacement") then
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Counter.ItemPlacement.CFrame * CFrame.new(-5, 0, 0)
		end
	end
end)

MainGroup1:AddToggle("Auto Sell Glove", {
    Text = "Auto Sell Glove",
    Default = false, 
    Callback = function(Value) 
_G.AutoSellGlove = Value
while _G.AutoSellGlove do
for i, v in ipairs(workspace:GetChildren()) do
	for _, n in pairs(v:GetChildren()) do
		if n.Name:find("Glove") then
			if not n.Parent.Name:lower():find("heldcheckoutitem_") then
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PickupCheckoutItem"):FireServer(n.Parent)
			else
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ScanCheckoutItem"):FireServer(n.Parent.Name:match("_(.+)"))
			end
		end
	end
end
task.wait()
end
    end
})

MainGroup1:AddButton("Find Glove Sell", function()
	local NoSellGlove = {"bob", "bubble", "lamp", "l.o.l.b.o.m.b", "overkill", "plague", "sbeve", "ufo"}
	local Found = {}
	local gui = game.Players.LocalPlayer.PlayerGui
	local list = gui.WholesaleOrdering.Canvas.Listings.ScrollingFrame
	for _, v in ipairs(list:GetChildren()) do
		if v.Name:lower():find("listing") and v:FindFirstChild("Topbar") then
			local glove = v.Topbar.ItemName.Text:lower():match("^(.-)%s*%[")
			if InTable(NoSellGlove, glove) and not gui.Displays.subBarHolder.day.Text:match("5") then continue end
			local profit = tonumber(v.ExpectedProfit.Text:sub(2))
			local cost = tonumber(v.Cost.Text:sub(2))
			if profit and cost then
				table.insert(Found, {v, profit, cost})
			end
		end
	end
	table.sort(Found, function(a, b)
		return a[2] > b[2]
	end)
	local Money = tonumber(gui.Displays.topBarHolder.cash.Text:sub(2)) or 0
	for _, v in ipairs(Found) do
		if Money >= v[3] then
			Money -= v[3]
			if firesignal then
				firesignal(v[1].Activated)
			end
			local FindItemName = v[1]:FindFirstChild("ItemName", true)
			if FindItemName then
				local ItemClone = FindItemName:Clone()
				ItemClone.Parent = v[1]
				ItemClone.Text = "Choose Here"
				local function CheckToClick()
					if ItemClone then
						if v[1].BackgroundColor3 == Color3.fromRGB(58, 158, 95) then
							ItemClone.Text = ""
						elseif v[1].BackgroundColor3 == Color3.fromRGB(111, 111, 111) then
							ItemClone.Text = "Choose Here"
						end
					end
				end
				CheckToClick()
				v[1].MouseButton1Click:Connect(CheckToClick)
			end
		end
	end
end)
