--OPEN STUIO AND CHECK SIZE AND POSITION



local Players = game:GetService("Players")
while not game:GetService("Players").LocalPlayer do
	wait(0.1)
end

if DebugMode then
	warn("Lisbon - Starting")
end
local UserHWID = nil
ExecutorAutomatic = false
if not game:IsLoaded() then
	wait(0.5)
	if game:IsLoaded() then
		if DebugMode then
			warn("Lisbon - AutoExec Detection false")
		end
		return
	else
		ExecutorAutomatic = true
		if DebugMode then
			warn("Lisbon - AutoExec Detection true")
		end
	end
end
if DebugMode then
	warn("Lisbon - Game Loaded")
end
local KeySys = game:GetObjects("rbxassetid://8065404628")[1]

if DebugMode then
	warn("Lisbon - Loaded KeyUI")
end

if not gethui then
	if syn and syn.protect_gui then
		syn.protect_gui(KeySys)
		protected = true
	end

	if protect_gui then
		protect_gui(KeySys)
		protected = true
	end
	parent = game:GetService("CoreGui")
else 
	parent = game:GetService("CoreGui")
end
KeySys.Parent = parent
KeySys.Main.ElseDesc2.Text = "Alternatively you can buy Premium at https://discord.gg/sirius"
KeySys.Enabled = false
KeySys.Main.Visible = true

for _, ui in ipairs(game:GetService("CoreGui"):GetChildren()) do
	if ui.Name == "KeySystem" and ui ~= KeySys then
		ui.Enabled = false
		ui.Name = "KeySystemUnused"
	end
end

if DebugMode then
	warn("Lisbon - Protected KeyUI")
end

local http_request = http_request;
local c = identifyexecutor()
if syn then
	http_request = syn.request
elseif c == "ScriptWare" then
	http_request = http.request
end

if http_request == nil then
	return
end



-- DMNX


local Domain = game:GetObjects("rbxassetid://12016197276")[1]

if DebugMode then
	warn("Lisbon - Loaded Main UI")
end

local protected = false

if not gethui then
	if syn and syn.protect_gui then
		syn.protect_gui(Domain)
		protected = true
	end

	if protect_gui then
		protect_gui(Domain)
		protected = true
	end
	parent = game:GetService("CoreGui")
else
	parent = game:GetService("CoreGui")
end

if DebugMode then
	warn("Lisbon - Protected Main UI")
end

Domain.Parent = parent
Domain.Main.Visible = true
Domain.Main.Position = UDim2.new(0.5, 0, 1.05, 0)
Domain.Main.KeybindNote.Position = UDim2.new(0.5,0,-1.303,0)
Domain.Main.KeybindNote.Text = "Starting"
Domain.Main.KeybindNote.Visible = true
Domain.Main.KeybindNote.TextTransparency = 0.4
wait(0.2)

local DefaultKeybind = "K"
local DiscordLink = "discord.gg/sirius"
local DiscordLink2 = "R8D6gNFsYh"
local NotificationDuration = 7
local DomainEnabled = true
local Price = "$7.99"
local CustomFolderName = "Lisbon Custom Scripts"
local KeyWaitTime = 60

local MlemixMode = false


local Release = 1
local KeySystemEnabled = false
local ReleaseType = "Release"
local Public = true
local Beta = false





local NewPremiumSystem = true




local Connected = false
local homedb = false
local db = false
local Keybind = DefaultKeybind
if writefile and isfile and readfile and delfile then
	if isfile("Lisbon Keybind.txt") then
		if readfile("Lisbon Keybind.txt") then
			if readfile("Lisbon Keybind.txt") then
				Keybind = readfile("Lisbon Keybind.txt")
			else
				delfile("Lisbon Keybind.txt")
			end
		end
	else
		-- No file, default it 
		Keybind = DefaultKeybind
	end
else
	Keybind = DefaultKeybind
end
local UpdateAvailable = false
local PlayerFlySpeed = 1
local PremiumToastRequired = false
local ServerhopCancelled = false
local serverhopdb = false
local timesince = 0
local CustomScriptEnabled = false
local firsttime = false
local DMNReady = false
local CurrentListPosition = 1
local homeopen = false
local inventorywasopen = false
local SnowHubSupported = false
local plrconopen = false
local CustomScripts = {}
local LisbonLoaded = false
local playerservice = game:GetService("Players")
local plrlistopen = false
local baropen = false
local ContentProvider = game:GetService("ContentProvider")
local loadedmainassets = false
local scriptsopen = false
local jcopen = false
local TweenService = game:GetService("TweenService")
local NotificationStack = {}
local CurrentMusicInfo = nil
local MusicPlaying = false
local UserInputService = game:GetService("UserInputService")
local ToastStack = {}
local UserIsPremium = true
local UserIsPro = true
local RotatingBar = false


local CachedUI = {}
local cachedcoreguis = {}
local NotificationsEnabled = true
local coreguis = {"PlayerList","Chat","EmotesMenu","Health","Backpack"}
local LocalPlayer = game:GetService("Players").LocalPlayer


-- Tables

local UniversalScripts = {
	InfiniteYield = {
		Name = "Infinite Yield",
		Author = "Edge",
		Loadstring = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
		Colour = Color3.fromRGB(57, 57, 57),
	},
	SiriusUni = {
		Name = "Sirius Universal",
		Author = "Sirius",
		Loadstring = "https://raw.githubusercontent.com/shlexware/Sirius/request/game/Universal",
		Colour = Color3.fromRGB(188, 57, 59),
	},
	SimpleSpy = {
		Name = "SimpleSpy",
		Author = "exx",
		Loadstring = "https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua",
		Colour = Color3.fromRGB(0, 170, 127),
	},
	cmdx = {
		Name = "CMD-X",
		Author = "Various Developers",
		Loadstring = "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",
		Colour = Color3.fromRGB(179, 97, 42),
	},
	Dex = {
		Name = "Dex Explorer",
		Author = "Moon",
		Loadstring = "https://pastebin.com/raw/fPP8bZ8Z",
		Colour = Color3.fromRGB(120, 170, 160),
	},

}

local DetectionScripts = {
	spongebobguess = {
		Name = "Teleport to finish",
		Description = "This script will teleport to the finish of the game. ha get beaten",
		Games = {8494013385},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/dipyRqzR",
	},
	DecayingWinter = {
		Name = "Decaying Winter",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {7551121821},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT",
	},
	bedwars = {
		Name = "Bedwars",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {6872265039},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua",
	},
	Sirius = {
		Name = "Sirius Loader",
		Description = "The best script hub available",
		Games = {286090429,3233893879,292439477},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/shlexware/Sirius/request/Loader",
	},
	Vision = {
		Name = "Vision",
		Description = "A script hub with a few high quality games",
		Games = {6769764667,6847090259,7305309231,8116417963},
		Premium = false,
		KeySys = true,
		Loadstring = "https://visionhub.dev/script.lua",
	},
	DarkHub = {
		Name = "Dark Hub",
		Description = "One of the most popular script hubs to date, with little compromise.",
		Games = {2377868063,263761432,606849621,3527629287,2555870920,5081773298,2551991523,1962086868,3101667897,6483072762,6494529140,3297964905,5523314295,301549746,5041144419,370731277,142823291,621129760,6284583030,5104202731},
		Premium = false,
		KeySys = true,
		Loadstring = "https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init",
	},
	IdentityFraud = {
		Name = "Identity Fraud",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {338521019},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/tkorra/Identity_Fraud/main/main.lua",
	},
	CriticalStrike = {
		Name = "Critical Strike",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {111311599},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/WrF6UWQg",
	},
	DBR = {
		Name = "Dragon Ball Rage",
		Description = "A Lisbon exclusive, by our developer, Urbanstorm",
		Games = {71315343},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/Urbanstorms/Lisbon/main/DBR.lua",
	},
	Vega = {
		Name = "Vega Remover",
		Description = "A powerful tool that removes known barriers in cafe games",
		Games = {5580097107,738548299,610172644,1217895158,3522042406,679498303},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/realvega/VegaRemover/main/source",
	},
	KaijuParadise = {
		Name = "Kaiju Paradise",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {6456351776},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/realoneofu/RealZzHub/main/Main.lua",
	},
	FNF = {
		Name = "Friday Night Funkin'",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {6447798030},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",
	},
	PrisonLife = {
		Name = "Prison Life",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {155615604},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife",
	},
	andestsim = {
		Name = "Anime Destroyer Simulator",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {7082539621},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/DevPolarhub/ScriptPacks/main/Anime%20Destroyers%20Simulator",
	},
	towerdefensesim = {
		Name = "Tower Defense Simulator",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {3260590327},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/Mjryt8Mm",
	},
	DemonSlayer = {
		Name = "Demon Slayer RPG 2",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {4734949248},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/HDTerebi/DSRPG2/master/Shitty%20GUI.lua",
	},
	NDS = {
		Name = "Natural Disaster Survival",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {189707},
		Premium = false,
		Loadstring = "https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg",
	},
	RoGhoul = {
		Name = "Ro-Ghoul",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {914010731},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/z4gs/scripts/master/Ro-Ghoul%20Auto%20Farm.lua",
	},
	MegaEasyObby = {
		Name = "Mega Easy Obby",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {3587619225},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/X361rzKq",
	},
	NinjaLegends = {
		Name = "Ninja Legends",
		Description = "Full featured autofarm script for Ninja Legends",
		Games = {3956818381},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/Q39hYJ8V",
	},
	MyRestaurant = {
		Name = "My Restaurant",
		Description = "Full featured autofarm script for My Restaurant",
		Games = {4490140733},
		Premium = false,
		Loadstring = "http://void-scripts.com/Scripts/myRest.lua",
	},
	StopItSlender = {
		Name = "Stop It Slender!",
		Description = "This script is a community submitted script, we have no info on it",
		Games = {30869879}, --4483381587
		Premium = false,
		Loadstring = "https://pastebin.com/raw/hFxynXvs",
	},
		ALiteralBaseplate = {
		Name = "A Literal Baseplate",
		Description = "Example for infinite yield",
		Games = {4483381587},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
	},
	inooarctic = {
		Name = "Remote Control Panel",
		Description = "Mess around with the cooling elements of the core",
		Games = {1033860623},
		Premium = false,
		Loadstring = "https://raw.githubusercontent.com/choke-dev/RE-Script/main/Innovation%20Inc%20Games/IAB%20FluxUI.lua?token=ALLESGRKZAOXBNLRWXVQORTBIXH3A",
	},
	StrollerAbuse = {
		Name = "Stroller UI",
		Description = "Kill and bring players using the Stroller tool's flaws",
		Games = {1662219031},
		Premium = false,
		Loadstring = "https://pastebin.com/raw/Q4qQh4MS",
	},
}






function figureNotifs(Stack,Container)
	local stacksize = 1

	local i = #Stack
	while i > 0 do
		local gui = Stack[i]
		if gui then
			if stacksize == 1 then
				stacksize = 0
			else
				stacksize = stacksize + 0.135
			end
			local desiredpos = UDim2.new(0,0,stacksize,0)
			if gui.Position ~= desiredpos then
				gui:TweenPosition(desiredpos,"Out","Quint",0.5,true)
			end
		end
		i = i-1
	end
end

function figureToasts(Stack,Container)

	local stacksize = 0

	local i = #Stack
	while i > 0 do
		local gui = Stack[i]
		if gui then
			if stacksize == 0 then
				stacksize = 1
			else
				stacksize = stacksize - 0.13
			end
			local desiredpos = UDim2.new(0.5,0,stacksize,0)
			if gui.Position ~= desiredpos then
				gui:TweenPosition(desiredpos,"Out","Quint",0.6,true)
			end
		end
		i = i-1
	end
end

