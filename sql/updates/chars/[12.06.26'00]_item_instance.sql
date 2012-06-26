ALTER TABLE `item_instance`
    ADD COLUMN `displayId` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `itemEntry`;
