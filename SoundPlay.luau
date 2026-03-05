local UIS = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local sound = Instance.new("Sound")

sound.SoundId = "rbxassetid://115925172742147"
sound.Looped = true
sound.Volume = 0.5
sound.Parent = game:GetService("SoundService")

if not sound.IsLoaded then
	sound.Loaded:Wait()
end
print("Sound loaded successfully!")

local debounce = false

UIS.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end
	if input.KeyCode == Enum.KeyCode.E then
		if debounce then
			return
		end

		if not sound.IsLoaded then
			warn("Sound is still loading, please wait...")
			return
		end

		debounce = true

		if sound.IsPlaying then
			sound:Pause()
			print("Sound paused at: " .. sound.TimePosition .. "s")
		else
			sound:Resume()
			print("Sound playing from: " .. sound.TimePosition .. "s")
		end

		task.wait(0.2)
		debounce = false
	end
end)
