CREATE DATABASE  IF NOT EXISTS `tms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tms`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
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
-- Table structure for table `parents_tbl`
--

DROP TABLE IF EXISTS `parents_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parents_tbl` (
  `parents_id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `f_education` varchar(100) NOT NULL,
  `f_mobile` bigint(20) NOT NULL,
  `f_email` varchar(100) DEFAULT NULL,
  `f_occupation` varchar(200) NOT NULL,
  `f_income` varchar(100) NOT NULL,
  `f_aadhar` bigint(20) NOT NULL,
  `f_pan` varchar(20) DEFAULT NULL,
  `m_education` varchar(100) NOT NULL,
  `m_mobile` bigint(20) NOT NULL,
  `m_email` varchar(100) DEFAULT NULL,
  `m_occupation` varchar(200) NOT NULL,
  `m_income` varchar(100) NOT NULL,
  `m_aadhar` bigint(20) NOT NULL,
  `m_pan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`parents_id`),
  KEY `fk_parents_tbl` (`stud_id`),
  CONSTRAINT `fk_parents_tbl` FOREIGN KEY (`stud_id`) REFERENCES `student_tbl` (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_tbl`
--

LOCK TABLES `parents_tbl` WRITE;
/*!40000 ALTER TABLE `parents_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `parents_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-10 10:53:40
