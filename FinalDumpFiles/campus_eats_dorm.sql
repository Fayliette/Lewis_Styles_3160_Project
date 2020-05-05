-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dorm`
--

DROP TABLE IF EXISTS `dorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorm` (
  `location_id` varchar(255) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `dorm_location_id` (`location_id`),
  KEY `dorm_columns_idx` (`location_id`,`location_name`,`location_address`,`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm`
--

LOCK TABLES `dorm` WRITE;
/*!40000 ALTER TABLE `dorm` DISABLE KEYS */;
INSERT INTO `dorm` VALUES ('D4C 5H5','Urna Inc.','Ap #606-6897 Nec, Avenue',27),('G6P 5L7','Et Company','8823 Imperdiet Avenue',19),('L8O 8K1','In Incorporated','Ap #466-7953 Nunc Rd.',34),('S7S 4K4','Sodales Mauris PC','P.O. Box 765, 6427 In Avenue',6),('U6P 7T2','Facilisi Sed Company','4090 Fusce Avenue',35),('U9E 8G8','Odio LLC','409-6903 Cras Ave',1),('V2P 0G6','Aenean Corporation','P.O. Box 198, 5564 Vel St.',1),('V6A 8X6','Id Incorporated','9106 Pellentesque St.',22),('Y2G 7F7','Quis Diam Luctus LLP','5328 Aliquet, St.',3);
/*!40000 ALTER TABLE `dorm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 15:56:55
