-- 
-- General Rajaxx v1.0
--

DBM.AddOns.Rajaxx = { 
	["Name"] = DBM_RAJAXX_NAME,
	["Abbreviation1"] = "Rajaxx", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_RAJAXX_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 22,
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(25, "2_Thunder", "Interface\\Icons\\Spell_Nature_Thunderclap");
	end,
	["OnEvent"] = function(event, arg1) 

		if ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if (    string.find(arg1, DBM_RAJAXX_WAVE1_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 1));
				-- no yell @ wave 2 -.- we could count the mobs killed after wave 1....but....bah.
			elseif (string.find(arg1, DBM_RAJAXX_WAVE3_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 3));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE4_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 4));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE5_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 5));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE6_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 6));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE7_EXPR)) then DBM.Announce(string.format(DBM_RAJAXX_WAVE_ANNOUNCE, 7));
			elseif (string.find(arg1, DBM_RAJAXX_WAVE8_EXPR)) then DBM.Announce(DBM_RAJAXX_WAVE_RAJAXX);
			end

			local _, _, sArg1 = string.find(arg1, DBM_RAJAXX_KILL_EXPR);
			if ( sArg1 ) then
				DBM.Announce( string.format(DBM_RAJAXX_KILL_ANNOUNCE, sArg1) );
			end
		elseif ( event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE") then
			if ( string.find(arg1,DBM_RAJAXX_THUNDER_EXPR)) then
				DBM.EndStatusBarTimer("2_Thunder");
				DBM.StartStatusBarTimer(20, "2_Thunder", "Interface\\Icons\\Spell_Nature_Thunderclap");
			elseif string.find(arg1,DBM_RAJAXX_DISARM_EXPR) then
				DBM.EndStatusBarTimer("2_Disarm");
				DBM.StartStatusBarTimer(15, "2_Disarm", "Interface\\Icons\\Ability_Warrior_Disarm");
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE") then
			if string.find(arg1,DBM_RAJAXX_DISARM_EXPR2) then
				DBM.EndStatusBarTimer("2_Disarm");
				DBM.StartStatusBarTimer(15, "2_Disarm", "Interface\\Icons\\Ability_Warrior_Disarm");
			end
		end		
	end,		
};
