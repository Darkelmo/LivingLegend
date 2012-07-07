/*
* world\2012_07_01_00_world_creature_text.sql
*/
DELETE FROM `script_texts` WHERE entry IN (-1534019, -1534020, -1534021, -1534022, -1534023, -1534024, -1534025, -1534026, -1534027, -1534028, -1534029 , -1534030);

-- Anetheron
DELETE FROM `creature_text` WHERE `entry`=17808;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17808,0,0, 'The clock... is still... ticking.',14,0,100,0,0,10982, 'Anetheron - SAY_ONDEATH'),
(17808,1,0, 'Your hopes are lost!',14,0,100,0,0,10981, 'Anetheron - SAY_ONSLAY1'),
(17808,1,1, 'Scream for me!',14,0,100,0,0,11038, 'Anetheron - SAY_ONSLAY2'),
(17808,1,2, 'Pity, no time for a slow death!',14,0,100,0,0,11039, 'Anetheron - SAY_ONSLAY3'),
(17808,2,0, 'The swarm is eager to feed!',14,0,100,0,0,10979, 'Anetheron - SAY_SWARM1'),
(17808,2,1, 'Pestilence upon you!',14,0,100,0,0,11037, 'Anetheron - SAY_SWARM2'),
(17808,3,0, 'You look tired...',14,0,100,0,0,10978, 'Anetheron - SAY_SLEEP1'),
(17808,3,1, 'Sweet dreams...',14,0,100,0,0,11545, 'Anetheron - SAY_SLEEP2'),
(17808,4,0, 'Let fire rain from above!',14,0,100,0,0,10980, 'Anetheron - SAY_INFERNO1'),
(17808,4,1, 'Earth and sky shall burn!',14,0,100,0,0,11036, 'Anetheron - SAY_INFERNO2'),
(17808,5,0, 'You are defenders of a doomed world! Flee here, and perhaps you will prolong your pathetic lives!',14,0,100,0,0,10977, 'Anetheron - SAY_ONAGGRO');

-- Azgalor
DELETE FROM `creature_text` WHERE `entry`=17842;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17842,0,0, 'Your time is almost... up',14,0,100,0,0,11002, 'Azgalor - SAY_ONDEATH'),
(17842,1,0, 'Reesh, hokta!',14,0,100,0,0,11001, 'Azgalor - SAY_ONSLAY1'),
(17842,1,1, 'Don''t fight it',14,0,100,0,0,11048, 'Azgalor - SAY_ONSLAY2'),
(17842,1,2, 'No one is going to save you',14,0,100,0,0,11047, 'Azgalor - SAY_ONSLAY3'),
(17842,2,0, 'Just a taste... of what awaits you',14,0,100,0,0,11046, 'Azgalor - SAY_DOOM1'),
(17842,2,1, 'Suffer you despicable insect!',14,0,100,0,0,11000, 'Azgalor - SAY_DOOM2'),
(17842,3,0, 'Abandon all hope! The legion has returned to finish what was begun so many years ago. This time there will be no escape!',14,0,100,0,0,10999, 'Azgalor - SAY_ONAGGRO');

-- Kazrogal
DELETE FROM `creature_text` WHERE `entry`=17888;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17888,0,0, 'Shaza-Kiel!',14,0,100,0,0,11017, 'Kazrogal - SAY_ONSLAY1'),
(17888,0,1, 'You... are nothing!',14,0,100,0,0,11053, 'Kazrogal - SAY_ONSLAY2'),
(17888,0,2, 'Miserable nuisance!',14,0,100,0,0,11054, 'Kazrogal - SAY_ONSLAY3'),
(17888,1,0, 'Your death will be a painful one.',14,0,100,0,0,11016, 'Kazrogal - SAY_MARK1'),
(17888,1,1, 'You... are marked.',14,0,100,0,0,11052, 'Kazrogal - SAY_MARK2'),
(17888,2,0, 'Cry for mercy! Your meaningless lives will soon be forfeit.',14,0,100,0,0,11015, 'Kazrogal - SAY_ONAGGRO');

