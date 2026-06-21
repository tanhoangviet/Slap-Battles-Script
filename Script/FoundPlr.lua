function FoundPlr(name, notification)
	local PlayerTarget
	for _, v in pairs(game.Players:GetPlayers()) do
		if string.sub(v.Name, 1, #name):lower() == name:lower() then
			PlayerTarget = v
			break
		end
	end
	if notification and PlayerTarget then
		Notification("Found Player [ "..PlayerTarget.Name.." ]", _G.TimeNotify)
	else
		if notification then
			Notification("Can't find player", _G.TimeNotify)
		end
	end
	return PlayerTarget
end
