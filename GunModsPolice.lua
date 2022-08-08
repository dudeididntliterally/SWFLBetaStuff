local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("Police Gun Mods (SWFL)", "DarkTheme")
local HomeWindow = Window:NewTab("Home")
local Home = HomeWindow:NewSection("Home")
local OtherModsWindow = Window:NewTab("Other Mods")
local OtherMods = OtherModsWindow:NewSection("Gun Mods #2")
local AntiCheat = Window:NewTab("Anti Cheat")
local ac = AntiCheat:NewSection("Anti Cheat Main")

game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Must Be Police For This To Work, ALSO PLEASE BYPASS ANTI CHEAT YOU WON'T BE ABLE TO USE IT WITHOUT BYPASS",
	Color = Color3.fromRGB(207, 96, 36)
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "Must Have Pistol (only works for pistol for right now) also put the gun away for this to work",
	Color = Color3.fromRGB(207, 96, 36)
})
wait()
ac:NewButton("Click Me To Bypass Anti Cheat", "Anti Cheat", function()
game.ReplicatedStorage.Remotes.SecureSettings:Destroy()
end)
wait()
Home:NewButton("Mod FireRate", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.FireRate = 0.01
end)

Home:NewButton("Mod Ammo", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Ammo = 999999
    m.LimitedAmmoEnabled = false
end)

Home:NewButton("Mod Reload Time", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.ReloadTime = 0.01
end)

Home:NewButton("Mod Extra Ammo", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.AmmoPerMag = 999999
    m.LimitedAmmoEnabled = false
end)

Home:NewButton("Mod Spread", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Spread = 0.01
end)

Home:NewButton("Mod Range", "Home", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Range = 9000000
end)

OtherMods:NewButton("Mod Recoil", "Other Mods", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Recoil = 0.01
end)

OtherMods:NewButton("Fully Auto", "Other Mods", function()
local m = require(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("G17").Setting)
    m.Auto = true
end)
