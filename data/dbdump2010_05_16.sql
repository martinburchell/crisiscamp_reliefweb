-- MySQL dump 10.13  Distrib 5.1.37, for Win32 (ia32)
--
-- Host: localhost    Database: reliefweb
-- ------------------------------------------------------
-- Server version	5.1.37-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (4,'Public','2010-04-14 20:04:23'),(5,'Restrictions','2010-04-14 20:04:29'),(6,'Licensed','2010-04-14 20:04:41');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
INSERT INTO `cluster` VALUES (4,'Agriculture','2010-04-14 16:47:09'),(5,'Non-Food Items','2010-04-14 16:47:18'),(6,'Coordination','2010-04-14 16:47:24'),(7,'Education','2010-04-14 16:47:29'),(8,'Food','2010-04-14 16:47:34'),(9,'Health','2010-04-14 16:47:38'),(10,'Information Management','2010-04-14 16:47:50'),(11,'Nutrition','2010-04-14 16:47:58'),(12,'Logistics','2010-04-14 16:48:03'),(13,'Protection','2010-04-14 16:48:09'),(14,'Early Recovery','2010-04-14 16:48:15'),(15,'Shelter','2010-04-14 16:48:20'),(16,'Telecoms','2010-04-14 16:48:26'),(17,'Water, Sanitation and Hygiene','2010-04-14 16:48:35');
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `regionid` smallint(10) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (4,'afg','Afghanistan',6,'2010-04-14 17:33:59'),(5,'ala','Aland Islands (Finland)',7,'2010-04-14 17:33:59'),(6,'alb','Albania',7,'2010-04-14 17:33:59'),(7,'dza','Algeria',4,'2010-04-14 17:33:59'),(8,'asm','American Samoa',8,'2010-04-14 17:33:59'),(9,'and','Andorra',7,'2010-04-14 17:33:59'),(10,'ago','Angola',4,'2010-04-14 17:33:59'),(11,'aia','Anguilla',5,'2010-04-14 17:33:59'),(12,'atg','Antigua and Barbuda',5,'2010-04-14 17:33:59'),(13,'arg','Argentina',5,'2010-04-14 17:33:59'),(14,'arm','Armenia',6,'2010-04-14 17:33:59'),(15,'abw','Aruba (The Netherlands)',5,'2010-04-14 17:33:59'),(16,'aus','Australia',8,'2010-04-14 17:33:59'),(17,'aut','Austria',7,'2010-04-14 17:33:59'),(18,'aze','Azerbaijan',6,'2010-04-14 17:33:59'),(19,'azo','Azores Islands (Portugal)',7,'2010-04-14 17:33:59'),(20,'bhs','Bahamas (the)',5,'2010-04-14 17:33:59'),(21,'bhr','Bahrain',6,'2010-04-14 17:33:59'),(22,'bgd','Bangladesh',6,'2010-04-14 17:33:59'),(23,'brb','Barbados',5,'2010-04-14 17:33:59'),(24,'blr','Belarus',7,'2010-04-14 17:33:59'),(25,'bel','Belgium',7,'2010-04-14 17:33:59'),(26,'blz','Belize',5,'2010-04-14 17:33:59'),(27,'ben','Benin',4,'2010-04-14 17:33:59'),(28,'bmu','Bermuda',5,'2010-04-14 17:33:59'),(29,'btn','Bhutan',6,'2010-04-14 17:33:59'),(30,'bol','Bolivia',5,'2010-04-14 17:33:59'),(31,'bih','Bosnia and Herzegovina',7,'2010-04-14 17:33:59'),(32,'bwa','Botswana',4,'2010-04-14 17:33:59'),(33,'bra','Brazil',5,'2010-04-14 17:33:59'),(34,'vgb','British Virgin Islands',5,'2010-04-14 17:33:59'),(35,'brn','Brunei Darussalam',6,'2010-04-14 17:33:59'),(36,'bgr','Bulgaria',7,'2010-04-14 17:33:59'),(37,'bfa','Burkina Faso',4,'2010-04-14 17:33:59'),(38,'bdi','Burundi',4,'2010-04-14 17:33:59'),(39,'khm','Cambodia',6,'2010-04-14 17:33:59'),(40,'cmr','Cameroon',4,'2010-04-14 17:33:59'),(41,'can','Canada',5,'2010-04-14 17:33:59'),(42,'cai','Canary Islands (Spain)',4,'2010-04-14 17:33:59'),(43,'cpv','Cape Verde',4,'2010-04-14 17:33:59'),(44,'cym','Cayman Islands',5,'2010-04-14 17:33:59'),(45,'caf','Central African Republic (the)',4,'2010-04-14 17:33:59'),(46,'tcd','Chad',4,'2010-04-14 17:33:59'),(47,'chi','Channel Islands',7,'2010-04-14 17:33:59'),(48,'chl','Chile',5,'2010-04-14 17:33:59'),(49,'chn','China',6,'2010-04-14 17:33:59'),(50,'hkg','China - Hong Kong (Special Administrative Region)',6,'2010-04-14 17:33:59'),(51,'mac','China - Macau (Special Administrative Region)',6,'2010-04-14 17:33:59'),(52,'twn','China - Taiwan Province',6,'2010-04-14 17:33:59'),(53,'cxr','Christmas Island (Australia)',6,'2010-04-14 17:33:59'),(54,'cck','Cocos (Keeling) Islands (Australia)',6,'2010-04-14 17:33:59'),(55,'col','Colombia',5,'2010-04-14 17:33:59'),(56,'com','Comoros (the)',4,'2010-04-14 17:33:59'),(57,'cog','Congo (the)',4,'2010-04-14 17:33:59'),(58,'cok','Cook Islands',8,'2010-04-14 17:33:59'),(59,'cri','Costa Rica',5,'2010-04-14 17:33:59'),(60,'civ','CÃ´te d\'Ivoire',4,'2010-04-14 17:33:59'),(61,'hrv','Croatia',7,'2010-04-14 17:33:59'),(62,'cub','Cuba',5,'2010-04-14 17:33:59'),(63,'cyp','Cyprus',6,'2010-04-14 17:33:59'),(64,'cze','Czech Republic (the)',7,'2010-04-14 17:33:59'),(65,'prk','Democratic People\'s Republic of Korea (the)',6,'2010-04-14 17:33:59'),(66,'cod','Democratic Republic of the Congo (the)',4,'2010-04-14 17:33:59'),(67,'dnk','Denmark',7,'2010-04-14 17:33:59'),(68,'dji','Djibouti',4,'2010-04-14 17:33:59'),(69,'dma','Dominica',5,'2010-04-14 17:33:59'),(70,'dom','Dominican Republic (the)',5,'2010-04-14 17:33:59'),(71,'eai','Easter Island (Chile)',5,'2010-04-14 17:33:59'),(72,'ecu','Ecuador',5,'2010-04-14 17:33:59'),(73,'egy','Egypt',4,'2010-04-14 17:33:59'),(74,'slv','El Salvador',5,'2010-04-14 17:33:59'),(75,'gnq','Equatorial Guinea',4,'2010-04-14 17:33:59'),(76,'eri','Eritrea',4,'2010-04-14 17:33:59'),(77,'est','Estonia',7,'2010-04-14 17:33:59'),(78,'eth','Ethiopia',4,'2010-04-14 17:33:59'),(79,'flk','Falkland Islands (Malvinas)',5,'2010-04-14 17:33:59'),(80,'fro','Faroe Islands (Denmark)',7,'2010-04-14 17:33:59'),(81,'fji','Fiji',8,'2010-04-14 17:33:59'),(82,'fin','Finland',7,'2010-04-14 17:33:59'),(83,'fra','France',7,'2010-04-14 17:33:59'),(84,'guf','French Guiana (France)',5,'2010-04-14 17:33:59'),(85,'pyf','French Polynesia (France)',8,'2010-04-14 17:33:59'),(86,'atf','French Southern and Antarctic Territories (France)',6,'2010-04-14 17:33:59'),(87,'gab','Gabon',4,'2010-04-14 17:33:59'),(88,'gli','Galapagos Islands (Ecuador)',5,'2010-04-14 17:33:59'),(89,'gmb','Gambia (the)',4,'2010-04-14 17:33:59'),(90,'geo','Georgia',6,'2010-04-14 17:33:59'),(91,'deu','Germany',7,'2010-04-14 17:33:59'),(92,'gha','Ghana',4,'2010-04-14 17:33:59'),(93,'gib','Gibraltar',7,'2010-04-14 17:33:59'),(94,'grc','Greece',7,'2010-04-14 17:33:59'),(95,'grl','Greenland (Denmark)',5,'2010-04-14 17:33:59'),(96,'grd','Grenada',5,'2010-04-14 17:33:59'),(97,'glp','Guadeloupe (France)',5,'2010-04-14 17:33:59'),(98,'gum','Guam',8,'2010-04-14 17:33:59'),(99,'gtm','Guatemala',5,'2010-04-14 17:33:59'),(100,'gin','Guinea',4,'2010-04-14 17:33:59'),(101,'gnb','Guinea-Bissau',4,'2010-04-14 17:33:59'),(102,'guy','Guyana',5,'2010-04-14 17:33:59'),(103,'hti','Haiti',5,'2010-04-14 17:33:59'),(104,'hmd','Heard Island and McDonald Islands (Australia)',8,'2010-04-14 17:33:59'),(105,'vat','Holy See (the)',7,'2010-04-14 17:33:59'),(106,'hnd','Honduras',5,'2010-04-14 17:33:59'),(107,'hun','Hungary',7,'2010-04-14 17:33:59'),(108,'isl','Iceland',7,'2010-04-14 17:33:59'),(109,'ind','India',6,'2010-04-14 17:33:59'),(110,'idn','Indonesia',6,'2010-04-14 17:33:59'),(111,'irn','Iran (Islamic Republic of)',6,'2010-04-14 17:33:59'),(112,'irq','Iraq',6,'2010-04-14 17:33:59'),(113,'irl','Ireland',7,'2010-04-14 17:33:59'),(114,'ilm','Isle of Man (The United Kingdom of Great Britain and Northern Ireland)',7,'2010-04-14 17:33:59'),(115,'isr','Israel',6,'2010-04-14 17:33:59'),(116,'ita','Italy',7,'2010-04-14 17:33:59'),(117,'jam','Jamaica',5,'2010-04-14 17:33:59'),(118,'jpn','Japan',6,'2010-04-14 17:33:59'),(119,'jor','Jordan',6,'2010-04-14 17:33:59'),(120,'kaz','Kazakhstan',6,'2010-04-14 17:33:59'),(121,'ken','Kenya',4,'2010-04-14 17:33:59'),(122,'kir','Kiribati',8,'2010-04-14 17:33:59'),(123,'kwt','Kuwait',6,'2010-04-14 17:33:59'),(124,'kgz','Kyrgyzstan',6,'2010-04-14 17:33:59'),(125,'lao','Lao People\'s Democratic Republic (the)',6,'2010-04-14 17:33:59'),(126,'lva','Latvia',7,'2010-04-14 17:33:59'),(127,'lbn','Lebanon',6,'2010-04-14 17:33:59'),(128,'lso','Lesotho',4,'2010-04-14 17:33:59'),(129,'lbr','Liberia',4,'2010-04-14 17:33:59'),(130,'lby','Libyan Arab Jamahiriya (the)',4,'2010-04-14 17:33:59'),(131,'lie','Liechtenstein',7,'2010-04-14 17:33:59'),(132,'ltu','Lithuania',7,'2010-04-14 17:33:59'),(133,'lux','Luxembourg',7,'2010-04-14 17:33:59'),(134,'mdg','Madagascar',4,'2010-04-14 17:33:59'),(135,'mdr','Madeira (Portugal)',7,'2010-04-14 17:33:59'),(136,'mwi','Malawi',4,'2010-04-14 17:33:59'),(137,'mys','Malaysia',6,'2010-04-14 17:33:59'),(138,'mdv','Maldives',6,'2010-04-14 17:33:59'),(139,'mli','Mali',4,'2010-04-14 17:33:59'),(140,'mlt','Malta',7,'2010-04-14 17:33:59'),(141,'mhl','Marshall Islands (the)',8,'2010-04-14 17:33:59'),(142,'mtq','Martinique (France)',5,'2010-04-14 17:33:59'),(143,'mrt','Mauritania',4,'2010-04-14 17:33:59'),(144,'mus','Mauritius',4,'2010-04-14 17:33:59'),(145,'myt','Mayotte (France)',4,'2010-04-14 17:33:59'),(146,'mex','Mexico',5,'2010-04-14 17:33:59'),(147,'fsm','Micronesia (Federated States of)',8,'2010-04-14 17:33:59'),(148,'mda','Moldova',7,'2010-04-14 17:33:59'),(149,'mco','Monaco',7,'2010-04-14 17:33:59'),(150,'mng','Mongolia',6,'2010-04-14 17:33:59'),(151,'mne','Montenegro',7,'2010-04-14 17:33:59'),(152,'msr','Montserrat',5,'2010-04-14 17:33:59'),(153,'mar','Morocco',4,'2010-04-14 17:33:59'),(154,'moz','Mozambique',4,'2010-04-14 17:33:59'),(155,'mmr','Myanmar',6,'2010-04-14 17:33:59'),(156,'nam','Namibia',4,'2010-04-14 17:33:59'),(157,'nru','Nauru',8,'2010-04-14 17:33:59'),(158,'npl','Nepal',6,'2010-04-14 17:33:59'),(159,'nld','Netherlands (the)',7,'2010-04-14 17:33:59'),(160,'ant','Netherlands Antilles (The Netherlands)',5,'2010-04-14 17:33:59'),(161,'ncl','New Caledonia (France)',8,'2010-04-14 17:33:59'),(162,'nzl','New Zealand',8,'2010-04-14 17:33:59'),(163,'nic','Nicaragua',5,'2010-04-14 17:33:59'),(164,'ner','Niger (the)',4,'2010-04-14 17:33:59'),(165,'nga','Nigeria',4,'2010-04-14 17:33:59'),(166,'niu','Niue (New Zealand)',8,'2010-04-14 17:33:59'),(167,'nfk','Norfolk Island (Australia)',8,'2010-04-14 17:33:59'),(168,'mnp','Northern Mariana Islands (The United States of America)',8,'2010-04-14 17:33:59'),(169,'nor','Norway',7,'2010-04-14 17:33:59'),(170,'pse','occupied Palestinian territory',6,'2010-04-14 17:33:59'),(171,'omn','Oman',6,'2010-04-14 17:33:59'),(172,'pak','Pakistan',6,'2010-04-14 17:33:59'),(173,'plw','Palau',8,'2010-04-14 17:33:59'),(174,'pan','Panama',5,'2010-04-14 17:33:59'),(175,'png','Papua New Guinea',8,'2010-04-14 17:33:59'),(176,'pry','Paraguay',5,'2010-04-14 17:33:59'),(177,'per','Peru',5,'2010-04-14 17:33:59'),(178,'phl','Philippines (the)',6,'2010-04-14 17:33:59'),(179,'pcn','Pitcairn Island',8,'2010-04-14 17:33:59'),(180,'pol','Poland',7,'2010-04-14 17:33:59'),(181,'prt','Portugal',7,'2010-04-14 17:34:00'),(182,'pri','Puerto Rico (The United States of America)',5,'2010-04-14 17:34:00'),(183,'qat','Qatar',6,'2010-04-14 17:34:00'),(184,'kor','Republic of Korea (the)',6,'2010-04-14 17:34:00'),(185,'reu','RÃ©union (France)',4,'2010-04-14 17:34:00'),(186,'rou','Romania',7,'2010-04-14 17:34:00'),(187,'rus','Russian Federation (the)',7,'2010-04-14 17:34:00'),(188,'rwa','Rwanda',4,'2010-04-14 17:34:00'),(189,'shn','Saint Helena',4,'2010-04-14 17:34:00'),(190,'kna','Saint Kitts and Nevis',5,'2010-04-14 17:34:00'),(191,'lca','Saint Lucia',5,'2010-04-14 17:34:00'),(192,'spm','Saint Pierre and Miquelon (France)',5,'2010-04-14 17:34:00'),(193,'vct','Saint Vincent and the Grenadines',5,'2010-04-14 17:34:00'),(194,'wsm','Samoa',8,'2010-04-14 17:34:00'),(195,'smr','San Marino',7,'2010-04-14 17:34:00'),(196,'stp','Sao Tome and Principe',4,'2010-04-14 17:34:00'),(197,'sau','Saudi Arabia',6,'2010-04-14 17:34:00'),(198,'sen','Senegal',4,'2010-04-14 17:34:00'),(199,'srb','Serbia',7,'2010-04-14 17:34:00'),(200,'syc','Seychelles',4,'2010-04-14 17:34:00'),(201,'sle','Sierra Leone',4,'2010-04-14 17:34:00'),(202,'sgp','Singapore',6,'2010-04-14 17:34:00'),(203,'svk','Slovakia',7,'2010-04-14 17:34:00'),(204,'svn','Slovenia',7,'2010-04-14 17:34:00'),(205,'slb','Solomon Islands',8,'2010-04-14 17:34:00'),(206,'som','Somalia',4,'2010-04-14 17:34:00'),(207,'zaf','South Africa',4,'2010-04-14 17:34:00'),(208,'esp','Spain',7,'2010-04-14 17:34:00'),(209,'lka','Sri Lanka',6,'2010-04-14 17:34:00'),(210,'sdn','Sudan (the)',4,'2010-04-14 17:34:00'),(211,'sur','Suriname',5,'2010-04-14 17:34:00'),(212,'sjm','Svalbard and Jan Mayen Islands',7,'2010-04-14 17:34:00'),(213,'swz','Swaziland',4,'2010-04-14 17:34:00'),(214,'swe','Sweden',7,'2010-04-14 17:34:00'),(215,'che','Switzerland',7,'2010-04-14 17:34:00'),(216,'syr','Syrian Arab Republic (the)',6,'2010-04-14 17:34:00'),(217,'tjk','Tajikistan',6,'2010-04-14 17:34:00'),(218,'tha','Thailand',6,'2010-04-14 17:34:00'),(219,'mkd','the former Yugoslav Republic of Macedonia',7,'2010-04-14 17:34:00'),(220,'tls','Timor-Leste',6,'2010-04-14 17:34:00'),(221,'tgo','Togo',4,'2010-04-14 17:34:00'),(222,'tkl','Tokelau',8,'2010-04-14 17:34:00'),(223,'ton','Tonga',8,'2010-04-14 17:34:00'),(224,'tto','Trinidad and Tobago',5,'2010-04-14 17:34:00'),(225,'tun','Tunisia',4,'2010-04-14 17:34:00'),(226,'tur','Turkey',6,'2010-04-14 17:34:00'),(227,'tkm','Turkmenistan',6,'2010-04-14 17:34:00'),(228,'tca','Turks and Caicos Islands',5,'2010-04-14 17:34:00'),(229,'tuv','Tuvalu',8,'2010-04-14 17:34:00'),(230,'uga','Uganda',4,'2010-04-14 17:34:00'),(231,'ukr','Ukraine',7,'2010-04-14 17:34:00'),(232,'are','United Arab Emirates (the)',6,'2010-04-14 17:34:00'),(233,'gbr','United Kingdom of Great Britain and Northern Ireland (the)',7,'2010-04-14 17:34:00'),(234,'tza','United Republic of Tanzania (the)',4,'2010-04-14 17:34:00'),(235,'usa','United States of America (the)',5,'2010-04-14 17:34:00'),(236,'vir','United States Virgin Islands',5,'2010-04-14 17:34:00'),(237,'ury','Uruguay',5,'2010-04-14 17:34:00'),(238,'uzb','Uzbekistan',6,'2010-04-14 17:34:00'),(239,'vut','Vanuatu',8,'2010-04-14 17:34:00'),(240,'ven','Venezuela (Bolivarian Republic of)',5,'2010-04-14 17:34:00'),(241,'vnm','Viet Nam',6,'2010-04-14 17:34:00'),(242,'wlf','Wallis and Futuna (France)',8,'2010-04-14 17:34:00'),(243,'esh','Western Sahara',4,'2010-04-14 17:34:00'),(244,'yem','Yemen',6,'2010-04-14 17:34:00'),(245,'zmb','Zambia',4,'2010-04-14 17:34:00'),(246,'zwe','Zimbabwe',4,'2010-04-14 17:34:00');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacategory`
--

DROP TABLE IF EXISTS `datacategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacategory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacategory`
--

LOCK TABLES `datacategory` WRITE;
/*!40000 ALTER TABLE `datacategory` DISABLE KEYS */;
INSERT INTO `datacategory` VALUES (4,'Biota','2010-04-19 20:31:01'),(5,'Boundaries','2010-04-19 20:31:10'),(6,'Climate','2010-04-19 20:31:16'),(7,'Economy','2010-04-19 20:31:23'),(8,'Elevation','2010-04-19 20:31:29'),(9,'Environment','2010-04-19 20:31:35'),(10,'Farming','2010-04-19 20:31:42'),(11,'Funding','2010-04-19 20:31:54'),(12,'Geoscientific','2010-04-19 20:32:02'),(13,'Health','2010-04-19 20:32:09'),(14,'Incidents','2010-04-19 20:32:15'),(15,'Intelligence','2010-04-19 20:32:20'),(16,'LandCover','2010-04-19 20:32:30'),(17,'LandUse','2010-04-19 20:32:34'),(18,'Location','2010-04-19 20:32:40'),(19,'Oceans','2010-04-19 20:32:46'),(20,'Risk','2010-04-19 20:32:49'),(21,'Society','2010-04-19 20:32:54'),(22,'Structure','2010-04-19 20:33:05'),(23,'Transportation','2010-04-19 20:33:12'),(24,'Utilities','2010-04-19 20:33:19'),(25,'Waters','2010-04-19 20:33:24');
/*!40000 ALTER TABLE `datacategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataformat`
--

DROP TABLE IF EXISTS `dataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataformat` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataformat`
--

