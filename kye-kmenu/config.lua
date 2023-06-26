Config = {}

Config.weaponOptions = {
    { label = 'Ap pistol', description = '$45,000', icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112630079823020082/584646201.png', args = { weapon = 'WEAPON_APPISTOL', amount = 45000, label = 'Ap Pistol' }, close = false },
    { label = 'Combat Pistol',  description = '$25,000',icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112629967122092042/1593441988.png', args = { weapon = 'WEAPON_COMBATPISTOL', amount = 25000, label = 'Combat Pistol' }, close = false },
    { label = 'Bulletproof', description = '$8,000', icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112630342835249242/armor.png', args = { item = 'armour', amount = 8000, label = 'Armour' }, close = false },
    { label = 'Medkit', description = '$8,000', icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112630625975943189/medkit.png', args = { item = 'medkit', amount = 8000, label = 'Medkit' }, close = false },
    { label = 'Weapon Clip', description = '$8,000', icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112630416013283398/pistol_ammo.png', args = { item = 'clip', amount = 8000, label = 'Weapon Clip' }, close = false },
    { label = 'Suppressor',  description = '$8,000', icon = 'https://cdn.discordapp.com/attachments/944092742894624789/1112629501927632906/supp-removebg-preview.png', args = { item = 'suppressor', amount = 8000, label = 'Suppressor' }, close = false },
    {
        label = 'Back',
        args = { submenu = 'main_menuk'},
        icon = 'fa-solid fa-angles-left',
    }
}

Config.teleportOptions = {
    { label = 'Skate Park', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112940973614448640/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczQtdGVkLTA0NTYtcG9tLnBuZw-removebg-preview.png', args = { location = {x = -959.07, y = -779.92, z = 17.82} }, close = false },
    { label = 'Airport Ramps', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112941639384702986/images-removebg-preview.png', args = { location = {x = -1024.20, y = -3452.72, z = 13.94} }, close = false },
    { label = 'Sky Ramps', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112936987280801812/d09b35413d830655345671731d2ccbdf7d9e71d5-removebg-preview.png', args = { location = {x = -1772.32, y = 5699.30, z = 223.89} }, close = false },
    { label = 'Stables', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112942212746063922/images-removebg-preview.png', args = { location = {x = 1432.07, y = 1109.58, z = 114.30} }, close = false },
    { label = 'Soccer Arena', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112947470259990588/image-removebg-preview.png', args = { location = {x = 771.11, y = -233.21, z = 68.94} }, close = false },
    { label = 'Paintball Arena', icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112942426525536328/purple-paint-splatter-transparent-11546688991qxjyzepyxk-removebg-preview.png', args = { location = {x = 2017.70, y = 2783.78, z = 53.13} }, close = false },
    {
        label = 'Back',
        args = { submenu = 'main_menuk'},
        icon = 'fa-solid fa-angles-left',
    },
}

Config.menuAreas = {
    {coords = vector3(-924.37,-753.8,19.63), radius = 73 },-- Skate Park
    {coords = vector3(-1020.0,-3453.26,13.94), radius = 145 }, --airport
    {coords = vector3(-1772.32, 5699.30, 223.89), radius = 75 }, --skyramps
    {coords = vector3(1432.07, 1109.58, 114.30), radius = 140 }, --stables
    {coords = vector3(771.11, -233.21, 68.94), radius = 50 }, --soccer
    {coords = vector3(2017.92, 2784.17, 53.13), radius = 83}, --paintball
}

return Config