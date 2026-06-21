function InsideBox(pos, box)
	local relative = box.CFrame:PointToObjectSpace(pos.Position)
	local size = box.Size / 2
	return math.abs(relative.X) <= size.X + 1.2 and math.abs(relative.Y) <= size.Y and math.abs(relative.Z) <= size.Z + 1.2
end
