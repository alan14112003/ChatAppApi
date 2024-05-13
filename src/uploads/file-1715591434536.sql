-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ktx
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `buildingid` int NOT NULL AUTO_INCREMENT,
  `numberoffloor` int NOT NULL,
  `numberofroom` int NOT NULL,
  `roomtype` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`buildingid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,5,10,'normal','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(2,8,15,'normal','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(3,10,20,'vip','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(4,4,8,'vip','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(5,6,12,'normal','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(6,7,14,'vip','unactive','2024-05-07 10:14:58','2024-05-07 10:14:58'),(7,3,6,'normal','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(8,9,18,'normal','unactive','2024-05-07 10:14:58','2024-05-07 10:14:58'),(9,5,10,'vip','unactive','2024-05-07 10:14:58','2024-05-07 10:14:58'),(10,8,16,'normal','active','2024-05-07 10:14:58','2024-05-07 10:14:58'),(11,10,10,'normal','active','2024-05-07 11:24:29','2024-05-07 11:24:34');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changerooms`
--

DROP TABLE IF EXISTS `changerooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changerooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `oldroomID` int NOT NULL,
  `newroomID` int NOT NULL,
  `changedate` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changerooms`
--

LOCK TABLES `changerooms` WRITE;
/*!40000 ALTER TABLE `changerooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `changerooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `electric` int NOT NULL,
  `water` int NOT NULL,
  `amount` float NOT NULL,
  `PaymentType` varchar(255) NOT NULL,
  `paymentstatus` varchar(255) NOT NULL,
  `paymentdate` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `RoomNumber1` int NOT NULL,
  `RoomNumber2` int NOT NULL,
  `RoomNumber3` int NOT NULL,
  `registrationstatus` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (1,'1',1,2,3,'1','2024-04-24 03:36:14','2024-04-24 05:57:52'),(2,'2',1,2,3,'1','2024-04-24 06:16:56','2024-04-24 06:19:39'),(3,'3',1,2,3,'1','2024-04-24 06:22:08','2024-04-24 06:34:44'),(4,'3',1,2,3,'2','2024-04-24 06:34:07','2024-04-24 06:54:04'),(5,'3',1,2,3,'2','2024-04-24 06:54:25','2024-04-24 06:54:59'),(6,'3',1,2,3,'2','2024-04-24 06:54:45','2024-04-24 06:55:21');
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Roomnumber` int NOT NULL AUTO_INCREMENT,
  `Status` varchar(255) NOT NULL,
  `Roomslot` int NOT NULL,
  `Price` float NOT NULL,
  `Roomgender` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `buildingid` int DEFAULT NULL,
  PRIMARY KEY (`Roomnumber`),
  KEY `buildingid` (`buildingid`),
  CONSTRAINT `Rooms_buildingid_foreign_idx` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_10` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_11` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_12` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_13` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_14` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_15` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_16` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_17` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_18` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_3` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_4` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_5` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_6` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_7` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_8` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_9` FOREIGN KEY (`buildingid`) REFERENCES `buildings` (`buildingid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (4,'active',4,734.549,'female','2024-05-07 10:23:40','2024-05-07 10:23:40',1),(5,'active',5,961.687,'female','2024-05-07 10:23:40','2024-05-07 10:23:40',2),(6,'active',8,1102.14,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',3),(7,'active',3,1205.95,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',4),(8,'active',2,718.48,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',5),(9,'unactive',5,917.658,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',6),(10,'active',4,1013.7,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',7),(11,'unactive',4,1318.86,'female','2024-05-07 10:23:40','2024-05-07 10:23:40',8),(12,'unactive',5,1139.01,'male','2024-05-07 10:23:40','2024-05-07 10:23:40',9),(13,'active',6,511.82,'female','2024-05-07 10:23:40','2024-05-07 10:23:40',10),(19,'active',3,1192.25,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',1),(20,'active',2,561.079,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',2),(21,'active',7,695.519,'female','2024-05-07 10:25:19','2024-05-07 10:25:19',3),(22,'active',1,1492.41,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',4),(23,'active',7,613.389,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',5),(24,'unactive',7,776.205,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',6),(25,'active',10,534.899,'female','2024-05-07 10:25:19','2024-05-07 10:25:19',7),(26,'unactive',7,834.368,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',8),(27,'unactive',2,1307.21,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',9),(28,'active',7,1048.86,'male','2024-05-07 10:25:19','2024-05-07 10:25:19',10),(34,'active',3,120000,'male','2024-05-07 11:25:27','2024-05-07 11:25:32',11);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomusers`
--

DROP TABLE IF EXISTS `roomusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `dateIn` datetime DEFAULT NULL,
  `dateOut` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int DEFAULT NULL,
  `RoomNumber` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `RoomNumber` (`RoomNumber`),
  CONSTRAINT `roomusers_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_10` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_11` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_12` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_13` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_14` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_15` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_16` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_17` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_18` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_19` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_20` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_21` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_22` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_23` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_24` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_25` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_26` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_27` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_28` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_29` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_30` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_31` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_32` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_33` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_34` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_35` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_36` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_37` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_38` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_39` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_4` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_40` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_41` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_42` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_43` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_44` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_45` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_46` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_47` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_48` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_49` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_5` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_50` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_51` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_52` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_53` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_54` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_55` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_56` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_57` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_58` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_59` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_6` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_60` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_61` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_62` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_63` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_64` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_65` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_66` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_67` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_68` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_69` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_7` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_70` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_71` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_72` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_73` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_74` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_75` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_76` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_77` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_78` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_79` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_8` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_80` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_81` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_82` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_83` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `roomusers_ibfk_9` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `RoomUsers_RoomNumber_foreign_idx` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`Roomnumber`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomusers`
--

LOCK TABLES `roomusers` WRITE;
/*!40000 ALTER TABLE `roomusers` DISABLE KEYS */;
INSERT INTO `roomusers` VALUES (9,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',60,4),(10,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',83,5),(11,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',28,6),(12,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',96,7),(13,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',86,8),(14,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',41,9),(15,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',46,10),(16,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',7,11),(17,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',101,12),(18,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',73,13),(19,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',60,19),(20,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',83,20),(22,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',89,22),(23,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',55,23),(24,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',10,24),(25,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',89,25),(26,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',4,26),(27,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',59,27),(28,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',78,28),(40,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',6,4),(41,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',103,5),(42,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',84,6),(43,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',10,7),(44,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',3,8),(45,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',85,9),(46,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',5,10),(47,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',80,11),(48,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',76,12),(49,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',37,13),(50,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',59,19),(51,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',78,20),(52,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',9,21),(53,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',16,22),(54,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',53,23),(55,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',10,24),(56,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',98,25),(57,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',48,26),(58,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',47,27),(59,'1','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35','2024-05-07 10:40:35',93,28),(71,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',63,7),(72,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',31,4),(73,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',67,6),(74,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',37,10),(75,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',87,19),(76,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',15,13),(77,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',19,28),(78,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',49,22),(79,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',83,20),(80,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',61,26),(81,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',57,21),(82,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',100,27),(83,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',19,8),(84,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',103,25),(85,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',45,5),(86,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',20,11),(87,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',65,24),(88,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',61,23),(89,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',5,12),(90,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',47,9),(102,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',25,28),(103,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',13,8),(104,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',93,10),(105,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',14,4),(106,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',100,19),(107,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',45,11),(108,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',27,7),(109,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',102,25),(110,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',18,24),(111,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',93,5),(112,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',100,20),(113,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',13,9),(114,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',77,6),(115,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',34,26),(116,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',42,21),(117,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',5,13),(118,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',1,23),(119,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',94,12),(120,'2','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',55,22),(121,'1','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46','2024-05-07 10:44:46',94,27),(133,'1','2024-05-07 13:29:23','2024-05-07 13:29:31','2024-05-07 13:29:37','2024-05-07 13:29:42',102,34);
/*!40000 ALTER TABLE `roomusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `RoomNumber` varchar(255) DEFAULT NULL,
  `Building` varchar(255) DEFAULT NULL,
  `UserType` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'0349','alan','$2b$10$EnL3Qx4dofiRqTS0m8Rc1uDwYPZh.uqHbtV8W8bzyOP7rO9iD5epu','03574893','1','1','admin','nam','alan@gmail.com','2024-04-24 10:28:57','2024-04-24 10:29:03'),(2,'0347','linh','234','043','2','2','user','nu','linh@gmail.com','2024-04-24 12:25:49','2024-04-24 12:25:58'),(3,'054','tài','123','0357893','1','1','user','nam','tai@gmail.com','2024-04-24 13:21:08','2024-04-24 13:21:18'),(4,'user1','User1','$2b$10$3591d9344f327796fac24e','0123456789113734451','Room1','Building1','user','female','user1@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(5,'user2','User2','$2b$10$6104bd7061fe9823ce64b5','0123456789910523603','Room2','Building4','user','female','user2@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(6,'user3','User3','$2b$10$0abe0936b6305bd38067d8','0123456789384881475','Room3','Building9','user','male','user3@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(7,'user4','User4','$2b$10$ecdde7059ca7c87f06744b','0123456789442978328','Room4','Building8','user','female','user4@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(8,'user5','User5','$2b$10$9b04ef749f670db62abe72','0123456789866873865','Room5','Building1','user','male','user5@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(9,'user6','User6','$2b$10$72105409849efbbc8330fd','0123456789995256095','Room6','Building4','user','female','user6@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(10,'user7','User7','$2b$10$f5f6e142ccbcdb93dd7894','0123456789352428841','Room7','Building10','user','male','user7@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(11,'user8','User8','$2b$10$af0d3770d52b908832e9d2','0123456789985348258','Room8','Building6','admin','female','user8@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(12,'user9','User9','$2b$10$b3f2ece73e2bd99b0f0904','0123456789748510068','Room9','Building10','user','male','user9@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(13,'user10','User10','$2b$10$5d873421c637c632bc17b7','0123456789612762846','Room10','Building2','user','male','user10@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(14,'user1011','User1011','$2b$10$3102d4fbc0e0ce4698b13d','0123456789937289840','Room1011','Building4','admin','male','user1011@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(15,'user1012','User1012','$2b$10$9e4148069646841597afa6','0123456789601180816','Room1012','Building5','user','male','user1012@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(16,'user1013','User1013','$2b$10$34a950ae68a6777e669c91','0123456789980311123','Room1013','Building7','user','female','user1013@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(17,'user1014','User1014','$2b$10$bb460608096a5911e473e0','0123456789872006755','Room1014','Building6','user','female','user1014@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(18,'user1015','User1015','$2b$10$4c619a57a983b25cf768b2','0123456789994398714','Room1015','Building1','user','female','user1015@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(19,'user1016','User1016','$2b$10$18f8ef68f028176e2b6a6c','0123456789840499524','Room1016','Building10','user','male','user1016@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(20,'user1017','User1017','$2b$10$d3fad06e2b60c315a5a893','012345678997949416','Room1017','Building8','user','female','user1017@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(21,'user1018','User1018','$2b$10$f462245d68388a1c41e882','0123456789234042594','Room1018','Building8','user','male','user1018@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(22,'user1019','User1019','$2b$10$19098cf46bd39afc0e2b23','0123456789411156411','Room1019','Building1','user','male','user1019@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(23,'user1020','User1020','$2b$10$fcd7c59195cd3afc8b90f6','0123456789583394594','Room1020','Building8','user','male','user1020@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(24,'user2021','User2021','$2b$10$b8534ce3bbd02469c2203a','0123456789596056099','Room2021','Building6','user','female','user2021@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(25,'user2022','User2022','$2b$10$958bafcdda0bf018c5ad42','0123456789417898383','Room2022','Building10','user','male','user2022@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(26,'user2023','User2023','$2b$10$4f7015f451a3587778e0de','0123456789558521115','Room2023','Building6','admin','female','user2023@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(27,'user2024','User2024','$2b$10$7ca1f8fff62e37074cc376','0123456789269376389','Room2024','Building2','user','female','user2024@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(28,'user2025','User2025','$2b$10$3e1cbab44a45b9cb0907cf','0123456789609581859','Room2025','Building5','user','male','user2025@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(29,'user2026','User2026','$2b$10$673fb97a91dd552fa382fa','0123456789674817721','Room2026','Building5','user','male','user2026@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(30,'user2027','User2027','$2b$10$6d29deea354629bc6492d0','0123456789227785926','Room2027','Building1','user','male','user2027@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(31,'user2028','User2028','$2b$10$3fb023c328c994e6018535','01234567893573013','Room2028','Building10','admin','male','user2028@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(32,'user2029','User2029','$2b$10$521a378bbd434ad7069ab1','0123456789918252560','Room2029','Building1','user','female','user2029@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(33,'user2030','User2030','$2b$10$1512ccec51485fba71bed5','0123456789554321904','Room2030','Building3','user','female','user2030@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(34,'user3031','User3031','$2b$10$26a493cd5b965c8310f064','0123456789489474467','Room3031','Building8','user','female','user3031@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(35,'user3032','User3032','$2b$10$0ab5e60f643eb4183bc726','0123456789274654600','Room3032','Building4','user','male','user3032@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(36,'user3033','User3033','$2b$10$7a2ab62e5aa5883c0f3d06','0123456789173277379','Room3033','Building5','user','female','user3033@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(37,'user3034','User3034','$2b$10$46ee884ed9e15250106b27','0123456789843104293','Room3034','Building4','admin','male','user3034@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(38,'user3035','User3035','$2b$10$a60208c9de51f0cc0765d1','0123456789472467493','Room3035','Building8','user','male','user3035@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(39,'user3036','User3036','$2b$10$9318747e0a5efbb804ebcf','012345678915247747','Room3036','Building9','user','female','user3036@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(40,'user3037','User3037','$2b$10$c18c2249c78b133b4f2f6c','0123456789680864154','Room3037','Building7','user','female','user3037@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(41,'user3038','User3038','$2b$10$827b688c6684eed6f80458','0123456789569462479','Room3038','Building7','user','female','user3038@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(42,'user3039','User3039','$2b$10$627070c11a921f5e6b9c30','0123456789507205838','Room3039','Building3','user','male','user3039@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(43,'user3040','User3040','$2b$10$da1e9b52ed93cd2a1e6ab8','0123456789749267529','Room3040','Building2','user','male','user3040@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(44,'user4041','User4041','$2b$10$b1a429821352eadde7448a','0123456789918624959','Room4041','Building10','user','male','user4041@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(45,'user4042','User4042','$2b$10$f582dc805d5a2e61f2aaa4','0123456789899843893','Room4042','Building3','user','female','user4042@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(46,'user4043','User4043','$2b$10$664c6a6a33a535bb9bf68e','012345678943916030','Room4043','Building6','user','male','user4043@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(47,'user4044','User4044','$2b$10$8655f07e4f9f99427c94e9','0123456789114117098','Room4044','Building5','admin','male','user4044@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(48,'user4045','User4045','$2b$10$2a45a2743e86a721c7024c','0123456789651162109','Room4045','Building7','user','female','user4045@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(49,'user4046','User4046','$2b$10$6067d3573e0cef56298553','0123456789733693777','Room4046','Building3','user','male','user4046@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(50,'user4047','User4047','$2b$10$041713f81e23f05fe7e302','0123456789965966912','Room4047','Building6','user','male','user4047@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(51,'user4048','User4048','$2b$10$cdf4066ec5f63b13bbc38b','0123456789513646447','Room4048','Building6','user','female','user4048@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(52,'user4049','User4049','$2b$10$ea5e49b94a566860ab6d29','0123456789898588179','Room4049','Building4','user','female','user4049@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(53,'user4050','User4050','$2b$10$9a855348c0c3080419c7d4','0123456789601515858','Room4050','Building7','user','female','user4050@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(54,'user5051','User5051','$2b$10$b4e3703eb96fcdce082ac3','0123456789879000853','Room5051','Building4','admin','male','user5051@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(55,'user5052','User5052','$2b$10$6711acb24bccd1162ddfca','0123456789357943434','Room5052','Building4','user','male','user5052@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(56,'user5053','User5053','$2b$10$0ca8ef1c5882a0dfa3077b','0123456789369396437','Room5053','Building7','user','male','user5053@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(57,'user5054','User5054','$2b$10$670e30ea6530ad66142449','0123456789879528247','Room5054','Building4','admin','male','user5054@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(58,'user5055','User5055','$2b$10$e46e57d33ec9c8c4b9cc17','0123456789540868836','Room5055','Building2','admin','male','user5055@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(59,'user5056','User5056','$2b$10$b34b0f0cd90d79f8c926fb','012345678956206797','Room5056','Building1','user','female','user5056@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(60,'user5057','User5057','$2b$10$3e90d4f1a7ba9342887950','0123456789473936698','Room5057','Building8','user','male','user5057@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(61,'user5058','User5058','$2b$10$5a2d952b2d1319cd3abdfa','0123456789398416879','Room5058','Building4','user','male','user5058@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(62,'user5059','User5059','$2b$10$f48250ff3b6056929fe5cf','0123456789498316579','Room5059','Building8','user','female','user5059@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(63,'user5060','User5060','$2b$10$095a1716e4c467251e98d9','0123456789201690300','Room5060','Building2','admin','female','user5060@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(64,'user6061','User6061','$2b$10$8994b0964ba048ecf4f08a','0123456789402302448','Room6061','Building10','user','female','user6061@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(65,'user6062','User6062','$2b$10$0f9138e98d9e17bc757081','0123456789385405717','Room6062','Building3','admin','female','user6062@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(66,'user6063','User6063','$2b$10$47537c6c866979a94f4ee0','0123456789713976669','Room6063','Building5','user','male','user6063@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(67,'user6064','User6064','$2b$10$81ceecf70dc9b119aa223e','0123456789462036353','Room6064','Building9','user','female','user6064@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(68,'user6065','User6065','$2b$10$82b197332a337601bd4671','01234567897329174','Room6065','Building5','user','female','user6065@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(69,'user6066','User6066','$2b$10$574444a6dc24472c5ad6c4','0123456789535735947','Room6066','Building2','user','female','user6066@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(70,'user6067','User6067','$2b$10$e6f983ddcd92d8715cf336','0123456789429571151','Room6067','Building1','user','female','user6067@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(71,'user6068','User6068','$2b$10$f2630eabd023d8510cfebe','0123456789433650594','Room6068','Building3','user','female','user6068@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(72,'user6069','User6069','$2b$10$b8e077a9ebb05fc5bedb5d','0123456789248875138','Room6069','Building7','user','male','user6069@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(73,'user6070','User6070','$2b$10$2d17da39cceee04aa8c635','0123456789713772751','Room6070','Building10','user','female','user6070@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(74,'user7071','User7071','$2b$10$b1b0069abf32c6c43a7a54','0123456789338187066','Room7071','Building5','user','female','user7071@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(75,'user7072','User7072','$2b$10$b1c1137f820f49d75a77df','0123456789379181987','Room7072','Building5','user','male','user7072@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(76,'user7073','User7073','$2b$10$5de413b3c99a537873652b','0123456789114011607','Room7073','Building1','user','female','user7073@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(77,'user7074','User7074','$2b$10$d45d40fe4ae10cfb8732d9','012345678925935662','Room7074','Building6','user','male','user7074@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(78,'user7075','User7075','$2b$10$534f958ab02cabb0a0c1e7','0123456789550320102','Room7075','Building7','user','male','user7075@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(79,'user7076','User7076','$2b$10$318dba03178656801a7a23','0123456789419822801','Room7076','Building4','user','male','user7076@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(80,'user7077','User7077','$2b$10$ff89261c0d3808b91ddef1','0123456789510884857','Room7077','Building3','user','male','user7077@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(81,'user7078','User7078','$2b$10$aaa7f01d9fa2260307a518','0123456789538261607','Room7078','Building6','user','male','user7078@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(82,'user7079','User7079','$2b$10$fc4ec2ae15867fa69b714a','0123456789790889004','Room7079','Building6','user','female','user7079@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(83,'user7080','User7080','$2b$10$a01866ef4f7e4c26221e9c','0123456789763749488','Room7080','Building6','user','male','user7080@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(84,'user8081','User8081','$2b$10$47e7b4674683ffa5494b0c','0123456789344505026','Room8081','Building7','admin','female','user8081@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(85,'user8082','User8082','$2b$10$dab72cc520147c68eb72fe','0123456789553825980','Room8082','Building1','user','male','user8082@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(86,'user8083','User8083','$2b$10$5d004b22749589fa690422','0123456789178637773','Room8083','Building7','user','male','user8083@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(87,'user8084','User8084','$2b$10$f7b5be478911d5cf131ae7','0123456789911041051','Room8084','Building7','user','female','user8084@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(88,'user8085','User8085','$2b$10$6fdb8d92fdc01575d6ffe0','0123456789376610473','Room8085','Building5','user','male','user8085@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(89,'user8086','User8086','$2b$10$3f5e622f86930525ddbeff','0123456789117510092','Room8086','Building4','user','female','user8086@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(90,'user8087','User8087','$2b$10$93d86cd1ef98dac4cac4ad','0123456789811079375','Room8087','Building1','admin','female','user8087@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(91,'user8088','User8088','$2b$10$22c4b3cb28e8d69260f5be','0123456789787163865','Room8088','Building7','admin','male','user8088@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(92,'user8089','User8089','$2b$10$b15a64c07b924038bcf5d5','0123456789974451335','Room8089','Building7','user','female','user8089@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(93,'user8090','User8090','$2b$10$9a39de9d8ebc282eefb32e','012345678934937810','Room8090','Building7','user','female','user8090@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(94,'user9091','User9091','$2b$10$f46eb3f5bcb4306bd1b525','0123456789741633421','Room9091','Building10','user','male','user9091@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(95,'user9092','User9092','$2b$10$f1a6614f27ce25503a6fe2','0123456789419446671','Room9092','Building8','user','female','user9092@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(96,'user9093','User9093','$2b$10$c7e013102ab40a01f56d87','0123456789466957272','Room9093','Building1','user','female','user9093@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(97,'user9094','User9094','$2b$10$e0188d536c86ae6a968c62','0123456789836473478','Room9094','Building10','user','female','user9094@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(98,'user9095','User9095','$2b$10$669c3c712bf6c349beb018','0123456789327801829','Room9095','Building5','user','female','user9095@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(99,'user9096','User9096','$2b$10$ea461b862059a6a5dce4ce','0123456789244681014','Room9096','Building8','user','male','user9096@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(100,'user9097','User9097','$2b$10$fff6f6fca77cad5bdb2ca7','0123456789248690250','Room9097','Building8','user','female','user9097@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(101,'user9098','User9098','$2b$10$248ecfa95a03cace6ac0bd','0123456789360670788','Room9098','Building3','user','male','user9098@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(102,'user9099','User9099','$2b$10$2e3012d3bb9794cb989d81','0123456789557720057','Room9099','Building8','admin','male','user9099@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57'),(103,'user9100','User9100','$2b$10$fcc4ddecf0cab662c392db','0123456789994120665','Room9100','Building4','admin','male','user9100@example.com','2024-05-07 10:32:57','2024-05-07 10:32:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ktx'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 13:35:55
