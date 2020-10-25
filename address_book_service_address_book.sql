-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: address_book_service
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `FIRSTNAME` varchar(150) NOT NULL,
  `LASTNAME` varchar(150) NOT NULL,
  `ADDRESS` varchar(250) NOT NULL,
  `CITY` varchar(25) NOT NULL,
  `STATE` varchar(250) NOT NULL,
  `ZIP` int NOT NULL,
  `PHONE` int NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TYPE` varchar(150) DEFAULT NULL,
  `ADDRESSBOOKNAME` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`FIRSTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES ('Akhandanand','Tripathi','Tripathi kothi','Mirzapur','Uttar Pradesh',213632,333456,'kishor30oct@gmail.com','Family','Personal'),('Hero','Alom','Sattabazaar','Patna','Bihar',669008,8636987,'hero.alom@gmail.com','Friends','Casual'),('Luv','Kapoor','Hathibazaar','Pune','Maharashtra',769008,4536987,'raj.pune@gmail.com','Family','Personal'),('Mohan','Kapoor','Rajabazaar','Mumbai','Maharashtra',769008,336987,'mohan.mumbaiz@gmail.com','Family','Personal'),('Raj','Singh','Lalbazaar','Patna','Bihar',800003,987564,'singhlal@yahoo.com','Friends','Casual'),('Sam','Bishop','Time Square','Manhattan','New York',213654,333666,'sam.1@gmail.com','Friends','Casual');
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-25 21:00:13
