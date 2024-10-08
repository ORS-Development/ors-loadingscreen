local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("clothing_bag", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('ors-clothingbag:client:openBag', source)
    end
end)

RegisterNetEvent('ors-clothingbag:server:removeBag', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveItem('clothing_bag', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['clothing_bag'], "remove")
end)