function Toast(Content,Font)
	if DMNReady then
		Domain.Toasts.Visible = true
		Domain.Toasts.ClipsDescendants = false
		Domain.Toasts.Template.Visible = false
		spawn(function()
			if not Font then
				Font = "GothamSemibold"
			end
			local notificationContainer = Domain.Toasts
			local Notification = notificationContainer:WaitForChild('Template')	
			local notifClone = Notification:Clone()
			local notifContent = notifClone:WaitForChild('Content')
			if Font == "GothamSemiBold" then
				Font = "GothamSemibold"
			end
			notifClone.BackgroundTransparency = 1
			notifContent.Font = Font
			notifContent.TextWrapped = false
			notifContent.TextTransparency = 1
			notifContent.BackgroundTransparency = 1
			notifClone.Name = 'Toast'
			notifClone.Visible = true
			notifContent.Text = Content
			notifClone.Parent = notificationContainer
			notifContent.TextYAlignment = Enum.TextYAlignment.Center
			notifClone.Position = UDim2.new(0.5,1,0)
			wait(0.5)
			notifClone:TweenPosition(UDim2.new(0.5,0.87,0),'Out','Quint',0.3,true)
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 0.9})
			tween:Play()
			table.insert(ToastStack,notifClone)
			figureToasts(ToastStack,notificationContainer)


			wait(7)
			for a,b in pairs(ToastStack) do
				if b == notifClone then
					table.remove(ToastStack,a)
				end
			end
			wait(0.05)
			notifClone:TweenPosition(UDim2.new(0.5,0,notifClone.Position.Y.Scale-0.3,0),'Out','Quint',1,true)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 1})
			tween:Play()
			wait(0.305)
			notifClone:Destroy()
			figureToasts(ToastStack,notificationContainer)
		end)
	end
end

function Notify(Title,Content,Image,Rotation,ImageRectOffset)
	spawn(function()
		-- Set Up
		if not NotificationsEnabled then
			return
		end
		local notificationContainer = Domain.Notifications
		local Notification = notificationContainer:FindFirstChild('Template') or nil
		if Notification == nil then
			warn("\nUnable to notify, error finding template")
			warn("\nArguments: \nTitle - "..Title.."\nContent - "..Content.."\nImage - "..tostring(Image))
			return
		end
		local notifClone = Notification:Clone()
		local notifTitle = notifClone:WaitForChild('Title')
		local notifContent = notifClone:WaitForChild('Content')
		notifClone.Name = 'Notification'
		notifClone.Visible = true
		notifTitle.Text = Title
		if Image then
			notifClone.Image.Image = "rbxassetid://"..Image
		else
			notifClone.Image.Image = "rbxassetid://6404488837"
		end

		if ImageRectOffset then
			notifClone.Image.ImageRectOffset = ImageRectOffset
			notifClone.Image.ImageRectSize = Vector2.new(36,36)
		else
			notifClone.Image.ImageRectOffset = Vector2.new(0,0)
			notifClone.Image.ImageRectSize = Vector2.new(0,0)
		end

		if Content then
			notifContent.Text = Content
		else
			notifContent.Text = "No more details"
		end

		notifClone.Parent = notificationContainer
		notifClone.Position = UDim2.new(-1,0,0,0)
		wait(0.5)
		-- Sound
		local sound = Instance.new("Sound")
		sound.Parent = Domain
		sound.SoundId = "rbxassetid://"..255881176
		sound.Name = "notify"
		sound.Volume = 2
		sound.PlayOnRemove = true
		sound:Destroy()
		-- Animate
		notifClone:TweenPosition(UDim2.new(0,0,0,0),'Out','Quint',0.5,true)

		table.insert(NotificationStack,notifClone)
		figureNotifs(NotificationStack,notificationContainer)
		-- Wait
		wait(0.3)
		if Rotation then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(notifClone.Image, transitionInfo, {Rotation = notifClone.Image.Rotation + 360})
			tween:Play()
			wait(1.2)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(notifClone.Image, transitionInfo, {Rotation = notifClone.Image.Rotation + 360})
			tween:Play()
			wait(1.2)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(notifClone.Image, transitionInfo, {Rotation = notifClone.Image.Rotation + 360})
			tween:Play()
			wait(1.2)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(notifClone.Image, transitionInfo, {Rotation = notifClone.Image.Rotation + 360})
			tween:Play()
			wait(NotificationDuration-3.9)
		else
			wait(NotificationDuration)
		end

		-- Close
		for a,b in pairs(NotificationStack) do
			if b == notifClone then
				table.remove(NotificationStack,a)
			end
		end

		local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(notifClone, transitionInfo, {Size = UDim2.new(0.937, 0, 0.116, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(notifClone, transitionInfo, {BackgroundTransparency = 0.3})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(notifTitle, transitionInfo, {TextTransparency = 0.3})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(notifContent, transitionInfo, {TextTransparency = 0.3})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(notifClone.Image, transitionInfo, {ImageTransparency = 0.3})
		tween:Play()
		wait(0.05)
		notifClone:TweenPosition(UDim2.new(1,0,notifClone.Position.Y.Scale,0),'In','Quint',0.7,true)
		wait(1.35)
		notifClone:Destroy()
		figureNotifs(NotificationStack,notificationContainer)
	end)
end

function Refresh()
	Notify("Hold on","We're refreshing your character, this can take a moment",4335476290,true)
	local PreviousPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
	LocalPlayer.Character.Humanoid.Health = 0
	if LocalPlayer.Character:FindFirstChild("Head") then LocalPlayer.Character.Head:Destroy() end
	LocalPlayer.CharacterAdded:Wait()
	LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	LocalPlayer.Character.HumanoidRootPart.CFrame = PreviousPosition
end

function FindRootPart(Character)
	local rootPart = Character:FindFirstChild('HumanoidRootPart') or Character:FindFirstChild('Torso') or Character:FindFirstChild('UpperTorso')
	return rootPart
end

function HasTools()
	if LocalPlayer:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or LocalPlayer.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function AttachToPlayer(Player)
	if HasTools() then
		local Character = LocalPlayer.Character
		local PlCharacter = Player.Character
		local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid") -- Can sometimes fail, causing kill to error, working on fix
		local HumanoidRootPart = FindRootPart(LocalPlayer.Character)
		local PlHumanoidRootPart = FindRootPart(Player.Character)
		Humanoid.Name = "1"
		local NewHumanoid = Humanoid:Clone()
		NewHumanoid.Parent = Character
		NewHumanoid.Name = "Humanoid"
		wait()
		Humanoid:Destroy()
		workspace.CurrentCamera.CameraSubject = Character
		NewHumanoid.DisplayDistanceType = "None"
		local Tool = LocalPlayer:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or LocalPlayer.Character:FindFirstChildOfClass("Tool")
		Tool.Parent = Character
		HumanoidRootPart.CFrame = PlHumanoidRootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			HumanoidRootPart.CFrame = PlHumanoidRootPart.CFrame
		until (Tool.Parent ~= Character or not HumanoidRootPart or not PlHumanoidRootPart or not HumanoidRootPart.Parent or not PlHumanoidRootPart.Parent or n > 250) and n > 2
	else
		Toast("You need a tool to perform this action on "..Player.Name) 
	end
end

function Kill(Player)
	if HasTools() then
		if Player and Player ~= nil then
			Toast("Trying to kill "..Player.Name)
			local RegularPosition = FindRootPart(LocalPlayer.Character).CFrame
			Refresh()
			wait()
			repeat wait() until LocalPlayer.Character ~= nil and FindRootPart(LocalPlayer.Character)
			wait(0.3)
			local HumanoidRootPart = FindRootPart(LocalPlayer.Character)
			AttachToPlayer(Player)
			repeat
				wait()
				HumanoidRootPart.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not FindRootPart(LocalPlayer.Character) or not FindRootPart(LocalPlayer.Character)
			wait(1)
			LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = RegularPosition
		else
			Toast("We are unable to find the Player instance")
		end
	else
		Toast("You need a tool to perform kill on "..Player.Name) 
	end
end


function PreviousElegance(check)
	left = false
	if not check then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
	end
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	Domain.DisplayOrder = 100
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Back)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0.295, 0,0.068, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Interact, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		end
	end
end

function elegance(check)
	if not Domain then
		return
	end
	if not Domain:FindFirstChild("Main") then
		return
	end
	if Domain.Main.KeybindNote.TextTransparency ~= 1 then
		return
	end
	if not check then
		if game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
			inventorywasopen = true
		end
		if inventorywasopen then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
		end
	end
	Domain.DisplayOrder = 1
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0.271, 0,0.062, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0.6})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0.5})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Interact, transitionInfo, {ImageTransparency = 0.5})
			tween:Play()
		end
	end
end


Domain.Main.MouseEnter:Connect(function()
	PreviousElegance()
end)

UserInputService.WindowFocused:Connect(function()
	if not Domain:FindFirstChild("Main") then
		return
	end
	wait(0.1)
	PreviousElegance("b")
end)

Domain.Main.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen then 
		return
	end
	left = true
	wait(0.5)
	if not left then
		return
	end
	wait(0.5)
	if not left then
		return
	end
	wait(8)
	if not left then
		return
	end
	elegance()
end)
UserInputService.WindowFocusReleased:Connect(function()
	if scriptsopen or plrlistopen or plrconopen then 
		return
	end
	elegance("b")
end)

function Respawn()

	Notify("Respawn","We're respawning your character, this can take a moment",4335476290,true)
	local Character = LocalPlayer.Character
	if Character:FindFirstChildOfClass("Humanoid") then 
		Character:FindFirstChildOfClass("Humanoid"):ChangeState(15) 
	end
	Character:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	LocalPlayer.Character = newChar
	wait()
	LocalPlayer.Character = Character
	newChar:Destroy()
end

function Unfly()
	Flying = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function BeginFly()
	local Mouse = LocalPlayer:GetMouse()
	repeat wait() until LocalPlayer and LocalPlayer.Character and FindRootPart(LocalPlayer.Character) and LocalPlayer.Character:FindFirstChild('Humanoid')
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = FindRootPart(LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function Flyv2()
		Flying = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
				if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then

					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not Flying
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (PlayerFlySpeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (PlayerFlySpeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (PlayerFlySpeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (PlayerFlySpeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (PlayerFlySpeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(PlayerFlySpeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	Flyv2()
end

function Fly()
	Unfly()
	wait()
	BeginFly()
end


local Clip = true
local Noclipping
function NoClip()
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and LocalPlayer.Character ~= nil then
			for _, child in pairs(LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
	Toast("Character NoClip enabled")
end

function ReClip()
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
	Toast("Character NoClip disabled")
end

function God()
	Toast("God Mode enabled - Respawn to disable")
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, LocalPlayer.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, LocalPlayer.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	LocalPlayer.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end

function Teleport(Player)
	if game.Players:FindFirstChild(Player.Name) then
		Toast("Attempting to teleport you to "..Player.Name)
		local targetplayer = game.Workspace:FindFirstChild(Player.Name).HumanoidRootPart
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetplayer.Position.X, targetplayer.Position.Y, targetplayer.Position.Z)
	else
		Toast(Player.Name.." has left the server")
	end
end

function ESP(Player)
	local plr = game:GetService("Workspace")
	local target = plr[Player.Name]
	local targett = target.Name
	if target then
		local a = Instance.new("BillboardGui",target)
		a.Size = UDim2.new(3,0, 3,0)
		a.Name = "A"
		a.AlwaysOnTop = true
		local b = Instance.new("Frame",a)
		b.Size = UDim2.new(1.3,0, 2,0)
		b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		b.BackgroundTransparency = 0.4
		b.BorderSizePixel = 0
		local lol = Instance.new("UICorner",b)
		local c = Instance.new("TextLabel",b)
		c.Text = targett
		c.Size = UDim2.new(1,0, 1,0)
		c.Font = "GothamBold"
		c.TextColor3 = Color3.fromRGB(34, 34, 34)
		c.BackgroundTransparency = 1
		c.BorderSizePixel = 0
	end
end
function UnESP(Player)
	local plr = game:GetService("Workspace")
	local target = plr[Player.Name]
	local targett = target.Name
	if target then
		if target:FindFirstChildWhichIsA("BillboardGui") then
			target:FindFirstChildWhichIsA("BillboardGui"):Destroy()
		end
	end
end
function AddPlayer(Player)

	local template = Domain.Playerlist.List.Template
	if Domain.Playerlist.List:FindFirstChild(Player.Name) then
		return
	end
	if not Domain.Playerlist.List:FindFirstChild("Template") then
		return
	end
	local NewPlr = template:Clone()
	NewPlr.Parent = Domain.Playerlist.List
	if Player.Name == LocalPlayer.Name then
		NewPlr.SName.Font = "GothamBold"
	else 
		NewPlr.SName.Font = "GothamSemibold"
	end
	if Player.Name ~= "AdiossLoki" then
		NewPlr.PremiumBar.Visible = false
	else 
		NewPlr.PremiumBar.Text.Text = "Owner"
		NewPlr.PremiumBar.BackgroundColor3 = Color3.fromRGB(224, 16, 16)
	end
	if NewPlr:FindFirstChild("Avatar") then
		NewPlr.Avatar.Image = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
	end

	NewPlr.Size = UDim2.new(0.979, 0, 0.0103, 0)
	NewPlr.Visible = true
	NewPlr.Name = Player.Name
	if CurrentListPosition == 1 then 
		CurrentListPosition = 0
	else
		CurrentListPosition = CurrentListPosition + 0.3
	end
	NewPlr.ESP.ImageTransparency = 0.5
	NewPlr.SName.Text = Player.Name
	if Player.OsPlatform == "Lisbon" then
		NewPlr.SName.Text = Player.Name.." - Using Lisbon"
	end

	NewPlr.Kill.MouseButton1Click:Connect(function()
		Kill(Player)
	end)
	NewPlr.Teleport.MouseButton1Click:Connect(function()
		Teleport(Player)
	end)
	NewPlr.ESP.MouseButton1Click:Connect(function()
		if NewPlr.ESP.ImageTransparency == 0.5 then
			ESP(Player)
			NewPlr.ESP.ImageTransparency = 0
		else
			NewPlr.ESP.ImageTransparency = 0.5
			UnESP(Player)
		end
	end)
end

function OpenMain()
	db = true
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.KeybindNote, transitionInfo, {TextTransparency = 1})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.KeybindNote, transitionInfo, {TextStrokeTransparency = 1})
	tween:Play()
	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			button.BackgroundTransparency = 1
			button.Interact.ImageTransparency = 1
			button.Position = UDim2.new(button.Position.X.Scale, 0,1.6, 0)
			button.Size = UDim2.new(0.079, 0, 0.55, 0)
		end
	end
	Domain.Main.Time.Position = UDim2.new(0.09,0,1,0)
	Domain.Main.BackgroundTransparency = 1
	Domain.Main.Time.TextTransparency = 1
	Domain.Main.Position = UDim2.new(0.5, 0, 1.15, 0)
	Domain.Main.Size = UDim2.new(0.271, 0,0.062, 0)
	Domain.Main.Visible = true


	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Position = UDim2.new(0.5, 0,0.952, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Shadow, transitionInfo, {ImageTransparency = 0.7})
	tween:Play()
	wait(0.18)
	if game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
		inventorywasopen = true
	end
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Back)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0.295, 0,0.068, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.78, 0)})
	tween:Play()

	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {Position = UDim2.new(0.09, 0, 0.5, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0})
	tween:Play()
	if not homeopen and not homedb and not ExecutorAutomatic and workspace.CurrentCamera.FieldOfView ~= 70 then
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 70})
		tween:Play()
	end
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.05)

	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button.Interact, transitionInfo, {ImageTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {Position = UDim2.new(button.Position.X.Scale, 0,0.5, 0)})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {Size = UDim2.new(0.093, 0,0.647, 0)})
			tween:Play()
		end
	end
	wait(0.95)
	db = false
	baropen = true
