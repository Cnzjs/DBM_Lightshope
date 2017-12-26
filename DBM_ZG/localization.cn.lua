-- ------------------------------------------- --
--   Deadly Boss Mods - Chinese localization   --
--    by Diablohu<白银之手> @ 二区-轻风之语    --
--             www.dreamgen.net                --
--                 1/28/2007                   --
-- ------------------------------------------- --

if (GetLocale() == "zhCN") then


-- High Priestess Jeklik
	DBM_JEKLIK_NAME					= "高阶祭司耶克里克";
	DBM_JEKLIK_YELL_PULL			= "Lord Hir'eek, grant me wings of vengance!";
	DBM_JEKLIK_INFO					= "警报召唤蝙蝠和强效治疗术";
	DBM_JEKLIK_BOMBBATS_EXPR		= "I command you to rain fire";
	DBM_JEKLIK_CASTHEAL_EXPR		= "begins to cast a Great Heal!";
	DBM_JEKLIK_CASTHEAL_ANNOUNCE	= "*** 强效治疗术 - 打断 ***";
	DBM_JEKLIK_BATS_EXPR			= "Jeklik emits a deafening shriek, calling for help.";
	DBM_JEKLIK_BATS_ANNOUNCE		= "*** 蝙蝠即将到来 ***";
	DBM_JEKLIK_SILENCE_EXPR			= "高阶祭司耶克里克的音爆";
	DBM_SBT["Jeklik_Silence"] 		= "音爆";
	DBM_SBT["Jeklik_Bats"] 			= "蝙蝠群";
	DBM_SBT["Jeklik_Heal"] 			= "治疗术";


-- High Priest Venoxis
	DBM_VENOXIS_NAME				= "高阶祭司温诺希斯";
	DBM_VENOXIS_INFO				= "警报恢复效果";
	DBM_VENOXIS_RENEW_EXPR			= "高阶祭司温诺希斯获得了恢复的效果。";
	DBM_VENOXIS_RENEW_ANNOUNCE		= "*** 恢复 - 驱散 ***";
	DBM_VENOXIS_TRANSFORM_EXPR		= "Let the coils of hate unfurl!";
	DBM_VENOXIS_TRANSFORM_ANNOUNCE	= "*** 第二阶段 - 小心毒云 ***";


-- High Priestess Mar'li
	DBM_MARLI_NAME				= "高阶祭司玛尔里";
	DBM_MARLI_INFO				= "阶段转换倒计时|毒箭之雨";
	DBM_MARLI_SPIDER_EXPR		= "Aid me my brood!";
	DBM_MARLI_SPIDER_ANNOUNCE	= "*** 蜘蛛刷新 ***";
	DBM_MARLI_HENNGE_EXPR		= "make of me your avatar!";
	DBM_MARLI_DEAD_YELL			= "Bless you mortal for this";
	DBM_MARLI_POISONBOLT_EXPR	= "哈卡莱安魂者的毒箭之雨击中";
	DBM_MARLI_HENNGE_ANNOUNCE	= "*** %d秒后变身！注意停手！ ***";
	DBM_SBT["Marli_Poisonbolt"]	= "毒箭之雨";
	DBM_SBT["Marli_Hennge"] 	= "蜘蛛形态";
	DBM_SBT["Marli_Hennge2"] 	= "人型形态";


