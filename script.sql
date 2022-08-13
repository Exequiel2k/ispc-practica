-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Peluqueria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Peluqueria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Peluqueria` DEFAULT CHARACTER SET utf8 ;
USE `Peluqueria` ;

-- -----------------------------------------------------
-- Table `Peluqueria`.`Dueno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria`.`Dueno` (
  `DNI` VARCHAR(8) NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Apellido` VARCHAR(30) NOT NULL,
  `Telefono` VARCHAR(15) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peluqueria`.`Perro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria`.`Perro` (
  `id_Perro` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Fecha_nac` DATE NOT NULL,
  `Sexo` VARCHAR(1) NOT NULL,
  `Dueno_DNI` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`id_Perro`),
  INDEX `fk_Perro_Dueno_idx` (`Dueno_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Perro_Dueno`
    FOREIGN KEY (`Dueno_DNI`)
    REFERENCES `Peluqueria`.`Dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Peluqueria`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Peluqueria`.`Historial` (
  `id_Historial` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Monto` DECIMAL NOT NULL,
  `Perro` INT NOT NULL,
  PRIMARY KEY (`id_Historial`),
  INDEX `fk_Historial_Perro1_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Perro1`
    FOREIGN KEY (`Perro`)
    REFERENCES `Peluqueria`.`Perro` (`id_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `peluqueria`.`historial`
(`id_Historial`,`Fecha`,`Descripcion`,`Monto`,`Perro`)
VALUES
(10,'2021-12-30','vacuna',1000,10);