local trap = script.Parent
local damage = true

local function onTouch(otherParent)
	local character = otherParent.Parent
	local humanoid = otherParent.Parent:FindFirstChildOfClass("Humanoid")
	
	if humanoid and humanoid.Health > 0 and damage == true  then
		damage = false
		humanoid.Health = humanoid.Health -10
		task.wait(1)
		damage = true
	end
end

trap.Touched:Connect(onTouch)
