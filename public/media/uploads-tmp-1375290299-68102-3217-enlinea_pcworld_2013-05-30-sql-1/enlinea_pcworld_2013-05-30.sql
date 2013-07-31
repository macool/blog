# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.31-0ubuntu0.12.10.1)
# Database: enlinea_pcworld
# Generation Time: 2013-05-30 17:15:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table participantes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `participantes`;

CREATE TABLE `participantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) DEFAULT NULL,
  `cedula` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `twitter_profile` varchar(255) DEFAULT NULL,
  `facebook_profile` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `feedback` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_participantes_on_cedula` (`cedula`),
  UNIQUE KEY `index_participantes_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;

INSERT INTO `participantes` (`id`, `nombres`, `cedula`, `email`, `twitter_profile`, `facebook_profile`, `telefono`, `feedback`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'1712166949','ferriman@gmail.com','ferrimankenobi','ferriman','0998039620','Esta es una prueba','2013-05-30 02:53:05','2013-05-30 02:53:05'),
	(2,'Cinthia Betzabeth Ponce velastegui ','1205795576','cynthiaponce@outlook.com','Cynthiaponcev','Cynthiaponcev','0989972902',NULL,'2013-05-30 03:14:59','2013-05-30 03:14:59'),
	(3,'Pablo Ramos','0602988024','pab.ramos.sc@gmail.com','pablor_sc','pablo.ramos','0984590104','','2013-05-30 03:15:02','2013-05-30 03:15:02'),
	(4,'Jaime Daniel Rodriguez Fajardo','1719623512','danyro_ec@hotmail.com','rdanyro','rdanyro','0983144424','es muy interesante, ademas de educativa.','2013-05-30 03:16:37','2013-05-30 03:16:37'),
	(5,'Luis Antonio Moreira Pasquel','1716567811','lmoreiraec@hotmail.com','lmoreiraec','lmoreiraec','0990810365','','2013-05-30 03:17:46','2013-05-30 03:17:46'),
	(6,NULL,'0915887673','thayls22@hotmail.com','hada_negra8','princhesathay','0994308512','','2013-05-30 03:18:01','2013-05-30 03:18:01'),
	(7,'Luis Moreira Medina','1301786438','moreiraluisec@hotmail.com','','','0982583370','Muy Buena','2013-05-30 03:21:32','2013-05-30 03:21:32'),
	(8,'Jean Marcelo Vargas Oleas','0919351379','jeanmarcelo_111_@hotmail.com','JeanMVargas','jeanmarcelo_111_@hotmail.com','0980520982',NULL,'2013-05-30 03:26:56','2013-05-30 03:26:56'),
	(9,'Jaime','1722755475','jr._cepeda@hotmail.com','','Jaime Cepeda','0993763667','','2013-05-30 03:30:07','2013-05-30 03:30:07'),
	(10,'Juan Soriano','0924080336','juanes_sp@hotmail.com','ninioJuanpi','http://www.facebook.com/juanes.jesp','0988719014','Muy buena transmision de PC World son lo maximo, si no gano mi entradita para el #CPQuito3 no dudare en ver la trasmision por aqui, recomiendo a mis seguidores tambien seguir a esta prestigiosa revista, y asi puedan vivir la experiencia Campus Party','2013-05-30 03:30:42','2013-05-30 03:30:42'),
	(11,'Carlos','1104039282','carmu14@gmail.com','cpmunoz','www.facebook.com/carmu14','0991272004','Muy buena','2013-05-30 03:32:28','2013-05-30 03:32:28'),
	(12,'Kruskaya Soledad Salazar Espinoza','1104415052','ks.salazar1990@gmail.com','kssole','kruskaya.salazar1','0999830772',NULL,'2013-05-30 03:41:36','2013-05-30 03:41:36'),
	(13,'Daniel Fernando Pineda Alvarez','0103523908','fpineda86@hotmail.com','@fpineda86','www.facebook.com/SpErPeMtUz','0984228883','Excelente','2013-05-30 04:02:23','2013-05-30 04:02:23'),
	(14,'Luis Manuel Mora Torres','0924704695','luisma1985@gmail.com','l2mt','','2288767','','2013-05-30 04:02:29','2013-05-30 04:02:29'),
	(15,NULL,'0502653066','nandoesteban@me.com','@nandoesteban',NULL,'0984378188','','2013-05-30 04:24:24','2013-05-30 04:24:24'),
	(16,'Edisson Geovanny Campoverde Llanos','0104993811','geocampo_14@hotmail.com','@dj_present','geovanny.campoverde1','0992845597','','2013-05-30 04:45:26','2013-05-30 04:45:26'),
	(17,NULL,'0104641741','alibru_bip@hotmail.com','@AlinaG91','alina.guerrero','0992831273','','2013-05-30 04:47:53','2013-05-30 04:47:53'),
	(18,NULL,'0930086848','rongmora@espol.edu.ec','@RONNEY41','www.facebook.com/RONNEY41','0989966349','excelente :D','2013-05-30 05:24:18','2013-05-30 05:24:18'),
	(19,'Angel Astudillo','0924074057','xavieras1@gmail.com','@axastudillo','axaa7','0989375137','','2013-05-30 05:32:32','2013-05-30 05:32:32'),
	(20,'jose medina ','1711970762','josemedina10@gmail.com','josesitosdq','','0995887632','Excelente ','2013-05-30 05:46:45','2013-05-30 05:46:45'),
	(21,'Juan Francisco','1715764955','juan_francisco05@hotmail.com','@JuanFranVelasco','@JuanFranVelasco','0984684817',NULL,'2013-05-30 05:55:01','2013-05-30 05:55:01'),
	(22,'Christian Echeverria','0918836586','newsletter@chokotrip.info','chokoec','chokoec','0999368722',NULL,'2013-05-30 06:20:19','2013-05-30 06:20:19'),
	(23,'Andrea Carolina Peralta Bravo','0104815956','andreacp90@hotmail.com','Angie190','acpb90','0995767370','','2013-05-30 07:03:32','2013-05-30 07:03:32'),
	(24,'Jairo Apolo','0707005047','jairo.patricio@gmail.com','thejairo2190','jairo2190','0983960364','','2013-05-30 15:00:11','2013-05-30 15:00:11'),
	(25,'Lorena Priscila Cajas Aguilar','1721066692','lorecajas@hotmail.com','@lorecajas25','Lore Cajas','0984940909','Excelente!!!','2013-05-30 15:39:19','2013-05-30 15:39:19'),
	(26,'Jose Luis Rodriguez Briones','1204775041','jocluis_22@hotmail.es','jocluisrb','Jose Luis Rodriguez Briones','0998117744','','2013-05-30 15:44:02','2013-05-30 15:44:02'),
	(27,'David Zurita','1710456086','dzuritaa@hotmail.com','dzuritaa','david.zurita','0992526829','es excelente!!','2013-05-30 15:48:01','2013-05-30 15:48:01'),
	(28,'Manuel Ramiro','1717902322','manukorp@outlook.com','manukorp','manukorp','0985171193',NULL,'2013-05-30 15:48:51','2013-05-30 15:48:51'),
	(29,'Juan Pablo Zuniga','0105514129','juanpi476@hotmail.com','@juanpi476','http://www.facebook.com/juanpi476','0984883860','genial','2013-05-30 15:50:20','2013-05-30 15:50:20'),
	(30,NULL,'0104081948','anahi_4194@hotmail.com','','anahi.gonzalezc','0998955474','','2013-05-30 17:10:20','2013-05-30 17:10:20'),
	(31,'Francisco Valencia','1719373126','fvalencia2284@gmail.com','@fjva2284','Francisco Valencia','0984203026','','2013-05-30 17:11:28','2013-05-30 17:11:28');

/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
