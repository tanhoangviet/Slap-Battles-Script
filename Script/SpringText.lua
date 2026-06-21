function SpringText(label, startRotation)
	local rotation = startRotation or 10
	local velocity = 0
	local target = 0
	local stiffness = 169
	local damping = 8
	local conn
	conn = game:GetService("RunService").Heartbeat:Connect(function(dt)
		velocity += (target - rotation) * stiffness * dt
		velocity *= math.exp(-damping * dt)
		rotation += velocity * dt
		label.Rotation = rotation
		if math.abs(rotation) < 0.01 and math.abs(velocity) < 0.01 then
			label.Rotation = 0
			conn:Disconnect()
		end
	end)
end

