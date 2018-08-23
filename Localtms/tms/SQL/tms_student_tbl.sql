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
-- Table structure for table `student_tbl`
--

DROP TABLE IF EXISTS `student_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_tbl` (
  `stud_id` int(11) NOT NULL,
  `stud_first_name` varchar(200) NOT NULL,
  `stud_last_name` varchar(200) NOT NULL,
  `stud_middle_name` varchar(200) NOT NULL,
  `stud_mother_name` varchar(200) NOT NULL,
  `stud_father_name` varchar(200) NOT NULL,
  `stud_mobile` bigint(20) NOT NULL,
  `stud_gender` varchar(20) NOT NULL,
  `stud_aadhar` bigint(20) NOT NULL,
  `stud_address` longtext NOT NULL,
  `stud_grno` int(11) NOT NULL,
  `stud_class` int(11) NOT NULL,
  `stud_caste` varchar(100) NOT NULL,
  `stud_rollno` longtext NOT NULL,
  `stud_password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_tbl`
--

LOCK TABLES `student_tbl` WRITE;
/*!40000 ALTER TABLE `student_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-19 23:55:02