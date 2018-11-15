CREATE DATABASE  IF NOT EXISTS `tms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tms`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: tms
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `address_details`
--

DROP TABLE IF EXISTS `address_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_details` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_lane1` varchar(200) DEFAULT NULL,
  `address_lane2` varchar(200) DEFAULT NULL,
  `address_city` int(11) DEFAULT NULL,
  `address_state` int(11) DEFAULT NULL,
  `address_zip` int(11) DEFAULT NULL,
  `address_country` int(11) DEFAULT NULL,
  `address_phoneno` varchar(20) DEFAULT NULL,
  `address_mobno` varchar(20) DEFAULT NULL,
  `address_email` varchar(50) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_school_id` (`school_id`),
  KEY `fk_address_city` (`address_city`),
  KEY `fk_address_state_idx` (`address_state`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`address_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `fk_address_state` FOREIGN KEY (`address_state`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_details`
--

LOCK TABLES `address_details` WRITE;
/*!40000 ALTER TABLE `address_details` DISABLE KEYS */;
INSERT INTO `address_details` VALUES (42,'Plot no-201,Near Hinjewadi P','Near Landon',1,1,421203,1,'2323122','9594411079','Kalyan@gmail.com',1),(43,'Plot no-201,Near Hinjewadi','Near Landon',1,1,421203,1,'2323122','9594411079','Kalyan@gmail.com',1),(48,'Plot no-201,Near Hinjewadi','',4,3,421203,2,'2323122','','Kalyan@gmail.com',2);
/*!40000 ALTER TABLE `address_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-15  9:28:02
