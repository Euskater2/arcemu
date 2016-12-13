ALTER TABLE `worldmap_info` ADD COLUMN `required_quest_2` INT(10) UNSIGNED DEFAULT '0' NOT NULL AFTER `required_quest_1`, CHANGE `required_quest` `required_quest_1` INT(10) UNSIGNED DEFAULT '0' NOT NULL;

UPDATE `world_db_version` SET `LastUpdate`='2012-08-14_21-25_worldmap_info' WHERE (`LastUpdate`='2012-02-09_00-55_earth_shield');

-- this was the whole problem why i had to spend 3 days to ask myself if i´m an idiot (don´t feel offended please <3 ) ---> UPDATE `world_db_version` SET `LastUpdate` = '2012-08-14_21-25_worldmap_info';
-- changed ist into --> UPDATE `world_db_version` SET `LastUpdate`='2012-08-14_21-25_worldmap_info' WHERE (`LastUpdate`='2012-02-09_00-55_earth_shield');
