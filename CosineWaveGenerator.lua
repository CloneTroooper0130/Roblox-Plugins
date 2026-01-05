local toolbar = plugin:CreateToolbar("Cosine Wave Generator")
local pluginButton = toolbar:CreateButton(
	"CloneTrooper0130", 
	"CloneTrooper0130", 
	"rbxassetid://127831640863072") 

pluginButton.Click:Connect(function()
	if not game.CoreGui:FindFirstChild("WaveGen") then
	local wavegen = script.WaveGen:Clone()
	 wavegen.Frame.InitNum.Text = "1"
	 wavegen.Frame.EndNum.Text = "3600"
	 wavegen.Parent = game.CoreGui
	 wavegen.Frame:TweenPosition(UDim2.new(0.324, 0,0.236, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.5)
	 for i = tonumber(wavegen.Frame.InitNum.Text), tonumber(wavegen.Frame.EndNum.Text) do
			wait()
			wavegen.Frame.Res.Text = "Wave Lenght: "..tostring(math.cos(math.rad(i)))
	 end
	 wavegen.Frame.InitNum.Changed:Connect(function()
			for i = tonumber(wavegen.Frame.InitNum.Text), tonumber(wavegen.Frame.EndNum.Text) do
				wait()
				wavegen.Frame.Res.Text = "Wave Lenght: "..tostring(math.cos(math.rad(i)))
			end
	 end)
	 wavegen.Frame.EndNum.Changed:Connect(function()
			for i = tonumber(wavegen.Frame.InitNum.Text), tonumber(wavegen.Frame.EndNum.Text) do
				wait()
				wavegen.Frame.Res.Text = "Wave Lenght: "..tostring(math.cos(math.rad(i)))
			end
	 end)
	else
		local wavegenn = game.CoreGui:FindFirstChild("WaveGen") 
		wavegenn.Frame:TweenPosition(UDim2.new(0.999, 0,0.236, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.5)
		wait(1)
		wavegenn:Destroy()
	end
end)
