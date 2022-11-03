-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema localbusinessesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `localbusinessesdb` ;

-- -----------------------------------------------------
-- Schema localbusinessesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `localbusinessesdb` DEFAULT CHARACTER SET utf8 ;
USE `localbusinessesdb` ;

-- -----------------------------------------------------
-- Table `business`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `business` ;

CREATE TABLE IF NOT EXISTS `business` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `logo` VARCHAR(2000) NULL,
  `description` LONGTEXT NULL,
  `website_url` VARCHAR(200) NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `hours_of_operation` VARCHAR(500) NULL,
  `rating` INT NULL,
  `reviews` LONGTEXT NULL,
  `year_established` INT NULL,
  `create_date` DATE NULL,
  `update_date` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `owner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `owner` ;

CREATE TABLE IF NOT EXISTS `owner` (
  `id` INT NOT NULL,
  `libertarian_type` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `facebook_link` VARCHAR(200) NULL,
  `twitter_link` VARCHAR(200) NULL,
  `linkedin_link` VARCHAR(200) NULL,
  `other_social_media_link` VARCHAR(200) NULL,
  `youtube_link` VARCHAR(200) NULL,
  `date_of_birth` DATE NULL,
  `create_date` TIMESTAMP NULL,
  `update_date` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `address` ;

CREATE TABLE IF NOT EXISTS `address` (
  `id` INT NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `street2` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(5) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `state_abbr` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_method`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `payment_method` ;

