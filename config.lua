Config = {}

Target = {
    UseTarget = true, -- True if you want to use Target and False if you want to use 3D Text (E)
    TargetName = 'qb-target', -- Your Target file name for Exports.
    CarSpawningPed = 'S_M_M_Trucker_01', -- PED Spawn Name from where you'll get the car and obv you'll get the blips to chop tree.
    CarSpawningPedCoords = vector4(1200.56, -1277.45, 34.57, 354.43), -- PED Spawn Coords from where you'll get the car and obv you'll get the blips to chop tree. (Only For UseTarget = true)
    SellingPed = 'A_M_Y_Vinewood_01', -- Item Selling Ped Spawn Name where you'll sell lumber woods.
    SellingPedCoords = vector4(1209.76, -1317.27, 34.23, 176.24), -- Item Selling Ped Coords where you'll sell lumber woods. (Only For UseTarget = true)
    LumberProcessCoords = vector3(-533.19, 5293.17, 74.19), -- Lumber Processing Coords. (Only For UseTarget = true)
    Trees = {
        [1] = {
            ["coords"] = vector3(191.87, 6703.94, 36.64), --- Coord of the Tree to Chop, You can add more just make sure you make the counting good + add coords of ped attaching in Config.WoodPosition too. (Only For UseTarget = true)
            ["isInUse"] = false, -- Dont Touch this until you are testing.
        },
        [2] = {
            ["coords"] = vector3(192.53, 6709.5, 36.69),
            ["isInUse"] = false,
        },
        [3] = {
            ["coords"] = vector3(248.5, 6702.51, 30.09),
            ["isInUse"] = false,
        },
        [4] = {
            ["coords"] = vector3(312.93, 6769.33, 16.39),
            ["isInUse"] = false,
        },
        [5] = {
            ["coords"] = vector3(313.2, 6775.27, 16.56),
            ["isInUse"] = false,
        },
        [6] = {
            ["coords"] = vector3(269.21, 6766.92, 15.81),
            ["isInUse"] = false,
        },
    },
    Icons = {
        ["sell"]  =  "fa-solid fa-comments-dollar", -- Sell Ped Target Icon before Label.
        ["process"]  =  "fa-solid fa-print", -- Processing Target Icon before Label.
        ["start"]  =  "fa-solid fa-truck-ramp-box", -- Start Lumberjack/Spawn Vehicle Target Icon Before Label.
        ["deforest"]  =  "fa-solid fa-tree", -- Cut Wood / Harvest Wood from Tree Target Icon before Label.
    },
}

Blips = {
    UseBlips = true, -- True If you want to use blips, False if you dont want to see blips. :D

    --- Wood Selling Blip ---
    SellingSprite = 207, -- https://docs.fivem.net/docs/game-references/blips/
    SellingScale = 0.6, -- Depends on you how big you want it to be on map!
    SellingColour = 11, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
    
    --- Start Lumberjack Blip ---
    VehSpawnSprite = 632,
    VehSpawnScale = 0.6,
    VehSpawnColour = 13,

    --- Deposit Lumber Vehicle Blip ---
    DepositVehSprite = 274,
    DepositVehScale = 0.6,
    DepositVehColour = 76,
}

