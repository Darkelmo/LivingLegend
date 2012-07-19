DROP TABLE IF EXISTS `achievement_criteria_data`;
DROP TABLE IF EXISTS `achievement_dbc`;
DROP TABLE IF EXISTS `achievement_reward
DROP TABLE IF EXISTS `mail_level_reward`;
DROP TABLE IF EXISTS `player_factionchange_achievement`;

TRUNCATE TABLE `script_waypoint`;

ALTER TABLE `access_requirement` DROP COLUMN `completed_achievement`;

DELETE FROM `command` WHERE `name` IN ('reload achievement_criteria_data', 'reload achievement_reward', 'reload all achievement', 'reload mail_level_reward', 'achievement', 'achievement add', 'reset achievements');
DELETE FROM `conditions` WHERE `ConditionTypeOrReference` = 17;
DELETE FROM `conditions` WHERE `SourceEntry` = 58630;
DELETE FROM `disables` WHERE `sourceType` = 4;
DELETE FROM `spell_script_names` WHERE `spell_id` = 58630;
DELETE FROM `areatrigger_scripts` WHERE `ScriptName` != 'SmartTrigger';

UPDATE `creature_template` SET `ScriptName` = '';
UPDATE `creature_template` SET `ScriptName` = 'npc_helper' WHERE `entry` = 9657;
UPDATE `creature_template` SET `ScriptName` = 'npc_shadowfiend' WHERE `entry` = 19668;
UPDATE `creature_template` SET `ScriptName` = 'npc_mirror_image' WHERE `entry` = 31216;
UPDATE `creature_template` SET `ScriptName` = 'npc_ebon_gargoyle' WHERE `entry` = 27829;
UPDATE `creature_template` SET `ScriptName` = 'npc_dancing_flames' WHERE `entry` = 25305;
UPDATE `creature_template` SET `ScriptName` = 'npc_fire_elemental' WHERE `entry` = 15438;
UPDATE `creature_template` SET `ScriptName` = 'npc_earth_elemental' WHERE `entry` = 15352;
UPDATE `creature_template` SET `ScriptName` = 'npc_enchant' WHERE `entry` IN (60000, 60001);
UPDATE `creature_template` SET `ScriptName` = 'npc_reforging' WHERE `entry` IN (60002, 60003);
UPDATE `creature_template` SET `ScriptName` = 'npc_mageguard_dalaran' WHERE `entry` IN (29254, 29255);
UPDATE `creature_template` SET `ScriptName` = 'npc_snake_trap_serpents' WHERE `entry` IN (19921, 19833);
UPDATE `creature_template` SET `ScriptName` = 'npc_lightwell' WHERE `entry` IN (31883, 31893, 31894, 31895, 31896, 31897);
UPDATE `creature_template` SET `ScriptName` = 'guard_generic' WHERE `entry` IN (68, 1976, 3218, 3296, 3502, 4624, 9460, 11190, 15184);
UPDATE `creature_template` SET `ScriptName` = 'npc_training_dummy' WHERE `entry` IN (2673, 2674, 17578, 16111, 24792, 32543, 32546, 32547, 32542, 32545, 30527, 31143, 31144, 31146, 32541, 32666, 32667);
UPDATE `creature_template` SET `ScriptName` = 'npc_pet_trainer' WHERE `entry` IN (543, 2878, 2879, 3306, 3545, 3620, 3622, 3624, 3688, 3698, 4320, 10086, 10088, 10089, 10090, 16271, 16675, 16712, 17484);
UPDATE `creature_template` SET `ScriptName` = 'npc_firework' WHERE `entry` IN (15882, 15883, 15918, 15872, 15873, 15874, 15875, 15876, 15877, 15879, 15880, 15881, 15884, 15885, 15886, 15887, 15888, 15889, 15890, 15911, 15912, 15913, 15914, 15915, 15916);
UPDATE `creature_template` SET `ScriptName` = 'npc_air_force_bots' WHERE `entry` IN (2614, 2615, 21974, 21993, 21996, 21997, 21999, 22001, 22002, 22003, 22063, 22065, 22066, 22068, 22069, 22070, 22071, 22078, 22079, 22080, 22086, 22087, 22088, 22090, 22124, 22125, 22126);
UPDATE `creature_template` SET `ScriptName` = 'npc_taxi' WHERE `entry` IN (17209, 17435, 18725, 19409, 20162, 20235, 20903, 23415, 23413, 23704, 23816, 26443, 26602, 26949, 27575, 17209, 17435, 18725, 19409, 20162, 20235, 20903, 23415, 23413, 23704, 23816, 26443, 26602, 26949, 27575);
UPDATE `creature_template` SET `ScriptName` = 'npc_innkeeper' WHERE `entry` IN (6746, 6778, 6806, 7733, 7737, 9501, 11106, 14731, 16602, 16739, 17553, 18245, 18251, 18649, 18905, 18906, 18913, 19046, 19232, 19352, 19531, 19571, 21088, 21110, 21744, 21746, 22922, 23143, 23995, 24208, 25036, 25245, 23731, 23937, 24033, 26375, 26596, 26709, 26985, 27042, 27052, 27125, 27148, 27174, 27187, 27950, 28038, 28686, 28687, 28791, 29532, 29583, 29963, 30005, 30308, 31115, 31433, 31557, 32411, 32413, 32418);
