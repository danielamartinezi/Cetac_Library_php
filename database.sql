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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `cat_asignaturas` */

insert  into `cat_asignaturas`(`id_asignaturas`,`descrip_asinaturas`,`visible`) values 
(1,'Filosofía ',1),
(2,'Modulo',1),
(3,'biologia 1',1),
(4,'Geometria y Trigonmetria ',1),
(5,'calculo integral',1);

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
(2,'Técnico en recursos humanos ',1),
(3,'Tecnico en laboratorio ambiental ',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `libros_carrera_asignaturas` */

insert  into `libros_carrera_asignaturas`(`id_libros_carrera_asignaturas`,`id_libros`,`id_carrera`,`id_asignaturas`,`visible`) values 
(1,1,1,4,1),
(2,1,2,4,1),
(3,1,3,4,1);

/*Table structure for table `prestamos_libros` */

DROP TABLE IF EXISTS `prestamos_libros`;

CREATE TABLE `prestamos_libros` (
  `id_prestamos` int(11) NOT NULL AUTO_INCREMENT,
  `id_libro` int(11) DEFAULT NULL,
  `nombre_recibe` int(11) DEFAULT NULL,
  `nombre_prestador` int(11) DEFAULT NULL,
  `retorno_libro` tinyint(4) DEFAULT '0',
  `fecha_prestamo` datetime DEFAULT NULL,
  `fecha_retorno` datetime DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id_prestamos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `prestamos_libros` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuaarios`,`nombre`,`primer apellido`,`segundo apellido`,`fec_nac`,`correo_elec`,`contraseña`,`id_perfil`,`visible`) values 
(1,' sandra daniela ','martinez ','ibarra','2003-09-23','ibarrasdaniela@gmail','b1226879bfdb68676e460f03e8f85a96',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
