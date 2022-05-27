-- XD_Doorlock | Creator: LielXD --

Config = {}

Config.ToggleKey = 'E'									-- The key to toggle doors | can be the name of the key or the index of the control
-- You can find all Keys Here
-- https://docs.fivem.net/docs/game-references/controls/

Config.Translate = {									-- Translate Section | change here to your custom messages
	['opened_door'] = 'You opened a door',
	['closed_door'] = 'You closed a door',
	['employes_only'] = 'Employes only!'
}

Config.ESX_Notify = true								-- If you want to use ESX notify | current true | if false add at bottom whatever notify you have
Config.Custom_Notify = function(Text, Time, Type)
	
end

Config.Doors = {
	--[[
	{
		Doors = {										-- Doors section | if you have more than one door to lock add it here
			{
				Model = 'v_ilev_ph_gendoor004',			-- Door model can be the model name or model hash = 'v_ilev_ph_gendoor004' or 1557126584
				Coords = vector3(449.6, -986.4, 30.6)	-- Door Coords | you can use the script pun_idgun to check door model and coords see https://github.com/Puntherline/pun_idgun
			}
		},
		Locked = true,									-- The door should be locked when script starts?
		Distance = 2,									-- Distance between player and doors to open them should be more than 0

		Jobs = 'police'
		
		--------------------------------
		-- Jobs Section
		-- -------------
		-- if false then everyone can toggle the door.
		-- if true then no one can toggle the door.
		-- if specific job then only the job can toggle the door.
		-- you can specify more than one job for example: Jobs = {'police', 'ambulance', 'mechanic'}
		--------------------------------
	},
	]]--
    --[[
        Police
    ]]--
    -- Entrance
    {
        Doors = {
            {
                Model = -1215222675,
                Coords = vector3(434.7, -980.6, 30.8)
            },
            {
                Model = 320433149,
                Coords = vector3(434.7, -983.2, 30.8)
            }
        },
        Locked = false,
        Distance = 4,

        Jobs = 'police'
    },
    -- Armory
    {
        Doors = {
            {
                Model = 1557126584,
                Coords = vector3(449.6, -986.4, 30.6)
            }
        },
        Locked = true,
        Distance = 2,

        Jobs = 'police'
    },
    -- Rooftop
    {
        Doors = {
            {
                Model = -340230128,
                Coords = vector3(464.3, -984.6, 43.8)
            }
        },
        Locked = true,
        Distance = 2,

        Jobs = 'police'
    },
    -- Captain Office
    {
        Doors = {
            {
                Model = -1320876379,
                Coords = vector3(447.2, -980.6, 30.6)
            }
        },
        Locked = true,
        Distance = 2,

        Jobs = 'police'
    },
    -- To downstairs (double doors to cells)
    {
        Doors = {
            {
                Model = 185711165,
                Coords = vector3(443.9, -989.0, 30.6)
            },
            {
                Model = 185711165,
                Coords = vector3(446.0079, -989.4454, 30.8393)
            }
        },
        Locked = true,
        Distance = 4,

        Jobs = 'police'
    },
    -- Main Cells
    {
        Doors = {
            {
                Model = 631614199,
                Coords = vector3(463.8, -992.6, 24.9)
            }
        },
        Locked = true,
        Distance = 2,

        Jobs = 'police'
    },
    -- Cell 1
    {
        Doors = {
            {
                Model = 631614199,
                Coords = vector3(462.3, -993.6, 24.9)
            }
        },
        Locked = true,
        Distance = 1,

        Jobs = 'police'
    },
    -- Cell 2
    {
        Doors = {
            {
                Model = 631614199,
                Coords = vector3(462.3, -998.1, 24.9)
            }
        },
        Locked = true,
        Distance = 1,

        Jobs = 'police'
    },
    -- Cell 3
    {
        Doors = {
            {
                Model = 631614199,
                Coords = vector3(461.8065, -1001.302, 25.06443)
            }
        },
        Locked = true,
        Distance = 1,

        Jobs = 'police'
    },
    -- Back entrance cells
    {
        Doors = {
            {
                Model = -1033001619,
                Coords = vector3(463.4782, -1003.538, 25.00599)
            }
        },
        Locked = true,
        Distance = 2,

        Jobs = 'police'
    },
    -- Back Entrance
    {
        Doors = {
            {
                Model = -2023754432,
                Coords = vector3(467.3, -1014.4, 26.5)
            },
            {
                Model = -2023754432,
                Coords = vector3(469.9, -1014.4, 26.5)
            }
        },
        Locked = true,
        Distance = 4,

        Jobs = 'police'
    },
    -- Back Gate
    {
        Doors = {
            {
                Model = -1603817716,
                Coords = vector3(488.8, -1017.2, 27.1)
            }
        },
        Locked = true,
        Distance = 14,

        Jobs = 'police'
    },

    --[[
        Closed No Way to Enter
    ]]--
    -- Benny's Gate
    {
        Doors = {
            {
                Model = -427498890,
                Coords = vector3(-205.6828, -1310.683, 30.29572)
            }
        },
        Locked = true,
        Distance = 1,

        Jobs = true
    },
    -- Prison Door
    {
        Doors = {
            {
                Model = -1033001619,
                Coords = vector3(1845.198, 2585.24, 46.09929)
            }
        },
        Locked = true,
        Distance = 1,

        Jobs = true
    }
}