end


function CloseMain()
	db = true
	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button.Interact, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end

	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(1.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0.271, 0,0.062, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Shadow, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.03)
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Position = UDim2.new(0.5, 0, 1.05, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.832, 0)})
	tween:Play()

	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 1})
	tween:Play()
	if inventorywasopen then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
		inventorywasopen = false
	end

	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	wait(0.8)
	db = false
	baropen = false
end

function OpenPlayerConfig()
	db = true
	plrconopen = true
	if scriptsopen then
		CloseScripts()
		scriptsopen = false
	elseif plrlistopen then
		ClosePlayerlist()
		plrlistopen = false
	end
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)

	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.56, 0)})
	tween:Play()
	wait(0.05)
	Domain.Player.Size = UDim2.new(0.278,0,0.189,0)
	Domain.Player.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Player.BackgroundTransparency = 1
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			o.BackgroundTransparency = 1
			if o:FindFirstChild("Action") then
				o.Action.Amount.BackgroundTransparency = 1	
			end
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			o.TextTransparency = 1
		end
	end
	Domain.Player.Divider.Size = UDim2.new(0,0,0.007,0)
	Domain.Player.Visible = true
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5,0,0.81,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Size = UDim2.new(0.296,0,0.201,0)})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.05)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Divider, transitionInfo, {Size = UDim2.new(1,0,0.007,0)})
	tween:Play()
	wait(0.1)
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "UIStroke" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {Transparency = 0})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			if o.Parent:FindFirstChild("Action") then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0.6})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			if o.Name == "Shadow" then
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0.8})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end

		end
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			if o:FindFirstChild("Action") then
				local siz = o.Action.Amount.Size
				o.Action.Amount.Size = UDim2.new(0,0,1,0)
				local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				wait(0.01)
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {Size = siz})
				tween:Play()
			end
			if o.ClassName ~= "UIStroke" then
				wait(0.001)
			end
		end
	end
	db = false
end

function ClosePlayerConfig()
	db = true
	plrconopen = false
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
	end
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			if o:FindFirstChild("Action") then
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "UIStroke" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {Transparency = 1})
			tween:Play()
		end
	end
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Divider, transitionInfo, {Size = UDim2.new(0,0,0.007,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Size = UDim2.new(0.271, 0, 0.184, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5,0,0.802,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.78, 0)})
	tween:Play()

	wait(0.3)
	Domain.Player.Visible = false
	db = false
end

function OpenScripts()
	db = true
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
	end
	scriptsopen = true
	if plrlistopen then
		ClosePlayerlist()
		plrlistopen = false
	elseif plrconopen then
		ClosePlayerConfig()
		plrconopen = false
	end
	for _, AddedScript in ipairs(Domain.Scripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			AddedScript.BackgroundTransparency = 1
			AddedScript.TextButton.BackgroundTransparency = 1
			AddedScript.TextButton.TextTransparency = 1
			AddedScript.SName.TextTransparency = 1
			AddedScript.Shadow.ImageTransparency = 1
			AddedScript.Description.TextTransparency = 1
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.56, 0)})
	tween:Play()
	Domain.Scripts.Title.TextTransparency = 1
	Domain.Scripts.Size = UDim2.new(0.278,0,0.189,0)
	Domain.Scripts.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Scripts.BackgroundTransparency = 1
	Domain.Scripts.Divider.Size = UDim2.new(0,0,0.007,0)
	Domain.Scripts.Visible = true
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5,0,0.81,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Shadow, transitionInfo, {ImageTransparency = 0.8})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Size = UDim2.new(0.296,0,0.201,0)})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Divider, transitionInfo, {Size = UDim2.new(1,0,0.007,0)})
	tween:Play()
	for _, AddedScript in ipairs(Domain.Scripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.SName, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Shadow, transitionInfo, {ImageTransparency = 0.85})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Description, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.TextButton, transitionInfo, {BackgroundTransparency = 0.8})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.TextButton, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.05)
		end
	end

	wait(0.6)

	db = false
end

function CloseScripts()
	db = true
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
	end
	scriptsopen = false
	for _, AddedScript in ipairs(Domain.Scripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.SName, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Description, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.TextButton, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.TextButton, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Shadow, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Shadow, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Divider, transitionInfo, {Size = UDim2.new(0,0,0.007,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Size = UDim2.new(0.271, 0, 0.184, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5,0,0.802,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.78, 0)})
	tween:Play()
	wait(0.4)
	Domain.Scripts.Visible = false
	db = false
end



function CloseJC()
	db = true
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
	end


	for _, o in ipairs(Domain.JoinCodes:GetDescendants()) do
		if o.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" or o.ClassName == "TextBox" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.JoinCodes, transitionInfo, {Size = UDim2.new(0.22, 0, 0.207, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.JoinCodes, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	wait(0.6)
	jcopen = false
	Domain.JoinCodes.Visible = false
	db = false
end

function OpenPlayerlist()
	db = true
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
	end
	plrlistopen = true
	if scriptsopen then
		CloseScripts()
		scriptsopen = false
	elseif plrconopen then
		ClosePlayerConfig()
		plrconopen = false
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.56, 0)})
	tween:Play()

	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" then
			plrframe.BackgroundTransparency = 1
			plrframe.SName.TextTransparency = 1
			if plrframe:FindFirstChild("Avatar") then
				plrframe.Avatar.ImageTransparency = 1
				plrframe.Avatar.BackgroundTransparency = 1
			end
			plrframe.ESP.Visible = false
			plrframe.Kill.ImageTransparency = 1
			plrframe.Teleport.ImageTransparency = 1
			plrframe.ButtonBG.BackgroundTransparency = 1
			plrframe.PremiumBar.BackgroundTransparency = 1
			plrframe.PremiumBar.Text.TextTransparency = 1
			plrframe.UIStroke.Transparency = 1
		end
	end
	wait(0.1)
	Domain.Playerlist.Search.Visible = false
	Domain.Playerlist.Title.TextTransparency = 1
	Domain.Playerlist.Size = UDim2.new(0.278,0,0.189,0)
	Domain.Playerlist.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Playerlist.BackgroundTransparency = 1
	Domain.Playerlist.Divider.Size = UDim2.new(0,0,0.007,0)
	Domain.Playerlist.Visible = true
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5,0,0.81,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Size = UDim2.new(0.296,0,0.201,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Shadow, transitionInfo, {ImageTransparency = 0.8})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Divider, transitionInfo, {Size = UDim2.new(1,0,0.007,0)})
	tween:Play()
	wait(0.2)

	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" and plrframe then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(plrframe, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.02)
			if plrframe:FindFirstChild("Avatar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("SName") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.SName, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("ButtonBG") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.ButtonBG, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("Kill") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Kill, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("ESP") then
				plrframe.ESP.Visible = true
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Teleport, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("PremiumBar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()

				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar.Text, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
			wait(0.005)
			if plrframe:FindFirstChild("UIStroke") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.UIStroke, transitionInfo, {Transparency = 0})
				tween:Play()
			end
		end
	end
	wait(0.5)
	Domain.Playerlist.Visible = true
	db = false
end

function PromptPremium()
	if UserIsPremium then
		return
	end
	local cl = false
	Domain.Premium.Size = UDim2.new(0.222, 0, 0.19, 0)
	Domain.Premium.Position = UDim2.new(0.5, 0, 0.53, 0)
	Domain.Premium.UIGradient.Offset = Vector2.new(1,0)
	Domain.Premium.BackgroundTransparency = 1
	Domain.Premium.Dollars.Text = Price
	Domain.Premium.UIStroke.Transparency = 1
	Domain.Premium.Exit.ImageTransparency = 1
	Domain.Premium.Title.TextTransparency = 1
	Domain.Premium.Description.TextTransparency = 1
	Domain.Premium.Shadow.ImageTransparency = 1
	Domain.Premium.Purchase.BackgroundTransparency = 1
	Domain.Premium.Purchase.TextTransparency = 1
	Domain.Premium.Purchase.UIStroke.Transparency = 1
	Domain.Premium.FeaturesTitle.TextTransparency = 1
	Domain.Premium.Dollars.TextTransparency = 1
	Domain.Premium.Robux.TextTransparency = 1
	for _, f in ipairs(Domain.Premium.Features:GetChildren()) do
		if f.ClassName == "TextLabel" then
			f.TextTransparency = 1
		end
	end
	Domain.Premium.Visible = true

	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {Position = UDim2.new(0.5, 0, 0.5, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Shadow, transitionInfo, {ImageTransparency = 0.9})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {Size = UDim2.new(0.242, 0, 0.207, 0)})
	tween:Play()
	wait(1)
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.UIGradient, transitionInfo, {Offset = Vector2.new(0,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Description, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.4)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.FeaturesTitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.15)
	for _, f in ipairs(Domain.Premium.Features:GetChildren()) do
		if f.ClassName == "TextLabel" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(f, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.1)
		end
	end
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Dollars, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Robux, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Exit, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	Domain.Premium.Purchase.AutoButtonColor = false
	Domain.Premium.Purchase.MouseEnter:Connect(function()
		if cl then
			return
		end
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.313,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.796,0,0.862,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0.4})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Join Discord"
	end)
	Domain.Premium.Purchase.MouseLeave:Connect(function()
		if cl then
			return
		end
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.233,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.856,0,0.862,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Purchase"
	end)

	Domain.Premium.Exit.MouseButton1Click:Connect(function()
		cl = true
		for _, obj in ipairs(Domain.Premium:GetDescendants()) do
			if obj.ClassName == "Frame" or obj.ClassName == "TextButton" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageButton" or obj.ClassName == "ImageLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.51)
		Domain.Premium.Purchase.Text = "Purchase"
		Domain.Premium.Visible = false
	end)

	Domain.Premium.Purchase.MouseButton1Click:Connect(function()
		cl = true
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.233,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.856,0,0.862,0)})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Working.."
		local HttpService = game:GetService("HttpService")
		local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
		if RequestEnabled then
			RequestEnabled({
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = HttpService:JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = HttpService:GenerateGUID(false),
					args = {code = DiscordLink2}
				})
			})
		end
		Domain.Premium.Purchase.Text = "Joined!"
		wait(0.5)
		for _, obj in ipairs(Domain.Premium:GetDescendants()) do
			if obj.ClassName == "Frame" or obj.ClassName == "TextButton" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageButton" or obj.ClassName == "ImageLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.51)
		Domain.Premium.Purchase.Text = "Purchase"
		Domain.Premium.Visible = false
	end)
