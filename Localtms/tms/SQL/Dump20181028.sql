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
  CONSTRAINT `fk_address_city` FOREIGN KEY (`address_city`) REFERENCES `country` (`country_id`),
  CONSTRAINT `fk_address_state` FOREIGN KEY (`address_state`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_school_id` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_details`
--

LOCK TABLES `address_details` WRITE;
/*!40000 ALTER TABLE `address_details` DISABLE KEYS */;
INSERT INTO `address_details` VALUES (42,'Plot no-201,Near Hinjewadi','Near Landon',1,1,421203,1,'2323122','9594411079','Kalyan@gmail.com',1),(43,'Plot no-201,Near Hinjewadi','Near Landon',1,1,421203,1,'2323122','9594411079','Kalyan@gmail.com',1);
/*!40000 ALTER TABLE `address_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'bill','abc123','Bill','Watcher','bill@xyz.com','Active'),(2,'danny','abc124','Danny','Theys','danny@xyz.com','Active'),(3,'sam','abc125','Sam','Smith','samy@xyz.com','Active'),(4,'nicole','abc126','Nicole','warner','nicloe@xyz.com','Active'),(5,'kenny','abc127','Kenny','Roger','kenny@xyz.com','Active');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_profile`
--

DROP TABLE IF EXISTS `app_user_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`),
  CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_profile`
--

LOCK TABLES `app_user_user_profile` WRITE;
/*!40000 ALTER TABLE `app_user_user_profile` DISABLE KEYS */;
INSERT INTO `app_user_user_profile` VALUES (1,1),(2,1),(3,2),(5,2),(4,3),(5,3);
/*!40000 ALTER TABLE `app_user_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `fk_city_state_id` (`state_id`),
  CONSTRAINT `fk_city_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,1,'DOMBIVILI'),(2,1,'KALYAN'),(3,2,'SURAT'),(4,3,'Pitsu-1'),(5,3,'Pitsu-2');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_tbl`
--

DROP TABLE IF EXISTS `class_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_tbl` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_tbl`
--

LOCK TABLES `class_tbl` WRITE;
/*!40000 ALTER TABLE `class_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'INDIA'),(2,'USA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_details` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,'School_1'),(2,'School_2');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `state_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `fk_country_id` (`country_id`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,1,'MAHARSATRA'),(2,1,'GUJRAT'),(3,2,'Pitsuburg'),(4,2,'California');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `teacher_tbl`
--

DROP TABLE IF EXISTS `teacher_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_tbl` (
  `teacher_id` int(11) NOT NULL,
  `teach_first_name` varchar(200) NOT NULL,
  `teach_last_name` varchar(200) NOT NULL,
  `teach_qualification` varchar(200) NOT NULL,
  `teach_mobile` bigint(20) NOT NULL,
  `teach_email` varchar(100) NOT NULL,
  `teach__pan` varchar(20) NOT NULL,
  `teach__aadhar` bigint(20) NOT NULL,
  `teach__address` longtext NOT NULL,
  `teach__gender` varchar(20) NOT NULL,
  `teach_account_no` longtext NOT NULL,
  `teach_bank_name` varchar(100) NOT NULL,
  `teach_bank_ifsc` varchar(50) NOT NULL,
  `teach_salary` varchar(50) NOT NULL,
  `teach_password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_tbl`
--

LOCK TABLES `teacher_tbl` WRITE;
/*!40000 ALTER TABLE `teacher_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (2,'ADMIN'),(3,'DBA'),(1,'USER');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogin`
--

LOCK TABLES `userlogin` WRITE;
/*!40000 ALTER TABLE `userlogin` DISABLE KEYS */;
INSERT INTO `userlogin` VALUES (1,'nir','nir');
/*!40000 ALTER TABLE `userlogin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28 11:37:57
