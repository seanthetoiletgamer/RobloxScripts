--This script works on almost all games but not all
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Aimbot | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Cameralock", "Get good lmao", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/deleteduser8291/hahaifixedit/main/combatwarriors.lua", true))()
end)
Section:NewButton("Silent Aim", "omg real gaming", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
end)
Section:NewButton("Hitbox", "Make enemies easier to kill with bigger hitbox", function()
    _G.HeadSize = 25
	_G.Disabled = true
 
	game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright red")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)
Section:NewButton("Gamepasses", "free gamepass with no rebex", function()
    if game.CreatorType == Enum.CreatorType.User then
		game.Players.LocalPlayer.UserId = game.CreatorId
	end
	if game.CreatorType == Enum.CreatorType.Group then
		game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
	end
end)

--ESP
local Tab = Window:NewTab("ESP")
local Section = Tab:NewSection("ESP")
Section:NewButton("Box ESP", "See everyone but boxes lmao", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/g216nQ7d", true))()
end)
Section:NewButton("Chams ESP", "Just like box esp but chams with glow", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapingCat/Open-Source-Chasms-Script/main/script.lua", true))()
end)

--Player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewButton("Fly", "Fly around the map and make everyone think you're a hacker, press E to toggle the script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)
 
Section:NewButton("Noclip", "Clip through walls and make everyone confused, press V to toggle the script", function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
    while true do
    	 game:GetService("RunService").Stepped:wait()
	   	 game.Players.LocalPlayer.Character.Head.CanCollide = false
	     game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
 
Section:NewToggle("Infinite Jump", "Jump Infinitely, he just has a good gaming chair", function(state)
    if state then
_G.infinjump = true
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
    else
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
 
 
 
Section:NewSlider("Walkspeed", "Walk like flash or sonic lol", 500, 0, function(ussususususuusususuususus) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ussususususuusususuususus
end)
 
Section:NewSlider("Jumppower", "Jump really really really high", 500, 0, function(hellothisismicrosofttechsupport) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = hellothisismicrosofttechsupport
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)
Section:NewButton("ave#6717 (silent aim)", "Click The button to copy", function()
setclipboard("ave#6717")
end)