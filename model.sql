DROP TABLE IF EXISTS `test`;
CREATE TABLE test(id INT);

DROP PROCEDURE IF EXISTS `insert`;
CREATE PROCEDURE `insert` (IN `id_val` INT) INSERT INTO test(id) VALUES(id_val);

DROP PROCEDURE IF EXISTS `readAll`;
CREATE PROCEDURE `readAll`() SELECT * FROM `test`;

CALL `insert`(1);
CALL `insert`(2);
CALL `insert`(3);