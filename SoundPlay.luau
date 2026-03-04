local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local playerGui = player:WaitForChild("PlayerGui")
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://115925172742147"
sound.Looped = true
sound.Volume = 0.8
sound.Parent = playerGui

local soundLoaded = false
sound.Loaded:Connect(function()
	soundLoaded = true
	print("Sound loaded successfully!")
end)

if not sound.IsLoaded then
	sound.Loaded:Wait()
end

local debounce = false

UIS.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return
	end
	if input.KeyCode == Enum.KeyCode.E then
		if debounce then
			return
		end

		if not soundLoaded and not sound.IsLoaded then
			warn("Sound is still loading, please wait...")
			return
		end

		debounce = true

		if sound.IsPlaying then
			sound:Pause()
			print("Sound paused")
		else
			sound:Resume()
			print("Sound playing")
		end

		task.wait(0.2)
		debounce = false
	end
end)
