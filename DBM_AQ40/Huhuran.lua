DBM.AddOns.Huhuran = {
	["Name"] = DBM_HUHURAN_NAME,
	["Abbreviation1"] = "Huhuran",
	["Abbreviation2"] = "Huhu",
	["Version"] = "1.0",
	["Author"] = "Tandanu",
	["Description"] = DBM_HUHURAN_DESCRIPTION,
	["Instance"] = DBM_AQ40,
	["GUITab"] = DBMGUI_TAB_AQ40,
	["Sort"] = 5,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
		["Frenzy"] = true,
	},
	["WyvernSting"] = false,
	["DropdownMenu"] = {
		[1] = {
			["variable"] = "DBM.AddOns.Huhuran.Options.Frenzy",
			["text"] = DBM_HUHURAN_ANNOUNCE_FRENZY,
			["func"] = function() DBM.AddOns.Huhuran.Options.Frenzy = not DBM.AddOns.Huhuran.Options.Frenzy; end,
		},
	},
	["Events"] = {
		["CHAT_MSG_MONSTER_EMOTE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE"] = true,
		["CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1)	
		if event == "CHAT_MSG_SPELL_PERIODIC_SELF_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_DAMAGE" or event == "CHAT_MSG_SPELL_PERIODIC_PARTY_DAMAGE" then
			if (string.find(arg1, DBM_HUHURAN_WYVERN_REGEXP) or string.find(arg1, DBM_HUHURAN_WYVERN_REGEXP2) and (not DBM.AddOns.Huhuran.WyvernSting)) then
				-- DBM.Schedule(20, "DBM.AddOns.Huhuran.OnEvent", "WyvernStingWarning", 5);
				-- DBM.StartStatusBarTimer(25, "Wyvern Sting Cooldown", "Interface\\Icons\\INV_Spear_02");
				-- DBM.AddOns.Huhuran.WyvernSting = true;
				-- DBM.Schedule(15, "DBM.AddOns.Huhuran.OnEvent", "ResetWyvernSting"); 
			elseif (string.find(arg1, DBM_HUHURAN_NOXIOUS_EXPR)) then
				-- DBM.EndStatusBarTimer("6_Noxious");
				-- DBM.StartStatusBarTimer(19, "6_Noxious", "Interface\\Icons\\Spell_Nature_Corrosivebreath");
			end         
		elseif event == "ResetWyvernSting"  then
			DBM.AddOns.Huhuran.WyvernSting = false;			
		elseif event == "WyvernStingWarning" then
			if arg1 == 5 then
				DBM.Announce(DBM_HUHURAN_WYVERN_WARNING);
			end
		elseif (event == "CHAT_MSG_MONSTER_EMOTE") then
			if (arg2 == DBM_HUHURAN_HUHURAN) and (arg1 == DBM_HUHURAN_FRENZY) then
				if (DBM.AddOns.Huhuran.Options.Frenzy) then
					DBM.Announce(DBM_HUHURAN_FRENZY_ANNOUNCE);
				end
			elseif (arg2 == DBM_HUHURAN_HUHURAN) and (arg1 == DBM_HUHURAN_CRAZY) then
				DBM.Announce(DBM_HUHURAN_CRAZY_ANNOUNCE);
			end
		end
   end,   
};