LOCK TABLES `dataformat` WRITE;
/*!40000 ALTER TABLE `dataformat` DISABLE KEYS */;
INSERT INTO `dataformat` VALUES (4,'document','2010-04-14 16:51:02'),(5,'geodatabase','2010-04-14 16:51:09'),(6,'image file','2010-04-14 16:51:16'),(7,'interactive map','2010-04-14 16:51:22'),(8,'kml/kmz','2010-04-14 16:51:30'),(9,'online database','2010-04-14 16:51:36'),(10,'shapefile','2010-04-14 16:51:43'),(11,'spreadsheet','2010-04-14 16:51:50'),(12,'txt file','2010-04-14 16:51:57'),(13,'web service','2010-04-14 16:52:02');
/*!40000 ALTER TABLE `dataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataindicator`
--

DROP TABLE IF EXISTS `dataindicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataindicator` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataindicator`
--

LOCK TABLES `dataindicator` WRITE;
/*!40000 ALTER TABLE `dataindicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataindicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatype` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype`
--

LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES (4,'Baseline','2010-04-14 16:45:59'),(5,'Natural Disaster','2010-04-14 16:46:13'),(6,'Complex Emergency','2010-04-14 16:46:21');
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `dataName` varchar(255) DEFAULT NULL,
  `dataAccess` text,
  `accessid` smallint(10) DEFAULT NULL,
  `dataTypeid` smallint(10) DEFAULT NULL,
  `dataCategoryid` smallint(10) DEFAULT NULL,
  `dataIndicatorid` smallint(10) DEFAULT NULL,
  `clusterid` smallint(10) DEFAULT NULL,
  `regionid` smallint(10) DEFAULT NULL,
  `countryid` smallint(10) DEFAULT NULL,
  `sourceid` smallint(10) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `pointOfContact` text,
  `processingInstructions` text,
  `notes` text,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dataFormatid` smallint(10) DEFAULT NULL,
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (4,'Active Hazards','http://www.pdc.org',4,5,0,0,0,9,0,64,'','Todd Bosse\nSr. Geospatial Information Analyst\nPacific Disaster Center\n1305 N.Holopono Street\nKihei, HI USA 96753\n+1.808.891.7943\ntbosse@pdc.org\n\nChris Chiesa\nChief Information Officer\n+1.808.891.0525 ext. 953\n+1.808.283.8679\ninfo@pdc.org','1) Open ArcCatalog and under \'GIS Servers\' double click on \'Add ArcIMS Server\'\n2) Type in the URL www.pdc.org\n3) Select \'Get List\'\n4) Chose the service you want\n5) Preview in ArcCatalog or drag to ArcMap\nNote: With the WFS, you can get the attribute information associated with the disaster:-)','Email from Todd on 22 Oct 2009 - Thanks for your note, I think we have just the thing to help you. As part of its Global Hazards Information Network (GHIN, http://ghin.pdc.org), Pacific Disaster Center (PDC) publishes various mapservices for public consumption, one of them being active hazards. GHIN is a metadata explorer containing geospatial data and services, of both PDC\'s data holdings and those and its partners. It has been designed to facilitate data sharing relationships/partnerships around the globe (focused towards hazards and related basedata). I\'ve recently met with your colleagues in Bangkok and happy to report that UN OCHA ROAP is now a GHIN partner. In the coming months we will be working with OCHA ROAP to catalog and ingest metadata on their data holdings into GHIN so that it can be found by GHIN users. I should add that GHIN partners retain full control over the release of their data, which is specified in the metadata.  To find services in GHIN, choose \'Live Data and Maps\' as your Content Type and click \'Start Search\'. You will be presented with a list of all the services that we are currently publishing. Services are available as ArcIMS Image, WMS, and WFS. The metadata record for each service has connection information, as does the Geospatial Information Services link on GHIN.  The service you are looking for is called \'PDC Active Hazards\'. You can simply add a connection to http://www.pdc.org in the GIS Servers section of ArcCatalog. Then select the service and drag into ArcMap. The Active Hazards service has near-real time feeds for tropical storms, earthquakes, volcanoes, tsunami\'s, and more. Please see the metadata for that service for data sources and data refresh rates.','2010-05-15 13:36:48',13,1),(5,'Afghanistan Datasets','http://www.aims.org.af/sroot.aspx?seckeyo=44&seckeyz=37',4,4,0,0,0,6,6,6,'1:500,000','Ali.Wali@aims.org.af','','','2010-05-15 13:36:48',10,1),(6,'Africa Data Dissemination Service','http://earlywarning.cr.usgs.gov/adds/index.php',4,4,0,0,0,4,0,95,'','','','','2010-05-15 13:36:48',0,1),(7,'Aid Workers Fatalities Data','http://www.patronusanalytical.com/aid%20worker%20fatalities/Fatal%20Incidents%20Aid%20Workers%20DB/Fatal%20Incidents%20data.html',4,6,0,0,0,9,0,63,'','','','','2010-05-15 13:36:48',11,1),(8,'Armed Conflict Location and Event Data','http://www.acleddata.com/',4,6,0,0,0,9,0,4,'','Dr. Clionadh Raleigh\nclionadh@gmail.com','','','2010-05-15 13:36:48',0,1),(9,'ASTER DEM','http://www.gdem.aster.ersdac.or.jp/',4,4,0,0,0,9,0,50,'30-metre','','http://www.echo.nasa.gov/reference/astergdem_tutorial.htm','','2010-05-15 13:36:48',6,1),(10,'Average Precipitation (Annual and Monthly)','http://www.worldclim.org/download',4,4,0,0,0,9,0,97,'1-kilometre','','Click on Current Conditions.  Then select \'Precipitation\' under ESRI Grids - 30 arc-seconds.  This will give you the monthly precipitation averages.  For the annual data click on Bioclim and use Bio_12 \'Annual Percipitation\'','This map shows the average amount of precipitation falling in a year, based on approximately 50 years of data. The figures shown do not therefore represent the amount of precipitation that may occur in any given year.','2010-05-15 13:36:48',10,1),(11,'CE-DAT Complex Emergency Database','http://www.cedat.be/',4,6,0,0,0,9,0,14,'','','','','2010-05-15 13:36:48',0,1),(12,'Climate Change Index','http://www.igbp.net/page.php?pid=504',4,5,0,0,0,9,0,32,'','','','','2010-05-15 13:36:48',0,1),(13,'CMEInfo','http://www.childmortality.org/cmeMain.html',4,0,0,0,0,9,0,84,'','','','','2010-05-15 13:36:48',0,1),(14,'CountrySTAT','http://www.countrystat.org',4,4,0,0,0,4,0,24,'','','','','2010-05-15 13:36:48',0,1),(15,'Daily Rainfall Estimates (RFE)','ftp://ftp.cpc.ncep.noaa.gov/fews/GIS/',4,4,0,0,0,4,0,56,'0.25-degree','Angel Bennet\nMeteorologist\nWyle Information Systsms, LLC\nNOAA-Climate Prediction Center\nProjects: FEWS NET / MFEWS / AFN\nangel.m.bennett@noaa.gov\n+1 301 763 8000 ext. 7584','','See example of products derived from these data here: http://www.cpc.noaa.gov/products/fews/rfe.shtml.  This will help in classification.','2010-05-15 13:36:48',6,1),(16,'DevInfo','http://www.devinfo.org',4,4,0,0,0,9,0,84,'','','','','2010-05-15 13:36:48',0,1),(17,'Digital Chart of the World','http://www.maproom.psu.edu/dcw/',4,4,0,0,0,9,0,54,'','','','','2010-05-15 13:36:48',10,1),(18,'Disaster / Incident Monitoring','http://210.185.184.53/ndccWeb/index.php?option=com_frontpage&Itemid=1',4,6,0,0,0,6,178,52,'','','','','2010-05-15 13:36:48',0,1),(19,'Displacement','via email',0,6,0,0,0,4,206,83,'','Roberta Russo\n+254-20-4222200 Landline\n+254-73-3121136 Mobile\nrusso@unhcr.org','','ReliefWeb is on a mailing lists which receives updates on displacement numbers in email, table or map format.  Need to follow up with UNHCR to see if there is a better way to regularly receive these figures.','2010-05-15 13:36:48',0,1),(20,'Earthquake Risk','http://www.pdc.org/geodata/world/earthquake_zones.zip',4,5,0,0,0,9,0,80,'','United Nations Environment Programme Global Resource Information Database (UNEP/GRID)\nRon Witt\n11 chemin des AnÃ©mones, Chatelaine, Geneva, Switzerland\n+41229178295, +41 229178029 (fax)\nron.witt@grid.unep.ch','','This is available as a WFS from PDC as well.  (Risks and Vulnerabilities)','2010-05-15 13:36:48',10,1),(21,'Earthquakes','http://neic.usgs.gov/neis/epic/epic.html',4,5,0,0,0,9,0,96,'','','','','2010-05-15 13:36:48',11,1),(22,'EM-DAT Emergency Events Database','http://www.emdat.be/',4,5,0,0,0,9,0,14,'','','','EM-DAT contains essential core data on the occurrence and effects of over 16,000 mass disasters in the world from 1900 to present. The database is compiled from various sources, including UN agencies, non-governmental organisations, insurance companies, research institutes and press agencies.','2010-05-15 13:36:48',0,1),(23,'EmergencyInfo','http://www.devinfo.info/emergencyinfo/',4,4,0,0,0,9,0,84,'','','','','2010-05-15 13:36:48',0,1),(24,'Financial Tracking Service','http://ocha.unog.ch/fts/pageloader.aspx',4,4,0,0,0,9,0,91,'','','','','2010-05-15 13:36:48',0,1),(25,'Flood Inundation Polygons','ftp://129.170.22.44/Users/flood/Public/ShpFiles',4,5,0,0,0,9,0,0,'250-metre','Robert Brakenridge\nG.Robert.Brakenridge@dartmouth.edu','','Data are freely available upon request to Robert Brakenridge.  Use MODIS Rapid Response Subset data to identify water pixels on RGB (bands 7-2-1) geotiff files (http://rapidfire.sci.gsfc.nasa.gov/subsets/).  A GIS vector is then fit around the classified pixels.  The data are organized by MODIS Rapid Response Subset name, by date, and by Terra (\"t\") or Aqua (\"a\") source.\nIs is 250 m, with the inundation limits (what boundaries) fixed geographically to better than +/50 m.  Images appear on the rapid response nasa site in near real time..at most some hours after acquisition. Our processing only takes perhaps an hour. For each area on Earth there are two passes..am and pm.\n\nHow fast maps and GIS data appear afterwards depends on our focus. If there is active flooding underway..and we know there is immediate need, then we can ourselves process and update daily...and those data may be less than 24 hours old in some cases.\nCurrently publishing GIS files with date  names...but that, over the course of  a year for a particular subset, we intend to then merge all files into an annual maximum water layer and publish that accumulating file...as well as a variety of standard reference water files to compare the new water to. These will be at same location..I am working on a read me file to go there as well,','2010-05-15 13:36:48',10,1),(26,'Food Security Analysis Unit Datasets','http://www.fsausomali.org/index.php@id=25.html',4,0,0,0,0,4,0,26,'1:1M','','','','2010-05-15 13:36:48',4,1),(27,'FuzzyG Gazatteer','http://dma.jrc.it/services/fuzzyg/default.asp',4,4,0,0,0,9,0,43,'','','','','2010-05-15 13:36:48',9,1),(28,'GAUL','http://www.fao.org/geonetwork/srv/cn/metadata.show?id=12691',6,4,0,0,0,9,0,24,'1:1M','','','','2010-05-15 13:36:48',10,1),(29,'Geography Statistics','http://www.nationmaster.com/graph/geo_sur_are_sq_km-geography-surface-area-sq-km',4,4,0,0,0,9,0,51,'','','','','2010-05-15 13:36:48',0,1),(30,'Geonames Web Feature Service','http://geonames.nga.mil/nameswfs/request.aspx?REQUEST=GetCapabilities&SERVICE=wfs&VERSION=1.1.0',4,4,0,0,0,9,0,54,'','http://earth-info.nga.mil/gns/html/index.html','To add the WFS into ArcGIS:\n1) Open ArcCatalog\n2) Double Click on Interoperability Connections\n3) Type in the URLhttp://portal.nga.mil/names/request.asp?\n4) Either view in ArcCatalog or drag into ArcMap for viewing\n\nZoom must be ATLEAST 1:2,000,000, and in some cases as far as 1:275,000 in order to view the data.','I cannot get the full WFS to work (i.e. access the database behind the dataset).  I emailed NGA but no response as of 17 July.','2010-05-15 13:36:48',13,1),(31,'Geonames Web Map Service','http://geonames.nga.mil/names/request.asp?',4,4,0,0,0,9,0,54,'','http://earth-info.nga.mil/gns/html/index.html','To add the WMS into ArcGIS:\n1) Open ArcCatalog\n2) Double Click on Add WMS Server\n3) Type in the URL http://portal.nga.mil/names/request.asp?\n4) Either view in ArcCatalog or drag into ArcMap for viewing\n\nZoom must be ATLEAST 1:2,000,000, and in some cases as far as 1:275,000 in order to view the data.','','2010-05-15 13:36:48',13,1),(32,'Geographic Information Support Team Data Repository','https://gist.itos.uga.edu',5,4,0,0,0,9,0,41,'','','','','2010-05-15 13:36:48',10,1),(33,'Global Discovery','http://www.europa.uk.com/gd.php',6,4,0,0,0,9,0,21,'1:1M','','','','2010-05-15 13:36:48',10,1),(34,'Global Impact and Vulnerability Alert System (GIVAS)','http://www.voicesofthevulnerable.net/',0,0,0,0,0,9,0,77,'','','','Work-in-progress.  The GIVAS is intended to help fill this gap by linking together existing early warning systems and making better use of new innovative ways of collecting real time data. The system is both intended to show impact (i.e. what\'s happening right now) and raise alarm bells as to potentially dramatically worsening vulnerabilities (i.e. what could happen if we don\'t act). It\'s main purpose is to ensure that we have the information and analysis needed to protect our most vulnerable populations against crisis. It is a tool to ensure that the Millennium Development Goals have a chance. ','2010-05-15 13:36:48',0,1),(35,'Global Map','http://www.iscgm.org/',4,4,0,0,0,9,0,38,'1:1M','','','','2010-05-15 13:36:48',10,1),(36,'Global Risk Data Platform','http://preview.grid.unep.ch/index3.php?preview=map',4,0,0,0,0,9,0,80,'','','','','2010-05-15 13:36:48',0,1),(37,'Ground impacts of weather in realation to food insecurity','ftp://ftp.cpc.ncep.noaa.gov/fews/weather_hazards/',4,5,0,0,0,9,0,56,'','Angel Bennet\nMeteorologist\nWyle Information Systsms, LLC\nNOAA-Climate Prediction Center\nProjects: FEWS NET / MFEWS / AFN\nangel.m.bennett@noaa.gov\n+1 301 763 8000 ext. 7584','','Data Categorized as follows:\n1) Favorable\n2) Somewhat Favorable\n3) Flooding\n4) Short-Term Dryness\n5) Drought\n6) Severe Drought\n7) Humanitarian Concern\n8) Extreme Event\n9) Improving Short-Term Dryness\n10) Improving Drought\n11) Improving Severe Drought\n12) Heavy Rain\n13) Heavy Snow\n14) Blowing Dust\n15) Extreme Cold\n16) Extreme Heat','2010-05-15 13:36:48',10,1),(38,'GTOPO30','http://eros.usgs.gov/#/Find_Data/Products_and_Data_Available/gtopo30_info',4,4,0,0,0,9,0,96,'1-kilometre','','','','2010-05-15 13:36:48',6,1),(39,'Haiti Baseline Datasets','ftp://157.150.195.135/Data/',4,4,0,0,0,5,103,46,'1:1M','','','','2010-05-15 13:36:48',5,1),(40,'Haiti GIS Datasets','http://oneresponse.info/Disasters/Haiti/MapCenter/Pages/GIS.aspx',4,4,0,0,0,5,103,0,'','','','','2010-05-15 13:36:48',5,1),(41,'Hazard Risk','http://www.preventionweb.net/english/maps/index.php',4,5,0,0,0,9,0,77,'','Name: Pascal Peduzzi\nOrganisation: UNEP/DEWA/GRID-Europe\nPhone: (+41 22) 917 82 37 & Fax: +41 22 917 8029\nURL: http://www.grid.unep.ch\nEmail: Pascal.Peduzzi@grid.unep.ch\nRole: Head of Early Warning Unit','Click on Data Download.  Select a Hazard Type.  Select on the specific data set.  If that dataset is available for download a box will appear on the right.  Click on Download and follow instructions to download a raster dataset that can easily be loaded into ArcGIS. Also available on the site is the metadata and a preview. ','','2010-05-15 13:36:48',6,1),(42,'Human Development Reports Database','http://hdr.undp.org/en/statistics/data/',4,4,0,0,0,9,0,0,'','','','','2010-05-15 13:36:48',0,1),(43,'IDP Global Statistics','http://www.internal-displacement.org/8025708F004CE90B/%28httpPages%29/22FB1D4E2B196DAA802570BB005E787C?OpenDocument&count=1000',4,6,0,0,0,9,0,4,'','','','','2010-05-15 13:36:48',7,1),(44,'Indonesia Disaster Data and Information','http://dibi.bnpb.go.id/DesInventar/dashboard.jsp?countrycode=id&continue=y&lang=EN',4,5,0,0,0,6,110,29,'','','','','2010-05-15 13:36:48',9,1),(45,'LandScan','http://www.ornl.gov/sci/landscan/',6,4,0,0,0,9,0,0,'1-kilometre','','http://www.ornl.gov/sci/landscan/landscanCommon/landscan_faq.html','','2010-05-15 13:36:48',6,1),(46,'NASA Earth Observatory Global Maps','http://earthobservatory.nasa.gov/GlobalMaps/',4,4,0,0,0,9,0,50,'','','','','2010-05-15 13:36:48',6,1),(47,'National Basic Food Prices','http://www.fao.org/giews/pricetool/',4,4,0,0,0,9,0,24,'','','','','2010-05-15 13:36:48',0,1),(48,'Neo Web Map Service','http://neo.sci.gsfc.nasa.gov/View.html?page=AboutWMS',4,4,0,0,0,9,0,50,'','','','','2010-05-15 13:36:48',13,1),(49,'Netpas','http://www.netpas.net',4,4,0,0,0,9,0,0,'','','','','2010-05-15 13:36:48',9,1),(50,'Open Street Map','http://www.openstreetmap.org/',4,4,0,0,0,9,0,0,'','Mikel Maron\nmikel_maron@yahoo.com','','','2010-05-15 13:36:48',10,1),(51,'Rainfall Averages and Anomalies','http://mirador.gsfc.nasa.gov/cgi-bin/mirador/presentNavigation.pl?tree=project&dataset=3B43:%20Monthly%200.25%20x%200.25%20degree%20merged%20TRMM%20and%20other%20sources%20estimates&project=TRMM&dataGroup=Gridded&version=006',4,4,0,0,0,9,0,50,'0.25-degree','GES DISC User Services\nhelp-disc@listserve.gsfc.nasa.gov\nPhone: +1 301 614 5224\nURL: http://disc.sci.gsfc.nasa.gov\nFAQ: http://disc.sci.gsfc.nasa.gov/faq/faq_contents.shtml','1) Select the month and year you want from the following web page (http://mirador.gsfc.nasa.gov/cgi-bin/mirador/presentNavigation.pl?tree=project&dataset=3B43:%20Monthly%200.25%20x%200.25%20degree%20merged%20TRMM%20and%20other%20sources%20estimates&project=TRMM&dataGroup=Gridded&version=006)\n2) Select NetCDF as the download format\n3) In ArcMap, open ArcToolbox and navigate to \'Multidimension Tools\'\n4) Double click on \'Make NetCDF Raster Layer\' and following the instructions outlined here http://webhelp.esri.com/arcgisdesktop/9.2/index.cfm?TopicName=Representing_netCDF_data_as_a_raster_layer\n- The raster will appear automatically as a layer in the layer panel, however it is a \'in-memory\' raster and cannot be seen in the ArcCatalog tree therefore it needs to be exported to a raster\n5) Right click on the layer in ArcMap and select Data > Export Data and export the data as an img file ','There is also a WMS available (see below)','2010-05-15 13:36:48',6,1),(52,'Rainfall Averages and Anomalies','http://disc1.sci.gsfc.nasa.gov/daac-bin/wms_trmm?',4,4,0,0,0,9,0,50,'0.25-degree','GES DISC User Services\nhelp-disc@listserve.gsfc.nasa.gov\nPhone: +1 301 614 5224\nURL: http://disc.sci.gsfc.nasa.gov\nFAQ: http://disc.sci.gsfc.nasa.gov/faq/faq_contents.shtml','Open Arc Catalog\nClick on GIS Servers - Add WMS Server\nA window appears. Enter:  http://disc1.sci.gsfc.nasa.gov/daac-bin/wms_trmm?\nChoose version  1.1.1 Then hit Get layers.\nYou will see some data layers.  Click OK\nNow open ArcMap.  Add data.  \nGoto GIS Servers - OGC WMS Server for TRMM Level....\nDouble click on the WMS Server again, then double click again.\nNow you should see a bunch of layers.  These can be added to your map.','Historical data can be accessed as described above in row 4.','2010-05-15 13:36:48',13,1),(53,'Second Administrative Level Boundaries (SALB)','http://www.unsalb.org/',4,4,0,0,0,9,0,100,'1:1M','salb@un.org','','','2010-05-15 13:36:48',10,1),(54,'Satellite imagery of disasters','http://www.disasterscharter.org/home',4,5,0,0,0,9,0,0,'','','','','2010-05-15 13:36:48',6,1),(55,'Seasonal Precipitation Forecast','http://portal.iri.columbia.edu/portal/server.pt     and follow directions under column N.',4,4,0,0,0,9,0,39,'0.25-degree','Anthony Barnston\nLead Forecaster\nClimate and ENSO Forecasting, Outreach, Training\n111 Monell\n61 Route 9W\nPalisades, New York 10964\nPhone: 845 680 4447\nFax: 845 680 4864\ntonyb@iri.columbia.edu','First, go to the IRI\'s home page. \nOn the right-center part of the page, under Quick Links, you will see that one of the options is Data Library. Click on it. \nOn the left side of the Data Library entry page, on the blue vertical bar on the left side, click where it says \"by source\". \nScroll down to \"39\", and click on it. \nClick on Forecast Division.  Click on Seasonal Forecast.  Click on precipitation (if that is what you want).  Click on tercile probability. \nClick where it says Data Selection (toward the upper right side of page). \n    In the panel where it says \"Setting Ranges\", change the text to what  you want. If you want the Jan-Feb-Mar forecast for Dec 2009, then you put the following:\nForecast Lead TIme in Months 1. to 1. \nMonth Forecast Issued: Dec 2009 to Dec 2009\nClick on \"restrict ranges\" after you have specified the subset that you want \nThen click on \"stop selecting\", at the bottom of the panel just above the panel you have just been working. \nYou should be taken back to the page you saw previously. Now you are ready to download the data file. Click on \"Data Files\" in the upper right. \nNow you get a large range of options of data format for the data to be downloaded. \nGoto: GIS-Compatible Formats - 2-Dimensional Table\nDownload Below_Normal and Above_Normal files.\nAdd .txt extension to files in Windows Explorer. \nGo to ArcTools. Coversion Tools - To Raster - ASCII to Raster.  Input txt file as the Input raster and generate the raster\nGoto ArcToolbox - Data Management Tools - Projections and Transformations - Define Projection - I recommend WGS84 Lat/Lon\nBoth files should be in your ArcGIS.  Open Spatial Analyst tool bar.  \nGoto Reclassify.  Change the values for Above Normal and change all values to negative. (So if its 10 change it to -10)\nGo to Cell Statistics.  Add Below Normal, and the Reclass of Above Normal. Overlay statistic: Sum\nA file Sum is opened. Export the data to an ArcGRID (or whatever).  ','To see IRI\'s online maps of the latest forecast data you can see: http://portal.iri.columbia.edu/portal/server.pt?open=512&objID=944&PageID=7868&mode=2','2010-05-15 13:36:48',12,1),(56,'Sistema de Alerta Temprana para Centroamerica','http://www.satcaweb.org/',4,5,0,0,0,5,0,9,'','','','','2010-05-15 13:36:48',11,1),(57,'Sphere Project - Minimum standards in disaster response','http://www.sphereproject.org/',4,0,0,0,0,9,0,68,'','','','','2010-05-15 13:36:48',0,1),(58,'Storm Intensity Zones','http://www.pdc.org/geodata/world/stormzones.zip',4,5,0,0,0,9,0,48,'','U.S. Geological Survey, Crowding the Rim GIS Development Team, 345 Middlefield Road, MS 975, Menlo Park, CA., 94025, www.crowdingtherim.org\nAlso: Munich Reinsurance Company (MunichRe), Geoscience Research Group (R&D/Geo), 107 Koeniginstrasse, Munich, Germany, D-80791','','This is available as a WFS from PDC as well.  (Risks and Vulnerabilities)','2010-05-15 13:36:48',10,1),(59,'Storm Tracks','http://weather.unisys.com/hurricane/index.html',4,5,0,0,0,9,0,85,'','For questions and information on this server, NOAAPORT and WXP, contact Dan Vietor at devo@ks.unisys.com','Data available online in txt format.\nCraig Williams downloaded all the storm data and used a plug in for MapInfo to create a shapefile.  This is available from ROAP','This is available as a WFS from PDC as well. (Historical Hazards)','2010-05-15 13:36:48',12,1),(60,'The World Bank Data Finder','http://datafinder.worldbank.org/',4,4,0,0,0,9,0,99,'','','','','2010-05-15 13:36:48',9,1),(61,'Uganda shapefiles','http://www.ugandaclusters.ug/geo-im.htm',4,4,0,0,0,4,230,76,'','','','','2010-05-15 13:36:48',10,1),(62,'UNEP Geo Data Portal ','http://geodata.grid.unep.ch/',4,4,0,0,0,9,0,80,'','','','','2010-05-15 13:36:48',9,1),(63,'UNHCR Statistical Online Population Database','http://apps.who.int/globalatlas/dataQuery/default.asp',4,6,0,0,0,9,0,83,'','','','','2010-05-15 13:36:48',9,1),(64,'Volcanoes','http://www.volcano.si.edu/world/',4,4,0,0,0,9,0,73,'','','Click on \"Excel\" next to where it says \"Summary List\" This will open a list of volcanoes, by type, with Lat/Lon coordinates. ','This is available as a WFS from PDC as well. (Historical Hazards)','2010-05-15 13:36:48',11,1),(65,'WHO Statistical Information System Database','http://apps.who.int/whosis/data/Search.jsp',4,4,0,0,0,9,0,100,'','','','','2010-05-15 13:36:48',9,1),(66,'World Aeronautical Database','http://worldaerodata.com/',4,4,0,0,0,9,0,54,'','','','','2010-05-15 13:36:48',9,1),(67,'World Population Prospects','http://esa.un.org/unpp/index.asp',4,4,0,0,0,9,0,0,'','','','','2010-05-15 13:36:48',9,1),(68,'World Urbanization Prospects','http://esa.un.org/unup/',4,4,0,0,0,9,0,0,'','','','','2010-05-15 13:36:48',9,1),(69,'Vector Map (VMAP)','',0,4,0,0,0,9,0,54,'','','','','2010-05-15 13:36:48',0,1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (4,'Africa','2010-04-14 16:49:35'),(5,'Americas','2010-04-14 16:49:40'),(6,'Asia','2010-04-14 16:49:44'),(7,'Europe','2010-04-14 16:49:48'),(8,'Oceania','2010-04-14 16:49:56'),(9,'World','2010-04-14 16:50:01');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Academic','2010-04-14 17:09:49'),(2,'Commercial','2010-04-14 17:10:00'),(3,'Government','2010-04-14 17:10:07'),(4,'NGO','2010-04-14 17:10:22'),(5,'News','2010-04-14 17:10:24'),(6,'UN and International','2010-04-14 17:10:37'),(7,'Other','2010-04-14 17:10:48');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `shortName` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `areaOfInterest` varchar(3) DEFAULT NULL,
  `sectorid` smallint(6) DEFAULT NULL,
  `website` text,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (4,'ACLED','Armed Conflict Location and Events Database','wrl',1,'http://www.acleddata.com/','2010-04-14 17:19:42'),(5,'AGRC','Agrhymet Regional Centre','ner',6,'','2010-04-14 17:19:42'),(6,'AIMS','Afghanistan Information Management Services','afg',3,'','2010-04-14 17:19:42'),(7,'Bartholomew','Bartholomew','wrl',2,'','2010-04-14 17:19:42'),(8,'CENACARTA','Centro Nacional de Cartografia e TeledeccÃ£o','moz',3,'http://www.cenacarta.com/','2010-04-14 17:19:42'),(9,'CEPREDENAC','Centro de Coordinacion para la Prevencion de los Desastres Naturales en America Central','ama',3,'http://www.sica.int/cepredenac/','2010-04-14 17:19:42'),(10,'CIESIN','Center for International Earth Science Information Network','wrl',1,'http://www.ciesin.org','2010-04-14 17:19:42'),(11,'CGIAR-CSI','Consultative Group for International Agriculture Research - Consortium for Spatial Information','wrl',1,'http://www.cgiar.org/','2010-04-14 17:19:42'),(12,'CNIDAH','Comissao Nacional Intersectorial de Desminagem e Assistencia Humanitaria','ago',3,'','2010-04-14 17:19:42'),(13,'CONRED','Coordinadora Nacional Para La ReducciÃ³n de Desastres','gtm',3,'http://www.conred.org/principal.php','2010-04-14 17:19:42'),(14,'CRED','Centre for Research on the Epidemiology of Disasters','wrl',1,'http://www.cred.be','2010-04-14 17:19:42'),(15,'DANE','Departamento Administrativo Nacional de EstadÃ­stica','col',3,'','2010-04-14 17:19:42'),(16,'DCW','Digital Chart of the World','wrl',3,'','2010-04-14 17:19:42'),(17,'DEPHA','Data Exchange Platform for the Horn of Africa','afr',6,'','2010-04-14 17:19:42'),(18,'DFO','Dartmouth Flood Observatory','wrl',1,'http://www.dartmouth.edu/~floods/','2010-04-14 17:19:42'),(19,'DigitalGlobe','DigitalGlobe','wrl',2,'','2010-04-14 17:19:42'),(20,'ESRI','Environmental Systems Research Institute','wrl',2,'','2010-04-14 17:19:42'),(21,'Europa Technologies','Europa Technologies','wrl',2,'','2010-04-14 17:19:42'),(22,'EUSC','European Union Satellite Centre','wrl',3,'','2010-04-14 17:19:42'),(23,'Falling Rain','Falling Rain','wrl',7,'http://www.fallingrain.com/world','2010-04-14 17:19:42'),(24,'FAO','Food and Agriculture Organization','wrl',6,'','2010-04-14 17:19:42'),(25,'FEWS','Famine Early Warning System','wrl',3,'','2010-04-14 17:19:42'),(26,'FSAU','Food Security Analysis Unit','wrl',6,'','2010-04-14 17:19:42'),(27,'GTZ','Deutsche Gesellschaft fÃ¼r Technische Zusammenarbeit GmbH','wrl',2,'','2010-04-14 17:19:42'),(28,'HDPT CAR','Humanitarian and Development Partnership Team Central African Republic','car',7,'http://hdptcar.net/','2010-04-14 17:19:42'),(29,'Indonesia NDMA','Indonesia National Disaster Management Agency','idn',3,'http://dibi.bnpb.go.id','2010-04-14 17:19:42'),(30,'IGAC','Instituto GeogrÃ¡fico AgustÃ­n Codazzi','col',3,'http://www.igac.gov.co','2010-04-14 17:19:42'),(31,'International Charter','International Charter for Space and Major Disasters','wrl',7,'http://www.disastercharter.org','2010-04-14 17:19:42'),(32,'IGBP','International Geosphere-Biosphere Programme','wrl',1,'http://www.igbp.net','2010-04-14 17:19:42'),(33,'IGN','Institut GÃ©ographique National','wrl',3,'','2010-04-14 17:19:42'),(34,'IGNIAOG','Instituto GeogrÃ¡fico Nacional (I.G.N.) \"Ing. Alfredo Obiols GÃ³mez\"','gtm',3,'http://www.ign.gob.gt/','2010-04-14 17:19:42'),(35,'INE','Insitituto Nacional de EstadÃ­stica','gtm',3,'http://www.ine.gob.gt/','2010-04-14 17:19:42'),(36,'INEGI','Instituto Nacional de EstadÃ­stica Geografia e InformÃ¡tica','mex',3,'http://www.inegi.gob.mx','2010-04-14 17:19:42'),(37,'INSP','Instituto Nacional de Salud PÃºblica','mex',3,'http://www.insp.mx/','2010-04-14 17:19:42'),(38,'ISCGM','International Steering Committee for Global Mapping','wrl',6,'http://www.iscgm.org/','2010-04-14 17:19:42'),(39,'IRI','International Research Institute for Climate and Society','wrl',1,'http://portal.iri.columbia.edu','2010-04-14 17:19:42'),(40,'ITHACA','Information Technology for Humanitarian Assistance, Coorperation and Action','wrl',1,'http://www.ithaca.polito.it/','2010-04-14 17:19:42'),(41,'ITOS','University of Georgia Information Technology Outreach Services','wrl',1,'https://www.itos.uga.edu/','2010-04-14 17:19:42'),(42,'JHIC','United Nations Joint Humanitarian Information Centre','irq',6,'','2010-04-14 17:19:42'),(43,'JRC','European Comission Joint Research Centre','usa',1,'http://ec.europa.eu/dgs/jrc/index.cfm','2010-04-14 17:19:42'),(44,'KFOR','Kosovo Force','',3,'','2010-04-14 17:21:59'),(45,'MIMU','Myanmar Information Management Unit','mmr',6,'','2010-04-14 17:21:59'),(46,'MINUSTAH','Mission des Nations Unies pour la Stabilisation en HaÃ¯ti','hti',6,'http://www.minustah.org','2010-04-14 17:21:59'),(47,'MONUC','United Nations Organization Mission in the Democratic Republic of the Congo','cod',6,'','2010-04-14 17:21:59'),(48,'Munich Re.','Munich Reinsurance Company','wrl',2,'http://www.munichre.com','2010-04-14 17:21:59'),(49,'NAMRIA','National Mapping and Resource Information Agency','phl',3,'http://www.namria.gov.ph/','2010-04-14 17:21:59'),(50,'NASA','National Aeronautics and Space Administration','wrl',3,'www.nasa.gov','2010-04-14 17:21:59'),(51,'Nation Master','Nation Master','wrl',7,'http://www.nationmaster.com/index.php','2010-04-14 17:21:59'),(52,'NDCC','National Disaster Coordinating Council','phl',3,'http://210.185.184.53/ndccWeb/index.php?option=com_frontpage&Itemid=1','2010-04-14 17:21:59'),(53,'NDMA','National Disaster Management Agency','',3,'','2010-04-14 17:21:59'),(54,'NGA','National Geospatial-Intelligence Agency','wrl',3,'','2010-04-14 17:21:59'),(55,'NISR','Rwanda National Institute of Stastics','rwa',3,'','2010-04-14 17:21:59'),(56,'NOAA','National Oceanic and Atmospheric Administration','wrl',3,'http://www.noaa.gov','2010-04-14 17:21:59'),(57,'Netpas','Netpas','wrl',7,'http://www.netpas.net/','2010-04-14 17:21:59'),(58,'Oak Ridge National Laboratory','Oak Ridge National Laboratory','wrl',1,'http://www.ornl.gov/sci/landscan/index.html','2010-04-14 17:21:59'),(59,'ONUB','United Nations Operations in Burundi','bdi',6,'','2010-04-14 17:21:59'),(60,'ONUCI','Operation des Nations Unies en CÃ´te dâ€™Ivoire','civ',6,'http://www.onuci.org/','2010-04-14 17:21:59'),(61,'PAHO','Pan American Health Organization','per',6,'','2010-04-14 17:21:59'),(62,'Pakinfo','Pakinfo','pak',2,'http://www.earthquakepakistan.com','2010-04-14 17:21:59'),(63,'Patronus Analytical','Patronus Analytical','wrl',4,'http://www.patronusanalytical.com','2010-04-14 17:21:59'),(64,'PDC','Pacific Disaster Center','wrl',1,'http://www.pdc.org','2010-04-14 17:21:59'),(65,'PFRC','Punjab Flood Relief Committee','pak',3,'','2010-04-14 17:21:59'),(66,'Prevention Web','Prevention Web','wrl',6,'www.preventionweb.net','2010-04-14 17:21:59'),(67,'RGC','RÃ©fÃ©rentiel GÃ©ographique Commun','cod',6,'http://www.rdc-humanitaire.net/f/article.php3?id_article=239','2010-04-14 17:21:59'),(68,'SCHR','Steering Committee for Humanitarian Response','wrl',6,'http://www.humanitarianinfo.org/IASC/pageloader.aspx?page=content-about-schr','2010-04-14 17:21:59'),(69,'SDATL','SchÃ©ma directeur d\'amÃ©nagement du territoire libanais','lbn',3,'http://www.studies.gov.lb/','2010-04-14 17:21:59'),(70,'SIGCAF','Systeme d\'information geographique centrafricaine','caf',3,'','2010-04-14 17:21:59'),(71,'SIM','Sudan Interagency Mapping','sdn',6,'http://sim.unsudanig.org/','2010-04-14 17:21:59'),(72,'SLIS','Sierra Leone Information System','sle',3,'http://www.daco-sl.org/encyclopedia/','2010-04-14 17:21:59'),(73,'Smithsonian Institution','Smithsonian Institution','wor',1,'','2010-04-14 17:21:59'),(74,'SPOT','SPOT Image','wrl',2,'http://www.spotimage.fr','2010-04-14 17:21:59'),(75,'SWERA','Solar and Wind Energy Resource Assessment','wrl',6,'http://swera.unep.net/','2010-04-14 17:21:59'),(76,'Uganda Cluster','Uganda Cluster','uga',6,'http://www.ugandaclusters.ug','2010-04-14 17:21:59'),(77,'UN','United Nations','wrl',6,'www.un.org','2010-04-14 17:21:59'),(78,'UNCS','United Nations Cartographic Section','wrl',6,'','2010-04-14 17:21:59'),(79,'UNDP','United Nations Development Programme','wrl',6,'','2010-04-14 17:21:59'),(80,'UNEP','United Nations Environmental Programme','wrl',6,'','2010-04-14 17:21:59'),(81,'UNFIL','United Nations Interim Force in Lebanon','lbn',6,'','2010-04-14 17:21:59'),(82,'UNHABITAT','United Nations Human Settlements Programme','wrl',6,'http://www.unhabitat.org','2010-04-14 17:21:59'),(83,'UNHCR','United Nations High Commissioner for Refugees','wrl',6,'http://www.unhcr.org/','2010-04-14 17:21:59'),(84,'UNICEF','United Nations Childrens Fund','wrl',6,'http://www.unicef.org/','2010-04-14 17:21:59'),(85,'UNISYS','UNISYS Corp','wrl',7,'http://weather.unisys.com','2010-04-14 17:21:59'),(86,'University of Maryland','University of Maryland','wrl',1,'','2010-04-14 17:21:59'),(87,'UNJLC','United Nations Joint Logistic Centre','wrl',6,'http://www.unjlc.org/','2010-04-14 17:21:59'),(88,'UNMAS','United Nations Mine Action Service','wrl',6,'','2010-04-14 17:21:59'),(89,'UNMIK','United Nations Interim Administration Mission in Kosovo','',6,'http://www.unmikonline.org/','2010-04-14 17:21:59'),(90,'UNMIL','United Nations Mission in Liberia','lbr',6,'http://unmil.org/','2010-04-14 17:21:59'),(91,'UNOCHA','United Nations Office for the Coordination of Humanitarian Affairs','wrl',6,'http://ochaonline.un.org','2010-04-14 17:21:59'),(92,'UNODC','United Nations Office on Drugs and Crime','wrl',6,'http://www.unodc.org','2010-04-14 17:21:59'),(93,'UNOSAT','United Nations Operational Satellite Applications Programme','wrl',6,'http://unosat.web.cern.ch/unosat/','2010-04-14 17:21:59'),(94,'UNPD','United Nations Population Division','wrl',6,'http://www.un.org/esa/population/unpop.htm','2010-04-14 17:21:59'),(95,'USAID','United States Agency for International Development','wrl',3,'http://www.usaid.gov','2010-04-14 17:21:59'),(96,'USGS','United States Geological Survey','usa',3,'http://www.usgs.gov','2010-04-14 17:21:59'),(97,'WorldClim','WorldClim - Global Climate Data','wrl',1,'http://www.worldclim.org','2010-04-14 17:21:59'),(98,'WFP','World Food Programme','wrl',6,'http://www.wfp.org/','2010-04-14 17:21:59'),(99,'World Bank','World Bank','wrl',6,'http://www.worldbank.org','2010-04-14 17:21:59'),(100,'WHO','World Health Organization','wrl',6,'http://www.who.int/','2010-04-14 17:21:59');
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-05-16  9:05:54
