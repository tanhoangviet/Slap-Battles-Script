------------------------------------------------------------------------
table.insert(_G.ConnectFun, game.Players.LocalPlayer.OnTeleport:Connect(function()
if not Toggles["ExecuteOnTeleport"].Value or getgenv().LoadingExe then return end
if CheckExecutorSupport and not CheckExecutorSupport("queue_on_teleport", "ExecuteOnTeleport") then return end
getgenv().LoadingExe = true
local ExecuteNowTP = queueonteleport or queue_on_teleport
if ExecuteNowTP then
ExecuteNowTP([[
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    repeat wait() until game.Players.LocalPlayer
    loadstring(game:HttpGet("https://github.com/tanhoangviet/Slap-Battles-Script/releases/latest/download/main.luau"))()
]])
end
end))
