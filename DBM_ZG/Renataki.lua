-- 
-- Grilek v1.0
--

DBM.AddOns.Renataki = { 
	["Name"] = DBM_RENATAKI_NAME,
	["Abbreviation1"] = "Renataki", 
	["Version"] = "1.0",
	["Author"] = "cnzjs",
	["Description"] = DBM_RENATAKI_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 12,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},	
	["OnCombatStart"] = function()
		DBM.StartStatusBarTimer(30, "Renataki_Vanish", "Interface\\Icons\\Ability_Vanish");
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and string.find (arg1,DBM_RENATAKI_AVATAR_EXPR) ) then
			DBM.Announce(DBM_RENATAKI_AVATAR_ANNOUNCE);
		end
	end,		
};