end

function ClosePlayerlist()
	db = true
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
	end
	plrlistopen = false
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" and plrframe then

			if plrframe:FindFirstChild("Avatar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("SName") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.SName, transitionInfo, {TextTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("ButtonBG") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.ButtonBG, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("Kill") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Kill, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("ESP") then
				plrframe.ESP.Visible = false
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Teleport, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.UIStroke, transitionInfo, {Transparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("PremiumBar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar.Text, transitionInfo, {TextTransparency = 1})
				tween:Play()
			end
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(plrframe, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()

		end
	end





	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Shadow, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Divider, transitionInfo, {Size = UDim2.new(0,0,0.007,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Size = UDim2.new(0.271, 0, 0.184, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5,0,0.802,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.78, 0)})
	tween:Play()

	wait(0.4)
	Domain.Playerlist.Visible = false
	db = false
end

function StartPopUpFramework()
	if DMNReady then
		for _, button in ipairs(Domain.Player:GetChildren()) do
			if button:FindFirstChild("Interact") then
				button.Interact.MouseEnter:Connect(function()
					button.Popup.Visible = true
					button.Popup.BackgroundTransparency = 1
					button.Popup.Pointer.ImageTransparency = 1
					button.Popup.Title.TextTransparency = 1
					button.Popup.Pointer.ImageColor3 = button.Popup.BackgroundColor3
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup, transitionInfo, {BackgroundTransparency = 0})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Pointer, transitionInfo, {ImageTransparency = 0})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Title, transitionInfo, {TextTransparency = 0})
					tween:Play()
				end)
				button.Interact.MouseLeave:Connect(function()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup, transitionInfo, {BackgroundTransparency = 1})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Pointer, transitionInfo, {ImageTransparency = 1})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Title, transitionInfo, {TextTransparency = 1})
					tween:Play()
					wait(0.2)
					button.Popup.Visible = false
				end)
			end
		end
	end
end

function OpenHome()
	if not homedb and DMNReady then
		if jcopen then
			CloseJC()
		end
		if not ThemeEnabled then
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)

		end
		homedb = true
		homeopen = true
		local blur = Instance.new("BlurEffect",game.Lighting)
		blur.Name = "DomainBlur"
		blur.Size = 0
		Domain.Home.Shadow.ImageTransparency = 1
		Domain.Home.Welcome.TextTransparency = 1
		Domain.Home.WelcomeSub.TextTransparency = 1
		-- CAMERA
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(game.Lighting:FindFirstChild("DomainBlur"), transitionInfo, {Size = 24})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 40})
		tween:Play()
		-- PLAYERGUI
		for _, gui in ipairs(LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
			if gui:IsA("ScreenGui") then
				if gui.Enabled then
					if not table.find(CachedUI,gui.Name) then
						table.insert(CachedUI,#CachedUI+1,gui.Name)
					end
					gui.Enabled = false
				end
			end
		end
		-- AUDIO
		for _, audio in ipairs(workspace:GetChildren()) do
			if audio.ClassName == "Sound" then
				local EQ = Instance.new("EqualizerSoundEffect")
				EQ.Parent = audio
				EQ.Name = "DomainEditorialEffect"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {HighGain = -20})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {LowGain = 5})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {MidGain = -20})
				tween:Play()
			end
		end
		-- CoreGUI
		table.clear(cachedcoreguis)
		for _, coregui in pairs(coreguis) do
			if game:GetService("StarterGui"):GetCoreGuiEnabled(coregui) then
				table.insert(cachedcoreguis,#cachedcoreguis,coregui)
			end
		end
		for _, coregui in pairs(cachedcoreguis) do
			game:GetService("StarterGui"):SetCoreGuiEnabled(coregui,false)
		end
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 0})
		tween:Play()
			-- Discord
		Domain.Home.Discord.BackgroundTransparency = 1
		Domain.Home.Discord.Title.TextTransparency = 1
		Domain.Home.Discord.Info.TextTransparency = 1
		Domain.Home.Discord.Icon.ImageTransparency = 1
		Domain.Home.Discord.Copyframe.BackgroundTransparency = 1
		Domain.Home.Discord.Copyframe.Copy.ImageTransparency = 1
		Domain.Home.Discord.Size = UDim2.new(0.157, 0, 0.137, 0)
		Domain.Home.Discord.Position = UDim2.new(0.013, 0,0.488, 0)
		-- Friends
		Domain.Home.Friends.BackgroundTransparency = 1
		Domain.Home.Friends.Icon.ImageTransparency = 1
		Domain.Home.Friends.Info.TextTransparency = 1
		Domain.Home.Friends.Title.TextTransparency = 1
		Domain.Home.Friends.Online.BackgroundTransparency = 1
		Domain.Home.Friends.Online.Icon.ImageTransparency = 1
		Domain.Home.Friends.Online.FriendsOnline.TextTransparency = 1
		Domain.Home.Friends.Online.Title.TextTransparency = 1
		Domain.Home.Friends.Offline.BackgroundTransparency = 1
		Domain.Home.Friends.Offline.Icon.ImageTransparency = 1
		Domain.Home.Friends.Offline.FriendsOffline.TextTransparency = 1
		Domain.Home.Friends.Offline.Title.TextTransparency = 1
		Domain.Home.Friends.InServer.BackgroundTransparency = 1
		Domain.Home.Friends.InServer.Icon.ImageTransparency = 1
		Domain.Home.Friends.InServer.FriendsInGame.TextTransparency = 1
		Domain.Home.Friends.InServer.Title.TextTransparency = 1
		Domain.Home.Friends.All.BackgroundTransparency = 1
		Domain.Home.Friends.All.Icon.ImageTransparency = 1
		Domain.Home.Friends.All.FriendsAll.TextTransparency = 1
		Domain.Home.Friends.All.Title.TextTransparency = 1
		Domain.Home.Friends.Size = UDim2.new(0.215, 0,0.191, 0)
		Domain.Home.Friends.Position = UDim2.new(0.233, 0,0.15, 0)
		-- Data
		Domain.Home.Data.BackgroundTransparency = 1
		Domain.Home.Data.Title.TextTransparency = 1
		Domain.Home.Data.Info.TextTransparency = 1
		for _, txt in ipairs(Domain.Home.Data.data:GetChildren()) do
			if txt.Name ~= "UIListLayout" then
				txt.TextTransparency = 1
				txt.RichText = true
			end
		end
		Domain.Home.Data.Size = UDim2.new(0.216, 0,0.219, 0)
		Domain.Home.Data.Position = UDim2.new(0.013, 0,0.151, 0)
		-- Music, ControlPanel and FPS
		Domain.Home.ControlPanel.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Lighting.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Notification.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Power.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Lighting.Interact.ImageTransparency = 1
		Domain.Home.ControlPanel.Buttons.Notification.Interact.ImageTransparency = 1
		Domain.Home.ControlPanel.Buttons.Power.Interact.ImageTransparency = 1


		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				mitem.ImageTransparency = 1
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				mitem.TextTransparency = 1
			elseif mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				mitem.BackgroundTransparency = 1
			end
		end
		-- User
		Domain.Home.User.BackgroundTransparency = 1
		Domain.Home.User.BigTitle.TextTransparency = 1
		Domain.Home.User.Title.TextTransparency = 1
		Domain.Home.User.Avatar.ImageTransparency = 1
		Domain.Home.User.Avatar.BackgroundTransparency = 1
		Domain.Home.User.Size = UDim2.new(0.16, 0,0.094, 0)
		Domain.Home.User.Position = UDim2.new(0.012, 0,0.381, 0)
		-- Keybind
		Domain.Home.Keybind.BackgroundTransparency = 1
		Domain.Home.Keybind.KeyBG.BackgroundTransparency = 1
		Domain.Home.Keybind.Title.TextTransparency = 1
		Domain.Home.Keybind.Info.TextTransparency = 1
		Domain.Home.Keybind.KeyBG.KeyBox.TextTransparency = 1
		Domain.Home.Keybind.Size = UDim2.new(0.126, 0,0.086, 0)
		Domain.Home.Keybind.Position = UDim2.new(0.006, 0,0.909, 0)
		-- Wallpaper
		Domain.Home.WallpaperManage.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.WBG.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.Title.TextTransparency = 1
		Domain.Home.WallpaperManage.Info.TextTransparency = 1
		Domain.Home.WallpaperManage.WBG.WBox.TextTransparency = 1
		Domain.Home.WallpaperManage.None.Interact.ImageTransparency = 1
		Domain.Home.WallpaperManage.None.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.Size = UDim2.new(0.109, 0,0.086, 0)
		Domain.Home.WallpaperManage.Position = UDim2.new(0.87, 0,0.072, 0)
		-- Executors
		Domain.Home.Executors.BackgroundTransparency = 1
		Domain.Home.Executors.Title.TextTransparency = 1
		Domain.Home.Executors.Info.TextTransparency = 1
		Domain.Home.Executors.Size = UDim2.new(0.155, 0, 0.175, 0)
		Domain.Home.Executors.Position = UDim2.new(0.828, 0,0.171, 0)
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				img.ImageTransparency = 1
			end
		end

		Domain.Home.Visible = true
		wait(0.01)

		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Shadow, transitionInfo, {ImageTransparency = 0.25})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Welcome, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()	
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.FPSText, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WelcomeSub, transitionInfo, {TextTransparency = 0.3})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				if mitem.Name == "ShadowDown" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 0.8})
					tween:Play()
				else
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 0})
					tween:Play()
				end
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {TextTransparency = 0})
				tween:Play()
			elseif mitem.Name ~= "ID" and mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
			end
		end

		-- Discord Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {Size = UDim2.new(0.155, 0,0.115, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {Position = UDim2.new(0.013, 0,0.488, 0)})
		tween:Play()
		wait(0.05)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Icon, transitionInfo, {ImageTransparency = 0.95})
		tween:Play()
		wait(0.05)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe.Copy, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		wait(0.01)
		-- Friends Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {Size = UDim2.new(0.215, 0,0.191, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {Position = UDim2.new(0.233, 0,0.15, 0)})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.FriendsOnline, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.FriendsOffline, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.FriendsInGame, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.FriendsAll, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- Data Animation
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {Size = UDim2.new(0.216, 0,0.219, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {Position = UDim2.new(0.013, 0,0.151, 0)})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Executor, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Version, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Time, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Players, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.File, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- User Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {Size = UDim2.new(0.16, 0,0.094, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {Position = UDim2.new(0.012, 0,0.381, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {BackgroundTransparency = 0.9})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.BigTitle, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- Executors
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {Size = UDim2.new(0.151, 0, 0.17, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {Position = UDim2.new(0.828, 0,0.171, 0)})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(img, transitionInfo, {ImageTransparency = 0})
				tween:Play()
				wait(0.001)
			end
		end
		-- Keybind
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {Size = UDim2.new(0.126, 0,0.086, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {Position = UDim2.new(0.006, 0,0.909, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG.KeyBox, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {Size = UDim2.new(0.109, 0,0.086, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {Position = UDim2.new(0.87, 0,0.072, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG.WBox, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.65)

		homedb = false
	end
end

function ChangeWallpaper(WallpaperFileName)
	if not UserIsPro then
		Toast("You must be Pro to use this feature!")
		PromptPremium()
		return
	end
	if CheckWritefile() then
		if isfile(WallpaperFileName) then
			Domain.Home.Wallpaper.Visible = true
			Domain.Home.Wallpaper.ImageTransparency = 1
			if getsynasset then
				Domain.Home.Wallpaper.Image = getsynasset(WallpaperFileName)
				writefile("Lisbon Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName)
			elseif getcustomasset then
				Domain.Home.Wallpaper.Image = getcustomasset(WallpaperFileName)
				writefile("Lisbon Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName)
			else
				Toast("Missing getcustomasset function")
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		else
			Notify("Couldn't locate file","We couldn't locate the file for use, make sure you add .png or .jpeg to the textbox",3944676352)
		end
	end
end

Domain.Home.WallpaperManage.None.Interact.MouseButton1Click:Connect(function()
	if CheckWritefile() then
		if isfile("Lisbon Wallpaper.txt") then
			delfile("Lisbon Wallpaper.txt")
			Domain.Home.WallpaperManage.WBG.WBox.Text = ""
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Home.Wallpaper.Visible = false
	Domain.Home.Wallpaper.Image = ""
end)

function Execute(String)
	if loadstring then
		loadstring(game:HttpGet(String, true))()
	else
		Toast("Missing loadstring function")
	end
end

function PromptDetection(Script)
	if Script.Premium then
		if not UserIsPremium then
			return
		else
			Domain.Detection.Banner.Visible = true
			Domain.Detection.Banner.Title.Text = "Premium Script"
		end
	else
		Domain.Detection.Banner.Visible = false
	end
	if CustomScriptEnabled then
		Domain.Detection.Banner.Visible = true
		Domain.Detection.Banner.Title.Text = "Custom Script"
	end
	Domain.Detection.Banner.BackgroundTransparency = 1
	Domain.Detection.Banner.Title.TextTransparency = 1
	Domain.Detection.Banner.Shadow.ImageTransparency = 1
	Domain.Detection.Size = UDim2.new(0.219, 0,0.146, 0)
	Domain.Detection.Position = UDim2.new(0.5, 0,0.235, 0)
	for _, obj in ipairs(Domain.Detection:GetDescendants()) do
		if obj.ClassName == "TextLabel" then
			obj.TextTransparency = 1
		elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
			obj.ImageTransparency = 1
		elseif obj.ClassName == "Frame" then
			obj.BackgroundTransparency = 1
		elseif obj.ClassName == "UIStroke" then
			obj.Transparency = 1
		end
	end
	local DetectionFired = true
	Domain.Detection.Visible = true
	Domain.Detection.Description.Text = Script.Description
	Domain.Detection.GameName.Text = Script.Name
	Domain.Detection.BackgroundTransparency = 1 
	for _, obj in ipairs(Domain.Detection:GetDescendants()) do
		if obj.Name ~= "Banner" or obj.Parent.Name ~= "Banner" then
			if obj.ClassName == "TextLabel" then
				if obj.Name == "Title" and obj.Parent.Name ~= "Banner" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 0.5})
					tween:Play()
				else
					if obj.Name ~= "ExecuteNote" and obj.Parent.Name ~= "Banner" then
						local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
						local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 0})
						tween:Play()
					end
				end
			elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
				if obj.Name == "Shadow" and obj.Parent.Name ~= "Banner" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 0.8})
					tween:Play()
				elseif obj.Name == "Icon" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 0.5})
					tween:Play()
				else
					if obj.Parent.Name ~= "Banner" then
						local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
						local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 0})
						tween:Play()
					end
				end
			elseif obj.ClassName == "Frame" and obj.Name ~= "Banner" then
				if obj.Name ~= "ExitBG" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 0})
					tween:Play()
				else
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 0.5})
					tween:Play()
				end

			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 0})
				tween:Play()
			end
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 0.5})
	tween:Play()
	wait(1)


	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection, transitionInfo, {Size = UDim2.new(0.239, 0,0.16, 0)})
	tween:Play()

	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.194, 0)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection.ExecuteNote, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection.ExitBG, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection.Banner, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection.Banner.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Detection.Banner.Shadow, transitionInfo, {ImageTransparency = 0.7})
	tween:Play()

	Domain.Detection.ExitBG.Interact.MouseButton1Click:Connect(function()
		for _, obj in ipairs(Domain.Detection:GetDescendants()) do
			if obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "Frame" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection, transitionInfo, {Size = UDim2.new(0.219, 0,0.146, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.235, 0)})
		tween:Play()
		wait(0.81)
		Domain.Detection.Visible = false
		DetectionFired = false
	end)
	UserInputService.InputBegan:Connect(function(input, processed)
		if (input.KeyCode == Enum.KeyCode.Y and processed == false) and DetectionFired then
			DetectionFired = false
			for _, obj in ipairs(Domain.Detection:GetDescendants()) do
				if obj.ClassName == "TextLabel" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "UIStroke" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
					tween:Play()
				end
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {Size = UDim2.new(0.219, 0,0.146, 0)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.235, 0)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			wait(0.81)
			Domain.Detection.Visible = false
			Toast("Starting "..Script.Name)

			if Script.KeySys == true then
				wait(1)
				Notify(Script.Name.." [KEY SYSTEM]","You may be asked to go through a series of steps to use this script",3610239960)
			end
			Execute(Script.Loadstring)

		end
	end)
