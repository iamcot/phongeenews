/* 4:54:42 PM localhost */
ALTER TABLE `pl_laorders` ADD `loaihang` ENUM("store","ngoaigiao","kygui","khac")  NULL  DEFAULT 'store'  AFTER `laordernote`;
/* 5:13:36 PM localhost */
ALTER TABLE `pl_laorders` CHANGE `lapayment` `lapayment` ENUM('pay_tienmat','pay_cod','pay_chuyenkhoan')  NULL  DEFAULT 'pay_tienmat';
