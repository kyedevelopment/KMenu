ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('kye:3167gvh0b1826735t')
AddEventHandler('kye:3167gvh0b1826735t', function(amount, weapon, label)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.hasWeapon(weapon) then
        TriggerClientEvent('kmenu:notify', source, "", "You Already Have An " .. label, "top", "inform")
    else
        if xPlayer.getMoney() >= amount then
            xPlayer.removeMoney(amount)
            xPlayer.addWeapon(weapon, 5000)
        else
            local missingBread = amount - xPlayer.getMoney()
            TriggerClientEvent('kmenu:notify', source, "", "You Cannot Afford " .. label .. "\nMissing $" .. missingBread .. "!", "top", "error")
        end
    end
end)

RegisterServerEvent('kye:08713fg6gc18673twhatisthistrigger89h13tclickme')
AddEventHandler('kye:08713fg6gc18673twhatisthistrigger89h13tclickme', function(amount, label, item)
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getMoney() >= amount then
            xPlayer.removeMoney(amount)
            xPlayer.addInventoryItem(item, 1)
        else
            local missingBread = amount - xPlayer.getMoney()
            TriggerClientEvent('kmenu:notify', source, "", "You Cannot Afford " .. label .. "\nMissing $" .. missingBread .. "!", "top", "error")
        end
end)
