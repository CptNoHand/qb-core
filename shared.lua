QBShared = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do NumberCharset[#NumberCharset+1] = string.char(i) end
for i = 65,  90 do StringCharset[#StringCharset+1] = string.char(i) end
for i = 97, 122 do StringCharset[#StringCharset+1] = string.char(i) end

QBShared.RandomStr = function(length)
    if length <= 0 then return '' end
    return QBShared.RandomStr(length - 1) .. StringCharset[math.random(1, #StringCharset)]
end

QBShared.RandomInt = function(length)
    if length <= 0 then return '' end
    return QBShared.RandomInt(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
end

QBShared.SplitStr = function(str, delimiter)
    local result = { }
    local from = 1
    local delim_from, delim_to = string.find(str, delimiter, from)
    while delim_from do
		result[#result+1] = string.sub(str, from, delim_from - 1)
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delimiter, from)
    end
	result[#result+1] = string.sub(str, from)
    return result
end

QBShared.Trim = function(value)
	if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end

QBShared.Round = function(value, numDecimalPlaces)
    if not numDecimalPlaces then return math.floor(value + 0.5) end
    local power = 10 ^ numDecimalPlaces
    return math.floor((value * power) + 0.5) / (power)
end


QBShared.StarterItems = {
    ['phone'] = { amount = 1, item = 'phone' },
    ['id_card'] = { amount = 1, item = 'id_card' },
    ['driver_license'] = { amount = 1, item = 'driver_license' },
}

QBShared.Items = {
	-- WEAPONS
	-- Melee
	['weapon_unarmed'] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	['weapon_dagger'] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	['weapon_bat'] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for hitting a ball in sports (or other things)'},
	['weapon_bottle'] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broken bottle'},
	['weapon_crowbar'] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An iron bar with a flattened end, used as a lever'},
	['weapon_flashlight']			 = {['name'] = 'weapon_flashlight',				['label'] = 'Flashlight',				['weight'] = 1000,		['type'] = 'weapon',	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png',	['unique'] = true,		['useable'] = false,	['description'] = 'A battery-operated portable light'},
	['weapon_golfclub'] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A club used to hit the ball in golf'},
	['weapon_hammer'] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	['weapon_hatchet'] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small axe with a short handle for use in one hand'},
	['weapon_knuckle'] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	['weapon_knife'] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	['weapon_machete'] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broad, heavy knife used as a weapon'},
	['weapon_switchblade'] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	['weapon_nightstick'] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A police officer\'s club or billy'},
	['weapon_wrench'] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	['weapon_battleaxe'] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	['weapon_poolcue'] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A stick used to strike a ball, usually the cue ball (or other things)'},
	['weapon_briefcase'] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase for storing important documents'},
	['weapon_briefcase_02'] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Suitcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'Wonderfull for nice vacation to Liberty City'},
	['weapon_garbagebag'] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A garbage bag'},
	['weapon_handcuffs'] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	['weapon_bread'] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 		        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Bread...?'},
	['weapon_stone_hatchet'] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Stone Hatchet', 	        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stone_hatchet.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Stone ax'},

	-- Handguns
	['weapon_pistol'] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand'},
	['weapon_pistol_mk2'] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol_mk2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	['weapon_combatpistol'] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version small firearm designed to be held in one hand'},
	['weapon_appistol'] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	['weapon_stungun'] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser', 					['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stungun.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	['weapon_pistol50'] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50', 			    ['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	['weapon_snspistol'] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A very small firearm designed to be easily concealed'},
	['weapon_heavypistol'] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	['weapon_vintagepistol'] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An antique firearm designed to be held in one hand'},
	['weapon_flaregun'] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handgun for firing signal rockets'},
	['weapon_marksmanpistol'] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	['weapon_revolver'] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	['weapon_revolver_mk2'] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver_mk2.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'da Violence'},
	['weapon_doubleaction'] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_doubleaction.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'Double Action Revolver'},
	['weapon_snspistol_mk2'] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'SNS Pistol Mk II', 		['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol_mk2.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'SNS Pistol MK2'},
	['weapon_raypistol']			 = {['name'] = 'weapon_raypistol',				['label'] = 'Up-n-Atomizer',			['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raypistol'},
	['weapon_ceramicpistol']		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Ceramic Pistol',		    ['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Ceramicpistol'},
	['weapon_navyrevolver']        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Navy Revolver',		    ['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Navyrevolver'},
	['weapon_gadgetpistol'] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Perico Pistol',		    ['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Gadgetpistol'},

	-- Submachine Guns
	['weapon_microsmg'] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg'] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg_mk2'] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'SMG Mk II', 				['weight'] = 1500,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'SMG MK2'},
	['weapon_assaultsmg'] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a handheld lightweight machine gun'},
	['weapon_combatpdw'] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of a handheld lightweight machine gun'},
	['weapon_machinepistol'] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	['weapon_minismg'] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A mini handheld lightweight machine gun'},
	['weapon_raycarbine']	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Unholy Hellbringer',		['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raycarbine'},

	-- Shotguns
	['weapon_pumpshotgun'] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	['weapon_sawnoffshotgun'] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	['weapon_assaultshotgun'] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	['weapon_bullpupshotgun'] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	['weapon_musket'] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	['weapon_heavyshotgun'] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	['weapon_dbshotgun'] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	['weapon_autoshotgun'] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun capable of rapid continous fire'},
	['weapon_pumpshotgun_mk2']		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun Mk II', 		['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Pumpshotgun MK2'},
	['weapon_combatshotgun']		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Combat Shotgun',		    ['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_combatshotgun.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatshotgun'},

	-- Assault Rifles
	['weapon_assaultrifle'] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_assaultrifle_mk2'] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'Assault Rifle Mk II', 		['weight'] = 2000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Assault Rifle MK2'},
	['weapon_carbinerifle'] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A lightweight automatic rifle'},
	['weapon_carbinerifle_mk2'] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'Carbine Rifle Mk II', 		['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Carbine Rifle MK2'},
	['weapon_advancedrifle'] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_specialcarbine'] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	['weapon_bullpuprifle'] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact automatic assault rifle'},
	['weapon_compactrifle'] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact version of an assault rifle'},
	['weapon_specialcarbine_mk2']	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Special Carbine Mk II',    ['weight'] = 2000, 	    ['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine_mk2.png', ['unique'] = true, ['useable'] = true, 	['description'] = 'Weapon Wpecialcarbine MK2'},
	['weapon_bullpuprifle_mk2']		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bullpup Rifle Mk II',		['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Bull Puprifle MK2'},
	['weapon_militaryrifle']		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Military Rifle',		    ['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_militaryrifle.png', ['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Militaryrifle'},

	-- Light Machine Guns
	['weapon_mg'] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_combatmg'] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_gusenberg'] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	['weapon_combatmg_mk2']	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Combat MG Mk II',		    ['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg_mk2.png', 	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatmg MK2'},

	-- Sniper Rifles
	['weapon_sniperrifle'] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A high-precision, long-range rifle'},
	['weapon_heavysniper'] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'An upgraded high-precision, long-range rifle'},
	['weapon_marksmanrifle'] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A very accurate single-fire rifle'},
	['weapon_remotesniper'] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable high-precision, long-range rifle'},
	['weapon_heavysniper_mk2']		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Heavy Sniper Mk II',	    ['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper_mk2.png', ['unique'] = true, 	['useable'] = true, 	['description'] = 'Weapon Heavysniper MK2'},
	['weapon_marksmanrifle_mk2']	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Marksman Rifle Mk II',	    ['weight'] = 2000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle_mk2.png',	['unique'] = true, 	['useable'] = true, 	['description'] = 'Weapon Marksmanrifle MK2'},

	-- Heavy Weapons
	['weapon_rpg'] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A rocket-propelled grenade launcher'},
	['weapon_grenadelauncher'] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	['weapon_grenadelauncher_smoke'] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	['weapon_minigun'] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	['weapon_firework'] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	['weapon_railgun'] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	['weapon_hominglauncher'] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	['weapon_compactlauncher'] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact grenade launcher'},
	['weapon_rayminigun']			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Widowmaker',		        ['weight'] = 2500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Rayminigun'},

	-- Throwables
	['weapon_grenade'] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld throwable bomb'},
	['weapon_bzgas'] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A cannister of gas that causes extreme pain'},
	['weapon_molotov'] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	['weapon_stickybomb'] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	['weapon_proxmine'] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	['weapon_snowball'] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	['weapon_pipebomb'] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	['weapon_ball'] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	['weapon_smokegrenade'] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge that can be remotely detonated'},
	['weapon_flare'] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

	-- Miscellaneous
	['weapon_petrolcan'] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A robust liquid container made from pressed steel'},
	['weapon_fireextinguisher'] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	['weapon_hazardcan']			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Hazardous Jerry Can',		['weight'] = 1500, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Hazardcan'},

	-- PISTOL ATTACHMENTS
	['pistol_defaultclip'] 			 = {['name'] = 'pistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Default Clip'},
	['pistol_extendedclip'] 		 = {['name'] = 'pistol_extendedclip', 			['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Extended Clip'},
	['pistol_flashlight'] 			 = {['name'] = 'pistol_flashlight', 			['label'] = 'Pistol Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Flashlight Attachment'},
	['pistol_suppressor'] 			 = {['name'] = 'pistol_suppressor', 			['label'] = 'Pistol Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Suppressor Attachment'},
	['pistol_luxuryfinish'] 	     = {['name'] = 'pistol_luxuryfinish', 			['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Luxury Finish'},
	['combatpistol_defaultclip'] 	 = {['name'] = 'combatpistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Default Clip'},
	['combatpistol_extendedclip']    = {['name'] = 'combatpistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Extended Clip'},
	['combatpistol_luxuryfinish'] 	 = {['name'] = 'combatpistol_luxuryfinish', 	['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Luxury Finish'},
	['appistol_defaultclip'] 		 = {['name'] = 'appistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Default Clip'},
	['appistol_extendedclip'] 		 = {['name'] = 'appistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Extended Clip'},
	['appistol_luxuryfinish'] 	     = {['name'] = 'appistol_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Luxury Finish'},
	['pistol50_defaultclip'] 		 = {['name'] = 'pistol50_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Default Clip'},
	['pistol50_extendedclip'] 		 = {['name'] = 'pistol50_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Extended Clip'},
	['pistol50_luxuryfinish'] 	     = {['name'] = 'pistol50_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Luxury Finish'},
	['revolver_defaultclip'] 		 = {['name'] = 'revolver_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Default Clip'},
	['revolver_vipvariant'] 		 = {['name'] = 'revolver_vipvariant', 		    ['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['revolver_bodyguardvariant'] 	 = {['name'] = 'revolver_bodyguardvariant', 	['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['snspistol_defaultclip'] 		 = {['name'] = 'snspistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Default Clip'},
	['snspistol_extendedclip'] 		 = {['name'] = 'snspistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Extended Clip'},
	['snspistol_grip'] 	             = {['name'] = 'snspistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Grip Attachment'},
	['heavypistol_defaultclip'] 	 = {['name'] = 'heavypistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Default Clip'},
	['heavypistol_extendedclip'] 	 = {['name'] = 'heavypistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Extended Clip'},
	['heavypistol_grip'] 	         = {['name'] = 'heavypistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Grip Attachment'},
	['vintagepistol_defaultclip'] 	 = {['name'] = 'vintagepistol_defaultclip', 	['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},
	['vintagepistol_extendedclip'] 	 = {['name'] = 'vintagepistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},

	-- SMG ATTACHMENTS
	['microsmg_defaultclip'] 	     = {['name'] = 'microsmg_defaultclip', 			['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Default Clip'},
	['microsmg_extendedclip'] 		 = {['name'] = 'microsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Extended Clip'},
	['microsmg_scope'] 			     = {['name'] = 'microsmg_scope', 			    ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Scope Attachment'},
	['microsmg_luxuryfinish'] 	     = {['name'] = 'microsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Luxury Finish'},
	['smg_defaultclip'] 	         = {['name'] = 'smg_defaultclip', 			    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Default Clip'},
	['smg_extendedclip'] 	         = {['name'] = 'smg_extendedclip', 		        ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Extended Clip'},
	['smg_drum']                     = {['name'] = 'smg_drum', 	                    ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Drum'},
	['smg_scope'] 	                 = {['name'] = 'smg_scope', 	                ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Scope Attachment'},
	['smg_luxuryfinish'] 		     = {['name'] = 'smg_luxuryfinish', 			    ['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Luxury Finish'},
	['assaultsmg_defaultclip'] 		 = {['name'] = 'assaultsmg_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Default Clip'},
	['assaultsmg_extendedclip'] 	 = {['name'] = 'assaultsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Extended Clip'},
	['assaultsmg_luxuryfinish']      = {['name'] = 'assaultsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Luxury Finish'},
	['minismg_defaultclip'] 		 = {['name'] = 'minismg_defaultclip', 		    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Default Clip'},
	['minismg_extendedclip'] 	     = {['name'] = 'minismg_extendedclip', 		    ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Extended Clip'},
	['machinepistol_defaultclip']    = {['name'] = 'machinepistol_defaultclip', 	['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Default Clip'},
	['machinepistol_extendedclip']   = {['name'] = 'machinepistol_extendedclip', 	['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Extended Clip'},
	['machinepistol_drum'] 	         = {['name'] = 'machinepistol_drum', 	        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Drum'},
	['combatpdw_defaultclip'] 		 = {['name'] = 'combatpdw_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Default Clip'},
	['combatpdw_extendedclip'] 		 = {['name'] = 'combatpdw_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Extended Clip'},
	['combatpdw_drum'] 	             = {['name'] = 'combatpdw_drum', 		        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Drum'},
	['combatpdw_grip'] 	             = {['name'] = 'combatpdw_grip', 				['label'] = 'SMG Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Grip Attachment'},
	['combatpdw_scope'] 	         = {['name'] = 'combatpdw_scope', 				['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Scope Attachment'},

	-- SHOTGUN ATTACHMENTS
	['shotgun_suppressor'] 	         = {['name'] = 'shotgun_suppressor', 			['label'] = 'Shotgun Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shotgun Suppressor Attachment'},
	['pumpshotgun_luxuryfinish'] 	 = {['name'] = 'pumpshotgun_luxuryfinish', 		['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump Shotgun Luxury Finish'},
	['sawnoffshotgun_luxuryfinish']  = {['name'] = 'sawnoffshotgun_luxuryfinish', 	['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sawn Off Shotgun Luxury Finish'},
	['assaultshotgun_defaultclip'] 	 = {['name'] = 'assaultshotgun_defaultclip', 	['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Default Clip'},
	['assaultshotgun_extendedclip']  = {['name'] = 'assaultshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Extended Clip'},
	['heavyshotgun_defaultclip'] 	 = {['name'] = 'heavyshotgun_defaultclip', 		['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Default Clip'},
	['heavyshotgun_extendedclip']    = {['name'] = 'heavyshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Extended Clip'},
	['heavyshotgun_drum'] 	         = {['name'] = 'heavyshotgun_drum', 	        ['label'] = 'Shotgun Drum', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Drum'},

	-- RIFLE ATTACHMENTS
	['assaultrifle_defaultclip'] 	 = {['name'] = 'assaultrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Default Clip'},
	['assaultrifle_extendedclip']    = {['name'] = 'assaultrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Extended Clip'},
	['assaultrifle_drum'] 			 = {['name'] = 'assaultrifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Drum'},
	['rifle_flashlight'] 	         = {['name'] = 'rifle_flashlight', 		        ['label'] = 'Rifle Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Flashlight Attachment'},
	['rifle_grip'] 	                 = {['name'] = 'rifle_grip', 			        ['label'] = 'Rifle Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Grip Attachment'},
	['rifle_suppressor'] 	         = {['name'] = 'rifle_suppressor', 		        ['label'] = 'Rifle Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Suppressor Attachment'},
	['assaultrifle_luxuryfinish'] 	 = {['name'] = 'assaultrifle_luxuryfinish',     ['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Luxury Finish'},
	['carbinerifle_defaultclip']     = {['name'] = 'carbinerifle_defaultclip', 	    ['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Default Clip'},
	['carbinerifle_extendedclip'] 	 = {['name'] = 'carbinerifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Extended Clip'},
	['carbinerifle_drum'] 		     = {['name'] = 'carbinerifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Drum'},
	['carbinerifle_scope'] 		     = {['name'] = 'carbinerifle_scope', 		    ['label'] = 'Rifle Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Scope'},
	['carbinerifle_luxuryfinish'] 	 = {['name'] = 'carbinerifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Luxury Finish'},
	['advancedrifle_defaultclip']    = {['name'] = 'advancedrifle_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Default Clip'},
	['advancedrifle_extendedclip'] 	 = {['name'] = 'advancedrifle_extendedclip',    ['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Extended Clip'},
	['advancedrifle_luxuryfinish'] 	 = {['name'] = 'advancedrifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Luxury Finish'},
	['specialcarbine_defaultclip']   = {['name'] = 'specialcarbine_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Default Clip'},
	['specialcarbine_extendedclip']  = {['name'] = 'specialcarbine_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Extended Clip'},
	['specialcarbine_drum'] 	     = {['name'] = 'specialcarbine_drum', 	        ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Drum'},
	['specialcarbine_luxuryfinish']  = {['name'] = 'specialcarbine_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Luxury Finish'},
	['bullpuprifle_defaultclip']     = {['name'] = 'bullpuprifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Default Clip'},
	['bullpuprifle_extendedclip'] 	 = {['name'] = 'bullpuprifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Extended Clip'},
	['bullpuprifle_luxuryfinish'] 	 = {['name'] = 'bullpuprifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Luxury Finish'},
	['compactrifle_defaultclip'] 	 = {['name'] = 'compactrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Default Clip'},
	['compactrifle_extendedclip'] 	 = {['name'] = 'compactrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Extended Clip'},
	['compactrifle_drum'] 	         = {['name'] = 'compactrifle_drum', 		    ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Drum'},
	['gusenberg_defaultclip'] 	     = {['name'] = 'gusenberg_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Default Clip'},
	['gusenberg_extendedclip'] 	     = {['name'] = 'gusenberg_extendedclip', 		['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Extended Clip'},

	-- SNIPER ATTACHMENTS
	['sniperrifle_defaultclip'] 	 = {['name'] = 'sniperrifle_defaultclip', 		['label'] = 'Sniper Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Default Clip'},
	['sniper_scope'] 	             = {['name'] = 'sniper_scope', 		            ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Scope Attachment'},
	['snipermax_scope']              = {['name'] = 'snipermax_scope', 	            ['label'] = 'Sniper Max Scope', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Max Scope Attachment'},
	['sniper_grip'] 	             = {['name'] = 'sniper_grip', 	                ['label'] = 'Sniper Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Grip Attachment'},
	['heavysniper_defaultclip']      = {['name'] = 'heavysniper_defaultclip', 	    ['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Sniper Default Clip'},
	['marksmanrifle_defaultclip'] 	 = {['name'] = 'marksmanrifle_defaultclip', 	['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Default Clip'},
	['marksmanrifle_extendedclip']   = {['name'] = 'marksmanrifle_extendedclip', 	['label'] = 'Sniper EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Extended Clip'},
	['marksmanrifle_scope'] 	     = {['name'] = 'marksmanrifle_scope', 	        ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Scope Attachment'},
	['marksmanrifle_luxuryfinish'] 	 = {['name'] = 'marksmanrifle_luxuryfinish', 	['label'] = 'Sniper Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Luxury Finish'},

	-- Weapon Tints
	['weapontint_black']             = {['name'] = 'weapontint_black', 	            ['label'] = 'Default Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_black.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Default/Black Weapon Tint'},
	['weapontint_green'] 	         = {['name'] = 'weapontint_green', 	            ['label'] = 'Green Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_green.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Green Weapon Tint'},
	['weapontint_gold']      		 = {['name'] = 'weapontint_gold', 	    		['label'] = 'Gold Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_gold.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gold Weapon Tint'},
	['weapontint_pink'] 	 		 = {['name'] = 'weapontint_pink', 				['label'] = 'Pink Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_pink.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pink Weapon Tint'},
	['weapontint_army']   			 = {['name'] = 'weapontint_army', 				['label'] = 'Army Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_army.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Army Weapon Tint'},
	['weapontint_lspd'] 	     	 = {['name'] = 'weapontint_lspd', 	        	['label'] = 'LSPD Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_lspd.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'LSPD Weapon Tint'},
	['weapontint_orange'] 	 		 = {['name'] = 'weapontint_orange', 			['label'] = 'Orange Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_orange.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Orange Weapon Tint'},
	['weapontint_plat'] 	 		 = {['name'] = 'weapontint_plat', 				['label'] = 'Platinum Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_plat.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Platinum Weapon Tint'},

	-- ITEMS

	-- Ammo ITEMS
	['pistol_ammo'] 				 = {['name'] = 'pistol_ammo', 			  	  	['label'] = 'Pistol ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pistol_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Pistols'},
	['rifle_ammo'] 				 	 = {['name'] = 'rifle_ammo', 			  	  	['label'] = 'Rifle ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Rifles'},
	['smg_ammo'] 				 	 = {['name'] = 'smg_ammo', 			  	  		['label'] = 'SMG ammo', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'smg_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sub Machine Guns'},
	['shotgun_ammo'] 				 = {['name'] = 'shotgun_ammo', 			  	  	['label'] = 'Shotgun ammo', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'shotgun_ammo.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Shotguns'},
	['mg_ammo'] 				 	 = {['name'] = 'mg_ammo', 			  	  		['label'] = 'MG ammo', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mg_ammo.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Machine Guns'},
	['snp_ammo'] 				 	 = {['name'] = 'snp_ammo', 			  	  		['label'] = 'Sniper ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sniper Rifles'},

	-- Card ITEMS
	['id_card'] 					 = {['name'] = 'id_card', 			 	  	  	['label'] = 'ID Card', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'id_card.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A card containing all your information to identify yourself'},
	['driver_license'] 				 = {['name'] = 'driver_license', 			  	['label'] = 'Drivers License', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'driver_license.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Permit to show you can drive a vehicle'},
	['lawyerpass'] 					 = {['name'] = 'lawyerpass', 			 	  	['label'] = 'Lawyer Pass', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lawyerpass.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pass exclusive to lawyers to show they can represent a suspect'},
	['weaponlicense'] 				 = {['name'] = 'weaponlicense',				    ['label'] = 'Weapon License',			['weight'] = 0,			['type'] = 'item',		['image'] = 'weapon_license.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Weapon License'},
	['visa'] 					 	 = {['name'] = 'visa', 			 	  	  		['label'] = 'Visa Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'visacard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Visa can be used via ATM'},
	['mastercard'] 					 = {['name'] = 'mastercard', 					['label'] = 'Master Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'mastercard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'MasterCard can be used via ATM'},
	['security_card_01'] 			 = {['name'] = 'security_card_01', 			  	['label'] = 'Security Card A', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_01.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},
	['security_card_02'] 			 = {['name'] = 'security_card_02', 			  	['label'] = 'Security Card B', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_02.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},

	-- Eat ITEMS
	['tosti'] 						 = {['name'] = 'tosti', 			 	  	  	['label'] = 'Grilled Cheese Sandwich', 	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tosti.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Nice to eat'},
	['twerks_candy'] 				 = {['name'] = 'twerks_candy', 			  	  	['label'] = 'Twerks', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'twerks_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['snikkel_candy'] 				 = {['name'] = 'snikkel_candy', 			  	['label'] = 'Snikkel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'snikkel_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['sandwich'] 				 	 = {['name'] = 'sandwich', 			  	  		['label'] = 'Sandwich', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sandwich.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice bread for your stomach'},

	-- Drink ITEMS
	['water_bottle'] 				 = {['name'] = 'water_bottle', 			  	  	['label'] = 'Bottle of Water', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water_bottle.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump 4 Caffeine'},
	['kurkakola'] 				 	 = {['name'] = 'kurkakola', 			  	  	['label'] = 'Cola', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

	-- Alcohol
	['beer'] 				 		 = {['name'] = 'beer', 			  	  			['label'] = 'Beer', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nothing like a good cold beer!'},
	['whiskey'] 				 	 = {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'whiskey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['vodka'] 				 		 = {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['grape'] 					 	 = {['name'] = 'grape', 						['label'] = 'Grape', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Mmmmh yummie, grapes'},
	['wine'] 					 	 = {['name'] = 'wine', 							['label'] = 'Wine', 					['weight'] = 300, 		['type'] = 'item', 		['image'] = 'wine.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some good wine to drink on a fine evening'},
	['grapejuice'] 					 = {['name'] = 'grapejuice', 					['label'] = 'Grape Juice', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grapejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Grape juice is said to be healthy'},

	-- Drugs
	['joint'] 						 = {['name'] = 'joint', 			  	  		['label'] = 'Joint', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'joint.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sidney would be very proud at you'},
	['cokebaggy'] 					 = {['name'] = 'cokebaggy', 			  	  	['label'] = 'Bag of Coke', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'cocaine_baggy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
	['crack_baggy'] 				 = {['name'] = 'crack_baggy', 			  	  	['label'] = 'Bag of Crack', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'crack_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy faster'},
	['xtcbaggy'] 					 = {['name'] = 'xtcbaggy', 			  	  		['label'] = 'Bag of XTC', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'xtc_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Pop those pills baby'},
	['weed_brick'] 		 			 = {['name'] = 'weed_brick', 					['label'] = 'Weed Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weed_brick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1KG Weed Brick to sell to large customers.'},
	['coke_brick'] 		 			 = {['name'] = 'coke_brick', 					['label'] = 'Coke Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'coke_brick.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'},
	['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
	['oxy'] 				 		 = {['name'] = 'oxy',				    		['label'] = 'Prescription Oxy',			['weight'] = 0,			['type'] = 'item',		['image'] = 'oxy.png',					['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Label Has Been Ripped Off'},
	['meth'] 					 	 = {['name'] = 'meth', 							['label'] = 'Meth', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'meth_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A baggie of Meth'},
	['rolling_paper'] 			 	 = {['name'] = 'rolling_paper', 			  	['label'] = 'Rolling Paper', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'rolling_paper.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'weed_white-widow', 'weed_skunk', 'weed_purple-haze', 'weed_og-kush', 'weed_amnesia', 'weed_ak47'}, reward = 'joint', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Rolling joint', ['timeOut'] = 5000,}},   ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'},

	-- Seed And Weed
	['weed_white-widow'] 			 = {['name'] = 'weed_white-widow', 			 	['label'] = 'White Widow 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g White Widow'},
	['weed_skunk'] 				  	 = {['name'] = 'weed_skunk', 			 		['label'] = 'Skunk 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Skunk'},
	['weed_purple-haze'] 			 = {['name'] = 'weed_purple-haze', 			 	['label'] = 'Purple Haze 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Purple Haze'},
	['weed_og-kush'] 				 = {['name'] = 'weed_og-kush', 			 		['label'] = 'OGKush 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g OG Kush'},
	['weed_amnesia'] 				 = {['name'] = 'weed_amnesia', 			 		['label'] = 'Amnesia 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Amnesia'},
	['weed_ak47'] 				     = {['name'] = 'weed_ak47', 			 		['label'] = 'AK47 2g', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g AK47'},
	['weed_white-widow_seed'] 		 = {['name'] = 'weed_white-widow_seed', 		['label'] = 'White Widow Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed seed of White Widow'},
	['weed_skunk_seed'] 			 = {['name'] = 'weed_skunk_seed', 			    ['label'] = 'Skunk Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Skunk'},
	['weed_purple-haze_seed'] 		 = {['name'] = 'weed_purple-haze_seed', 		['label'] = 'Purple Haze Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Purple Haze'},
	['weed_og-kush_seed'] 			 = {['name'] = 'weed_og-kush_seed', 			['label'] = 'OGKush Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of OG Kush'},
	['weed_amnesia_seed'] 			 = {['name'] = 'weed_amnesia_seed', 			['label'] = 'Amnesia Seed', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Amnesia'},
	['weed_ak47_seed'] 				 = {['name'] = 'weed_ak47_seed', 			    ['label'] = 'AK47 Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of AK47'},
	['empty_weed_bag'] 				 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Empty Weed Bag', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_baggy_empty.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A small empty bag'},
	['weed_nutrition'] 				 = {['name'] = 'weed_nutrition', 			    ['label'] = 'Plant Fertilizer', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'weed_nutrition.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Plant nutrition'},

	-- Material
	['plastic'] 					 = {['name'] = 'plastic', 			  	  	  	['label'] = 'Plastic', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'plastic.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'RECYCLE! - Greta Thunberg 2019'},
	['metalscrap'] 					 = {['name'] = 'metalscrap', 			  	  	['label'] = 'Metal Scrap', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'metalscrap.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'You can probably make something nice out of this'},
	['copper'] 					 	 = {['name'] = 'copper', 			  	  		['label'] = 'Copper', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'copper.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminum'] 					 = {['name'] = 'aluminum', 			  	  		['label'] = 'Aluminium', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminum.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminumoxide'] 				 = {['name'] = 'aluminumoxide', 			  	['label'] = 'Aluminium Powder', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminumoxide.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some powder to mix with'},
	['iron'] 				 	     = {['name'] = 'iron', 			  				['label'] = 'Iron', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'iron.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Handy piece of metal that you can probably use for something'},
	['ironoxide'] 				 	 = {['name'] = 'ironoxide', 			  		['label'] = 'Iron Powder', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ironoxide.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = {accept = {'aluminumoxide'}, reward = 'thermite', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Mixing powder..', ['timeOut'] = 10000}},   ['description'] = 'Some powder to mix with.'},
	['steel'] 				 	 	 = {['name'] = 'steel', 			  			['label'] = 'Steel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'steel.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['rubber'] 				 	 	 = {['name'] = 'rubber', 			  			['label'] = 'Rubber', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rubber.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Rubber, I believe you can make your own rubber ducky with it :D'},
	['glass'] 				 	 	 = {['name'] = 'glass', 			  			['label'] = 'Glass', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'glass.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'It is very fragile, watch out'},

	-- Tools
	['lockpick'] 					 = {['name'] = 'lockpick', 			 	  	  	['label'] = 'Lockpick', 				['weight'] = 300, 		['type'] = 'item', 		['image'] = 'lockpick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'screwdriverset'}, reward = 'advancedlockpick', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Crafting lockpick', ['timeOut'] = 7500,}},   ['description'] = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...'},
	['advancedlockpick'] 			 = {['name'] = 'advancedlockpick', 			 	['label'] = 'Advanced Lockpick', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'advancedlockpick.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'},
	['electronickit'] 				 = {['name'] = 'electronickit', 			  	['label'] = 'Electronic Kit', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'electronickit.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'gatecrack'}, reward = 'trojan_usb', anim = nil}, ['description'] = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?'},
	['gatecrack'] 				 	 = {['name'] = 'gatecrack', 			  	  	['label'] = 'Gatecrack', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to tear down some fences'},
	['thermite'] 			 	 	 = {['name'] = 'thermite', 			  			['label'] = 'Thermite', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'thermite.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sometimes you\'d wish for everything to burn'},
	['trojan_usb'] 				 	 = {['name'] = 'trojan_usb', 			  	  	['label'] = 'Trojan USB', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to shut down some systems'},
	['screwdriverset'] 				 = {['name'] = 'screwdriverset', 			    ['label'] = 'Toolkit', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'screwdriverset.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Very useful to screw... screws...'},
	['drill'] 				 		 = {['name'] = 'drill', 			    		['label'] = 'Drill', 					['weight'] = 15000, 	['type'] = 'item', 		['image'] = 'drill.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'The real deal...'},

	-- Vehicle Tools
	['nitrous'] 				 	 = {['name'] = 'nitrous', 			  	  		['label'] = 'Nitrous', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'nitrous.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Speed up, gas pedal! :D'},
	['repairkit'] 					 = {['name'] = 'repairkit', 			 	  	['label'] = 'Repairkit', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'repairkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['advancedrepairkit'] 			 = {['name'] = 'advancedrepairkit', 			['label'] = 'Advanced Repairkit', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'advancedkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['cleaningkit'] 				 = {['name'] = 'cleaningkit', 			 	  	['label'] = 'Cleaning Kit', 			['weight'] = 250, 		['type'] = 'item', 		['image'] = 'cleaningkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A microfiber cloth with some soap will let your car sparkle again!'},
	['tunerlaptop'] 				 = {['name'] = 'tunerlaptop', 			    	['label'] = 'Tunerchip', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tunerchip.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing'},
	['harness'] 				 	 = {['name'] = 'harness', 			  	  		['label'] = 'Race Harness', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'harness.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Racing Harness so no matter what you stay in the car'},
    ['jerry_can'] 			 		 = {['name'] = 'jerry_can', 					['label'] = 'Jerrycan 20L', 			['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'jerry_can.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A can full of Fuel'},

	-- Medication
	['firstaid'] 			 		 = {['name'] = 'firstaid', 						['label'] = 'First Aid', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'firstaid.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can use this First Aid kit to get people back on their feet'},
	['bandage'] 			 		 = {['name'] = 'bandage', 						['label'] = 'Bandage', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'bandage.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bandage works every time'},
	['painkillers'] 			 	 = {['name'] = 'painkillers', 					['label'] = 'Painkillers', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'painkillers.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again'},
	['walkstick'] 				 	 = {['name'] = 'walkstick', 			  	  	['label'] = 'Walking Stick', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'walkstick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Walking stick for ya\'ll grannies out there.. HAHA'},
	
	-- Communication
	['phone'] 			 	 	 	 = {['name'] = 'phone', 			  			['label'] = 'Phone', 					['weight'] = 700, 		['type'] = 'item', 		['image'] = 'phone.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Neat phone ya got there'},
	['radio'] 			 	 		 = {['name'] = 'radio', 			  			['label'] = 'Radio', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'radio.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can communicate with this through a signal'},
	['iphone'] 				 	 	 = {['name'] = 'iphone', 			  	  		['label'] = 'iPhone', 				    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'iphone.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['samsungphone'] 				 = {['name'] = 'samsungphone', 			  	  	['label'] = 'Samsung S10', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'samsungphone.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['laptop'] 				 		 = {['name'] = 'laptop', 			  	  		['label'] = 'Laptop', 					['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'laptop.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive laptop'},
	['tablet'] 				 		 = {['name'] = 'tablet', 			  	  		['label'] = 'Tablet', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tablet.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive tablet'},
	['fitbit'] 			 	 	 	 = {['name'] = 'fitbit', 			  			['label'] = 'Fitbit', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fitbit.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I like fitbit'},
    ['radioscanner'] 			 	 = {['name'] = 'radioscanner', 			  		['label'] = 'Radio Scanner', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'radioscanner.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'With this you can get some police alerts. Not 100% effective however'},
	['pinger'] 			 			 = {['name'] = 'pinger', 						['label'] = 'Pinger', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pinger.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With a pinger and your phone you can send out your location'},
    ['cryptostick'] 			 	 = {['name'] = 'cryptostick', 			  		['label'] = 'Crypto Stick', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cryptostick.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Why would someone ever buy money that doesn\'t exist.. How many would it contain..?'},

	-- Theft and Jewelry
	['rolex'] 				 	 	 = {['name'] = 'rolex', 			  	  		['label'] = 'Golden Watch', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'rolex.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden watch seems like the jackpot to me!'},
	['diamond_ring'] 				 = {['name'] = 'diamond_ring', 			  	  	['label'] = 'Diamond Ring', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'diamond_ring.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A diamond ring seems like the jackpot to me!'},
	['goldchain'] 				 	 = {['name'] = 'goldchain', 			  	  	['label'] = 'Golden Chain', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'goldchain.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden chain seems like the jackpot to me!'},
	['10kgoldchain'] 				 = {['name'] = '10kgoldchain', 			  	  	['label'] = '10k Gold Chain', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = '10kgoldchain.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '10 carat golden chain'},
	['goldbar'] 			 	 	 = {['name'] = 'goldbar', 			  			['label'] = 'Gold Bar', 				['weight'] = 7000, 	    ['type'] = 'item', 		['image'] = 'goldbar.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Looks pretty expensive to me'},

	-- Cops Tools
	['armor'] 		 				 = {['name'] = 'armor', 						['label'] = 'Armor', 					['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['heavyarmor'] 		 			 = {['name'] = 'heavyarmor', 					['label'] = 'Heavy Armor', 				['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['handcuffs'] 				 	 = {['name'] = 'handcuffs', 			    	['label'] = 'Handcuffs', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'handcuffs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['police_stormram'] 			 = {['name'] = 'police_stormram', 			  	['label'] = 'Stormram', 				['weight'] = 18000, 	['type'] = 'item', 		['image'] = 'police_stormram.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice tool to break into doors'},
	['empty_evidence_bag'] 			 = {['name'] = 'empty_evidence_bag', 			['label'] = 'Empty Evidence Bag', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Used a lot to keep DNA from blood, bullet shells and more'},
	['filled_evidence_bag'] 		 = {['name'] = 'filled_evidence_bag', 			['label'] = 'Evidence Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},

	-- Firework Tools
	['firework1'] 				 	 = {['name'] = 'firework1', 			  	  	['label'] = '2Brothers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework2'] 				 	 = {['name'] = 'firework2', 			  	  	['label'] = 'Poppelers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework3'] 				 	 = {['name'] = 'firework3', 			  	  	['label'] = 'WipeOut', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework3.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework4'] 				 	 = {['name'] = 'firework4', 			  	  	['label'] = 'Weeping Willow', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework4.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},

	-- Sea Tools
    ['dendrogyra_coral'] 			 = {['name'] = 'dendrogyra_coral', 			  	['label'] = 'Dendrogyra', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dendrogyra_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as pillar coral'},
    ['antipatharia_coral'] 			 = {['name'] = 'antipatharia_coral', 			['label'] = 'Antipatharia', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'antipatharia_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as black corals or thorn corals'},
	['diving_gear'] 			     = {['name'] = 'diving_gear', 					['label'] = 'Diving Gear', 				['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An oxygen tank and a rebreather'},

	-- Other Tools
	['casinochips'] 				 = {['name'] = 'casinochips', 			  	  	['label'] = 'Casino Chips', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'casinochips.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Chips For Casino Gambling'},
	['stickynote'] 			 	 	 = {['name'] = 'stickynote', 			  		['label'] = 'Sticky note', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'stickynote.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sometimes handy to remember something :)'},
	['moneybag'] 			 		 = {['name'] = 'moneybag', 						['label'] = 'Money Bag', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'moneybag.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bag with cash'},
	['parachute'] 			   		 = {['name'] = 'parachute', 					['label'] = 'Parachute', 				['weight'] = 15000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['binoculars'] 			 	 	 = {['name'] = 'binoculars', 					['label'] = 'Binoculars', 				['weight'] = 600, 		['type'] = 'item', 		['image'] = 'binoculars.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sneaky Breaky...'},
	['snowball'] 		     		 = {['name'] = 'snowball', 		 	  			['label'] = 'Snowball', 				['weight'] = 0, 		['type'] = 'item', 	 	['image'] = 'snowball.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Should have catched it :D'},
	['lighter'] 				 	 = {['name'] = 'lighter', 			  	  		['label'] = 'Lighter', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lighter.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'On new years eve a nice fire to stand next to'},
	['certificate'] 				 = {['name'] = 'certificate', 			  	  	['label'] = 'Certificate', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'certificate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Certificate that proves you own certain stuff'},
	['markedbills'] 				 = {['name'] = 'markedbills', 			  	  	['label'] = 'Marked Money', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'markedbills.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Money?'},
	['labkey'] 			 			 = {['name'] = 'labkey', 						['label'] = 'Key', 						['weight'] = 200, 		['type'] = 'item', 		['image'] = 'labkey.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Key for a lock...?'},
	['printerdocument'] 			 = {['name'] = 'printerdocument', 				['label'] = 'Document', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'printerdocument.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice document'},

	--other scripts
	['fishingrod'] 			 		 = {['name'] = 'fishingrod', 					['label'] = 'Fishing Rod', 				['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fishing rod for adventures with friends!!'},
	['fishingbait'] 			     = {['name'] = 'fishingbait', 					['label'] = 'Fish Bait', 				['weight'] = 400, 		['type'] = 'item', 		['image'] = 'fishbait.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fish bait'},
	["meat"] 						 = {["name"] = "meat", 			  	  			["label"] = "Wildfleisch", 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "meat.png", 	    	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Deer Meat"},
	["leather"] 					 = {["name"] = "leather", 			  			["label"] = "Leather", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "leather.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Deer Leather"},
	["gravel"] 			             = {["name"] = "gravel", 			        	["label"] = "Gravel",                   ["weight"] = 500,       ["type"] = "item",      ["image"] = "gravel.png",               ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Gravel...Gravel..Gravel"},
	["rawgold"] 			         = {["name"] = "rawgold", 			        	["label"] = "Gold Nuggets",             ["weight"] = 600,       ["type"] = "item",      ["image"] = "rawgold.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ist that...Gold?"},
	["refinedgold"] 			     = {["name"] = "refinedgold", 			        ["label"] = "Gold",                     ["weight"] = 1250,      ["type"] = "item",      ["image"] = "refinedgold.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "GOLD..MONEY!!!"},        
	["milk"] 			             = {["name"] = "milk", 			        	    ["label"] = "Milk",                     ["weight"] = 700,       ["type"] = "item",      ["image"] = "milk.png",                 ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fresh Milk..empty Cow.."},
	["milkbotle"] 			         = {["name"] = "milkbotle", 			        ["label"] = "Milk Bottle",              ["weight"] = 1200,      ["type"] = "item",      ["image"] = "milkbotle.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Milk Bottle..drink or sell..??"},
	["ironplate"] 			         = {["name"] = "ironplate", 			        ["label"] = "Iron Plate",               ["weight"] = 2500,      ["type"] = "item",      ["image"] = "ironplate.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Iron Plate..seriously??"},        
	["emerald"] 			         = {["name"] = "emerald", 			        	["label"] = "Emerald",                  ["weight"] = 1000,      ["type"] = "item",      ["image"] = "emerald.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "sooo preeettyyyy.."},
	["diamond"] 			         = {["name"] = "diamond", 			            ["label"] = "Diamond",                  ["weight"] = 1000,      ["type"] = "item",      ["image"] = "diamond.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "I can sniff the money.."},
	["alive_pig"] 			         = {["name"] = "alive_pig", 			        ["label"] = "Alive Pig",                ["weight"] = 3500,      ["type"] = "item",      ["image"] = "alive_pig.png",            ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An alive Pig..seriously??"},        
	["packaged_pig"] 			     = {["name"] = "packaged_pig", 			        ["label"] = "Bacon",                    ["weight"] = 1500,      ["type"] = "item",      ["image"] = "packaged_pig.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bacon..want..to..eat..it.."},
	["slaughtered_pig"] 			 = {["name"] = "slaughtered_pig", 			    ["label"] = "Slaughtered Pig",          ["weight"] = 2000,      ["type"] = "item",      ["image"] = "slaughtered_pig.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "ewwwwww..."},
	["corn_kernel"] 		         = {["name"] = "corn_kernel", 			        ["label"] = "Cone Kernel", 	            ["weight"] = 300, 		["type"] = "item", 		["image"] = "corn_kernel.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn kernel"},
	["corn_packet"] 		         = {["name"] = "corn_packet", 			        ["label"] = "Cone Packet", 	            ["weight"] = 1200, 		["type"] = "item", 		["image"] = "corn_packet.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn Packet"},
	["orange"] 		                 = {["name"] = "orange", 			            ["label"] = "Orange", 	                ["weight"] = 100, 		["type"] = "item", 		["image"] = "orange.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Orange"},
	["fruit_pack"] 		             = {["name"] = "fruit_pack", 			        ["label"] = "Fruit Pack", 	            ["weight"] = 1500, 		["type"] = "item", 		["image"] = "fruit_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Fruit Pack"},
	["milk"] 		                 = {["name"] = "milk", 			                ["label"] = "Milk", 	                ["weight"] = 700, 		["type"] = "item", 		["image"] = "milk.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk"},
	["milk_pack"] 		             = {["name"] = "milk_pack", 			        ["label"] = "Milk Pack", 	            ["weight"] = 1200, 		["type"] = "item", 		["image"] = "milk_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk pack"},
	["box"] 		                 = {["name"] = "box", 			                ["label"] = "Box", 	                	["weight"] = 100, 		["type"] = "item", 		["image"] = "box.png", 	                ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "box"},
    ["stone"] 		 	 		     = {["name"] = "stone",           	            ["label"] = "Stone",	 	            ["weight"] = 2500, 	    ["type"] = "item", 		["image"] = "stone.png", 		        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "so dirty.."},
    ["washedstone"] 		         = {["name"] = "washedstone",                   ["label"] = "Washed Stone",	 	        ["weight"] = 2000, 	    ["type"] = "item", 		["image"] = "washedstone.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "tell me whats inside.."},
	["huntingcarcass1"] 			 = {["name"] = "huntingcarcass1",				["label"] = "Carcass Level 1",			["weight"] = 10000,     ["type"] = "item",		["image"] = "huntingcarcass1.png",      ["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Dam this shit looks hot! Level 1"},
	["huntingcarcass2"] 			 = {["name"] = "huntingcarcass2",				["label"] = "Carcass Level 2",			["weight"] = 10000,     ["type"] = "item",		["image"] = "huntingcarcass2.png",      ["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Dam this shit looks hot! Level 2"},
	["huntingcarcass3"] 			 = {["name"] = "huntingcarcass3",				["label"] = "Carcass Level 3",			["weight"] = 10000,     ["type"] = "item",		["image"] = "huntingcarcass3.png",      ["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Dam this shit looks hot! Level 3"},
	["huntingcarcass4"] 			 = {["name"] = "huntingcarcass4",				["label"] = "Carcass Red",			    ["weight"] = 10000,     ["type"] = "item",		["image"] = "huntingcarcass4.png",      ["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Dam this shit looks hot! What do I do with this now?"},
	["huntingbait"] 			     = {["name"] = "huntingbait",				    ["label"] = "Animal Bait",			    ["weight"] = 1000,    	["type"] = "item",		["image"] = "huntingbait.png",          ["unique"] = false,		["useable"] = true,	    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smells like old fish and shoes"},
    ["skateboard"] 		 	 		 = {["name"] = "skateboard", 					["label"] = "Skateboard", 			    ["weight"] = 500, 		["type"] = "item", 		["image"] = "skateboard.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A cool skateboard!"},
	["specialbadge"]                 = {["name"] = "specialbadge",                  ["label"] = "Police Badge",             ["weight"] = 1000,      ["type"] = "item",      ["image"] = "specialbadge.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Special Badge of Law Enforcements"},
	["contract"]                     = {["name"] = "contract",                      ["label"] = "Contract",                 ["weight"] = 0,         ["type"] = "item",      ["image"] = "governfiles.png",          ["unique"] = true,      ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ein Vertragsformular"},
	["printedcash"]                  = {["name"] = "printedcash",                   ["label"] = "Printed Cash Bundle",      ["weight"] = 100,       ["type"] = "item",      ["image"] = "cashstack.png",            ["unique"] = true,      ["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cash!"},
	['hackerphone'] 			 	 = {['name'] = 'hackerphone', 			  	    ['label'] = 'Hacker Phone', 			['weight'] = 700, 		['type'] = 'item', 		['image'] = 'phone.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Someone knows his shit'},
	['metalscratchy'] 			 	 = {['name'] = 'metalscratchy', 			  	['label'] = 'Metal Scratch', 			['weight'] = 750, 		['type'] = 'item', 		['image'] = 'walkstick.png', 		    ['unique'] = false,     ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I know what that means'},
	["customlicense"] 			     = {["name"] = "customlicense", 		 	    ["label"] = "License", 	                ["weight"] = 100, 	    ["type"] = "item", 		["image"] = "driver_license.png",       ["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Custom License"},
	['spray'] 			 	         = {['name'] = 'spray', 			        	['label'] = 'Spray Can', 			    ['weight'] = 750, 		['type'] = 'item', 		['image'] = 'walkstick.png', 		    ['unique'] = false,     ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I know what that means'},
	["spray_remover"] 			     = {["name"] = "spray_remover", 		 	    ["label"] = "Spray Remover", 	        ["weight"] = 2500, 	    ["type"] = "item", 		["image"] = "walkstick.png",            ["unique"] = true, 	    ["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Remove that Graffiti stuff"},
	["decryptionkey3"] 			     = {["name"] = "decryptionkey3", 		 	    ["label"] = "Decryption Key #3", 	    ["weight"] = 100, 	    ["type"] = "item", 		["image"] = "yellow_dectryption_key.png",    ["unique"] = false, 	["useable"] = true, ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Decryption Key #3."},
	["atm_explosive"] 			     = {["name"] = "atm_explosive", 		 	    ["label"] = "Electronic Explosive", 	["weight"] = 5000, 	    ["type"] = "item", 		["image"] = "atm_explosive.png",        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Electronic Explosive Charge, wonder what this could be used for?."},
    
	
	-- Firejob
    ['scott']                        = {['name'] = 'scott',                         ['label'] = 'SCOTT SCBA',               ['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'scott.png',                ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'SCBA'},

	--other stuff
	["usb_device"]	                 = {["name"] = "usb_device",                    ["label"] = "Unknown USB",              ["weight"] = 0,	        ["type"] = "item",      ["image"] = "usb_device.png",           ["unique"] = true,      ["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "What do you do?"},
	["governfiles"]                  = {["name"] = "governfiles",                   ["label"] = "Gov Files",                ["weight"] = 0,         ["type"] = "item",      ["image"] = "governfiles.png",          ["unique"] = true,      ["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "What is the worse that can happen?."},
	["license_plate"] 				 = {["name"] = "license_plate", 			    ["label"] = "License plate", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "licenseplate.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	
	
	-- Vanilla Unicorn
	['vodka'] 					     = {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'vodka.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ever been so drunk you start speaking Russian? This will do the trick'},
	['whiskey'] 					 = {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'whiskey.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'The fine mans drink, not something most people can afford'},
	['rum'] 					     = {['name'] = 'rum', 			  	  		    ['label'] = 'Rum', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'whiskey.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A beverage that seems to make you think you can fight anybody'},
	['cocacola'] 					 = {['name'] = 'cocacola', 			  	  		['label'] = 'CocaCola', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'cocacola.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Probably have some issues with your blood suger level'},
	
	
	--Schlachthausjob
	["alivechicken"] 		 		 = {["name"] = "alivechicken", 					["label"] = "Alive Chicken", 		    ["weight"] = 2500, 		["type"] = "item", 		["image"] = "alivechicken.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Alive Chicken"},
	["slaughteredchicken"] 		 	 = {["name"] = "slaughteredchicken", 		    ["label"] = "Slaughtered Chicken", 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Slaughtered Chicken"},
	["packagedchicken"] 		     = {["name"] = "packagedchicken", 				["label"] = "Packaged Chicken", 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "packagedchicken.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Packaged Chicken"},
	
	--Pokemon
	["boosterbox"] 					 = {["name"] = "boosterbox",		  	  		["label"] = "Boosterbox", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "boosterBox.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Box Of Card Packs"},
	["boosterpack"] 				 = {["name"] = "boosterpack", 			  	  	["label"] = "Boosterpack", 				["weight"] = 250, 		["type"] = "item", 		["image"] = "boosterPack.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Pack of Cards"},
	["abra"] 						 = {["name"] = "abra", 			  			  	["label"] = "Abra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "abra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "3/6 for Marsh Badge"},
	["aerodactyl"] 					 = {["name"] = "aerodactyl", 			  	  	["label"] = "Aerodactyl", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "aerodactyl.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["alakazam"] 					 = {["name"] = "alakazam", 					 	["label"] = "Alakazam", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "alakazam.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Marsh Badge"},
	["arbok"] 						 = {["name"] = "arbok", 			  	  		["label"] = "Arbok", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "arbok.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["arcanine"] 					 = {["name"] = "arcanine", 				  	  	["label"] = "Arcanine", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "arcanine.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Volcano Badge"},
	["articuno"] 					 = {["name"] = "articuno", 			  		 	["label"] = "Articuno", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "articuno.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["beedrill"] 					 = {["name"] = "beedrill", 			  	  		["label"] = "Beedrill", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "beedrill.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["bellsprout"] 					 = {["name"] = "bellsprout", 			  	  	["label"] = "Bellsprout", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "bellsprout.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Rainbow Badge"},
	["blastoise"] 					 = {["name"] = "blastoise", 			  	  	["label"] = "Blastoise", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoise.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Cascade Badge - Ultra Rare"},
	["boulderbadge"] 				 = {["name"] = "boulderbadge", 			 		["label"] = "boulderbadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "boulderBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/8 for Trophy Badge"},
	["butterfree"] 					 = {["name"] = "butterfree", 			  		["label"] = "Butterfree", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "butterfree.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["cascadebadge"] 				 = {["name"] = "cascadeBadge", 			  		["label"] = "CascadeBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "cascadeBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "2/8 for Trophy Badge"},
	["caterpie"] 				     = {["name"] = "caterpie", 			  			["label"] = "Caterpie", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "caterpie.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["chansey"] 				 	 = {["name"] = "chansey", 			  			["label"] = "Chansey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "chansey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["charizard"] 				 	 = {["name"] = "charizard", 			  		["label"] = "Charizard", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charizard.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Volcano Badge - Ultra Rare"},
	["charmander"] 				 	 = {["name"] = "charmander", 			  		["label"] = "Charmander", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charmander.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["charmeleon"] 				 	 = {["name"] = "charmeleon", 			  		["label"] = "Charmeleon", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "charmeleon.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["clefable"] 					 = {["name"] = "clefable", 			  		 	["label"] = "Clefable", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "clefable.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["clefairy"] 				 	 = {["name"] = "clefairy", 			  	  		["label"] = "Clefairy", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "clefairy.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["cloyster"] 				 	 = {["name"] = "cloyster", 			  	  		["label"] = "Cloyster", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "cloyster.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["cubone"] 						 = {["name"] = "cubone", 			  	  		["label"] = "Cubone", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "cubone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["dewgong"] 				 	 = {["name"] = "dewgong", 			  	  		["label"] = "Dewgong", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dewgong.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["diglett"] 					 = {["name"] = "diglett", 			 	  	  	["label"] = "Diglett", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "diglett.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["ditto"] 						 = {["name"] = "ditto", 			 			["label"] = "Ditto", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ditto.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["dodrio"] 						 = {["name"] = "dodrio", 			 			["label"] = "Dodrio", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dodrio.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["doduo"] 						 = {["name"] = "doduo", 						["label"] = "Doduo", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "doduo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["dragonair"] 					 = {["name"] = "dragonair", 			 	  	["label"] = "Dragonair", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "dragonair.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["dragonite"] 					 = {["name"] = "dragonite", 				    ["label"] = "Dragonite", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "dragonite.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["dratini"] 					 = {["name"] = "dratini", 			    		["label"] = "Dratini", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dratini.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["drowzee"] 					 = {["name"] = "drowzee", 			 			["label"] = "Drowzee", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "drowzee.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["dugtrio"] 				  	 = {["name"] = "dugtrio", 			 			["label"] = "Dugtrio", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "dugtrio.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Earth Badge"},
	["earthbadge"] 					 = {["name"] = "earthbadge", 					["label"] = "Earth Badge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "earthBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "8/8 for Trophy Badge"},
	["eevee"] 						 = {["name"] = "eevee", 			 			["label"] = "Eevee", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "eevee.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["ekans"] 						 = {["name"] = "ekans", 			 			["label"] = "Ekans", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ekans.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["electabuzz"] 				     = {["name"] = "electabuzz", 			 		["label"] = "Electabuzz", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "electabuzz.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Thunder Badge"},
	["electrode"] 					 = {["name"] = "electrode", 					["label"] = "Electrode", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "electrode.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Thunder Badge"},
	["exeggcute"] 					 = {["name"] = "exeggcute", 				    ["label"] = "Exeggcute", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "exeggcute.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["exeggutor"] 					 = {["name"] = "exeggutor", 					["label"] = "Exeggutor", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "exeggutor.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["farfetchd"] 					 = {["name"] = "farfetchd", 					["label"] = "Farfetchd", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "farfetchd.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["fearow"] 						 = {["name"] = "fearow", 						["label"] = "Fearow", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "fearow.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["flareon"] 					 = {["name"] = "flareon", 					    ["label"] = "Flareon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "flareon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["gastly"] 						 = {["name"] = "gastly", 					    ["label"] = "Gastly", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gastly.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["gengar"] 						 = {["name"] = "gengar", 					    ["label"] = "Gengar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gengar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["geodude"] 				 	 = {["name"] = "geodude", 				    	["label"] = "Geodude", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "geodude.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/6 for Boulder Badge"},
	["gloom"] 						 = {["name"] = "gloom", 						["label"] = "Gloom", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "gloom.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["golbat"] 						 = {["name"] = "golbat", 						["label"] = "Golbat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "golbat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/6 for Soul Badge"},
	["goldeen"] 					 = {["name"] = "goldeen", 						["label"] = "Goldeen", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "goldeen.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["golduck"] 		 			 = {["name"] = "golduck", 						["label"] = "Golduck", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "golduck.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Cascade Badge"},
	["golem"] 		 				 = {["name"] = "golem", 						["label"] = "Golem", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "golem.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["graveler"] 		 			 = {["name"] = "graveler", 						["label"] = "Graveler", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "graveler.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Boulder Badge"},
	["grimer"] 		 				 = {["name"] = "grimer", 						["label"] = "Grimer", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "grimer.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["growlithe"] 		 			 = {["name"] = "growlithe", 					["label"] = "Growlithe", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "growlithe.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["gyarados"] 				 	 = {["name"] = "gyarados", 			  	  		["label"] = "Gyarados", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "gyarados.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["haunter"] 					 = {["name"] = "haunter", 						["label"] = "Haunter", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "haunter.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["hitmonchan"] 				 	 = {["name"] = "hitmonchan", 			  	  	["label"] = "Hitmonchan", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "hitmonchan.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["hitmonlee"] 				 	 = {["name"] = "hitmonlee", 			   		["label"] = "Hitmonlee", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "hitmonlee.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["horsea"] 						 = {["name"] = "horsea", 			  		 	["label"] = "Horsea", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "horsea.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["hypno"] 				 		 = {["name"] = "hypno", 			  	  		["label"] = "Hypno", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "hypno.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "5/6 for Marsh Badge"},
	["ivysaur"] 					 = {["name"] = "ivysaur", 			  			["label"] = "Ivysaur", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ivysaur.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["jigglypuff"] 					 = {["name"] = "jigglypuff", 			  	  	["label"] = "Jigglypuff", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "jigglypuff.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["jolteon"] 					 = {["name"] = "jolteon", 					  	["label"] = "Jolteon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "jolteon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "3/6 for Thunder Badge - Rare"},
	["jynx"] 						 = {["name"] = "jynx", 						  	["label"] = "Jynx", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "jynx.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/6 for Marsh Badge - Rare"},
	["kabuto"] 						 = {["name"] = "kabuto", 					  	["label"] = "Kabuto", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kabuto.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["kabutops"] 			 		 = {["name"] = "kabutops", 				 		["label"] = "Kabutops", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "kabutops.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Boulder Badge - Ultra Rare"},
	["kadabra"] 			 	 	 = {["name"] = "kadabra", 			  			["label"] = "Kadabra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kadabra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Marsh Badge - Rare"},
	["kakuna"] 			 	 		 = {["name"] = "kakuna", 			  			["label"] = "Kakuna", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kakuna.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["kangaskhan"] 			 	 	 = {["name"] = "kangaskhan", 			  		["label"] = "Kangaskhan", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "kangaskhan.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["kingler"] 			 	 	 = {["name"] = "kingler", 			  			["label"] = "Kingler", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "kingler.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["koffing"] 			 	 	 = {["name"] = "koffing", 			  			["label"] = "Koffing", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "koffing.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "1/6 for Soul Badge"},
	["krabby"] 				 	 	 = {["name"] = "krabby", 			  			["label"] = "Krabby", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "krabby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["lapras"] 			 			 = {["name"] = "lapras", 			  			["label"] = "Lapras", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "lapras.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Cascade Badge - Rare"},
	["lickitung"] 			 		 = {["name"] = "lickitung", 			  		["label"] = "Lickitung", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "lickitung.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["machamp"] 					 = {["name"] = "machamp", 					  	["label"] = "Machamp", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machamp.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rare"},
	["machoke"] 					 = {["name"] = "machoke", 						["label"] = "Machoke", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machoke.png",				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["machop"] 			 			 = {["name"] = "machop", 						["label"] = "Machop", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "machop.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["magikarp"] 			 		 = {["name"] = "magikarp", 						["label"] = "Magikarp", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magikarp.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["magmar"] 					     = {["name"] = "magmar", 						["label"] = "Magmar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "magmar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Volcano Badge"},
	["magnemite"] 			   		 = {["name"] = "magnemite", 					["label"] = "Magnemite", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magnemite.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["magneton"] 					 = {["name"] = "magneton", 			  	  		["label"] = "Magneton", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "magneton.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/6 for Thunder Badge"},
	["mankey"] 						 = {["name"] = "mankey", 					 	["label"] = "Mankey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mankey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["marowak"] 					 = {["name"] = "marowak", 			  	  		["label"] = "Marowak", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "marowak.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["marshbadge"] 					 = {["name"] = "marshbadge", 				  	["label"] = "MarshBadge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "marshBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "6/8 for Trophy Badge"},
	["meowth"] 						 = {["name"] = "meowth", 			  		 	["label"] = "Meowth", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "meowth.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["metapod"] 					 = {["name"] = "metapod", 			  	  		["label"] = "Metapod", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "metapod.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = ""},
	["mew"] 						 = {["name"] = "mew", 			  				["label"] = "Mew", 						["weight"] = 0, 		["type"] = "item", 		["image"] = "mew.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["mewtwo"] 						 = {["name"] = "mewtwo", 			  			["label"] = "Mewtwo", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mewtwo.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "4/6 for Earth Badge - Ultra Rare"},
	["moltres"] 					 = {["name"] = "moltres", 			 			["label"] = "Moltres", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "moltres.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "6/6 for Volcano Badge - Ultra Rare"},
	["mrmime"] 						 = {["name"] = "mrmime", 			  			["label"] = "Mr_mime", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mrmime.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Marsh Badge"},
	["muk"] 						 = {["name"] = "muk", 			  				["label"] = "Muk", 						["weight"] = 0, 		["type"] = "item", 		["image"] = "muk.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["nidoking"] 				     = {["name"] = "nidoking", 			  			["label"] = "Nidoking", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoking.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Earth Badge - Rare"},
	["nidoqueen"] 				 	 = {["name"] = "nidoqueen", 			  		["label"] = "Nidoqueen", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoqueen.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Earth Badge"},
	["nidoran"] 				 	 = {["name"] = "nidoran", 			  			["label"] = "Nidoran", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "nidoran.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["nidorina"] 				 	 = {["name"] = "nidorina", 			  			["label"] = "Nidorina", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidorina.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["nidorino"] 				 	 = {["name"] = "nidorino", 			  			["label"] = "Nidorino", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "nidorino.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["ninetails"] 					 = {["name"] = "ninetails", 			  		["label"] = "Ninetails", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "ninetails.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Volcano badge"},
	["oddish"] 				 		 = {["name"] = "oddish", 			  	  		["label"] = "Oddish", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "oddish.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["omanyte"] 				 	 = {["name"] = "omanyte", 			  	  		["label"] = "Omanyte", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "omanyte.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["omastar"] 					 = {["name"] = "omastar", 			  	  		["label"] = "Omastar", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "omastar.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Boulder Badge - Ultra Rare"},
	["onix"] 				 		 = {["name"] = "onix", 			  	  			["label"] = "Onix", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "onix.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Boulder Badge - Rare"},
	["paras"] 						 = {["name"] = "paras", 			 	  	  	["label"] = "Paras", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "paras.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["parasect"] 					 = {["name"] = "parasect", 			 			["label"] = "Parasect", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "parasect.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["persian"] 					 = {["name"] = "persian", 			 			["label"] = "Persian", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "persian.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Earth Badge"},
	["pidgeotto"] 					 = {["name"] = "pidgeotto", 					["label"] = "Pidgeotto", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgeotto.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["pidgey"] 						 = {["name"] = "pidgey", 			 			["label"] = "Pidgey", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgey.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["pikachu"] 					 = {["name"] = "pikachu", 						["label"] = "Pikachu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pikachu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Thunder Badge"},
	["pinsir"] 						 = {["name"] = "pinsir", 			    		["label"] = "Pinsir", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pinsir.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["poliwag"] 					 = {["name"] = "poliwag", 			 			["label"] = "Poliwag", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "poliwag.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["polywhirl"] 				  	 = {["name"] = "polywhirl", 			 		["label"] = "Polywhirl", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "polywhirl.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["poliwrath"] 					 = {["name"] = "poliwrath", 					["label"] = "Poliwrath", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "poliwrath.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["ponyta"] 						 = {["name"] = "ponyta", 			 			["label"] = "Ponyta", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "ponyta.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["porygon"] 					 = {["name"] = "porygon", 			 			["label"] = "Porygon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "porygon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Ultra Rare"},
	["primeape"] 				     = {["name"] = "primeape", 			 			["label"] = "Primeape", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "primeape.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["psyduck"] 					 = {["name"] = "psyduck", 						["label"] = "Psyduck", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "psyduck.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Cascade Badge"},
	["raichu"] 						 = {["name"] = "raichu", 						["label"] = "Raichu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "raichu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
	["rainbowbadge"] 				 = {["name"] = "rainbowbadge", 					["label"] = "RainbowBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Rainbow Badge"},
	["rapidash"] 					 = {["name"] = "rapidash", 						["label"] = "Rapidash", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "rapidash.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Volcano Badge"},
	["raticate"] 					 = {["name"] = "raticate", 						["label"] = "Raticate", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "raticate.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["rattata"] 					 = {["name"] = "rattata", 					    ["label"] = "Rattata", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rattata.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["rhydon"] 						 = {["name"] = "rhydon", 					    ["label"] = "Rhydon", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rhydon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "1/6 for Earth Badge"},
	["rhyhorn"] 					 = {["name"] = "rhyhorn", 					    ["label"] = "Rhyhorn", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "rhyhorn.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Boulder Badge"},
	["sandshrew"] 				 	 = {["name"] = "sandshrew", 				    ["label"] = "Sandshrew", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "sandshrew.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["sandslash"] 					 = {["name"] = "sandslash", 					["label"] = "Sandslash", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "sandslash.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["scyther"] 					 = {["name"] = "scyther", 						["label"] = "Scyther", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "scyther.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Rainbow Badge - Rare"},
	["seadra"] 						 = {["name"] = "seadra", 						["label"] = "Seadra", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "seadra.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["seaking"] 		 			 = {["name"] = "seaking", 						["label"] = "Seaking", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "seaking.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["seel"] 		 				 = {["name"] = "seel", 							["label"] = "Seel", 					["weight"] = 0, 	    ["type"] = "item", 		["image"] = "seel.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["shellder"] 		 			 = {["name"] = "shellder", 						["label"] = "Shellder", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "shellder.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["slowbro"] 		 			 = {["name"] = "slowbro", 						["label"] = "Slowbro", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "slowbro.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["slowpoke"] 		 			 = {["name"] = "slowpoke", 						["label"] = "Slowpoke", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "slowpoke.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["snorlax"] 				 	 = {["name"] = "snorlax", 			  	  		["label"] = "Snorlax", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlax.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/6 for Soul Badge - Ultra Rare"},
	["soulbadge"] 					 = {["name"] = "soulbadge", 					["label"] = "SoulBadge", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "soulBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/8 for Trophy Badge"},
	["spearow"] 				 	 = {["name"] = "spearow", 			  	  		["label"] = "Spearow", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "spearow.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["squirtle"] 				 	 = {["name"] = "squirtle", 			   			["label"] = "Squirtle", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "squirtle.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["starmie"] 					 = {["name"] = "starmie", 			  		 	["label"] = "Starmie", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "starmie.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Cascade Badge - Rare"},
	["staryu"] 				 		 = {["name"] = "staryu", 			  	  		["label"] = "Staryu", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "staryu.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["tangela"] 					 = {["name"] = "tangela", 			  			["label"] = "Tangela", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "tangela.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "2/6 for Rainbow Badge"},
	["tauros"] 						 = {["name"] = "tauros", 			  	  		["label"] = "Tauros", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "tauros.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["tentacool"] 					 = {["name"] = "tentacool", 					["label"] = "Tentacool", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "tentacool.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["tentacruel"] 					 = {["name"] = "tentacruel", 					["label"] = "Tentacruel", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "tentacruel.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = ""},
	["thunderbadge"] 				 = {["name"] = "thunderbadge", 					["label"] = "ThunderBadge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "thunderBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "3/8 for Trophy Badge"},
	["togepi"] 			 			 = {["name"] = "togepi", 				 		["label"] = "Togepi", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "togepi.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Cascade Badge - Rare"},
	["trophybadge"] 			 	 = {["name"] = "trophybadge", 			  		["label"] = "Trophy Badge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "trophyBadge.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "OwO You have a Trophy"},
	["vaporeon"] 			 	 	 = {["name"] = "vaporeon", 			  			["label"] = "Vaporeon", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "vaporeon.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Rare"},
	["venomoth"] 			 	 	 = {["name"] = "venomoth", 			  			["label"] = "Venomoth", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venomoth.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "4/6 for Soul Badge"},
	["venonat"] 			 	 	 = {["name"] = "venonat", 			  			["label"] = "Venonat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "venonat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "5/6 for Soul Badge"},
	["venusaur"] 			 	 	 = {["name"] = "venusaur", 			  			["label"] = "Venusaur", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "6/6 for Rainbow Badge - Rare"},
	["victreebel"] 				 	 = {["name"] = "victreebel", 			  		["label"] = "Victreebel", 				["weight"] = 0, 	    ["type"] = "item", 		["image"] = "victreebel.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "1/6 for Rainbow Badge"},
	["vileplume"] 		 			 = {["name"] = "vileplume", 			  		["label"] = "Vileplume", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "vileplume.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "3/6 for Rainbow Badge"},
	["volcanobadge"] 		 		 = {["name"] = "volcanobadge", 			  		["label"] = "Volcano Badge", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "volcanoBadge.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "7/8 for Trophy Badge"},
	["voltorb"] 					 = {["name"] = "voltorb", 					  	["label"] = "Voltorb", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "voltorb.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["vulpix"] 						 = {["name"] = "vulpix", 						["label"] = "Vulpix", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "vulpix.png",				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["wartortle"] 		 			 = {["name"] = "wartortle", 					["label"] = "Wartortle", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "wartortle.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["weedle"] 				 		 = {["name"] = "weedle", 						["label"] = "Weedle", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "weedle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["weepinbell"] 				     = {["name"] = "weepinbell", 					["label"] = "Weepinbell", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "weepinbell.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["weezing"] 			   		 = {["name"] = "weezing", 						["label"] = "Weezing", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "weezing.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "2/6 for Soul Badge"},
	["wigglytuff"] 			 		 = {["name"] = "wigglytuff", 					["label"] = "Wigglytuff", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "wigglytuff.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rare"},
	["zapdos"] 					     = {["name"] = "zapdos", 						["label"] = "Zapdos", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "zapdos.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "1/6 for Thunder Badge - Ultra Rare"},
	["zubat"] 				   		 = {["name"] = "zubat", 						["label"] = "Zubat", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "zubat.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["bulbasaur"] 			   		 = {["name"] = "bulbasaur", 					["label"] = "Bulbasaur", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "bulbasaur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = ""},
	["pidgeot"]                      = {["name"] = "pidgeot", 						["label"] = "Pidgeot", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "pidgeot.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, 	   ["combinable"] = nil,   ["description"] = "6/6 for Earth Badge"},
	["blastoisev"] 			 	 	 = {["name"] = "blastoisev", 			  		["label"] = "Blastoise V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoisev.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "V Card"},
	["charizardv"] 				 	 = {["name"] = "charizardv", 			  		["label"] = "Charizard V", 				["weight"] = 0, 	    ["type"] = "item", 		["image"] = "charizardv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
	["mewv"] 		 				 = {["name"] = "mewv", 			  				["label"] = "Mew V", 					["weight"] = 0, 		["type"] = "item", 		["image"] = "mewv.png", 			    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
	["pikachuv"] 		 		 	 = {["name"] = "pikachuv", 			  		    ["label"] = "Pikachu V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "pikachuv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
	["snorlaxv"] 					 = {["name"] = "snorlaxv", 					  	["label"] = "Snorlax V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxv.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
	["venusaurv"] 					 = {["name"] = "venusaurv", 				    ["label"] = "Venusaur V", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaurv.png",			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "V Card"},
	["blastoisevmax"] 		 	     = {["name"] = "blastoisevmax", 			    ["label"] = "Blastoise Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "blastoisevmax.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["mewtwogx"] 				 	 = {["name"] = "mewtwogx", 						["label"] = "Mewtwo Vmax", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "mewtwogx.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["snorlaxvmax"] 				 = {["name"] = "snorlaxvmax", 					["label"] = "Snorlax Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxvmax.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["venusaurvmax"] 			   	 = {["name"] = "venusaurvmax", 					["label"] = "Venusaur Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "venusaurvmax.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["vmaxcharizard"] 			 	 = {["name"] = "vmaxcharizard", 				["label"] = "Charizard Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "vmaxcharizard.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["vmaxpikachu"] 			     = {["name"] = "vmaxpikachu", 					["label"] = "Pikachu Vmax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "vmaxpikachu.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Vmax Card"},
	["rainbowmewtwogx"] 			 = {["name"] = "rainbowmewtwogx", 				["label"] = "Rainbow Mewtwo", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowmewtwogx.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
	["rainbowvmaxcharizard"] 		 = {["name"] = "rainbowvmaxcharizard", 			["label"] = "Rainbow Charizard", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowvmaxcharizard.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
	["rainbowvmaxpikachu"] 			 = {["name"] = "rainbowvmaxpikachu", 			["label"] = "Rainbow Pikachu", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rainbowvmaxpikachu.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
	["snorlaxvmaxrainbow"] 			 = {["name"] = "snorlaxvmaxrainbow", 			["label"] = "Rainbox Snorlax", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "snorlaxvmaxrainbow.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Rainbow Card"},
	["pokebox"] 					 = {["name"] = "pokebox", 						["label"] = "Pokemon TCG Box", 			["weight"] = 50, 		["type"] = "item", 		["image"] = "pokebox.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true, 	   ["combinable"] = nil,  ["description"] = "Pokemon TCG Storage Box"},
	
	['ps5'] 			 		     = {['name'] = 'ps5', 									['label'] = 'PS5 Console', 		   				['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'ps5.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'PS5? You filthy casual!'},
    ['ps2'] 			     		 = {['name'] = 'ps2', 									['label'] = 'PS2 Console', 		    			['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'ps2.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'PS2? You filthy casual!'},
    ['xboxx'] 			 			 = {['name'] = 'xboxx', 								['label'] = 'Xbox X Console', 		    		['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'xboxx.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Xbox X? You filthy casual!'},
    ['gamecube'] 			         = {['name'] = 'gamecube', 					    		['label'] = 'Gamecube Console', 		    	['weight'] = 2200, 		['type'] = 'item', 		['image'] = 'gamecube.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Super smash bros brawl anyone?'},
    ['actionfigure'] 	 	         = {['name'] = 'actionfigure', 					    	['label'] = 'Action Figure', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'figure.png', 						['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Minted looking action figure, still has the packaging..'},
    ['awp'] 	 	             	 = {['name'] = 'awp', 					    			['label'] = 'AWP Replica', 						['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'awp.png', 							['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Replica AWP with some crazy looking paint job!'},

    -- Burger Shot
    -- Food
    ["burger-bleeder"] 				 = {["name"] = "burger-bleeder", 			 	["label"] = "Bleeder", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "bs_the-bleeder.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-moneyshot"] 			 = {["name"] = "burger-moneyshot", 			 	["label"] = "Moneyshot", 				["weight"] = 300, 		["type"] = "item", 		["image"] = "bs_money-shot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-torpedo"] 				 = {["name"] = "burger-torpedo", 			 	["label"] = "Torpedo", 					["weight"] = 310, 		["type"] = "item", 		["image"] = "bs_torpedo.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-heartstopper"] 		 = {["name"] = "burger-heartstopper", 			["label"] = "Heartstopper", 			["weight"] = 2500, 		["type"] = "item", 		["image"] = "bs_the-heart-stopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-meatfree"] 		 	 = {["name"] = "burger-meatfree", 				["label"] = "MeatFree", 			["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_meat-free.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
    ["burger-fries"] 				 = {["name"] = "burger-fries", 			 	  	["label"] = "Fries", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_fries.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sates Hunger."},
	-- Drinks

    ["burger-softdrink"] 			 = {["name"] = "burger-softdrink", 				["label"] = "Soft Drink", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_softdrink.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ice Cold Drink."},
    ["burger-mshake"] 			     = {["name"] = "burger-mshake", 				["label"] = "Milkshake", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_milkshake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Hand-scooped for you!"},

     --Ingredients
    ["burger-bun"] 				 	 = {["name"] = "burger-bun", 			 	  	["label"] = "Bun", 			["weight"] = 125, 		["type"] = "item", 					["image"] = "bs_bun.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-meat"] 				 = {["name"] = "burger-meat", 			 	  	["label"] = "Cooked Patty", 			["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-lettuce"] 				 = {["name"] = "burger-lettuce", 			 	["label"] = "Lettuce", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_lettuce.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-tomato"] 				 = {["name"] = "burger-tomato", 			 	["label"] = "Tomato", 				["weight"] = 125, 		["type"] = "item", 			["image"] = "bs_tomato.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-raw"] 				 	 = {["name"] = "burger-raw", 			 		["label"] = "Raw Patty", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_patty_raw.png", 	        ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-potato"] 				 = {["name"] = "burger-potato", 			 	["label"] = "Bag of Potatoes", 		["weight"] = 1500, 		["type"] = "item", 			["image"] = "bs_potato.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-mshakeformula"] 		 = {["name"] = "burger-mshakeformula", 			["label"] = "Milkshake Formula", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "bs_ingredients_icecream.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-sodasyrup"] 		 	 = {["name"] = "burger-sodasyrup", 				["label"] = "Soda Syrup", 		["weight"] = 125, 		["type"] = "item", 				["image"] = "bs_ingredients_hfcs.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Ingredient"},
    ["burger-toy1"] 		 		 = {["name"] = "burger-toy1", 					["label"] = "Action Figure", 			["weight"] = 50, 		["type"] = "item", 		["image"] = "action-figure.png", 		["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "An Action Figure From the late 90's"},
    ["burger-toy2"] 		 		 = {["name"] = "burger-toy2", 					["label"] = "Pink Teddy", 				["weight"] = 50, 		["type"] = "item", 		["image"] = "beaniebaby.png", 			["unique"] = true, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "A Fluffy Pink Teddy from the Atic"},
    ["burger-murdermeal"] 		 	 = {["name"] = "burger-murdermeal", 			["label"] = "Murder Meal", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "burger-box.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "An Amazing Murder Meal with a chance of a toy."},

	
	-- Tquilala
	["beer"] 				 		 = {["name"] = "beer", 			  	  			["label"] = "Beer", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "beer.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["whiskey"] 				 	 = {["name"] = "whiskey", 			  	  		["label"] = "Whiskey", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "whiskey.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["vodka"] 				 		 = {["name"] = "vodka", 			  	  		["label"] = "Vodka", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "vodka.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["tequilasunrise"] 				 = {["name"] = "tequilasunrise", 			  	["label"] = "Tequila Sunrise", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "tequilasunrise.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["cubalibre"] 				 	 = {["name"] = "cubalibre", 			  	  	["label"] = "Cubalibre", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "cubalibre.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["sexonthebeach"] 				 = {["name"] = "sexonthebeach", 			  	["label"] = "Sex On The Beach", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "sexonthebeach.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["mojito"] 				 		 = {["name"] = "mojito", 			  	  		["label"] = "Mojito", 					["weight"] = 500, 		["type"] = "item", 		["image"] = "mojito.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["tequilashot"] 				 = {["name"] = "tequilashot", 			  	  	["label"] = "Tequila Shot", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "tequilashot.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["margarita"] 				 	 = {["name"] = "margarita", 			  	  	["label"] = "Margarita", 				["weight"] = 500, 		["type"] = "item", 		["image"] = "margarita.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["tequilala"] 				 	 = {["name"] = "tequilala", 			  	  	["label"] = "Tequilala Special", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "tequilala.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
}

-- // HASH WEAPON ITEMS, NEED SOMETIMES TO GET INFO FOR CLIENT

QBShared.Weapons = {
	-- // WEAPONS
	-- Melee
	[`weapon_unarmed`] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	[`weapon_dagger`] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	[`weapon_bat`] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for hitting a ball in sports (or other things)'},
	[`weapon_bottle`] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broken bottle'},
	[`weapon_crowbar`] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An iron bar with a flattened end, used as a lever'},
	[`weapon_flashlight`] 			 = {['name'] = 'weapon_flashlight', 		 	['label'] = 'Flashlight', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A small size sun that will make things brighter.'},
	[`weapon_golfclub`] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A club used to hit the ball in golf'},
	[`weapon_hammer`] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	[`weapon_hatchet`] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small axe with a short handle for use in one hand'},
	[`weapon_knuckle`] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	[`weapon_knife`] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	[`weapon_machete`] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broad, heavy knife used as a weapon'},
	[`weapon_switchblade`] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	[`weapon_nightstick`] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A police officer\'s club or billy'},
	[`weapon_wrench`] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	[`weapon_battleaxe`] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	[`weapon_poolcue`] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A stick used to strike a ball, usually the cue ball (sometimes)'},
	[`weapon_briefcase`] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase'},
	[`weapon_briefcase_02`] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase'},
	[`weapon_garbagebag`] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A garbage bag'},
	[`weapon_handcuffs`] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	[`weapon_bread`] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Bread..?'},
	[`weapon_stone_hatchet`] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Weapon Stone Hatchet', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'stone_hatchet.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Stone ax'},

    -- Handguns
	[`weapon_pistol`] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand'},
	[`weapon_pistol_mk2`] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistolmk2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	[`weapon_combatpistol`] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version small firearm designed to be held in one hand'},
	[`weapon_appistol`] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	[`weapon_stungun`] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_taser.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	[`weapon_pistol50`] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50 Cal', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	[`weapon_snspistol`] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A very small firearm designed to be easily concealed'},
	[`weapon_heavypistol`] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	[`weapon_vintagepistol`] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An antique firearm designed to be held in one hand'},
	[`weapon_flaregun`] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handgun for firing signal rockets'},
	[`weapon_marksmanpistol`] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	[`weapon_revolver`] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	[`weapon_revolver_mk2`] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'revolvermk2.png', 			['unique'] = true, 		['useable'] = true, 	['description'] = 'da Violence'},
	[`weapon_doubleaction`] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'doubleaction.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Double Action Revolver'},
	[`weapon_snspistol_mk2`] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'SNS Pistol MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'snspistol_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'SNS Pistol MK2'},
	[`weapon_raypistol`]			 = {['name'] = 'weapon_raypistol',				['label'] = 'Weapon Raypistol',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raypistol'},
	[`weapon_ceramicpistol`]		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Weapon Ceramicpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Ceramicpistol'},
	[`weapon_navyrevolver`]        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Weapon Navyrevolver',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Navyrevolver'},
	[`weapon_gadgetpistol`] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Weapon Gadgetpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Gadgetpistol'},

    -- Submachine Guns
	[`weapon_microsmg`] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	[`weapon_smg`] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	[`weapon_smg_mk2`] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'PD MP5 2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'smg.png', 					['unique'] = true, 		['useable'] = true, 	['description'] = 'SMG MK2'},
	[`weapon_assaultsmg`] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a handheld lightweight machine gun'},
	[`weapon_combatpdw`] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of a handheld lightweight machine gun'},
	[`weapon_machinepistol`] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	[`weapon_minismg`] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A mini handheld lightweight machine gun'},
	[`weapon_raycarbine`]	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Weapon Raycarbine',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raycarbine'},

    -- Shotguns
	[`weapon_pumpshotgun`] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	[`weapon_sawnoffshotgun`] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	[`weapon_assaultshotgun`] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	[`weapon_bullpupshotgun`] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	[`weapon_musket`] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	[`weapon_heavyshotgun`] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	[`weapon_dbshotgun`] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	[`weapon_autoshotgun`] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun capable of rapid continous fire'},
	[`weapon_pumpshotgun_mk2`]		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'pumpshotgun_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Pumpshotgun MK2'},
	[`weapon_combatshotgun`]		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Weapon Combatshotgun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'combatshotgun.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatshotgun'},

    -- Assault Rifles
	[`weapon_assaultrifle`] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	[`weapon_assaultrifle_mk2`] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'AK-47 MK2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'assaultriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Assault Rifle MK2'},
	[`weapon_carbinerifle`] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A lightweight automatic rifle'},
    [`weapon_carbinerifle_mk2`] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'PD 762', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'carbineriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Carbine Rifle MK2'},
	[`weapon_advancedrifle`] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	[`weapon_specialcarbine`] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	[`weapon_bullpuprifle`] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact automatic assault rifle'},
	[`weapon_compactrifle`] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact version of an assault rifle'},
	[`weapon_specialcarbine_mk2`]	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Weapon Wpecialcarbine MK2',['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'specialcarbine_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Wpecialcarbine MK2'},
	[`weapon_bullpuprifle_mk2`]		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bull Puprifle MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'bullpuprifle_mk2.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Bull Puprifle MK2'},
	[`weapon_militaryrifle`]		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Weapon Militaryrifle',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'militaryrifle.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Militaryrifle'},

    -- Light Machine Guns
	[`weapon_mg`] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	[`weapon_combatmg`] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	[`weapon_gusenberg`] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	[`weapon_combatmg_mk2`]	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Weapon Combatmg MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'combatmg_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatmg MK2'},

    -- Sniper Rifles
	[`weapon_sniperrifle`] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A high-precision, long-range rifle'},
	[`weapon_heavysniper`] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'An upgraded high-precision, long-range rifle'},
	[`weapon_marksmanrifle`] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A very accurate single-fire rifle'},
	[`weapon_remotesniper`] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable high-precision, long-range rifle'},
	[`weapon_heavysniper_mk2`]		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Weapon Heavysniper MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'heavysniper_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Heavysniper MK2'},
	[`weapon_marksmanrifle_mk2`]	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Weapon Marksmanrifle MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'marksmanrifle_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Marksmanrifle MK2'},

    -- Heavy Weapons
	[`weapon_rpg`] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A rocket-propelled grenade launcher'},
	[`weapon_grenadelauncher`] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	[`weapon_grenadelauncher_smoke`] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	[`weapon_minigun`] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	[`weapon_firework`] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	[`weapon_railgun`] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	[`weapon_hominglauncher`] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	[`weapon_compactlauncher`] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact grenade launcher'},
	[`weapon_rayminigun`]			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Weapon Rayminigun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Rayminigun'},

    -- Throwables
	[`weapon_grenade`] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld throwable bomb'},
	[`weapon_bzgas`] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A cannister of gas that causes extreme pain'},
	[`weapon_molotov`] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	[`weapon_stickybomb`] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	[`weapon_proxmine`] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	[`weapon_snowball`] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	[`weapon_pipebomb`] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	[`weapon_ball`] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	[`weapon_smokegrenade`] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge that can be remotely detonated'},
	[`weapon_flare`] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

    -- Miscellaneous
	[`weapon_petrolcan`] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A robust liquid container made from pressed steel'},
	[`weapon_fireextinguisher`] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	[`weapon_hazardcan`]			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Weapon Hazardcan',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Hazardcan'},
}

-- Gangs
QBShared.Gangs = {
	['none'] = {
		label = 'No Gang',
		grades = {
            ['0'] = {
                name = 'Unaffiliated'
            },
        },
	},
	['lostmc'] = {
		label = 'The Lost MC',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['ballas'] = {
		label = 'Ballas',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['vagos'] = {
		label = 'Vagos',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['cartel'] = {
		label = 'Cartel',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['families'] = {
		label = 'Families',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['marabunta'] = {
		label = 'MG13',
		grades = {
            ['0'] = {
                name = 'El Novato'
            },
			['1'] = {
                name = 'Informante'
            },
			['2'] = {
                name = 'El Aspirante'
            },
			['3'] = {
                name = 'Ladón'
            },
			['4'] = {
                name = 'El Matón'
            },
			['5'] = {
                name = 'Asesino'
            },
			['6'] = {
                name = 'Soldado'
            },
			['7'] = {
                name = 'El Protector'
            },
			['8'] = {
                name = 'El Carnicero'
            },
			['9'] = {
                name = 'Recutador'
            },
			['10'] = {
                name = 'La Mano Derecha'
            },
			['11'] = {
                name = 'El Cabeza'
            },
			['12'] = {
                name = 'El Patrón',
				isboss = true
            },
        },
	},
	['rooks'] = {
		label = 'Rooks',
		grades = {
            ['0'] = {
                name = 'Prospects'
            },
			['1'] = {
                name = 'Member'
            },
			['2'] = {
                name = 'Treasurer'
            },
			['3'] = {
                name = 'Secretary'
            },
			['4'] = {
                name = 'Road Captain'
            },
			['5'] = {
                name = 'Sergeant At Arms'
            },
			['6'] = {
                name = 'Vice President'
            },
			['7'] = {
                name = 'President',
				isboss = true
            },
        },
	}
}

-- Jobs
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law ',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 20
            },
			['1'] = {
                name = 'Officer',
                payment = 25
            },
			['2'] = {
                name = 'Officer First Class',
                payment = 25
            },
			['3'] = {
                name = 'Detective',
                payment = 30
            },
			['4'] = {
                name = 'Corporal',
                payment = 40
            },
			['5'] = {
                name = 'Sergeant',
                payment = 50
            },
			['6'] = {
                name = 'Staff Sergeant',
                payment = 75
            },
			['7'] = {
                name = 'Sergeant Major',
                payment = 100
            },
			['8'] = {
                name = 'Second Lieutenant',
                payment = 125
            },
			['9'] = {
                name = 'Lieutenant',
                payment = 150
            },
			['10'] = {
                name = 'Captain',
                payment = 175
            },
			['11'] = {
                name = 'Inspector',
                payment = 200
            },
			['12'] = {
                name = 'Deputy Chief',
                payment = 225
            },
			['13'] = {
                name = 'Chief',
				isboss = true,
                payment = 250
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Paramedic',
                payment = 100
            },
			['2'] = {
                name = 'Doctor',
                payment = 150
            },
			['3'] = {
                name = 'Surgeon',
                payment = 200
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 250
            },
        },
	},
	['fbi'] = {
		label = 'Federal Bureau of Investigation',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
			['1'] = {
                name = 'Executive Agent',
                payment = 100
            },
			['2'] = {
                name = 'Special Agent in-Charge',
                payment = 250
            },
			['3'] = {
                name = 'Special Agent L3',
                payment = 500
            },
			['4'] = {
                name = 'General',
				isboss = true,
                payment = 1000
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'House Sales',
                payment = 0
            },
			['2'] = {
                name = 'Business Sales',
                payment = 0
            },
			['3'] = {
                name = 'Broker',
                payment = 0
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 0
            },
        },
	},
	['vu'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Trainee',
				payment = 0
			},
			['1'] = {
				name = 'Employee',
				payment = 0
			},
			['2'] = {
				name = 'Management',
				isboss = true,
				payment = 0
			},
		},
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'Driver',
                payment = 0
            },
			['2'] = {
                name = 'Event Driver',
                payment = 0
            },
			['3'] = {
                name = 'Sales',
                payment = 0
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 0
            },
        },
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 0
            },
			['2'] = {
                name = 'Business Sales',
                payment = 0
            },
			['3'] = {
                name = 'Finance',
                payment = 0
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 0
            },
        },
	},
	["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 0
            },
			['1'] = {
                name = "Employee",
                payment = 0
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 0
            },
			['3'] = {
                name = "Manager",
                payment = 0
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 0
            },
        },
	},
	["dealership"] = {
		label = "Autohändler",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Prakikant",
                payment = 0
            },
			['1'] = {
                name = "Verkäufer",
                payment = 0
            },
			['2'] = {
                name = "Senior Verkäufer",
                payment = 0
            },
			['3'] = {
                name = "Finazen",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["mechanic"] = {
		label = "Mechanic",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["bennys"] = {
		label = "Benny's",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["tuner"] = {
		label = "Tuner",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Prospect",
            },
			['1'] = {
                name = "Member",
            },
			['2'] = {
                name = "Freund",
            },
			['3'] = {
                name = "Familie",
            },
			['1'] = {
                name = "VIP",
				isboss = true,
            },
        },
	},
	['lsfd'] = {
        label = 'lsfd',
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Officer',
                payment = 100
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 150
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 200
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 250
            },
        },
    },
	["sunrise"] = {
		label = "Sunrise Autos",
		defaultDuty = true,
		grades = {
			['1'] = {
                name = "Manager",
				isboss = true,
            },
        },
	},
	['custommotors'] = {
		label = "Custom Motors",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 0
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 0
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 0
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 0
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 0
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 0
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 0
            },
        },
	},
	['bus'] = {
		label = 'Busjob',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 0
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 0
            },
        },
	},
}

-- Vehicles
QBShared.Vehicles = {
	['blista'] = {
		['name'] = 'Blista',
		['brand'] = 'Dinka',
		['model'] = 'blista',
		['price'] = 13000,
		['category'] = 'compacts',
		['hash'] = `blista`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['club'] = {
		['name'] = 'Club',
		['brand'] = 'BF',
		['model'] = 'club',
		['price'] = 8000,
		['category'] = 'compacts',
		['hash'] = `club`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['dilettante'] = {
		['name'] = 'Dilettante',
		['brand'] = 'Karin',
		['model'] = 'dilettante',
		['price'] = 9000,
		['category'] = 'compacts',
		['hash'] = `dilettante`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['dilettante2'] = {
		['name'] = 'Dilettante Patrol',
		['brand'] = 'Karin',
		['model'] = 'dilettante2',
		['price'] = 12000,
		['category'] = 'compacts',
		['hash'] = `dilettante2`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['kanjo'] = {
		['name'] = 'Blista Kanjo',
		['brand'] = 'Dinka',
		['model'] = 'kanjo',
		['price'] = 12000,
		['category'] = 'compacts',
		['hash'] = `kanjo`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['issi2'] = {
		['name'] = 'Issi',
		['brand'] = 'Weeny',
		['model'] = 'issi2',
		['price'] = 7000,
		['category'] = 'compacts',
		['hash'] = `issi2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['issi3'] = {
		['name'] = 'Issi Classic',
		['brand'] = 'Weeny',
		['model'] = 'issi3',
		['price'] = 5000,
		['category'] = 'compacts',
		['hash'] = `issi3`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['issi4'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi4',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = `issi4`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['issi5'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi5',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = `issi5`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['issi6'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi6',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = `issi6`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['panto'] = {
		['name'] = 'Panto',
		['brand'] = 'Benefactor',
		['model'] = 'panto',
		['price'] = 3200,
		['category'] = 'compacts',
		['hash'] = `panto`,
		['shop'] = 'pdm',
		["trunkspace"] = 2500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['prairie'] = {
		['name'] = 'Prairie',
		['brand'] = 'Bollokan',
		['model'] = 'prairie',
		['price'] = 30000,
		['category'] = 'compacts',
		['hash'] = `prairie`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['rhapsody'] = {
		['name'] = 'Rhapsody',
		['brand'] = 'Declasse',
		['model'] = 'rhapsody',
		['price'] = 10000,
		['category'] = 'compacts',
		['hash'] = `rhapsody`,
		['shop'] = 'pdm',
		["trunkspace"] = 6500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['brioso2'] = {
		['name'] = 'Brioso 300',
		['brand'] = 'Grotti',
		['model'] = 'brioso2',
		['price'] = 12000,
		['category'] = 'compacts',
		['hash'] = `brioso2`,
		['shop'] = 'pdm',
		["trunkspace"] = 2500, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['weevil'] = {
		['name'] = 'Weevil',
		['brand'] = 'BF',
		['model'] = 'weevil',
		['price'] = 9000,
		['category'] = 'compacts',
		['hash'] = `weevil`,
		['shop'] = 'pdm',
		["trunkspace"] = 4000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	--- Coupes
	['cogcabrio'] = {
		['name'] = 'Cognoscenti Cabrio',
		['brand'] = 'Enus',
		['model'] = 'cogcabrio',
		['price'] = 30000,
		['category'] = 'coupes',
		['hash'] = `cogcabrio`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['exemplar'] = {
		['name'] = 'Exemplar',
		['brand'] = 'Dewbauchee',
		['model'] = 'exemplar',
		['price'] = 40000,
		['category'] = 'offroad',
		['model'] = 'brawler',
		['hash'] = `brawler`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['brioso'] = {
		['name'] = 'Brioso R/A',
		['brand'] = 'Grotti',
		['model'] = 'brioso',
		['price'] = 20000,
		['category'] = 'compacts',
		['hash'] = `brioso`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['btype'] = {              --meme car that goes pretty fast
		['name'] = 'Roosevelt',
		['brand'] = 'Albany',
		['model'] = 'btype',
		['price'] = 75000,
		['category'] = 'sportsclassics',
		['hash'] = `btype`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['f620'] = {
		['name'] = 'F620',
		['brand'] = 'Ocelot',
		['model'] = 'f620',
		['price'] = 32500,
		['category'] = 'coupes',
		['hash'] = `f620`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['felon'] = {
		['name'] = 'Felon',
		['brand'] = 'Lampadati',
		['model'] = 'felon',
		['price'] = 31000,
		['category'] = 'coupes',
		['hash'] = `felon`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['felon2'] = {
		['name'] = 'Felon GT',
		['brand'] = 'Lampadati',
		['model'] = 'felon2',
		['price'] = 37000,
		['category'] = 'coupes',
		['hash'] = `felon2`,
		['shop'] = 'pdm',
		["trunkspace"] = 12000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['jackal'] = {
		['name'] = 'Jackal',
		['brand'] = 'Ocelot',
		['model'] = 'jackal',
		['price'] = 19000,
		['category'] = 'coupes',
		['hash'] = `jackal`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['buffalo'] = {
		['name'] = 'Buffalo',
		['brand'] = 'Bravado',
		['model'] = 'buffalo',
		['price'] = 18750,
		['category'] = 'sports',
		['hash'] = `buffalo`,
		["trunkspace"] = 17500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['oracle'] = {
		['name'] = 'Oracle',
		['brand'] = 'Ubermacht',
		['model'] = 'oracle',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = `oracle`,
		['shop'] = 'pdm',
		["trunkspace"] = 18000, -- 20kg 
        ["trunkslots"] = 13, -- 5 slots
	},
	['oracle2'] = {
		['name'] = 'Oracle XS',
		['brand'] = 'Übermacht',
		['model'] = 'oracle2',
		['price'] = 28000,
		['category'] = 'coupes',
		['hash'] = `oracle2`,
		['shop'] = 'pdm',
		["trunkspace"] = 19000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sentinel'] = {
		['name'] = 'Sentinel',
		['brand'] = 'Übermacht',
		['model'] = 'sentinel',
		['price'] = 30000,
		['category'] = 'coupes',
		['hash'] = `sentinel`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['burrito3'] = {
		['name'] = 'Burrito',
		['brand'] = 'Declasse',
		['model'] = 'burrito3',
		['price'] = 200000,
		['category'] = 'vans',
		['hash'] = `burrito3`,
		['shop'] = 'pdm',
		["trunkspace"] = 200000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['windsor'] = {
		['name'] = 'Windsor',
		['brand'] = 'Enus',
		['model'] = 'windsor',
		['price'] = 27000,
		['category'] = 'coupes',
		['hash'] = `windsor`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['windsor2'] = {
		['name'] = 'Windsor Drop',
		['brand'] = 'Enus',
		['model'] = 'windsor2',
		['price'] = 34000,
		['category'] = 'coupes',
		['hash'] = `windsor2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['zion'] = {
		['name'] = 'Zion',
		['brand'] = 'Übermacht',
		['model'] = 'zion',
		['price'] = 22000,
		['category'] = 'coupes',
		['hash'] = `zion`,
		['shop'] = 'pdm',
		["trunkspace"] = 13500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['zion2'] = {
		['name'] = 'Zion Cabrio',
		['brand'] = 'Übermacht',
		['model'] = 'zion2',
		['price'] = 28000,
		['category'] = 'coupes',
		['hash'] = `zion2`,
		['shop'] = 'pdm',
		["trunkspace"] = 14000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['previon'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Previon',
		['brand'] = 'Karin',
		['model'] = 'previon',
		['price'] = 149000,
		['category'] = 'coupes',
		['hash'] = `previon`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	--- Cycles
	['bmx'] = {
		['name'] = 'BMX',
		['model'] = 'bmx',
		['price'] = 160,
		['category'] = 'cycles',
		['hash'] = `bmx`,
		['shop'] = 'pdm',	
	},
	['cruiser'] = {
		['name'] = 'Cruiser',
		['model'] = 'cruiser',
		['price'] = 510,
		['category'] = 'cycles',
		['hash'] = `cruiser`,
		['shop'] = 'pdm',
	},
	['fixter'] = {
		['name'] = 'Fixter',
		['model'] = 'fixter',
		['price'] = 225,
		['category'] = 'cycles',
		['hash'] = `fixter`,
		['shop'] = 'pdm',
	},
	['scorcher'] = {
		['name'] = 'Scorcher',
		['model'] = 'scorcher',
		['price'] = 280,
		['category'] = 'cycles',
		['hash'] = `scorcher`,
		['shop'] = 'pdm',
	},
	['tribike'] = {
		['name'] = 'Tri Bike',
		['model'] = 'tribike',
		['price'] = 500,
		['category'] = 'cycles',
		['hash'] = `tribike`,
		['shop'] = 'pdm',
	},
	['tribike2'] = {
		['name'] = 'Tri Bike 2',
		['model'] = 'tribike2',
		['price'] = 700,
		['category'] = 'cycles',
		['hash'] = `tribike2`,
		['shop'] = 'pdm',
	},
	['tribike3'] = {
		['name'] = 'Tri Bike 3',
		['model'] = 'tribike3',
		['price'] = 520,
		['category'] = 'cycles',
		['hash'] = `tribike3`,
		['shop'] = 'pdm',
	},
	--- Motorcycles
	['akuma'] = {
		['name'] = 'Akuma',
		['brand'] = 'Dinka',
		['model'] = 'akuma',
		['price'] = 55000,
		['category'] = 'motorcycles',
		['hash'] = `akuma`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 3, -- 5 slots
	},
	['avarus'] = {
		['name'] = 'Avarus',
		['brand'] = 'LCC',
		['model'] = 'avarus',
		['price'] = 20000,
		['category'] = 'motorcycles',
		['hash'] = `avarus`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['bagger'] = {
		['name'] = 'Bagger',
		['brand'] = 'WMC',
		['model'] = 'bagger',
		['price'] = 13500,
		['category'] = 'motorcycles',
		['hash'] = `bagger`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['bati'] = {
		['name'] = 'Bati 801',
		['brand'] = 'Pegassi',
		['model'] = 'bati',
		['price'] = 24000,
		['category'] = 'motorcycles',
		['hash'] = `bati`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['bati2'] = {
		['name'] = 'Bati 801RR',
		['brand'] = 'Pegassi',
		['model'] = 'bati2',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = `bati2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['bf400'] = {
		['name'] = 'BF400',
		['brand'] = 'Nagasaki',
		['model'] = 'bf400',
		['price'] = 22000,
		['category'] = 'motorcycles',
		['hash'] = `bf400`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['carbonrs'] = {
		['name'] = 'Carbon RS',
		['brand'] = 'Nagasaki',
		['model'] = 'carbonrs',
		['price'] = 22000,
		['category'] = 'motorcycles',
		['hash'] = `carbonrs`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['chimera'] = {
		['name'] = 'Chimera',
		['brand'] = 'Nagasaki',
		['model'] = 'chimera',
		['price'] = 21000,
		['category'] = 'motorcycles',
		['hash'] = `chimera`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['cliffhanger'] = {
		['name'] = 'Cliffhanger',
		['brand'] = 'Western',
		['model'] = 'cliffhanger',
		['price'] = 28500,
		['category'] = 'motorcycles',
		['hash'] = `cliffhanger`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['daemon'] = {
		['name'] = 'Daemon',
		['brand'] = 'WMC',
		['model'] = 'daemon',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = `daemon`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['daemon2'] = {
		['name'] = 'Daemon Custom',
		['brand'] = 'Western',
		['model'] = 'daemon2',
		['price'] = 23000,
		['category'] = 'motorcycles',
		['hash'] = `daemon2`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['defiler'] = {
		['name'] = 'Defiler',
		['brand'] = 'Shitzu',
		['model'] = 'defiler',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = `defiler`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['dominator'] = {
		['name'] = 'Dominator',
		['brand'] = 'Vapid',
		['model'] = 'dominator',
		['price'] = 62500,
		['category'] = 'muscle',
		['hash'] = `dominator`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['deathbike2'] = {							--DLC
		['name'] = 'deathbike2',
		['brand'] = 'deathbike',
		['model'] = 'deathbike2',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = `deathbike2`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['deathbike3'] = {							--DLC
		['name'] = 'deathbike3',
		['brand'] = 'deathbike',
		['model'] = 'deathbike3',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = `deathbike3`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['diablous'] = {
		['name'] = 'Diablous',
		['brand'] = 'Principe',
		['model'] = 'diablous',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = `diablous`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['diablous2'] = {
		['name'] = 'Diablous Custom',
		['brand'] = 'Principe',
		['model'] = 'diablous2',
		['price'] = 38000,
		['category'] = 'motorcycles',
		['hash'] = `diablous2`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['double'] = {
		['name'] = 'Double-T',
		['brand'] = 'Dinka',
		['model'] = 'double',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = `double`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['enduro'] = {
		['name'] = 'Enduro',
		['brand'] = 'Dinka',
		['model'] = 'enduro',
		['price'] = 5500,
		['category'] = 'motorcycles',
		['hash'] = `enduro`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['esskey'] = {
		['name'] = 'Esskey',
		['brand'] = 'Pegassi',
		['model'] = 'esskey',
		['price'] = 12000,
		['category'] = 'motorcycles',
		['hash'] = `esskey`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['faggio'] = {
		['name'] = 'Faggio Sport',
		['brand'] = 'Pegassi',
		['model'] = 'faggio',
		['price'] = 2000,
		['category'] = 'motorcycles',
		['hash'] = `faggio`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['faggio2'] = {
		['name'] = 'Faggio',
		['brand'] = 'Pegassi',
		['model'] = 'faggio2',
		['price'] = 1900,
		['category'] = 'motorcycles',
		['hash'] = `faggio2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['faggio3'] = {
		['name'] = 'Faggio Mod',
		['brand'] = 'Pegassi',
		['model'] = 'faggio3',
		['price'] = 2500,
		['category'] = 'motorcycles',
		['hash'] = `faggio3`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['fcr'] = {
		['name'] = 'FCR 1000',
		['brand'] = 'Pegassi',
		['model'] = 'fcr',
		['price'] = 5000,
		['category'] = 'motorcycles',
		['hash'] = `fcr`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['fcr2'] = {
		['name'] = 'FCR 1000 Custom',
		['brand'] = 'Pegassi',
		['model'] = 'fcr2',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = `fcr2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['gargoyle'] = {
		['name'] = 'Gargoyle',
		['brand'] = 'Western',
		['model'] = 'gargoyle',
		['price'] = 32000,
		['category'] = 'motorcycles',
		['hash'] = `gargoyle`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['hakuchou'] = {
		['name'] = 'Hakuchou',
		['brand'] = 'Shitzu',
		['model'] = 'hakuchou',
		['price'] = 17000,
		['category'] = 'motorcycles',
		['hash'] = `hakuchou`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['hakuchou2'] = {
		['name'] = 'Hakuchou Drag',
		['brand'] = 'Shitzu',
		['model'] = 'hakuchou2',
		['price'] = 45000,
		['category'] = 'motorcycles',
		['hash'] = `hakuchou2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['hexer'] = {
		['name'] = 'Hexer',
		['brand'] = 'LCC',
		['model'] = 'hexer',
		['price'] = 16000,
		['category'] = 'motorcycles',
		['hash'] = `hexer`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['innovation'] = {
		['name'] = 'Innovation',
		['brand'] = 'LLC',
		['model'] = 'innovation',
		['price'] = 33500,
		['category'] = 'motorcycles',
		['hash'] = `innovation`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['lectro'] = {
		['name'] = 'Lectro',
		['brand'] = 'Principe',
		['model'] = 'lectro',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = `lectro`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['manchez'] = {
		['name'] = 'Manchez',
		['brand'] = 'Maibatsu',
		['model'] = 'manchez',
		['price'] = 8300,
		['category'] = 'motorcycles',
		['hash'] = `manchez`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['nemesis'] = {
		['name'] = 'Nemesis',
		['brand'] = 'Principe',
		['model'] = 'nemesis',
		['price'] = 20000,
		['category'] = 'motorcycles',
		['hash'] = `nemesis`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['nightblade'] = {
		['name'] = 'Nightblade',
		['brand'] = 'WMC',
		['model'] = 'nightblade',
		['price'] = 23000,
		['category'] = 'motorcycles',
		['hash'] = `nightblade`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['oppressor'] = {
		['name'] = 'Oppressor',
		['brand'] = 'Pegassi',
		['model'] = 'oppressor',
		['price'] = 9999999,
		['category'] = 'super',
		['hash'] = `oppressor`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['pcj'] = {
		['name'] = 'PCJ-600',
		['brand'] = 'Shitzu',
		['model'] = 'pcj',
		['price'] = 15000,
		['category'] = 'motorcycles',
		['hash'] = `pcj`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['ratbike'] = {
		['name'] = 'Rat Bike',
		['brand'] = 'Western',
		['model'] = 'ratbike',
		['price'] = 3000,
		['category'] = 'motorcycles',
		['hash'] = `ratbike`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['ruffian'] = {
		['name'] = 'Ruffian',
		['brand'] = 'Pegassi',
		['model'] = 'ruffian',
		['price'] = 25000,
		['category'] = 'motorcycles',
		['hash'] = `ruffian`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['sanchez'] = {
		['name'] = 'Sanchez Livery',
		['brand'] = 'Maibatsu',
		['model'] = 'sanchez',
		['price'] = 5300,
		['category'] = 'motorcycles',
		['hash'] = `sanchez`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['sanchez2'] = {
		['name'] = 'Sanchez',
		['brand'] = 'Maibatsu',
		['model'] = 'sanchez2',
		['price'] = 5300,
		['category'] = 'motorcycles',
		['hash'] = `sanchez2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['sanctus'] = {
		['name'] = 'Sanctus',
		['brand'] = 'LCC',
		['model'] = 'sanctus',
		['price'] = 35000,
		['category'] = 'motorcycles',
		['hash'] = `sanctus`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['shotaro'] = {
		['name'] = 'Shotaro Concept',
		['brand'] = 'Nagasaki',
		['model'] = 'shotaro',
		['price'] = 320000,
		['category'] = 'motorcycles',
		['hash'] = `shotaro`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['sovereign'] = {
		['name'] = 'Sovereign',
		['brand'] = 'WMC',
		['model'] = 'sovereign',
		['price'] = 8000,
		['category'] = 'motorcycles',
		['hash'] = `sovereign`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['stryder'] = {
		['name'] = 'Stryder',
		['brand'] = 'Nagasaki',
		['model'] = 'stryder',
		['price'] = 50000,
		['category'] = 'motorcycles',
		['hash'] = `stryder`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['thrust'] = {
		['name'] = 'Thrust',
		['brand'] = 'Dinka',
		['model'] = 'thrust',
		['price'] = 22000,
		['category'] = 'motorcycles',
		['hash'] = `thrust`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['vader'] = {
		['name'] = 'Vader',
		['brand'] = 'Shitzu',
		['model'] = 'vader',
		['price'] = 7200,
		['category'] = 'motorcycles',
		['hash'] = `vader`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['vindicator'] = {
		['name'] = 'Vindicator',
		['brand'] = 'Dinka',
		['model'] = 'vindicator',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = `vindicator`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['vortex'] = {
		['name'] = 'Vortex',
		['brand'] = 'Pegassi',
		['model'] = 'vortex',
		['price'] = 31000,
		['category'] = 'motorcycles',
		['hash'] = `vortex`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['wolfsbane'] = {
		['name'] = 'Wolfsbane',
		['brand'] = 'Western',
		['model'] = 'wolfsbane',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = `wolfsbane`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['zombiea'] = {
		['name'] = 'Zombie Bobber',
		['brand'] = 'Western',
		['model'] = 'zombiea',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = `zombiea`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['zombieb'] = {
		['name'] = 'Zombie Chopper',
		['brand'] = 'Western',
		['model'] = 'zombieb',
		['price'] = 27000,
		['category'] = 'motorcycles',
		['hash'] = `zombieb`,
		['shop'] = 'pdm',
		["trunkspace"] = 2000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['manchez2'] = {
		['name'] = 'Manchez',
		['brand'] = 'Maibatsu',
		['model'] = 'manchez2',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = `manchez2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	--- Muscle
	['blade'] = {
		['name'] = 'Blade',
		['brand'] = 'Vapid',
		['model'] = 'blade',
		['price'] = 23500,
		['category'] = 'muscle',
		['hash'] = `blade`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['buccaneer'] = {
		['name'] = 'Buccaneer',
		['brand'] = 'Albany',
		['model'] = 'buccaneer',
		['price'] = 22500,
		['category'] = 'muscle',
		['hash'] = `buccaneer`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['buccaneer2'] = {
		['name'] = 'Buccaneer Rider',
		['brand'] = 'Albany',
		['model'] = 'buccaneer2',
		['price'] = 24500,
		['category'] = 'muscle',
		['hash'] = `buccaneer2`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['chino'] = {
		['name'] = 'Chino',
		['brand'] = 'Vapid',
		['model'] = 'chino',
		['price'] = 5000,
		['category'] = 'muscle',
		['hash'] = `chino`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['chino2'] = {
		['name'] = 'Chino Luxe',
		['brand'] = 'Vapid',
		['model'] = 'chino2',
		['price'] = 8000,
		['category'] = 'muscle',
		['hash'] = `chino2`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['clique'] = {							--DLC
		['name'] = 'Clique',
		['brand'] = 'Vapid',
		['model'] = 'clique',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = `clique`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['coquette3'] = {
		['name'] = 'Coquette BlackFin',
		['brand'] = 'Invetero',
		['model'] = 'coquette3',
		['price'] = 180000,
		['category'] = 'muscle',
		['hash'] = `coquette3`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['deviant'] = {							--DLC
		['name'] = 'Deviant',
		['brand'] = 'Schyster',
		['model'] = 'deviant',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = `deviant`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['dominator'] = {
		['name'] = 'Dominator',
		['brand'] = 'Vapid',
		['model'] = 'dominator',
		['price'] = 62500,
		['category'] = 'muscle',
		['hash'] = `dominator`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['dominator2'] = {
		['name'] = 'Pißwasser Dominator',
		['brand'] = 'Vapid',
		['model'] = 'dominator2',
		['price'] = 50000,
		['category'] = 'muscle',
		['hash'] = `dominator2`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['dominator3'] = {
		['name'] = 'Dominator GTX',
		['brand'] = 'Vapid',
		['model'] = 'dominator3',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = `dominator3`,
		['shop'] = 'pdm',
		["trunkspace"] = 13500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['dominator4'] = {							--DLC
		['name'] = 'Dominator Arena',
		['brand'] = 'Vapid',
		['model'] = 'dominator4',
		['price'] = 200000,
		['category'] = 'muscle',
		['hash'] = `dominator4`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['dominator7'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Dominator ASP',
		['brand'] = 'Vapid',
		['model'] = 'dominator7',
		['price'] = 110000,
		['category'] = 'muscle',
		['hash'] = `dominator7`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['dominator8'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Dominator GTT',
		['brand'] = 'Vapid',
		['model'] = 'dominator8',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = `dominator8`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 7, -- 5 slots
	},
	['dukes'] = {
		['name'] = 'Dukes',
		['brand'] = 'Imponte',
		['model'] = 'dukes',
		['price'] = 23500,
		['category'] = 'muscle',
		['hash'] = `dukes`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 7, -- 5 slots
	},
	['dukes2'] = {
		['name'] = 'Dukes Nightrider',
		['brand'] = 'Imponte',
		['model'] = 'dukes2',
		['price'] = 60000,
		['category'] = 'muscle',
		['hash'] = `dukes2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['dukes3'] = {
		['name'] = 'Beater Dukes',
		['brand'] = 'Imponte',
		['model'] = 'dukes3',
		['price'] = 45000,
		['category'] = 'muscle',
		['hash'] = `dukes3`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['faction'] = {
		['name'] = 'Faction',
		['brand'] = 'Willard',
		['model'] = 'faction',
		['price'] = 17000,
		['category'] = 'muscle',
		['hash'] = `faction`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['faction2'] = {
		['name'] = 'Faction Rider',
		['brand'] = 'Willard',
		['model'] = 'faction2',
		['price'] = 19000,
		['category'] = 'muscle',
		['hash'] = `faction2`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['faction3'] = {
		['name'] = 'Faction Custom Donk',
		['brand'] = 'Willard',
		['model'] = 'faction3',
		['price'] = 35000,
		['category'] = 'muscle',
		['hash'] = `faction3`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 7, -- 5 slots
	},
	['ellie'] = {
		['name'] = 'Ellie',
		['brand'] = 'Vapid',
		['model'] = 'ellie',
		['price'] = 42250,
		['category'] = 'muscle',
		['hash'] = `ellie`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['gauntlet'] = {
		['name'] = 'Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet',
		['price'] = 28500,
		['category'] = 'muscle',
		['hash'] = `gauntlet`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['gauntlet2'] = {
		['name'] = 'Redwood Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet2',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = `gauntlet2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['gauntlet3'] = {							--DLC
		['name'] = 'Classic Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet3',
		['price'] = 75000,
		['category'] = 'muscle',
		['hash'] = `gauntlet3`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 7, -- 5 slots
	},
	['gauntlet4'] = {							--DLC
		['name'] = 'Gauntlet Hellfire',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet4',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = `gauntlet4`,
		['shop'] = 'pdm',
		["trunkspace"] = 13000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['gauntlet5'] = {
		['name'] = 'Gauntlet Classic Custom',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet5',
		['price'] = 120000,
		['category'] = 'muscle',
		['hash'] = `gauntlet5`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['hermes'] = {
		['name'] = 'Hermes',
		['brand'] = 'Albany',
		['model'] = 'hermes',
		['price'] = 535000,
		['category'] = 'muscle',
		['hash'] = `hermes`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 3, -- 5 slots
	},
	['hotknife'] = {
		['name'] = 'Hotknife',
		['brand'] = 'Vapid',
		['model'] = 'hotknife',
		['price'] = 90000,
		['category'] = 'muscle',
		['hash'] = `hotknife`,
		['shop'] = 'pdm',
		["trunkspace"] = 3500, -- 20kg 
        ["trunkslots"] = 3, -- 5 slots
	},
	['hustler'] = {
		['name'] = 'Hustler',
		['brand'] = 'Vapid',
		['model'] = 'hustler',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `hustler`,
		['shop'] = 'pdm',
		["trunkspace"] = 4000, -- 20kg 
        ["trunkslots"] = 4, -- 5 slots
	},
	['impaler'] = {							--DLC
		['name'] = 'impaler',
		['brand'] = 'Vapid',
		['model'] = 'impaler',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `impaler`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['impaler2'] = {							--DLC
		['name'] = 'impaler2',
		['brand'] = 'Vapid',
		['model'] = 'impaler2',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `impaler2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['impaler3'] = {							--DLC
		['name'] = 'impaler3',
		['brand'] = 'Vapid',
		['model'] = 'impaler3',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `impaler3`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['impaler4'] = {							--DLC
		['name'] = 'impaler4',
		['brand'] = 'Vapid',
		['model'] = 'impaler4',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `impaler4`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['imperator'] = {							--DLC
		['name'] = 'imperator',
		['brand'] = 'Vapid',
		['model'] = 'imperator',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `imperator`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['imperator2'] = {							--DLC
		['name'] = 'imperator2',
		['brand'] = 'Vapid',
		['model'] = 'imperator2',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `imperator2`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['imperator3'] = {							--DLC
		['name'] = 'imperator3',
		['brand'] = 'Vapid',
		['model'] = 'imperator3',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = `imperator3`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['lurcher'] = {
		['name'] = 'Gauntlet Classic Custom',
		['brand'] = 'Bravado',
		['model'] = 'lurcher',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = `lurcher`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 7, -- 5 slots
	},
	['moonbeam'] = {
		['name'] = 'Moonbeam',
		['brand'] = 'Declasse',
		['model'] = 'moonbeam',
		['price'] = 13000,
		['category'] = 'vans',
		['hash'] = `moonbeam`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['moonbeam2'] = {
		['name'] = 'Moonbeam Custom',
		['brand'] = 'Declasse',
		['model'] = 'moonbeam2',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = `moonbeam2`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['nightshade'] = {
		['name'] = 'Nightshade',
		['brand'] = 'Imponte',
		['model'] = 'nightshade',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = `nightshade`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['peyote2'] = {							--DLC
		['name'] = 'Peyote Gasser',
		['brand'] = 'Vapid',
		['model'] = 'peyote2',
		['price'] = 40000,
		['category'] = 'sportsclassic',
		['hash'] = `peyote2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['phoenix'] = {
		['name'] = 'Phoenix',
		['brand'] = 'Imponte',
		['model'] = 'phoenix',
		['price'] = 65000,
		['category'] = 'muscle',
		['hash'] = `phoenix`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['picador'] = {
		['name'] = 'Picador',
		['brand'] = 'Cheval',
		['model'] = 'picador',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = `picador`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ratloader2'] = {
		['name'] = 'ratloader2',
		['brand'] = 'Ratloader2',
		['model'] = 'ratloader2',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = `ratloader2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['ruiner'] = {
		['name'] = 'Ruiner',
		['brand'] = 'Imponte',
		['model'] = 'ruiner',
		['price'] = 29000,
		['category'] = 'muscle',
		['hash'] = `ruiner`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['ruiner2'] = {
		['name'] = 'Ruiner 2000',
		['brand'] = 'Imponte',
		['model'] = 'ruiner2',
		['price'] = 50000,
		['category'] = 'muscle',
		['hash'] = `ruiner2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['sabregt'] = {
		['name'] = 'Sabre Turbo',
		['brand'] = 'Declasse',
		['model'] = 'sabregt',
		['price'] = 23000,
		['category'] = 'muscle',
		['hash'] = `sabregt`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['sabregt2'] = {
		['name'] = 'Sabre GT',
		['brand'] = 'Declasse',
		['model'] = 'sabregt2',
		['price'] = 26500,
		['category'] = 'muscle',
		['hash'] = `sabregt2`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['slamvan'] = {
		['name'] = 'Slam Van',
		['brand'] = 'Vapid',
		['model'] = 'slamvan',
		['price'] = 30000,
		['category'] = 'muscle',
		['hash'] = `slamvan`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['slamvan2'] = {
		['name'] = 'Lost Slam Van',
		['brand'] = 'Vapid',
		['model'] = 'slamvan2',
		['price'] = 90000,
		['category'] = 'muscle',
		['hash'] = `slamvan2`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['slamvan3'] = {
		['name'] = 'Slam Van Custom',
		['brand'] = 'Vapid',
		['model'] = 'slamvan3',
		['price'] = 17000,
		['category'] = 'muscle',
		['hash'] = `slamvan3`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['stalion'] = {
		['name'] = 'Stallion',
		['brand'] = 'Declasse',
		['model'] = 'stalion',
		['price'] = 33000,
		['category'] = 'muscle',
		['hash'] = `stalion`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['stalion2'] = {
		['name'] = 'Stallion Burgershot',
		['brand'] = 'Declasse',
		['model'] = 'stalion2',
		['price'] = 40000,
		['category'] = 'muscle',
		['hash'] = `stalion2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['tampa'] = {
		['name'] = 'Tampa',
		['brand'] = 'Declasse',
		['model'] = 'tampa',
		['price'] = 24500,
		['category'] = 'muscle',
		['hash'] = `tampa`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['tulip'] = {							--DLC
		['name'] = 'Tulip',
		['brand'] = 'Declasse',
		['model'] = 'tulip',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = `tulip`,
		['shop'] = 'pdm',
		["trunkspace"] = 14500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['vamos'] = {							--DLC
		['name'] = 'Vamos',
		['brand'] = 'Declasse',
		['model'] = 'vamos',
		['price'] = 30000,
		['category'] = 'muscle',
		['hash'] = `vamos`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['vigero'] = {
		['name'] = 'Vigero',
		['brand'] = 'Declasse',
		['model'] = 'vigero',
		['price'] = 39500,
		['category'] = 'muscle',
		['hash'] = `vigero`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['virgo'] = {
		['name'] = 'Virgo',
		['brand'] = 'Albany',
		['model'] = 'virgo',
		['price'] = 22000,
		['category'] = 'muscle',
		['hash'] = `virgo`,
		['shop'] = 'pdm',
		["trunkspace"] = 9000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['virgo2'] = {
		['name'] = 'Virgo Custom Classic',
		['brand'] = 'Dundreary',
		['model'] = 'virgo2',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = `virgo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['virgo3'] = {
		['name'] = 'Virgo Custom Classic',
		['brand'] = 'Dundreary',
		['model'] = 'virgo3',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = `virgo3`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['voodoo'] = {
		['name'] = 'Voodoo',
		['brand'] = 'Declasse',
		['model'] = 'voodoo',
		['price'] = 13000,
		['category'] = 'muscle',
		['hash'] = `voodoo`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['yosemite'] = {
		['name'] = 'Yosemite',
		['brand'] = 'Declasse',
		['model'] = 'yosemite',
		['price'] = 19500,
		['category'] = 'muscle',
		['hash'] = `yosemite`,
		['shop'] = 'pdm',
		["trunkspace"] = 50000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['yosemite2'] = {
		['name'] = 'Yosemite Drift',
		['brand'] = 'Declasse',
		['model'] = 'yosemite2',
		['price'] = 55000,
		['category'] = 'muscle',
		['hash'] = `yosemite2`,
		['shop'] = 'pdm',
		["trunkspace"] = 50000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['yosemite3'] = {
		['name'] = 'Yosemite Rancher',
		['brand'] = 'Declasse',
		['price'] = 425000,
		['category'] = 'offroad',
		['model'] = 'yosemite3',
		['hash'] = `yosemite3`,
		['shop'] = 'pdm',
		["trunkspace"] = 57000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	--- Off-Road
	['bfinjection'] = {
		['name'] = 'Bf Injection',
		['brand'] = 'Annis',
		['price'] = 9000,
		['category'] = 'offroad',
		['model'] = 'bfinjection',
		['hash'] = `bfinjection`,
		['shop'] = 'pdm',
		["trunkspace"] = 7000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['bifta'] = {
		['name'] = 'Bifta',
		['brand'] = 'Annis',
		['price'] = 15500,
		['category'] = 'offroad',
		['model'] = 'bifta',
		['hash'] = `bifta`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['blazer'] = {
		['name'] = 'Blazer',
		['price'] = 7500,
		['category'] = 'offroad',
		['model'] = 'blazer',
		['hash'] = `blazer`,
		['shop'] = 'pdm',
		["trunkspace"] = 2500, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['blazer2'] = {
		['name'] = 'Blazer Lifeguard',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer2',
		['price'] = 7000,
		['category'] = 'offroad',
		['hash'] = `blazer2`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['blazer3'] = {
		['name'] = 'Blazer Hot Rod',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer3',
		['price'] = 7000,
		['category'] = 'offroad',
		['hash'] = `blazer3`,
		['shop'] = 'pdm',
		["trunkspace"] = 2500, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['blazer4'] = {
		['name'] = 'Blazer Sport',
		['brand'] = 'Annis',
		['price'] = 9250,
		['category'] = 'offroad',
		['model'] = 'blazer4',
		['hash'] = `blazer4`,
		['shop'] = 'pdm',
		["trunkspace"] = 2500, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['blazer5'] = {
		['name'] = 'Blazer Aqua',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer5',
		['price'] = 40000,
		['category'] = 'offroad',
		['hash'] = `blazer5`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['brawler'] = {
		['name'] = 'Brawler',
		['brand'] = 'Annis',
		['price'] = 40000,
		['category'] = 'offroad',
		['model'] = 'brawler',
		['hash'] = `brawler`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['caracara'] = {
		['name'] = 'Caracara',
		['brand'] = 'Vapid',
		['model'] = 'caracara',
		['price'] = 60000,
		['category'] = 'offroad',
		['hash'] = `caracara`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['caracara2'] = {							--DLC
		['name'] = 'Caracara 4x4',
		['brand'] = 'Vapid',
		['model'] = 'caracara2',
		['price'] = 80000,
		['category'] = 'offroad',
		['hash'] = `caracara2`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['dubsta3'] = {
		['name'] = 'Dubsta 6x6',
		['brand'] = 'Annis',
		['price'] = 34000,
		['category'] = 'offroad',
		['model'] = 'dubsta3',
		['hash'] = `dubsta3`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dune'] = {
		['name'] = 'Dune Buggy',
		['brand'] = 'Annis',
		['price'] = 14000,
		['category'] = 'offroad',
		['model'] = 'dune',
		['hash'] = `dune`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['everon'] = {
		['name'] = 'Everon',
		['brand'] = 'Karin',
		['model'] = 'everon',
		['price'] = 60000,
		['category'] = 'offroad',
		['hash'] = `everon`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['freecrawler'] = {							--DLC
		['name'] = 'Freecrawler',
		['brand'] = 'Canis',
		['model'] = 'freecrawler',
		['price'] = 24000,
		['category'] = 'offroad',
		['hash'] = `freecrawler`,
		['shop'] = 'pdm',
		["trunkspace"] = 16500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['hellion'] = {							--DLC
		['name'] = 'Hellion',
		['brand'] = 'Annis',
		['model'] = 'hellion',
		['price'] = 38000,
		['category'] = 'offroad',
		['hash'] = `hellion`,
		['shop'] = 'pdm',
		["trunkspace"] = 17500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['kalahari'] = {
		['name'] = 'Kalahari',
		['brand'] = 'Canis',
		['model'] = 'kalahari',
		['price'] = 14000,
		['category'] = 'offroad',
		['hash'] = `kalahari`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['kamacho'] = {
		['name'] = 'Kamacho',
		['brand'] = 'Canis',
		['model'] = 'kamacho',
		['price'] = 50000,
		['category'] = 'offroad',
		['hash'] = `kamacho`,
		['shop'] = 'pdm',
		["trunkspace"] = 75000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['mesa3'] = {
		['name'] = 'Mesa Merryweather',
		['brand'] = 'Canis',
		['model'] = 'mesa3',
		['price'] = 400000,
		['category'] = 'offroad',
		['hash'] = `mesa3`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['outlaw'] = {
		['name'] = 'Outlaw',
		['brand'] = 'Nagasaki',
		['model'] = 'outlaw',
		['price'] = 15000,
		['category'] = 'offroad',
		['hash'] = `outlaw`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['rancherxl'] = {
		['name'] = 'Rancher XL',
		['brand'] = 'Declasse',
		['model'] = 'rancherxl',
		['price'] = 24000,
		['category'] = 'offroad',
		['hash'] = `rancherxl`,
		['shop'] = 'pdm',
		["trunkspace"] = 19500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rebel2'] = {
		['name'] = 'Rebel',
		['brand'] = 'Annis',
		['model'] = 'rebel2',
		['price'] = 20000,
		['category'] = 'offroad',
		['hash'] = `rebel2`,
		['shop'] = 'pdm',
		["trunkspace"] = 16500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['riata'] = {
		['name'] = 'Riata',
		['brand'] = 'Vapid',
		['model'] = 'riata',
		['price'] = 380000,
		['category'] = 'offroad',
		['hash'] = `riata`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sandking'] = {
		['name'] = 'Sandking',
		['brand'] = 'Annis',
		['price'] = 25000,
		['category'] = 'offroad',
		['model'] = 'sandking',
		['hash'] = `sandking`,
		['shop'] = 'pdm',
		["trunkspace"] = 50000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sandking2'] = {
		['name'] = 'Sandking SWB',
		['brand'] = 'Annis',
		['price'] = 38000,
		['category'] = 'offroad',
		['model'] = 'sandking2',
		['hash'] = `sandking2`,
		['shop'] = 'pdm',
		["trunkspace"] = 60000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['trophytruck'] = {
		['name'] = 'Trophy Truck',
		['brand'] = 'Annis',
		['price'] = 60000,
		['category'] = 'offroad',
		['model'] = 'trophytruck',
		['hash'] = `trophytruck`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['trophytruck2'] = {
		['name'] = 'Trophy Truck Limited',
		['brand'] = 'Annis',
		['price'] = 80000,
		['category'] = 'offroad',
		['model'] = 'trophytruck2',
		['hash'] = `trophytruck2`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vagrant'] = {
		['name'] = 'Vagrant',
		['brand'] = 'Maxwell',
		['price'] = 50000,
		['category'] = 'offroad',
		['model'] = 'vagrant',
		['hash'] = `vagrant`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['verus'] = {
		['name'] = 'Verus',
		['brand'] = 'Dinka',
		['price'] = 20000,
		['category'] = 'offroad',
		['model'] = 'verus',
		['hash'] = `verus`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['winky'] = {
		['name'] = 'Winky',
		['brand'] = 'Vapid',
		['price'] = 10000,
		['category'] = 'offroad',
		['model'] = 'winky',
		['hash'] = `winky`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	--- SUVs
	['baller'] = {
		['name'] = 'Baller',
		['brand'] = 'Gallivanter',
		['model'] = 'baller',
		['price'] = 22000,
		['category'] = 'suvs',
		['hash'] = `baller`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['baller2'] = {
		['name'] = 'Baller',
		['brand'] = 'Gallivanter',
		['model'] = 'baller2',
		['price'] = 15000,
		['category'] = 'suvs',
		['hash'] = `baller2`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['baller3'] = {
		['name'] = 'Baller LE',
		['brand'] = 'Gallivanter',
		['model'] = 'baller3',
		['price'] = 15000,
		['category'] = 'suvs',
		['hash'] = `baller3`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['baller4'] = {
		['name'] = 'Baller LE LWB',
		['brand'] = 'Gallivanter',
		['model'] = 'baller4',
		['price'] = 29000,
		['category'] = 'suvs',
		['hash'] = `baller4`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['baller5'] = {
		['name'] = 'Baller LE (Armored)',
		['brand'] = 'Gallivanter',
		['model'] = 'baller5',
		['price'] = 78000,
		['category'] = 'suvs',
		['hash'] = `baller5`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['baller6'] = {
		['name'] = 'Baller LE LWB (Armored)',
		['brand'] = 'Gallivanter',
		['model'] = 'baller6',
		['price'] = 82000,
		['category'] = 'suvs',
		['hash'] = `baller6`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bjxl'] = {
		['name'] = 'BeeJay XL',
		['brand'] = 'Karin',
		['model'] = 'bjxl',
		['price'] = 19000,
		['category'] = 'suvs',
		['hash'] = `bjxl`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cavalcade'] = {
		['name'] = 'Cavalcade',
		['brand'] = 'Albany',
		['model'] = 'cavalcade',
		['price'] = 14000,
		['category'] = 'suvs',
		['hash'] = `cavalcade`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cavalcade2'] = {
		['name'] = 'Cavalcade',
		['brand'] = 'Albany',
		['model'] = 'cavalcade2',
		['price'] = 16500,
		['category'] = 'suvs',
		['hash'] = `cavalcade2`,
		['shop'] = 'pdm',
		["trunkspace"] = 27500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['contender'] = {
		['name'] = 'Contender',
		['brand'] = 'Vapid',
		['model'] = 'contender',
		['price'] = 35000,
		['category'] = 'suvs',
		['hash'] = `contender`,
		['shop'] = 'pdm',
		["trunkspace"] = 100000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['dubsta'] = {
		['name'] = 'Dubsta',
		['brand'] = 'Benefactor',
		['model'] = 'dubsta',
		['price'] = 19000,
		['category'] = 'suvs',
		['hash'] = `dubsta`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dubsta2'] = {
		['name'] = 'Dubsta Luxuary',
		['brand'] = 'Benefactor',
		['model'] = 'dubsta2',
		['price'] = 19500,
		['category'] = 'suvs',
		['hash'] = `dubsta2`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['fq2'] = {
		['name'] = 'FQ2',
		['brand'] = 'Fathom',
		['model'] = 'fq2',
		['price'] = 18500,
		['category'] = 'suvs',
		['hash'] = `fq2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['granger'] = {
		['name'] = 'Granger',
		['brand'] = 'Declasse',
		['model'] = 'granger',
		['price'] = 22000,
		['category'] = 'suvs',
		['hash'] = `granger`,
		['shop'] = 'pdm',
		["trunkspace"] = 55000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['gresley'] = {
		['name'] = 'Gresley',
		['brand'] = 'Bravado',
		['model'] = 'gresley',
		['price'] = 25000,
		['category'] = 'suvs',
		['hash'] = `gresley`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['habanero'] = {
		['name'] = 'Habanero',
		['brand'] = 'Emperor',
		['model'] = 'habanero',
		['price'] = 20000,
		['category'] = 'suvs',
		['hash'] = `habanero`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['huntley'] = {
		['name'] = 'Huntley S',
		['brand'] = 'Enus',
		['model'] = 'huntley',
		['price'] = 24500,
		['category'] = 'suvs',
		['hash'] = `huntley`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['landstalker'] = {
		['name'] = 'Landstalker',
		['brand'] = 'Dundreary',
		['model'] = 'landstalker',
		['price'] = 12000,
		['category'] = 'suvs',
		['hash'] = `landstalker`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['landstalker2'] = {
		['name'] = 'Landstalker XL',
		['brand'] = 'Dundreary',
		['model'] = 'landstalker2',
		['price'] = 26000,
		['category'] = 'suvs',
		['hash'] = `landstalker2`,
		['shop'] = 'pdm',
		["trunkspace"] = 50000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mesa'] = {
		['name'] = 'Mesa',
		['brand'] = 'Canis',
		['model'] = 'mesa',
		['price'] = 12000,
		['category'] = 'offroad',
		['hash'] = `mesa`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['novak'] = {							--DLC
		['name'] = 'Novak',
		['brand'] = 'Lampadati',
		['model'] = 'novak',
		['price'] = 70000,
		['category'] = 'suvs',
		['hash'] = `novak`,
		['shop'] = 'pdm',
        ["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['patriot'] = {
		['name'] = 'Patriot',
		['brand'] = 'Mammoth',
		['model'] = 'patriot',
		['price'] = 21000,
		['category'] = 'suvs',
		['hash'] = `patriot`,
		['shop'] = 'pdm',
		["trunkspace"] = 17500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['radi'] = {
		['name'] = 'Radius',
		['brand'] = 'Vapid',
		['model'] = 'radi',
		['price'] = 18000,
		['category'] = 'suvs',
		['hash'] = `radi`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['rebla'] = {
		['name'] = 'Rebla GTS',
		['brand'] = 'Übermacht',
		['model'] = 'rebla',
		['price'] = 21000,
		['category'] = 'suvs',
		['hash'] = `rebla`,
		['shop'] = 'pdm',
		["trunkspace"] = 18500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rocoto'] = {
		['name'] = 'Rocoto',
		['brand'] = 'Obey',
		['model'] = 'rocoto',
		['price'] = 13000,
		['category'] = 'suvs',
		['hash'] = `rocoto`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['seminole'] = {
		['name'] = 'Seminole',
		['brand'] = 'Canis',
		['model'] = 'seminole',
		['price'] = 20000,
		['category'] = 'suvs',
		['hash'] = `seminole`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['seminole2'] = {
		['name'] = 'Seminole Frontier',
		['brand'] = 'Canis',
		['model'] = 'seminole2',
		['price'] = 13000,
		['category'] = 'suvs',
		['hash'] = `seminole2`,
		['shop'] = 'pdm',
		["trunkspace"] = 17500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['serrano'] = {
		['name'] = 'Serrano',
		['brand'] = 'Benefactor',
		['model'] = 'serrano',
		['price'] = 48000,
		['category'] = 'suvs',
		['hash'] = `serrano`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['toros'] = {							--DLC
		['name'] = 'Toros',
		['brand'] = 'Pegassi',
		['model'] = 'toros',
		['price'] = 65000,
		['category'] = 'suvs',
		['hash'] = `toros`,
		['shop'] = 'pdm',
		["trunkspace"] = 16500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['xls'] = {
		['name'] = 'XLS',
		['brand'] = 'Benefactor',
		['model'] = 'xls',
		['price'] = 17000,
		['category'] = 'suvs',
		['hash'] = `xls`,
		['shop'] = 'pdm',
		["trunkspace"] = 14500, -- 20kg 
        ["trunkslots"] = 12, -- 5 slots
	},
	--- Sedans
	['asea'] = {
		['name'] = 'Asea',
		['brand'] = 'Declasse',
		['model'] = 'asea',
		['price'] = 2500,
		['category'] = 'sedans',
		['hash'] = `asea`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['asterope'] = {
		['name'] = 'Asterope',
		['brand'] = 'Karin',
		['model'] = 'asterope',
		['price'] = 11000,
		['category'] = 'sedans',
		['hash'] = `asterope`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['cog55'] = {
		['name'] = 'Cognoscenti 55',
		['brand'] = 'Enus',
		['model'] = 'cog55',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = `cog55`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cognoscenti'] = {
		['name'] = 'Cognoscenti',
		['brand'] = 'Enus',
		['model'] = 'cognoscenti',
		['price'] = 22500,
		['category'] = 'sedans',
		['hash'] = `cognoscenti`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['emperor'] = {
		['name'] = 'Emperor',
		['brand'] = 'Albany',
		['model'] = 'emperor',
		['price'] = 4250,
		['category'] = 'sedans',
		['hash'] = `emperor`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['fugitive'] = {
		['name'] = 'Fugitive',
		['brand'] = 'Cheval',
		['model'] = 'fugitive',
		['price'] = 20000,
		['category'] = 'sedans',
		['hash'] = `fugitive`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['glendale'] = {
		['name'] = 'Glendale',
		['brand'] = 'Benefactor',
		['model'] = 'glendale',
		['price'] = 3400,
		['category'] = 'sedans',
		['hash'] = `glendale`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['glendale2'] = {
		['name'] = 'Glendale',
		['brand'] = 'Benefactor',
		['model'] = 'glendale2',
		['price'] = 12000,
		['category'] = 'sedans',
		['hash'] = `glendale2`,
		['shop'] = 'pdm',
		["trunkspace"] = 8000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['ingot'] = {
		['name'] = 'Ingot',
		['brand'] = 'Vulcar',
		['model'] = 'ingot',
		['price'] = 4999,
		['category'] = 'sedans',
		['hash'] = `ingot`,
		['shop'] = 'pdm',
		["trunkspace"] = 11500, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['intruder'] = {
		['name'] = 'Intruder',
		['brand'] = 'Karin',
		['model'] = 'intruder',
		['price'] = 11250,
		['category'] = 'sedans',
		['hash'] = `intruder`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['premier'] = {
		['name'] = 'Premier',
		['brand'] = 'Declasse',
		['model'] = 'premier',
		['price'] = 12000,
		['category'] = 'sedans',
		['hash'] = `premier`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['primo'] = {
		['name'] = 'Primo',
		['brand'] = 'Albany',
		['model'] = 'primo',
		['price'] = 5000,
		['category'] = 'sedans',
		['hash'] = `primo`,
		['shop'] = 'pdm',
		["trunkspace"] = 13000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['primo2'] = {
		['name'] = 'Primo Custom',
		['brand'] = 'Albany',
		['model'] = 'primo2',
		['price'] = 14500,
		['category'] = 'sedans',
		['hash'] = `primo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 14000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['regina'] = {
		['name'] = 'Regina',
		['brand'] = 'Dundreary',
		['model'] = 'regina',
		['price'] = 7000,
		['category'] = 'sedans',
		['hash'] = `regina`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['stafford'] = {							--DLC
		['name'] = 'Stafford',
		['brand'] = 'Enus',
		['model'] = 'stafford',
		['price'] = 30000,
		['category'] = 'sedans',
		['hash'] = `stafford`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 2, -- 5 slots
	},
	['stanier'] = {
		['name'] = 'Stanier',
		['brand'] = 'Vapid',
		['model'] = 'stanier',
		['price'] = 19000,
		['category'] = 'sedans',
		['hash'] = `stanier`,
		['shop'] = 'pdm',
		["trunkspace"] = 9500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['stratum'] = {
		['name'] = 'Stratum',
		['brand'] = 'Zirconium',
		['model'] = 'stratum',
		['price'] = 15000,
		['category'] = 'sedans',
		['hash'] = `stratum`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['stretch'] = {
		['name'] = 'Stretch',
		['brand'] = 'Dundreary',
		['model'] = 'stretch',
		['price'] = 19000,
		['category'] = 'sedans',
		['hash'] = `stretch`,
		['shop'] = 'pdm',
		["trunkspace"] = 1500, -- 20kg 
        ["trunkslots"] = 1, -- 5 slots
	},
	['superd'] = {
		['name'] = 'Super Diamond',
		['brand'] = 'Enus',
		['model'] = 'superd',
		['price'] = 17000,
		['category'] = 'sedans',
		['hash'] = `superd`,
		['shop'] = 'pdm',
		["trunkspace"] = 8500, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['surge'] = {
		['name'] = 'Surge',
		['brand'] = 'Cheval',
		['model'] = 'surge',
		['price'] = 20000,
		['category'] = 'sedans',
		['hash'] = `surge`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tailgater'] = {
		['name'] = 'Tailgater',
		['brand'] = 'Obey',
		['model'] = 'tailgater',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = `tailgater`,
		['shop'] = 'pdm',
		["trunkspace"] = 13500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['warrener'] = {
		['name'] = 'Warrener',
		['brand'] = 'Vulcar',
		['model'] = 'warrener',
		['price'] = 4000,
		['category'] = 'sedans',
		['hash'] = `warrener`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	['washington'] = {
		['name'] = 'Washington',
		['brand'] = 'Albany',
		['model'] = 'washington',
		['price'] = 7000,
		['category'] = 'sedans',
		['hash'] = `washington`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['tailgater2'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Tailgater S',
		['brand'] = 'Obey',
		['model'] = 'tailgater2',
		['price'] = 51000,
		['category'] = 'sedans',
		['hash'] = `tailgater2`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 5, -- 5 slots
	},
	--- Sports
	['alpha'] = {
		['name'] = 'Alpha',
		['brand'] = 'Albany',
		['model'] = 'alpha',
		['price'] = 53000,
		['category'] = 'sports',
		['hash'] = `alpha`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['banshee'] = {
		['name'] = 'Banshee',
		['brand'] = 'Bravado',
		['model'] = 'banshee',
		['price'] = 56000,
		['category'] = 'sports',
		['hash'] = `banshee`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bestiagts'] = {
		['name'] = 'Bestia GTS',
		['brand'] = 'Grotti',
		['model'] = 'bestiagts',
		['price'] = 37000,
		['category'] = 'sports',
		['hash'] = `bestiagts`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['blista2'] = {
		['name'] = 'Blista Compact',
		['brand'] = 'Dinka',
		['model'] = 'blista2',
		['price'] = 18950,
		['category'] = 'compacts',
		['hash'] = `blista2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['blista3'] = {
		['name'] = 'Blista Go Go Monkey',
		['brand'] = 'Dinka',
		['model'] = 'blista3',
		['price'] = 15000,
		['category'] = 'compacts',
		['hash'] = `blista3`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['buffalo'] = {
		['name'] = 'Buffalo',
		['brand'] = 'Bravado',
		['model'] = 'buffalo',
		['price'] = 18750,
		['category'] = 'sports',
		['hash'] = `buffalo`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['buffalo2'] = {
		['name'] = 'Buffalo S',
		['brand'] = 'Bravado',
		['model'] = 'buffalo2',
		['price'] = 24500,
		['category'] = 'sports',
		['hash'] = `buffalo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['carbonizzare'] = {
		['name'] = 'Carbonizzare',
		['brand'] = 'Grotti',
		['model'] = 'carbonizzare',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = `carbonizzare`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['comet2'] = {
		['name'] = 'Comet',
		['brand'] = 'Pfister',
		['model'] = 'comet2',
		['price'] = 130000,
		['category'] = 'sports',
		['hash'] = `comet2`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['comet3'] = {
		['name'] = 'Comet Retro Custom',
		['brand'] = 'Pfister',
		['model'] = 'comet3',
		['price'] = 175000,
		['category'] = 'sports',
		['hash'] = `comet3`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['comet4'] = {
		['name'] = 'Comet Safari',
		['brand'] = 'Pfister',
		['model'] = 'comet4',
		['price'] = 110000,
		['category'] = 'sports',
		['hash'] = `comet4`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},	
	['comet5'] = {
		['name'] = 'Comet SR',
		['brand'] = 'Pfister',
		['model'] = 'comet5',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = `comet5`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
    },
	['coquette'] = {
		['name'] = 'Coquette',
		['brand'] = 'Invetero',
		['model'] = 'coquette',
		['price'] = 145000,
		['category'] = 'sports',
		['hash'] = `coquette`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['coquette2'] = {
		['name'] = 'Coquette Classic',
		['brand'] = 'Invetero',
		['model'] = 'coquette2',
		['price'] = 165000,
		['category'] = 'sportsclassics',
		['hash'] = `coquette2`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['coquette4'] = {
		['name'] = 'Coquette D10',
		['brand'] = 'Invetero',
		['model'] = 'coquette4',
		['price'] = 220000,
		['category'] = 'sports',
		['hash'] = `coquette4`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['drafter'] = {							--DLC
		['name'] = '8F Drafter',
		['brand'] = 'Obey',
		['model'] = 'drafter',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `drafter`,
		['shop'] = 'pdm',
		["trunkspace"] = 65000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['deveste'] = {							--DLC
		['name'] = 'Deveste',
		['brand'] = 'Principe',
		['model'] = 'deveste',
		['price'] = 234000,
		['category'] = 'super',
		['hash'] = `deveste`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['elegy'] = {							--DLC
		['name'] = 'Elegy Retro Custom',
		['brand'] = 'Annis',
		['model'] = 'elegy',
		['price'] = 145000,
		['category'] = 'sports',
		['hash'] = `elegy`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['elegy2'] = {
		['name'] = 'Elegy RH8',
		['brand'] = 'Annis',
		['model'] = 'elegy2',
		['price'] = 150000,
		['category'] = 'sports',
		['hash'] = `elegy2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['feltzer2'] = {
		['name'] = 'Feltzer',
		['brand'] = 'Benefactor',
		['model'] = 'feltzer2',
		['price'] = 97000,
		['category'] = 'sports',
		['hash'] = `feltzer2`,
		['shop'] = 'pdm',
	},
	['flashgt'] = {
		['name'] = 'Flash GT',
		['brand'] = 'Vapid',
		['model'] = 'flashgt',
		['price'] = 48000,
		['category'] = 'sports',
		['hash'] = `flashgt`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['furoregt'] = {
		['name'] = 'Furore GT',
		['brand'] = 'Lampadati',
		['model'] = 'furoregt',
		['price'] = 78000,
		['category'] = 'sports',
		['hash'] = `furoregt`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['futo'] = {
		['name'] = 'Futo',
		['brand'] = 'Karin',
		['model'] = 'futo',
		['price'] = 17500,
		['category'] = 'coupes',
		['hash'] = `futo`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['gb200'] = {
		['name'] = 'GB 200',
		['brand'] = 'Vapid',
		['model'] = 'gb200',
		['price'] = 140000,
		['category'] = 'sports',
		['hash'] = `gb200`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['komoda'] = {
		['name'] = 'Komoda',
		['brand'] = 'Lampadati',
		['model'] = 'komoda',
		['price'] = 55000,
		['category'] = 'sports',
		['hash'] = `komoda`,
		['shop'] = 'pdm',
		["trunkspace"] = 75000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['imorgon'] = {
		['name'] = 'Imorgon',
		['brand'] = 'Overflod',
		['model'] = 'imorgon',
		['price'] = 120000,
		['category'] = 'sports',
		['hash'] = `imorgon`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['issi7'] = {							--DLC
		['name'] = 'Issi Sport',
		['brand'] = 'Weeny',
		['model'] = 'issi7',
		['price'] = 100000,
		['category'] = 'compacts',
		['hash'] = `issi7`,
		['shop'] = 'pdm',
	},
	['italigto'] = {							--DLC
		['name'] = 'Itali GTO',
		['brand'] = 'Progen',
		['model'] = 'italigto',
		['price'] = 260000,
		['category'] = 'sports',
		['hash'] = `italigto`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['jester'] = {
		['name'] = 'Jester',
		['brand'] = 'Dinka',
		['model'] = 'jester',
		['price'] = 132250,
		['category'] = 'sports',
		['hash'] = `jester`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['jester2'] = {
		['name'] = 'Jester Racecar',
		['brand'] = 'Dinka',
		['model'] = 'jester2',
		['price'] = 210000,
		['category'] = 'sports',
		['hash'] = `jester2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['jester3'] = {
		['name'] = 'Jester Classic',
		['brand'] = 'Dinka',
		['model'] = 'jester3',
		['price'] = 85000,
		['category'] = 'sports',
		['hash'] = `jester3`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['khamelion'] = {
		['name'] = 'Khamelion',
		['brand'] = 'Hijak',
		['model'] = 'khamelion',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = `khamelion`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['kuruma'] = {
		['name'] = 'Kuruma',
		['brand'] = 'Karin',
		['model'] = 'kuruma',
		['price'] = 72000,
		['category'] = 'sports',
		['hash'] = `kuruma`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['kuruma2'] = {
		['name'] = 'kuruma2',
		['brand'] = 'Karin2',
		['model'] = 'kuruma2',
		['price'] = 72000,
		['category'] = 'sports',
		['hash'] = `kuruma2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['locust'] = {							--DLC
		['name'] = 'Locust',
		['brand'] = 'Ocelot',
		['model'] = 'locust',
		['price'] = 200000,
		['category'] = 'sports',
		['hash'] = `locust`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lynx'] = {
		['name'] = 'Lynx',
		['brand'] = 'Ocelot',
		['model'] = 'lynx',
		['price'] = 150000,
		['category'] = 'sports',
		['hash'] = `lynx`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['massacro'] = {
		['name'] = 'Massacro',
		['brand'] = 'Dewbauchee',
		['model'] = 'massacro',
		['price'] = 110000,
		['category'] = 'sports',
		['hash'] = `massacro`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['massacro2'] = {
		['name'] = 'Massacro Racecar',
		['brand'] = 'Dewbauchee',
		['model'] = 'massacro2',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `drafter`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dubsta'] = {
		['name'] = 'Dubsta',
		['brand'] = 'Benefactor',
		['model'] = 'dubsta',
		['price'] = 19000,
		['category'] = 'suvs',
		['hash'] = `dubsta`,
		['shop'] = 'pdm',
		["trunkspace"] = 50000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['neo'] = {							--DLC
		['name'] = 'Neo',
		['brand'] = 'Vysser',
		['model'] = 'neo',
		['price'] = 230000,
		['category'] = 'sports',
		['hash'] = `neo`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['neon'] = {							--DLC
		['name'] = 'Neon',
		['brand'] = 'Pfister',
		['model'] = 'neon',
		['price'] = 220000,
		['category'] = 'sports',
		['hash'] = `neon`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ninef'] = {
		['name'] = '9F',
		['brand'] = 'Obey',
		['model'] = 'ninef',
		['price'] = 95000,
		['category'] = 'sports',
		['hash'] = `ninef`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ninef2'] = {
		['name'] = '9F Cabrio',
		['brand'] = 'Obey',
		['model'] = 'ninef2',
		['price'] = 105000,
		['category'] = 'sports',
		['hash'] = `ninef2`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['omnis'] = {
		['name'] = 'Omnis',
		['brand'] = 'Wow',
		['model'] = 'omnis',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = `omnis`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['paragon'] = {							--DLC
		['name'] = 'Paragon',
		['brand'] = 'Enus',
		['model'] = 'paragon',
		['price'] = 60000,
		['category'] = 'sports',
		['hash'] = `paragon`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['pariah'] = {
		['name'] = 'Pariah',
		['brand'] = 'Ocelot',
		['model'] = 'pariah',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = `pariah`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['penumbra'] = {
		['name'] = 'Penumbra',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra',
		['price'] = 22000,
		['category'] = 'sports',
		['hash'] = `penumbra`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['penumbra2'] = {
		['name'] = 'Penumbra FF',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra2',
		['price'] = 30000,
		['category'] = 'sports',
		['hash'] = `penumbra2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rapidgt'] = {
		['name'] = 'Rapid GT',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt',
		['price'] = 86000,
		['category'] = 'sports',
		['hash'] = `rapidgt`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rapidgt2'] = {
		['name'] = 'Rapid GT Convertible',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt2',
		['price'] = 92000,
		['category'] = 'sports',
		['hash'] = `rapidgt2`,
		['shop'] = 'pdm',
	},
	['raptor'] = {
		['name'] = 'Raptor',
		['brand'] = 'BF',
		['model'] = 'raptor',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = `raptor`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['revolter'] = {
		['name'] = 'Revolter',
		['brand'] = 'Ubermacht',
		['model'] = 'revolter',
		['price'] = 95000,
		['category'] = 'sports',
		['hash'] = `revolter`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ruston'] = {
		['name'] = 'Ruston',
		['brand'] = 'Hijak',
		['model'] = 'ruston',
		['price'] = 130000,
		['category'] = 'sports',
		['hash'] = `ruston`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['schafter2'] = {
		['name'] = 'Schafter',
		['brand'] = 'Benefactor',
		['model'] = 'schafter2',
		['price'] = 16000,
		['category'] = 'sedans',
		['hash'] = `schafter2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['schafter3'] = {
		['name'] = 'Schafter V12',
		['brand'] = 'Benefactor',
		['model'] = 'schafter3',
		['price'] = 35000,
		['category'] = 'sports',
		['hash'] = `schafter3`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['schafter4'] = {
		['name'] = 'Schafter LWB',
		['brand'] = 'Benefactor',
		['model'] = 'schafter4',
		['price'] = 21000,
		['category'] = 'sports',
		['hash'] = `schafter4`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['schlagen'] = {							--DLC
		['name'] = 'Schlagen GT',
		['brand'] = 'Benefactor',
		['model'] = 'schlagen',
		['price'] = 160000,
		['category'] = 'sports',
		['hash'] = `schlagen`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['schwarzer'] = {
		['name'] = 'Schwartzer',
		['brand'] = 'Benefactor',
		['model'] = 'schwarzer',
		['price'] = 47000,
		['category'] = 'sports',
		['hash'] = `schwarzer`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sentinel3'] = {
		['name'] = 'Sentinel Classic',
		['brand'] = 'Übermacht',
		['model'] = 'sentinel3',
		['price'] = 70000,
		['category'] = 'coupes',
		['hash'] = `sentinel3`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['seven70'] = {
		['name'] = 'Seven-70',
		['brand'] = 'Dewbauchee',
		['model'] = 'seven70',
		['price'] = 140000,
		['category'] = 'sports',
		['hash'] = `seven70`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['specter'] = {
		['name'] = 'Specter',
		['brand'] = 'Dewbauchee',
		['model'] = 'specter',
		['price'] = 160000,
		['category'] = 'sports',
		['hash'] = `specter`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['streiter'] = {
		['name'] = 'Streiter',
		['brand'] = 'Benefactor',
		['model'] = 'streiter',
		['price'] = 40000,
		['category'] = 'sports',
		['hash'] = `streiter`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sugoi'] = {
		['name'] = 'Sugoi',
		['brand'] = 'Dinka',
		['model'] = 'sugoi',
		['price'] = 85000,
		['category'] = 'sports',
		['hash'] = `sugoi`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sultan'] = {
		['name'] = 'Sultan',
		['brand'] = 'Karin',
		['model'] = 'sultan',
		['price'] = 50000,
		['category'] = 'sports',
		['hash'] = `sultan`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sultan2'] = {
		['name'] = 'Sultan Custom',
		['brand'] = 'Karin',
		['model'] = 'sultan2',
		['price'] = 55000,
		['category'] = 'sports',
		['hash'] = `sultan2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['surano'] = {
		['name'] = 'Surano',
		['brand'] = ' Benefactor',
		['model'] = 'surano',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `surano`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tampa2'] = {
		['name'] = 'Drift Tampa',
		['brand'] = 'Declasse',
		['model'] = 'tampa2',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = `tampa2`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tropos'] = {
		['name'] = 'Tropos Rallye',
		['brand'] = 'Lampadati',
		['model'] = 'tropos',
		['price'] = 65000,
		['category'] = 'sports',
		['hash'] = `tropos`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['verlierer2'] = {
		['name'] = 'Verlierer',
		['brand'] = 'Bravado',
		['model'] = 'verlierer2',
		['price'] = 90500,
		['category'] = 'sports',
		['hash'] = `verlierer2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vstr'] = {
		['name'] = 'V-STR',
		['brand'] = 'Albany',
		['model'] = 'vstr',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `vstr`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['italirsx'] = {
		['name'] = 'Itali RSX',
		['brand'] = 'Progen',
		['model'] = 'italirsx',
		['price'] = 260000,
		['category'] = 'sports',
		['hash'] = `italirsx`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['calico'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Calico GTF',
		['brand'] = 'Karin',
		['model'] = 'calico',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = `calico`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['futo2'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Futo GTX',
		['brand'] = 'Karin',
		['model'] = 'futo2',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = `futo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 120000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['euros'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Euros',
		['brand'] = 'Annis',
		['model'] = 'euros',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `jugular`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['kalahari'] = {
		['name'] = 'Kalahari',
		['brand'] = 'Canis',
		['model'] = 'kalahari',
		['price'] = 14000,
		['category'] = 'offroad',
		['hash'] = `kalahari`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['kamacho'] = {
		['name'] = 'Kamacho',
		['brand'] = 'Canis',
		['model'] = 'kamacho',
		['price'] = 50000,
		['category'] = 'offroad',
		['hash'] = `kamacho`,
		['shop'] = 'pdm',
		["trunkspace"] = 80000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['jester4'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Jester RR',
		['brand'] = 'Dinka',
		['model'] = 'jester4',
		['price'] = 240000,
		['category'] = 'sports',
		['hash'] = `jester4`,
		['shop'] = 'pdm',
		["trunkspace"] = 12500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['remus'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Remus',
		['brand'] = 'Annis',
		['model'] = 'remus',
		['price'] = 48000,
		['category'] = 'sports',
		['hash'] = `remus`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['comet6'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Comet S2',
		['brand'] = 'Pfister',
		['model'] = 'comet6',
		['price'] = 230000,
		['category'] = 'sports',
		['hash'] = `comet6`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['growler'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Growler',
		['brand'] = 'Pfister',
		['model'] = 'growler',
		['price'] = 205000,
		['category'] = 'sports',
		['hash'] = `growler`,
		['shop'] = 'pdm',
		["trunkspace"] = 75000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['vectre'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Emperor Vectre',
		['brand'] = 'Emperor',
		['model'] = 'vectre',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `vectre`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cypher'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Cypher',
		['brand'] = 'Ubermacht',
		['model'] = 'cypher',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = `cypher`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sultan3'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Sultan Classic Custom',
		['brand'] = 'Karin',
		['model'] = 'sultan3',
		['price'] = 56000,
		['category'] = 'sports',
		['hash'] = `sultan3`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rt3000'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'RT3000',
		['brand'] = 'Dinka',
		['model'] = 'rt3000',
		['price'] = 65000,
		['category'] = 'sports',
		['hash'] = `rt3000`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	--- Sports Classic
	['ardent'] = {
		['name'] = 'Ardent',
		['brand'] = 'Ocelot',
		['model'] = 'ardent',
		['price'] = 30000,
		['category'] = 'sportsclassics',
		['hash'] = `ardent`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['btype'] = {              --meme car that goes pretty fast
		['name'] = 'Roosevelt',
		['brand'] = 'Albany',
		['model'] = 'btype',
		['price'] = 75000,
		['category'] = 'sportsclassics',
		['hash'] = `btype`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['btype2'] = {
		['name'] = 'Franken Stange',
		['brand'] = 'Albany',
		['model'] = 'btype2',
		['price'] = 87000,
		['category'] = 'sportsclassics',
		['hash'] = `btype2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['btype3'] = {
		['name'] = 'Roosevelt Valor',
		['brand'] = 'Albany',
		['model'] = 'btype3',
		['price'] = 63000,
		['category'] = 'sportsclassics',
		['hash'] = `btype3`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['casco'] = {
		['name'] = 'Casco',
		['brand'] = 'Lampadati',
		['model'] = 'casco',
		['price'] = 100000,
		['category'] = 'sportsclassics',
		['hash'] = `casco`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cheetah2'] = {
		['name'] = 'Cheetah Classic',
		['brand'] = 'Grotti',
		['model'] = 'cheetah2',
		['price'] = 195000,
		['category'] = 'sports',
		['hash'] = `cheetah2`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['deluxo'] = {
		['name'] = 'Deluxo',
		['brand'] = 'Imponte',
		['model'] = 'deluxo',
		['price'] = 55000,
		['category'] = 'sportsclassic',
		['hash'] = `deluxo`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dynasty'] = {							--DLC
		['name'] = 'Dynasty',
		['brand'] = 'Weeny',
		['model'] = 'dynasty',
		['price'] = 25000,
		['category'] = 'sportsclassic',
		['hash'] = `dynasty`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['fagaloa'] = {
		['name'] = 'Fagaloa',
		['brand'] = 'Vulcar',
		['model'] = 'fagaloa',
		['price'] = 13000,
		['category'] = 'sportsclassics',
		['hash'] = `fagaloa`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['feltzer3'] = {							--DLC
		['name'] = 'Stirling GT',
		['brand'] = 'Benefactor',
		['model'] = 'feltzer3',
		['price'] = 115000,
		['category'] = 'sportsclassics',
		['hash'] = `feltzer3`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['gt500'] = {
		['name'] = 'GT500',
		['brand'] = 'Grotti',
		['model'] = 'gt500',
		['price'] = 130000,
		['category'] = 'sportsclassics',
		['hash'] = `gt500`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['infernus2'] = {
		['name'] = 'Infernus Classic',
		['brand'] = 'Pegassi',
		['model'] = 'infernus2',
		['price'] = 245000,
		['category'] = 'sportsclassics',
		['hash'] = `infernus2`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['jb700'] = {
		['name'] = 'JB 700',
		['brand'] = 'Dewbauchee',
		['model'] = 'jb700',
		['price'] = 240000,
		['category'] = 'sportsclassic',
		['hash'] = `jb700`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['jb7002'] = {
		['name'] = 'JB 700W',
		['brand'] = 'Dewbauchee',
		['model'] = 'jb7002',
		['price'] = 40000,
		['category'] = 'sportsclassic',
		['hash'] = `jb7002`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mamba'] = {
		['name'] = 'Mamba',
		['brand'] = 'Declasse',
		['model'] = 'mamba',
		['price'] = 140000,
		['category'] = 'sportsclassics',
		['hash'] = `mamba`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['manana2'] = {
		['name'] = 'Manana Custom',
		['brand'] = 'Albany',
		['model'] = 'manana2',
		['price'] = 24000,
		['category'] = 'muscle',
		['hash'] = `manana2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['michelli'] = {
		['name'] = 'Michelli GT',
		['brand'] = 'Lampadati',
		['model'] = 'michelli',
		['price'] = 30000,
		['category'] = 'sportsclassic',
		['hash'] = `michelli`,
		['shop'] = 'pdm',
		["trunkspace"] = 125000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['monroe'] = {
		['name'] = 'Monroe',
		['brand'] = 'Pegassi',
		['model'] = 'monroe',
		['price'] = 115000,
		['category'] = 'sportsclassics',
		['hash'] = `monroe`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['nebula'] = {							--DLC
		['name'] = 'Nebula',
		['brand'] = 'Vulcar',
		['model'] = 'nebula',
		['price'] = 22000,
		['category'] = 'sports',
		['hash'] = `penumbra`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['penumbra2'] = {
		['name'] = 'Penumbra FF',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra2',
		['price'] = 30000,
		['category'] = 'sports',
		['hash'] = `penumbra2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['peyote'] = {
		['name'] = 'Peyote',
		['brand'] = 'Vapid',
		['model'] = 'peyote',
		['price'] = 23500,
		['category'] = 'sportsclassic',
		['hash'] = `peyote`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['peyote2'] = {
		['name'] = 'Peyote Gasser',
		['brand'] = 'Vapid',
		['model'] = 'peyote2',
		['price'] = 40000,
		['category'] = 'sportsclassic',
		['hash'] = `peyote2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['peyote3'] = {
		['name'] = 'Peyote Custom',
		['brand'] = 'Vapid',
		['model'] = 'peyote3',
		['price'] = 48000,
		['category'] = 'sportsclassic',
		['hash'] = `peyote3`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['primo'] = {
		['name'] = 'Primo',
		['brand'] = 'Albany',
		['model'] = 'primo',
		['price'] = 5000,
		['category'] = 'sedans',
		['hash'] = `primo`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['rancherxl'] = {
		['name'] = 'Rancher XL',
		['brand'] = 'Declasse',
		['model'] = 'rancherxl',
		['price'] = 24000,
		['category'] = 'offroad',
		['hash'] = `rancherxl`,
		['shop'] = 'pdm',
		["trunkspace"] = 60000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['rapidgt3'] = {
		['name'] = 'Rapid GT',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt3',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = `raptor`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ratbike'] = {
		['name'] = 'Rat Bike',
		['brand'] = 'Western',
		['model'] = 'ratbike',
		['price'] = 3000,
		['category'] = 'motorcycles',
		['hash'] = `ratbike`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rebla'] = {
		['name'] = 'Rebla GTS',
		['brand'] = 'Übermacht',
		['model'] = 'rebla',
		['price'] = 21000,
		['category'] = 'suvs',
		['hash'] = `rebla`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['retinue'] = {
		['name'] = 'Retinue',
		['brand'] = 'Vapid',
		['model'] = 'retinue',
		['price'] = 32000,
		['category'] = 'sportsclassic',
		['hash'] = `retinue`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['retinue2'] = {
		['name'] = 'Retinue MKII',
		['brand'] = 'Vapid',
		['model'] = 'retinue2',
		['price'] = 38000,
		['category'] = 'sportsclassic',
		['hash'] = `retinue2`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['savestra'] = {
		['name'] = 'Savestra',
		['brand'] = 'Annis',
		['model'] = 'savestra',
		['price'] = 67000,
		['category'] = 'sportsclassic',
		['hash'] = `savestra`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['stinger'] = {
		['name'] = 'Stinger',
		['brand'] = 'Grotti',
		['model'] = 'stinger',
		['price'] = 39500,
		['category'] = 'sportsclassic',
		['hash'] = `stinger`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['stingergt'] = {
		['name'] = 'Stinger GT',
		['brand'] = 'Grotti',
		['model'] = 'stingergt',
		['price'] = 70000,
		['category'] = 'sportsclassics',
		['hash'] = `stingergt`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['stromberg'] = {
		['name'] = 'Stromberg',
		['brand'] = 'Ocelot',
		['model'] = 'stromberg',
		['price'] = 80000,
		['category'] = 'sportsclassic',
		['hash'] = `stromberg`,
		['shop'] = 'pdm',
		["trunkspace"] = 175000, -- 20kg 
        ["trunkslots"] = 20, -- 5 slots
	},
	['swinger'] = {							--DLC
		['name'] = 'Swinger',
		['brand'] = 'Ocelot',
		['model'] = 'swinger',
		['price'] = 221000,
		['category'] = 'sportsclassic',
		['hash'] = `swinger`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['torero'] = {
		['name'] = 'Torero',
		['brand'] = 'Pegassi',
		['model'] = 'torero',
		['price'] = 84000,
		['category'] = 'sportsclassics',
		['hash'] = `torero`,
		['shop'] = 'pdm',
		["trunkspace"] = 60000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['tornado'] = {
		['name'] = 'Tornado',
		['brand'] = 'Declasse',
		['model'] = 'tornado',
		['price'] = 21000,
		['category'] = 'sportsclassic',
		['hash'] = `tornado`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tornado2'] = {
		['name'] = 'Tornado Gang',
		['brand'] = 'Declasse',
		['model'] = 'tornado2',
		['price'] = 22000,
		['category'] = 'sportsclassic',
		['hash'] = `tornado2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tornado5'] = {
		['name'] = 'Tornado Custom',
		['brand'] = 'Declasse',
		['model'] = 'tornado5',
		['price'] = 22000,
		['category'] = 'sportsclassic',
		['hash'] = `tornado5`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['turismo2'] = {
		['name'] = 'Turismo Classic',
		['brand'] = 'Grotti',
		['model'] = 'turismo2',
		['price'] = 170000,
		['category'] = 'sportsclassic',
		['hash'] = `turismo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 100000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['viseris'] = {
		['name'] = 'Viseris',
		['brand'] = 'Lampadati',
		['model'] = 'viseris',
		['price'] = 210000,
		['category'] = 'sportsclassic',
		['hash'] = `viseris`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['z190'] = {
		['name'] = '190Z',
		['brand'] = 'Karin',
		['model'] = 'z190',
		['price'] = 78000,
		['category'] = 'sportsclassics',
		['hash'] = `z190`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['ztype'] = {
		['name'] = 'Z-Type',
		['brand'] = 'Truffade',
		['model'] = 'ztype',
		['price'] = 270000,
		['category'] = 'sportsclassics',
		['hash'] = `ztype`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zion3'] = {							--DLC
		['name'] = 'Zion Classic',
		['brand'] = 'Übermacht',
		['model'] = 'zion3',
		['price'] = 45000,
		['category'] = 'sportsclassic',
		['hash'] = `zion3`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cheburek'] = {
		['name'] = 'Cheburek',
		['brand'] = 'Rune',
		['model'] = 'cheburek',
		['price'] = 7000,
		['category'] = 'sportsclassic',
		['hash'] = `cheburek`,
		['shop'] = 'pdm',
	},
	['toreador'] = {
		['name'] = 'Toreador',
		['brand'] = 'Pegassi',
		['model'] = 'toreador',
		['price'] = 50000,
		['category'] = 'sportsclassic',
		['hash'] = `toreador`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	--- Super
	['adder'] = {
		['name'] = 'Adder',
		['brand'] = 'Truffade',
		['model'] = 'adder',
		['price'] = 280000,
		['category'] = 'super',
		['hash'] = `adder`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['autarch'] = {
		['name'] = 'Autarch',
		['brand'] = 'Överflöd',
		['model'] = 'autarch',
		['price'] = 224000,
		['category'] = 'super',
		['hash'] = `autarch`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['banshee2'] = {
		['name'] = 'Banshee 900R',
		['brand'] = 'Bravado',
		['model'] = 'banshee2',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = `banshee2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bullet'] = {
		['name'] = 'Bullet',
		['brand'] = 'Vapid',
		['model'] = 'bullet',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = `bullet`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cheetah'] = {
		['name'] = 'Cheetah',
		['brand'] = 'Grotti',
		['model'] = 'cheetah',
		['price'] = 214000,
		['category'] = 'super',
		['hash'] = `cheetah`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['cyclone'] = {         --might be too overpowered
		['name'] = 'Cyclone',
		['brand'] = 'Coil',
		['model'] = 'cyclone',
		['price'] = 300000,
		['category'] = 'super',
		['hash'] = `cyclone`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['entity2'] = {
		['name'] = 'Entity XXR',
		['brand'] = 'Överflöd',
		['model'] = 'entity2',
		['price'] = 164000,
		['category'] = 'super',
		['hash'] = `entity2`,
		['shop'] = 'pdm',
		["trunkspace"] = 150000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['entityxf'] = {
		['name'] = 'Entity XF',
		['brand'] = 'Överflöd',
		['model'] = 'entityxf',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = `entityxf`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['emerus'] = {							--DLC
		['name'] = 'Emerus',
		['brand'] = 'Progen',
		['model'] = 'emerus',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = `emerus`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['fmj'] = {
		['name'] = 'FMJ',
		['brand'] = 'Vapid',
		['model'] = 'fmj',
		['price'] = 125000,
		['category'] = 'super',
		['hash'] = `fmj`,
		['shop'] = 'pdm',
		["trunkspace"] = 155000, -- 20kg 
        ["trunkslots"] = 12, -- 5 slots
	},
	['furia'] = {
		['name'] = 'Furia',
		['brand'] = 'Grotti',
		['model'] = 'furia',
		['price'] = 230000,
		['category'] = 'super',
		['hash'] = `furia`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['gp1'] = {
		['name'] = 'GP1',
		['brand'] = 'Progen',
		['model'] = 'gp1',
		['price'] = 110000,
		['category'] = 'super',
		['hash'] = `gp1`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['infernus'] = {
		['name'] = 'Infernus',
		['brand'] = 'Pegassi',
		['model'] = 'infernus',
		['price'] = 235000,
		['category'] = 'super',
		['hash'] = `infernus`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['italigtb'] = {
		['name'] = 'Itali GTB',
		['brand'] = 'Progen',
		['model'] = 'italigtb',
		['price'] = 170000,
		['category'] = 'super',
		['hash'] = `italigtb`,
		['shop'] = 'pdm',
		["trunkspace"] = 30000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['italigtb2'] = {
		['name'] = 'Itali GTB',
		['brand'] = 'Progen',
		['model'] = 'italigtb2',
		['price'] = 250000,
		['category'] = 'super',
		['hash'] = `italigtb2`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['krieger'] = {							--DLC
		['name'] = 'Krieger',
		['brand'] = 'Benefactor',
		['model'] = 'krieger',
		['price'] = 222000,
		['category'] = 'super',
		['hash'] = `krieger`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['le7b'] = {
		['name'] = 'RE-7B',
		['brand'] = 'Annis',
		['model'] = 'le7b',
		['price'] = 260000,
		['category'] = 'super',
		['hash'] = `le7b`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['nero'] = {
		['name'] = 'Nero',
		['brand'] = 'Truffade',
		['model'] = 'nero',
		['price'] = 200000,
		['category'] = 'super',
		['hash'] = `nero`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['nero2'] = {
		['name'] = 'Nero Custom',
		['brand'] = 'Truffade',
		['model'] = 'nero2',
		['price'] = 260000,
		['category'] = 'super',
		['hash'] = `nero2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['osiris'] = {
		['name'] = 'Osiris',
		['brand'] = 'Pegassi',
		['model'] = 'osiris',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = `osiris`,
		['shop'] = 'pdm',
		["trunkspace"] = 70000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['penetrator'] = {
		['name'] = 'Penetrator',
		['brand'] = 'Ocelot',
		['model'] = 'penetrator',
		['price'] = 130000,
		['category'] = 'super',
		['hash'] = `penetrator`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['pfister811'] = {
		['name'] = '811',
		['brand'] = 'Pfister',
		['model'] = 'pfister811',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = `pfister811`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['prototipo'] = {
		['name'] = 'X80 Proto',
		['brand'] = 'Grotti',
		['model'] = 'prototipo',
		['price'] = 235000,
		['category'] = 'super',
		['hash'] = `prototipo`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['reaper'] = {
		['name'] = 'Reaper',
		['brand'] = 'Pegassi',
		['model'] = 'reaper',
		['price'] = 100000,
		['category'] = 'super',
		['hash'] = `reaper`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['s80'] = {							--DLC
		['name'] = 'S80RR',
		['brand'] = 'Annis',
		['model'] = 's80',
		['price'] = 205000,
		['category'] = 'super',
		['hash'] = `s80`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['sc1'] = {
		['name'] = 'SC1',
		['brand'] = 'Übermacht',
		['model'] = 'sc1',
		['price'] = 90000,
		['category'] = 'super',
		['hash'] = `sc1`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['sheava'] = {							--DLC
		['name'] = 'ETR1',
		['brand'] = 'Emperor',
		['model'] = 'sheava',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = `sheava`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['sultanrs'] = {
		['name'] = 'Sultan RS',
		['brand'] = 'Karin',
		['model'] = 'sultanrs',
		['price'] = 76500,
		['category'] = 'sports',
		['hash'] = `sultanrs`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['t20'] = {
		['name'] = 'T20',
		['brand'] = 'Progen',
		['model'] = 't20',
		['price'] = 1650000,
		['category'] = 'super',
		['hash'] = `t20`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['taipan'] = {
		['name'] = 'Taipan',
		['brand'] = 'Cheval',
		['model'] = 'taipan',
		['price'] = 1850000,
		['category'] = 'super',
		['hash'] = `taipan`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tempesta'] = {
		['name'] = 'Tempesta',
		['brand'] = 'Pegassi',
		['model'] = 'tempesta',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = `tempesta`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tezeract'] = {
		['name'] = 'Tezeract',
		['brand'] = 'Pegassi',
		['model'] = 'tezeract',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = `tezeract`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['thrax'] = {							--DLC
		['name'] = 'Thrax',
		['brand'] = 'Truffade',
		['model'] = 'thrax',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = `thrax`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tigon'] = {
		['name'] = 'Tigon',
		['brand'] = 'Lampadati',
		['model'] = 'tigon',
		['price'] = 240000,
		['category'] = 'super',
		['hash'] = `tigon`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['turismor'] = {
		['name'] = 'Turismo R',
		['brand'] = 'Grotti',
		['model'] = 'turismor',
		['price'] = 140000,
		['category'] = 'super',
		['hash'] = `turismor`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tyrant'] = {
		['name'] = 'Tyrant',
		['brand'] = ' Överflöd',
		['model'] = 'tyrant',
		['price'] = 2100000,
		['category'] = 'super',
		['hash'] = `tyrant`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['tyrus'] = {
		['name'] = 'Tyrus',
		['brand'] = 'Progen',
		['model'] = 'tyrus',
		['price'] = 230000,
		['category'] = 'super',
		['hash'] = `tyrus`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vader'] = {
		['name'] = 'Vader',
		['brand'] = 'Shitzu',
		['model'] = 'vader',
		['price'] = 7200,
		['category'] = 'motorcycles',
		['hash'] = `vader`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vagrant'] = {
		['name'] = 'Vagrant',
		['brand'] = 'Maxwell',
		['price'] = 50000,
		['category'] = 'offroad',
		['model'] = 'vagrant',
		['hash'] = `vagrant`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vamos'] = {
		['name'] = 'Vamos',
		['brand'] = 'Declasse',
		['model'] = 'vamos',
		['price'] = 30000,
		['category'] = 'muscle',
		['hash'] = `vamos`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['verus'] = {
		['name'] = 'Verus',
		['brand'] = 'Dinka',
		['price'] = 20000,
		['category'] = 'offroad',
		['model'] = 'verus',
		['hash'] = `verus`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['vagner'] = {
		['name'] = 'Vagner',
		['brand'] = 'Dewbauchee',
		['model'] = 'vagner',
		['price'] = 1660000,
		['category'] = 'super',
		['hash'] = `vagner`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['visione'] = {
		['name'] = 'Visione',
		['brand'] = 'Grotti',
		['model'] = 'visione',
		['price'] = 750000,
		['category'] = 'sports',
		['hash'] = `visione`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['voltic'] = {
		['name'] = 'Voltic',
		['brand'] = 'Coil',
		['model'] = 'voltic',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = `voltic`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['xa21'] = {
		['name'] = 'XA-21',
		['brand'] = 'Ocelot',
		['model'] = 'xa21',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = `xa21`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zentorno'] = {
		['name'] = 'Zentorno',
		['brand'] = 'Pegassi',
		['model'] = 'zentorno',
		['price'] = 340000,
		['category'] = 'super',
		['hash'] = `zentorno`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zorrusso'] = {							--DLC
		['name'] = 'Zorrusso',
		['brand'] = 'Pegassi',
		['model'] = 'zorrusso',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `zorrusso`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	-- Vans
	['bison'] = {
		['name'] = 'Bison',
		['brand'] = 'Bravado',
		['model'] = 'bison',
		['price'] = 18000,
		['category'] = 'vans',
		['hash'] = `bison`,
		['shop'] = 'pdm',
		["trunkspace"] = 175000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['bobcatxl'] = {
		['name'] = 'Bobcat XL Open',
		['brand'] = 'Vapid',
		['model'] = 'bobcatxl',
		['price'] = 13500,
		['category'] = 'vans',
		['hash'] = `bobcatxl`,
		['shop'] = 'pdm',
		["trunkspace"] = 125000, -- 20kg 
        ["trunkslots"] = 30, -- 5 slots
	},
	['burrito3'] = {
		['name'] = 'Burrito',
		['brand'] = 'Declasse',
		['model'] = 'burrito3',
		['price'] = 200000,
		['category'] = 'vans',
		['hash'] = `burrito3`,
		['shop'] = 'pdm',
		["trunkspace"] = 180000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['gburrito2'] = {
		['name'] = 'Burrito Custom',
		['brand'] = 'Declasse',
		['model'] = 'gburrito2',
		['price'] = 11500,
		['category'] = 'vans',
		['hash'] = `gburrito2`,
		['shop'] = 'pdm',
		["trunkspace"] = 200000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['rumpo'] = {
		['name'] = 'Rumpo',
		['brand'] = 'Bravado',
		['model'] = 'rumpo',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = `rumpo`,
		['shop'] = 'pdm',
		["trunkspace"] = 150000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['journey'] = {
		['name'] = 'Journey',
		['brand'] = 'Zirconium',
		['model'] = 'journey',
		['price'] = 6500,
		['category'] = 'vans',
		['hash'] = `journey`,
		['shop'] = 'pdm',
		["trunkspace"] = 250000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['minivan'] = {
		['name'] = 'Minivan',
		['brand'] = 'Vapid',
		['model'] = 'minivan',
		['price'] = 7000,
		['category'] = 'vans',
		['hash'] = `minivan`,
		['shop'] = 'pdm',
		["trunkspace"] = 75000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['minivan2'] = {
		['name'] = 'Minivan Custom',
		['brand'] = 'Vapid',
		['model'] = 'minivan2',
		['price'] = 10000,
		['category'] = 'vans',
		['hash'] = `minivan2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['paradise'] = {
		['name'] = 'Paradise',
		['brand'] = 'Bravado',
		['model'] = 'paradise',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = `paradise`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rumpo3'] = {
		['name'] = 'Rumpo Custom',
		['brand'] = 'Bravado',
		['model'] = 'rumpo3',
		['price'] = 19500,
		['category'] = 'vans',
		['hash'] = `rumpo3`,
		['shop'] = 'pdm',
		["trunkspace"] = 175000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['speedo'] = {
		['name'] = 'Speedo',
		['brand'] = 'Vapid',
		['model'] = 'speedo',
		['price'] = 10000,
		['category'] = 'vans',
		['hash'] = `speedo`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['speedo4'] = {
		['name'] = 'Speedo Custom',
		['brand'] = 'Vapid',
		['model'] = 'speedo4',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = `speedo4`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['surfer'] = {
		['name'] = 'Surfer',
		['brand'] = 'BF',
		['model'] = 'surfer',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = `surfer`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['youga3'] = {
		['name'] = 'Youga Classic 4x4',
		['brand'] = 'Bravado',
		['model'] = 'youga3',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = `youga3`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['youga'] = {
		['name'] = 'Youga',
		['brand'] = 'Bravado',
		['model'] = 'youga',
		['price'] = 8000,
		['category'] = 'vans',
		['hash'] = `youga`,
		['shop'] = 'pdm',
		["trunkspace"] = 105000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['youga2'] = {
		['name'] = 'Youga Classic',
		['brand'] = 'Bravado',
		['model'] = 'youga2',
		['price'] = 14500,
		['category'] = 'vans',
		['hash'] = `youga2`,
		['shop'] = 'pdm',
		["trunkspace"] = 110000, -- 20kg 
        ["trunkslots"] = 10, -- 5 slots
	},
	['youga3'] = {
		['name'] = 'Youga Classic 4x4',
		['brand'] = 'Bravado',
		['model'] = 'youga3',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = `youga3`,
		['shop'] = 'pdm',
		["trunkspace"] = 120000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zion3'] = {
		['name'] = 'Zion Classic',
		['brand'] = 'Übermacht',
		['model'] = 'zion3',
		['price'] = 45000,
		['category'] = 'sportsclassic',
		['hash'] = `zion3`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zombiea'] = {
		['name'] = 'Zombie Bobber',
		['brand'] = 'Western',
		['model'] = 'zombiea',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = `zombiea`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zorrusso'] = {
		['name'] = 'Zorrusso',
		['brand'] = 'Pegassi',
		['model'] = 'zorrusso',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `zorrusso`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},

	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------
	----------MUST BE ENABLED FOR THE BELOW VEHICLES-------------+set sv_enforceGameBuild 2372-------------------------------

	
	    ['comet6'] = {
		['name'] = 'Comet S2',
		['brand'] = 'Pfister',
		['model'] = 'comet6',
		['price'] = 230000,
		['category'] = 'sports',
		['hash'] = `comet6`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['guardian'] = {
		['name'] = 'Guardian',
		['brand'] = 'Vapid',
		['model'] = 'guardian',
		['price'] = 48000,
		['category'] = 'offroad',
		['hash'] = `guardian`,
		['shop'] = 'pdm',
		["trunkspace"] = 130000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['valkyrie'] = {
		['name'] = 'Valkyrie',
		['brand'] = 'Buckingham',
		['model'] = 'valkyrie',
		['price'] = 1500000,
		['category'] = 'sports',
		['hash'] = `valkyrie`,
		['shop'] = 'pdm',
		["trunkspace"] = 100000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['jester4'] = {
		['name'] = 'Jester RR',
		['brand'] = 'Dinka',
		['model'] = 'jester4',
		['price'] = 240000,
		['category'] = 'sports',
		['hash'] = `jester4`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['slamtruck'] = {
		['name'] = 'Slam Truck',
		['brand'] = 'Vapid',
		['model'] = 'slamtruck',
		['price'] = 100000,
		['category'] = 'muscle',
		['hash'] = `slamtruck`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['warrener2'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Warrener HKR',
		['brand'] = 'Vulcar',
		['model'] = 'warrener2',
		['price'] = 30000,
		['category'] = 'sedans',
		['hash'] = `warrener2`,
		['shop'] = 'pdm',
		["trunkspace"] = 40000, -- 20kg 
        ["trunkslots"] = 8, -- 5 slots
	},
	['rt3000'] = {
		['name'] = 'RT3000',
		['brand'] = 'Dinka',
		['model'] = 'rt3000',
		['price'] = 65000,
		['category'] = 'sports',
		['hash'] = `rt3000`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['zr350'] = {
		['name'] = 'ZR350',
		['brand'] = 'Annis',
		['model'] = 'zr350',
		['price'] = 38000,
		['category'] = 'sports',
		['hash'] = `zr350`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dominator7'] = {
		['name'] = 'Dominator ASP',
		['brand'] = 'Vapid',
		['model'] = 'dominator7',
		['price'] = 110000,
		['category'] = 'muscle',
		['hash'] = `dominator7`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['dominator8'] = {
		['name'] = 'Dominator GTT',
		['brand'] = 'Vapid',
		['model'] = 'dominator8',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = `dominator8`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['euros'] = {
		['name'] = 'Euros',
		['brand'] = 'Annis',
		['model'] = 'euros',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `euros`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['futo2'] = {
		['name'] = 'Futo GTX',
		['brand'] = 'Karin',
		['model'] = 'futo2',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = `futo2`,
		['shop'] = 'pdm',
		["trunkspace"] = 7500, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['calico'] = {
		['name'] = 'Calico GTF',
		['brand'] = 'Karin',
		['model'] = 'calico',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = `calico`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['sultan3'] = {
		['name'] = 'Sultan Classic Custom',
		['brand'] = 'Karin',
		['model'] = 'sultan3',
		['price'] = 56000,
		['category'] = 'sports',
		['hash'] = `sultan3`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 6, -- 5 slots
	},
	['vectre'] = {
		['name'] = 'Emperor Vectre',
		['brand'] = 'Emperor',
		['model'] = 'vectre',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = `vectre`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['growler'] = {
		['name'] = 'Growler',
		['brand'] = 'Pfister',
		['model'] = 'growler',
		['price'] = 205000,
		['category'] = 'sports',
		['hash'] = `growler`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cypher'] = {
		['name'] = 'Cypher',
		['brand'] = 'Ubermacht',
		['model'] = 'cypher',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = `cypher`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['previon'] = {
		['name'] = 'Previon',
		['brand'] = 'Karin',
		['model'] = 'previon',
		['price'] = 149000,
		['category'] = 'coupes',
		['hash'] = `previon`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},

    --Heli
	['volatus'] = {
		['name'] = 'Volatus',
		['brand'] = 'Buckingham',
		['model'] = 'volatus',
		['price'] = 500000,
		['category'] = 'sports',
		['hash'] = `volatus`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['supervolito'] = {
		['name'] = 'SuperVolito',
		['brand'] = 'Buckingham',
		['model'] = 'supervolito',
		['price'] = 500000,
		['category'] = 'sports',
		['hash'] = `supervolito`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['swift'] = {
		['name'] = 'Swift',
		['brand'] = 'Buckingham',
		['model'] = 'swift',
		['price'] = 400000,
		['category'] = 'sports',
		['hash'] = `swift`,
		['shop'] = 'pdm',
		["trunkspace"] = 20000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cesc21'] = {
		['name'] = 'Honda',
		['brand'] = 'Honda',
		['model'] = 'cesc21',
		['price'] = 277000,
		['category'] = 'motorcycles',
		['hash'] = `cesc21`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['s8d2'] = {
		['name'] = 'Quattro',
		['brand'] = 'Audi',
		['model'] = 's8d2',
		['price'] = 277000,
		['category'] = 'classic',
		['hash'] = `s8d2`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['G65'] = {
		['name'] = 'Mercedes Benz G65',
		['brand'] = 'Mercedes',
		['model'] = 'G65',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `G65`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rrevoque'] = {
		['name'] = 'Range Rover Evoque',
		['brand'] = 'Range Rover',
		['model'] = 'rrevoque',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `rrevoque`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['bolide'] = {
		['name'] = 'Bugatti Bolide',
		['brand'] = 'Bugatti',
		['model'] = 'bolide',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `bolide`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['krust'] = {
		['name'] = 'LCC Krust',
		['brand'] = 'LCC',
		['model'] = 'krust',
		['price'] = 277000,
		['category'] = 'motorcycles',
		['hash'] = `krust`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['e63w213'] = {
		['name'] = 'Mercedes Benz E63 AMG',
		['brand'] = 'Mercedes Benz',
		['model'] = 'e63w213',
		['price'] = 277000,
		['category'] = 'luxus',
		['hash'] = `e63w213`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['expmax20'] = {
		['name'] = 'Ford Platinum',
		['brand'] = 'Ford',
		['model'] = 'expmax20',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `expmax20`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cookiers6a'] = {
		['name'] = 'Audi RS6 Avant',
		['brand'] = 'Audi',
		['model'] = 'cookiers6a',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `cookiers6a`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['e63s'] = {
		['name'] = 'Mercedes Benz e63s AMG',
		['brand'] = 'Mercedes Benz',
		['model'] = 'e63s',
		['price'] = 277000,
		['category'] = 'luxus',
		['hash'] = `e63s`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['2leo9'] = {
		['name'] = 'Chevrolet Escalade',
		['brand'] = 'Chevrolet',
		['model'] = '2leo9',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `2leo9`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['rbchgr18b'] = {
		['name'] = 'Dodge Charger AWD',
		['brand'] = 'Dodge',
		['model'] = 'rbchgr18b',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `rbchgr18b`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['police7'] = {
		['name'] = 'Polizei Auto 7',
		['brand'] = 'Polizei',
		['model'] = 'police7',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `police7`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['police10'] = {
		['name'] = 'Polizei Auto 10',
		['brand'] = 'Polizei',
		['model'] = 'police10',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `police10`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['d'] = {
		['name'] = 'Dodge Charger Polizei',
		['brand'] = 'Dodge',
		['model'] = 'd',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `d`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lsfd5'] = {
		['name'] = 'Feuerwehr Auto ',
		['brand'] = 'Feuerwehr',
		['model'] = 'lsfd5',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `lsfd5`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lsfd2'] = {
		['name'] = 'Feuerwehr Auto 1',
		['brand'] = 'Feuerwehr',
		['model'] = 'lsfd2',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `lsfd2`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lsfd'] = {
		['name'] = 'Feuerwehr Auto 2',
		['brand'] = 'Feuerwehr',
		['model'] = 'lsfd',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `lsfd`,
		['shop'] = 'pdm',
		["trunkspace"] = 25000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['trhawk'] = {
		['name'] = 'Jeep Grand Cherokee',
		['brand'] = 'Jeep',
		['model'] = 'trhawk',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `trhawk`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['w140'] = {
		['name'] = 'Mercedes Benz 140',
		['brand'] = 'Mercedes',
		['model'] = 'w140',
		['price'] = 277000,
		['category'] = 'classic',
		['hash'] = `w140`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['w201'] = {
		['name'] = 'Mercedes Benz 201',
		['brand'] = 'Mercedes',
		['model'] = 'w201',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `w201`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['komodafr'] = {
		['name'] = 'Komoda Tuner',
		['brand'] = 'Komoda',
		['model'] = 'komodafr',
		['price'] = 277000,
		['category'] = 'SUV',
		['hash'] = `komodafr`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lamtmc'] = {
		['name'] = 'Lamborghini Hybrid',
		['brand'] = 'Lamborghini',
		['model'] = 'lamtmc',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `lamtmc`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lp670sv'] = {
		['name'] = 'Lamborghini LP670',
		['brand'] = 'Lamborghini',
		['model'] = 'lp670sv',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = `lp670sv`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['lynxgpr'] = {
		['name'] = 'Lynx Tuner',
		['brand'] = 'Lynx',
		['model'] = 'lynxgpr',
		['price'] = 277000,
		['category'] = 'sport',
		['hash'] = `lynxgpr`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['m2f22'] = {
		['name'] = 'BMW M2',
		['brand'] = 'BMW',
		['model'] = 'm2f22',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `m2f22`,
		['shop'] = 'pdm',
		["trunkspace"] = 10000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['m3e46'] = {
		['name'] = 'BMW M3',
		['brand'] = 'BMW',
		['model'] = 'm3e46',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `m3e46`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mach1'] = {
		['name'] = 'Shelby Mach',
		['brand'] = 'Shelby',
		['model'] = 'mach1',
		['price'] = 277000,
		['category'] = 'muscle',
		['hash'] = `mach1`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mc250'] = {
		['name'] = 'Mercedes Benz C250',
		['brand'] = 'Mercedes',
		['model'] = 'mc250',
		['price'] = 277000,
		['category'] = 'luxus',
		['hash'] = `mc250`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mk7'] = {
		['name'] = 'Volkswagen GTI Elektro',
		['brand'] = 'Volkswagen',
		['model'] = 'mk7',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `mk7`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['paragonxr'] = {
		['name'] = 'Paragon Tuner',
		['brand'] = 'Paragon',
		['model'] = 'paragonxr',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `paragonxr`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['sesto'] = {
		['name'] = 'Lamborghini Sesto',
		['brand'] = 'Lamborghini',
		['model'] = 'sesto',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `sesto`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['718boxster'] = {
		['name'] = 'Porsche Boxster 718s',
		['brand'] = 'Porsche',
		['model'] = '718boxster',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `718boxster`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['720stc'] = {
		['name'] = 'McLaren 720',
		['brand'] = 'McLaren',
		['model'] = '720stc',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `720stc`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['a45amg'] = {
		['name'] = 'Mercedes Benz A45 AMG',
		['brand'] = 'Mercedes',
		['model'] = 'a45amg',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `a45amg`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['amggtbs'] = {
		['name'] = 'Mercedes Benz GT AMG',
		['brand'] = 'Mercedes',
		['model'] = 'amggtbs',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `amggtbs`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['audirs3'] = {
		['name'] = 'Audi RS3',
		['brand'] = 'Audi',
		['model'] = 'audirs3',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `audirs3`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['audis8om'] = {
		['name'] = 'Audi S8',
		['brand'] = 'Audi',
		['model'] = 'audis8om',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `audis8om`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['audsq517'] = {
		['name'] = 'Audi SQ5',
		['brand'] = 'Audi',
		['model'] = 'audsq517',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `audsq517`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['b63s'] = {
		['name'] = 'Brabus B63S',
		['brand'] = 'Brabus',
		['model'] = 'b63s',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `b63s`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['bc'] = {
		['name'] = 'Pagani Hyuara',
		['brand'] = 'Pagani',
		['model'] = 'bc',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `bc`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cyrus'] = {
		['name'] = 'Aston Martin Mansory',
		['brand'] = 'Aston Martin',
		['model'] = 'cyrus',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `cyrus`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['demon'] = {
		['name'] = 'Dodge Charger SRT',
		['brand'] = 'Dodge',
		['model'] = 'demon',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `demon`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['draftgpr'] = {
		['name'] = 'Drafter Tuner',
		['brand'] = 'Drafter',
		['model'] = 'draftgpr',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `draftgpr`,
		['shop'] = 'pdm',
		["trunkspace"] = 15000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['frs'] = {
		['name'] = 'Ford Raptor F150',
		['brand'] = 'Ford Raptor',
		['model'] = 'frs',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `frs`,
		['shop'] = 'pdm',
		["trunkspace"] = 75000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['furzen'] = {
		['name'] = 'Käfer',
		['brand'] = 'Käfer',
		['model'] = 'furzen',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `furzen`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['g500'] = {
		['name'] = 'Brabus G500 4x4',
		['brand'] = 'Brabus',
		['model'] = 'g500',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `g500`,
		['shop'] = 'pdm',
		["trunkspace"] = 45000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['jackgpr'] = {
		['name'] = 'Jackal Tuner',
		['brand'] = 'Jackal',
		['model'] = 'jackgpr',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `jackgpr`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['16m5'] = {
		['name'] = 'BMW M5',
		['brand'] = 'BMW',
		['model'] = '16m5',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `16m5`,
		['shop'] = 'pdm',
		["trunkspace"] = 35000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['458spc'] = {
		['name'] = 'Ferrari 458 Spezial ',
		['brand'] = 'Ferrari',
		['model'] = '458spc',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `458spc`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['675lt'] = {
		['name'] = 'McLaren 675 LT',
		['brand'] = 'McLaren',
		['model'] = '675lt',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `675lt`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['amdbx'] = {
		['name'] = 'Aston Martin AMD',
		['brand'] = 'Aston Martin',
		['model'] = 'amdbx',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `amdbx`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['regera'] = {
		['name'] = 'Koenigsegg Regera',
		['brand'] = 'Koenigsegg',
		['model'] = 'regera',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `regera`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['r8ppi'] = {
		['name'] = 'Audi R8',
		['brand'] = 'Audi',
		['model'] = 'r8ppi',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `r8ppi`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['cocos'] = {
		['name'] = 'Custombike',
		['brand'] = 'Bike',
		['model'] = 'cocos',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `cocos`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['indian'] = {
		['name'] = 'Custombike1',
		['brand'] = 'Bike',
		['model'] = 'indian',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `indian`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['devotee'] = {
		['name'] = 'Custombike2',
		['brand'] = 'Bike',
		['model'] = 'devotee',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `devotee`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['polbuffalor'] = {
		['name'] = 'Buffalo Sheriff',
		['brand'] = 'Buffalo',
		['model'] = 'polbuffalor',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `polbuffalor`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['polalamor'] = {
		['name'] = 'Declasse Sheriff',
		['brand'] = 'Declasse',
		['model'] = 'polalamor',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `polalamor`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bcsoscout'] = {
		['name'] = 'Scout Sheriff',
		['brand'] = 'Scout',
		['model'] = 'bcsoscout',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `bcsoscout`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bcsofugitive'] = {
		['name'] = 'Fugitive Sheriff',
		['brand'] = 'Fugitive',
		['model'] = 'bcsofugitive',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `bcsofugitive`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['polgauntletr'] = {
		['name'] = 'Graunlet Sheriff',
		['brand'] = 'Graunlet',
		['model'] = 'polgauntletr',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `polgauntletr`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['bcsosandking'] = {
		['name'] = 'Sandking Sheriff',
		['brand'] = 'Sandking',
		['model'] = 'bcsosandking',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `bcsosandking`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['gauntletctx'] = {
		['name'] = 'Grauntlet Tuner',
		['brand'] = 'Graunlet',
		['model'] = 'gauntletctx',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `gauntletctx`,
		['shop'] = 'pdm',
		["trunkspace"] = 5000, -- 20kg 
        ["trunkslots"] = 15, -- 5 slots
	},
	['mule'] = {
		['name'] = 'Mule',
		['brand'] = 'Maibatsu',
		['model'] = 'mule',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `mule`,
		['shop'] = 'pdm',
		["trunkspace"] = 350000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['mule2'] = {
		['name'] = 'Mule2',
		['brand'] = 'Maibatsu',
		['model'] = 'mule2',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `mule2`,
		['shop'] = 'pdm',
		["trunkspace"] = 375000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['mule3'] = {
		['name'] = 'Mule3',
		['brand'] = 'Maibatsu',
		['model'] = 'mule3',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `mule3`,
		['shop'] = 'pdm',
		["trunkspace"] = 375000, -- 20kg 
        ["trunkslots"] = 25, -- 5 slots
	},
	['mule4'] = {
		['name'] = 'Mule Custom',
		['brand'] = 'Maibatsu',
		['model'] = 'gauntletctx',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `gauntletctx`,
		['shop'] = 'pdm',
		["trunkspace"] = 450000, -- 20kg 
        ["trunkslots"] = 30, -- 5 slots
	},
	['benson'] = {
		['name'] = 'Benson',
		['brand'] = 'Vapid',
		['model'] = 'benson',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `benson`,
		['shop'] = 'pdm',
		["trunkspace"] = 650000, -- 20kg 
        ["trunkslots"] = 30, -- 5 slots
	},
	['pounder'] = {
		['name'] = 'Pounder',
		['brand'] = 'MTL',
		['model'] = 'pounder',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `pounder`,
		['shop'] = 'pdm',
		["trunkspace"] = 850000, -- 20kg 
        ["trunkslots"] = 35, -- 5 slots
	},
	['pounder2'] = {
		['name'] = 'Pounder Custom',
		['brand'] = 'MTL',
		['model'] = 'pounder2',
		['price'] = 277000,
		['category'] = 'sports',
		['hash'] = `pounder2`,
		['shop'] = 'pdm',
		["trunkspace"] = 1000000, -- 20kg 
        ["trunkslots"] = 40, -- 5 slots
	},
	['camper'] = {
		['name'] = 'Camper',
		['brand'] = 'Brute',
		['model'] = 'camper',
		['price'] = 277000,
		['category'] = 'vans',
		['hash'] = `camper`,
		['shop'] = 'pdm',
		["trunkspace"] = 500000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['saltflat'] = {
		['name'] = 'Maxwell Saltflat 600',
		['brand'] = 'Bike',
		['model'] = 'saltflat',
		['price'] = 277000,
		['category'] = 'vans',
		['hash'] = `saltflat`,
		['shop'] = 'pdm',
		["trunkspace"] = 500000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['lpchopper'] = {
		['name'] = 'LCC Blackwater',
		['brand'] = 'Bike',
		['model'] = 'lpchopper',
		['price'] = 277000,
		['category'] = 'vans',
		['hash'] = `lpchopper`,
		['shop'] = 'pdm',
		["trunkspace"] = 500000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
	['chimerac'] = {
		['name'] = 'Nagasaki Chimera Chopper',
		['brand'] = 'Bike',
		['model'] = 'chimerac',
		['price'] = 277000,
		['category'] = 'vans',
		['hash'] = `chimerac`,
		['shop'] = 'pdm',
		["trunkspace"] = 500000, -- 20kg 
        ["trunkslots"] = 50, -- 5 slots
	},
}
