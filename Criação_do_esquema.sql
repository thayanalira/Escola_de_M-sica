-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EscolaDeMusica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EscolaDeMusica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EscolaDeMusica` DEFAULT CHARACTER SET utf8 ;
USE `EscolaDeMusica` ;

-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Orquestra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Orquestra` (
  `idOrquestra` INT NOT NULL auto_increment,
  `dataCriacao` DATE NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idOrquestra`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Sinfonia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Sinfonia` (
  `idSinfonia` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `compositor` VARCHAR(45) NOT NULL,
  `dataCriacao` DATE NOT NULL,
  `Orquestra_idOrquestra` INT NULL,
  PRIMARY KEY (`idSinfonia`),
  INDEX `fk_Sinfonia_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  CONSTRAINT `fk_Sinfonia_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `EscolaDeMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Musico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Musico` (
  `idMusico` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `identidade` VARCHAR(14) NOT NULL,
  `nacionalidade` VARCHAR(14) NOT NULL,
  `Orquestra_idOrquestra` INT NULL,
  PRIMARY KEY (`idMusico`),
  INDEX `fk_Musico_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  CONSTRAINT `fk_Musico_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `EscolaDeMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Instrumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Instrumento` (
  `idInstrumento` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `Musico_idMusico` INT NULL,
  PRIMARY KEY (`idInstrumento`),
  INDEX `fk_Instrumento_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  CONSTRAINT `fk_Instrumento_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `EscolaDeMusica`.`Musico` (`idMusico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`FuncaoDoMusico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`FuncaoDoMusico` (
  `idFuncao` INT NOT NULL,
  `dataFuncao` DATE NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `Instrumento_idInstrumento` INT NOT NULL,
  PRIMARY KEY (`idFuncao`),
  INDEX `fk_FuncaoDoMusico_Instrumento1_idx` (`Instrumento_idInstrumento` ASC) VISIBLE,
  CONSTRAINT `fk_FuncaoDoMusico_Instrumento1`
    FOREIGN KEY (`Instrumento_idInstrumento`)
    REFERENCES `EscolaDeMusica`.`Instrumento` (`idInstrumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Telefone` (
  `idTelefone` INT NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `Orquestra_idOrquestra` INT NULL,
  `Musico_idMusico` INT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_Telefone_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  INDEX `fk_Telefone_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  CONSTRAINT `fk_Telefone_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `EscolaDeMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Telefone_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `EscolaDeMusica`.`Musico` (`idMusico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Endereco` (
  `idEndereco` INT NOT NULL,
  `rua` VARCHAR(60) NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(20) NOT NULL,
  `estado` VARCHAR(20) NOT NULL,
  `CEP` VARCHAR(14) NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `Orquestra_idOrquestra` INT NULL,
  `Musico_idMusico` INT NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_Endereco_Orquestra1_idx` (`Orquestra_idOrquestra` ASC) VISIBLE,
  INDEX `fk_Endereco_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Orquestra1`
    FOREIGN KEY (`Orquestra_idOrquestra`)
    REFERENCES `EscolaDeMusica`.`Orquestra` (`idOrquestra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Endereco_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `EscolaDeMusica`.`Musico` (`idMusico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Musico_has_FuncaoDoMusico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Musico_has_FuncaoDoMusico` (
  `Musico_idMusico` INT NOT NULL,
  `FuncaoDoMusico_idFuncao` INT NOT NULL,
  PRIMARY KEY (`Musico_idMusico`, `FuncaoDoMusico_idFuncao`),
  INDEX `fk_Musico_has_FuncaoDoMusico_FuncaoDoMusico1_idx` (`FuncaoDoMusico_idFuncao` ASC) VISIBLE,
  INDEX `fk_Musico_has_FuncaoDoMusico_Musico1_idx` (`Musico_idMusico` ASC) VISIBLE,
  CONSTRAINT `fk_Musico_has_FuncaoDoMusico_Musico1`
    FOREIGN KEY (`Musico_idMusico`)
    REFERENCES `EscolaDeMusica`.`Musico` (`idMusico`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Musico_has_FuncaoDoMusico_FuncaoDoMusico1`
    FOREIGN KEY (`FuncaoDoMusico_idFuncao`)
    REFERENCES `EscolaDeMusica`.`FuncaoDoMusico` (`idFuncao`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EscolaDeMusica`.`Sinfonia_has_FuncaoDoMusico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`Sinfonia_has_FuncaoDoMusico` (
  `Sinfonia_idSinfonia` INT NOT NULL,
  `FuncaoDoMusico_idFuncao` INT NOT NULL,
  PRIMARY KEY (`Sinfonia_idSinfonia`, `FuncaoDoMusico_idFuncao`),
  INDEX `fk_Sinfonia_has_FuncaoDoMusico_FuncaoDoMusico1_idx` (`FuncaoDoMusico_idFuncao` ASC) VISIBLE,
  INDEX `fk_Sinfonia_has_FuncaoDoMusico_Sinfonia1_idx` (`Sinfonia_idSinfonia` ASC) VISIBLE,
  CONSTRAINT `fk_Sinfonia_has_FuncaoDoMusico_Sinfonia1`
    FOREIGN KEY (`Sinfonia_idSinfonia`)
    REFERENCES `EscolaDeMusica`.`Sinfonia` (`idSinfonia`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Sinfonia_has_FuncaoDoMusico_FuncaoDoMusico1`
    FOREIGN KEY (`FuncaoDoMusico_idFuncao`)
    REFERENCES `EscolaDeMusica`.`FuncaoDoMusico` (`idFuncao`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

USE `EscolaDeMusica` ;

-- -----------------------------------------------------
-- Placeholder table for view `EscolaDeMusica`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EscolaDeMusica`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `EscolaDeMusica`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EscolaDeMusica`.`view1`;
USE `EscolaDeMusica`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

