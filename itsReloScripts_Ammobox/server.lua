--[[
    itsReloScripts - Standalone Version 1.0
    Benötigt/Needs: ox_inventory
    Fass es nicht an, wenn du nicht weißt, was du tust.
    Don't touch it if you don't know what you're doing.
]]
local ox_inventory = exports.ox_inventory

local function RegisterAmmoBox(exportName, boxItem, ammoItem, amount)
    exports(exportName, function(event, item, inventory, slot, data)

        if event ~= 'usingItem' then
            return
        end

        local src = inventory.id


        local removed = ox_inventory:RemoveItem(src, boxItem, 1, nil, slot)
        if not removed then
            return false
        end


        local added = ox_inventory:AddItem(src, ammoItem, amount)
        if not added then

            ox_inventory:AddItem(src, boxItem, 1, nil, slot)
            return false
        end

        return true
    end)
end
-- Hier kannst du Anpassen wie viel Munition du bekommst und deine Munition boxen erweitern beliebig.
-- Deine Konfiguration:

-- Here you can customize how much ammunition you receive and expand your ammunition boxes as desired.
-- Your configuration:

-- 9mm Box  -> 35x ammo-9
RegisterAmmoBox('useAmmo9Box', 'ammo9-box', 'ammo-9', 35)

-- Rifle Box -> 35x ammo-rifle
RegisterAmmoBox('useAmmoRifleBox', 'ammo-riflebox', 'ammo-rifle', 35)

-- Rifle2 Box -> 35x ammo-rifle2
RegisterAmmoBox('useAmmoRifle2Box', 'ammo-rifleboxi', 'ammo-rifle2', 35)

-- Shotgun Box -> 25x ammo-shotgun
RegisterAmmoBox('useAmmoShotgunBox', 'ammo-shotgunbox', 'ammo-shotgun', 25)

-- Vorlage
---- Schrotflintenkiste -> 25x Munition für Schrotflinte
--RegisterAmmoBox(‘useYOURNAME’, ‘YOURNAMEFORAMMOBOX’, ‘YOURNAMEFORAMMO’, 25) <-- Wie viele kugeln rauskommen soll 
--Nicht vergessen! Erstellen Sie einen neuen Eintrag für ox mit einem Export wie diesem! 
--    [‘ammo-shotgunbox’] = {
--        label = ‘Shotgun Ammo Box’,
--        weight = 280,
--        stack = true,  
--        client = {},
--        server = {
--            export = ‘itsReloScripts_Ammobox.useAmmoShotgunBox’
--        }
--    },

-- Template
---- Shotgun Box -> 25x ammo-shotgun
--RegisterAmmoBox('useYOURNAME', 'YOURNAMEFORAMMOBOX', 'YOURNAMEFORAMMO', 25) <--how many balls should come out?
--Remamber! Create a new item for ox withe export like this! 
--	['ammo-shotgunbox'] = {
--		label = 'Shotgun Ammo Box',
--		weight = 280,
--		stack = true,  
--		client = {},
--		server = {
--			export = 'itsReloScripts_Ammobox.useAmmoShotgunBox'
--		}
--	},

