-- 
-- Moam Beta v1.0
--

DBM.AddOns.Moam = { 
	["Name"] = DBM_MOAM_NAME,
	["Abbreviation1"] = "Moam", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MOAM_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 13,
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,

	},	
	["OnEvent"] = function(event, arg1) 
		if (event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE") and string.find (arg1,DBM_MOAM_AOE_EXPR) then
			DBM.EndStatusBarTimer("3_Aoe");
			DBM.StartStatusBarTimer(10.1, "3_Aoe", "Interface\\Icons\\Inv_Stone_15");
		end

		-- Combatstart - until Stone form
		if (event == "CHAT_MSG_MONSTER_EMOTE" and arg1 == DBM_MOAM_COMBAT_START )  then
			DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_TIME, 90) );

			DBM.StartStatusBarTimer(6.3, "3_Aoe", "Interface\\Icons\\Inv_Stone_15");
			DBM.EndStatusBarTimer("Stone form");
			DBM.StartStatusBarTimer(90, "Stone form", "Interface\\Icons\\Spell_Shadow_UnholyStrength");
		
			DBM.Schedule(30, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 60);
			DBM.Schedule(60, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 30);
			DBM.Schedule(80, "DBM.AddOns.Moam.OnEvent", "StoneWarning", 10);

		elseif ( event == "StoneWarning" ) then
			if arg1 then
				DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_TIME, arg1) );	
			end
		end

		-- Gain Stoneform - until transform
		if (event == "CHAT_MSG_MONSTER_EMOTE" and arg1 == DBM_MOAM_STONE_GAIN )  then
			DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_FADE, 90) );

			DBM.EndStatusBarTimer("Stone form");
			DBM.EndStatusBarTimer("3_Aoe");
			DBM.StartStatusBarTimer(90, "Stone form", "Interface\\Icons\\Spell_Shadow_UnholyStrength");
		
			DBM.Schedule(30, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 60);
			DBM.Schedule(60, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 30);
			DBM.Schedule(80, "DBM.AddOns.Moam.OnEvent", "StoneFadeWarning", 10);

		elseif ( event == "StoneFadeWarning" ) then
			if arg1 then
				DBM.Announce( string.format(DBM_MOAM_STONE_ANNOUNCE_FADE, arg1) );	
			end
		end

		-- Stoneform Fades
		if ( event == "CHAT_MSG_SPELL_AURA_GONE_OTHER" and string.find(arg1, DBM_MOAM_STONE_FADE_EXPR) ) then
			DBM.UnSchedule("DBM.AddOns.Moam.OnEvent");
			DBM.StartStatusBarTimer(7, "3_Aoe", "Interface\\Icons\\Inv_Stone_15");
			DBM.Announce( DBM_MOAM_STONE_FADE_ANNOUNCE );

		end
	end,		
};
