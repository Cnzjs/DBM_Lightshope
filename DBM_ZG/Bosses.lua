if not DBM.Bosses[DBM_ZG] then
	DBM.Bosses[DBM_ZG] = {};
end


DBM.Bosses[DBM_ZG]["JEKLIK"] = {
	["startMethod"] = "YELL",
	["startTrigger"] = {
		[DBM_JEKLIK_YELL_PULL] = true,
	},
	["name"] = DBM_JEKLIK_NAME,
	["delay"] = 30,
	["BossMods"] = {
		"Jeklik",
	},
};
DBM.Bosses[DBM_ZG]["VENOXIS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_VENOXIS_NAME,
	["delay"] = 15,
	["BossMods"] = {
		"Venoxis",
	},
};
DBM.Bosses[DBM_ZG]["MARLI"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_MARLI_NAME,
	["startTrigger"] = {
		[DBM_MARLI_SPIDER_EXPR] = true,
	},
	["BossMods"] = {
		"Marli",
	},
};
DBM.Bosses[DBM_ZG]["MANDOKIR"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_MANDOKIR_NAME,
	["startTrigger"] = {
		[DBM_MANDOKIR_YELL_PULL] = true,
	},
	["BossMods"] = {
		"Mandokir",
	},
};
DBM.Bosses[DBM_ZG]["THEKAL"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_THEKAL_NAME,
	["BossMods"] = {
		"Thekal",
	},
};
DBM.Bosses[DBM_ZG]["ARLOKK"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_ARLOKK_NAME,
	["startTrigger"] = {
		[DBM_ARLOKK_YELL_PULL] = true,
	},		
	["BossMods"] = {
		"Arlokk",
	},
};
DBM.Bosses[DBM_ZG]["JINDO"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_JINDO_NAME,
	["startTrigger"] = {
		[DBM_JINDO_YELL_PULL] = true,
	},		
	["BossMods"] = {
		"Jindo",
	},
};

DBM.Bosses[DBM_ZG]["HAKKAR"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_HAKKAR_NAME,
	["delay"] = 5,
	["startTrigger"] = {
		[DBM_HAKKAR_COMBAT_START_YELL] = true,
	},		
	["BossMods"] = {
		"Hakkar",
	},
};
DBM.Bosses[DBM_ZG]["BERSERKER"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_BERSERKER_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"GurubashiBerserker",
	},
};
DBM.Bosses[DBM_ZG]["GRILEK"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_GRILEK_NAME,
	["BossMods"] = {
		"Grilek",
	},
};
DBM.Bosses[DBM_ZG]["RENATAKI"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_RENATAKI_NAME,
	["BossMods"] = {
		"Renataki",
	},
};