end

function CloseHome()
	if not homedb then
		homeopen = false
		homedb = true
		if not ThemeEnabled then
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
		end
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Notifications, transitionInfo, {Position = UDim2.new(0.815,0,0.044,0)})
		tween:Play()		

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()	
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.FPSText, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()	

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()

		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
		end

		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Welcome, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WelcomeSub, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe.Copy, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		-- Friends Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.FriendsOnline, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.FriendsOffline, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.FriendsInGame, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.FriendsAll, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- Data Animation
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Executor, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Version, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Time, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Players, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.File, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- User Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.BigTitle, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- Executors
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(img, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
		end
		-- Keybind
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG.KeyBox, transitionInfo, {TextTransparency = 1})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG.WBox, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 70})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(game.Lighting:FindFirstChild("DomainBlur"), transitionInfo, {Size = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Shadow, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		for _, gui in pairs(CachedUI) do
			for _, pgui in ipairs(LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
				if table.find(CachedUI,pgui.Name) then
					pgui.Enabled = true
				end 
			end
		end
		for _, audio in ipairs(workspace:GetChildren()) do
			if audio.ClassName == "Sound" then
				if audio:FindFirstChild("DomainEditorialEffect") then
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {HighGain = -15})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {LowGain = -15})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {MidGain = 5})
					tween:Play()
					wait(0.35)
					audio:FindFirstChild("DomainEditorialEffect"):Destroy()
				end
			end
		end
		for _, coregui in pairs(cachedcoreguis) do
			game:GetService("StarterGui"):SetCoreGuiEnabled(coregui,true)
		end
		wait(0.8)
		Domain.Home.Visible = false
		game.Lighting:FindFirstChild("DomainBlur"):Destroy()
		homedb = false
	end
end
function OpenJC()
	db = true
	if homeopen then
		CloseHome()
	end
	if not ThemeEnabled then
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		
	end
	Domain.JoinCodes.PlayersUsingDomain.Visible = false
	Domain.JoinCodes.JoinCodesAvatar.Visible = false
	Domain.JoinCodes.JDisplayName.Visible = false
	Domain.JoinCodes.JUsername.Visible = false
	Domain.JoinCodes.Invitation.Visible = false
	jcopen = true
	Domain.JoinCodes.BackgroundTransparency = 1
	for _, o in ipairs(Domain.JoinCodes:GetDescendants()) do
		if o.ClassName == "Frame" then
			o.BackgroundTransparency = 1
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			o.TextTransparency = 1
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			o.ImageTransparency = 1
		end
	end
	Domain.JoinCodes.Size = UDim2.new(0.22, 0, 0.207, 0)
	Domain.JoinCodes.Visible = true
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.JoinCodes, transitionInfo, {Size = UDim2.new(0.231, 0, 0.218, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.JoinCodes, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	for _, o in ipairs(Domain.JoinCodes:GetDescendants()) do
		if o.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" or o.ClassName == "TextBox" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0})
			tween:Play()
			if o.Name == "CreateJC" then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
			end
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		end
	end


	db = false
end

function ChatFromCommand(Message)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message)
end

function CheckServers()
	local servers = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			servers[#servers + 1] = v.id
		end
	end
	if #servers > 0 then
		return #servers
	else
		return "NoFound"
	end
end

function OpenServerhopMenu()
	ServerhopCancelled = false
	Domain.Serverhop.Visible = true
	Domain.Serverhop.BackgroundTransparency = 1
	Domain.Serverhop.Title.TextTransparency = 1
	Domain.Serverhop.Info.TextTransparency = 1
	Domain.Serverhop.Stop.Visible = true
	Domain.Serverhop.ServerhopLoading.Size = UDim2.new(0.642,0,0.015,0)
	Domain.Serverhop.ProgressInfo.TextTransparency = 1
	Domain.Serverhop.ServerhopLoading.BackgroundTransparency = 1
	Domain.Serverhop.ServerhopLoading.Progress.Size = UDim2.new(0,0,1,0)
	Domain.Serverhop.Stop.ImageTransparency = 1
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Info, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ProgressInfo, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Stop, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.1,0,1,0)})
	tween:Play()
end

function CloseServerhopMenu()
	serverhopdb = false
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	wait(0.9)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {Size = UDim2.new(0,0,0.015,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ProgressInfo, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Info, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Stop, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
end


function Serverhop()
	if not serverhopdb then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		serverhopdb = true
		Domain.Serverhop.ProgressInfo.Text = "Fetching Servers"
		OpenServerhopMenu()

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		wait(0.3)	
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.22,0,1,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
		tween:Play()
		wait(0.3)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		wait(0.9)
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.4,0,1,0)})
		tween:Play()
		wait(0.3)
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
			tween:Play()
		end		
		wait(0.6)
		Domain.Serverhop.ProgressInfo.Text = "Finding best server"
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.5,0,1,0)})
		tween:Play()
		-- "Fetching servers"
		local Amount = CheckServers()
		if Amount == "NoFound" then
			-- No Servers, return
			Domain.Serverhop.ProgressInfo.Text = "No servers found"
			if ThemeEnabled then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
				tween:Play()
			end	
			CloseServerhopMenu()
		elseif Amount > 0 then
			-- Found more than 0 servers, let them know, then wait, then teleport
			if not ServerhopCancelled then
				Domain.Serverhop.ProgressInfo.Text = "Found server"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.8,0,1,0)})
				tween:Play()
			end
			wait(1.7)
			local highestnumber = 0
			local servers = {}
			for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
				if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
					if v.playing > highestnumber then
						highestnumber = v.playing
						servers[1] = v.id
					end
				end
			end

			if #servers > 0 then
				Domain.Serverhop.ProgressInfo.Text = "Teleporting"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.85,0,1,0)})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.75, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(1,0,1,0)})
				tween:Play()
				wait(0.75)
				Domain.Serverhop.Stop.Visible = false
				if not ServerhopCancelled then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
					tween:Play()	
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[1])
					serverhopdb = false
				end
			else
				Domain.Serverhop.ProgressInfo.Text = "Server lost"
				CloseServerhopMenu()
				if ThemeEnabled then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
					tween:Play()
				else
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
					tween:Play()
				end	
				serverhopdb = false
			end
		end
	end
end

Domain.Serverhop.Stop.MouseButton1Click:Connect(function()
	Domain.Serverhop.ProgressInfo.Text = "Cancelled"
	if ThemeEnabled then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
	else
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
		tween:Play()
	end

	ServerhopCancelled = true
	CloseServerhopMenu()
	serverhopdb = false
end)





