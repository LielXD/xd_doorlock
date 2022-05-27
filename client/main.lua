-- XD_Doorlock | Creator: LielXD --

--[[
    Setting up doors
]]--

local timeout = false

Citizen.CreateThread(function()
    local doorId = 1
    for k, v in ipairs(Config.Doors) do
        for t, door in ipairs(v.Doors) do
            AddDoorToSystem(doorId, door.Model, door.Coords)
            doorId = doorId + 1
        end
    end
    ESX.TriggerServerCallback('xd_doorlock:getDoorsState', function(doors)
        for doorId, state in ipairs(doors) do
            DoorSystemSetDoorState(doorId, state)
        end
    end)
end)

RegisterCommand('toggleDoor', function()
    if timeout then return end
    
    timeout = true

    local ped = GetPlayerPed(-1)
    local doors = {}
    local doorId = 1

    for k, v in ipairs(Config.Doors) do
        for t, door in ipairs(v.Doors) do
            local distance = #(GetEntityCoords(ped) - door.Coords)

            if distance <= v.Distance then
                if v.Jobs ~= false then
                    local Access = false
        
                    if v.Jobs ~= true then
                        if v.Jobs[1] then
                            for _, job in ipairs(v.Jobs) do
                                if ESX.PlayerData.job and ESX.PlayerData.job.name == job then
                                    Access = true
                                    break
                                end
                            end
                        else
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == v.Jobs then
                                Access = true
                            end
                        end
                    end
        
                    if not Access then
                        if v.Jobs ~= true and DoorSystemGetDoorState(doorId) ~= 0 then
							if Config.ESX_Notify then
								exports['esx_notify']:Notify('error', 2000, Config.Translate['employes_only'])
							else
								Config.Custom_Notify(Config.Translate['employes_only'], 2000, 'error')
							end
                        end
                        Wait(1000)
                        timeout = false
                        return
                    end
                end

                local state = DoorSystemGetDoorState(doorId)

                table.insert(doors, {doorId = doorId, state = state})

                ESX.Streaming.RequestAnimDict('anim@mp_player_intmenu@key_fob@', function()
                    if not IsPedInAnyVehicle(ped, true) then
                        TaskPlayAnim(ped, 'anim@mp_player_intmenu@key_fob@', 'fob_click_fp', 1.0, 1.0, -1, 48, 1, false, false, false)
                    end
                end)
            end

            doorId = doorId + 1
        end
    end

    if doors[1] then
        changeState(doors)
    end

    Wait(1000)
    timeout = false
end, true)

RegisterKeyMapping('toggleDoor', 'Unlock/Lock Doors', 'keyboard', Config.ToggleKey)

function changeState(doors)
    local LockType = doors[1].state
    if LockType == 0 then
        LockType = true
		if Config.ESX_Notify then
			exports['esx_notify']:Notify('info', 2000, Config.Translate['closed_door'])
		else
			Config.Custom_Notify(Config.Translate['closed_door'], 2000, 'info')
		end
    else
        LockType = false
		if Config.ESX_Notify then
			exports['esx_notify']:Notify('info', 2000, Config.Translate['opened_door'])
		else
			Config.Custom_Notify(Config.Translate['opened_door'], 2000, 'info')
		end
    end
    for k, v in ipairs(doors) do
        TriggerServerEvent('xd_doorlock:changeState', v.doorId, LockType)
    end
end

RegisterNetEvent('xd_doorlock:changeDoorState')
AddEventHandler('xd_doorlock:changeDoorState', function(doorId, state)
	DoorSystemSetDoorState(doorId, state)
end)