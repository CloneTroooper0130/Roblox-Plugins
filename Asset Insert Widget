--Back when tabbing was unheard of--
local toolbar = plugin:CreateToolbar("CloneTrooper0130")
local pluginButton = toolbar:CreateButton(
	"Asset Insert Widget", 
	"CloneTrooper0130, 2024", 
	"rbxassetid://9969421196")
pluginButton.Click:Connect(function()
local pluginGUI = script.PluginGUI:Clone()
pluginGUI.Parent = game.CoreGui
local id = tonumber(pluginGUI.Frame.HolderFrame.IDInsertPlaceholder.Text)
pluginGUI.Frame.HolderFrame.IDInsertPlaceholder.Changed:Connect(function()
id = tonumber(pluginGUI.Frame.HolderFrame.IDInsertPlaceholder.Text)
end)
pluginGUI.Frame.TextButton.MouseButton1Down:Connect(function()
local asset = game:GetService("InsertService"):LoadAsset(id)
asset.Parent = game.Workspace
if asset:IsA("Model") then
for _ , v in pairs(asset:GetChildren()) do
	v.Parent = game.Workspace
if v:IsA("Accessory") or v:IsA("Hat") then
for _, c in pairs(v:GetChildren()) do
	if c:IsA("Part") then
	 c.CFrame = game.Workspace.Camera.CFrame
	end
end
end
end
asset:Destroy()
end
end)
pluginGUI.Frame.Close.MouseButton1Down:Connect(function()
pluginGUI:Destroy()
end)
end)
