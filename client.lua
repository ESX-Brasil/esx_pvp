Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        if pvpEnabled then
            for i = 0,32 do
                if NetworkIsPlayerActive(i) then
                    SetCanAttackFriendly(GetPlayerPed(i), true, true)
                    NetworkSetFriendlyFireOption(true)
                end
            end
        end
    end
end) 

RegisterNetEvent("es:enablePvp")
AddEventHandler("es:enablePvp", function()
    pvpEnabled = true
end)
