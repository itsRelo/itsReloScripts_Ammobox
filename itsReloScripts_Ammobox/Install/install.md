------------------------------------------------------------
-----------------------itsReloScripts-----------------------
------------------------------------------------------------
Hallo! Ein einfaches Skript für Ox Munitionskisten!
Hi! A simple script for ox for ammunition boxes!
------------------------------------------------------------

1. Installieren diese Abhängigkeiten:
1. Install these dependecies:
    ox_inventory - https://github.com/communityox/ox_inventory/releases
    ox_target/qtarget/qb-target (Optional, depends on config) | (Optional, abhängig von der Konfiguration)
	
Bitte überprüfen Sie, ob Sie über die neueste Version verfügen.
Please check that you have the latest version.
------------------------------------------------------------
2. Ensure [itsReloScripts_ammo] Ressource in deiner server.cfg
2. Ensure [itsReloScripts_ammo] the resource in server.cfg

------------------------------------------------------------
3. Kopieren Sie die Bilder aus dem Ordner „images for ox_inventory“ und fügen Sie sie in ox_inventory/web/build/images ein.
3. Copy and paste images from "images" into ox_inventory/web/build/images

---------------ForOxInventory---------------------------------------------

4. Fügen Sie dies zu ox_inventory/data/items.lua hinzu:
4. Add this to ox_inventory/data/items.lua:

Install:

-----DE stack = true, <-----Wenn-du-auf-true-hast-dann-Stapeln-sich-die-Boxen-im-Inventar-wenn-nicht-dann-nutzt-jede-box-ein-eigenen-Slot-im-Inventar.

	['ammo9-box'] = {
		label = '9mm Munitionsbox',
		weight = 250,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmo9Box'
		}
	},

	['ammo-riflebox'] = {
		label = 'Gewehr-Munitionsbox',
		weight = 250,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoRifleBox'
		}
	},

	['ammo-rifleboxi'] = {
		label = 'Gewehr-Munitionsbox Typ 2',
		weight = 250,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoRifle2Box'
		}
	},

	['ammo-shotgunbox'] = {
		label = 'Schrot-Munitionsbox',
		weight = 280,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoShotgunBox'
		}
	},


-----EN stack = true,<-----If-you-have-true,-the-boxes-stack-in-the-inventory-if-not,-each-box-uses-its-own-slot-in-the-inventory.
Install:

	['ammo9-box'] = {
		label = '9mm Box',
		weight = 250,
		stack = true,  
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmo9Box'
		}
	},

	['ammo-riflebox'] = {
		label = 'Rifle Ammo Box',
		weight = 250,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoRifleBox'
		}
	},

	['ammo-rifleboxi'] = {
		label = 'Rifle2 Ammo Box',
		weight = 250,
		stack = true,
        consume = 0,
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoRifle2Box'
		}
	},

	['ammo-shotgunbox'] = {
		label = 'Shotgun Ammo Box',
		weight = 280,
		stack = true, 
        consume = 0, 		
		client = {},
		server = {
			export = 'itsReloScripts_Ammobox.useAmmoShotgunBox'
		}
	},

------------------------------------------------------------

    5. Nicht vergessen es in dein Shop.lua einzutragen in dem shop wo du die boxen haben möchtest sprich wo man sich kaufen kann.
	ox_inventory/data/shop.lua:
	
    5. Don't forget to add it to your Shop.lua in the shop where you want the boxes to be, i.e. where they can be purchased.
     ox_inventory/data/shop.lua:
	 
		{ name = 'ammo9-box', price = 200, },
		{ name = 'ammo-riflebox', price = 200, },
		{ name = 'ammo-rifleboxi', price = 200, },
		{ name = 'ammo-shotgunbox', price = 200, },
		
------------------------------------------------------------	

	6. Wie viel Munition du aus einer Packung bekommst oder wie du weitere hinzufügst siehts du und kannst du in der ----server.lua nachlesen / ändern. 
    6. You can see how much ammunition you get from a pack or how to add more in -----server.lua, where you can also read about it and make changes. 
	
------------------------------------------------------------		
    7. Starten Sie Ihren Server und genießen Sie!

    7. Start your server and enjoy!
