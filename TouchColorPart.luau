local initialColor = BrickColor.new("White")
local touchColor = BrickColor.new("Really red")
local part = script.Parent
local touchCount = 0

part.BrickColor = initialColor

local function onTouch(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")

	if humanoid then
		touchCount += 1
		if touchCount == 1 then
			part.BrickColor = touchColor
		end
	end
end

local function onTouchEnded(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")

	if humanoid then
		touchCount = math.max(0, touchCount - 1)
		if touchCount == 0 then
			part.BrickColor = initialColor
		end
	end
end

part.Touched:Connect(onTouch)
part.TouchEnded:Connect(onTouchEnded)
