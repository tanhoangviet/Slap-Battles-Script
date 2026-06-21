------------------------------------------------------------------------
table.insert(_G.ConnectFun, game.Players.LocalPlayer.OnTeleport:Connect(function()
if not Toggles["ExecuteOnTeleport"].Value or getgenv().LoadingExe then return end
getgenv().LoadingExe = true
local ExecuteNowTP = queueonteleport or queue_on_teleport
if ExecuteNowTP then
ExecuteNowTP([[
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    repeat wait() until game.Players.LocalPlayer
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/File-Script/Slap_Battles.lua"))()
]])
end
end))
