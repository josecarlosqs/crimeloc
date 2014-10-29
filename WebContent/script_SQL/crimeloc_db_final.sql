CREATE DATABASE IF NOT EXISTS `crimeloc_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `crimeloc_db`;

CREATE TABLE IF NOT EXISTS `Incidente` (
  `id_incidente` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_tipo_incidente` int(11) NOT NULL,
  `ub_latitud` varchar(12) NOT NULL,
  `ub_longitud` varchar(45) NOT NULL,
  `timestamp` date NOT NULL,
  `descripcion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id_incidente`),
  KEY `FK_Incidente_Usuario` (`id_usuario`),
  KEY `FK_Incidente_Tipo_Incidente` (`id_tipo_incidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `Tipo_Incidente` (
  `id_tipo_incidente` int(11) NOT NULL AUTO_INCREMENT,
  `nomtipo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo_incidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `Usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `tipousuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
ALTER TABLE `Incidente`
  ADD CONSTRAINT `FK_Incidente_Tipo_Incidente` FOREIGN KEY (`id_tipo_incidente`) REFERENCES `Tipo_Incidente` (`id_tipo_incidente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Incidente_Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
