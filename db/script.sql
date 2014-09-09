


ALTER TABLE `laproducts`
  CHANGE `ladungtich` `ladungtich` VARCHAR(100) CHARSET utf8 COLLATE utf8_general_ci NULL;


  /* 2014-06-13*/
/* 3:17:24 PM localhost */ ALTER TABLE `laproducts` ADD `youtubeid` VARCHAR(50)  NULL  DEFAULT NULL  AFTER `laproduct_id`;

/* 14-08-18 */
/* 4:36:36 PM localhost */ ALTER TABLE `laproducts` ADD `layear` INT(4)  NULL  DEFAULT NULL  AFTER `youtubeid`;
/* 4:36:55 PM localhost */ ALTER TABLE `laproducts` ADD `lamonth` INT(2)  NULL  DEFAULT NULL  AFTER `layear`;


/* 2014 09 09 */
/* 2:30:03 PM localhost */ ALTER TABLE `laimages` ADD `laevent` INT  NULL  DEFAULT NULL  AFTER `created_at`;

