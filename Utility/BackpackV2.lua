_G.BackpackV2Loop = true
if _G.Backpack == nil then
_G.Backpack = {
	["Old"] = {
		["Hotbar"] = game:GetService("CoreGui").RobloxGui.Backpack.Hotbar.Position,
		["Inventory"] = game:GetService("CoreGui").RobloxGui.Backpack.Inventory.Position,
		["Backpack Number"] = {}
	},
	["New"] = {
		["Hotbar"] = (game:GetService("CoreGui").RobloxGui.Backpack.Hotbar.Position + UDim2.new(0, 0, 0, -10)),
		["Inventory"] = (game:GetService("CoreGui").RobloxGui.Backpack.Inventory.Position + UDim2.new(0, 0, 0, -10)),
		["Backpack Number"] = {}
	}
}
wait()
for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
if v:IsA("TextButton") then
_G.Backpack["Old"]["Backpack Number"][v.Name] = v.Position
_G.Backpack["New"]["Backpack Number"][v.Name] = UDim2.new(0, 3, 0, 3)
end
end
end
spawn(function()
while _G.BackpackV2Loop do
if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Hotbar") then
game:GetService("CoreGui").RobloxGui.Backpack.Hotbar.Position = (_G.BackpackV2 == true and (_G.Backpack["New"]["Hotbar"]) or (_G.Backpack["Old"]["Hotbar"]))
end
if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Inventory") then
game:GetService("CoreGui").RobloxGui.Backpack.Inventory.Position = (_G.BackpackV2 == true and (_G.Backpack["New"]["Inventory"]) or (_G.Backpack["Old"]["Inventory"]))
end
for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
if v:IsA("TextButton") and v:FindFirstChild("Number") then
v.Number.Position = (_G.BackpackV2 == true and (_G.Backpack["New"]["Backpack Number"][v.Name]) or (_G.Backpack["Old"]["Backpack Number"][v.Name]))
end
end
if _G.BackpackV2 == true then
if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Inventory").Visible == false then
if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Hotbar"):FindFirstChild("UIListLayout") == nil then
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Parent = game:GetService("CoreGui").RobloxGui.Backpack.Hotbar
end
else
if game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:FindFirstChild("UIListLayout") then
game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:FindFirstChild("UIListLayout"):Destroy()
end
end
for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
if v:IsA("TextButton") then
if v:FindFirstChild("Equipped") then
v.Equipped.Visible = false
end
if v:FindFirstChild("Equipped") and v:FindFirstChild("SelectionObjectClipper") then
v.SelectionObjectClipper.Visible = true
else
v.SelectionObjectClipper.Visible = false
end
if v:FindFirstChild("UICorner") == nil then
local RobloxUi = Instance.new("UICorner", v)
RobloxUi.CornerRadius = UDim.new(0, 10)
end
end
end
for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Inventory.ScrollingFrame.UIGridFrame:GetChildren()) do
if v:IsA("TextButton") then
if v:FindFirstChild("Equipped") then
v.Equipped.Visible = false
end
if v:FindFirstChild("Equipped") and v:FindFirstChild("SelectionObjectClipper") then
v.SelectionObjectClipper.Visible = true
else
v.SelectionObjectClipper.Visible = false
end
if v:FindFirstChild("UICorner") == nil then
local RobloxUi = Instance.new("UICorner", v)
RobloxUi.CornerRadius = UDim.new(0, 10)
end
end
end
for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Inventory:GetChildren()) do
if v.Name == "Search" then
if v:FindFirstChild("UICorner") == nil then
local RobloxUi = Instance.new("UICorner", v)
RobloxUi.CornerRadius = UDim.new(0, 10)
end
if v:FindFirstChild("X") and v["X"]:FindFirstChild("UICorner") == nil then
local RobloxUi = Instance.new("UICorner", v["X"])
RobloxUi.CornerRadius = UDim.new(0, 10)
end
end
end
if game:GetService("CoreGui").RobloxGui.Backpack:FindFirstChild("Inventory") and game:GetService("CoreGui").RobloxGui.Backpack.Inventory:FindFirstChild("UICorner") == nil then
local RobloxUi = Instance.new("UICorner", game:GetService("CoreGui").RobloxGui.Backpack.Inventory)
RobloxUi.CornerRadius = UDim.new(0, 10)
end
elseif _G.BackpackV2 == false then
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
end
task.wait()
end
end)

local function BackpackV2(v)
v.MouseEnter:Connect(function()
if _G.BackpackV2 == true then
local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://10066942189"
sound.Volume = 2
sound.PlaybackSpeed = 1
sound.PlayOnRemove = true
sound:Destroy()
game:GetService("TweenService"):Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 70, 0, 70)}):Play()
end
end)
v.MouseLeave:Connect(function()
if _G.BackpackV2 == true then
local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://10066942189"
sound.Volume = 2
sound.PlaybackSpeed = 1
sound.PlayOnRemove = true
sound:Destroy()
game:GetService("TweenService"):Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 60, 0, 60)}):Play()
end
end)
v.MouseButton1Click:Connect(function()
if _G.BackpackV2 == true then
local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://10066936758"
sound.Volume = 2
sound.PlaybackSpeed = 1
sound.PlayOnRemove = true
sound:Destroy()
local TweenGui = game:GetService("TweenService"):Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 70, 0, 70)})
TweenGui:Play()
TweenGui.Completed:Connect(function()
game:GetService("TweenService"):Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 60, 0, 60)}):Play()
end)
end
end)
end

for i, v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Hotbar:GetChildren()) do
if v:IsA("TextButton") then
BackpackV2(v)
end
end
table.insert(_G.ConnectFun, game:GetService("CoreGui").RobloxGui.Backpack.Inventory.ScrollingFrame.UIGridFrame.ChildAdded:Connect(function(v)
if v:IsA("TextButton") then
BackpackV2(v)
end
end))
