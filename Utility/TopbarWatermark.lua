local tanhoangviet = "https://raw.githubusercontent.com/tanhoangviet/ToolForLua/refs/heads/main/"
local tpx = loadstring(game:HttpGet(tanhoangviet.."TopbarPlus_Extended.lua"))()
local Ex = tpx.Ex
local Pre = tpx.Presets
local wminfo = Ex.watermark({
    realtime = true,
    interval = 1,
    color = Color3.fromRGB(180, 220, 255),
})

local FrameTimer = tick()
local FrameCounter = 0
local FPS = 60
table.insert(_G.ConnectFun, game:GetService("RunService").RenderStepped:Connect(function()
FrameCounter += 1
if (tick() - FrameTimer) >= 1 then
    FPS = FrameCounter
    FrameTimer = tick()
    FrameCounter = 0
end
local t = workspace.DistributedGameTime
local hours = math.floor(t / 3600)
local minutes = math.floor((t % 3600) / 60)
local seconds = math.floor(t % 60)
wminfo.setText(("FPS: %s | %s MS | %02d Hour / %02d Minute / %02d Second"):format(
    math.floor(FPS),
    math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()),
    hours, minutes, seconds
))
end))
