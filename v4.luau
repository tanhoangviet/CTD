local CacheableContentProvider = game:GetService("CacheableContentProvider")
local cloneref = (cloneref or clonereference or function(instance)
	return instance
end)
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local RunService = cloneref(game:GetService("RunService"))
local Players = cloneref(game:GetService("Players"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local supportedid = { ["Lobby"] = 5543622168, ["InGame"] = 6498579243}


--[[ Old Bypass Anticheat ngl
if game.PlaceId == 5543622168 then
local object_type = {
	["G_Burger"] = workspace:WaitForChild("Map"):WaitForChild("EndRoom"):WaitForChild("YOUNEEDGOLDENBURGER"),
	["T_A_Order"] = workspace:WaitForChild("Map"):WaitForChild("TollAndOrderFloaty"):WaitForChild("AntiExploitToll"),
}

task.spawn(function()
	for i, v in pairs(object_type) do
		if v and v.Parent then
			pcall(function() v:Destroy() end)
		end
	end
	if notify then
		pcall(function() notify({Name="Bypass Anticheat", Desc="Success", Icon="check"}) end)
	end
end)
end
]]--

task.spawn(function()
if game.placeId == supportedid["Lobby"] or game.placeId == supportedid["InGame"] then
local object_type = {
	["G_Burger"] = workspace:WaitForChild("Map"):WaitForChild("EndRoom"):WaitForChild("YOUNEEDGOLDENBURGER"),
	["T_A_Order"] = workspace:WaitForChild("Map"):WaitForChild("TollAndOrderFloaty"):WaitForChild("AntiExploitToll"),
}

for i,v in pairs(object_type) do
if v:IsA("Part") and v and v.Parent then
pcall(function() v:Destroy() end)
StarterGui:SetCore("SendNotification", {
	Title = "Bypass Anticheat Successful",
	Text = "Enjoy Script",
	Duration = 5,
})
end
end

else
StarterGui:SetCore("SendNotification", {
	Title = "Cant Find Any object to bypass",
	Text = "Make Sure it is you game in",
	Duration = 5,
})
end
end)



--local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()


getgenv().Config = {
	["Lobby"] = {
		Places = nil,
		--[[ColorType = {
		["PrimaryColor"] = Color3.fromRGB(0,0,0),
		["SecondaryColor"] = Color3.fromRGB(0,0,0),
		["WeaponColor"] = Color3.fromRGB(0,0,0) ,
		},]]-- --not used rn
		TitleTag = {
		Text = "",
		color = Color3.fromRGB(0,0,0),
		Gradient = nil,
		},
		},
	["InGame"] = {
		
		},
}

function notify(title,desc,duration,icon)
Icon = icon or "solar:notification-unread-bold"
Title = title
Content = desc or ""
Duration = duration or 3

if Title and Content then
WindUI:Notify({
    Title = Title,
    Content = Content,
    Icon = Icon,
    Duration = Duration,
})
else
WindUI:Notify({
    Title = "Error Notify",
    Content = "Notify Wrong Format !!!",
    Icon = "solar:shield-warning-bold",
    Duration = 2,
})
end
end

local Window = WindUI:CreateWindow({
    Title = "Koyuki Hub",
    Icon = "rbxassetid://104120056157997", 
    Author = "Caomod And Random Dev",
    Folder = "Koyuki-" .. game.Name .. "-" .. game.PlaceId,
    Size = UDim2.fromOffset(580, 460), 
    MinSize = Vector2.new(560, 350), 
    MaxSize = Vector2.new(850, 560), 
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 43.5,
    HideSearchBar = true,
    NewElements = true,
    ScrollBarEnabled = false, 
    BackgroundImageTransparency = 0.42, 
    --Background = "rbxassetid://1234",
})



Tabs = {
Window:Divider(),
["Main"] = Window:Tab({
    Title = "",
    Icon = "solar:home-2-bold",
    IconShape = "Square",
    IconColor = Color3.fromHex("#6DF1FF"),
    Locked = false,
    ShowTabTitle = false,
    Border = true,
}),
Window:Divider(),
["Misc"] = Window:Tab({
    Title = "",
    Icon = "solar:book-2-bold",
    IconColor = Color3.fromHex("#FEFFE9"),
    IconShape = "Square",
    Locked = false,
    ShowTabTitle = false,
    Border = true,
}),
Window:Divider(),
["UISetting"] = Window:Tab({
    Title = "",
    Icon = "solar:settings-bold",
    IconShape = "Square",
    IconColor = Color3.fromHex("#FFE4F1"),
    Locked = false,
    ShowTabTitle = false,
    Border = true,
}),
Window:Divider(),
}
if game.PlaceId == supportedid["Lobby"] then
--[[ Main Tab ]]--
Main = Tabs["Main"]
--[[ Places ]]--
local Place = Main:Section({
    Title = "Places",
    Icon = "solar:round-sort-horizontal-linear",
    IconColor = Color3.fromHex("#BBF0FF"),
    TextSize = 19,
    TextXAlignment = "Center",
    Box = true,
    BoxBorder = true,
    FontWeight = Enum.FontWeight.SemiBold, 
    DescFontWeight = Enum.FontWeight.Medium,
    TextTransparency = 0.05,
    DescTextTransparency = 0.4,
})
PlacesToTeleport = {
	["Black Ordeal"] = workspace.Map["Black Ordeal"].TeleportPos.CFrame,
	["End Room(Burger Golden)"] = workspace.Map.EndRoom.TPPart.CFrame,
	["Lobby Level 20"] = workspace.SpecialParts.Lobby2LevelRequirement.CFrame,
	["Arena Level 30"] = workspace.SpecialParts.Lobby2LevelRequirement30.CFrame,
	["Ducky"] = workspace.NPCS.Talks.THEDUCK.HumanoidRootPart.CFrame,
	["Toll And Order"] = workspace.Elevators.ClassicElevators.TollersTollAndOrder.baseplate.CFrame,
	["Fractured Reality"] = workspace.Map["Fractured Reality"].TPDestination.CFrame,
	["Spawn Location"] = workspace.SpawnLocation.CFrame,
}
Places = {}

for i,v in pairs(PlacesToTeleport) do
table.insert(Places,i)
end

Place:Dropdown({
    Title = "Select Place To Teleport",
    Values = Places,
    Callback = function(selected)
        getgenv().Config["Lobby"].Places = selected
    end
})

Place:Button({
    Title = "Teleport",
    Callback = function()
    if getgenv().Config["Lobby"].Places == nil then
        notify("Pls Chossen Place To Teleport","",5)
    else
    Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PlacesToTeleport[getgenv().Config["Lobby"].Places]
    notify("Teleport Successful","",5)
    end
    end
})


--[[ Tower ]]--

local Tower = Main:Section({
    Title = "Tower",
    Icon = "solar:user-hands-bold",
    IconColor = Color3.fromHex("#BBF0FF"),
    TextSize = 19,
    TextXAlignment = "Center",
    Box = true,
    BoxBorder = true,
    FontWeight = Enum.FontWeight.SemiBold, 
    DescFontWeight = Enum.FontWeight.Medium,
    TextTransparency = 0.05,
    DescTextTransparency = 0.4,
})
-- im lazy at this so i copy old source lol
Tower:Colorpicker({
    Title = "Primary Color",
    Default = Color3.fromRGB(0, 255, 0),
    Transparency = 0,
    Locked = false,
    Callback = function(color)
        getgenv().Config = getgenv().Config or {}
        getgenv().Config["Color"] = getgenv().Config["Color"] or {}
        getgenv().Config.Color.PrimaryColor = color
    end
})

Tower:Colorpicker({
    Title = "Weapon Color",
    Default = Color3.fromRGB(0,255,0),
    Transparency = 0,
    Locked = false,
    Callback = function(c)
        getgenv().Config = getgenv().Config or {}
        getgenv().Config.Color = getgenv().Config.Color or {}
        getgenv().Config.Color.WeaponColor = c
    end
})

Tower:Colorpicker({
    Title = "Secondary Color",
    Default = Color3.fromRGB(0, 255, 0),
    Transparency = 0,
    Locked = false,
    Callback = function(color)
        getgenv().Config = getgenv().Config or {}
        getgenv().Config["Color"] = getgenv().Config["Color"] or {}
        getgenv().Config["Color"]["SecondaryColor"] = color
    end
})

getgenv().OptionsColor = getgenv().OptionsColor or {}
local cfg = getgenv().Config["Color"]
local availableColors = {"PrimaryColor","WeaponColor","SecondaryColor"}

Tower:Dropdown({
    Title = "Color Options",
    Values = availableColors,
    Value = {"PrimaryColor"},
    Multi = true,
    AllowNone = true,
    Callback = function(option)
        getgenv().OptionsColor = option or {}
    end
})

Tower:Button({
    Title = "Set Color",
    Desc = "Set Color For Tower",
    Locked = false,
    Callback = function()
        local payloads = {
            PrimaryColor = {"Color","PrimaryColor",{Color = cfg["PrimaryColor"]}},
            WeaponColor = {"Color","WeaponColor",{Color = cfg["WeaponColor"]}},
            SecondaryColor = {"Color","SecondaryColor",{Color = cfg["SecondaryColor"]}}
        }
        for _, opt in ipairs(getgenv().OptionsColor) do
            local payload = payloads[opt]
            if payload then
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PlayerData"):FireServer(unpack(payload))
                end)
            end
        end
    end
})
--[[ Title Tag ]]--
local TitleTag = Main:Section({
    Title = "Custom Title Tag",
    Icon = "solar:bookmark-bold-duotone",
    IconColor = Color3.fromHex("#BBF0FF"),
    TextSize = 19,
    TextXAlignment = "Center",
    Box = true,
    BoxBorder = true,
    FontWeight = Enum.FontWeight.SemiBold, 
    DescFontWeight = Enum.FontWeight.Medium,
    TextTransparency = 0.05,
    DescTextTransparency = 0.4,
})

TitleTag:Colorpicker({
    Title = "Pick Color Tags",
    Callback = function(color)
        getgenv().Config["Lobby"].TitleTag.color = color
    end
})

TitleTag:Input({
    Title = "Name For You Title Tag",
    Callback = function(text)
        getgenv().Config["Lobby"].TitleTag.Text = text
    end
})

TitleTag:Button({
    Title = "Apply Title Tag",
    Callback = function()
        color = getgenv().Config["Lobby"].TitleTag.color
        Name = getgenv().Config["Lobby"].TitleTag.Text
    if color and Name then
game:GetService("ReplicatedStorage").Remotes.EquipNewTitle:FireServer(
            "Rookie",
            {
                Description = "Manager of Limbus Company",
                UnlockText = "Mephistopheles",
                Color = color or Color3.new(1,1,1),
                RealName = Name or "Rookie",
                SpecialProperties = {
                    DoNotShow = true,
                   --[[Gradient = ColorSequence.new({
    ColorSequenceKeypoint.new(0, c1),    -- Bắt đầu bằng màu đậm
    ColorSequenceKeypoint.new(pos, c2),  -- Điểm sáng rực ở giữa
    ColorSequenceKeypoint.new(1, c1)    -- Kết thúc bằng màu đậm để tạo độ khối
})]]
                },
                ManualListOrder = 1000
            }
        )
        pcall(function()
    Players.LocalPlayer.Character.DefaultUserInfo.Enabled = true
end)
    end
    end
})


--[[ Misc Tab ]]--

-- I fucking Lazy At This To
Tabs["Misc"]:Button({
    Title = "Get Anomaly Tracer",
    Desc = "Get a Anomaly Tracer",
    Locked = false,
    Callback = function()

        local hrp = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        hrp = hrp:WaitForChild("HumanoidRootPart")

        local tracer = workspace.Map.TeleporterIsland.Main.TheHideout.Interactables["Anomaly Tracer"].Display.Parent

        firetouchinterest(hrp, tracer, 0)
        firetouchinterest(hrp, tracer, 1)

    end
})

Tabs["Misc"]:Button({
    Title = "Get Keycard 1",
    Desc = "Touch Keycard 1",
    Locked = false,
    Callback = function()

        local hrp = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        hrp = hrp:WaitForChild("HumanoidRootPart")

        local key = workspace.Map.TeleporterIsland.Main.TheHideout.Interactables.Keycard1.Handle

        firetouchinterest(hrp, key, 0)
        firetouchinterest(hrp, key, 1)

    end
})

elseif game.PlaceId == supportedid["InGame"] then
Main = Tabs["Main"]
local Tower = Main:Section({
    Title = "Tower",
    Icon = "solar:user-hands-bold",
    IconColor = Color3.fromHex("#BBF0FF"),
    TextSize = 19,
    TextXAlignment = "Center",
    Box = true,
    BoxBorder = true,
    FontWeight = Enum.FontWeight.SemiBold, 
    DescFontWeight = Enum.FontWeight.Medium,
    TextTransparency = 0.05,
    DescTextTransparency = 0.4,
})

Tower:Section({
    Title = "Path Tower"
})
 
Tower:Button({
    Title = "No Cooldown For Path Tower",
    Desc = "Test Button",
    Locked = false,
    Callback = function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UnitsListGui.ReplicatorClient.Storage:GetChildren()) do
        if v:IsA("Frame") then
        v:Destroy()
        end
        end
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UnitsListGui["ReplicatorClientNew & unused"].Storage:GetChildren()) do
        if v:IsA("Frame") then
        v:Destroy()
        end
        end
    end
})

