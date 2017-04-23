-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: campus
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `activityName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activityImg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activityContent` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activityDate` date DEFAULT NULL,
  `activityTime` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activitySite` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activityHost` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (0000000001,'活动1','活动1','活动1',NULL,NULL,'活动1','活动1',1),(0000000002,'活动2','活动2','活动2',NULL,NULL,'活动2','活动2',1),(0000000003,'活动3','活动3','活动3',NULL,NULL,'活动3','活动3',1);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affair`
--

DROP TABLE IF EXISTS `affair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affair` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `affairImg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairContent` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairDate` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairTell` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairAlipay` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairAccount` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairUrl` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `affairType` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affair`
--

LOCK TABLES `affair` WRITE;
/*!40000 ALTER TABLE `affair` DISABLE KEYS */;
INSERT INTO `affair` VALUES (0000000001,'大事件1','大事件1','大事件1','大事件1','大事件1','大事件1','大事件1','大事件1',NULL),(0000000002,'大事件2','大事件2','大事件2','大事件2','大事件2','大事件2','大事件2','大事件2',NULL),(0000000003,'affair2','affair2','affair2','affair2','affair2','affair2','affair2','affair2',NULL);
/*!40000 ALTER TABLE `affair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `followImg` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `followName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `followContent` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `followTime` datetime DEFAULT NULL,
  `affairId` int(11) DEFAULT NULL,
  `affairUrl` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (00000000001,'username','password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24  4:07:29
