-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`EMISORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMISORES` (
  `ID_EMISOR` INT NOT NULL,
  `NOMBRES_EMISOR` VARCHAR(30) NULL,
  `APELLIDOS_EMISOR` VARCHAR(30) NULL,
  `DOCUMENTO_IDENTIFICACION_EMISOR` VARCHAR(30) NULL,
  `TELEFONO_EMISOR` VARCHAR(12) NULL,
  `CORREO_EMISOR` VARCHAR(30) NULL,
  PRIMARY KEY (`ID_EMISOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RECEPTORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RECEPTORES` (
  `ID_RECEPTOR` INT NOT NULL,
  `NOMBRES_RECEPTOR` VARCHAR(30) NULL,
  `APELLIDOS_RECEPTOR` VARCHAR(30) NULL,
  `DOCUMENTO_IDENTIFICACION_RECEPTOR` VARCHAR(13) NULL,
  PRIMARY KEY (`ID_RECEPTOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`REMESAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`REMESAS` (
  `ID_REMESAS` INT NOT NULL,
  `CONTRASEÑA` VARCHAR(10) NULL,
  `FECHA_EVALUADA` DATETIME NULL,
  `MONTO` FLOAT NULL,
  `EMISORES_ID_EMISOR` INT NOT NULL,
  `RECEPTORES_ID_RECEPTOR` INT NOT NULL,
  PRIMARY KEY (`ID_REMESAS`),
  INDEX `fk_REMESAS_EMISORES_idx` (`EMISORES_ID_EMISOR` ASC),
  INDEX `fk_REMESAS_RECEPTORES1_idx` (`RECEPTORES_ID_RECEPTOR` ASC),
  CONSTRAINT `fk_REMESAS_EMISORES`
    FOREIGN KEY (`EMISORES_ID_EMISOR`)
    REFERENCES `mydb`.`EMISORES` (`ID_EMISOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_REMESAS_RECEPTORES1`
    FOREIGN KEY (`RECEPTORES_ID_RECEPTOR`)
    REFERENCES `mydb`.`RECEPTORES` (`ID_RECEPTOR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;