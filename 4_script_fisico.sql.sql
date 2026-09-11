-- =========================================================
-- Arquivo: Script_Clinica_Vet.sql
-- Projeto de Modelagem: Clínica Veterinária
-- =========================================================

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Veterinarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Veterinarios` (
  `CRMv` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Data_Admissao` DATE NOT NULL,
  `Salario` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`CRMv`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `CPF` VARCHAR(11) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Animais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Animais` (
  `Nome` VARCHAR(45) NOT NULL,
  `Ano_Nascimento` YEAR NOT NULL,
  `Raca` VARCHAR(45) NOT NULL,
  `Codigo` INT NOT NULL AUTO_INCREMENT,
  `Clientes_CPF` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`Codigo`),
  INDEX `fk_Animais_Clientes1_idx` (`Clientes_CPF` ASC) VISIBLE,
  CONSTRAINT `fk_Animais_Clientes1`
    FOREIGN KEY (`Clientes_CPF`)
    REFERENCES `mydb`.`Clientes` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Consultas` (
  `ID_CODIGO` INT NOT NULL AUTO_INCREMENT,
  `Motivo` VARCHAR(255) NOT NULL,
  `DATA_HORA` DATETIME NOT NULL,
  `Animais_Codigo` INT NOT NULL,
  `Veterinarios_CRMv` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`ID_CODIGO`),
  INDEX `fk_Consultas_Animais1_idx` (`Animais_Codigo` ASC) VISIBLE,
  INDEX `fk_Consultas_Veterinarios1_idx` (`Veterinarios_CRMv` ASC) VISIBLE,
  CONSTRAINT `fk_Consultas_Animais1`
    FOREIGN KEY (`Animais_Codigo`)
    REFERENCES `mydb`.`Animais` (`Codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Consultas_Veterinarios1`
    FOREIGN KEY (`Veterinarios_CRMv`)
    REFERENCES `mydb`.`Veterinarios` (`CRMv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;