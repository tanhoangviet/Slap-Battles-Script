if not game:IsLoaded() then
    game.Loaded:Wait()
end

if Library then
	Library:Unload()
end
if getgenv().LoadingScriptSlap then return end
getgenv().LoadingScriptSlap = true
pcall(function()
Fixed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/SCRIPT/Fix.lua"))()
fireclickdetector = fireclickdetector or Fixed.fireclickdetector
fireproximityprompt = fireproximityprompt or Fixed.fireproximityprompt
end)
----========== Script Start ===========----
local repo = "https://raw.githubusercontent.com/tanhoangviet/Obsidian-UI-Modded/main/"
local repoCacheKey = tostring(os.time())
local function RepoAsset(Path)
    return repo .. Path .. "?v=" .. repoCacheKey
end

local Library = loadstring(game:HttpGet(RepoAsset("Library.lua")))()
local ThemeManager = loadstring(game:HttpGet(RepoAsset("addons/ThemeManager.lua")))()
local SaveManager = loadstring(game:HttpGet(RepoAsset("addons/SaveManager.lua")))()
local Options = Library.Options
local Toggles = Library.Toggles

local Loading = Library:CreateLoading({
    Title = "Azusa Article Hub",
    Icon = 83462777349222,
    TotalSteps = 3
})
Loading:SetMessage("Initializing...")
Loading:SetDescription("Loading game data...")
local LoadingData = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingIndicator", true)
if LoadingData and LoadingData.Visible then
repeat task.wait() until LoadingData and LoadingData.Visible == false
end
Loading:SetCurrentStep(1)
Loading:SetDescription("Loading configuration...")
task.wait(3)
_G.ConnectFun = {}
