-- 
-- GurubashiBerserker v1.0
--

DBM.AddOns.GurubashiBerserker = {
	["Name"] = DBM_BERSERKER_NAME,
	["Abbreviation1"] = "GurubashiBerserker", 
	["Version"] = "1.0",
	["Author"] = "cnzjs",
	["Description"] = DBM_BERSERKER_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 9,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
	},	
	["OnCombatStart"] = function()
		DBM.StartStatusBarTimer(5, "Thunder", "Interface\\Icons\\Ability_ThunderClap");
		DBM.StartStatusBarTimer(10, "Knockback", "Interface\\Icons\\INV_Gauntlets_05");
		DBM.StartStatusBarTimer(15, "Fear", "Interface\\Icons\\Ability_GolemThunderClap");
	end,
	["OnCombatEnd"] = function()
		DBM.EndStatusBarTimer("Thunder");
		DBM.EndStatusBarTimer("Knockback");
		DBM.EndStatusBarTimer("Fear");
		DBM.UnSchedule("DBM.AddOns.GurubashiBerserker.OnEvent");
	end,
	["OnEvent"] = function(event, arg1) 
		if ( 	event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or 
			event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or 
			event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or 
			event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" or 
			event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" or 
			event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE") then

			if ( string.find(arg1, DBM_BERSERKER_THUNDER_EXPR)) then
				DBM.EndStatusBarTimer("Thunder");
				DBM.StartStatusBarTimer(16, "Thunder", "Interface\\Icons\\Ability_ThunderClap");
				-- DBM.Schedule(13, "DBM.AddOns.GurubashiBerserker.OnEvent", "thunder2");
			elseif ( string.find(arg1, DBM_BERSERKER_FEAR_EXPR)) then
				DBM.EndStatusBarTimer("Fear");
				DBM.StartStatusBarTimer(28, "Fear", "Interface\\Icons\\Ability_GolemThunderClap");
				-- DBM.Schedule(25, "DBM.AddOns.GurubashiBerserker.OnEvent", "fear2");
			elseif ( string.find(arg1, DBM_BERSERKER_FEAR_EXPR2)) then
				DBM.EndStatusBarTimer("Fear");
				DBM.StartStatusBarTimer(28, "Fear", "Interface\\Icons\\Ability_GolemThunderClap");
				-- DBM.Schedule(25, "DBM.AddOns.GurubashiBerserker.OnEvent", "fear2");
			elseif ( string.find(arg1, DBM_BERSERKER_KNOCKBACK_EXPR)) then
				DBM.EndStatusBarTimer("Knockback");
				DBM.StartStatusBarTimer(10, "Knockback", "Interface\\Icons\\INV_Gauntlets_05");
				-- DBM.Schedule(7, "DBM.AddOns.GurubashiBerserker.OnEvent", "knockback2");
			end
		end

	end,		
};
