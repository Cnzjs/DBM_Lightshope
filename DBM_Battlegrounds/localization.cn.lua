-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/8/2007                    --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then
	DBM_BGMOD_LANG = {}
	DBM_BGMOD_LANG["NAME"] 				= "Battlegrounds";
	DBM_BGMOD_LANG["INFO"] 				= "显示阿拉希盆地和奥特兰克山谷的旗帜信息，"
								.."显示战歌峡谷的旗帜携带者，并可自动上交奥特兰克山谷声望物品";
	DBM_BGMOD_LANG["THANKS"] 				= "感谢您使用 Deadly BossMods, 祝您获胜";
	DBM_BGMOD_LANG["WINS"]					= "The (%w+) wins!";
	DBM_BGMOD_LANG["BEGINS"]				= "战斗即将开始";	-- BAR
	DBM_BGMOD_LANG["ALLIANCE"]				= "Alliance";
	DBM_BGMOD_LANG["HORDE"]					= "Horde";
	DBM_BGMOD_LANG["ALLI_TAKE_ANNOUNCE"] 	= "*** 联盟夺取了%s ***";
	DBM_BGMOD_LANG["HORDE_TAKE_ANNOUNCE"]	= "*** 部落夺取了%s ***";
	
	-- AV
	DBM_BGMOD_LANG["AV_ZONE"] 			= "Alterac Valley";
	DBM_BGMOD_LANG["AV_START60SEC"]		= "1 minute until the battle for Alterac Valley begins.";
	DBM_BGMOD_LANG["AV_START30SEC"]		= "30 seconds until the battle for Alterac Valley begins. Prepare yourselves!";
	DBM_BGMOD_LANG["AV_TURNININFO"] 	= "自动上交声望物品";
	DBM_BGMOD_LANG["AV_NPC"] = {
			["SMITHREGZAR"] 				= "铁匠雷格萨",			-- armor
			["PRIMALISTTHURLOGA"] 			= "指挥官瑟鲁加",		-- icelord
			["WINGCOMMANDERJEZTOR"] 		= "空军指挥官杰斯托",		
			["WINGCOMMANDERGUSE"] 			= "空军指挥官古斯",
			["WINGCOMMANDERMULVERICK"] 		= "空军指挥官穆维里克",
			["MURGOTDEEPFORGE"] 			= "莫高特·深炉",		-- armor
			["ARCHDRUIDRENFERAL"] 			= "大德鲁伊雷弗拉尔",	-- forestlord
			["WINGCOMMANDERVIPORE"] 		= "空军指挥官维波里",
			["WINDCOMMANDERSLIDORE"] 		= "空军指挥官斯里多尔",
			["WINGCOMMANDERICHMAN"] 		= "空军指挥官艾克曼",
			["STORMPIKERAMRIDERCOMMANDER"]	= "雷矛山羊骑兵指挥官",
			["FROSTWOLFWOLFRIDERCOMMANDER"]	= "霜狼骑兵指挥官",
		};
	DBM_BGMOD_LANG["AV_ITEM"] = {
			["ARMORSCRAPS"] 		= "护甲碎片",
			["SOLDIERSBLOOD"] 		= "联盟士兵的血",
			["LIEUTENANTSFLESH"] 	= "联盟士官的食物",
			["SOLDIERSFLESH"] 		= "联盟士兵的食物",
			["COMMANDERSFLESH"] 	= "联盟指挥官的食物",
			["STORMCRYSTAL"] 		= "风暴水晶",
			["LIEUTENANTSMEDAL"] 	= "部落士官的勋章",
			["SOLDIERSMEDAL"] 		= "部落士兵的勋章",
			["COMMANDERSMEDAL"] 	= "部落指挥官的勋章",
			["FROSTWOLFHIDE"]		= "霜狼毛皮",
			["ALTERACRAMHIDE"] 		= "奥特兰克山羊皮",
		};
	DBM_BGMOD_LANG["AV_TARGETS"] = {
			"Stormpike Aid Station",
			"Dun Baldar North Bunker",
			"Dun Baldar South Bunker",
			"Stormpike Graveyard",
			"Icewing Bunker",
			"Stonehearth Graveyard",
			"Stonehearth Bunker",
			"Snowfall Graveyard",
			"Iceblood Tower",
			"Iceblood Graveyard",
			"Tower Point",
			"Frostwolf Graveyard",
			"West Frostwolf Tower",
			"East Frostwolf Tower",
			"Frostwolf Relief Hut"
	};

	DBM_BGMOD_LANG["AV_TARGET_TYPE"] = { --not really a localization table... -> DO NOT TRANSLATE!
		"graveyard",
		"tower",
		"tower",
		"graveyard",
		"tower",
		"graveyard",
		"tower",
		"graveyard",
		"tower",
		"graveyard",
		"tower",
		"graveyard",
		"tower",
		"tower",
		"graveyard",
	};
	
	DBM_BGMOD_LANG["AV_UNDERATTACK"]	= "(.+) is under attack! If left unchecked, the (%w+) will (%w+) it!";	-- Graveyard // Tower
	DBM_BGMOD_LANG["AV_WASTAKENBY"]	= "(.+) was taken by the (%w+)!";
	DBM_BGMOD_LANG["AV_WASDESTROYED"]	= "(.+) was destroyed by the (%w+)!";
	DBM_BGMOD_LANG["AV_IVUS"]		= "Wicked, Wicked, Mortals! The forest weeps";
	DBM_BGMOD_LANG["AV_ICEY"]		= "WHO DARES SUMMON LOKHOLAR";
	
	-- AB
	DBM_BGMOD_LANG["AB_ZONE"] 			= "阿拉希盆地";
	DBM_BGMOD_LANG["AB_INFOFRAME_INFO"]	= "显示战斗结束时双方资源预计值";
	DBM_BGMOD_LANG["AB_START60SEC"]		= "The Battle for Arathi Basin begins in 1 minute.";
	DBM_BGMOD_LANG["AB_START30SEC"]		= "The Battle for Arathi Basin begins in 30 seconds. Prepare yourselves!";
	DBM_BGMOD_LANG["AB_CLAIMSTHE"]		= "(.+) claims the (.+)! If left unchallenged, the (%w+) will control it in 1 minute!";
	DBM_BGMOD_LANG["AB_HASTAKENTHE"]	= "The (%w+) has taken the (.+)";
	DBM_BGMOD_LANG["AB_HASDEFENDEDTHE"]	= "(.+) has defended the (.+)";
	DBM_BGMOD_LANG["AB_HASASSAULTED"]	= "has assaulted";
	DBM_BGMOD_LANG["AB_SCOREEXP"] 		= "基地：(%d+)  资源：(%d+)/2000";
	DBM_BGMOD_LANG["AB_WINALLY"] 		= "联盟即将获胜";
	DBM_BGMOD_LANG["AB_WINHORDE"] 		= "部落即将获胜";
	DBM_BGMOD_LANG["AB_TARGETS"] = {
		"farm",
		"lumber mill",
		"blacksmith",
		"mine",
		"stables"
		};
	DBM_BGMOD_LANG["AB_TARGETS_ANNOUNCE"] = {
		"农场",
		"伐木场",
		"铁匠铺",
		"金矿",
		"兽栏"
		};
	-- WSG
	DBM_BGMOD_LANG["WSG_ZONE"] 				= "战歌峡谷";
	DBM_BGMOD_LANG["WSG_START60SEC"]		= "The battle for Warsong Gulch begins in 1 minute.";
	DBM_BGMOD_LANG["WSG_START30SEC"]		= "The battle for Warsong Gulch begins in 30 seconds. Prepare yourselves!";
	DBM_BGMOD_LANG["WSG_INFOFRAME_INFO"]	= "显示旗帜携带者";
	DBM_BGMOD_LANG["WSG_FLAG_PICKUP"] 		= "The (%w+) .lag was picked up by (.+)!";
	DBM_BGMOD_LANG["WSG_FLAG_RETURN"]		= "The (%w+) .lag was returned to its base by (.+)!";
	DBM_BGMOD_LANG["WSG_ALLYFLAG"]			= "联盟: ";
	DBM_BGMOD_LANG["WSG_HORDEFLAG"]			= "部落: ";
	DBM_BGMOD_LANG["WSG_FLAG_BASE"]			= "基地";
	DBM_BGMOD_LANG["WSG_HASCAPTURED"]		= "(.+) captured the (%w+) flag!";
	DBM_BGMOD_LANG["WSG_FLAGRESPAWN"] 		= "旗帜即将刷新";

	-- NEW Added 08.11.06
	DBM_BGMOD_LANG["WSG_INFOFRAME_TITLE"]	= "战歌峡谷旗帜监视";
	DBM_BGMOD_LANG["WSG_INFOFRAME_TEXT"]	= "显示旗帜携带者";
	DBM_BGMOD_LANG["AB_STRINGALLIANCE"]		= "联盟: ";
	DBM_BGMOD_LANG["AB_STRINGHORDE"]		= "部落: ";
	DBM_BGMOD_LANG["WSG_BOOTS_EXPR"]		= "受到了加速效果的影响。";

	-- ADDED 9.12.06
	DBM_BGMOD_LANG["ARENA_BEGIN"]		= "One minute until the Arena battle begins!";
	DBM_BGMOD_LANG["ARENA_BEGIN30"]		= "Thirty seconds until the Arena battle begins!";
	DBM_BGMOD_LANG["ARENA_BEGIN15"]		= "Fifteen seconds until the Arena battle begins!";

	DBM_BGMOD_EN_TARGET_AV = DBM_BGMOD_LANG.AV_TARGETS;
	DBM_BGMOD_EN_TARGET_AB = DBM_BGMOD_LANG.AB_TARGETS_ANNOUNCE;
	
	--DBM_SBT["Ice spawn"] 	= DBM_BGMOD_LANG["ICEYTXT"];
	DBM_SBT["Begins"] 		= DBM_BGMOD_LANG.BEGINS;
	DBM_SBT["Flag respawn"] = DBM_BGMOD_LANG.WSG_FLAGRESPAWN;
	DBM_SBT["AB_WINHORDE"] 	= DBM_BGMOD_LANG.AB_WINHORDE;
	DBM_SBT["AB_WINALLY"] 	= DBM_BGMOD_LANG.AB_WINALLY;
	DBM_SBT["Ivus spawn"] 	= "伊弗斯出现";
	DBM_SBT["Speed Boots"] 	= "加速靴效果";

	-- 17.12.06
	DBM_BGMOD_LANG["COLOR_BY_CLASS"] = "在得分窗口中设置玩家名为职业颜色";
	DBM_BGMOD_LANG["SHOW_INV_TIMER"] = "显示战场组队计时"

	--sux a bit..^_^
	DBM_SBT["Alliance: Stormpike Aid Station"] = "雷矛救援站";
	DBM_SBT["Alliance: Dun Baldar North Bunker"] = "丹巴达尔北部碉堡";
	DBM_SBT["Alliance: Dun Baldar South Bunker"] = "丹巴达尔南部碉堡";
	DBM_SBT["Alliance: Stormpike Graveyard"] = "雷矛墓地";
	DBM_SBT["Alliance: Icewing Bunker"] = "冰翼碉堡";
	DBM_SBT["Alliance: Stonehearth Graveyard"] = "石炉墓地";
	DBM_SBT["Alliance: Stonehearth Bunker"] = "石炉碉堡";
	DBM_SBT["Alliance: Snowfall Graveyard"] = "雪落墓地";
	DBM_SBT["Alliance: Iceblood Tower"] = "冰血哨塔";
	DBM_SBT["Alliance: Iceblood Graveyard"] = "冰血墓地";
	DBM_SBT["Alliance: Tower Point"] = "哨塔高地";
	DBM_SBT["Alliance: Frostwolf Graveyard"] = "霜狼墓地";
	DBM_SBT["Alliance: West Frostwolf Tower"] = "西部霜狼哨塔";
	DBM_SBT["Alliance: East Frostwolf Tower"] = "东部霜狼哨塔";
	DBM_SBT["Alliance: Frostwolf Relief Hut"] = "霜狼救济所";
	DBM_SBT["Alliance: Farm"] = "farm";
	DBM_SBT["Alliance: Lumber mill"] = "lumber mill";
	DBM_SBT["Alliance: Blacksmith"] = "blacksmith";
	DBM_SBT["Alliance: Mine"] = "mine";
	DBM_SBT["Alliance: Stables"] = "stables";

	DBM_SBT["Horde: Stormpike Aid Station"] = "雷矛救援站";
	DBM_SBT["Horde: Dun Baldar North Bunker"] = "丹巴达尔北部碉堡";
	DBM_SBT["Horde: Dun Baldar South Bunker"] = "丹巴达尔南部碉堡";
	DBM_SBT["Horde: Stormpike Graveyard"] = "雷矛墓地";
	DBM_SBT["Horde: Icewing Bunker"] = "冰翼碉堡";
	DBM_SBT["Horde: Stonehearth Graveyard"] = "石炉墓地";
	DBM_SBT["Horde: Stonehearth Bunker"] = "石炉碉堡";
	DBM_SBT["Horde: Snowfall Graveyard"] = "雪落墓地";
	DBM_SBT["Horde: Iceblood Tower"] = "冰血哨塔";
	DBM_SBT["Horde: Iceblood Graveyard"] = "冰血墓地";
	DBM_SBT["Horde: Tower Point"] = "哨塔高地";
	DBM_SBT["Horde: Frostwolf Graveyard"] = "霜狼墓地";
	DBM_SBT["Horde: West Frostwolf Tower"] = "西部霜狼哨塔";
	DBM_SBT["Horde: East Frostwolf Tower"] = "东部霜狼哨塔";
	DBM_SBT["Horde: Frostwolf Relief Hut"] = "霜狼救济所";
	DBM_SBT["Horde: Farm"] = "farm";
	DBM_SBT["Horde: Lumber mill"] = "lumber mill";
	DBM_SBT["Horde: Blacksmith"] = "blacksmith";
	DBM_SBT["Horde: Mine"] = "mine";
	DBM_SBT["Horde: Stables"] = "stables";
	
--added 2.1.07
	DBM_BGMOD_LANG["AB_DESCRIPTION"]	= "显示资源夺取进度和预计胜利方";
	DBM_BGMOD_LANG["AV_DESCRIPTION"]	= "显示墓地和哨塔的夺取进度";
	DBM_BGMOD_LANG["WS_DESCRIPTION"]	= "显示旗帜携带者";

--added 7.1.07
	DBM_BGMOD_LANG["UPGRADETROOPS"]		= "升级到";
end