Config = {
    CoreName - 'qb-core', -- If you have renamed qb-core file you can rename here too otherwise leave it like it is.
    DebugMode = false, -- Target Debug Mode so you can see PolyZone Boxes. (Only for UseTarget = true) Note:- Dont Use on Live Server.
    SpawnPeds = true, -- True If you want peds to Spawn and False if you dont want to spawn peds. (Target uses Poly Zones so Its just for a Realistic RP!)
    UseQBLogs = true, -- True If you want to utilize qb-smallresource/server/logs.lua, and False if you dont want to have sell logs! (Make Sure to go through ReadME)
    ChanceToGetItem = 15, -- if math.random(0, 100) <= ChanceToGetItem then give item
    Items = {'wood_cut','wood_cut','wood_cut'}, --- Just Rename Items if you want to give random items while Chopping Wood from Tree!
    Objects = {
        ['pickaxe'] = 'w_me_hatchet', --- DONT TOUCH THIS! Until you know what you are doing!
    },
    WoodPosition = {
        {coords = vector3(192.57, 6703.18, 35.83), heading = 55.32},      -- #1 If You are Using Target or Even if you are not using Target you have to set coords here to its the ped attaching infront of Tree and Blips.
        {coords = vector3(193.47, 6709.99, 35.8), heading = 114.97},      -- #2
        {coords = vector3(247.57, 6702.41, 29.21), heading = 282.73},     -- #3
        {coords = vector3(312.34, 6768.75, 15.52), heading = 312.28},     -- #4
        {coords = vector3(314.1, 6776.19, 16.67-1), heading = 136.55},    -- #5
        {coords = vector3(270.23, 6766.81, 15.79-1), heading = 81.75}     -- #6
    },

    UseInteractSounds = true, -- True if you want to use Interact Sounds and False if you dont want to.
    InteractSoundVolume = 0.8, -- If UseInteractSounds = true then Sound Volume Can be Set here!
    InteractSoundServerSide = true, -- True if you want others nearby to hear the sound to and False if you want only the person who is processing the woods to hear the sounds!
    InteractSoundName = 'chainsaw', -- Sound Name if you want custom to use, I have provided 'chainsaw.ogg' with the files so you can use that too.
    
    ItemCheckTreeChop = false, -- True if you want to use item check for chopping from Tree and False if you dont want too.
    ItemNameTreeChop = 'weapon_battleaxe', -- Item name to check if ItemCheckTreeChop = true. otherwise it doesnt effect anything!

    CarModel = 'sadler', -- Car Model To Spawn When Starting Lumberjack Job.
    Fuel = 'LegacyFuel', -- Fuel System Name you use!
    StartLumberLoc = vector3(1200.59, -1276.94, 35.38),      -- 3D Text Location to Start Lumberjack. (IF UseTarget = false)
    ProcessLumberLoc = vector3(-533.17, 5292.15, 74.17),     -- 3D Text Location to Process Lumber. (IF UseTarget = false)
    SellLoc = vector3(1209.77, -1317.77, 35.23),             -- 3D Text Location where you'll sell the woods. (IF UseTarget = false)
    DepositVehLoc = vector3(1193.66, -1261.22, 35.2),        -- 3D Text Location where you'll deposit the spawned vehicle. (IF UseTarget = false)
    VehSpawnLoc = vector4(1193.66, -1261.22, 35.2, 271.14),  -- 3D Text Location where you'll spawn the car when started the job. (IF UseTarget = false)
    SellPrices = {
        ["wood_proc"]  =  math.random(50,500),   -- Price of Normal Quality Wood.
        ["wood_proc2"]  =  math.random(50,500),  -- Price of Medium Quality Wood.
        ["wood_proc3"]  =  math.random(50,500),  -- Price of High Quality Wood.
    },
}

Strings = {
    --- Notifications ---
    ['wood_info'] = 'Press ~INPUT_ATTACK~ to chop, ~INPUT_FRONTEND_RRIGHT~ to stop.',
    ['someone_close'] = 'There is another citizen nearby!',
    ['chkveh'] = 'I\'m preparing your car, 100% fuel.',
    ['chkveh2'] = 'I\'m checking your car.',
    ['noplanks'] = 'You dont have any planks.',
    ['noinvspace'] = 'You can no longer carry more items. Your Back Feels Painfull because of too much weight.',
    ['woodprc'] = 'Normal Wood Processed.',
    ['medwoodprc'] = 'Medium Quality Wood Processed.',
    ['highwoodprc'] = 'High Quality Wood Processed.',
    ['nothingprc'] = 'Wood got wasted!',
    ['nowoodleft'] = 'You just did not get the right items',
    ['nowoodleft'] = 'You just did not get the right items',
    ['soldwood'] = 'You sold your woods for $',

    --- Blips ---
    ['autotru'] = 'Lumberjack vehicle',
    ['sell_wood'] = 'Sell Wood',
    ['hevpark'] = 'Park',
    ['wood'] = 'Chop location',
    ['process'] = 'Process Wood',

    --- 3D Text (Without Target when UseTarget = false) ---
    ['choptree'] = '~g~[E]~w~ Chop Wood',
    ['startjob'] = '~g~[E]~w~ Get Vehicle',
    ['prcwood'] = '~g~[E]~w~ Process Wood',
    ['parkvehicle'] = '~g~[E]~w~ Park Vehicle',
    ['sellwood'] = '~g~E~w~ - Sell Lumber Woods',

    --- Target Labels ---
    ['t_sellwood'] = 'Sell Woods',
    ['t_prcwood'] = 'Process Wood',
    ['t_strtlumber'] = 'Start Lumberjack',
    ['t_harvestwood'] = 'Harvest Wood',

    --- ProgressBar Text ---
    ['pb_prcwood'] = 'Processing Wood...',
    ['pb_chkveh'] = 'Checking Job Info..',
    ['pb_rtnveh'] = 'Returning Vehicle..',
}
