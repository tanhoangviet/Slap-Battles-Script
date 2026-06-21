----========== Other Script ===========----

local tweenService = game:GetService("TweenService")
local function triggerUnequipEffect()
	if not savedHandle or not savedGlove then return end
	local modelTool = Create("Model", {Name = "GloveDrop", Parent = workspace})
	local fakeHandle = savedHandle:Clone()
	local fakeGlove = savedGlove:Clone()
	fakeHandle.Parent = modelTool
	fakeGlove.Parent = modelTool
	fakeHandle.CanCollide = true
	fakeGlove.CanCollide = true
	fakeHandle.Anchored = false
	fakeGlove.Anchored = false
	if fakeHandle then
		for _, v in pairs(fakeHandle:GetDescendants()) do
			if v:IsA("Weld") or v:IsA("ManualWeld") or v:IsA("WeldConstraint") then 
				v:Destroy()
			end
		end
	end
	if fakeGlove then
		for _, v in pairs(fakeGlove:GetDescendants()) do
			if v:IsA("Weld") or v:IsA("ManualWeld") or v:IsA("WeldConstraint") then 
				v:Destroy()
			end
			if v:IsA("Script") or v:IsA("LocalScript") then
				v:Destroy()
			end
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
		if fakeGlove:FindFirstChild("RopeConstraint") then
			if fakeHandle and fakeHandle:FindFirstChildOfClass("Attachment") then
				fakeGlove.RopeConstraint.Attachment1 = fakeHandle:FindFirstChildOfClass("Attachment")
			end
		end
	end
	local char = game.Players.LocalPlayer.Character
	local Arm = char and char:FindFirstChild("RightHand")
	local startCFrame = Arm and Arm.CFrame
	if startCFrame then
		fakeHandle.CFrame = startCFrame * CFrame.new(0, -2, 0)
		local offsetUp = Vector3.new(0, fakeHandle.Size.Y + (fakeHandle.Size.Y / 2), 0)
		fakeGlove.CFrame = fakeHandle.CFrame * CFrame.new(-offsetUp) * CFrame.Angles(0, 0, math.rad(50))
	end
	fakeHandle.Velocity = Vector3.new(0, 0, -5) 
	fakeHandle.RotVelocity = Vector3.new(0, 0, -12)
	task.delay(1, function()
		if fakeHandle and fakeGlove then
			local info = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			tweenService:Create(fakeHandle, info, {Transparency = 1, Size = Vector3.new(0,0,0)}):Play()
			tweenService:Create(fakeGlove, info, {Transparency = 1, Size = Vector3.new(0,0,0)}):Play()
			for _, v in pairs(fakeGlove:GetDescendants()) do
				if v:IsA("BasePart") then
					tweenService:Create(v, info, {Transparency = 1, Size = Vector3.new(0,0,0)}):Play()
				end
			end
			if fakeGlove and fakeGlove:FindFirstChild("RopeConstraint") then
				tweenService:Create(fakeGlove.RopeConstraint, info, {Thickness = 0}):Play()
			end
		end
	end)
	task.delay(1.5, function()
		if modelTool then
			modelTool:Destroy()
		end
	end)
end

task.spawn(function()
	_G.GloveDropUnEquipped = true
	while _G.GloveDropUnEquipped and task.wait() do
		if _G.GloveDrop then
			local char = game.Players.LocalPlayer.Character
			if not char then continue end
			local foundTool = char:FindFirstChildOfClass("Tool")
			if foundTool and not isEquipped then
				local handle = foundTool:FindFirstChild("Handle")
				local glove = foundTool:FindFirstChild("Glove")
				if handle and glove then
					isEquipped = true
					savedHandle = handle
					savedGlove = glove
				end
			elseif not foundTool and isEquipped then
				isEquipped = false
				triggerUnequipEffect()
				savedHandle = nil
				savedGlove = nil
			end
		end
	end
end)

