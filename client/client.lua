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
            TriggerServerEvent('napad_sv:kasetka')
        end, onCancel = function()
            ESX.ShowNotification('Przerwałeś okradanie kasetki')
        end
        })
    end
end)
