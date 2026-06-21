local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/ESPLibrary/refs/heads/main/Library.lua"))()
function Notification(Message, Time)
	if _G.ChooseNotify == "Obsidian" then
		Library:Notify(Message, Time or 5)
	elseif _G.ChooseNotify == "Roblox" then
		game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = Message,Icon = "rbxassetid://7733658504",Duration = Time or 5})
	end
	if _G.NotificationSound then
	    local sound = Instance.new("Sound", workspace)
	    sound.SoundId = "rbxassetid://4590662766"
	    sound.Volume = _G.VolumeTime or 2
	    sound.PlayOnRemove = true
	    sound:Destroy()
	end
end
