DBM.AddOns.Ragnaros = { 
	["Name"] = DBM_RAGNAROS_NAME,
	["Abbreviation1"] = "Ragna",
	["Abbreviation1"] = "Rag",
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_RAGNAROS_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 10,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["InCombat"] = false,
	["Submerged"] = false,
	["Rag_Mobdead"] = 0;
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_COMBAT_HOSTILE_DEATH"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.AddOns.Ragnaros.Rag_Mobdead = 0;
		DBM.AddOns.Ragnaros.Submerged = false;
		-- DBM.Announce(DBM_RAGNAROS_EMERGED);
		DBM.Schedule(170 - delay, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 10);
		DBM.StartStatusBarTimer(180 - delay, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
		DBM.StartStatusBarTimer(26, "Wrath of Ragnaros", "Interface\\Icons\\Spell_Fire_SoulBurn");
		DBM.Schedule(24, "DBM.AddOns.Ragnaros.OnEvent", "WrathWarning");
	end,
	["OnCombatEnd"] = function()
		DBM.AddOns.Ragnaros.Submerged = false;
		DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 10);
		DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 10);
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if ( arg1 == DBM_RAGNAROS_WRATH ) then
				DBM.Announce(DBM_RAGNAROS_WRATH_WARN1);
				DBM.EndStatusBarTimer("Wrath of Ragnaros");
				DBM.StartStatusBarTimer(26, "Wrath of Ragnaros", "Interface\\Icons\\Spell_Fire_SoulBurn");
				DBM.Schedule(24, "DBM.AddOns.Ragnaros.OnEvent", "WrathWarning");
			elseif ( arg1 == DBM_RAGNAROS_SUBMERGE ) then
				DBM.AddOns.Ragnaros.Submerged = true;
				DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "WrathWarning");
				DBM.EndStatusBarTimer("Wrath of Ragnaros");
				DBM.EndStatusBarTimer("Submerge");
				DBM.StartStatusBarTimer(90, "Emerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendUnBurrow");
				DBM.Schedule(80, "DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 10);
				DBM.Schedule(90, "DBM.AddOns.Ragnaros.OnEvent", "Emerge");
			elseif string.find ( arg1,DBM_RAGNAROS_SUMMONED ) then
				DBM.StartStatusBarTimer(77, "10_Fight", "Interface\\Icons\\Inv_Hammer_Unique_Sulfuras");
			end
			if ( arg1 ~= DBM_RAGNAROS_SUBMERGE ) and ( arg2 == DBM_RAGNAROS_NAME ) and ( DBM.AddOns.Ragnaros.Submerged ) then
				DBM.AddOns.Ragnaros.OnEvent("Emerge");
			end
		elseif ( event == "CHAT_MSG_COMBAT_HOSTILE_DEATH" ) and string.find (arg1,DBM_RAGNAROS_MOBDEAD) then
			DBM.AddOns.Ragnaros.Rag_Mobdead = DBM.AddOns.Ragnaros.Rag_Mobdead + 1;
			DBM.Announce(string.format(DBM_RAGNAROS_MOBDEAD_ANNOUNCE, DBM.AddOns.Ragnaros.Rag_Mobdead));
			-- DEFAULT_CHAT_FRAME:AddMessage(DBM_RAGNAROS_MOBDEAD_ANNOUNCE);
			if (DBM.AddOns.Ragnaros.Rag_Mobdead == 8) then
				DBM.AddOns.Ragnaros.OnEvent("Emerge");
				DBM.AddOns.Ragnaros.Rag_Mobdead = 0;
			end
		elseif ( event == "Emerge" ) then
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "Emerge");
			DBM.UnSchedule("DBM.AddOns.Ragnaros.OnEvent", "EmergeWarning", 10);
			DBM.AddOns.Ragnaros.Submerged = false;
			DBM.EndStatusBarTimer("Emerge");
			DBM.StartStatusBarTimer(15, "Wrath of Ragnaros", "Interface\\Icons\\Spell_Fire_SoulBurn");
			DBM.Schedule(13, "DBM.AddOns.Ragnaros.OnEvent", "WrathWarning");
			-- DBM.Announce(DBM_RAGNAROS_EMERGED);
			DBM.Schedule(170, "DBM.AddOns.Ragnaros.OnEvent", "SubmergeWarning", 10);
			DBM.StartStatusBarTimer(180, "Submerge", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendBurrow");
		elseif ( event == "WrathWarning" ) then
			DBM.Announce(DBM_RAGNAROS_WRATH_WARN2);
		elseif ( event == "SubmergeWarning" ) then
			if type(arg1) == "number" then
				if arg1 > 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1/60, DBM_MINUTES))
				elseif arg1 == 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1/60, DBM_MINUTE))
				else
					DBM.Announce(string.format(DBM_RAGNAROS_SUBMERGE_WARN, arg1, DBM_SECONDS))
				end
			end
		elseif ( event == "EmergeWarning" ) then
			if type(arg1) == "number" then
				if arg1 > 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1/60, DBM_MINUTES))
				elseif arg1 == 60 then
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1/60, DBM_MINUTE))
				else
					DBM.Announce(string.format(DBM_RAGNAROS_EMERGE_WARN, arg1, DBM_SECONDS))
				end
			end
		end
	end,
};