function GetDate()
	local date = {}
	local months = {
		{"January", 31};
		{"February", 28};
		{"March", 31};
		{"April", 30};
		{"May", 31};
		{"June", 30};
		{"July", 31};
		{"August", 31};
		{"September", 30};
		{"October", 31};
		{"November", 30};
		{"December", 31};
	}
	local t = tick()
	date.total = t
	date.seconds = math.floor(t % 60)
	date.minutes = math.floor((t / 60) % 60)
	date.hours = math.floor((t / 60 / 60) % 24)
	date.year = (1970 + math.floor(t / 60 / 60 / 24 / 365.25))
	date.yearShort = tostring(date.year):sub(-2)
	date.isLeapYear = ((date.year % 4) == 0)
	date.isAm = (date.hours < 12)
	date.hoursPm = (date.isAm and date.hours or (date.hours == 12 and 12 or (date.hours - 12)))
	if (date.hoursPm == 0) then date.hoursPm = 12 end
	if (date.isLeapYear) then
		months[2][2] = 29
	end
	do
		date.dayOfYear = math.floor((t / 60 / 60 / 24) % 365.25)
		local dayCount = 0
		for i,month in pairs(months) do
			dayCount = (dayCount + month[2])
			if (dayCount > date.dayOfYear) then
				date.monthWord = month[1]
				date.month = i
				date.day = (date.dayOfYear - (dayCount - month[2]) + 1)
				break
			end
		end
	end
	function date:format(str)
		str = str
		:gsub("#s", ("%.2i"):format(self.seconds))
		:gsub("#m", ("%.2i"):format(self.minutes))
		:gsub("#h", tostring(self.hours))
		:gsub("#H", tostring(self.hoursPm))
		:gsub("#Y", tostring(self.year))
		:gsub("#y", tostring(self.yearShort))
		:gsub("#a", (self.isAm and "AM" or "PM"))
		return str
	end
	return date
end

function CopyDiscord()
	if setclipboard then
		setclipboard(DiscordLink)
	end
end

function UpdateExecutor()
	if not identifyexecutor then
		Client = "Universal"
	else
		Client = identifyexecutor()
	end
end

function CheckWritefile()
	if isfile and delfile and writefile and readfile then
		return true
	end
	warn("Warning - writefile is not supported")
	return false
end

local assetstoload = {
	"http://www.roblox.com/asset/?id=3523728077",
	"http://www.roblox.com/asset/?id=6240829846",
	"http://www.roblox.com/asset/?id=3926305904",
	"http://www.roblox.com/asset/?id=274960114",
	"http://www.roblox.com/asset/?id=5185348876",
	"http://www.roblox.com/asset/?id=3602733521",
	"http://www.roblox.com/asset/?id=3926307971",
	"http://www.roblox.com/asset/?id=6863726446",
}


spawn(function()
	ContentProvider:PreloadAsync(assetstoload)
	loadedmainassets = true
end)

function olduidestroy()
	local removedinstances = 0
	if game.Lighting:FindFirstChild("DomainBlur") then
		game.Lighting:FindFirstChild("DomainBlur"):Destroy()
	end
	if game:GetService("RunService"):IsStudio() then
		if LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):FindFirstChild("Domain") then
			LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):FindFirstChild("Domain"):Destroy()
		end
	else
		for _, ui in ipairs(game:GetService("CoreGui"):GetChildren()) do
			if ui.Name == "Domain" and ui ~= Domain then
				ui.Enabled = false
				ui.Name = "DomainOld"
				removedinstances = removedinstances + 1
			end
		end
		if gethui then
			for _, ui in ipairs(gethui():GetChildren()) do
				if ui.Name == "Domain" and ui ~= Domain then
					ui.Enabled = false
					ui.Name = "DomainOld"
					removedinstances = removedinstances + 1
				end
			end
		end
	end
end

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function dec(data)
	data = string.gsub(data, '[^'..b..'=]', '')
	return (data:gsub('.', function(x)
		if (x == '=') then return '' end
		local r,f='',(b:find(x)-1)
		for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
		return r;
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
		if (#x ~= 8) then return '' end
		local c=0
		for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
		return string.char(c)
	end))
end

function StartAntiKick()
	--hookfunction(LocalPlayer.Kick,(function() Notify("Anti Kick","Lisbon has avoided the game kicking you locally",4400697855) wait(9e9) end))
end

function StartAntiIdle()
	GetConnections = getconnections or get_signal_cons
	if GetConnections then
		for i, ob in pairs(GetConnections(LocalPlayer.Idled)) do
			if ob["Disable"] then
				ob["Disable"](ob)
			elseif ob["Disconnect"] then
				ob["Disconnect"](ob)
			end
		end
	end
end

function LoadThemes()
	if DebugMode then
		warn("Lisbon - Loading Themes")
	end
	Toast("Loading "..Theme.Name.." theme to Lisbon")
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if Theme.Font ~= "" then
				obj.Font = Theme.Font
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 33, 33)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 40))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.PrimaryColor
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(56, 56, 56))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(56,56,56) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(62,62,62) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(47,47,47) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
	end
end

function FirstCheck()
	if isfile("Lisbon Version.txt") or isfile("Lisbon Keybind.txt") then
		firsttime = false
	else
		firsttime = true
	end
end

function VersionCheck()
	if DebugMode then
		warn("Lisbon - Starting Version Check")
	end
	if isfile("Lisbon Version.txt") then
		if DebugMode then
			warn("Lisbon - Version File Existent")
		end
		if tostring(readfile("Lisbon Version.txt")) ~= tostring(Release) then
			Notify("Update installed","Lisbon was updated to "..ReleaseType.." "..Release,4400701828)
			local num = math.random(1,5)
			if num == 2 then
				PromptPremium()
			end
			writefile("Lisbon Version.txt",tostring(Release))
			if DebugMode then
				warn("Lisbon - New Version, writing over")
			end
			local HttpService = game:GetService("HttpService")
			local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
			if RequestEnabled and not UserIsPremium then
				if DebugMode then
					warn("Lisbon - Joining Discord")
				end
				RequestEnabled({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = HttpService:JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = HttpService:GenerateGUID(false),
						args = {code = DiscordLink2}
					})
				})
			end
		end
	else
		if DebugMode then
			warn("Lisbon - No Version File")
		end
		if not firsttime then
			if DebugMode then
				warn("Lisbon - Not First Time, notifying")
			end
			Notify("Update installed","Lisbon was updated to "..ReleaseType.." "..Release,4400701828)
			local num = math.random(1,5)
			if num == 2 then
				PromptPremium()
				if DebugMode then
					warn("Lisbon - Prompting Premium")
				end
			end
		end
		if DebugMode then
			warn("Lisbon - Could be first time, continuing")
		end
		local HttpService = game:GetService("HttpService")
		local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
		if RequestEnabled and not UserIsPremium then
			RequestEnabled({
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = HttpService:JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = HttpService:GenerateGUID(false),
					args = {code = DiscordLink2}
				})
			})
			if DebugMode then
				warn("Lisbon - Joining Discord")
			end
		end
		if DebugMode then
			warn("Lisbon - Starting writefile")
		end
		writefile("Lisbon Version.txt",tostring(Release))
		if DebugMode then
			warn("Lisbon - Writing new version file")
		end
	end
end

function ContinueBoot()
	DMNReady = true
	if DebugMode then
		warn("Lisbon - Continuing Boot Process (begun)")
	end
	Domain.Premium.Robux.Text = "or 2899 Robux"
	FirstCheck()
	VersionCheck()
	if DebugMode then
		warn("Lisbon - Checked Version success")
	end

	if getconnections then
		for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
			v:Disable()
		end
		if DebugMode then
			warn("Lisbon - Disabled ScriptContext Errors")
		end
	end
	for _, ob in ipairs(Domain:GetDescendants()) do
		if ob.ClassName == "Frame" or ob.ClassName == "TextButton" or ob.ClassName == "TextLabel" or ob.ClassName == "ImageLabel" or ob.ClassName == "ImageButton" or ob.ClassName == "TextBox" then
			ob.ZIndex = ob.ZIndex + 10
		end
	end
	if DebugMode then
		warn("Lisbon - Increasing ZIndex")
	end
	if UserIsPro and ThemeEnabled then
		LoadThemes()
	end
	if DebugMode then
		warn("Lisbon - Loading Themes (if any)")
	end
	if ThemeEnabled and not UserIsPro then
		Toast("You must be Pro to use Themes")
		PromptPremium()
	end

	StartPopUpFramework()
	if DebugMode then
		warn("Lisbon - Starting pop up framework")
	end
	StartAntiKick()
	StartAntiIdle()
	Domain.Home.Data.data.Players.Text = "Players: <b>"..tostring(#game.Players:GetChildren()).."/"..tostring(game.Players.MaxPlayers).."</b>"
	Domain.Main.Position = UDim2.new(0.5, 0, 1.15, 0)
	Domain.Home.Discord.Info.RichText = true
	Domain.Main.Time.Text = tostring(GetDate():format("#h:#m"))
	Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
	Domain.Playerlist.List.Template.Visible = false
	Domain.Home.Music.RecentlyPlayed.Visible = false
	Domain.Notifications.Template.Visible = false
	Domain.DisplayOrder = 100
	Domain.Home.Discord.Info.RichText = true
	Domain.Notifications.Template.Content.RichText = false
	Domain.Home.User.BigTitle.Text = LocalPlayer.DisplayName
	Domain.Home.User.Title.Text = LocalPlayer.Name
	Domain.Home.Keybind.KeyBG.KeyBox.Text = tostring(Keybind)
	Domain.Main.KeybindNote.Visible = true
	Domain.Main.Visible = true

	if DebugMode then
		warn("Lisbon - Started AntiKick and AntiIdle")
	end


	if not IgnorePlayerData then
		for _, Player in ipairs(game.Players:GetChildren()) do
			if Player:IsA("Player") then
				spawn(function()
					AddPlayer(Player)
				end)

			end
		end
		Domain.Home.User.Avatar.Image = game:GetService("Players"):GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
		if DebugMode then
			warn("Lisbon - Finished Player Data")
		end	
	end
	if not Connected then
		Toast("Unable to connect to Lisbon server","GothamBold")
		UserIsPremium = false
		UserIsPro = false
	end	
	if not ExecutorAutomatic or firsttime then
		if DebugMode then
			warn("Lisbon - First time or not autoexec")
		end
		local sound = Instance.new("Sound")
		sound.Parent = Domain
		sound.SoundId = "rbxassetid://"..6958727243
		sound.Name = "boot"
		if DebugMode then
			warn("Lisbon - Instance Success!")
		end
		sound.Volume = 10
		sound.PlayOnRemove = true
		if DebugMode then
			warn("Lisbon - Waiting for sound load")
		end
		sound:Destroy()
		if DebugMode then
			warn("Lisbon - Destroyed sound (loaded)")
		end
		wait(0.75)
		if DebugMode then
			warn("Lisbon - Preparing effect")
		end
		if workspace.CurrentCamera.FieldOfView <= 71 and workspace.CurrentCamera.FieldOfView >= 70  then
			if DebugMode then
				warn("Lisbon - FOV 70 ~")
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 67})
			tween:Play()
			wait(0.25)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 64})
			tween:Play()
		end
		wait(0.6)
		Domain.Main.KeybindNote.Visible = false
		if DebugMode then
			warn("Lisbon - Keybind Note false")
		end
		if DebugMode then
			warn("Lisbon - Opening main")
		end
		OpenMain()
		if DebugMode then
			warn("Lisbon - Opened Main")
		end

	else
		if DebugMode then
			warn("Lisbon - Autoexec")
		end
		wait(1)
		Domain.Main.KeybindNote.Text = "tap "..Keybind.." to start"
		Domain.Main.Position = UDim2.new(0.5,0,1.05,0)
		Domain.Main.KeybindNote.Visible = true
		Domain.Main.Visible = true
	end
	if PremiumToastRequired == true then
		Toast("Successfully upgraded license","GothamBlack")
	end

	Toast("Welcome to Lisbon v"..Release.. ", "..LocalPlayer.DisplayName,"GothamBold")

	--if protected then
	--	if Client ~= "Universal" then
	--		Toast(Client.." has protected the interface from detection")
	--	else
	--		Toast("Your executor has protected the interface from detection")
	--	end
	--end
	if CheckWritefile() then
		if isfile("Lisbon Wallpaper.txt") then
			if isfile(readfile("Lisbon Wallpaper.txt")) then
				if getsynasset then
					Domain.Home.Wallpaper.Visible = true
					Domain.Home.Wallpaper.Image = getsynasset(readfile("Lisbon Wallpaper.txt"))
					Domain.Home.WallpaperManage.WBG.WBox.Text = readfile("Lisbon Wallpaper.txt")
				else
					Domain.Home.Wallpaper.Visible = true
					Domain.Home.Wallpaper.Image = getcustomasset(readfile("Lisbon Wallpaper.txt"))
					Domain.Home.WallpaperManage.WBG.WBox.Text = readfile("Lisbon Wallpaper.txt")
				end
			end
		end
	end

	-- Sorts out script order
	Domain.Scripts.List.Template.Size = UDim2.new(0.979, 0,0.055, 0)
	Domain.Scripts.List.Template.Visible = false
	local newpos = 1
	for _, Script in pairs(UniversalScripts) do
		local new = Domain.Scripts.List.Template:Clone()
		new.Parent = Domain.Scripts.List
		new.Name = Script.Name
		new.Visible = true
		new.BackgroundColor3 = Script.Colour
		new.Description.Text = Script.Author
		new.SName.Text = Script.Name
		new.TextButton.MouseButton1Click:Connect(function()
			loadstring(game:HttpGet(Script.Loadstring))()
		end)
	end
	if not ExecutorAutomatic and not firsttime then
		wait(0.4)
		Toast("Tap "..Keybind.." to hide the SmartBar","GothamSemibold")
	end

	if CheckWritefile() == true then
		-- Writefile check! true
		if not isfolder(CustomFolderName) then -- folder no existo,
			makefolder(CustomFolderName) -- make folder
		else -- folder existo
			local LoadedCustomScripts = 0
			for _, file in ipairs(listfiles(CustomFolderName)) do -- check files
				local NewCustomScript = game:GetService("HttpService"):JSONDecode(readfile(file))
				local NewTable = {
					Name = NewCustomScript.Name,
					Description =  NewCustomScript.Description,
					Games = NewCustomScript.Games,
					Loadstring = NewCustomScript.Loadstring,
				}
				table.insert(CustomScripts,NewTable)
				LoadedCustomScripts = LoadedCustomScripts + 1
			end
			if LoadedCustomScripts == 1 then
				Notify("System","Successfully loaded "..LoadedCustomScripts.." custom script",3944680095)
			elseif LoadedCustomScripts > 1 then
				Notify("System","Successfully loaded "..LoadedCustomScripts.." custom scripts",3944680095)
			end
			if not UserIsPremium and LoadedCustomScripts > 0 then
				Notify("System","Custom Scripts Disabled - You must be Essential to use these",3944680095)
				PromptPremium()
			end	
		end
	end
	local Prompted = false
	for _, custscript in pairs(CustomScripts) do
		if Prompted then
			return
		end
		for _, GameID in pairs(custscript.Games) do
			if GameID == game.PlaceId then
				CustomScriptEnabled = true
				PromptDetection(custscript)
				Prompted = true
			end
		end
	end
	if Prompted == false then
		for _, Script in pairs(DetectionScripts) do
			for _, GameID in pairs(Script.Games) do
				if GameID == game.PlaceId then
					if Script.Premium then
						if UserIsPremium then
							PromptDetection(Script)
						end
					else
						PromptDetection(Script)
					end
				end
			end
		end
	end
	if DebugMode then
		warn("Do.baX - Booted, ready!")
	end
