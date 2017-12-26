DBM.AddOns.Firemaw = {
	["Name"] = DBM_FIREMAW_NAME,
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_FIREMAW_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 4,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_MONSTER_EMOTE"] = true,
	},	
	["OnCombatStart"] = function(delay)
		DBM.StartStatusBarTimer(30, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
		DBM.StartStatusBarTimer(16, "Shadow Flame", "Interface\\Icons\\Spell_Fire_Incinerate");
	end,
	["OnCombatEnd"] = function()
		DBM.EndStatusBarTimer("Wing Buffet");
		DBM.EndStatusBarTimer("Shadow Flame");
	end,
	["OnEvent"] = function(event, arg1)
		if (event == "CHAT_MSG_MONSTER_EMOTE") then
			if string.find(arg1,DBM_3DRAGON_SF) and arg2 == DBM_FIREMAW_NAME then
				DBM.EndStatusBarTimer("Shadow Flame");
				DBM.StartStatusBarTimer(16, "Shadow Flame", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
		end
	end,
};
