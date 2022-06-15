-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema acme
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema acme
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `acme` DEFAULT CHARACTER SET latin1 ;
USE `acme` ;

-- -----------------------------------------------------
-- Table `acme`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acme`.`persona` (
  `id_persona` INT NOT NULL AUTO_INCREMENT,
  `numero_cedula` VARCHAR(12) NOT NULL,
  `primer_nombre` VARCHAR(50) NOT NULL,
  `segundo_nombre` VARCHAR(50) NULL,
  `apellido` VARCHAR(50) NOT NULL,
  `direccion` VARCHAR(50) NOT NULL,
  `telefono` VARCHAR(15) NOT NULL,
  `ciudad` INT NOT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE INDEX `id_persona_UNIQUE` (`id_persona` ASC),
  UNIQUE INDEX `numero_cedula_UNIQUE` (`numero_cedula` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acme`.`vehiculo` (
  `id_vehiculo` INT NOT NULL AUTO_INCREMENT,
  `placa` VARCHAR(45) NOT NULL,
  `id_marca` ENUM('Chevrolet', 'Suzuki', 'Kia', 'Renault', 'Mazda') NOT NULL,
  `id_tipo` ENUM('sedan', 'rural', 'familiar', 'pick ups', 'furgon', 'furgoneta') NOT NULL,
  `conductor` INT NULL,
  `propietario` INT NULL,
  `id_color` ENUM('Blanco', 'Negro', 'Gris', 'Plata', 'Rojo', 'Azul', 'Amarillo', 'Dorado', 'Beige', 'Café', 'Verde', 'Otros') NULL,
  PRIMARY KEY (`id_vehiculo`),
  UNIQUE INDEX `placa_UNIQUE` (`placa` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `acme`.`perfil_persona_vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `acme`.`perfil_persona_vehiculo` (
  `id_perfil` INT NOT NULL AUTO_INCREMENT,
  `id_persona` INT NOT NULL,
  `id_vehiculo` INT NOT NULL,
  `id_perfil` ENUM('conductor', 'propietario') NOT NULL,
  PRIMARY KEY (`id_perfil`),
  CONSTRAINT `id_persona`
    FOREIGN KEY ()
    REFERENCES `acme`.`persona` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_vehiculo`
    FOREIGN KEY ()
    REFERENCES `acme`.`vehiculo` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
