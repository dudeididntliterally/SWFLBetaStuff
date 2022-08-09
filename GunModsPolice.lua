local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Southwest Florida Gun Mods Police", HidePremium = false, SaveConfig = true, ConfigFolder = "SWFLBetaPolice.lua"})
local MainTab = MainWindow:MakeTab({
	Name = "Gun Mods Police",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainStuff = MainTab:AddSection({
	Name = "Gun Mods"
})
local MainTab2 = MainWindow:MakeTab({
	Name = "Anti Cheat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainStuff2 = MainTab2:AddSection({
	Name = "Anti Cheat"
})
local BackToGamePicker = MainWindow:MakeTab({
	Name = "Go Back",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local GamePicker = BackToGamePicker:AddSection({
	Name = "Go Back"
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Must Be Police For This To Work, ALSO PLEASE BYPASS ANTI CHEAT YOU WON'T BE ABLE TO USE IT WITHOUT BYPASS, DO NOT PRESS IF YOU ALREADY BYPASSED",
	Color = Color3.fromRGB(207, 96, 36)
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Must Have Pistol (only works for pistol for right now) also put the gun away for this to work",
	Color = Color3.fromRGB(207, 96, 36)
})
wait()
MainTab2:AddButton({
Name = "Anti Cheat Bypass (GUN MODS)",
Callback = function()
game.ReplicatedStorage.Remotes.SecureSettings:Destroy()
end})

MainTab:AddButton({
Name = "Mod FireRate",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.FireRate = 0.01
end})

MainTab:AddButton({
Name = "Mod Ammo",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Ammo = 999999
    m.LimitedAmmoEnabled = false
end})

MainTab:AddButton({
Name = "Mod Reload Time",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.ReloadTime = 0.01
end})

MainTab:AddButton({
Name = "Mod Extra Ammo",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.AmmoPerMag = 999999
    m.LimitedAmmoEnabled = false
end})

MainTab:AddButton({
Name = "Mod Spread",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Spread = 0.01
end})

MainTab:AddButton({
Name = "Mod Range",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Range = 9000000
end})

MainTab:AddButton({
Name = "Mod Recoil",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Recoil = 0.01
end})

MainTab:AddButton({
Name = "Fully Auto",
Callback = function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Auto = true
end})

BackToGamePicker:AddButton({
Name = "Go Back To Game Picker",
Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dudeididntliterally/GamePickerMain/main/GamePicker.lua"))()
end})
