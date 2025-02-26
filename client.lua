local QBCore = exports['qb-core']:GetCoreObject()
local onDuty = false

for _, dutyCoords in ipairs(Config.DutyCoords) do
    exports['ox_target']:addBoxZone({
        coords = dutyCoords,
        size = vec3(1, 1, 2),
        rotation = 0,
        debug = false,
        options = {
            {
                event = 'asorey_duty:toggleDuty',
                icon = 'fas fa-sign-in-alt',
                label = 'Entrar/Salir de servicio',
                duty = true,
            }
        }
    })
end

RegisterNetEvent('asorey_duty:toggleDuty', function()
    onDuty = not onDuty
    TriggerServerEvent('asorey_duty:toggleDuty', onDuty)
end)
