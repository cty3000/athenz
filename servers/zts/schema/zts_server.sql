-- MySQL Script generated by MySQL Workbench
-- Fri Feb  8 17:06:14 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema zts_store
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zts_store
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zts_store` DEFAULT CHARACTER SET utf8 ;
USE `zts_store` ;

-- -----------------------------------------------------
-- Table `zts_store`.`certificates`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zts_store`.`certificates` (
  `provider` VARCHAR(512) NOT NULL,
  `instanceId` VARCHAR(512) NOT NULL,
  `service` VARCHAR(512) NOT NULL,
  `currentSerial` VARCHAR(128) NOT NULL,
  `currentTime` DATETIME(3) NOT NULL,
  `currentIP` VARCHAR(64) NOT NULL,
  `prevSerial` VARCHAR(128) NOT NULL,
  `prevTime` DATETIME(3) NOT NULL,
  `prevIP` VARCHAR(64) NOT NULL,
  `clientCert` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`provider`, `instanceId`, `service`))
ENGINE = InnoDB,
ROW_FORMAT = DYNAMIC,
DEFAULT CHARSET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
