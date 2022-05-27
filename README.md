**XD_DOORLOCK**<br>
This script is completely **Free**.

![XD_Doorlock](https://user-images.githubusercontent.com/60383662/170691740-bb012e33-fbc9-4449-b02c-992cd56d1dc8.png)

Welcome everybody for my xd_doorlock release so this release is for people who need a nice door lock system and without any big performance taking, this resource taking less than 0.02ms because it's using GTA V door lock system so I hope you enjoy this release!
*********************************************************************
**Features**
* Locking/Unlocking Doors
* Jobs Allowlist
* Everything Sync with the server
* Using GTA V built in System
* Less than 0.02ms
*********************************************************************
**Dependency**
* [es_extended](https://github.com/esx-framework/esx-legacy)
* Any Notify System - make sure to change to your notify in config if you have custom notify
*********************************************************************
**Adding Doors**<br>
```
Config.Doors = {
	{
		Doors = {                                 -- Doors section | if you have more than one door to lock add it here
			{
				Model = 'v_ilev_ph_gendoor004',			  -- Door model can be the model name or model hash = 'v_ilev_ph_gendoor004' or 1557126584
				Coords = vector3(449.6, -986.4, 30.6)	-- Door Coords | you can use the script pun_idgun to check door model and coords see https://github.com/Puntherline/pun_idgun
			}
		},
		Locked = true,                            -- The door should be locked when script starts?
		Distance = 2,                             -- Distance between player and doors to open them should be more than 0

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
}
```
Just copy this example and you can delete the commented lines and replace details with your door details.
*********************************************************************
**Lockpick**<br>
Lockpick doors will be in future updates
*********************************************************************
**Help!**<br>
For any help type in the comments your issue or open issue in github where the download link is
recommended to open issue in github :slight_smile: 
*********************************************************************
**Video**<br>
soon***************************
*********************************************************************
**Download**<br>
[Click Here](https://github.com/LielXD/xd_doorlock) to Download!
*********************************************************************
**My Scripts**<br>
* [xd_locksystem](https://github.com/LielXD/xd_locksystem)
* [xd_doorlock](https://github.com/LielXD/xd_doorlock)
