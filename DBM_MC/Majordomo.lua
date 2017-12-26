DBM.AddOns.Majordomo = { 
	["Name"] = DBM_DOMO_NAME,
	["Abbreviation1"] = "Majordomo", 
	["Abbreviation2"] = "Domo",
	["Version"] = "1.0",
	["Author"] = "La Vendetta|Nitram",
	["Description"] = DBM_DOMO_INFO,
	["Instance"] = DBM_MC,
	["GUITab"] = DBMGUI_TAB_MC,
	["Sort"] = 9,
	["MinVersionToSync"] = 2.2,
	["Options"] = {  
		["Enabled"] = true,
		["Announce"] = false,
	},
	["Shield"] = "",
	["IsShielding"] = false,
	["IsFading"] = false,
	["Mob_Dead"] = 0,
	["Events"] = {
		["CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS"] = true,
		["CHAT_MSG_SPELL_AURA_GONE_OTHER"] = true,
		["CHAT_MSG_COMBAT_HOSTILE_DEATH"] = true,
	},	
	["OnCombatStart"] = function()
		DBM.StartStatusBarTimer(30, "Shield CD", "Interface\\Icons\\Spell_Holy_PowerWordShield");
		DBM.AddOns.Majordomo.Mob_Dead = 0;
		-- DBM.Schedule(13, "DBM.AddOns.GurubashiBerserker.OnEvent", "fear2");
	end,
	["OnEvent"] = function(event, arg1) 
		if ( event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS" ) and not DBM.AddOns.Majordomo.IsShielding then
			if ( string.find(arg1, DBM_DOMO_GAIN_DAMAGE)) then
				DBM.AddOns.Majordomo.IsShielding = true;
				DBM.AddOns.Majordomo.Shield = DBM_DOMO_DAMAGE_SHIELD;
				DBM.Announce(DBM_DOMO_SHIELD_WARNING1);
				DBM.Schedule(25, "DBM.AddOns.Majordomo.OnEvent", "ShieldWarning");
				DBM.EndStatusBarTimer("Shield CD");
				DBM.StartStatusBarTimer(30, "Shield CD", "Interface\\Icons\\Spell_Holy_PowerWordShield");
				DBM.StartStatusBarTimer(10, "Damage shield", "Interface\\Icons\\Spell_Shadow_AntiShadow");
			elseif ( string.find(arg1, DBM_DOMO_GAIN_MAGIC)) then
				DBM.AddOns.Majordomo.IsShielding = true;
				DBM.AddOns.Majordomo.Shield = DBM_DOMO_MAGIC_REFLECTION;
				DBM.Announce(DBM_DOMO_SHIELD_WARNING2);
				DBM.Schedule(25, "DBM.AddOns.Majordomo.OnEvent", "ShieldWarning");
				DBM.EndStatusBarTimer("Shield CD");
				DBM.StartStatusBarTimer(30, "Shield CD", "Interface\\Icons\\Spell_Holy_PowerWordShield");
				DBM.StartStatusBarTimer(10, "Magic reflection", "Interface\\Icons\\Spell_Frost_FrostShock");
			end
		elseif ( event == "CHAT_MSG_SPELL_AURA_GONE_OTHER" ) then
			if ( string.find(arg1, DBM_DOMO_FADE_DAMAGE) or string.find(arg1, DBM_DOMO_FADE_MAGIC) ) and not DBM.AddOns.Majordomo.IsFading then
				DBM.AddOns.Majordomo.IsFading = true;
				DBM.Schedule(5, "DBM.AddOns.Majordomo.OnEvent", "ResetFadingVar");
				DBM.Announce(string.format(DBM_DOMO_SHIELD_FADED, DBM.AddOns.Majordomo.Shield));
			end
		elseif ( event == "CHAT_MSG_COMBAT_HOSTILE_DEATH" ) then
			if string.find (arg1,DBM_DOMO_MOB_DEATH) then
				DBM.AddOns.Majordomo.Mob_Dead = DBM.AddOns.Majordomo.Mob_Dead + 1;
				DBM.Announce(string.format(DBM_DOMO_MOB_DEATH_ANNOUNCE, DBM.AddOns.Majordomo.Mob_Dead));
			elseif string.find (arg1,DBM_DOMO_MOB_DEATH2) then
				DBM.AddOns.Majordomo.Mob_Dead = DBM.AddOns.Majordomo.Mob_Dead + 1;
				DBM.Announce(string.format(DBM_DOMO_MOB_DEATH_ANNOUNCE, DBM.AddOns.Majordomo.Mob_Dead));
			end
		elseif ( event == "ResetFadingVar" ) then
			DBM.AddOns.Majordomo.IsFading = false;
		elseif ( event == "ShieldWarning" ) then
			DBM.AddOns.Majordomo.IsShielding = false;
			-- DBM.Announce(DBM_DOMO_SHIELD_WARNING_NEW);
		end
	end,		
};