-- Rage Winterchill
DELETE FROM `creature_text` WHERE `entry`=17767;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17767,0,0, 'You have won this battle, but not... the... war',14,0,100,0,0,11026, 'Rage Winterchill - SAY_ONDEATH'),
(17767,1,0, 'All life must perish!',14,0,100,0,0,11025, 'Rage Winterchill - SAY_ONSLAY1'),
(17767,1,1, 'Victory to the Legion!',14,0,100,0,0,11057, 'Rage Winterchill - SAY_ONSLAY2'),
(17767,2,0, 'Crumble and rot!',14,0,100,0,0,11023, 'Rage Winterchill - SAY_DECAY1'),
(17767,2,1, 'Ashes to ashes, dust to dust',14,0,100,0,0,11055, 'Rage Winterchill - SAY_DECAY2'),
(17767,3,0, 'Succumb to the icy chill... of death!',14,0,100,0,0,11024, 'Rage Winterchill - SAY_NOVA1'),
(17767,3,1, 'It will be much colder in your grave',14,0,100,0,0,11058, 'Rage Winterchill - SAY_NOVA2'),
(17767,4,0, 'The Legion''s final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive!',14,0,100,0,0,11022, 'Rage Winterchill - SAY_ONAGGRO');

-- Archimonde
DELETE FROM `creature_text` WHERE `entry`=17968;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17968,1,0, 'Your resistance is insignificant.',14,0,100,0,0,10987, 'Archimonde - SAY_AGGRO'),
(17968,2,0, 'This world will burn!',14,0,100,0,0,10990, 'Archimonde - SAY_DOOMFIRE1'),
(17968,2,1, 'Manach sheek-thrish!',14,0,100,0,0,11041, 'Archimonde - SAY_DOOMFIRE2'),
(17968,3,0, 'A-kreesh!',14,0,100,0,0,11041, 'Archimonde - SAY_AIR_BURST1'),
(17968,3,1, 'Away vermin!',14,0,100,0,0,10989, 'Archimonde - SAY_AIR_BURST2'),
(17968,4,0, 'All creation will be devoured!',14,0,100,0,0,11044, 'Archimonde - SAY_SLAY1'),
(17968,4,1, 'Your soul will languish for eternity.',14,0,100,0,0,10991, 'Archimonde - SAY_SLAY12'),
(17968,4,2, 'I am the coming of the end!',14,0,100,0,0,11045, 'Archimonde - SAY_SLAY3'),
(17968,5,0, 'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',14,0,100,0,0,10993, 'Archimonde - SAY_ENRAGE'),
(17968,6,0, 'No, it cannot be! Nooo!',14,0,100,0,0,10992, 'Archimonde - SAY_DEATH'),
(17968,7,0, 'You are mine now.',14,0,100,0,0,10988, 'Archimonde - SAY_SOUL_CHARGE1'),
(17968,7,1, 'Bow to my will.',14,0,100,0,0,11042, 'Archimonde - SAY_SOUL_CHARGE2');



/*
* world\2012_07_01_01_achievement_criteria_data.sql
*/
DELETE FROM `disables` WHERE `entry` IN (7626,7634) AND `sourceType`=4;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7626,7634);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7626, 11, 0, 0, 'achievement_not_even_a_scratch'),
(7634, 11, 0, 0, 'achievement_not_even_a_scratch');


/*
* world\2012_07_02_00_world_creature_onkill_reputation.sql
*/
-- Add 10 reputation gaining from killing NPC Monstrous Kaliri towards Sha'tari Skyguard
DELETE FROM  `creature_onkill_reputation` WHERE `creature_id`=23051; 
INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`MaxStanding1`,`RewOnKillRepValue1`) VALUES
(23051,1031,7,10);


/*
* world\2012_07_02_01_world_sai.sql
*/
-- Add SAI for Dark Ritualist <Cult of the Damned> ID: 34734 // timings are taken from other script finds
SET @Ritualist := 34734;
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=@Ritualist;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Ritualist;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Ritualist,0,0,0,0,0,100,0,3000,3000,8000,14000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Dark Ritualist - IC - Cast Mind Seer'),
(@Ritualist,0,1,0,0,0,100,0,8000,17300,17300,17300,11,32026,0,0,0,0,0,2,0,0,0,0,0,0,0,'Dark Ritualist - IC - Cast Pain Strike');


