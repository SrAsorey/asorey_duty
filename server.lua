local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('asorey_duty:toggleDuty')
AddEventHandler('asorey_duty:toggleDuty', function(onDuty)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.SetJobDuty(onDuty)
        TriggerClientEvent('QBCore:Notify', src, onDuty and "Has entrado en servicio" or "Has salido de servicio")
    end
end)
