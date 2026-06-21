function VectorTween(Tween)
	Tween = Tween or {}
	Tween.Part = Tween.Part or nil
	Tween.Place = Tween.Place or nil
	Tween.Speed = Tween.Speed or 80
	
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local movePart = Tween.Part or hrp
	local bv = movePart:FindFirstChild("FreezeBV")
	if not bv then
		bv = Create("BodyVelocity", {
			Name = "FreezeBV",
			P = 10000,
			MaxForce = Vector3.new(1e9, 1e9, 1e9),
			Velocity = Vector3.zero,
			Parent = movePart
		})
	end
	repeat task.wait()
		local direction = Tween.Place - movePart.Position
		local distance = direction.Magnitude
		if distance > 0 then
			bv.Velocity = direction.Unit * Tween.Speed
		else
			bv.Velocity = Vector3.zero
		end
	until (movePart.Position - Tween.Place).Magnitude < 5
	bv.Velocity = Vector3.zero
	bv:Destroy()
end
