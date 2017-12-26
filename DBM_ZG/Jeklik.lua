-- 
-- High Priestess Jeklik v1.0
--

DBM.AddOns.Jeklik = { 
	["Name"] = DBM_JEKLIK_NAME,
	["Abbreviation1"] = "Jeklik", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_JEKLIK_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Sort"] = 1,
	["Flag"] = 0,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(12, "Jeklik_Silence", "Interface\\Icons\\Spell_Frost_Iceshock");
		DBM.StartStatusBarTimer(60, "Jeklik_Bats", "Interface\\Icons\\Spell_Fire_SelfDestruct");
	end,
	["OnCombatEnd"] = function()
		DBM.EndStatusBarTimer("Jeklik_Silence");
		DBM.EndStatusBarTimer("Jeklik_Bats");
		DBM.EndStatusBarTimer("Jeklik_Heal");
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_MONSTER_YELL" and string.find(arg1, DBM_JEKLIK_BOMBBATS_EXPR) ) then
			DBM.EndStatusBarTimer("Jeklik_Silence");
			DBM.EndStatusBarTimer("Jeklik_Bats");
			if ( DBM.AddOns.Jeklik.Flag == 0) then
				DBM.StartStatusBarTimer(10, "Jeklik_Heal", "Interface\\Icons\\Spell_Holy_Heal");
				DBM.AddOns.Jeklik.Flag = 1;
			end


		elseif ( event == "CHAT_MSG_MONSTER_EMOTE" and string.find(arg1, DBM_JEKLIK_CASTHEAL_EXPR) ) then
			DBM.Announce(DBM_JEKLIK_CASTHEAL_ANNOUNCE);
			DBM.EndStatusBarTimer("Jeklik_Heal");
			DBM.StartStatusBarTimer(22, "Jeklik_Heal", "Interface\\Icons\\Spell_Holy_Heal");

		elseif ( event == "CHAT_MSG_MONSTER_EMOTE" and string.find(arg1, DBM_JEKLIK_BATS_EXPR) ) then
			DBM.EndStatusBarTimer("Jeklik_Bats");
			DBM.StartStatusBarTimer(60, "Jeklik_Bats", "Interface\\Icons\\Spell_Fire_SelfDestruct");

		elseif (( event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE") and string.find(arg1, DBM_JEKLIK_SILENCE_EXPR) ) then
			DBM.EndStatusBarTimer("Jeklik_Silence");
			DBM.StartStatusBarTimer(22, "Jeklik_Silence", "Interface\\Icons\\Spell_Frost_Iceshock");

		end
	end,		
};
