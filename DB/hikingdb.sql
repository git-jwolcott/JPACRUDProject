-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hikingdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `hikingdb` ;

-- -----------------------------------------------------
-- Schema hikingdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hikingdb` DEFAULT CHARACTER SET utf8 ;
USE `hikingdb` ;

-- -----------------------------------------------------
-- Table `hike`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hike` ;

CREATE TABLE IF NOT EXISTS `hike` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `location` VARCHAR(100) NOT NULL,
  `length` DECIMAL(5,2) NOT NULL,
  `trailhead_latitude` DOUBLE NULL,
  `trailhead_longitude` DOUBLE NULL,
  `image_url` VARCHAR(45) NULL,
  `elevation_gain` INT NOT NULL,
  `route_type` VARCHAR(15) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS hikinguser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'hikinguser'@'localhost' IDENTIFIED BY 'hikinguser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'hikinguser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `hike`
-- -----------------------------------------------------
START TRANSACTION;
USE `hikingdb`;
INSERT INTO `hike` (`id`, `name`, `location`, `length`, `trailhead_latitude`, `trailhead_longitude`, `image_url`, `elevation_gain`, `route_type`) VALUES (1, 'Saint Isabel Glacier', 'Brainard Lake Recreation Area', 8.4, 40.07797, -105.58414, 'isabelle.png', 1660, 'out and back');
INSERT INTO `hike` (`id`, `name`, `location`, `length`, `trailhead_latitude`, `trailhead_longitude`, `image_url`, `elevation_gain`, `route_type`) VALUES (2, 'Devil\'s Thumb Lake Trail', 'Indian Peaks Wilderness near Nederland, CO', 12.1, 39.95167, -105.59493, 'devilsthumbeast.png', 2467, 'out and back');
INSERT INTO `hike` (`id`, `name`, `location`, `length`, `trailhead_latitude`, `trailhead_longitude`, `image_url`, `elevation_gain`, `route_type`) VALUES (3, 'Devil\'s Thumb Trailhead to Devil\'s Thumb Pass', 'Indian Peaks Wilderness near Tabernash, CO', 7.9, 39.98656, -105.74282, 'devilsthumbwest.png', 2250, 'out and back');
INSERT INTO `hike` (`id`, `name`, `location`, `length`, `trailhead_latitude`, `trailhead_longitude`, `image_url`, `elevation_gain`, `route_type`) VALUES (4, 'Byers Peak Trail', 'Araphao National Forest near Winter Park, CO', 9.1, 39.88847, -105.92522, 'byers.png', 2988, 'out and back');
INSERT INTO `hike` (`id`, `name`, `location`, `length`, `trailhead_latitude`, `trailhead_longitude`, `image_url`, `elevation_gain`, `route_type`) VALUES (5, 'Tour de Mont Blanc', 'Auvergne-Rhone-Alps, near Les Houches, France', 6.5, 45.8969, 6.7792, 'ColDeTricot.png', 4248, 'thru hike');

COMMIT;

