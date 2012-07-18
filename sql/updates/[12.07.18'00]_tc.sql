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
* 2012_07_14_00_world_creature_loot_template.sql
*/
-- Gorilla Fang should always be able to drop (Exodius)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ABS(`ChanceOrQuestChance`) WHERE `item`=2799;
-- Update "Count" Ungula's Mandible drop rate does not require quest to drop it starts one (gecko32)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = ABS(`ChanceOrQuestChance`) WHERE `item`=25459;


/*
* 2012_07_14_01_world_creature_loot_template.sql
*/
-- Hellboar shit always drops
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -100 WHERE `item`=23270;

-- update Al'ar loot
SET @gear := 34053; 
SET @talon := 34377; 
SET @Alar := 19514;

DELETE FROM `creature_loot_template` WHERE `entry`=@Alar;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Alar,29434,100,1,0,2,2), -- Badge of Justice 2x
(@Alar,1,100,1,0,-@gear,3), -- 3x Gear Reference
(@Alar,2,10,1,0,-34052,1), -- Pattern Reference
(@Alar,3,2,1,0,-34052,1); -- extra Pattern Reference (small chance)

DELETE FROM `reference_loot_template` WHERE `entry` IN (@gear,@talon);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Gear Reference:
(@gear,29918,0,1,1,1,1), -- Mindstorm Wristbands
(@gear,29920,0,1,1,1,1), -- Phoenix-Ring of Rebirth
(@gear,29921,0,1,1,1,1), -- Fire Crest Breastplate
(@gear,29922,0,1,1,1,1), -- Band of Al'ar
(@gear,29923,0,1,1,1,1), -- Talisman of the Sun King
(@gear,29924,0,1,1,1,1), -- Netherbane
(@gear,29925,0,1,1,1,1), -- Phoenix-Wing Cloak
(@gear,29947,0,1,1,1,1), -- Gloves of the Searing Grip
(@gear,29948,0,1,1,1,1), -- Claw of the Phoenix
(@gear,29949,0,1,1,1,1), -- Arcanite Steam-Pistol
(@gear,30447,0,1,1,1,1), -- Tome of Fiery Redemption
(@gear,1,0,1,1,-@talon,1), -- Talonoption
-- either of the claws is selected
(@talon,30448,0,1,1,1,1), -- Talon of Al'ar
(@talon,32944,0,1,1,1,1); -- Talon of the Phoenix


/*
* 2012_07_16_00_world_creature_template.sql
*/
-- Fix the damage for Wretched mobs in Magisters' Terrace
UPDATE `creature_template` SET `dmg_multiplier`=0.6 WHERE `entry` IN (24688, 24689, 24690);


/*
* 2012_07_16_01_world_reference_loot_template.sql
*/
-- manually set the reference% for core doesnt understand how to deal with grouped references (lame)
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`=8.33333333 WHERE `entry`=34053 AND `item`=1;
