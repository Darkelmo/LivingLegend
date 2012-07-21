/*
* [12.07.16'00]_tc.sql
*/


/*
* 2012_07_12_00_world_version.sql
*/
UPDATE `version` SET `db_version`='TDB 335.11.48', `cache_id`=48 LIMIT 1;


/*
* 2012_07_13_00_world_spell_proc_event.sql
*/
UPDATE `spell_proc_event` SET `procFlags` = 16384 WHERE `entry` in (48492,48494,48495);


/*
* 2012_07_13_00_world_spell_script_names.sql
*/
DELETE FROM `spell_script_names` WHERE (`spell_id`='-5570');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-5570, 'spell_dru_insect_swarm');


/*
* 2012_07_16_00_world_creature_template.sql
*/
-- Fix the damage for Wretched mobs in Magisters' Terrace
UPDATE `creature_template` SET `dmg_multiplier`=0.6 WHERE `entry` IN (24688, 24689, 24690);
