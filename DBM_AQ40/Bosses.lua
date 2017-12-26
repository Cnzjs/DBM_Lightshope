if not DBM.Bosses[DBM_AQ40] then
	DBM.Bosses[DBM_AQ40] = {};
end

DBM.Bosses[DBM_AQ40]["SKERAM"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_SKERAM_NAME,
	["startTrigger"] = {
		[DBM_SKERAM_YELL1] = true,
		[DBM_SKERAM_YELL2] = true,
		[DBM_SKERAM_YELL3] = true,
	},
	["BossMods"] = {
		"Skeram",
	},
};
DBM.Bosses[DBM_AQ40]["BUGS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_THREEBUGS_VEM,
	["killName"] = {
		["YAUJ"] = {
			["notKilled"] = true,
			["name"] = DBM_THREEBUGS_YAUJ,
		},
		["VEM"] = {
			["notKilled"] = true,
			["name"] = DBM_THREEBUGS_VEM,
		},
		["KRI"] = {
			["notKilled"] = true,
			["name"] = DBM_THREEBUGS_KRI,
		},
	},
	["realName"] = DBM_THREEBUGS_REAL_NAME,
	["BossMods"] = {
		"ThreeBugs",
	},
};
DBM.Bosses[DBM_AQ40]["SARTURA"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_SARTURA_NAME,
	["startTrigger"] = {
		[DBM_SARTURA_YELL_START] = true,
	},
	["BossMods"] = {
		"Sartura",
	},
};
DBM.Bosses[DBM_AQ40]["FANKRISS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_FANKRISS_NAME,
	["BossMods"] = {
		"Fankriss",
	},
};
DBM.Bosses[DBM_AQ40]["HUHURAN"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_HUHURAN_NAME,
	["BossMods"] = {
		"Huhuran",
	},
};

DBM.Bosses[DBM_AQ40]["OURO"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_OURO_NAME,
	["delay"] = 35,
	["BossMods"] = {
		"Ouro",
	},
};
DBM.Bosses[DBM_AQ40]["TWINS"] = {
	["startMethod"] = "YELL",
	["name"] = DBM_TWINEMPS_VEKNILASH,
	["realName"] = DBM_TWINEMPS_NAME,
	["startTrigger"] = {
		[DBM_TWINEMPS_YELL1] = true,
		[DBM_TWINEMPS_YELL2] = true,
		[DBM_TWINEMPS_YELL3] = true,
		[DBM_TWINEMPS_YELL4] = true,
	},
	["BossMods"] = {
		"TwinEmps",
	},
};
DBM.Bosses[DBM_AQ40]["CTHUN"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_CTHUN_EYE_OF_CTHUN,
	["killName"] = DBM_CTHUN_NAME,
	["delay"] = 7.5,
	["BossMods"] = {
		"CThun",
	},
};
DBM.Bosses[DBM_AQ40]["VISCIDUS"] = {
	["startMethod"] = "COMBAT",
	["name"] = DBM_VISCIDUS_NAME,
	["BossMods"] = {
		"Viscidus",
	},
};