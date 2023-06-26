local Config = require('config')


RegisterNetEvent('kmenu:notify')
AddEventHandler('kmenu:notify', function(title, message, position, type)
    lib.notify({
        title = title,
        description = message,
        position = position,
        type = type
    })
end)

RegisterKeyMapping('ktest', 'kmenu', 'keyboard', 'k')

-- Register the key binding
RegisterCommand('ktest', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    -- Check if the player is within any menu area
    local isInMenuArea = false
    for _, area in ipairs(Config.menuAreas) do
        local distance = GetDistanceBetweenCoords(playerCoords, area.coords, true)
        if distance <= area.radius then
            isInMenuArea = true
            break
        end
    end

    -- Open the main menu only if the player is within a menu area
    if isInMenuArea then
        lib.showMenu('main_menuk')
    else
        -- Inform the player that they are not in a valid menu area
        --TriggerEvent('chat:addMessage', {
        --    args = {'[Menu]', 'You are not in a valid menu area.'}
        --})
        print('[kmenu] | You are not in a valid menu area.')
    end
end, false)

TriggerEvent('chat:removeSuggestion', '/ktest')


-- Register the main menu
lib.registerMenu({
    id = 'main_menuk',
    title = 'Main Menu',
    position = 'bottom-right',
    options = {
        {
            label = 'Weapons',
            args = { submenu = 'weapons_menuk' },
            icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112947119087693874/Two-gun-revolver-cross-logo-vector-PNG-removebg-preview.png',
        },
        {
            label = 'Teleport',
            args = { submenu = 'teleport_menuk' },
            icon = 'https://cdn.discordapp.com/attachments/1112935945822547989/1112946707773276200/teleport-icon-512x512-uknzw1n3-removebg-preview.png',
        }
    }
}, function(selected, scrollIndex, args)
    if args.submenu then
        lib.showMenu(args.submenu)
    end
end)

-- Register the weapons menu
lib.registerMenu({
    id = 'weapons_menuk',
    title = 'Weapons Menu',
    position = 'bottom-right',
    options = Config.weaponOptions
}, function(selected, scrollIndex, args)
    if args.weapon then
        TriggerServerEvent('kye:3167gvh0b1826735t', args.amount, args.weapon, args.label)
    elseif args.item then
        TriggerServerEvent('kye:08713fg6gc18673twhatisthistrigger89h13tclickme', args.amount, args.label, args.item)
    elseif args.submenu then
        lib.showMenu(args.submenu)
    end
end)

-- Register the teleport menu
lib.registerMenu({
    id = 'teleport_menuk',
    title = 'Teleport Menu',
    position = 'bottom-right',
    options = Config.teleportOptions
}, function(selected, scrollIndex, args)
    if args.location then
        local location = args.location
        SetEntityCoords(PlayerPedId(), location.x, location.y, location.z)
    elseif args.submenu then
        lib.showMenu(args.submenu)
    end
end)