/*
* world\2012_06_26_02_world_creature_loot_template.sql
*/
-- Replace Furious Weapon drop with drop that should be in the Cache of Living Stone
UPDATE `reference_loot_template` SET `item` =45695 WHERE (`entry` =34361 AND `item` =45965);
-- add missing Recipe: Mighty Shadow Protection Potion on Cultist Shard Watcher
DELETE FROM `creature_loot_template` WHERE `entry`=32349 AND `item`=44568;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(32349,44568,0.5,1,0,1,1);


/*
* world\2012_06_27_00_world_spell_script_names.sql
*/
DELETE FROM `spell_script_names` WHERE `spell_id` IN (50546);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(50546,'spell_q12066_bunny_kill_credit');


/*
* world\2012_06_27_01_world_game_graveyard_zone.sql
*/
-- fix graveyard for shattered halls, alliance to honor hold, horde to thrallmar, not the other way around
UPDATE `game_graveyard_zone` SET `faction`=67 WHERE `id`=919 AND `ghost_zone`=3714;
UPDATE `game_graveyard_zone` SET `faction`=469 WHERE `id`=920 AND `ghost_zone`=3714;
