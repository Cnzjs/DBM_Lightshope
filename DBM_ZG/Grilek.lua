-- 
-- Grilek v1.0
--

DBM.AddOns.Grilek = { 
	["Name"] = DBM_GRILEK_NAME,
	["Abbreviation1"] = "Grilek", 
	["Version"] = "1.0",
	["Author"] = "cnzjs",
	["Description"] = DBM_GRILEK_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 10,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE" and string.find (arg1,DBM_GRILEK_AVATAR_EXPR) ) then
			DBM.Announce(DBM_GRILEK_AVATAR_ANNOUNCE);
			DBM.StartStatusBarTimer(15, "Grilek_Avatar", "Interface\\Icons\\Ability_Racial_Avatar");

		elseif ( event == "CHAT_MSG_MONSTER_YELL" and arg1 == DBM_VENOXIS_TRANSFORM_EXPR ) then
			DBM.Announce(DBM_VENOXIS_TRANSFORM_ANNOUNCE);

		end
	end,		
};
