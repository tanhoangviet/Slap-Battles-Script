function Cooldown(time, text)
	if game.CoreGui:FindFirstChild("Cooldown Script") then
		if game.CoreGui["Cooldown Script"].ImageLabel.Visible then return end
		spawn(function()
			local BarTween = TweenService:Create(game.CoreGui["Cooldown Script"].ImageLabel.Frame, TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(0.001, 0, 0.98, 0)})
			BarTween:Play()
			BarTween.Completed:Wait()
			game.CoreGui["Cooldown Script"].ImageLabel.Visible = false
			game.CoreGui["Cooldown Script"].ImageLabel.Frame.Size = UDim2.new(1, 0, 0.98, 0)
			game.CoreGui["Cooldown Script"].ImageLabel.TextLabel.Rotation = 15
			TweenService:Create(game.CoreGui["Cooldown Script"].ImageLabel, TweenInfo.new(0.06, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Position = UDim2.new(1.01, 0, 0.305, -50)}):Play()
		end)
		spawn(function()
			game.CoreGui["Cooldown Script"].ImageLabel.TextLabel.Text = text
			game.CoreGui["Cooldown Script"].ImageLabel.Visible = true
			TweenService:Create(game.CoreGui["Cooldown Script"].ImageLabel, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0.98, 0, 0.3, -50)}):Play()
			SpringText(game.CoreGui["Cooldown Script"].ImageLabel.TextLabel, 20)
		end)
	end
end