local bufftower = Tower:Section({
    Title = "Programmer And Merch Tower"
})
-- im lazy at this too forgive me
local Programmer = bufftower:Section({ 
    Title = "ProgramAbility",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 14,
    Icon = "square-code",
    Opened = true,
})

Programmer:Slider({
    Title = "Programmer Amount To Chain",
    Step = 1,
    Value = {
        Min = 3,
        Max = 4,
        Default = 3,
    },
    Callback = function(value)
        getgenv().Config["Programmer Ability Number"] = value
    end
})

Programmer:Dropdown({
    Title = "Time Programmer ability",
    Values = { "30", "40" },
    Value = "30",
    Callback = function(value) 
        getgenv().Config["TimeProg"] = value
    end
})

Programmer:Slider({
    Title = "interval Every Prog",
    Step = 1,
    Value = {
        Min = 0.5,
        Max = 3,
        Default = 0.5,
    },
    Callback = function(value)
        getgenv().Config["Programmer interval"] = value
    end
})

Programmer:Dropdown({
    Title = "Select Programmer For Chain",
    Values = { "You Tower", "Other Tower" },
    Value = "You Tower",
    Callback = function(value)
		if value == "You Tower" then
    getgenv().Config["Owner Only"] = true
elseif value == "Other Tower" then
    getgenv().Config["Owner Only"] = false
end
    end
})

