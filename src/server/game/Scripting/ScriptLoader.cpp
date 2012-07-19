#include "ScriptLoader.h"

// Commands
void AddSC_account_commandscript();
void AddSC_ban_commandscript();
void AddSC_cast_commandscript();
void AddSC_character_commandscript();
void AddSC_debug_commandscript();
void AddSC_event_commandscript();
void AddSC_gm_commandscript();
void AddSC_go_commandscript();
void AddSC_gobject_commandscript();
void AddSC_guild_commandscript();
void AddSC_honor_commandscript();
void AddSC_instance_commandscript();
void AddSC_learn_commandscript();
void AddSC_list_commandscript();
void AddSC_lookup_commandscript();
void AddSC_misc_commandscript();
void AddSC_modify_commandscript();
void AddSC_npc_commandscript();
void AddSC_quest_commandscript();
void AddSC_reload_commandscript();
void AddSC_reset_commandscript();
void AddSC_server_commandscript();
void AddSC_tele_commandscript();
void AddSC_titles_commandscript();
void AddSC_wp_commandscript();

// Custom
void AddSC_npc_enchant();
void AddSC_npc_helper();
void AddSC_npc_reforging();
void AddSC_on_duel();

// outdoor pvp
void AddSC_outdoorpvp_ep();
void AddSC_outdoorpvp_hp();
void AddSC_outdoorpvp_na();
void AddSC_outdoorpvp_si();
void AddSC_outdoorpvp_tf();
void AddSC_outdoorpvp_zm();

// spells
void AddSC_deathknight_spell_scripts();
void AddSC_druid_spell_scripts();
void AddSC_generic_spell_scripts();
void AddSC_hunter_spell_scripts();
void AddSC_item_spell_scripts();
void AddSC_mage_spell_scripts();
void AddSC_paladin_spell_scripts();
void AddSC_priest_spell_scripts();
void AddSC_rogue_spell_scripts();
void AddSC_shaman_spell_scripts();
void AddSC_warlock_spell_scripts();
void AddSC_warrior_spell_scripts();

// world
void AddSC_alterac_valley();
void AddSC_boss_balinda();
void AddSC_boss_drekthar();
void AddSC_boss_galvangar();
void AddSC_boss_vanndar(); // Alterac Valley
void AddSC_chat_log();
void AddSC_dalaran();
void AddSC_guards();
void AddSC_item_scripts();
void AddSC_npc_innkeeper();
void AddSC_npc_taxi();
void AddSC_npcs_special();

// SmartAI
void AddSC_SmartSCripts();

void AddScripts()
{
    AddCommandScripts();
    AddCustomScripts();
    AddOutdoorPvPScripts();
    AddSpellScripts();
    AddWorldScripts();

    // SmartAI
    AddSC_SmartSCripts();
}

void AddCommandScripts()
{
    AddSC_account_commandscript();
    AddSC_ban_commandscript();
    AddSC_cast_commandscript();
    AddSC_character_commandscript();
    AddSC_debug_commandscript();
    AddSC_event_commandscript();
    AddSC_gm_commandscript();
    AddSC_go_commandscript();
    AddSC_gobject_commandscript();
    AddSC_guild_commandscript();
    AddSC_honor_commandscript();
    AddSC_instance_commandscript();
    AddSC_learn_commandscript();
    AddSC_lookup_commandscript();
    AddSC_list_commandscript();
    AddSC_misc_commandscript();
    AddSC_modify_commandscript();
    AddSC_npc_commandscript();
    AddSC_quest_commandscript();
    AddSC_reload_commandscript();
    AddSC_reset_commandscript();
    AddSC_server_commandscript();
    AddSC_tele_commandscript();
    AddSC_titles_commandscript();
    AddSC_wp_commandscript();
}

void AddCustomScripts()
{
    AddSC_npc_enchant();
    AddSC_npc_helper();
    AddSC_npc_reforging();
    AddSC_on_duel();
}

void AddOutdoorPvPScripts()
{
    AddSC_outdoorpvp_ep();
    AddSC_outdoorpvp_hp();
    AddSC_outdoorpvp_na();
    AddSC_outdoorpvp_si();
    AddSC_outdoorpvp_tf();
    AddSC_outdoorpvp_zm();
}

void AddSpellScripts()
{
    AddSC_deathknight_spell_scripts();
    AddSC_druid_spell_scripts();
    AddSC_generic_spell_scripts();
    AddSC_hunter_spell_scripts();
    AddSC_item_spell_scripts();
    AddSC_mage_spell_scripts();
    AddSC_paladin_spell_scripts();
    AddSC_priest_spell_scripts();
    AddSC_rogue_spell_scripts();
    AddSC_shaman_spell_scripts();
    AddSC_warlock_spell_scripts();
    AddSC_warrior_spell_scripts();
}

void AddWorldScripts()
{
    AddSC_chat_log();
    AddSC_dalaran();
    AddSC_guards();
    AddSC_item_scripts();
    AddSC_npc_innkeeper();
    AddSC_npc_taxi();
    AddSC_npcs_special();
}
