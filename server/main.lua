-- XD_Doorlock | Creator: LielXD --

--[[
    Setting up doors
]]--

local doorState = {}

Citizen.CreateThread(function()
    local doorId = 1
    for k, v in ipairs(Config.Doors) do
        for t, door in ipairs(v.Doors) do
            doorState[doorId] = v.Locked
            doorId = doorId + 1
        end
    end
end)

ESX.RegisterServerCallback('xd_doorlock:getDoorsState', function(source, cb)
    cb(doorState)
end)

RegisterServerEvent('xd_doorlock:changeState')
AddEventHandler('xd_doorlock:changeState', function(doorId, state)
    if type(state) == 'boolean' then
        doorState[doorId] = state
		TriggerClientEvent('xd_doorlock:changeDoorState', -1, doorId, state)
    end
end)