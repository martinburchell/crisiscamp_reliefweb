CREATE DATABASE reliefweb
USE reliefweb

DROP TABLE IF EXISTS `inventory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `inventory` (
  `id` smallint(6) NOT NULL auto_increment,
  `dataName` varchar(255) default NULL,
  `dataAccess` text default NULL,
  `accessid` smallint(10) default NULL,
  `dataTypeid` smallint(10) default NULL,
  `dataCategoryid` smallint(10) default NULL,
  `dataIndicatorid` smallint(10) default NULL,
  `clusterid` smallint(10) default NULL,
  `dataFormatid` smallint(10) default NULL,
  `regionid` smallint(10) default NULL,
  `countryid` smallint(10) default NULL,
  `sourceid` smallint(10) default NULL,
  `resolution` varchar(255) default NULL,
  `pointOfContact` text,
  `processingInstructions` text,
  `notes` text,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isPublished` BOOLEAN NOT NULL DEFAULT FALSE
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `access`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `access` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `dataType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataType` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `dataCategory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataCategory` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `dataIndicator`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataIndicator` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `dataFormat`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataFormat` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `cluster`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cluster` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `region`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `region` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `country`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `country` (
  `id` smallint(6) NOT NULL auto_increment,
  `code` varchar(3) default NULL,
  `name` varchar(255) default NULL,
  `region` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `source`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `source` (
  `id` smallint(6) NOT NULL auto_increment,
  `shortName` varchar(255) default NULL,
  `organization` varchar(255) default NULL,
  `areaOfInterest` varchar(3) default NULL,
  `sectorid` smallint(6) default NULL,
  `website` text, 
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

DROP TABLE IF EXISTS `sector`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sector` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `lastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;