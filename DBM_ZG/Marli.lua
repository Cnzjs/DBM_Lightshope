-- 
-- High Priestess Mar'li v1.0
--

DBM.AddOns.Marli = { 
	["Name"] = DBM_MARLI_NAME,
	["Abbreviation1"] = "Marli", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MARLI_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 3,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(35, "Marli_Hennge", "Interface\\Icons\\Ability_Druid_SupriseAttack");
		DBM.StartStatusBarTimer(15, "Marli_Poisonbolt", "Interface\\Icons\\INV_Misc_Slime_01");
		DBM.Schedule(32, "DBM.AddOns.Marli.OnEvent", "hennge");
	end,
	["OnCombatEnd"] = function()
		DBM.EndStatusBarTimer("Marli_Hennge");
		DBM.EndStatusBarTimer("Marli_Hennge2");
		DBM.UnSchedule("DBM.AddOns.Marli.OnEvent");
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if string.find(arg1, DBM_MARLI_HENNGE_EXPR) then
				DBM.EndStatusBarTimer("Marli_Hennge");
				DBM.EndStatusBarTimer("Marli_Poisonbolt");
				DBM.StartStatusBarTimer(35, "Marli_Hennge2", "Interface\\Icons\\Spell_Magic_PolymorphChicken");
				DBM.Schedule(32, "DBM.AddOns.Marli.OnEvent", "hennge");
				DBM.Schedule(35, "DBM.AddOns.Marli.OnEvent", "changehuman");
			elseif string.find(arg1, DBM_MARLI_DEAD_YELL) then
				DBM.EndStatusBarTimer("Marli_Hennge");
				DBM.EndStatusBarTimer("Marli_Hennge2");
				DBM.EndStatusBarTimer("Marli_Poisonbolt");
				DBM.UnSchedule("DBM.AddOns.Marli.OnEvent");
			end

		elseif (( event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") and string.find(arg1, DBM_MARLI_POISONBOLT_EXPR) ) then
			DBM.EndStatusBarTimer("Marli_Posionbot");
			DBM.StartStatusBarTimer(18, "Marli_Poisonbolt", "Interface\\Icons\\INV_Misc_Slime_01");

		elseif ( event == "changehuman" ) then
			DBM.EndStatusBarTimer("Marli_Hennge2");
			DBM.StartStatusBarTimer(35, "Marli_Hennge", "Interface\\Icons\\Ability_Druid_SupriseAttack");
			DBM.Schedule(32, "DBM.AddOns.Marli.OnEvent", "hennge");

		elseif ( event == "hennge" ) then
			DBM.Announce( string.format(DBM_MARLI_HENNGE_ANNOUNCE, 3) );
		end

	end,		
};