CREATE TABLE IF NOT EXISTS `payment_method` (
  `id` INT NOT NULL,
  `method` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `business_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `business_type` ;

CREATE TABLE IF NOT EXISTS `business_type` (
  `id` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `business_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `business_category` ;

CREATE TABLE IF NOT EXISTS `business_category` (
  `id` INT NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `business_sub_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `business_sub_category` ;

CREATE TABLE IF NOT EXISTS `business_sub_category` (
  `id` INT NOT NULL,
  `sub_category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS localbusinessesuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'localbusinessesuser'@'localhost' IDENTIFIED BY 'localbusinessesuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'localbusinessesuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `business`
-- -----------------------------------------------------
START TRANSACTION;
USE `localbusinessesdb`;
INSERT INTO `business` (`id`, `name`, `logo`, `description`, `website_url`, `email`, `phone`, `hours_of_operation`, `rating`, `reviews`, `year_established`, `create_date`, `update_date`) VALUES (1, 'Celicia Entertainment', 'https://celicia.live/wp-content/uploads/2020/06/cropped-Celicia_Logo-white-no_Live.png', 'Celicia is a woodwind player for musicals', 'https://celicia.live/', 'clslafter@att.net', '111-222-3333', 'Negotiated per gig', 3, 'She sounded great, but doesn\'t want to wear a mask or get vaccinated', 2014-08-01, '2022-10-15', NULL);
INSERT INTO `business` (`id`, `name`, `logo`, `description`, `website_url`, `email`, `phone`, `hours_of_operation`, `rating`, `reviews`, `year_established`, `create_date`, `update_date`) VALUES (2, 'Greg Software Services', NULL, 'Greg does  magic things with computers that no one understand but he gets to charge a lot for', NULL, 'greg\'scomputers@work.io', '333-444-5555', 'Negotiated per contract', 5, 'Whatever he does works all the time. Never any bugs, recording equipment or computer software', 1999-03-20, '2022-10-15', NULL);
INSERT INTO `business` (`id`, `name`, `logo`, `description`, `website_url`, `email`, `phone`, `hours_of_operation`, `rating`, `reviews`, `year_established`, `create_date`, `update_date`) VALUES (3, 'Sal\'s Market', NULL, 'Sal makes yummy organic vegetables', NULL, 'salsfood@localtrade.com', '444-222-5555', 'Satudays and Sundays. 8am-4pm', 4, 'Somestimes the squash is shaped funny', 2000-01-13, '2022-10-15', NULL);
INSERT INTO `business` (`id`, `name`, `logo`, `description`, `website_url`, `email`, `phone`, `hours_of_operation`, `rating`, `reviews`, `year_established`, `create_date`, `update_date`) VALUES (4, 'Austin\'s Campaign', NULL, 'Austin is running for president.', NULL, 'notgonnawin@losers.com', '555-443-7778', 'Always on tour kissing babies', 2, 'What he says sounds good, but politicians lie.', 1940-12-12, '2022-10-15', NULL);
INSERT INTO `business` (`id`, `name`, `logo`, `description`, `website_url`, `email`, `phone`, `hours_of_operation`, `rating`, `reviews`, `year_established`, `create_date`, `update_date`) VALUES (5, 'The Rubin Show', NULL, 'Rubin has a podcast and talks to people about stuff', NULL, 'rubinswisdom@snarky.com', '777-666-5555', 'New podcasts release every Monday at 12pm.', 4, 'I disagree which stuff he says, so I must be smarter than him.', 1970-01-01, '2022-10-15', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `owner`
-- -----------------------------------------------------
START TRANSACTION;
USE `localbusinessesdb`;
INSERT INTO `owner` (`id`, `libertarian_type`, `first_name`, `last_name`, `email`, `phone`, `facebook_link`, `twitter_link`, `linkedin_link`, `other_social_media_link`, `youtube_link`, `date_of_birth`, `create_date`, `update_date`) VALUES (1, 'anarcho-capitalist', 'Celicia', 'Slafter', 'clslafter@att.net', '555-123-4567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `owner` (`id`, `libertarian_type`, `first_name`, `last_name`, `email`, `phone`, `facebook_link`, `twitter_link`, `linkedin_link`, `other_social_media_link`, `youtube_link`, `date_of_birth`, `create_date`, `update_date`) VALUES (2, 'Libertarian', 'Greg', 'Peele', 'greg.peele@lp.org', '555-455-6677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `owner` (`id`, `libertarian_type`, `first_name`, `last_name`, `email`, `phone`, `facebook_link`, `twitter_link`, `linkedin_link`, `other_social_media_link`, `youtube_link`, `date_of_birth`, `create_date`, `update_date`) VALUES (3, 'agorist', 'Sal', 'Agorist', 'sal.agorist@fts.com', '555-222-1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `owner` (`id`, `libertarian_type`, `first_name`, `last_name`, `email`, `phone`, `facebook_link`, `twitter_link`, `linkedin_link`, `other_social_media_link`, `youtube_link`, `date_of_birth`, `create_date`, `update_date`) VALUES (4, 'Constitutionalist', 'Austin', 'Peterson', 'austpete@wrong.net', '555-323-8765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `owner` (`id`, `libertarian_type`, `first_name`, `last_name`, `email`, `phone`, `facebook_link`, `twitter_link`, `linkedin_link`, `other_social_media_link`, `youtube_link`, `date_of_birth`, `create_date`, `update_date`) VALUES (5, 'classical liberal', 'Dave', 'Rubin', 'daveyru@wrongalso.com', '555.333.7789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `address`
-- -----------------------------------------------------
START TRANSACTION;
USE `localbusinessesdb`;
INSERT INTO `address` (`id`, `street`, `street2`, `city`, `zip_code`, `state`, `state_abbr`) VALUES (1, '325 Timberlane Dr', NULL, 'Slidell', '70458', 'Louisiana', 'LA');
INSERT INTO `address` (`id`, `street`, `street2`, `city`, `zip_code`, `state`, `state_abbr`) VALUES (2, '234 Oreo Dr', 'Unit 2', 'Orlando', '32456', 'Florida', 'FL');
INSERT INTO `address` (`id`, `street`, `street2`, `city`, `zip_code`, `state`, `state_abbr`) VALUES (3, '345567 Hwy 190', NULL, 'Eagle Pass', '45678', 'Texas', 'TX');
INSERT INTO `address` (`id`, `street`, `street2`, `city`, `zip_code`, `state`, `state_abbr`) VALUES (4, '221 Highrise Way', 'Apt 75', 'San Diego', '96553', 'California', 'CA');
INSERT INTO `address` (`id`, `street`, `street2`, `city`, `zip_code`, `state`, `state_abbr`) VALUES (5, '4455 South Bend Rd', NULL, 'Tucson', '87668', 'Arizona', 'AZ');

COMMIT;


-- -----------------------------------------------------
-- Data for table `business_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `localbusinessesdb`;
INSERT INTO `business_type` (`id`, `type`) VALUES (1, 'Sole Proprietorship');
INSERT INTO `business_type` (`id`, `type`) VALUES (2, 'Partnership');
INSERT INTO `business_type` (`id`, `type`) VALUES (3, 'Corporation');
INSERT INTO `business_type` (`id`, `type`) VALUES (4, 'Limited Liability');
INSERT INTO `business_type` (`id`, `type`) VALUES (5, 'Unregistered');

COMMIT;


-- -----------------------------------------------------
-- Data for table `business_category`
-- -----------------------------------------------------
START TRANSACTION;
USE `localbusinessesdb`;
INSERT INTO `business_category` (`id`, `category`) VALUES (1, 'Automotive');
INSERT INTO `business_category` (`id`, `category`) VALUES (2, 'Business Support');
INSERT INTO `business_category` (`id`, `category`) VALUES (3, 'Computers');
INSERT INTO `business_category` (`id`, `category`) VALUES (4, 'Construction');
INSERT INTO `business_category` (`id`, `category`) VALUES (5, 'Education');
INSERT INTO `business_category` (`id`, `category`) VALUES (6, 'Entertainment');
INSERT INTO `business_category` (`id`, `category`) VALUES (7, 'Food');
INSERT INTO `business_category` (`id`, `category`) VALUES (8, 'Health');
INSERT INTO `business_category` (`id`, `category`) VALUES (9, 'Home & Garden');
INSERT INTO `business_category` (`id`, `category`) VALUES (10, 'Legal');
INSERT INTO `business_category` (`id`, `category`) VALUES (11, 'Financial');
INSERT INTO `business_category` (`id`, `category`) VALUES (12, 'Manufacturing');
INSERT INTO `business_category` (`id`, `category`) VALUES (13, 'Merchants');
INSERT INTO `business_category` (`id`, `category`) VALUES (14, 'Personal Care');
INSERT INTO `business_category` (`id`, `category`) VALUES (15, 'Real Estate');
INSERT INTO `business_category` (`id`, `category`) VALUES (16, 'Travel');

COMMIT;

