function CreateFreezeBV(FreezeBV)
	FreezeBV = FreezeBV or {}
	FreezeBV.Name = FreezeBV.Name or "FreezeBV"
	FreezeBV.Remove = FreezeBV.Remove or false
	FreezeBV.Velocity = FreezeBV.Velocity or Vector3.zero
	FreezeBV.MaxForce = FreezeBV.MaxForce or Vector3.new(1e9,1e9,1e9)
	
	local player = game.Players.LocalPlayer
	local character = player.Character
	if not character then return nil end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return nil end
	local nameBV = FreezeBV.Name
	local velocityBV = typeof(FreezeBV.MaxForce) == "Vector3" and FreezeBV.Velocity
	local maxForceBV = typeof(FreezeBV.Velocity) == "Vector3" and FreezeBV.MaxForce
	local existing = hrp:FindFirstChild(nameBV)
	if FreezeBV.Remove then
		if existing then
			existing:Destroy()
		end
		return nil
	end
	if not existing then
		return Create("BodyVelocity", {
			Name = nameBV,
			Parent = hrp,
			P = 10000,
			MaxForce = maxForceBV,
			Velocity = velocityBV
		})
	end
	return existing
end
