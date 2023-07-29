RegisterServerEvent('napad_sv:kasetka')
AddEventHandler('napad_sv:kasetka', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addInventoryItem('money', math.random(100,120))
end)