-- 
-- High Priestess Thekal Beta v1.0
--

DBM.AddOns.Thekal = { 
	["Name"] = DBM_THEKAL_NAME_TRUE,
	["Abbreviation1"] = "Thekal", 
	["Version"] = "1.0",
	["Author"] = "cnzjs",
	["Description"] = DBM_THEKAL_INFO,
	["Instance"] = DBM_ZG,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 5,
	["Addtime"] = 0,
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF"] = true,
		["CHAT_MSG_MONSTER_YELL"] = true,
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_CREATURE_VS_CREATURE_BUFF" and string.find(arg1, DBM_THEKAL_HEAL_EXPR) ) then
			DBM.Announce( DBM_THEKAL_HEAL_ANNOUNCE );

		elseif ( event == "CHAT_MSG_MONSTER_YELL" ) then
			if( string.find(arg1, DBM_THEKAL_HENNGE_EXPR) ) then
				DBM.StartStatusBarTimer(25, "Thekal_Adds", "Interface\\Icons\\Ability_Mount_JungleTiger");
				-- DBM.Schedule(25, "DBM.AddOns.Thekal.OnEvent", "adds");
			elseif ( string.find(arg1, DBM_THEKAL_END_EXPR) ) then
				DBM.EndStatusBarTimer("Thekal_Adds");
				DBM.UnSchedule("DBM.AddOns.Thekal.OnEvent");
			end

		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and string.find(arg1, DBM_THEKAL_BLOODLUST_EXPR) ) then
			DBM.Announce( DBM_THEKAL_BLOODLUST_ANNOUNCE );

		elseif ( event == "adds" ) then
			if (( DBM.AddOns.Thekal.Addtime ) <= 1) then
				DBM.AddOns.Thekal.Addtime = DBM.AddOns.Thekal.Addtime + 1;
				DBM.EndStatusBarTimer("Thekal_Adds");
				DBM.StartStatusBarTimer(10.2, "Thekal_Adds", "Interface\\Icons\\Ability_Mount_JungleTiger");
				DBM.Schedule(10.2, "DBM.AddOns.Thekal.OnEvent", "adds");
			else DBM.UnSchedule("DBM.AddOns.Thekal.OnEvent"); end
		end
	end,		
};
