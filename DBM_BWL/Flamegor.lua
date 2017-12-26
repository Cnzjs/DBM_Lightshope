DBM.AddOns.Flamegor = {
	["Name"] = DBM_FLAMEGOR_NAME,
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_FLAMEGOR_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 6,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Frenzy"] = true,
	},
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Flamegor.Options.Frenzy",
			["text"] = DBM_FLAMEGOR_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Flamegor.Options.Frenzy = not DBM.AddOns.Flamegor.Options.Frenzy; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,
	},
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(30, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
		DBM.StartStatusBarTimer(16, "Shadow Flame", "Interface\\Icons\\Spell_Fire_Incinerate");
		DBM.StartStatusBarTimer(10, "Frenzy", "Interface\\Icons\\Ability_Druid_ChallangingRoar");
	end,
	["OnCombatEnd"] = function()
		DBM.EndStatusBarTimer("Wing Buffet");
		DBM.EndStatusBarTimer("Shadow Flame");
		DBM.EndStatusBarTimer("Frenzy");
	end,
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_MONSTER_EMOTE" then
			if arg1 == DBM_FLAMEGOR_FRENZY and arg2 == DBM_FLAMEGOR_FLAMEGOR then
				DBM.EndStatusBarTimer("Frenzy")
				DBM.StartStatusBarTimer(10, "Frenzy", "Interface\\Icons\\Ability_Druid_ChallangingRoar");
				if DBM.AddOns.Flamegor.Options.Frenzy then
					DBM.Announce(DBM_FLAMEGOR_FRENZY_ANNOUNCE);
				end
			elseif string.find(arg1,DBM_3DRAGON_SF) and arg2 == DBM_FLAMEGOR_NAME then
				DBM.EndStatusBarTimer("Shadow Flame");
				DBM.StartStatusBarTimer(16, "Shadow Flame", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
		end
	end,
};
