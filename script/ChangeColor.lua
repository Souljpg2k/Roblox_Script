local part = script.Parent

local DefaultColor = Color3.fromRGB(255, 91, 170)
local ChangeColor = Color3.fromRGB(103, 186, 255)

while true do
	for i = 0, 1, 0.05 do
		part.Color = DefaultColor:Lerp(ChangeColor, i)
		task.wait(0.05)
	end
	for i = 0, 1, 0.05 do
		part.Color = ChangeColor:Lerp(DefaultColor, i)
		task.wait(0.05)
	end
end
