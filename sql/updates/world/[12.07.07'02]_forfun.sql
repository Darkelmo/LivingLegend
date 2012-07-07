UPDATE `item_template` SET `BuyCount` = 100, `stackable` = 1000 WHERE `entry` IN (3775, 5237, 5565, 6265, 16583, 17020, 17030, 17032, 17033, 21177, 37201, 43231, 43233, 43235, 43237, 44605, 44614, 44615, 52020, 52021);
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `RequiredSkill` = 0, `RequiredSkillRank` = 0, `requiredhonorrank` = 0, `RequiredCityRank` = 0, `RequiredReputationFaction` = 0, `RequiredReputationRank` = 0, `startquest` = 0, `minMoneyLoot` = 0, `maxMoneyLoot` = 0;

UPDATE `access_requirement` SET `quest_done_A` = 10285, `quest_done_H` = 10285, `quest_failed_text` = 'В данный момент доступ в подземелья закрыт.';

UPDATE `battleground_template` SET `MinPlayersPerTeam` = 3 WHERE `id` IN (2, 3, 7, 9, 32);
UPDATE `battleground_template` SET `MinPlayersPerTeam` = 10 WHERE `id` IN (1, 30);
UPDATE `battleground_template` SET `MaxPlayersPerTeam` = 40 WHERE `id` = 40;
