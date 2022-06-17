/*
SQLyog Ultimate v13.1.2 (64 bit)
MySQL - 5.7.36 : Database - biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biblioteca` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;

USE `biblioteca`;

/*Table structure for table `cat_asignaturas` */

DROP TABLE IF EXISTS `cat_asignaturas`;

CREATE TABLE `cat_asignaturas` (
  `id_asignaturas` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_asinaturas` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_asignaturas`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cat_asignaturas` */

insert  into `cat_asignaturas`(`id_asignaturas`,`descrip_asinaturas`,`visible`) values 
(1,'Biologia',1),
(2,'Ingles',1),
(3,'Literatura',1),
(4,'Matematicas',1),
(5,'Quimica',1),
(6,'Programación',1),
(7,'Ambiental',1),
(8,'Recursos Humanos',1);

/*Table structure for table `cat_libros` */

DROP TABLE IF EXISTS `cat_libros`;

CREATE TABLE `cat_libros` (
  `id_libros` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_libros` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_spanish_ci,
  `link` text COLLATE utf8_spanish_ci,
  `detalles_libros` text COLLATE utf8_spanish_ci,
  `visble` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_libros`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cat_libros` */

insert  into `cat_libros`(`id_libros`,`descrip_libros`,`imagen`,`link`,`detalles_libros`,`visble`) values 
(1,'Ciencias naturales','imagenes/Libros_Biologia/1.PNG','Libros/Libros_biologia/1.PDF',NULL,1),
(2,'Biologia','imagenes/Libros_Biologia/2.PNG','Libros/Libros_biologia/2.PDF',NULL,1),
(3,'biologia  2','imagenes/Libros_Biologia/3.PNG','Libros/Libros_biologia/3.PDF',NULL,1),
(4,'Biología ','imagenes/Libros_Biologia/4.PNG','Libros/Libros_biologia/4.PDF',NULL,1),
(5,'Biologia II','imagenes/Libros_Biologia/5.PNG','Libros/Libros_biologia/5.PDF',NULL,1),
(6,'Biologia','imagenes/Libros_Biologia/6.PNG','Libros/Libros_biologia/6.PDF',NULL,1),
(7,'Ingles 1','imagenes/Libros_Ingles/1.PNG','Libros/Libros_ingles/1.PDF',NULL,1),
(8,'Ingles 2','imagenes/Libros_Ingles/2.PNG','Libros/Libros_ingles/2.PDF',NULL,1),
(9,'Ingles 3','imagenes/Libros_Ingles/3.PNG','Libros/Libros_ingles/3.PDF',NULL,1),
(10,'Ingles 4','imagenes/Libros_Ingles/4.PNG','Libros/Libros_ingles/4.PDF',NULL,1),
(11,'Literatura 1','imagenes/Libros_Literatura/1.PNG','Libros/Libros_literatura/1.PDF',NULL,1),
(12,'Lengua y Literatura 2','imagenes/Libros_Literatura/2.PNG','Libros/Libros_literatura/2.PDF',NULL,1),
(13,'Literatura II','imagenes/Libros_Literatura/3.PNG','Libros/Libros_literatura/3.PDF',NULL,1),
(14,'Literatura Universal','imagenes/Libros_Literatura/4.PNG','Libros/Libros_literatura/4.PDF',NULL,1),
(15,'Literatura Universal 1','imagenes/Libros_Literatura/5.PNG','Libros/Libros_literatura/5.PDF',NULL,1),
(16,'Matematicas ','imagenes/Libros_Matematicas/1.PNG','Libros/Libros_matematicas/1.PDF',NULL,1),
(17,'Geometria y Trigonometria','imagenes/Libros_Matematicas/2.PNG','Libros/Libros_matematjcas/2.PDF',NULL,1),
(18,'Calculo Integral','imagenes/Libros_Matematicas/3.PNG','Libros/Libros_matematicas/3.PDF',NULL,1),
(19,'Calculo Diferencial e Integral','imagenes/Libros_Matematicas/4.PNG','Libros/Libros_matematicas/4.PDF',NULL,1),
(20,'Quimica 1','imagenes/Libros_Quimica/1.PNG','Libros/Libros_quimica/1.PDF',NULL,1),
(21,'Quimica 1','imagenes/Libros_Quimica/2.PNG','Libros/Libros_quimica/2.PDF',NULL,1),
(22,'Quimca I','imagenes/Libros_Quimica/3.PNG','Libros/Libros_quimica/3.PDF',NULL,1),
(23,'Asynchronus JavaScript and','imagenes/Libros_Programacion/1.PNG','Libros/Libros_programacion/1.PDF',NULL,1),
(24,'ASP.NET MVC 5','imagenes/Libros_Programacion/2.PNG','Libros/Libros_programacion/2.PDF',NULL,1),
(25,'HTML5 CSS3 Y JavaScript','imagenes/Libros_Programacion/3.PNG','Libros/Libros_programacion/3.PDF',NULL,1),
(26,'Introduccion a CSS','imagenes/Libros_Programacion/4.PNG','Libros/Libros_Programacion/4.PDF',NULL,1),
(27,'Java COMO PROGRAMAR','imagenes/Libros_Programacion/5.PNG','Libros/Libros_programacion/5.PDF',NULL,1),
(28,'APRENDIZAJE jQuery','imagenes/Libros_Programacion/6.PNG','Libros/Libros_programacion/6.PDF',NULL,1),
(29,'MySQL','imagenes/Libros_Programacion/7.PNG','Libros/Libros_programacion/7.PDF',NULL,1),
(30,'SEGURIDAD INFORMÁTICA','imagenes/Libros_Programacion/8.PNG','Lirbos/Libros_programacion/8.PDF',NULL,1),
(31,'PROGRAMACIÓN','imagenes/Libros_Programacion/9.PNG','Libros/Libros_programacion/9.PDF',NULL,1),
(32,'INTRODUCCIÓN A LA Química Ambiental','imagenes/Libros_Ambiental/1.PNG\r\n','Libros/Libros_ambiental/1.PDF',NULL,1),
(33,'QUIMICA AMBIENTA','imagenes/Libros_Ambiental/2.PNG','Libros/Libros_ambiental/2.PDF',NULL,1),
(34,'Química ambintal','imagenes/Libros_Ambiental/3.PNG','Libros/Libros_ambiental/3.PDF',NULL,1),
(35,'Química ambiental','imagenes/Libros_Ambiental/4.PNG','Libros/Libros_ambiental/4.PDF',NULL,1),
(36,'Administración de Recursos Humanos ','imagenes/Libros_Rh/1.PNG','Libros/Libros_rh/1.PDF',NULL,1),
(37,'Planeación e integración de los recursos humanos','imagenes/Libros_Rh/2.PNG','Libros/Libros_rh/2.PDF',NULL,1),
(38,'ESTADÍSTICA PARA ADMINISTRACIÓN y ECONOMÍA','imagenes/Libros_Rh/3.PNG','Libros/Libros_rh/3.PDF',NULL,1),
(39,'PROBABILIDAD y ESTADÍSTICA','imagenes/Libros_Rh/4.PNG','Libros/Libros_rh/4.PDF',NULL,1),
(40,'Administración de recursos humanos','imagenes/Libros_Rh/5.PNG','Libros/Libros_rh/5.PDF',NULL,1);

/*Table structure for table `cat_licenciaturas` */

DROP TABLE IF EXISTS `cat_licenciaturas`;

CREATE TABLE `cat_licenciaturas` (
  `id_licenciaturas` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_licenciaturas` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `visble` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_licenciaturas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cat_licenciaturas` */

insert  into `cat_licenciaturas`(`id_licenciaturas`,`descrip_licenciaturas`,`visble`) values 
(1,'Técnico en programación',1),
(2,'Tecnico en laboratorio ambiental ',1),
(3,'Técnico en recursos humanos ',1);

/*Table structure for table `cat_perfiles` */

DROP TABLE IF EXISTS `cat_perfiles`;

CREATE TABLE `cat_perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_del_perfil` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cat_perfiles` */

insert  into `cat_perfiles`(`id_perfil`,`descrip_del_perfil`,`visible`) values 
(1,'admistrador del sistemas',1),
(2,'docentes ',1),
(3,'alumnos ',1),
(4,'administrativos ',1);

/*Table structure for table `libros_carrera_asignaturas` */

DROP TABLE IF EXISTS `libros_carrera_asignaturas`;

CREATE TABLE `libros_carrera_asignaturas` (
  `id_libros_carrera_asignaturas` int(11) NOT NULL AUTO_INCREMENT,
  `id_libros` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_asignaturas` int(11) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_libros_carrera_asignaturas`),
  KEY `id_libros` (`id_libros`),
  KEY `id_carrera` (`id_carrera`),
  KEY `id_asignaturas` (`id_asignaturas`),
  CONSTRAINT `libros_carrera_asignaturas_ibfk_1` FOREIGN KEY (`id_libros`) REFERENCES `cat_libros` (`id_libros`),
  CONSTRAINT `libros_carrera_asignaturas_ibfk_2` FOREIGN KEY (`id_carrera`) REFERENCES `cat_licenciaturas` (`id_licenciaturas`),
  CONSTRAINT `libros_carrera_asignaturas_ibfk_3` FOREIGN KEY (`id_asignaturas`) REFERENCES `cat_asignaturas` (`id_asignaturas`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `libros_carrera_asignaturas` */

insert  into `libros_carrera_asignaturas`(`id_libros_carrera_asignaturas`,`id_libros`,`id_carrera`,`id_asignaturas`,`visible`) values 
(1,1,1,1,1),
(2,2,1,1,1),
(3,3,1,1,1),
(4,4,1,1,1),
(5,5,1,1,1),
(6,6,1,1,1),
(7,7,1,2,1),
(8,8,1,2,1),
(9,9,1,2,1),
(10,10,1,2,1),
(11,11,1,3,1),
(12,12,1,3,1),
(13,13,1,3,1),
(14,14,1,3,1),
(15,15,1,3,1),
(16,16,1,4,1),
(17,17,1,4,1),
(18,18,1,4,1),
(19,19,1,4,1),
(20,20,1,5,1),
(21,21,1,5,1),
(22,22,1,5,1),
(23,23,1,6,1),
(24,24,1,6,1),
(25,25,1,6,1),
(26,26,1,6,1),
(27,27,1,6,1),
(28,28,1,6,1),
(29,29,1,6,1),
(30,30,1,6,1),
(31,31,1,6,1),
(32,1,2,1,1),
(33,2,2,1,1),
(34,3,2,1,1),
(35,4,2,1,1),
(36,5,2,1,1),
(37,6,2,1,1),
(38,7,2,2,1),
(39,8,2,2,1),
(40,9,2,2,1),
(41,10,2,2,1),
(42,11,2,3,1),
(43,12,2,3,1),
(44,13,2,3,1),
(45,14,2,3,1),
(46,15,2,3,1),
(47,16,2,4,1),
(48,17,2,4,1),
(49,18,2,4,1),
(50,19,2,4,1),
(51,20,2,5,1),
(52,21,2,5,1),
(53,22,2,5,1),
(54,32,2,7,1),
(55,33,2,7,1),
(56,34,2,7,1),
(57,35,2,7,1),
(58,1,3,1,1),
(59,2,3,1,1),
(60,3,3,1,1),
(61,4,3,1,1),
(62,5,3,1,1),
(63,6,3,1,1),
(64,7,3,2,1),
(65,8,3,2,1),
(66,9,3,2,1),
(67,10,3,2,1),
(68,11,3,3,1),
(69,12,3,3,1),
(70,13,3,3,1),
(71,14,3,3,1),
(72,15,3,3,1),
(73,16,3,4,1),
(74,17,3,4,1),
(75,18,3,4,1),
(76,19,3,4,1),
(77,20,3,5,1),
(78,21,3,5,1),
(79,22,3,5,1),
(80,36,3,8,1),
(81,37,3,8,1),
(82,38,3,8,1),
(83,39,3,8,1),
(84,40,3,8,1);

/*Table structure for table `prestamos_libros` */

DROP TABLE IF EXISTS `prestamos_libros`;

CREATE TABLE `prestamos_libros` (
  `id_prestamos` int(11) NOT NULL AUTO_INCREMENT,
  `id_libro` int(11) DEFAULT NULL,
  `nombre_recibe` int(11) DEFAULT NULL,
  `nombre_prestador` int(11) DEFAULT NULL,
  `retorno_libro` tinyint(4) DEFAULT '0',
  `observaciones` text COLLATE utf8_spanish_ci,
  `fecha_prestamo` datetime DEFAULT NULL,
  `fecha_retorno` datetime DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_prestamos`),
  KEY `id_libro` (`id_libro`),
  KEY `nombre_recibe` (`nombre_recibe`),
  KEY `nombre_prestador` (`nombre_prestador`),
  CONSTRAINT `prestamos_libros_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros_carrera_asignaturas` (`id_libros_carrera_asignaturas`),
  CONSTRAINT `prestamos_libros_ibfk_2` FOREIGN KEY (`nombre_recibe`) REFERENCES `usuarios` (`id_usuaarios`),
  CONSTRAINT `prestamos_libros_ibfk_3` FOREIGN KEY (`nombre_prestador`) REFERENCES `usuarios` (`id_usuaarios`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `prestamos_libros` */

insert  into `prestamos_libros`(`id_prestamos`,`id_libro`,`nombre_recibe`,`nombre_prestador`,`retorno_libro`,`observaciones`,`fecha_prestamo`,`fecha_retorno`,`visible`) values 
(10,8,2,3,1,'caqcwq','2022-06-16 11:06:32','2022-06-17 10:06:14',1),
(11,54,2,1,1,'ejemplo','2022-06-16 11:06:56','2022-06-17 10:06:16',1);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuaarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `primer apellido` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `segundo apellido` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fec_nac` date DEFAULT NULL,
  `correo_elec` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contraseña` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_usuaarios`),
  KEY `id_perfil` (`id_perfil`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `cat_perfiles` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuaarios`,`nombre`,`primer apellido`,`segundo apellido`,`fec_nac`,`correo_elec`,`contraseña`,`id_perfil`,`visible`) values 
(1,' sandra daniela ','martinez ','ibarra','2003-09-23','ibarrasdaniela@gmail','b1226879bfdb68676e460f03e8f85a96',1,1),
(2,'Erick Yahir','Sandoval','Rodriguez','2003-09-26',NULL,NULL,3,1),
(3,'daniela','martinez','ibarra',NULL,'ibarrasdaniela','daniela',1,1);

/*Table structure for table `vw_libros` */

DROP TABLE IF EXISTS `vw_libros`;

/*!50001 DROP VIEW IF EXISTS `vw_libros` */;
/*!50001 DROP TABLE IF EXISTS `vw_libros` */;

/*!50001 CREATE TABLE  `vw_libros`(
 `id_libros_carrera_asignaturas` int(11) ,
 `id_licenciaturas` int(11) ,
 `descrip_licenciaturas` varchar(200) ,
 `id_asignaturas` int(11) ,
 `descrip_asinaturas` varchar(150) ,
 `id_libros` int(11) ,
 `descrip_libros` varchar(150) ,
 `detalles_libros` text ,
 `imagen` text ,
 `link` text 
)*/;

/*Table structure for table `vw_listado_prestamo` */

DROP TABLE IF EXISTS `vw_listado_prestamo`;

/*!50001 DROP VIEW IF EXISTS `vw_listado_prestamo` */;
/*!50001 DROP TABLE IF EXISTS `vw_listado_prestamo` */;

/*!50001 CREATE TABLE  `vw_listado_prestamo`(
 `id_prestamos` int(11) ,
 `solicita` varchar(302) ,
 `entrega` varchar(302) ,
 `descrip_licenciaturas` varchar(200) ,
 `descrip_asinaturas` varchar(150) ,
 `descrip_libros` varchar(150) ,
 `fecha_prestamo` varchar(23) ,
 `retorno_libro` tinyint(4) ,
 `fecha_retorno` datetime 
)*/;

/*View structure for view vw_libros */

/*!50001 DROP TABLE IF EXISTS `vw_libros` */;
/*!50001 DROP VIEW IF EXISTS `vw_libros` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_libros` AS (select `a`.`id_libros_carrera_asignaturas` AS `id_libros_carrera_asignaturas`,`b`.`id_licenciaturas` AS `id_licenciaturas`,`b`.`descrip_licenciaturas` AS `descrip_licenciaturas`,`c`.`id_asignaturas` AS `id_asignaturas`,`c`.`descrip_asinaturas` AS `descrip_asinaturas`,`d`.`id_libros` AS `id_libros`,`d`.`descrip_libros` AS `descrip_libros`,`d`.`detalles_libros` AS `detalles_libros`,`d`.`imagen` AS `imagen`,`d`.`link` AS `link` from (((`libros_carrera_asignaturas` `a` left join `cat_licenciaturas` `b` on((`a`.`id_carrera` = `b`.`id_licenciaturas`))) left join `cat_asignaturas` `c` on((`a`.`id_asignaturas` = `c`.`id_asignaturas`))) left join `cat_libros` `d` on((`a`.`id_libros` = `d`.`id_libros`)))) */;

/*View structure for view vw_listado_prestamo */

/*!50001 DROP TABLE IF EXISTS `vw_listado_prestamo` */;
/*!50001 DROP VIEW IF EXISTS `vw_listado_prestamo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_listado_prestamo` AS (select `a`.`id_prestamos` AS `id_prestamos`,concat(`c`.`nombre`,' ',`c`.`primer apellido`,' ',`c`.`segundo apellido`) AS `solicita`,concat(`d`.`nombre`,' ',`d`.`primer apellido`,' ',`d`.`segundo apellido`) AS `entrega`,`b`.`descrip_licenciaturas` AS `descrip_licenciaturas`,`b`.`descrip_asinaturas` AS `descrip_asinaturas`,`b`.`descrip_libros` AS `descrip_libros`,date_format(`a`.`fecha_prestamo`,'%d-%m-%Y %H:%m%p') AS `fecha_prestamo`,`a`.`retorno_libro` AS `retorno_libro`,`a`.`fecha_retorno` AS `fecha_retorno` from (((`prestamos_libros` `a` left join `vw_libros` `b` on((`a`.`id_libro` = `b`.`id_libros_carrera_asignaturas`))) left join `usuarios` `c` on((`a`.`nombre_recibe` = `c`.`id_usuaarios`))) left join `usuarios` `d` on((`a`.`nombre_prestador` = `d`.`id_usuaarios`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
