TRUNCATE `quest_end_scripts`;
TRUNCATE `quest_poi`;
TRUNCATE `quest_poi_points`;
TRUNCATE `quest_start_scripts`;
TRUNCATE `quest_template`;
TRUNCATE `creature_questrelation`;
TRUNCATE `creature_involvedrelation`;
TRUNCATE `gameobject_questrelation`;
TRUNCATE `gameobject_involvedrelation`;
TRUNCATE `pool_quest`;
TRUNCATE `game_event_seasonal_questrelation`;
TRUNCATE `lfg_dungeon_rewards`;
TRUNCATE `areatrigger_involvedrelation`;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19, 20);
DELETE FROM `conditions` WHERE `ConditionTypeOrReference` IN (8, 9, 14, 28);
DELETE FROM `event_scripts` WHERE `command` = 7;
DELETE FROM `disables` WHERE `sourceType` = 1;
DELETE FROM `spell_area` WHERE `quest_start` <> 0;
DELETE FROM `spell_area` WHERE `quest_end` <> 0;
DELETE FROM `smart_scripts` WHERE `event_type` IN (19, 20);
DELETE FROM `smart_scripts` WHERE `action_type` IN (6, 7, 15, 16, 26, 33);
DELETE FROM `smart_scripts` WHERE `action_type` = 53 AND `action_param4` <> 0;
DELETE FROM `db_script_string` WHERE `entry` IN (2000000028, 2000000033, 2000000034, 2000000035, 2000000036, 2000000037, 2000000038, 2000000039, 2000000040, 2000000041, 2000000042, 2000000045, 2000000046, 2000000047, 2000000048, 2000000049, 2000000055, 2000000056, 2000000057, 2000000058, 2000000060, 2000000061, 2000000062, 2000000063, 2000000064, 2000000065, 2000000066, 2000000067, 2000000068, 2000000069, 2000000070, 2000000071, 2000000072, 2000000073, 2000000074, 2000000075, 2000000077, 2000000078, 2000000079, 2000000082, 2000000083, 2000000084, 2000000086, 2000000087, 2000000088, 2000000089, 2000000090, 2000000091, 2000000092, 2000000093, 2000000094, 2000000095, 2000000096, 2000000097, 2000000098, 2000000099, 2000000100, 2000000101, 2000000102, 2000000103, 2000000104, 2000000105, 2000000106, 2000000138, 2000005409, 2000005410);

UPDATE `creature_template` SET `npcflag` = `npcflag`^2 WHERE `npcflag` & 2;
UPDATE `creature_template` SET `questItem1` = 0, `questItem2` = 0, `questItem3` = 0, `questItem4` = 0, `questItem5` = 0, `questItem6` = 0, `KillCredit1` = 0, `KillCredit2` = 0;
INSERT INTO `quest_template` (`Id`) VALUES (10285);
