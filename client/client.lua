RegisterNetEvent('napad:kasetka')
AddEventHandler('napad:kasetka', function()
    local skillcheck = lib.skillCheck({'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy'})
    if skillcheck then
        FreezeEntityPosition(PlayerPedId(), true)
        ExecuteCommand('me chowa pieniadze po kieszeniach')
        ESX.Progressbar("Okradasz kasetkę", 45000,{
            FreezePlayer = true, 
            animation ={
                type = "anim",
                dict = "anim@heists@ornate_bank@grab_cash", 
                lib ="grab"
            },
            onFinish = function()
                local coords = GetEntityCoords(GetPlayerPed(-1))
                local ATMRobbery = {
                    code = "10-90",
                    street = exports['esx_dispatch']:GetStreetAndZone(),
                    id = exports['esx_dispatch']:randomId(),
                    priority = 1,
                    title = "Rabunek Sklepu",
                    duration = 5500,
                    blipname = "# Rabunek Sklepu",
                    color = 2,
                    sprite = 304,
                    fadeOut = 30,
                    position = {
                        x = coords.x,
                        y = coords.y,
                        z = coords.z
                    },
                    job = "police"
                }
                TriggerServerEvent("dispatch:svNotify", StoreRobbery)
                TriggerServerEvent('napad_sv:kasetka')
        end, onCancel = function()
            ESX.ShowNotification('Przerwałeś okradanie kasetki')
        end
        })
    end
end)
