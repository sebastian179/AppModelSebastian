SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `login` ;
CREATE SCHEMA IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `login` ;

-- -----------------------------------------------------
-- Table `login`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `login`.`Usuario` ;

CREATE  TABLE IF NOT EXISTS `login`.`Usuario` (
  `usuario` VARCHAR(255) NULL ,
  `password` VARCHAR(45) NULL ,
  `id_usuario` INT(11) NOT NULL ,
  PRIMARY KEY (`id_usuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `login`.`Rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `login`.`Rol` ;

CREATE  TABLE IF NOT EXISTS `login`.`Rol` (
  `idRol` INT NOT NULL ,
  `descripcionRol` VARCHAR(45) NULL ,
  PRIMARY KEY (`idRol`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `login`.`UsuarioRol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `login`.`UsuarioRol` ;

CREATE  TABLE IF NOT EXISTS `login`.`UsuarioRol` (
  `id_usuario` INT(11) NOT NULL ,
  `idRol` INT(11) NOT NULL ,
  PRIMARY KEY (`id_usuario`, `idRol`) ,
  INDEX `fk_UsuarioRol_Rol1_idx` (`idRol` ASC) ,
  CONSTRAINT `fk_UsuarioRol_Usuario`
    FOREIGN KEY (`id_usuario` )
    REFERENCES `login`.`Usuario` (`id_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UsuarioRol_Rol1`
    FOREIGN KEY (`idRol` )
    REFERENCES `login`.`Rol` (`idRol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `login` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO  `login`.`rol` (
`idRol` ,
`descripcionRol`
)
VALUES (
'1',  'admin'
), (
'2',  'profesor'
);
INSERT INTO `login`.`rol` (`idRol`, `descripcionRol`) VALUES ('3', 'alumno');

INSERT INTO `login`.`usuario` (`usuario`, `password`, `id_usuario`) VALUES ('admin', 'admin', '1'), ('sebastian', '123456', '2');
INSERT INTO  `login`.`usuario` (
`usuario` ,
`password` ,
`id_usuario`
)
VALUES (
'nacho',  '336699',  '3'
);

INSERT INTO `login`.`usuariorol`  VALUES ('1', '1')
INSERT INTO `login`.`usuariorol`  VALUES ('3', '2')
INSERT INTO `login`.`usuariorol`  VALUES ('2', '3')
INSERT INTO `login`.`usuariorol`  VALUES ('2', '2')
