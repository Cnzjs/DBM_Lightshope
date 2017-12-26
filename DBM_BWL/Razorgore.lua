DBM.AddOns.Razorgore = {
	["Name"] = DBM_RG_NAME,
	["Abbreviation1"] = "rg",
	["Abbreviation2"] = "razor",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_RG_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 1,
	["Egg"] = 0,
	["Syncegg"] = 0,
	["LastCountMsg"] = 0,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_ADDON"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(45, "Add Spawn");
		DBM.AddOns.Razorgore.Egg = 0;
		DBM.AddOns.Razorgore.Syncegg = 0;
		DBM.AddOns.Razorgore.LastCountMsg = 0;
	end,
	["OnEvent"] = function(event, arg1) 
		if event == "CHAT_MSG_ADDON" and arg1 == "RZEGG" and arg2 and arg3 == "RAID" and arg4 ~= UnitName("player") then
			local count = 0;
			local syncDestroyed = arg2;
			
			if (tonumber(syncDestroyed) or 0) > DBM.AddOns.Razorgore.Syncegg then
					DBM.AddOns.Razorgore.Syncegg = (tonumber(syncDestroyed) or 0);
			end
			if DBM.AddOns.Razorgore.Syncegg > DBM.AddOns.Razorgore.Egg then
				DBM.AddOns.Razorgore.Egg = DBM.AddOns.Razorgore.Syncegg;
				count = count + DBM.AddOns.Razorgore.Syncegg;
			else
				count = count + DBM.AddOns.Razorgore.Egg;
			end
			if( count > 3 and (time() - DBM.AddOns.Razorgore.LastCountMsg) > 10 ) then
				DBM.AddOns.Razorgore.LastCountMsg = time();
				DBM.Announce( string.format(DBM_RG_EGG_ANNOUNCE, count) );
			end

		elseif (event == "CHAT_MSG_MONSTER_EMOTE") and string.find (arg1,DBM_RG_EGGEXPR) then
			DBM.AddOns.Razorgore.Egg = DBM.AddOns.Razorgore.Egg + 1;
			local syncString = tostring(DBM.AddOns.Razorgore.Egg);
			SendAddonMessage("RZEGG", syncString, "RAID");
			-- if (DBM.AddOns.Razorgore.Egg == 28 or DBM.AddOns.Razorgore.Egg == 29 or DBM.AddOns.Razorgore.Egg == 30)
				-- DBM.Announce( string.format(DBM_RG_EGG_ANNOUNCE, DBM.AddOns.Razorgore.Egg) );
			-- end
		elseif (event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") and string.find (arg1,DBM_RG_FIREBALLV) then
			DBM.Announce(DBM_RG_FIREBALLV_ANNOUNCE);


		end
	end,		
};
