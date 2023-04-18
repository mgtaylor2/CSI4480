-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`EMAIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMAIL` (
  `emailID` INT NOT NULL,
  `userEmail` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`emailID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`PASSWORD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PASSWORD` (
  `passwordID` INT NOT NULL,
  `userPassword` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`passwordID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`TEST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TEST` (
  `testID` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`USER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`USER` (
  `userID` INT NOT NULL,
  `EMAIL_emailID` INT NOT NULL,
  `PASSWORD_passwordID` INT NOT NULL,
  `userEmail` VARCHAR(45) NULL DEFAULT NULL,
  `userPassword` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`userID`, `EMAIL_emailID`, `PASSWORD_passwordID`),
  INDEX `fk_USER_EMAIL_idx` (`EMAIL_emailID` ASC) VISIBLE,
  INDEX `fk_USER_PASSWORD1_idx` (`PASSWORD_passwordID` ASC) VISIBLE,
  CONSTRAINT `fk_USER_EMAIL`
    FOREIGN KEY (`EMAIL_emailID`)
    REFERENCES `mydb`.`EMAIL` (`emailID`),
  CONSTRAINT `fk_USER_PASSWORD1`
    FOREIGN KEY (`PASSWORD_passwordID`)
    REFERENCES `mydb`.`PASSWORD` (`passwordID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
