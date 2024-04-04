CREATE DATABASE  IF NOT EXISTS `lyngsat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lyngsat`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lyngsat
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `user_channel_favourites`
--

DROP TABLE IF EXISTS `user_channel_favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_channel_favourites` (
  `User_email` varchar(40) NOT NULL,
  `Channel_name` varchar(52) NOT NULL,
  `Satellite_name` varchar(36) NOT NULL,
  `Frequency` varchar(8) NOT NULL,
  PRIMARY KEY (`User_email`,`Channel_name`,`Satellite_name`,`Frequency`),
  KEY `fav_chans_idx` (`Channel_name`,`Satellite_name`,`Frequency`),
  CONSTRAINT `fav_chans` FOREIGN KEY (`Channel_name`, `Satellite_name`, `Frequency`) REFERENCES `channel_instance` (`Channel_name`, `Satellite_name`, `Frequency`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`User_email`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_channel_favourites`
--

LOCK TABLES `user_channel_favourites` WRITE;
/*!40000 ALTER TABLE `user_channel_favourites` DISABLE KEYS */;
INSERT INTO `user_channel_favourites` VALUES ('ahmed.ali@example.com','(A2Z Channel 11 feeds)','Intelsat 19','4180 H'),('ahmed.ali@example.com','24.7 Music TV','Al Yah 1','11843 V'),('mohamed.ahmed@example.com','2ME Gold','AsiaSat 9','12415 V'),('ahmed.ali@example.com','60s Pop Hits','SES 3','12145 V'),('fatma.hassan@example.com','70s Hits','SES 3','12145 V'),('fatma.hassan@example.com','88.8 CBS FM','Eutelsat 7C','10981 V'),('nadia.mohamed@example.com','9 Go!','Intelsat 19','12569 V'),('nadia.mohamed@example.com','94 FM ','Star One D1','3890 V'),('nadia.mohamed@example.com','ABC News','Astra 4A','12226 H');
/*!40000 ALTER TABLE `user_channel_favourites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-05  1:16:23
