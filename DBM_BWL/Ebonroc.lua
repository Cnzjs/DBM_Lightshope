DBM.AddOns.Ebonroc = {
	["Name"] = DBM_EBONROC_NAME,
	["Abbreviation1"] = "ebon",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_EBONROC_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 5,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["SetIcon"] = true,
	},
	["DropdownMenu"] = {	
		[1] = {
			["variable"] = "DBM.AddOns.Ebonroc.Options.SetIcon",
			["text"] = DBM_EBONROC_SET_ICON,
			["func"] = function() DBM.AddOns.Ebonroc.Options.SetIcon = not DBM.AddOns.Ebonroc.Options.SetIcon; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_CREATURE_DAMAGE"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_SELF"] = true,
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
		if event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" then
			local _, _, name = string.find(arg1, DBM_EBONROC_SHADOW_REGEXP);
			if name == DBM_YOU then
				name = UnitName("player");
			end		
			
			if name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == name then
						targetID = i;
						break;
					end
				end
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Ebonroc.Options.SetIcon then
					if GetRaidTargetIndex("raid"..targetID) ~= 8 then
						SetRaidTargetIcon("raid"..targetID, 8);
					end
				end	
					
				DBM.Announce(string.format(DBM_EBONROC_SHADOW_WARNING, name));
			end
		elseif ((event == "CHAT_MSG_SPELL_AURA_GONE_OTHER") or (event == "CHAT_MSG_SPELL_AURA_GONE_SELF")) and arg1 then
			local name;
			_, _, name = string.find(arg1, DBM_EBONROC_SHADOW_REGEXP2);
			if Name then
				local targetID;
				for i = 1, GetNumRaidMembers() do
					if UnitName("raid"..i) == name then
						targetID = i;
						break;
					end
				end	
				if targetID and DBM.Rank >= 1 and DBM.AddOns.Ebonroc.Options.SetIcon then
					if GetRaidTargetIndex("raid"..targetID) == 8 then
						SetRaidTargetIcon("raid"..targetID, 0);
					end
				end	
			end
		elseif (event == "CHAT_MSG_MONSTER_EMOTE") then
			if string.find(arg1,DBM_3DRAGON_WB) then
				DBM.EndStatusBarTimer("Wing Buffet");
				DBM.StartStatusBarTimer(30, "Wing Buffet", "Interface\\Icons\\INV_Misc_MonsterScales_14");
			elseif string.find(arg1,DBM_3DRAGON_SF) and arg2 == DBM_EBONROC_NAME then
				DBM.EndStatusBarTimer("Shadow Flame");
				DBM.StartStatusBarTimer(16, "Shadow Flame", "Interface\\Icons\\Spell_Fire_Incinerate");
			end
		end
	end,
};
