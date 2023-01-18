local QBCore = exports['qb-core']:GetCoreObject()
local function getAvailableDrugs(source)
    local AvailableDrugs = {}
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return nil end

    for k in pairs(Config.DrugsPrice) do
        local item = Player.Functions.GetItemByName(k)

        if item then
            AvailableDrugs[#AvailableDrugs + 1] = {
                item = item.name,
                amount = item.amount,
                label = QBCore.Shared.Items[item.name]["label"]
            }
        end
    end
    return table.type(AvailableDrugs) ~= "empty" and AvailableDrugs or nil
end

QBCore.Functions.CreateCallback('qb-drugs:server:cornerselling:getAvailableDrugs', function(source, cb)
    cb(getAvailableDrugs(source))
end)

RegisterNetEvent('qb-drugs:server:giveStealItems', function(drugType, amount)
    local availableDrugs = getAvailableDrugs(source)
    local Player = QBCore.Functions.GetPlayer(source)

    if not availableDrugs or not Player then return end

    Player.Functions.AddItem(availableDrugs[drugType].item, amount)
end)

RegisterNetEvent('qb-drugs:server:sellCornerDrugs', function(drugType, amount, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local availableDrugs = getAvailableDrugs(src)

    if not availableDrugs or not Player then return end

    local item = availableDrugs[drugType].item
    local chance = math.random(1,300)
    local hasItem = Player.Functions.GetItemByName(item)
    if hasItem.amount >= amount then
       -- TriggerClientEvent('QBCore:Notify', src, Lang:t("success.offer_accepted"), 'success')
       TriggerClientEvent('okokNotify:Alert', source, 'Selling Drugs', Lang:t("success.offer_accepted"), 5000, 'success')
    
        Player.Functions.RemoveItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
        TriggerClientEvent('qb-drugs:client:refreshAvailableDrugs', src, getAvailableDrugs(src))

        if chance == 2 then
            Player.Functions.AddItem('weed_skunk_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_skunk_seed_m'], "add")
        
        elseif chance == 4 then
            Player.Functions.AddItem('weed_og-kush_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_og-kush_seed_m'], "add")
        elseif chance == 6 then
            Player.Functions.AddItem('drug_scales', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['drug_scales'], "add")
        elseif chance == 8 then
            Player.Functions.AddItem('oxy', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['oxy'], "add")
        elseif chance == 10 then
            Player.Functions.AddItem('weed_white-widow_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_white-widow_seed_m'], "add")
        elseif chance == 12 then
            Player.Functions.AddItem('weed_ak47_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_ak47_seed_m'], "add")
        elseif chance == 14 then
            Player.Functions.AddItem('weed_amnesia_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_amnesia_seed_m'], "add")
        elseif chance == 16 then
            Player.Functions.AddItem('weed_purple-haze_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_purple-haze_seed_m'], "add")
        elseif chance == 18 then
            Player.Functions.AddItem('carbattery', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['carbattery'], "add")
        elseif chance == 20 then
            Player.Functions.AddItem('phonebattery', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['phonebattery'], "add")
        elseif chance == 22 then
            Player.Functions.AddItem('copperwire', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['copperwire'], "add")
        elseif chance == 24 then
            Player.Functions.AddItem('lotto', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['lotto'], "add")
        elseif chance == 26 then
            Player.Functions.AddItem('boostingdisabler', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['boostingdisabler'], "add")
        elseif chance == 28 then
            Player.Functions.AddItem('weed_gelato_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_gelato_seed_m'], "add")
        elseif chance == 30 then
            Player.Functions.AddItem('weed_zkittlez_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_zkittlez_seed_m'], "add")
        elseif chance == 32 then
            Player.Functions.AddItem('weed_fertilizer', 5, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_fertilizer'], "add")
        elseif chance == 34 then
            Player.Functions.AddItem('weed_water', 5, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_water'], "add")
        elseif chance == 36 then
            Player.Functions.AddItem('weed_gelato_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_gelato_seed_m'], "add")
        elseif chance == 38 then
            Player.Functions.AddItem('weed_zkittlez_seed_m', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_zkittlez_seed_m'], "add")
        elseif chance == 40 then
            Player.Functions.AddItem('weed_skunk_seed_f', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_skunk_seed_f'], "add")
        elseif chance == 42 then
            Player.Functions.AddItem('methlab', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['methlab'], "add")
        elseif chance == 44 then
            Player.Functions.AddItem('gasmask', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['gasmask'], "add")
        elseif chance == 46 then
            Player.Functions.AddItem('lithium', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['lithium'], "add")
        elseif chance == 48 then
            Player.Functions.AddItem('nailpolishremover', 3, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['nailpolishremover'], "add")
        elseif chance == 50 then
            Player.Functions.AddItem('acetone', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['acetone'], "add")
        elseif chance == 52 then
            Player.Functions.AddItem('weed_og-kush_seed_f', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_og-kush_seed_f'], "add")
        elseif chance == 54 then
            Player.Functions.AddItem('weed_white-widow_seed_f', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_white-widow_seed_f'], "add")
        elseif chance == 56 then
            Player.Functions.AddItem('ww2relic', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['ww2relic'], "add")
        elseif chance == 58 then
            Player.Functions.AddItem('pocketwatch', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['pocketwatch'], "add")
        elseif chance == 60 then
            Player.Functions.AddItem('goldcoin', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldcoin'], "add")
        elseif chance == 62 then
            Player.Functions.AddItem('antiquecoin', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['antiquecoin'], "add")
        elseif chance == 64 then
            Player.Functions.AddItem('aincientcoin', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['aincientcoin'], "add")
        elseif chance == 66 then
            Player.Functions.AddItem('dufflebag', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dufflebag'], "add")
        elseif chance == 68 then
            Player.Functions.AddItem('weed_ak47_seed_f', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_ak47_seed_f'], "add")
        elseif chance == 70 then
            Player.Functions.AddItem('weed_amnesia_seed_f', 2, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_amnesia_seed_f'], "add")
        elseif chance == 72 then
            Player.Functions.AddItem('weed_purple-haze_seed_f', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_purple-haze_seed_f'], "add")
        elseif chance == 74 then
            Player.Functions.AddItem('goldchip', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldchip'], "add")
        elseif chance == 76 then
            Player.Functions.AddItem('trojan_usb', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['trojan_usb'], "add")
        elseif chance == 78 then
            Player.Functions.AddItem('cryptostick', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cryptostick'], "add")
        elseif chance == 80 then
            Player.Functions.AddItem('classic_phone', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['classic_phone'], "add")
        elseif chance == 82 then
            Player.Functions.AddItem('wire_cutter', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wire_cutter'], "add")
        elseif chance == 84 then
            Player.Functions.AddItem('hackinglaptop', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['hackinglaptop'], "add")
        elseif chance == 86 then
            Player.Functions.AddItem('weed_gelato_seed_f', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_gelato_seed_f'], "add")
        elseif chance == 88 then
            Player.Functions.AddItem('electronickit', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['electronickit'], "add")
        elseif chance == 90 then
            Player.Functions.AddItem('weed_zkittlez_seed_f', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['weed_zkittlez_seed_f'], "add")
        elseif chance == 92 then
            Player.Functions.AddItem('electronicscrap', 1, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['electronicscrap'], "add")
        elseif chance == 94 then
            Player.Functions.AddItem('rolls', 3, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rolls'], "add")
        elseif chance == 96 then
            Player.Functions.AddItem('rolls', 4, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rolls'], "add")
        elseif chance == 98 then
            Player.Functions.AddItem('rolls', 5, false, info)
            
        else 
          --  Player.Functions.AddMoney('cash', price, "sold-cornerdrugs")
            Player.Functions.AddItem('rolls', price, false, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rolls'], "add")
        end
    else
        TriggerClientEvent('qb-drugs:client:cornerselling', src)
    end
end)

RegisterNetEvent('qb-drugs:server:robCornerDrugs', function(drugType, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local availableDrugs = getAvailableDrugs(src)

    if not availableDrugs or not Player then return end

    local item = availableDrugs[drugType].item

    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
    TriggerClientEvent('qb-drugs:client:refreshAvailableDrugs', src, getAvailableDrugs(src))
end)
