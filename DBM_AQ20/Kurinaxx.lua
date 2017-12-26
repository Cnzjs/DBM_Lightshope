-- 
-- 库林纳克斯 by cnzjs
--

DBM.AddOns.Kurinaxx = { 
	["Name"] = DBM_KURINAXX_NAME,
	["Abbreviation1"] = "Kurinaxx", 
	["Version"] = "0.1",
	["Author"] = "cnzjs",
	["Description"] = DBM_KURINAXX_INFO,
	["Instance"] = DBM_AQ20,
	["GUITab"] = DBMGUI_TAB_20PL,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Sort"] = 21,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
	},	
	["OnEvent"] = function(event, arg1) 
			if (event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" and arg1 == DBM_KURINAXX_FRENZY) then
				DBM.Announce(DBM_KURINAXX_WARNING);
			end
	end,		
};
