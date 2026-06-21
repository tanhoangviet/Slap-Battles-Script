_G.SetSpeedFly = 50
function Fly(Value)
_G.StartFly = Value
if _G.StartFly == false then
	if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
		game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	end
end
while _G.StartFly do
	pcall(function()
		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Workspace.CurrentCamera.CFrame.LookVector)
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
			local RequireMove = ControlMove and ControlMove:GetMoveVector()
			local VectorBVRoot = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity
			if MobileOn then
				if RequireMove and RequireMove.X > 0 then
					VectorBVRoot = VectorBVRoot + game.Workspace.CurrentCamera.CFrame.RightVector * (RequireMove.X * _G.SetSpeedFly)
				end
				if RequireMove and RequireMove.X < 0 then
					VectorBVRoot = VectorBVRoot + game.Workspace.CurrentCamera.CFrame.RightVector * (RequireMove.X * _G.SetSpeedFly)
				end
				if RequireMove and RequireMove.Z > 0 then
					VectorBVRoot = VectorBVRoot - game.Workspace.CurrentCamera.CFrame.LookVector * (RequireMove.Z * _G.SetSpeedFly)
				end
				if RequireMove and RequireMove.Z < 0 then
					VectorBVRoot = VectorBVRoot - game.Workspace.CurrentCamera.CFrame.LookVector * (RequireMove.Z * _G.SetSpeedFly)
				end
			else
				VectorBVRoot = VectorBVRoot + (game.Workspace.CurrentCamera.CFrame.LookVector * (ctrl.f + ctrl.b)) + (game.Workspace.CurrentCamera.CFrame.RightVector * (ctrl.r + ctrl.l))
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = VectorBVRoot
		elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and (game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil or game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil) then
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil then
				local bv = Create("BodyVelocity", {
					Name = "VelocityHandler",
					Parent = game.Players.LocalPlayer.Character.HumanoidRootPart,
					MaxForce = Vector3.new(0,0,0),
					Velocity = Vector3.new(0,0,0),
				})
			end
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
				local bg = Create("BodyGyro", {
					Name = "GyroHandler",
					Parent = game.Players.LocalPlayer.Character.HumanoidRootPart,
					MaxTorque = Vector3.new(0,0,0),
					P = 1000,
					D = 50,
				})
			end
		end
	end)
	task.wait()
	end
end