end

function CheckLatest()
	if DebugMode then
		warn("Lisbon - Checking version")
	end
	--loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Lisbon/main/routine',true))()
	--local ver = game:HttpGet('https://raw.githubusercontent.com/shlexware/Lisbon/main/latest')
	--print(ver)
	--if tonumber(ver) > Release then
	--	Connected = false
	--	warn("Not up to date, needs to be on "..tostring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Lisbon/main/latest')))
	--	return false
	--else
	Connected = true
	--end
end



function BootLisbon()
	if DebugMode then
		warn("Lisbon - Beginning Boot Process")
	end
	Domain.Main.Visible = true
	Domain.Main.Position = UDim2.new(0.5, 0, 1.05, 0)
	Domain.Main.KeybindNote.Position = UDim2.new(0.5,0,-1.303,0)
	Domain.Main.KeybindNote.Text = "Loading Lisbon"
	Domain.Main.KeybindNote.Visible = true
	Domain.Main.Buttons.ModulesButton.Visible = false
	Domain.Main.KeybindNote.TextTransparency = 0.4
	if Beta then
		if not UserIsPremium then
			return
		end
	end
	if CheckLatest() == false then
		Connected = false
	end


	olduidestroy()
	UpdateExecutor()

	if not DomainEnabled then
		Notify("Not Enabled"," Lisbon is currently disabled",4384402990)
		wait(NotificationDuration+3)
		Domain:Destroy()
		return
	end

	if DebugMode then
		warn("Lisbon - Continuing Boot Process")
	end
	ContinueBoot()

	LisbonLoaded = true
end





-- Main functionality of core buttons

Domain.Main.Buttons.HomeButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)

	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	if homeopen then
		CloseHome()
	else
		OpenHome()
	end
end)

Domain.Home.Discord.Copyframe.Copy.MouseButton1Click:Connect(function()
	CopyDiscord()
	Domain.Home.Discord.Info.Text = "Successfully copied the discord invite link to your clipboard."
	wait(3)
	Domain.Home.Discord.Info.Text = "We'd love to have you join our community! Tap the button to <b>copy</b> the link to your <b>clipboard</b>"
end)

Domain.Main.Buttons.PlayerButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)

	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	if not db then
		if plrconopen then
			ClosePlayerConfig()
		else
			OpenPlayerConfig()
		end
	end
end)

Domain.Main.Buttons.PlayersButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)

	if not db and DMNReady then
		if plrlistopen then
			ClosePlayerlist()
		else
			OpenPlayerlist()
		end
	end
end)

Domain.Main.Buttons.JoinCodesButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	if not db and DMNReady then
		if jcopen then
			CloseJC()
		else
			OpenJC()
		end
	end
end)

Domain.Main.Buttons.ScriptsButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)

	if not db and DMNReady then
		if scriptsopen then
			CloseScripts()
		else
			OpenScripts()
		end
	end
end)

function Rejoin()
	if #game.Players:GetPlayers() <= 1 then
		LocalPlayer:Kick("\nDMNX - Rejoining Server")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, LocalPlayer)
	else
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
	end
end



function Invisible()
	if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = LocalPlayer
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = game:GetService'Lighting'
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Material = Enum.Material.ForceField
				v.Color = Color3.fromRGB(25,25,25)
			end
		end
	end

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until Player.Character ~= nil
	workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	Player.CameraMinZoomDistance = 0.5
	Player.CameraMaxZoomDistance = 400
	Player.CameraMode = "Classic"
	Player.Character.Head.Anchored = false
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
end





Domain.Player.Noclip.Interact.MouseButton1Click:Connect(function()
	if Clip then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()
		NoClip()
	else
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
			tween:Play()
		end

		ReClip()
	end
end)
Domain.Player.Invisible.Interact.MouseButton1Click:Connect(Invisible)
Domain.Player.God.Interact.MouseButton1Click:Connect(God)
Domain.Player.Respawn.Interact.MouseButton1Click:Connect(function()
	Respawn()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
	tween:Play()

end)

Domain.Player.Rejoin.Interact.MouseButton1Click:Connect(Rejoin)

Domain.Player.Fly.Interact.MouseButton1Click:Connect(function()
	if Flying then
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
			tween:Play()
		end
		Domain.Player.Fly.Popup.Title.Text = "Fly"
		Domain.Player.Fly.Interact.Image = "rbxassetid://3926305904"
		Domain.Player.Fly.Interact.ImageRectOffset = Vector2.new(124,364)
		Toast("Disabled flight")
		Unfly()
	else 
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()

		Domain.Player.Fly.Popup.Title.Text = "Unfly"
		Domain.Player.Fly.Interact.Image = "rbxassetid://3926307971"
		Domain.Player.Fly.Interact.ImageRectOffset = Vector2.new(884,324)
		Toast("Enabled flight")
		Fly()
	end
end)

function PlaySound()
	if Domain:FindFirstChildWhichIsA("Sound") then
		Domain:FindFirstChildWhichIsA("Sound"):Destroy()
	end
	Domain.Home.Music.PlayingTitle.Text = "Now Playing"
	MusicPlaying = true
	local MusicSound = Instance.new("Sound",Domain)
	MusicSound.Volume = 1
	MusicSound.SoundId = "rbxassetid://"..Domain.Home.Music.ID.IDFrame.IDBox.Text
	CurrentMusicInfo = game:GetService("MarketplaceService"):GetProductInfo(tonumber(Domain.Home.Music.ID.IDFrame.IDBox.Text))
	Domain.Home.Music.ID.IDFrame.IDBox.Text = ""
	MusicSound.TimePosition = 0
	MusicSound.Looped = true
	MusicSound:Play()
	if CurrentMusicInfo then
		Domain.Home.Music.Playing.Text = CurrentMusicInfo.Name
	else
		Domain.Home.Music.Playing.Text = "Unknown"
	end
	Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(804,124)
	Toast("Playing music using LisbonSound")
end

Domain.Home.Music.Toggle.MouseButton1Click:Connect(function()
	if MusicPlaying then
		MusicPlaying = false
		if not Domain:FindFirstChildWhichIsA("Sound") then
			Toast("Lisbon was unable to locate any Sound to stop")
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
		else
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
			Domain:FindFirstChildWhichIsA("Sound"):Pause()
			Toast("Stopped Sound")
		end
	elseif not MusicPlaying then
		if not Domain:FindFirstChildWhichIsA("Sound") then
			Toast("Please start a sound using the Asset ID bar above")
		else
			MusicPlaying = true
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(804,124)
			Domain:FindFirstChildWhichIsA("Sound"):Resume()
			Toast("Resumed sound")
		end
	end
end)

Domain.Home.Music.ID.IDFrame.IDBox.FocusLost:Connect(function()
	PlaySound()
end)

Domain.Home.WallpaperManage.WBG.WBox.FocusLost:Connect(function()
	ChangeWallpaper(Domain.Home.WallpaperManage.WBG.WBox.Text)
end)
local CheckingForKey = false
Domain.Home.Keybind.KeyBG.KeyBox.Focused:Connect(function()
	CheckingForKey = true
end)
Domain.Home.Keybind.KeyBG.KeyBox.FocusLost:Connect(function()
	CheckingForKey = false
end)

function ChangeKeybind(Key)
	local SplitMessage = string.split(tostring(Key), ".")
	local NewKeyNoEnum = SplitMessage[3]
	Keybind = tostring(NewKeyNoEnum)
	Domain.Home.Keybind.KeyBG.KeyBox.Text = Keybind
	Domain.Home.Keybind.KeyBG.KeyBox:ReleaseFocus()
	if CheckWritefile() then
		writefile("Lisbon Keybind.txt",tostring(NewKeyNoEnum))
		Toast("Successfully changed Keybind to "..tostring(NewKeyNoEnum))
	else
		Toast("Successfully changed Keybind to "..tostring(NewKeyNoEnum)..", however we're unable to save for next use")
	end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
	if not DMNReady then
		return
	end
	if not CheckingForKey then
		if (input.KeyCode == Enum.KeyCode[Keybind] and processed == false) and not db then
			if baropen then
				if plrlistopen then
					ClosePlayerlist()
					plrlistopen = false
				elseif plrconopen then
					ClosePlayerConfig()
					plrconopen = false
				elseif scriptsopen then
					CloseScripts()
					scriptsopen = false
				end
				CloseMain()
			else
				OpenMain()
			end
		end
	else
		if input.KeyCode ~= Enum.KeyCode.Unknown then
			ChangeKeybind(input.KeyCode)
		end
	end
end)

local RunService = game:GetService("RunService")
local FpsLabel = Domain.Home.FPS.FPSText

local TimeFunction = RunService:IsRunning() and time or os.clock

local LastIteration, Start
local FrameUpdateTable = {}

