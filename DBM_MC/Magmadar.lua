DBM.AddOns.Magmadar = { 
	["Name"] = DBM_MAGMADAR_NAME,
	["Abbreviation1"] = "Magma", 
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_MAGMADAR_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 2,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = true,
		["Frenzy"] = true,
	},
	["Fearing"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Magmadar.Options.Frenzy",
			["text"] = DBM_MAGMADAR_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Magmadar.Options.Frenzy = not DBM.AddOns.Magmadar.Options.Frenzy; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
	},	
	["OnCombatStart"] = function()
		DBM.StartStatusBarTimer(15, "2_Frenzy", "Interface\\Icons\\Ability_Druid_ChallangingRoar");
		DBM.StartStatusBarTimer(10, "2_Fear", "Interface\\Icons\\Spell_Shadow_DeathScream");
		-- DBM.Schedule(13, "DBM.AddOns.GurubashiBerserker.OnEvent", "fear2");
	end,
	["OnCombatEnd"] = function()
		-- DBM.EndStatusBarTimer("Thunder");
		-- DBM.UnSchedule("DBM.AddOns.GurubashiBerserker.OnEvent");
	end,
	["OnEvent"] = function(event, arg1) 
		if (event == "CHAT_MSG_MONSTER_EMOTE") and string.find (arg1,DBM_MAGMADAR_FRENZY) then
			DBM.EndStatusBarTimer("2_Frenzy")
			DBM.StartStatusBarTimer(18, "2_Frenzy", "Interface\\Icons\\Ability_Druid_ChallangingRoar");
			if DBM.AddOns.Magmadar.Options.Frenzy then
				DBM.Announce(DBM_MAGMADAR_FRENZY_WARNING);
			end
		elseif ( event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" ) then
			if ( string.find(arg1, DBM_MAGMADAR_FEAR) ) and not DBM.AddOns.Magmadar.Fearing then
				DBM.AddOns.Magmadar.Fearing = true;
				-- DBM.Announce(DBM_MAGMADAR_FEAR_WARNING1);
				DBM.Schedule(29, "DBM.AddOns.Magmadar.OnEvent", "FearWarning");
				DBM.EndStatusBarTimer("2_Fear");
				DBM.StartStatusBarTimer(32, "2_Fear", "Interface\\Icons\\Spell_Shadow_DeathScream");
			end
		elseif (event == "FearWarning") then
			DBM.Announce(DBM_MAGMADAR_FEAR_WARNING2);
			DBM.AddOns.Magmadar.Fearing = false;
		end
	end,		
};
