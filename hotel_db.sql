-- MySQL dump 10.13  Distrib 8.0.15, for osx10.14 (x86_64)
--
-- Host: localhost    Database: hotel_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Bookings` (
  `reservationID` smallint(6) NOT NULL AUTO_INCREMENT,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bookingTime` time NOT NULL,
  `bookingDate` date NOT NULL,
  `guestsTotal` int(11) NOT NULL,
  PRIMARY KEY (`reservationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,3409875032,'lalita@gmail.com','23:02:45','2019-01-17',4),(2,4598327841,'isha@gmail.com','11:41:02','2018-12-01',2),(3,8352017941,'teena@gmail.com','09:10:11','2018-11-24',3),(4,9382578615,'nikita@gmail.com','17:10:50','2019-02-24',2),(5,5947832650,'tejaswani@gmail.com','00:11:48','2019-03-11',6),(6,7836245798,'manjari@gmail.com','08:29:45','2019-04-01',2),(7,9574836525,'chitranjan@gmail.com','10:44:31','2018-12-31',4),(8,4758379324,'sushant@gmail.com','08:05:20','2019-02-25',2),(9,8943785944,'virat@gmail.com','06:21:38','2018-12-15',2),(10,4935671991,'ambika@gmail.com','15:59:07','2019-03-20',3);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Employees` (
  `employeeID` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `wage` mediumint(9) NOT NULL,
  `hotelName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `hotelName` (`hotelName`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`hotelName`) REFERENCES `hotels` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Rohini Menon','CEO',7555374737,'ceo@hotel.in',8000000,'Golden Ribbon'),(2,'Nitin Khurana','COO',8555147982,'coo@hotel.in',7500000,'Golden Ribbon'),(3,'Parveen Mukherjee','Senior Manager',9855516862,'pmukherjee@hotel.in',6000000,'Golden Ribbon'),(4,'Ehsaan Saha','Junior Manager',9755598220,'esaha@hotel.in',4500000,'Lunar Garden'),(5,'Bagwati Mathew','Junior Manager',9655531131,'bmathew@hotel.in',4600000,'Elder Aegis'),(6,'Omar Mohabir','Receptionist',9355587244,'omohabir@hotel.in',2400000,'Moonlight'),(7,'Mohan Dada','Receptionist',8386491410,'mdada@hotel.in',2000000,'Sublime Sierra'),(8,'Tulsi Lalla','Receptionist',3857193481,'tlalla@hotel.in',1900000,'Nourish'),(9,'Lakshmi Atwal','Chef',4582938714,'latwal@hotel.in',3900000,'Moonlight'),(10,'Naseer Narayanan','Janitor',3792584479,'nnarayanan@hotel.in',600000,'Nourish');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Guests`
--

DROP TABLE IF EXISTS `Guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Guests` (
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `nationality` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(2) NOT NULL,
  `reservationID` smallint(6) NOT NULL,
  KEY `reservationID` (`reservationID`),
  CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`reservationID`) REFERENCES `bookings` (`reservationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guests`
--

LOCK TABLES `Guests` WRITE;
/*!40000 ALTER TABLE `Guests` DISABLE KEYS */;
INSERT INTO `Guests` VALUES ('Nayan Bhatia','India',2,1),('Shashank Bhatia','India',27,1),('Lalita Bhatia','India',27,1),('Daanish Bhatia','India',1,1),('Isha Bansal','India',35,2),('Urmila Samra','India',38,2),('Teena Dhar','India',28,3),('Hassan Bahl','India',29,3),('Namita Malhotra','India',18,3),('Nikita Mathur','Bhutan',56,4),('Marlo Masih','Bhutan',59,4),('Radheshyam Ratta','India',4,5),('Chameli Agrawal','India',6,5),('Jack Shetty','India',30,5),('Naresh Sha','Nepal',31,5),('Yogesh Bhat','Nepal',32,5),('Tejaswani Modi','India',34,5),('Manjari Singhal','India',40,6),('Raj Chandran','Sri Lanka',40,6),('Chitranjan Khan','India',60,7),('Kirti Thakur','India',59,7),('Fatima Datta','India',24,7),('Sona Mane','India',21,7),('Sushant Krishnan','India',45,8),('Sohail Saran','India',16,8),('Virat Taneja','India',63,9),('Aruna Mangat','India',45,9),('Ambika Edwin','Britain',29,10),('Srinivasan Raval','Britain',28,10),('Urvashi Khalsa','Britain',62,10);
/*!40000 ALTER TABLE `Guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotels`
--

DROP TABLE IF EXISTS `Hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Hotels` (
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `area` mediumint(9) NOT NULL,
  `roomTotal` smallint(6) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotels`
--

LOCK TABLES `Hotels` WRITE;
/*!40000 ALTER TABLE `Hotels` DISABLE KEYS */;
INSERT INTO `Hotels` VALUES ('35, Chand Society, Darjeeling','Elder Aegis',284373,5,'Resort'),('10, Pranay Lake, Mumbai','Golden Ribbon',488590,4,'Hotel'),('88, Payal Heights, Cochin','Lunar Garden',375639,5,'Resort'),('23, Amrita Nagar, Goa','Moonlight',352646,6,'Hotel'),('22, Ram Garh, Agra','Nourish',438311,4,'Inn'),('11, Malad, Guwahati','Sublime Sierra',420518,6,'Inn');
/*!40000 ALTER TABLE `Hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Payments` (
  `paymentID` smallint(6) NOT NULL,
  `reservationID` smallint(6) NOT NULL,
  `amount` smallint(6) NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `paymentDate` date DEFAULT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `reservationID` (`reservationID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservationID`) REFERENCES `bookings` (`reservationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (1,5,30000,'mastercard','2019-03-11'),(2,1,24000,'visa','2019-01-20'),(3,2,10000,'cash','2018-12-01'),(4,2,10000,'cash','2018-12-08'),(5,3,16000,'paytm','2018-11-24'),(6,4,12000,'cash','2019-02-25'),(7,6,12000,'mastercard','2019-04-01'),(8,7,20000,'visa','2018-12-31'),(9,7,10000,'visa','2019-01-01'),(10,7,6000,'visa','2019-01-01'),(11,8,12000,'paytm','2019-02-25'),(12,9,20000,'mastercard','2018-12-15'),(13,10,24000,'cash','2019-03-20');
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rooms` (
  `roomID` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `pricePerNight` smallint(5) NOT NULL,
  `bedTotal` int(1) NOT NULL,
  `roomNumber` int(3) NOT NULL,
  `hotelName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `booking` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`roomID`),
  KEY `hotelName` (`hotelName`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hotelName`) REFERENCES `hotels` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('EA11','Super Deluxe',20000,4,11,'Elder Aegis',NULL),('EA12','Deluxe',16000,3,12,'Elder Aegis',1),('EA13','Double Suite',12000,2,13,'Elder Aegis',NULL),('EA14','Double Suite',12000,2,14,'Elder Aegis',NULL),('EA15','Single Suite',8000,1,15,'Elder Aegis',1),('GR11','Presidential',30000,6,11,'Golden Ribbon',5),('GR12','Super Deluxe',20000,4,12,'Golden Ribbon',9),('GR13','Super Deluxe',20000,4,13,'Golden Ribbon',NULL),('GR14','Deluxe',16000,3,14,'Golden Ribbon',NULL),('LG11','Deluxe',16000,3,11,'Lunar Garden',3),('LG12','Double Suite',12000,2,12,'Lunar Garden',10),('LG13','Double Suite',12000,2,13,'Lunar Garden',10),('LG14','Double Suite',12000,2,14,'Lunar Garden',NULL),('LG15','Double Suite',12000,2,15,'Lunar Garden',NULL),('M11','Super Deluxe',20000,4,11,'Moonlight',2),('M12','Super Deluxe',20000,4,12,'Moonlight',NULL),('M13','Double Suite',12000,2,13,'Moonlight',8),('M14','Double Suite',12000,2,14,'Moonlight',NULL),('M15','Single Suite',8000,1,15,'Moonlight',NULL),('M16','Single Suite',8000,1,16,'Moonlight',NULL),('N11','Super Deluxe',20000,4,11,'Nourish',NULL),('N12','Deluxe',16000,3,12,'Nourish',NULL),('N13','Double Suite',12000,2,13,'Nourish',4),('N14','Double Suite',12000,2,14,'Nourish',NULL),('SS11','Super Deluxe',20000,4,11,'Sublime Sierra',7),('SS12','Deluxe',16000,3,12,'Sublime Sierra',7),('SS13','Double Suite',12000,2,13,'Sublime Sierra',6),('SS14','Double Suite',12000,2,14,'Sublime Sierra',NULL),('SS15','Single Suite',8000,1,15,'Sublime Sierra',NULL),('SS16','Single Suite',8000,1,16,'Sublime Sierra',NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-14 23:20:36
