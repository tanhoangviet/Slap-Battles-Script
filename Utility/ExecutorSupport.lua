local function IsCallable(Value)
	return typeof(Value) == "function"
end

local function ResolveExecutorName()
	local ok, result = false, nil

	if IsCallable(identifyexecutor) then
		ok, result = pcall(identifyexecutor)
		if ok and result then
			return tostring(result)
		end
	end

	if IsCallable(getexecutorname) then
		ok, result = pcall(getexecutorname)
		if ok and result then
			return tostring(result)
		end
	end

	return "Unknown"
end

local Features = {
	namecall_hook = IsCallable(hookmetamethod) and IsCallable(getnamecallmethod),
	newcclosure = IsCallable(newcclosure),
	queue_on_teleport = IsCallable(queueonteleport) or IsCallable(queue_on_teleport),
	fireclickdetector = IsCallable(fireclickdetector),
	firetouchinterest = IsCallable(firetouchinterest),
	fireproximityprompt = IsCallable(fireproximityprompt),
	clipboard = IsCallable(setclipboard) or IsCallable(toclipboard),
	custom_asset = IsCallable(getcustomasset) and IsCallable(writefile) and IsCallable(isfile),
}

local FeatureLabels = {
	namecall_hook = "namecall hook",
	newcclosure = "newcclosure",
	queue_on_teleport = "queue on teleport",
	fireclickdetector = "click detector fire",
	firetouchinterest = "touch interest fire",
	fireproximityprompt = "proximity prompt fire",
	clipboard = "clipboard",
	custom_asset = "custom asset images",
}

local SupportedCore = 0
for _, Supported in pairs({
	Features.namecall_hook,
	Features.queue_on_teleport,
	Features.fireclickdetector,
	Features.firetouchinterest,
	Features.fireproximityprompt,
	Features.custom_asset,
}) do
	if Supported then
		SupportedCore += 1
	end
end

ExecutorSupport = Features
ExecutorSupport.Name = ResolveExecutorName()
ExecutorSupport.Summary = string.format("%d/6 core APIs", SupportedCore)
ExecutorSupport.Labels = FeatureLabels

local UnsupportedNotified = {}

function CheckExecutorSupport(FeatureName, ToggleName, Silent)
	if ExecutorSupport and ExecutorSupport[FeatureName] == true then
		return true
	end

	local Toggle = ToggleName and Toggles and Toggles[ToggleName]
	if Toggle and Toggle.Value == true and IsCallable(Toggle.SetValue) then
		Toggle:SetValue(false)
	end

	if not Silent and not UnsupportedNotified[FeatureName] then
		UnsupportedNotified[FeatureName] = true
		local Label = (ExecutorSupport and ExecutorSupport.Labels and ExecutorSupport.Labels[FeatureName])
			or tostring(FeatureName)
		local Message = "Executor does not support " .. Label .. ". Disabled unsupported function."
		if Notification then
			Notification(Message, _G.TimeNotify or 5)
		elseif Library and Library.Notify then
			Library:Notify(Message, _G.TimeNotify or 5)
		end
	end

	return false
end

if Loading then
	Loading:SetCurrentStep(2)
	Loading:SetDescription("Executor support: " .. ExecutorSupport.Name .. " (" .. ExecutorSupport.Summary .. ")")
	task.wait(0.25)
end
