-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local bigskinb = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.236373737, 0, 0.284369886, 0)
Frame.Size = UDim2.new(0, 351, 0, 207)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.156281218, 0, 0.0506307259, 0)
TextLabel.Size = UDim2.new(0, 268, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "big size script by Mars Team"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

bigskinb.Name = "bigskinb"
bigskinb.Parent = ScreenGui
bigskinb.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
bigskinb.BorderColor3 = Color3.fromRGB(0, 0, 0)
bigskinb.BorderSizePixel = 0
bigskinb.Position = UDim2.new(0.348998874, 0, 0.486906737, 0)
bigskinb.Size = UDim2.new(0, 216, 0, 50)
bigskinb.Font = Enum.Font.SourceSansBold
bigskinb.Text = "Big Skin !!"
bigskinb.TextColor3 = Color3.fromRGB(0, 0, 0)
bigskinb.TextScaled = true
bigskinb.TextSize = 14.000
bigskinb.TextWrapped = true

UICorner_3.Parent = bigskinb

-- Scripts:

local function RFGD_fake_script() -- bigskinb.LocalScript 
	local script = Instance.new('LocalScript', bigskinb)

	bigskinb.MouseButton1Down:Connect(function()
	
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Character = LocalPlayer.Character
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	
		function rm()
			for i,v in pairs(Character:GetDescendants()) do
				if v:IsA("BasePart") then
					if v.Name == "Handle" or v.Name == "Head" then
						if Character.Head:FindFirstChild("OriginalSize") then
							Character.Head.OriginalSize:Destroy()
						end
					else
						for i,cav in pairs(v:GetDescendants()) do
							if cav:IsA("Attachment") then
								if cav:FindFirstChild("OriginalPosition") then
									cav.OriginalPosition:Destroy()  
								end
							end
						end
						v:FindFirstChild("OriginalSize"):Destroy()
						if v:FindFirstChild("AvatarPartScaleType") then
							v:FindFirstChild("AvatarPartScaleType"):Destroy()
						end
					end
				end
			end
		end
	
		rm()
	
		wait(0.5)
	
		Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
	
		wait(1)
	
		rm()
	
		wait(0.5)
	
		Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
	
		wait(1)
	
		rm()
	
		wait(0.5)
	
		Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
	
		wait(1)
	
		rm()
	
		wait(0.5)
	
		Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
	
		wait(1)
	
		rm()
	
		wait()
	
		wait(0.5)
	
		Humanoid:FindFirstChild("HeadScale"):Destroy()
	
		wait(1)
	end)
end
coroutine.wrap(RFGD_fake_script)()
