DBM.AddOns.LashLayer = {
	["Name"] = DBM_LASHLAYER_NAME_TRUE,
	["Abbreviation1"] = "vael",
	["Version"] = "1.0",
	["Author"] = "cnzjs",
	["Description"] = DBM_LASHLAYER_DESCRIPTION,
	["Instance"] = DBM_BWL,
	["GUITab"] = DBMGUI_TAB_BWL,
	["Sort"] = 3,
	["Options"] = {
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Events"] = {
		["CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE"] = true,
		["CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE"] = true,
		["CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE"] = true,
	},	
	["OnEvent"] = function(event, arg1)
		if event == "CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE" 
		or event == "CHAT_MSG_SPELL_CREATURE_VS_PARTY_DAMAGE" 
		or event == "CHAT_MSG_SPELL_FRIENDLYPLAYER_DAMAGE" then	
			if string.find (arg1,DBM_LASHLAYER_MS_HIT_EXPR) then
				DBM.Announce(DBM_LASHLAYER_MS_HIT_ANNOUNCE);
			elseif string.find (arg1,DBM_LASHLAYER_MS_MISS_EXPR) or string.find (arg1,DBM_LASHLAYER_MS_MISS_EXPR2) then
				DBM.Announce(DBM_LASHLAYER_MS_MISS_ANNOUNCE);
			end
		end
	end,
};
