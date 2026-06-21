function Create(className: string?, props: table?, children: table?)
	local obj = Instance.new(className)
	if props then
		for k, v in pairs(props) do
			pcall(function()
				obj[k] = v
			end)
		end
	end
	if children then
		for _, child in ipairs(children) do
			if typeof(child) == "Instance" then
				child.Parent = obj
			end
		end
	end
	return obj
end