Programmer:Toggle({
    Title = "Chain Programmer",
    Desc = "Auto Chain Programmer Ability",
    Type = "Toggle",
    Default = false,
    Callback = function(value) 
        _G.AutoChainProg = value

task.spawn(function()
    local player = game.Players.LocalPlayer
    local interval = 10 + (getgenv().Config["Programmer interval"] or 0)
    local ownerOnly = getgenv().Config["Owner Only"] == true

    while _G.AutoChainProg do
        local towers = {}

        for _,v in ipairs(workspace.Towers:GetChildren()) do
            if v.Name=="Programmer" 
                and v:FindFirstChild("Configuration") 
                and v:FindFirstChild("Ability1Remote") 
            then
                if ownerOnly then
                    if v.Configuration:FindFirstChild("Owner") 
                        and v.Configuration.Owner.Value == player.Name 
                    then
                        table.insert(towers, v)
                    end
                else
                    table.insert(towers, v)
                end
            end
        end

        if #towers == 0 then wait(1) continue end

        for i = 1, #towers do
            if not _G.AutoChainProg then break end
            towers[i].Ability1Remote:FireServer()
            wait(interval)
        end
    end
end)

    end
})

--[[ Misc Tab ]]--
--Lazy Too ngl
Tabs["Misc"]:Toggle({
    Title = "Auto ArchmageStar",
    Desc = "Nah Id Destroyer",
    Type = "Toggle",
    Value = false,
    Callback = function(value)
    _G.AutoStar = value
    while _G.AutoStar and task.wait() do
    local lp = game.Players.LocalPlayer
local hrp = lp.Character and lp.Character:WaitForChild("HumanoidRootPart")

for _, folder in ipairs(workspace.Map:GetChildren()) do
    if folder.Name == "ArchmageStar" then
        for _, obj in ipairs(folder:GetChildren()) do
            if obj:IsA("ProximityPrompt") then
                hrp.CFrame = obj.Parent.CFrame + Vector3.new(0,3,0)
                fireproximityprompt(obj)
            end
        end
    end
end
end
    end
})

end=