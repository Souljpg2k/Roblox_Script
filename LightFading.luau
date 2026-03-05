local light = script.Parent.PointLight

local brightnessChange = 1
local fadeSpeed = 0.1

while true do
	for brightness = 0, 10, brightnessChange do
		light.Brightness = brightness
		task.wait(fadeSpeed)
	end

	for brightness = 10, 0, -brightnessChange do
		light.Brightness = brightness
		task.wait(fadeSpeed)
	end
end
