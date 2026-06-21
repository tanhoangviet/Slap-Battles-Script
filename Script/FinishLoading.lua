getgenv().LoadingScriptSlap = false
if MobileOn then
	Library:SetDPIScale(85)
end
local success, err = pcall(function()
	getgenv().WindowNah = Window
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/File-Script/CreditJoin.Lua"))()
end)

