/* 2014-06-13*/
/* 3:17:24 PM localhost */ ALTER TABLE `laproducts` ADD `youtubeid` VARCHAR(50)  NULL  DEFAULT NULL  AFTER `laproduct_id`;


ALTER TABLE `laproducts`
  CHANGE `ladungtich` `ladungtich` VARCHAR(100) CHARSET utf8 COLLATE utf8_general_ci NULL;