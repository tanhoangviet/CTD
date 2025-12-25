--> Loader <--
local LoaderScript = {
	["WindUI"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))(),
	["ANUI"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/ANHub-Script/ANUI/refs/heads/main/dist/main.lua?v="..math.random()))()
}

--> Settings Library <--

local WindUI = LoaderScript["WindUI"]
WindUI:SetParent(game:GetService("CoreGui"))

--> Theme <--
WindUI:AddTheme({Name="Mid Summer",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFD194"),Transparency=0},["50"]={Color=Color3.fromHex("#FF7E5F"),Transparency=0},["100"]={Color=Color3.fromHex("#FF5F6D"),Transparency=0}},{Rotation=45}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFF3E0"),Transparency=0},["50"]={Color=Color3.fromHex("#FFE0B2"),Transparency=0},["100"]={Color=Color3.fromHex("#FFD194"),Transparency=0}},{Rotation=45}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FF8C42"),Transparency=0},["50"]={Color=Color3.fromHex("#FF7E5F"),Transparency=0},["100"]={Color=Color3.fromHex("#FF6A88"),Transparency=0}},{Rotation=45}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#6B4226"),Transparency=0},["50"]={Color=Color3.fromHex("#8B4513"),Transparency=0},["100"]={Color=Color3.fromHex("#A0522D"),Transparency=0}},{Rotation=45}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#D9B08C"),Transparency=0},["50"]={Color=Color3.fromHex("#C68642"),Transparency=0},["100"]={Color=Color3.fromHex("#B5651D"),Transparency=0}},{Rotation=45}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFE5B4"),Transparency=0},["50"]={Color=Color3.fromHex("#FFC87C"),Transparency=0},["100"]={Color=Color3.fromHex("#FFAA5C"),Transparency=0}},{Rotation=45}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFAA5C"),Transparency=0},["50"]={Color=Color3.fromHex("#FF7E5F"),Transparency=0},["100"]={Color=Color3.fromHex("#FF5F6D"),Transparency=0}},{Rotation=45}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FF7F50"),Transparency=0},["50"]={Color=Color3.fromHex("#FF6A88"),Transparency=0},["100"]={Color=Color3.fromHex("#FF5F6D"),Transparency=0}},{Rotation=45})})

WindUI:AddTheme({Name="Lunar Moon",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#232526"),Transparency=0},["50"]={Color=Color3.fromHex("#636363"),Transparency=0},["100"]={Color=Color3.fromHex("#E0E0E0"),Transparency=0}},{Rotation=90}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#1C1C1C"),Transparency=0},["50"]={Color=Color3.fromHex("#3A3A3A"),Transparency=0},["100"]={Color=Color3.fromHex("#636363"),Transparency=0}},{Rotation=90}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#B0B0B0"),Transparency=0},["50"]={Color=Color3.fromHex("#C0C0C0"),Transparency=0},["100"]={Color=Color3.fromHex("#E0E0E0"),Transparency=0}},{Rotation=90}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFFFFF"),Transparency=0},["50"]={Color=Color3.fromHex("#D9D9D9"),Transparency=0},["100"]={Color=Color3.fromHex("#BFBFBF"),Transparency=0}},{Rotation=90}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#A0A0A0"),Transparency=0},["50"]={Color=Color3.fromHex("#B0B0B0"),Transparency=0},["100"]={Color=Color3.fromHex("#C0C0C0"),Transparency=0}},{Rotation=90}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#101010"),Transparency=0},["50"]={Color=Color3.fromHex("#3A3A3A"),Transparency=0},["100"]={Color=Color3.fromHex("#636363"),Transparency=0}},{Rotation=90}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#3A3A3A"),Transparency=0},["50"]={Color=Color3.fromHex("#636363"),Transparency=0},["100"]={Color=Color3.fromHex("#A2A2A2"),Transparency=0}},{Rotation=90}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#C0C0C0"),Transparency=0},["50"]={Color=Color3.fromHex("#E0E0E0"),Transparency=0},["100"]={Color=Color3.fromHex("#FFFFFF"),Transparency=0}},{Rotation=90})})

WindUI:AddTheme({Name="Winter Frost",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#D0E8F2"),Transparency=0},["50"]={Color=Color3.fromHex("#A0D4F2"),Transparency=0},["100"]={Color=Color3.fromHex("#70C0F2"),Transparency=0}},{Rotation=45}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#E0F7FF"),Transparency=0},["50"]={Color=Color3.fromHex("#B0EFFF"),Transparency=0},["100"]={Color=Color3.fromHex("#80E7FF"),Transparency=0}},{Rotation=45}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#70C0F2"),Transparency=0},["50"]={Color=Color3.fromHex("#50B0E0"),Transparency=0},["100"]={Color=Color3.fromHex("#30A0D0"),Transparency=0}},{Rotation=45}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#0D3B66"),Transparency=0},["50"]={Color=Color3.fromHex("#145DA0"),Transparency=0},["100"]={Color=Color3.fromHex("#1E81B0"),Transparency=0}},{Rotation=45}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#7FB3D5"),Transparency=0},["50"]={Color=Color3.fromHex("#5FA2C5"),Transparency=0},["100"]={Color=Color3.fromHex("#3F91B5"),Transparency=0}},{Rotation=45}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#E6F0FA"),Transparency=0},["50"]={Color=Color3.fromHex("#CDE0F5"),Transparency=0},["100"]={Color=Color3.fromHex("#B4D1F0"),Transparency=0}},{Rotation=45}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#50B0E0"),Transparency=0},["50"]={Color=Color3.fromHex("#30A0D0"),Transparency=0},["100"]={Color=Color3.fromHex("#108FC0"),Transparency=0}},{Rotation=45}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#30A0D0"),Transparency=0},["50"]={Color=Color3.fromHex("#108FC0"),Transparency=0},["100"]={Color=Color3.fromHex("#0D81B0"),Transparency=0}},{Rotation=45})})

WindUI:AddTheme({Name="Elegant Night",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#3B0D5C"),Transparency=0},["50"]={Color=Color3.fromHex("#6A1B9A"),Transparency=0},["100"]={Color=Color3.fromHex("#9C27B0"),Transparency=0}},{Rotation=45}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#1A001A"),Transparency=0},["50"]={Color=Color3.fromHex("#3D003D"),Transparency=0},["100"]={Color=Color3.fromHex("#6A006A"),Transparency=0}},{Rotation=45}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#9C27B0"),Transparency=0},["50"]={Color=Color3.fromHex("#7B1FA2"),Transparency=0},["100"]={Color=Color3.fromHex("#6A1B9A"),Transparency=0}},{Rotation=45}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFFFFF"),Transparency=0},["50"]={Color=Color3.fromHex("#E0E0E0"),Transparency=0},["100"]={Color=Color3.fromHex("#C0C0C0"),Transparency=0}},{Rotation=45}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#B0A0B5"),Transparency=0},["50"]={Color=Color3.fromHex("#9C8FA0"),Transparency=0},["100"]={Color=Color3.fromHex("#7B6F8C"),Transparency=0}},{Rotation=45}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#10001A"),Transparency=0},["50"]={Color=Color3.fromHex("#1A0033"),Transparency=0},["100"]={Color=Color3.fromHex("#30004D"),Transparency=0}},{Rotation=45}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#6A1B9A"),Transparency=0},["50"]={Color=Color3.fromHex("#9C27B0"),Transparency=0},["100"]={Color=Color3.fromHex("#B55BC5"),Transparency=0}},{Rotation=45}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#9C27B0"),Transparency=0},["50"]={Color=Color3.fromHex("#B55BC5"),Transparency=0},["100"]={Color=Color3.fromHex("#D084E0"),Transparency=0}},{Rotation=45})})

WindUI:AddTheme({Name="Lunar Abyss",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#0D0D1A"),Transparency=0},["50"]={Color=Color3.fromHex("#1A1A33"),Transparency=0},["100"]={Color=Color3.fromHex("#2E2E5C"),Transparency=0}},{Rotation=90}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#101026"),Transparency=0},["50"]={Color=Color3.fromHex("#1A1A3D"),Transparency=0},["100"]={Color=Color3.fromHex("#333366"),Transparency=0}},{Rotation=90}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#2E2E5C"),Transparency=0},["50"]={Color=Color3.fromHex("#404080"),Transparency=0},["100"]={Color=Color3.fromHex("#5050A0"),Transparency=0}},{Rotation=90}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#A0A0FF"),Transparency=0},["50"]={Color=Color3.fromHex("#C0C0FF"),Transparency=0},["100"]={Color=Color3.fromHex("#E0E0FF"),Transparency=0}},{Rotation=90}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#6060A0"),Transparency=0},["50"]={Color=Color3.fromHex("#8080C0"),Transparency=0},["100"]={Color=Color3.fromHex("#A0A0E0"),Transparency=0}},{Rotation=90}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#0A0A1A"),Transparency=0},["50"]={Color=Color3.fromHex("#1A1A33"),Transparency=0},["100"]={Color=Color3.fromHex("#2E2E5C"),Transparency=0}},{Rotation=90}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#404080"),Transparency=0},["50"]={Color=Color3.fromHex("#5050A0"),Transparency=0},["100"]={Color=Color3.fromHex("#6060C0"),Transparency=0}},{Rotation=90}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#6060C0"),Transparency=0},["50"]={Color=Color3.fromHex("#8080E0"),Transparency=0},["100"]={Color=Color3.fromHex("#A0A0FF"),Transparency=0}},{Rotation=90})})

WindUI:AddTheme({Name="Lunar Eclipse",Accent=WindUI:Gradient({["0"]={Color=Color3.fromHex("#33001A"),Transparency=0},["50"]={Color=Color3.fromHex("#660033"),Transparency=0},["100"]={Color=Color3.fromHex("#99004D"),Transparency=0}},{Rotation=45}),Dialog=WindUI:Gradient({["0"]={Color=Color3.fromHex("#1A0014"),Transparency=0},["50"]={Color=Color3.fromHex("#330028"),Transparency=0},["100"]={Color=Color3.fromHex("#66003F"),Transparency=0}},{Rotation=45}),Outline=WindUI:Gradient({["0"]={Color=Color3.fromHex("#99004D"),Transparency=0},["50"]={Color=Color3.fromHex("#CC3366"),Transparency=0},["100"]={Color=Color3.fromHex("#FF6699"),Transparency=0}},{Rotation=45}),Text=WindUI:Gradient({["0"]={Color=Color3.fromHex("#FFE6F0"),Transparency=0},["50"]={Color=Color3.fromHex("#FFB3CC"),Transparency=0},["100"]={Color=Color3.fromHex("#FF80A0"),Transparency=0}},{Rotation=45}),Placeholder=WindUI:Gradient({["0"]={Color=Color3.fromHex("#CC6699"),Transparency=0},["50"]={Color=Color3.fromHex("#FF99CC"),Transparency=0},["100"]={Color=Color3.fromHex("#FFB3D9"),Transparency=0}},{Rotation=45}),Background=WindUI:Gradient({["0"]={Color=Color3.fromHex("#1A0014"),Transparency=0},["50"]={Color=Color3.fromHex("#330028"),Transparency=0},["100"]={Color=Color3.fromHex("#66003F"),Transparency=0}},{Rotation=45}),Button=WindUI:Gradient({["0"]={Color=Color3.fromHex("#66003F"),Transparency=0},["50"]={Color=Color3.fromHex("#99004D"),Transparency=0},["100"]={Color=Color3.fromHex("#CC3366"),Transparency=0}},{Rotation=45}),Icon=WindUI:Gradient({["0"]={Color=Color3.fromHex("#99004D"),Transparency=0},["50"]={Color=Color3.fromHex("#CC3366"),Transparency=0},["100"]={Color=Color3.fromHex("#FF6699"),Transparency=0}},{Rotation=45})})


--> Notification <--

function notify(no)
local type = no.Type or "WindUI"
local name = no.Title or "Template"
local desc = no.Desc or "Template"
local icon = "rbxassetid://" ..no.Icon or "rbxassetid://0"
local Duration = no.Duration or 3

if type == "Roblox" then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = name,Text = desc,Icon = icon})
end
if type == "WindUI" then
WindUI:Notify({Title = name,Content = desc,Duration = Duration,Icon = icon})
end
end


--> Function Download Image <--
function LoadAssets(list,cfg)
    ContentProvider=game:GetService("ContentProvider")
    HttpService=game:GetService("HttpService")
    Request=WindUI and WindUI.Creator and WindUI.Creator.Request

    cfg=cfg or {}
    Root=cfg.root or "Hub"
    AssetsDir=cfg.assets or Root.."/Assets"
    Prefix=cfg.prefix or ""
    Suffix=cfg.suffix or ""
    ForceExt=cfg.forceExt
    RetryDelay=cfg.retryDelay or 0.15
    PreloadBatch=cfg.preloadBatch or 6
    Notify=cfg.notify~=false
    Debug=cfg.debug~=false
    UserAgent=cfg.userAgent or "Hub"
    NoMedia=cfg.nomedia~=false

    if not isfolder(Root) then makefolder(Root) end
    if not isfolder(AssetsDir) then makefolder(AssetsDir) end
    if NoMedia and not isfile(AssetsDir.."/.nomedia") then writefile(AssetsDir.."/.nomedia","") end

    function Log(t) if Debug then warn("[Assets]",t) end end
    function UI(t)
        if not Notify then return end
        if WindUI and WindUI.Notify then
            WindUI:Notify({Title="Assets",Content=t,Duration=0.8})
        end
    end

    function Ext(u)
        if ForceExt then return ForceExt end
        e=u:match("^.+(%.[%w%d]+)$")
        return(e and #e<=6)and e or".png"
    end

    function Body(u)
        if not Request then return game:HttpGet(u) end
        ok,res=pcall(function()
            return Request({Url=u,Method="GET",Headers={["User-Agent"]=UserAgent}})
        end)
        return(ok and res and res.Body and #res.Body>20)and res.Body or nil
    end

    HighUNC = queue_on_teleport and getcustomasset and ContentProvider.PreloadAsync
    Batch = HighUNC and PreloadBatch or 1

    Result={}
    Queue={}
    Total=0
    for _ in pairs(list) do Total+=1 end
    Loaded=0

    for k,u in pairs(list) do
        Name=Prefix..k..Suffix..Ext(u)
        Path=AssetsDir.."/"..Name
        Cached=isfile(Path) and #readfile(Path)>20

        if not Cached then
            repeat
                B=Body(u)
                if B then writefile(Path,B) else task.wait(RetryDelay) end
            until B
            UI("Loaded "..k)
        end

        A=getcustomasset(Path)
        Result[k]=A
        Queue[#Queue+1]=A

        Loaded+=1
        if not Cached then Log(k.." "..math.floor(Loaded/Total*100).."%") end

        if #Queue>=Batch then
            pcall(function() ContentProvider:PreloadAsync(Queue) end)
            table.clear(Queue)
            task.wait()
        end
    end

    if #Queue>0 then pcall(function() ContentProvider:PreloadAsync(Queue) end) end
    UI("Completed")
    return Result
end
--> Asset Download <--
local Assets = LoadAssets({
    Background = "https://w0.peakpx.com/wallpaper/798/931/HD-wallpaper-how-does-recruitment-work-in-blue-archive-pro-game-guides.jpg",
    Thumbnail_1 = "https://i.ibb.co/RWKLjxx/takanashi-hoshino-thinking-in-class-blue-archive-thumb-1500x844.jpg",
    Icon_Image = "https://i.ibb.co/99sFfyn9/download-11.png",
    User_Inco = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrodGnAjQt1cOYWVF5_68ybs_1iCTOPVch880cgzghmbr5ntgE4UDQdstX&s=10",
    Prog_Icon = "https://static.wikia.nocookie.net/critical-tower-defense/images/4/46/SystemOverdriveAbilityIcon.png/revision/latest?cb=20220321021234",
    Artisan_Icon = "https://static.wikia.nocookie.net/critical-tower-defense/images/4/46/Artisan.png/revision/latest?cb=20251126114219",
    Phantom_Icon = "https://static.wikia.nocookie.net/critical-tower-defense/images/8/8c/Phantum.png/revision/latest?cb=20250516124526",
    DumpsterFire_Icon = "https://static.wikia.nocookie.net/critical-tower-defense/images/8/8d/Dumpster.webp/revision/latest?cb=20250517200926",
}, {
    root = "KoyukiHub",
    assets = "KoyukiHub/Assets",
    prefix = "K_",
    suffix = "_A",
    forceExt = ".png"
})

local Map = LoadAssets({
    B_O_D = "https://static.wikia.nocookie.net/critical-tower-defense/images/b/b3/TheBlackOrdealSquare.png/revision/latest?cb=20220708205616",
    F_R = "https://static.wikia.nocookie.net/critical-tower-defense/images/6/61/FracturedReality.png/revision/latest?cb=20251122105416",
    G_B = "https://static.vecteezy.com/system/resources/previews/055/660/360/non_2x/a-golden-burger-deliciously-rendered-in-gold-png.png",
    T_A_O = "https://static.wikia.nocookie.net/critical-tower-defense/images/9/90/TollAndOrder.png/revision/latest?cb=20240821060313",
    D = "https://static.wikia.nocookie.net/critical-tower-defense/images/3/38/Duck.png/revision/latest?cb=20250516183108",
    S_L = "https://static.wikia.nocookie.net/roblox/images/0/05/Spawn_Decal.png/revision/latest?cb=20240608072018",
}, {
    root = "KoyukiHub",
    assets = "KoyukiHub/Assets",
    prefix = "K_",
    suffix = "_A",
    forceExt = ".png"
})

--> Window <--
function GetGame()
    if game.PlaceId == 5543622168 then
        return "Lobby"
    elseif game.PlaceId == 6498579243 then
    return "InGame"
    end
end


_G.Window = WindUI:CreateWindow({
    Title = "Koyuki Hub | CTD | " ..GetGame(),
    Icon = "rbxassetid://134430677550422",
    Author = "By Nova Hoang / playGiang",
    Folder = "KoyukiHub",
    HideSearchBar = false,
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    Background = Assets.Background,
    Acrylic = true,
    NewElements = true,
    KeySystem = { 
        Key = { "Niha", "koyuki"},
        Note = "Key Form Clipboard Click Getkey",
        Thumbnail = {
            Image = Assets.Thumbnail_1,
            Title = "Koyuki",
        },
        URL = "koyuki",
        SaveKey = true,
    },
    Topbar = {
        Height = 44,
        ButtonsType = "Mac",
    },
})

Window:EditOpenButton({
    Title = "Open Koyuki Hub",
    Icon = "rbxassetid://134430677550422",
    CornerRadius = UDim.new(1,0),
    StrokeThickness = 1,
    Color = ColorSequence.new(
        Color3.fromHex("FF00F0"), 
        Color3.fromHex("#FF00BD")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

-->> Tag And Profile <<--
--> Function Get Profile <--
local HttpService = game:GetService("HttpService")

-->> Animation Window <<--

--> Functional <--
--| Bypass Anticheat
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

--> Tabs <--

local Tabs = {
 ["Main"] = _G.Window:Section({Title = "Main",Opened = false, Icon = "solar:home-2-broken", IconColor = Green, IconShape = "Square",Locked = false})
}

--> Getgenv config <--
getgenv().Config = {
	["Place"] = nil,
	["Color"] = {
		["PrimaryColor"] = Color3.fromRGB(0,0,0),
		["SecondaryColor"] = Color3.fromRGB(0,0,0),
		["WeaponColor"] = Color3.fromRGB(0,0,0) ,
		},
	["Programmer Ability Number"] = nil,
	["TimeProg"] = 30,
}

--// Lobby \\--
if game.PlaceId == 5543622168 then
--> Getgenv Misc or Other <-
getgenv().Places = {
	["Black Ordeal"] = workspace.Map["Black Ordeal"].TeleportPos.CFrame,
	["End Room(Burger Golden)"] = workspace.Map.EndRoom.TPPart.CFrame,
	["Lobby Level 20"] = workspace.SpecialParts.Lobby2LevelRequirement.CFrame,
	["Arena Level 30"] = workspace.SpecialParts.Lobby2LevelRequirement30.CFrame,
	["Ducky"] = workspace.NPCS.Talks.THEDUCK.HumanoidRootPart.CFrame,
	["Toll And Order"] = workspace.Elevators.ClassicElevators.TollersTollAndOrder.baseplate.CFrame,
	["Fractured Reality"] = workspace.Map["Fractured Reality"].TPDestination.CFrame,
	["Spawn Location"] = workspace.SpawnLocation,
}

--> Section x Section Elements <--
--> Section Lobby <--

local secsLobby = {
	["Teleport"] = Tabs["Main"]:Tab({Title = "Teleport", Opened = false, Icon = "solar:map-point-remove-linear", IconColor = Blue, IconShape = "Square",}),
	["Color Tower"] = Tabs["Main"]:Tab({Title = "Color For Tower",Opened = false, Icon = "solar:paint-roller-bold", IconColor = Red, IconShape = "Square",}),
	["Misc"] = Tabs["Main"]:Tab({Title = "Misc",Opened = false, Icon = "solar:airbuds-case-minimalistic-outline", IconColor = Yellow, IconShape = "Square",})
}


--/> Teleport Section <\--
teleport = secsLobby["Teleport"]

teleport:Dropdown({
    Title = "Select Place To Teleport",
    Values = {
        {Title="Black Ordeal",Icon=Map.B_O_D},
        {Title="End Room(Burger Golden)",Icon=Map.G_B},
        {Title="Lobby Level 20"},
        {Title="Arena Level 30"},
        {Title="Toll And Order",Icon=Map.T_A_O},
        {Title="Spawn Location",Icon=Map.SL},
        {Title="Fractured Reality",Icon=Map.F_R},
        {Title="Ducky",Icon=Map.D},
    },
    Value = "",
    Callback = function(v)
        getgenv().Config["Place"] = v.Title
    end
})

teleport:Button({
    Title = "Teleport",
    Justify = "Center",
    IconAlign = "Left",
    Icon = "space",
    Callback = function()
        local p = getgenv().Config["Place"]
        if not p then notify({Name="Select Place",Desc="Select Place To Teleport",Icon="check"}); return end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().Places[p]
    end
})

--/> Color Section <\--
Color = secsLobby["Color Tower"]
Color:Colorpicker({
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

Color:Colorpicker({
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

Color:Colorpicker({
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

Color:Dropdown({
    Title = "Color Options",
    Values = availableColors,
    Value = {"PrimaryColor"},
    Multi = true,
    AllowNone = true,
    Callback = function(option)
        getgenv().OptionsColor = option or {}
    end
})

Color:Button({
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

--/> <\--

--/> Misc <\--
misc = secsLobby["Misc"]

misc:Button({
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

misc:Button({
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


--/: end :\--
end


--// In Game \\--
if game.PlaceId == 6498579243 then
--> Section InGame <--
local secsInGame = {
	["Tower"] = Tabs["Main"]:Tab({Title = "Tower",Opened = false, Icon = "solar:lightbulb-minimalistic-line-duotone", IconColor = Green, IconShape = "Square",}),
	["Ability"] = Tabs["Main"]:Tab({Title = "Ability",Opened = false, Icon = "solar:lightbulb-bolt-broken", IconColor = Yellow, IconShape = "Square",}),
	["Misc"] = Tabs["Main"]:Tab({Title = "Misc",Opened = false, Icon = "solar:folder-with-files-broken", IconColor = Red, IconShape = "Square",}),
}
--/> Tower <\--
tower = secsInGame["Tower"]

local Programmer = tower:Section({ 
    Title = "ProgramAbility",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 14,
    Icon = Assets.Prog_Icon,
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


local PathTower = tower:Section({ 
    Title = "Path Tower",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 14,
    Icon = Assets.Phantom_Icon,
    Opened = true,
})

PathTower:Button({
    Title = "No Cooldown For Path Tower",
    Desc = "Yep this is work",
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

local Artisan = tower:Section({ 
    Title = "Artisan",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 14,
    Icon = Assets.Artisan_Icon,
    Opened = true,
})


local UI = {}
UI.Gui = Instance.new("ScreenGui")
UI.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UI.Gui.Parent = game.CoreGui
UI.Gui.Enabled = false

UI.Main = Instance.new("Frame")
UI.Main.Name = "MainFrame"
UI.Main.Parent = UI.Gui
UI.Main.BorderSizePixel = 0
UI.Main.BackgroundColor3 = Color3.fromRGB(255,255,255)
UI.Main.Size = UDim2.new(0.22399,0,0.34471,0)
UI.Main.Position = UDim2.new(0.035,0,0.03283,0)

Instance.new("UICorner", UI.Main)

UI.Gradient = Instance.new("UIGradient")
UI.Gradient.Parent = UI.Main
UI.Gradient.Rotation = 45
UI.Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(122,150,173)),
    ColorSequenceKeypoint.new(0.748, Color3.fromRGB(160,196,226)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(160,196,226))
}

UI.Canvas = Instance.new("CanvasGroup")
UI.Canvas.Name = "Canvas"
UI.Canvas.Parent = UI.Main
UI.Canvas.BackgroundTransparency = 1
UI.Canvas.Size = UDim2.new(1,0,0.8254,0)
UI.Canvas.Position = UDim2.new(0,0,0.07937,0)

UI.Line = Instance.new("Frame")
UI.Line.Parent = UI.Canvas
UI.Line.BorderSizePixel = 0
UI.Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
UI.Line.BackgroundTransparency = 0.8
UI.Line.Size = UDim2.new(1.16667,0,0.01923,0)
UI.Line.Position = UDim2.new(-0.07292,0,0.07692,0)

for _,t in ipairs({2,4}) do
    local s = Instance.new("UIStroke", UI.Line)
    s.Transparency = 0.9
    s.Thickness = t
end

UI.Label = Instance.new("TextLabel")
UI.Label.Name = "TowerName"
UI.Label.Parent = UI.Main
UI.Label.Text = ""
UI.Label.TextSize = 18
UI.Label.TextColor3 = Color3.fromRGB(255,255,255)
UI.Label.BackgroundColor3 = Color3.fromRGB(0,0,0)
UI.Label.BackgroundTransparency = 0.8
UI.Label.Size = UDim2.new(0.88542,0,0.30159,0)
UI.Label.Position = UDim2.new(0.05208,0,0.25397,0)
UI.Label.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")

for _,t in ipairs({2,4}) do
    local s = Instance.new("UIStroke", UI.Label)
    s.Transparency = 0.9
    s.Thickness = t
end

UI.Button = Instance.new("TextButton")
UI.Button.Name = "TeleportButton"
UI.Button.Parent = UI.Main
UI.Button.Text = "Teleport Tower"
UI.Button.TextSize = 12
UI.Button.TextColor3 = Color3.fromRGB(255,255,255)
UI.Button.BackgroundColor3 = Color3.fromRGB(0,0,0)
UI.Button.BackgroundTransparency = 0.8
UI.Button.Size = UDim2.new(0.88542,0,0.30159,0)
UI.Button.Position = UDim2.new(0.05208,0,0.61905,0)
UI.Button.FontFace = UI.Label.FontFace

for _,t in ipairs({2,4}) do
    local s = Instance.new("UIStroke", UI.Button)
    s.Transparency = 0.9
    s.Thickness = t
end

Instance.new("UIDragDetector", UI.Main)

UI.Ratio = Instance.new("UIAspectRatioConstraint")
UI.Ratio.Parent = UI.Main
UI.Ratio.AspectRatio = 1.52381

TowerList = {}
TowerMap = {}
_G.TowerToTeleport = nil
MyArtisan = nil

function UpdateTower()
    table.clear(TowerList)
    table.clear(TowerMap)
    MyArtisan = nil

    for _,v in pairs(workspace.Towers:GetChildren()) do
        local cfg = v:FindFirstChild("Configuration")
        local owner = cfg and cfg:FindFirstChild("Owner")
        if owner and owner.Value == game:GetService("Players").LocalPlayer.Name then
            TowerList[#TowerList+1] = v.Name
            TowerMap[v.Name] = v
            if v.Name == "Artisan" then
                MyArtisan = v
            end
        end
    end

    TowerDropdown:Refresh(TowerList)

    if _G.TowerToTeleport and not _G.TowerToTeleport.Parent then
        _G.TowerToTeleport = nil
    end
end

TowerDropdown = Artisan:Dropdown({
    Title = "Select Tower To Teleport",
    Desc = "Owned Towers Only",
    Values = {},
    Callback = function(v)
        _G.TowerToTeleport = TowerMap[v]
    end
})

UpdateTower()

workspace.Towers.ChildAdded:Connect(function()
    task.wait(0.15)
    UpdateTower()
end)

workspace.Towers.ChildRemoved:Connect(UpdateTower)
Artisan:Button({  
    Title = "Teleport Tower",  
    Desc = "Require Your Artisan",  
    Locked = false,  
    Callback = function()  
        if not _G.TowerToTeleport then return end  
        if not MyArtisan then return end  
  
        local cfg = MyArtisan:FindFirstChild("Configuration")  
        local owner = cfg and cfg:FindFirstChild("Owner")  
        local remote = MyArtisan:FindFirstChild("CurrentHoveringSelectionRemote")  
  
        if owner and owner.Value == game:GetService("Players").LocalPlayer.Name and remote then  
            remote:FireServer(_G.TowerToTeleport)  
        end  
    end  
})

Artisan:Button({
    Title = "Teleport Tower",
    Desc = "Require Your Artisan",
    Locked = false,
    Callback = function()
        if not _G.TowerToTeleport then return end
        if not MyArtisan then return end

        local cfg = MyArtisan:FindFirstChild("Configuration")
        local owner = cfg and cfg:FindFirstChild("Owner")
        local remote = MyArtisan:FindFirstChild("CurrentHoveringSelectionRemote")

        if owner and owner.Value == game:GetService("Players").LocalPlayer.Name and remote then
            remote:FireServer(_G.TowerToTeleport)
        end
    end
})

local Empty = tower:Section({ 
    Title = "Place Anywhere",
    Box = true,
    TextTransparency = 0.05,
    TextXAlignment = "Center",
    TextSize = 14,
    Icon = Assets.DumpsterFire_Icon,
    Opened = true,
})

Empty:Paragraph({
    Title = "Tutorial",
    Desc = "1. Click Tower Have Ability Spawn Unit Like Technomancer \n 2. Click Ability Then Click EmptyTower \n Now Ur Done Place Anywhere",
})

Empty:Paragraph({
    Title = "Warning",
    Desc = "- It Doesn't Work On Artisan (So You need Place Dont Reach Other Tower Hitbox) and Make Sure Everything you Correct",
    Color = "Red",
})

_G.Slot_Tower = "1"

getgenv().SaveOld = {}

for i = 1,6 do
    local t = game:GetService("Players").LocalPlayer.PlayerData.Loadout:FindFirstChild("Tower"..i)
    if t then
        getgenv().SaveOld[tostring(i)] = t.Value
    end
end

local EmptySelect = Empty:Dropdown({
    Title = "Select Tower Slot To Replace With EmptyTower",
    Values = {"1","2","3","4","5","6"},
    Value = "1",
    Callback = function(v)
        _G.Slot_Tower = v
    end
})

Empty:Toggle({
    Title = "Click To Replace Tower",
    Desc = "chossen Tower First",
    Type = "Toggle",
    Value = false,
    Callback = function(v)
        _G.YTP = v

        if not _G.Slot_Tower then return end

        local lp = game:GetService("Players").LocalPlayer
        local loadout = lp:FindFirstChild("PlayerData") and lp.PlayerData:FindFirstChild("Loadout")
        if not loadout then return end

        local towerObj = loadout:FindFirstChild("Tower".._G.Slot_Tower)
        if not towerObj then return end

        if _G.YTP then
            if not getgenv().SaveOld[_G.Slot_Tower] then
                getgenv().SaveOld[_G.Slot_Tower] = towerObj.Value
            end
            towerObj.Value = "EmptyTower"
            EmptySelect:Lock()
        else
            if getgenv().SaveOld[_G.Slot_Tower] then
                towerObj.Value = getgenv().SaveOld[_G.Slot_Tower]
                EmptySelect:Unlock()
            end
        end
    end
})

--// Misc \\--

misc = secsInGame["Misc"]

local Tower
Tower = misc:Toggle({
    Title = "Change Replicated Tower to (new)",
    Desc = "Change Tower Localscript To New Or Old",
    Type = "Toggle",
    Value = false,
    Callback = function(value)
        _G.Replicated = value

        local plr = game:GetService("Players").LocalPlayer
        local gui = plr:FindFirstChild("PlayerGui") and plr.PlayerGui:FindFirstChild("UnitsListGui")
        if not gui then return end

        local newrep = gui:FindFirstChild("ReplicatorClientNew & unused")
        local oldrep = gui:FindFirstChild("ReplicatorClient")
        if not (newrep and oldrep) then return end

        if value then
            newrep.Disabled = true
            oldrep.Disabled = false
            Tower:SetTitle("Change Replicated Tower to (old)")
        else
            newrep.Disabled = false
            oldrep.Disabled = true
            Tower:SetTitle("Change Replicated Tower to (new)")
        end
    end
})

misc:Toggle({
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


--/: end :\--
end
