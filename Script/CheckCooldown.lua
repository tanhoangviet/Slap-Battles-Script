function CheckCooldown()
	return game.CoreGui:FindFirstChild("Cooldown Script") and game.CoreGui["Cooldown Script"]:FindFirstChild("ImageLabel") and game.CoreGui["Cooldown Script"].ImageLabel.Visible
end