-- Bloodlord Mandokir
	DBM_MANDOKIR_NAME				= "血领主曼多基尔";
	DBM_MANDOKIR_INFO				= "警报凝视目标|倒计时|旋风斩";
	DBM_MANDOKIR_YELL_PULL			= "I'll feed your souls to Hakkar himself!";
	DBM_MANDOKIR_WATCH_EXPR			= "([^%s]+)! I'm watching you!";
	DBM_MANDOKIR_WATCH_ANNOUNCE		= "*** %s被注视了 ***";
	DBM_MANDOKIR_SETICON_INFO		= "添加标注";
	DBM_MANDOKIR_WHISPER_INFO		= "密语玩家";
	DBM_MANDOKIR_WHISPER_TEXT		= "你被凝视了！";
	DBM_MANDOKIR_SELFWARN			= "你被凝视了！";
	DBM_MANDOKIR_WHIRLWIND_EXPR		= "血领主曼多基尔获得了旋风斩的效果。";
	DBM_MANDOKIR_WHIRLWIND_ANNOUNCE	= "*** 旋风斩！近战远离！ ***";
	DBM_MANDOKIR_FOCUS_ANNOUNCE		= "*** %d秒后凝视！注意停手！ ***";
	DBM_SBT["Mandokir_Whirlwind"]	= "旋风斩";
	DBM_SBT["Mandokir_Focus"]		= "凝视";


-- Thekal - eg heal ability
	DBM_THEKAL_NAME					= "High Priest Thekal";
	DBM_THEKAL_NAME_TRUE			= "高阶祭司塞卡尔";
	DBM_THEKAL_INFO					= "警报治疗|小老虎|嗜血";
	DBM_THEKAL_HEAL_EXPR			= "狂热者洛卡恩开始施放强力治疗术";
	DBM_THEKAL_HEAL_ANNOUNCE		= "*** 正在治疗！立即打断！ ***";
	DBM_THEKAL_HENNGE_EXPR			= "fill me with your RAGE!";
	DBM_THEKAL_END_EXPR				= "Hakkar binds me no more!";
	DBM_THEKAL_BLOODLUST_ANNOUNCE	= "*** 嗜血！立即驱散！ ***";
	DBM_THEKAL_BLOODLUST_EXPR		= "获得了嗜血的效果";
	DBM_SBT["Thekal_Heal"]			= "强效治疗术";
	DBM_SBT["Thekal_Adds"]			= "小老虎";


-- High Priestess Arlokk
	DBM_ARLOKK_NAME				= "高阶祭司娅尔罗";
	DBM_ARLOKK_INFO				= "警报标记及首次消失时间";
	DBM_ARLOKK_YELL_PULL		= "Bethekk, your priestess calls upon your might!";
	DBM_ARLOKK_MARK_EXPR		= "Feast on ([^%s]+), my pretties!";
	DBM_ARLOKK_MARK_ANNOUNCE	= "*** %s被标记 - 治疗他 ***";
	DBM_ARLOKK_MARK_WHISPER		= "你被标记了！";
	DBM_ARLOKK_WHISPER_INFO		= "密语被标记的玩家";
	DBM_SBT["Arlokk_Vanish"]	= "消失";


-- Jin'do the Hexxer
	DBM_JINDO_NAME					= "妖术师金度";
	DBM_JINDO_INFO					= "警报诅咒和图腾";
	DBM_JINDO_CURSE_INFO			= "警报诅咒";
	DBM_JINDO_HEAL_TOTEM_INFO		= "警报治疗图腾";
	DBM_JINDO_MC_TOTEM_INFO			= "警报洗脑图腾";
	DBM_JINDO_YELL_PULL				= "Welcome to da great show friends! Step right up to die!";
	DBM_JINDO_CURSE_EXPR			= "([^%s]+)受([^%s]+)金度的欺骗效果的影响。";
	DBM_JINDO_CURSE_SELF_ANNOUNCE	= "你被诅咒了";
	DBM_JINDO_CURSE_ANNOUNCE		= "*** %s被诅咒 - 不要驱散 ***";
	DBM_JINDO_HEAL_TOTEM_WARNING	= "*** 治疗图腾 ***";
	DBM_JINDO_MC_TOTEM_WARNING		= "*** 洗脑图腾 ***";
	DBM_JINDO_WHISPER_INFO			= "密语玩家";
	DBM_JINDO_WHISPER_TEXT			= "你被诅咒了！杀掉影子！";
	DBM_JINDO_HEAL_TOTEM			= "妖术师金度施放了强力治疗结界。";
	DBM_JINDO_MIND_CONTROL_TOTEM	= "妖术师金度施放了召唤洗脑图腾。";


