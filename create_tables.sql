CREATE TABLE `DNS_Project`.`domain` (
  `domain_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`domain_id`),
  INDEX `index_name_domain` (`name` ASC));


CREATE TABLE `DNS_Project`.`record` (
  `record_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `value` VARCHAR(150) NOT NULL,
  `type` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`Record_id`),
  INDEX `index_name_record` (`name` ASC));

ALTER TABLE `DNS_Project`.`record` 
ADD CONSTRAINT `fk_domain_record`
  FOREIGN KEY (`name`)
  REFERENCES `DNS_Project`.`domain` (`name`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


CREATE TABLE `DNS_Project`.`check` (
  `check_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `date` DATETIME NOT NULL,
  `check_ok` TINYINT(1) NOT NULL,
  PRIMARY KEY (`check_id`),
  INDEX `index_name_check` (`name` ASC));

ALTER TABLE `DNS_Project`.`check`
ADD CONSTRAINT `fk_domain_check`
  FOREIGN KEY (`name`)
  REFERENCES `DNS_Project`.`domain` (`name`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
