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
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `location` varchar(255) DEFAULT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `schedule` text,
  `website` text,
  `delivery_time` mediumint DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  KEY `restaurant_columns_idx` (`location`,`restaurant_id`,`delivery_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES ('4123 Mauris Av.','A3J','Monday-Friday:8:00 am -5:00 pm','www.mauris.com',11),('897 Donec Av.','Donec','Monday-Friday:8:00 am -5:00 pm','www.eleifend.com',6),('8393 Dui. St.','Dui','Monday-Friday:8:00 am -7:00 pm','www.double.com',2),('6690 Fusce Av.','Fusce','Monday-Friday:8:00 am -5:00 pm','www.ligula.com',5),('9565 Lectus Rd.','Lectus','Monday-Friday:8:00 am -4:00 pm','www.semper.com',9),('4122 Libero. Road','Libero','Monday-Friday:8:00 am -5:00 pm','www.commodo.com',9),('3348 Facilisis St.','RBlaze','Monday-Friday:8:00 am -6:00 pm','www.redblaze.com',1),('5023 Sed Rd.','Sed','Monday-Friday:8:00 am -5:00 pm','www.nuc.com',4),('4454 Vel Street','VelVEl','Monday-Friday:8:00 am -3:00 pm','www.lobortis.com',11);
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 15:56:54
