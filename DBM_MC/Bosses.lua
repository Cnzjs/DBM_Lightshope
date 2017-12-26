if not DBM.Bosses[DBM_MC] then
	DBM.Bosses[DBM_MC] = {};
end

DBM.Bosses[DBM_MC]["LUCIFRON"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_LUCIFRON_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Lucifron",
	},
};
DBM.Bosses[DBM_MC]["MAGMADAR"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_MAGMADAR_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Magmadar",
	},
};
DBM.Bosses[DBM_MC]["GEHENNAS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_GEHENNAS_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Gehennas",
	},
};
DBM.Bosses[DBM_MC]["GARR"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_GARR_NAME,
	["delay"] = 0,
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_MC]["GEDDON"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_BARON_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Geddon",
	},
};
DBM.Bosses[DBM_MC]["SHAZZRAH"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_SHAZZRAH_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Shazzrah",
	},
};
DBM.Bosses[DBM_MC]["SULFURON"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_SULFURON_NAME,
	["delay"] = 5,
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_MC]["GOLEMAGG"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_GOLEMAGG_NAME,
	["delay"] = 5,
	["BossMods"] = {
	},
};
DBM.Bosses[DBM_MC]["MAJORDOMO"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_DOMO_NAME,
	["delay"] = 0,
	["startTrigger"] = {
		[DBM_MAJORDOMO_COMBAT_START_YELL] = true,
	},		
	["BossMods"] = {
		"Majordomo",
	},
};
DBM.Bosses[DBM_MC]["RAGNAROS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_RAGNAROS_NAME,
	["delay"] = 0,
	["BossMods"] = {
		"Ragnaros",
	},
};