/*
* world\2012_07_02_02_world_sai.sql
*/
-- Fix quest the Air Stands Still ID: 13125 + some lurking around mobs SAIs
-- Set guids:
SET @NPC := 43480; -- Underking Talonox in phase 2, in phase 128->@NPC+1
SET @PATH := @NPC * 10;
-- @NPC+2 Salranax phase 2, +3 in phase 128
-- @NPC+4 High Priest in phase 2 and +5 in 128
-- Add (Salranax the Flesh Render, High Priest Yath'amon and Underking Talonox -- One for each phase they are in /used @qaywsx phase data/ )
DELETE FROM `creature` WHERE `id` IN (30829, 30830, 30831);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `MovementType`) VALUES
(@NPC+2,30829,571,1,2,6839.024902,594.444946,427.229523,4.5,300,0,0,0),
(@NPC+4,30831,571,1,2,6869.477539,423.287720,471.783722,1.066242,300,0,0,0),
(@NPC,30830,571,1,2,7169.797363,664.115479,492.375793,1.129528,300,0,0,0),
(@NPC+3,30829,571,1,128,6839.024902,594.444946,427.229523,4.5,300,0,0,0),
(@NPC+5,30831,571,1,128,6869.477539,423.287720,471.783722,1.066242,300,0,0,0),
(@NPC+1,30830,571,1,128,7169.797363,664.115479,492.375793,1.129528,300,0,0,0);
-- Salranax the Flesh Render SAI
UPDATE `creature_template` SET  `faction_A`=2068, `faction_H`=2068, `mindmg`=240, `maxdmg`=270, `mechanic_immune_mask`=10685, `scale`=1.2 WHERE `entry`=30829;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30829;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30829;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30829,0,1,0,8,0,100,1,57906,0,0,0,12,30840,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Salranax the Flesh Render - Summons Munch on hit by horn'),
(30829,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30829,0,3,0,4,0,100,1,0,0,0,0,11,18100,1,0,0,0,0,1,0,0,0,0,0,0,0,'On aggro - Frost Armor'),
(30829,0,4,0,0,0,100,0,2000,6000,4000,8000,11,15242,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Cast Fireball'),
(30829,0,5,0,0,0,100,0,15000,20000,15000,20000,11,15244,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat - Cast Cone of Cold'),
(30829,0,6,0,0,0,100,0,25000,26000,25000,26000,11,15122,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Cast Counterspell'),
(30829,0,7,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death'),
(30829,0,8,0,25,0,100,0,0,0,0,0,28,18100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove buff on respawn');
--  Add SAI for Munch + weapon
UPDATE `creature_template` SET `faction_A`=290,`faction_H`=290, `equipment_id`=30840 WHERE`entry`=30840;
DELETE FROM `creature_equip_template` WHERE `entry`=30840;
INSERT INTO `creature_equip_template` VALUES
(30840,44948,0,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30840;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30840;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30840,0,1,0,4,0,100,1,0,0,0,0,12,30850,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30840,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30840,0,3,0,4,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text 2'),
(30840,0,4,0,4,0,100,1,0,0,0,0,12,30851,4,1000,0,0,0,1,0,0,0,0,0,0,0,'Summons Melt'),
(30840,0,5,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30840,0,6,0,0,0,100,0,4000,8000,10000,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30840,0,7,0,0,0,100,0,4000,7000,2000,3000,11,52374,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Blood Strike'),
(30840,0,8,0,5,0,100,1,0,0,0,0,1,3,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 3'),
(30840,0,9,0,5,0,100,1,0,0,0,0,12,30850,2,40000,0,0,0,8,0,0,0,6831.7270020,585.404990,427.168011,0.8,'On out of combat opens portal');
-- Munch's Texts
DELETE FROM `creature_text` WHERE `entry`=30840;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30840,1,1,'Say hello to my little friend!',12,0,100,0,0,0,'Munch arrival'),
(30840,2,2,'Arise Melt!',12,0,100,0,0,0,'Summon Melts'),
(30840,3,3,'We are done here. I am out.',12,0,100,0,0,0,'Munch oppening portal');
-- Switch Melts into helping faction
UPDATE `creature_template` SET `faction_A`=290, `faction_H`=290 WHERE `entry`=30851;
-- 2/3
-- High Priest Yath'amon SAI
UPDATE `creature_template` SET  `faction_A`=2068, `faction_H`=2068, `mindmg`=240, `maxdmg`=300,`mechanic_immune_mask`=10685, `scale`=1.2 WHERE `entry`=30831; -- Mana_mod /WDB/ should be exactly 40, if want insert it
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30831;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30831;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30831,0,1,0,8,0,100,1,57906,0,0,0,12,30839,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Summons Jayde on hit by horn'),
(30831,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30831,0,3,0,0,0,100,0,2000,3000,6000,8000,11,61705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Venomous Bite'), -- the spell only targets players as it should
(30831,0,4,0,0,0,100,0,2000,7000,10000,20000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30831,0,5,0,0,0,100,0,2000,7000,8000,20000,11,38243,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs'),
(30831,0,6,0,0,0,100,0,10000,15000,30000,35000,11,34322,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Psychic Scream'),
(30831,0,7,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death');
-- Add SAI for Jayde + weapon
UPDATE `creature_template` SET `faction_A`=290,`faction_H`=290, `mechanic_immune_mask`=20, `equipment_id`=30839,`scale`=1  WHERE `entry`=30839;
DELETE FROM `creature_equip_template` WHERE `entry`=30839;
INSERT INTO `creature_equip_template` VALUES
(30839,44926,0,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30839;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30839;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30839,0,1,0,4,0,100,1,0,0,0,0,12,30852,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30839,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30839,0,3,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30839,0,4,0,0,0,100,0,4000,8000,10500,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30839,0,5,0,0,0,100,0,4000,7000,2000,2500,11,52374,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Blood Strike'),
(30839,0,6,0,5,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 2'),
(30839,0,7,0,5,0,100,1,0,0,0,0,12,30852,2,40000,0,0,0,8,0,0,0,6865.674316,414.657349,472.700226,1.185621,'On out of combat opens portal');
-- Jayde Texts
DELETE FROM `creature_text` WHERE `entry`=30839;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30839,1,1,'Too weak to finish your own battles? Very well then...',12,0,100,0,0,0,'Jayde arrival'),
(30839,2,2,'Anything else you need help with before I go? Right, I thought not...',12,0,100,0,0,0,'Oppens portal and dissapears');
-- 3/3
-- Underking Talonox SAI
UPDATE `creature_template` SET  `exp`=2,`faction_A`=2068,`faction_H`=2068,`InhabitType`=1,`mindmg`=320, `maxdmg`=330, `minlevel`=79, `maxlevel`=79, `mechanic_immune_mask`=10685 WHERE `entry`=30830;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30830;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30830;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30830,0,1,0,8,0,100,1,57906,0,0,0,12,30838,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Summons Mograine on hit by horn'),
(30830,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30830,0,3,0,0,0,100,0,1000,2000,2000,7000,11,60802,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mandible Crush'),
(30830,0,4,0,0,0,100,0,1500,2000,10000,15000,11,50283,0,0,0,0,0,0,0,2,0,0,0,0,0,'Combat - Blinding Swarm'),
(30830,0,5,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death');
--  Add SAI for Mograine + weapon
UPDATE `creature_template` SET `health_mod`=2401.3,`mana_mod`=1599.9,`unit_class`=2,`flags_extra`=131072, `faction_A`=290,`faction_H`=290, `minlevel`=83, `maxlevel`=83, `mindmg`=340, `maxdmg`=420, `equipment_id`=30838 WHERE`entry`=30838;
DELETE FROM `creature_equip_template` WHERE `entry`=30838;
INSERT INTO `creature_equip_template` VALUES
(30838,39344,39344,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30838;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30838;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30838,0,1,0,4,0,100,1,0,0,0,0,12,30850,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30838,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30838,0,3,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30838,0,4,0,0,0,100,0,4000,8000,10000,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30838,0,5,0,0,0,100,0,4000,7000,5000,5000,11,49020,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Obliterete'),
(30838,0,6,0,5,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 2'),
(30838,0,7,0,5,0,100,1,0,0,0,0,12,30841,2,40000,0,0,0,8,0,0,0,7190.895508,633.476440,488.506317,1.014229,'On out of combat opens portal');
-- Mograine Texts
DELETE FROM `creature_text` WHERE `entry`=30838;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30838,1,1,'You challenge death itself! Come then, "King." Face the might of Mograine!',12,0,100,0,0,0,'Mograine"s arrival'),
(30838,2,1,'I will see you back at the Valley of Echoes. Suffer well, ally.',12,0,100,0,0,0,'Opens portal');
-- Underking pathing for phase 2
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7169.797363,`position_y`=664.115479,`position_z`=492.375793, `orientation`=1.129528 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7169.797363,664.115479,490.875793,0,0,0,100,0),
(@PATH,2,7196.977051,627.252869,488.591461,0,0,0,100,0),
(@PATH,3,7231.509277,640.110535,484.103490,0,0,0,100,0),
(@PATH,4,7207.646484,677.654114,491.592255,0,0,0,100,0);
-- Underking pathing for phase 128
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7169.797363,`position_y`=664.115479,`position_z`=492.375793, `orientation`=1.129528 WHERE `guid`=@NPC+1;
DELETE FROM `creature_addon` WHERE `guid`=@NPC+1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC+1,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7169.797363,664.115479,490.875793,0,0,0,100,0),
(@PATH,2,7196.977051,627.252869,488.591461,0,0,0,100,0),
(@PATH,3,7231.509277,640.110535,484.103490,0,0,0,100,0),
(@PATH,4,7207.646484,677.654114,491.592255,0,0,0,100,0);
-- 0/0 Thanks to Nay for helping with Gate's data.
-- Add missing data for the teleport spell
DELETE FROM `spell_target_position` WHERE `id`=57897; -- there was none, but just in case
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(57897,571,6383.445801,229.091522,397.031127,1.660376);
-- Add info for Munch's Death Gate spell click
UPDATE `creature_template` SET `unit_flags`=567296,`exp`=2,`speed_run`=1,`minlevel`=80, `maxlevel`=80,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30850;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30850;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30850,57897,2,1);
-- Addon data for creature 30850 (Death Gate (Munch))
DELETE FROM `creature_template_addon` WHERE `entry`=30850;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30850,0,0,1,0, NULL); -- Death Gate (Munch)
-- Add info for Jayde's Death Gate spell click
UPDATE `creature_template` SET `exp`=2,`speed_run`=1,`unit_flags`=567296,`minlevel`=80, `maxlevel`=80,`unit_flags`=567296, `speed_run`=1,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30852;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30852;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30852,57897,2,1);
-- Model data 27346 (creature 30852 (Death Gate (Jayde)))
UPDATE `creature_model_info` SET `bounding_radius`=1.35,`combat_reach`=1.35,`gender`=2 WHERE `modelid`=27346; -- Death Gate (Jayde)
-- Addon data for creature 30852 (Death Gate (Jayde))
DELETE FROM `creature_template_addon` WHERE `entry`=30852;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30852,0,0,1,0, NULL); -- Death Gate (Jayde)
-- Add info for Mograine's Death Gate spell click
UPDATE `creature_template` SET `unit_flags`=567296,`exp`=2,`speed_run`=1,`minlevel`=80, `maxlevel`=80,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30841;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30841;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30841,57897,2,1);
-- Addon data for creature 30841 (Death Gate (Mograine))
DELETE FROM `creature_template_addon` WHERE `entry`=30841;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30841,0,0,1,0, NULL); -- Death Gate (Mograine)
-- Set SAI for Forgotten Depths Priest - ID: 30203
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30203;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30203;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30203,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30203,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');
-- Set SAI for Forgotten Depths Priest - ID: 30543
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30543;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30543;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30543,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30543,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');
-- Set SAI for Forgotten Depths Priest - ID: 31037
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 31037;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=31037;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31037,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(31037,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');


/*
* world\2012_07_02_03_world_gossip.sql
*/
UPDATE `creature_template` SET `gossip_menu_id`=8074 WHERE `entry`=19466; -- Exarch Orelis
UPDATE `creature_template` SET `gossip_menu_id`=8216 WHERE `entry`=20920; -- Magister Theledorn
UPDATE `creature_template` SET `gossip_menu_id`=8661 WHERE `entry`=21112; -- Bossi Pentapiston <Engineering Supplies>

DELETE FROM `gossip_menu` WHERE (`entry`=8074 AND `text_id`=9980) OR
(`entry`=8216 AND `text_id`=10211) OR
(`entry`=8304 AND `text_id`=10360) OR
(`entry`=8370 AND `text_id`=10444) OR
(`entry`=8385 AND `text_id`=10466) OR
(`entry`=8661 AND `text_id`=10889);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8074, 9980), -- 19466
(8216, 10211), -- 20920
(8304, 10360), -- 21461
(8370, 10444), -- 21755
(8385, 10466), -- 21824
(8661, 10889); -- 21112


/*
* world\2012_07_02_04_world_spell_script_names.sql
*/
DELETE FROM `spell_script_names` WHERE `spell_id`=49838;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(49838, "spell_gen_stop_time");

/*
* world\2012_07_04_00_world_spell_script_names.sql
*/
DELETE FROM `spell_script_names` WHERE `spell_id` IN (52941, -52941);
INSERT INTO `spell_script_names` VALUES (52941, 'spell_q12735_song_of_cleansing');

/*
* world\2012_07_05_00_world_item_template.sql
*/
UPDATE `item_template` SET `flagsCustom` = `flagsCustom` | 4 WHERE `entry` IN (50226,50231,50274);


/*
* world\2012_07_06_00_world_spell_script_names.sql
*/
UPDATE `spell_script_names` SET `spell_id` = 42787 WHERE `spell_id` = 42784;
