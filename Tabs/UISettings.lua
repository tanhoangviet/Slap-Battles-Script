if Window and Tabs then
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu") 
local Info = Tabs["UI Settings"]:AddRightGroupbox("Info")

MenuGroup:AddDropdown("NotifySide", {
    Text = "Notification Side",
    Values = {"Left", "Right"},
    Default = "Right",
    Multi = false,
    Callback = function(Value)
Library.NotifySide = Value
    end
})

_G.ChooseNotify = "Obsidian"
MenuGroup:AddDropdown("NotifyChoose", {
    Text = "Notification Choose",
    Values = {"Obsidian", "Roblox"},
    Default = "",
    Multi = false,
    Callback = function(Value)
_G.ChooseNotify = Value
    end
})

_G.BackpackV2 = true
MenuGroup:AddToggle("Backpack v2", {
    Text = "Backpack v2",
    Default = true, 
    Callback = function(Value) 
_G.BackpackV2 = Value 
    end
})

_G.GloveDrop = false
MenuGroup:AddToggle("Glove Drop", {
    Text = "Glove Drop Unequipped",
    Default = false, 
    Callback = function(Value) 
_G.GloveDrop = Value 
    end
})

_G.NotificationSound = true
MenuGroup:AddToggle("NotifySound", {
    Text = "Notification Sound",
    Default = true, 
    Callback = function(Value) 
_G.NotificationSound = Value 
    end
})

MenuGroup:AddSlider("Volume Notification", {
    Text = "Volume Notification",
    Default = 2,
    Min = 2,
    Max = 10,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
_G.VolumeTime = Value
    end
})

MenuGroup:AddSlider("Time Notification", {
    Text = "Time Notification",
    Default = 5,
    Min = 1,
    Max = 25,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
_G.TimeNotify = Value
    end
})

MenuGroup:AddToggle("KeybindMenuOpen", {Default = false, Text = "Open Keybind Menu", Callback = function(Value) Library.KeybindFrame.Visible = Value end})
MenuGroup:AddToggle("ShowCustomCursor", {Text = "Custom Cursor", Default = true, Callback = function(Value) Library.ShowCustomCursor = Value end})
MenuGroup:AddToggle("ExecuteOnTeleport", {Default = true, Text = "Execute On Teleport"})
MenuGroup:AddDropdown("DPIDropdown", {
    Values = {"50%", "75%", "80%", "85%", "100%", "115%", "125%", "150%", "175%", "200%"},
    Default = "100%",
    Text = "DPI Scale",
    Callback = function(Value)
        Value = Value:gsub("%%", "")
        local He = tonumber(Value)
        Library:SetDPIScale(He)
    end
})

MenuGroup:AddSlider("UICornerSlider", {
    Text = "Corner Radius",
    Default = Library.CornerRadius,
    Min = 0,
    Max = 20,
    Rounding = 0,
    Callback = function(value)
        Window:SetCornerRadius(value)
    end
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {Default = "RightShift", NoUI = true, Text = "Menu keybind"})
MenuGroup:AddButton("Unload", function() Library:Unload() end)
Info:AddLabel("Counter [ "..game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer).." ]", true)
Info:AddLabel("Executor [ "..identifyexecutor().." ]", true)
Info:AddLabel("Job Id [ "..game.JobId.." ]", true)
Info:AddDivider()
Info:AddButton("Copy JobId", function()
    if setclipboard then
        setclipboard(tostring(game.JobId))
        Library:Notify("Copied Success")
    else
        Library:Notify(tostring(game.JobId), 10)
    end
end)

Info:AddInput("Join Job", {
    Default = "Nah",
    Numeric = false,
    Text = "Join Job",
    Placeholder = "UserJobId",
    Callback = function(Value)
_G.JobIdJoin = Value
    end
})

Info:AddButton("Join JobId", function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.JobIdJoin, game.Players.LocalPlayer)
end)

Info:AddButton("Copy Join JobId", function()
    if setclipboard then
        setclipboard('game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, "'..game.JobId..'"'..", game.Players.LocalPlayer)")
        Library:Notify("Copied Success") 
    else
        Library:Notify(tostring(game.JobId), 10)
    end
end)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:BuildConfigSection(Tabs["UI Settings"])
ThemeManager:ApplyToTab(Tabs["UI Settings"])
SaveManager:LoadAutoloadConfig()
end

Library:OnUnload(function()
	_G.BackpackV2 = false
	_G.BackpackV2Loop = false
	_G.GloveDropUnEquipped = false
	if _G.ConnectFun then
		for i, v in pairs(_G.ConnectFun) do
			v:Disconnect()
		end
	_G.ConnectFun = nil
	end
	local CoreGui = game.CoreGui
	if CoreGui:FindFirstChild("Gui Track") then
		CoreGui:FindFirstChild("Gui Track"):Destroy()
	end
	if CoreGui:FindFirstChild("Gui Button Script") then
		CoreGui:FindFirstChild("Gui Button Script"):Destroy()
	end
	if CoreGui:FindFirstChild("Keybind Script") then
		CoreGui:FindFirstChild("Keybind Script"):Destroy()
	end
	if CoreGui:FindFirstChild("ClickButton") then
		CoreGui:FindFirstChild("ClickButton"):Destroy()
	end
	if getgenv().HookNamecallInstalled then
		getgenv().HookDisabled = true
	end
	if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Hotbar") then
		game:GetService("CoreGui").RobloxGui.Backpack.Hotbar.Position = _G.Backpack["Old"]["Hotbar"]
	end
	if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Inventory") then
		game:GetService("CoreGui").RobloxGui.Backpack.Inventory.Position = _G.Backpack["Old"]["Inventory"]
	end
	for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
		if v:IsA("TextButton") and v:FindFirstChild("Number") then
			v.Number.Position = _G.Backpack["Old"]["Backpack Number"][v.Name]
		end
	end
	if game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:FindFirstChild("UIListLayout") then
		game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:FindFirstChild("UIListLayout"):Destroy()
	end
	for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
		if v:IsA("TextButton") then
			if v:FindFirstChild("Equipped") then
				v.Equipped.Visible = true
			end
			if v:FindFirstChild("SelectionObjectClipper") then
				v.SelectionObjectClipper.Visible = false
			end
			if v:FindFirstChild("UICorner") then
				v:FindFirstChild("UICorner"):Destroy()
			end
		end
	end
	for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Inventory.ScrollingFrame.UIGridFrame:GetChildren()) do
		if v:IsA("TextButton") then
			if v:FindFirstChild("Equipped") then
				v.Equipped.Visible = true
			end
			if v:FindFirstChild("SelectionObjectClipper") then
				v.SelectionObjectClipper.Visible = false
			end
			if v:FindFirstChild("UICorner") then
				v:FindFirstChild("UICorner"):Destroy()
			end
		end
	end
	for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Inventory:GetChildren()) do
		if v.Name == "Search" then
			if v:FindFirstChild("UICorner") then
				v:FindFirstChild("UICorner"):Destroy()
			end
			if v:FindFirstChild("X") and v["X"]:FindFirstChild("UICorner") then
				v["X"]:FindFirstChild("UICorner"):Destroy()
			end
		end
	end
	if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Inventory") and game:GetService("CoreGui").RobloxGui.Backpack.Inventory:FindFirstChild("UICorner") then
		game:GetService("CoreGui").RobloxGui.Backpack.Inventory:FindFirstChild("UICorner"):Destroy()
	end
	_G.Backpack = nil
	gloveHits = nil
	if AutoSetInfoServer then
		AutoSetInfoServer:Disconnect()
		AutoSetInfoServer = nil
	end
end)