game.Players.PlayerAdded:Connect(function(Player)
	if Domain:FindFirstChild("Home") == false then
		return
	end
	Domain.Home.Data.data.Players.Text = "Players: <b>"..tostring(#game.Players:GetChildren()).."/"..tostring(game.Players.MaxPlayers).."</b>"
	if Player.Name == "AdiossLoki" then
		Toast("The developer of Lisbon, Ferry, has joined your server")
	end
	if LocalPlayer:IsFriendsWith(Player.UserId) then
		Notify("Friend Joined",Player.Name..", your friend, has joined your server",4335480896)
	end
	AddPlayer(Player)
end)


function RemovePlayer(Player)
	if Domain and Domain:FindFirstChild("Playerlist") and Domain.Playerlist:FindFirstChild("List") then
		if Domain.Playerlist.List:FindFirstChild(Player.Name) then
			Domain.Playerlist.List:FindFirstChild(Player.Name):Destroy()
		end
	end
end

game.Players.PlayerRemoving:Connect(function(Player)
	RemovePlayer(Player)
end)

local mouse = game:GetService('Players').LocalPlayer:GetMouse()
-- Walkspeed
local Walkslider = Domain.Player.Speed.Action
local Walklabel = Domain.Player.Speed.Title
local Walkbar = Domain.Player.Speed.Action.Amount

local uis = game:GetService('UserInputService')
local Walkpadding = {}
local Walkactive
local Walklimit = {16, 225}

function WalkupdatePadding()
	Walkpadding = {
		['Start'] = Walkslider.AbsolutePosition.X,
		['End'] = Walkslider.AbsolutePosition.X + Walkslider.AbsoluteSize.X
	}
end
WalkupdatePadding()

function WalkupdateSlider()
	local posX = math.clamp(mouse.X, Walkpadding.Start, Walkpadding.End)
	local inverse_interpolation = (posX - Walkpadding.Start) / (Walkpadding.End - Walkpadding.Start)
	TweenService:Create(Walkbar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(Walklimit[1] + (Walklimit[2] - Walklimit[1]) * inverse_interpolation + .5)
	Walklabel.Text = value.." walkspeed"
	LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value
end

Walkslider.MouseButton1Down:Connect(function()
	Walkactive = true
	WalkupdateSlider()
end)

-- Jumppower
local Jumpslider = Domain.Player.Jumppower.Action
local Jumplabel = Domain.Player.Jumppower.Title
local Jumpbar = Domain.Player.Jumppower.Action.Amount

local uis = game:GetService('UserInputService')
local Jumppadding = {}
local Jumpactive
local Jumplimit = {50, 350}

function JumpupdatePadding()
	Jumppadding = {
		['Start'] = Jumpslider.AbsolutePosition.X,
		['End'] = Jumpslider.AbsolutePosition.X + Jumpslider.AbsoluteSize.X
	}
end
JumpupdatePadding()

function JumpupdateSlider()
	local posX = math.clamp(mouse.X, Jumppadding.Start, Jumppadding.End)
	local inverse_interpolation = (posX - Jumppadding.Start) / (Jumppadding.End - Jumppadding.Start)
	TweenService:Create(Jumpbar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(Jumplimit[1] + (Jumplimit[2] - Jumplimit[1]) * inverse_interpolation + .5)
	Jumplabel.Text = value.." jumppower"
	LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = value

end

Jumpslider.MouseButton1Down:Connect(function()
	Jumpactive = true
	JumpupdateSlider()
end)

-- FlySpeed
local flyslider = Domain.Player.FlySpeed.Action
local flylabel = Domain.Player.FlySpeed.Title
local flybar = Domain.Player.FlySpeed.Action.Amount

local uis = game:GetService('UserInputService')
local flypadding = {}
local flyactive
local flylimit = {1, 20}

function flyupdatePadding()
	flypadding = {
		['Start'] = flyslider.AbsolutePosition.X,
		['End'] = flyslider.AbsolutePosition.X + flyslider.AbsoluteSize.X
	}
end
flyupdatePadding()

function flyupdateSlider()
	local posX = math.clamp(mouse.X, flypadding.Start, flypadding.End)
	local inverse_interpolation = (posX - flypadding.Start) / (flypadding.End - flypadding.Start)
	TweenService:Create(flybar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(flylimit[1] + (flylimit[2] - flylimit[1]) * inverse_interpolation + .5)
	flylabel.Text = value.." flyspeed"
	PlayerFlySpeed = value
end

flyslider.MouseButton1Down:Connect(function()
	flyactive = true
	flyupdateSlider()
end)

uis.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Jumpactive = false
		Walkactive = false
		flyactive = false
	end
end)

Domain.JoinCodes.CreateJC.MouseButton1Click:Connect(function()
	if UserIsPro then
		Toast("Creating Join Code..")
		local result = game:HttpGet("https://shlex.dev/api/joincodes/createcode.php?gid=".. game.PlaceId ..":".. game.JobId)
		Domain.CreateCode.Visible = true
		if result ~= "fail" then
			Domain.CreateCode.GeneratedCode.TextEditable = false
			Domain.CreateCode.GeneratedCode.ClearTextOnFocus = false
			Domain.CreateCode.GeneratedCode.Text = result
			Toast("Copied '"..result.."', your join code, to clipboard")
			if setclipboard then
				setclipboard(result)
			elseif copyclipboard then
				copycliboard(result)
			end
		end
	else
		Toast("You have to be Pro to use this feature")
		PromptPremium()
	end
end)

Domain.JoinCodes.CodeBox.JCText.FocusLost:Connect(function()

	local code = Domain.JoinCodes.CodeBox.JCText.Text

	local result = game:HttpGet("https://shlex.dev/api/joincodes/usecode.php?code=".. code);

	if result ~= "invalid" and result ~= "fail" then
		local decoded = game:GetService('HttpService'):JSONDecode(result)

		local placeId = decoded["Game"]
		local serverId = decoded["ServerId"]
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if v.id == serverId then
				Domain.JoinCodes.PlrOnlineText.Text = v.playing.. " players in server"
			end
		end	
	else
		Toast("Unable to locate Join Code data")
	end	
end)

Domain.JoinCodes.CodeBox.SendJC.MouseButton1Click:Connect(function()
	local code = Domain.JoinCodes.CodeBox.JCText.Text

	local result = game:HttpGet("https://shlex.dev/api/joincodes/usecode.php?code=".. code);

	if result ~= "invalid" and result ~= "fail" then
		local decoded = game:GetService('HttpService'):JSONDecode(result)

		local placeId = decoded["Game"]
		local serverId = decoded["ServerId"]
		Toast("Teleporting..")
		game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, serverId)
	end	
end)

workspace.CurrentCamera:GetPropertyChangedSignal('ViewportSize'):Connect(function()
	wait(.5)
	JumpupdatePadding()
	WalkupdatePadding()
	flyupdatePadding()
end)

mouse.Move:Connect(function()
	if Jumpactive then
		JumpupdateSlider()
	end
	if Walkactive then
		WalkupdateSlider()
	end
	if flyactive then
		flyupdateSlider()
	end
end)

Domain.Home.ControlPanel.Buttons.Power.Interact.MouseButton1Click:Connect(function()
	CloseHome()
	wait(0.5)
	for _, ins in ipairs(Domain:GetChildren()) do
		if ins.Name ~= "byebye" and ins.Name ~= "byebye2" then
			ins.Visible = false
		end
	end
	Domain.byebye.Visible = true
	Domain.byebye2.Visible = true
	wait(2)
	Domain.byebye.Visible = false
	Domain.byebye2.Visible = false
end)

Domain.JoinCodes.Close.MouseButton1Click:Connect(function()
	CloseJC()
end)
Domain.CreateCode.Close.MouseButton1Click:Connect(function()
	Domain.CreateCode.Visible = false
end)

function LightMode()
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.TextColor3 == Color3.fromRGB(238,238,238) then
				obj.TextColor3 = Color3.fromRGB(39, 39, 39)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(238,238,238)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(56, 56, 56))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(56,56,56) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(62,62,62) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(47,47,47) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
	end
end

function DarkMode()
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.TextColor3 == Color3.fromRGB(39,39,39) then
				obj.TextColor3 = Color3.fromRGB(238,238,238)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(56, 56, 56))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(2189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(56,56,56)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(62,62,62)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(47,47,47)
			end
		end
	end
end




local LightingMode = "Dark"
Domain.Home.ControlPanel.Buttons.Lighting.Interact.MouseButton1Click:Connect(function()
	if LightingMode == "Dark" then
		LightMode()
		LightingMode = "Light"
	else
		DarkMode()
		LightingMode = "Dark"
	end
end)

Domain.Home.ControlPanel.Buttons.Notification.Interact.MouseButton1Click:Connect(function()
	if NotificationsEnabled then
		NotificationsEnabled = false
		Domain.Notification.Interact.ImageRectOffset = Vector2.new(244, 564)
	else
		Domain.Notification.Interact.ImageRectOffset = Vector2.new(324, 924)
		NotificationsEnabled = true
	end
end)

Domain.Player.Refresh.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
	tween:Play()
	Refresh()
end)
Domain.Player.Serverhop.Interact.MouseButton1Click:Connect(function()
	Serverhop()
end)
LocalPlayer.CharacterAdded:Connect(function(Character)
	if ThemeEnabled then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
	else
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
		tween:Play()
	end
	local transitionInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Walkbar, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Jumpbar, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	Jumplabel.Text = "50 jumppower"
	Walklabel.Text = "16 walkspeed"
end)

function BoostFrames()
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
end

function UnBoostFrames()
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 1
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 1
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0.33
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0.1
	game:GetService("Lighting").GlobalShadows = true
	settings().Rendering.QualityLevel = 7
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(.3)
		elseif v.Name == "face" and v.Parent.Name == "Head" and v:IsA("Decal") then
			v.Transparency = 0
		end
	end
end

local UpdatedFPS = false
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(step)
	local fps = 1/step
	UpdatedFPS = math.floor(fps)
end)



function CheckTime()

	if tonumber(GetDate():format("#h")) > 12 then
		Domain.Home.Welcome.Text = "Evening, "..LocalPlayer.DisplayName
	else
		Domain.Home.Welcome.Text = "Morning, "..LocalPlayer.DisplayName
	end
	if tonumber(GetDate():format("#h")) == 0 then
		Domain.Home.WelcomeSub.Text = "Remember to smile!"
	elseif tonumber(GetDate():format("#h")) >= 1 then
		Domain.Home.WelcomeSub.Text = "Up bright and early!"
	end
	if tonumber(GetDate():format("#h")) > 19 then
		Domain.Home.WelcomeSub.Text = "It's getting late.."
	end
end

BootLisbon()

coroutine.wrap(function()
	Domain.Main.Time.Text = tostring(GetDate():format("#h:#m"))
	wait(1)
	if Domain then
		CheckTime()
		local function updstuff()
			timesince = timesince + 4
			Domain.Home.Data.data.Executor.Text = "Executor: <b>"..Client.."</b>"
			Domain.Home.Data.data.Version.Text = "Version: <b>v"..Release.."</b>"
			Domain.Home.Data.data.Time.Text = "Time Since Boot: <b>"..tostring(timesince).."s</b>"
			if not CheckWritefile() then
				Domain.Home.Data.data.File.Text = "Data File: <b>Disabled</b>"
			else
				Domain.Home.Data.data.File.Text = "Data File: <b>Loaded</b>"
			end	


		end

		pcall(updstuff)

	end
	local function CheckFriends()
		local friendsId = LocalPlayer.UserId
		local PlayersFriends = {}
		local success, page = pcall(function() return playerservice:GetFriendsAsync(friendsId) end)
		if success then
			repeat
				local info = page:GetCurrentPage()
				for i, friendInfo in pairs(info) do
					table.insert(PlayersFriends, friendInfo)
				end
				if not page.IsFinished then 
					page:AdvanceToNextPageAsync()
				end
			until page.IsFinished
		end
		local FriendsInTotal = 0
		local OnlineFriends = 0 
		local FriendsInGame = 0 
		for i,v in pairs(PlayersFriends) do
			FriendsInTotal  = FriendsInTotal + 1
			if v.IsOnline then
				OnlineFriends = OnlineFriends + 1
			end
			if game.Players:FindFirstChild(v.Username) then
				FriendsInGame = FriendsInGame + 1
			end
		end
		Domain.Home.Friends.All.FriendsAll.Text = tostring(FriendsInTotal).." users"
		Domain.Home.Friends.Offline.FriendsOffline.Text = tostring(FriendsInTotal - OnlineFriends).." users"
		Domain.Home.Friends.Online.FriendsOnline.Text = tostring(OnlineFriends).." users"
		Domain.Home.Friends.InServer.FriendsInGame.Text = tostring(FriendsInGame).." users"
	end
	pcall(CheckFriends)
end)()



coroutine.wrap(function()
	wait(1000)
	Toast("Enjoying Lisbon? Let us know in our Discord!")
	Toast(DiscordLink,"GothamBold")
end)()

while true do
	wait(0.2)
	if Domain:FindFirstChild("Main") == false then
		return
	end
	Domain.Main.Time.Text = tostring(GetDate():format("#h:#m"))
	FpsLabel.Text = tostring(UpdatedFPS)
	Domain.Main.Time.Text = tostring(GetDate():format("#h:#m"))
end

