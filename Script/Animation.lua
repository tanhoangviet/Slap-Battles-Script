_G.ConnectAnimPlay = {}
function Animation(Value)
	_G.LoadingEmote = Value
	if not _G.LoadingEmote then
		if _G.ConnectAnimPlay then
			for i, v in pairs(_G.ConnectAnimPlay) do
				v:Disconnect()
			end
		_G.ConnectAnimPlay = {}
		end
	end
	if _G.ConnectAnimPlay then
		function CheckAnim()
			local AnimFuns = {}
			local AnimationPack = game:GetService("ReplicatedStorage"):FindFirstChild("AnimationPack", true)
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and AnimationPack then
				for i, v in pairs(AnimationPack:GetChildren()) do
					if v:IsA("Animation") then
						AnimFuns[v.Name:lower()] = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(v)
					end
				end
			end
			return (AnimFuns or nil)
		end
		function AutoStopAnim(anims)
			local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if not hrp then return end
			local conn
			conn = game:GetService("RunService").RenderStepped:Connect(function()
				if humanoid.MoveDirection.Magnitude > 0 or hrp.AssemblyLinearVelocity.Magnitude > 5 or humanoid.Health <= 0 and humanoid.Sit == false then
					for _,v in pairs(anims) do
						if v.IsPlaying then
							v:Stop()
						end
					end
					game:GetService("ReplicatedStorage").AnimationSound:FireServer()
					conn:Disconnect()
				end
			end)
			return conn
		end
		GuiEmote = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("EmoteWheel", true)
		if GuiEmote and GuiEmote:FindFirstChild("EmoteWheel") then
		for i, v in pairs(GuiEmote.EmoteWheel:GetChildren()) do
			if v:IsA("ImageButton") then
				table.insert(_G.ConnectAnimPlay, v.MouseButton1Click:Connect(function()
					local char = game.Players.LocalPlayer.Character
					if _G.LoadingEmote == true and char and (char:FindFirstChildOfClass("Humanoid") and not char:FindFirstChildOfClass("Humanoid").Sit) and not (char:FindFirstChildOfClass("Tool") and char:FindFirstChildOfClass("Tool"):FindFirstChild("Glove")) then
						GuiEmote.EmoteWheel.Visible = false
						pcall(function()
							game:GetService("ReplicatedStorage").AnimationSound:FireServer()
							for i, v in pairs(Anims) do
						        if v.IsPlaying then
						            v:Stop()
						        end
						    end
						end)
						spawn(function()
							pcall(function()
								repeat task.wait() until (char:FindFirstChild("Ragdolled") and char:WaitForChild("Ragdolled").Value) or (char:FindFirstChildOfClass("Tool") and char:FindFirstChildOfClass("Tool"):FindFirstChild("Glove"))
								game:GetService("ReplicatedStorage").AnimationSound:FireServer()
								for i, v in pairs(Anims) do
							        if v.IsPlaying then
							            v:Stop()
							        end
							    end
							end)
						end)
						task.wait()
						Anims = CheckAnim()
						if v:FindFirstChildOfClass("TextLabel").Text:lower() == "laugh" then
							game:GetService("ReplicatedStorage").AnimationSound:FireServer("_emoteLaugh")
						end
						local humanoid = char and char:FindFirstChildOfClass("Humanoid")
						if humanoid then
							for _, v in ipairs(humanoid:GetPlayingAnimationTracks()) do
								v:Stop()
							end
						end
						Anims[v:FindFirstChildOfClass("TextLabel").Text:lower()]:Play()
						AutoStopAnim(Anims)
					end
				end))
			end
		end
		local animList = {}
		for i, _ in pairs(CheckAnim()) do
			table.insert(animList, i)
		end
		table.sort(animList)
		for _, v in ipairs(GuiEmote.EmoteWheel:GetChildren()) do
			if v:IsA("ImageButton") then
				local index = tonumber(v.Name:match("%d+"))
				local label = v:FindFirstChildOfClass("TextLabel")
				if index and label and animList[index] then
					label.Text = animList[index]:gsub("^%l", string.upper)
				end
			end
		end
	end
end
end
_G.TimeNotify = 5