-- Hakkar
	DBM_HAKKAR_NAME					= "哈卡";
	DBM_HAKKAR_INFO					= "警报血液虹吸";
	DBM_HAKKAR_SUFFERLIFE_EXPR		= "([^%s]+)血液虹吸使哈卡受到了([^%s]+)";
	DBM_HAKKAR_SUFFERLIFE_ANNOUNCE	= "*** 血液虹吸 - %d秒后施放 ***";
	DBM_HAKKAR_SUFFERLIFE_NOW		= "*** 血液虹吸 - 90秒后再次施放 ***";
	DBM_HAKKAR_COMBAT_START_YELL	= "PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!";
	DBM_HAKKAR_ENRAGE_WARNING		= "*** %s%s后狂暴 ***";
	
	DBM_HAKKAR_SBT_MC				= "精神控制: "
	
	DBM_SBT["Enrage"] 				= "狂暴";
	DBM_SBT["Life Drain"] 			= "血液虹吸";
	DBM_SBT["Hakkar_MC"] 			= "下一次精神控制";
	DBM_SBT["Next Mind Control"] 	= "下一次精神控制";
	
	DBM_SBT["Hakkar"] = {
		[1]	= {"Mind Control: ([^%s]+)", DBM_HAKKAR_SBT_MC.."%1"},
	};
	DBM_SBT["哈卡"] = DBM_SBT["Hakkar"]

	-- added 11.12.06
		DBM_HAKKAR_MC_EXPR		= "([^%s]+)受([^%s]+)疯狂效果的影响。";
		DBM_HAKKAR_MC_WARNING	= "*** 精神控制 - %s";

-- GurubashiBerserker
	DBM_BERSERKER_NAME				= "古拉巴什狂暴者";
	DBM_BERSERKER_INFO				= "警报雷霆|击退|破胆咆哮";
	DBM_BERSERKER_THUNDER_ANNOUNCE	= "*** %d秒后雷霆 ***";
	DBM_BERSERKER_FEAR_ANNOUNCE		= "*** %d秒后恐惧 ***";
	DBM_BERSERKER_KNOCKBACK_ANNOUNCE= "*** %d秒后击退 ***";
	DBM_BERSERKER_THUNDER_EXPR		= "古拉巴什狂暴者的雷霆一击";
	DBM_BERSERKER_FEAR_EXPR			= "破胆咆哮效果的影响。";
	DBM_BERSERKER_FEAR_EXPR2		= "古拉巴什狂暴者的破胆咆哮";
	DBM_BERSERKER_KNOCKBACK_EXPR	= "古拉巴什狂暴者的击退";

	DBM_SBT["Thunder"] 				= "雷霆一击";
	DBM_SBT["Knockback"] 			= "击退";
	DBM_SBT["Fear"] 				= "破胆咆哮";


-- Grilek
	DBM_GRILEK_NAME					= "格里雷克";
	DBM_GRILEK_INFO					= "警报";
	DBM_GRILEK_AVATAR_EXPR			= "格里雷克受到了天神下凡";
	DBM_GRILEK_AVATAR_ANNOUNCE		= "*** 天神下凡！远离BOSS！ ***";


-- Renataki
	DBM_RENATAKI_NAME				= "雷纳塔基";
	DBM_RENATAKI_INFO				= "警报首次消失及狂怒效果";
	DBM_RENATAKI_UNIVANISH_EXPR		= "雷纳塔基的伏击";
	DBM_RENATAKI_AVATAR_EXPR		= "雷纳塔基获得了狂怒的效果";
	DBM_RENATAKI_AVATAR_ANNOUNCE	= "*** 狂怒！坦克注意开技能！ ***";
	DBM_SBT["Renataki_Vanish"]		= "消失";
	DBM_SBT["Renataki_Unvanish"]	= "现身";
end
