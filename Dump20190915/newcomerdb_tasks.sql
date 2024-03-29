CREATE DATABASE  IF NOT EXISTS `newcomerdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `newcomerdb`;
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: newcomerdb
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.19.04.1

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` smallint(6) NOT NULL,
  `is_done` smallint(6) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,NULL,1,'Task 1',5,0,NULL,'2019-09-13 12:30:04','2019-09-13 12:30:04'),(2,1,1,'Task 1.1',2,0,NULL,'2019-09-13 12:30:47','2019-09-13 12:30:47'),(3,1,1,'Task 1.2',3,0,NULL,'2019-09-13 12:31:24','2019-09-13 12:31:24'),(4,NULL,1,'Task 2',5,0,NULL,'2019-09-13 12:32:58','2019-09-13 12:32:58'),(5,4,1,'Task 2.1',1,0,NULL,'2019-09-13 12:33:16','2019-09-13 12:33:16'),(6,4,1,'Task 2.2',2,0,NULL,'2019-09-13 12:33:57','2019-09-13 12:33:57'),(7,4,1,'Task 2.3',2,0,NULL,'2019-09-13 12:34:06','2019-09-13 12:34:06'),(8,NULL,2,'Task 1',12,0,NULL,'2019-09-13 12:56:26','2019-09-13 12:56:26'),(9,8,2,'Task 1.1',7,0,NULL,'2019-09-13 12:56:52','2019-09-13 12:56:52'),(10,8,2,'Task 1.2',5,0,NULL,'2019-09-13 12:56:59','2019-09-13 12:56:59'),(11,NULL,3,'Task 1',10,0,NULL,'2019-09-13 12:57:30','2019-09-13 12:57:30'),(12,11,3,'Task 1.1',5,0,NULL,'2019-09-13 12:58:03','2019-09-13 12:58:03'),(13,11,3,'Task 1.2',5,0,NULL,'2019-09-13 12:58:17','2019-09-13 12:58:17'),(14,13,3,'Task 1.2.1',2,0,NULL,'2019-09-13 12:59:01','2019-09-13 12:59:01'),(15,13,3,'Task 1.2.2',3,0,NULL,'2019-09-13 12:59:08','2019-09-13 12:59:08'),(16,NULL,3,'Task 2',4,0,NULL,'2019-09-13 12:59:31','2019-09-13 12:59:31'),(17,16,3,'Task 2',4,0,NULL,'2019-09-13 13:00:02','2019-09-13 13:00:02'),(18,16,3,'Task 2.1',4,0,NULL,'2019-09-13 13:00:11','2019-09-13 13:00:11');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-15  1:41:18
