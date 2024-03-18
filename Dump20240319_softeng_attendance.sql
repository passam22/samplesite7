CREATE DATABASE  IF NOT EXISTS `softeng` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `softeng`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: softeng
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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `signin_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,4,'2024-02-29 02:27:33'),(2,4,'2024-02-29 02:43:02'),(3,4,'2024-02-29 10:49:40');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `civil_status` varchar(45) DEFAULT NULL,
  `cell_number` varchar(15) DEFAULT NULL,
  `municipality` varchar(45) DEFAULT NULL,
  `barangay` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `member_since` datetime DEFAULT NULL,
  `client_photo` varchar(45) DEFAULT 'blank.png',
  `date_encoded` datetime DEFAULT NULL,
  `encoded_by` varchar(45) DEFAULT NULL,
  `account_no` varchar(15) DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `password` varchar(45) DEFAULT NULL,
  `gross_income` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14069 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Sanchez','Renato','A','2010-10-05','Single','09988858302','Prieto Diaz','Calao','Purok 1','4711','2021-10-06 23:28:12','1.jpg','2021-11-03 14:16:16','admin','1234567',0,'sanchez12345',12000),(2,'Sanchez','Ricardo','Manalac','1990-10-02','Single','09232565412','Gubat','Pinontingan','Purok 1','4710','2021-10-07 03:56:12','2.jpg','2021-11-03 14:16:09','admin','1254785',0,'sanchez12345',13500),(3,'Macapagal','Ricky Joseph','Datu','1990-05-25','Married','09632541254','Barcelona','Alegria','Purok 3','4712','2021-10-07 04:01:27','3.jpg','2021-11-03 14:16:01','admin','2365214',0,'macapagal12345',25000),(4,'Jardin','Ma. Joy','Santos','1990-10-15','Single','09865623230','Gubat','Balud Del Sur','Purok 2','4710','2021-11-03 15:18:04','4.jpg','2021-11-03 15:18:04','admin','1452682',0,'jardin12345',32000),(5,'Dioneda','Carlos','Agassi','1990-05-10','Married','09865652232','Prieto Diaz','Carayat','Purok 4','4711','2021-11-03 15:22:12','5.jpg','2021-11-03 15:22:12','admin','8965523',0,'dioneda12345',15000),(6,'Dio','Ma. Joy','De Guzman','1995-04-15','Widowed','0986565323','Pilar','Abucay','Purok 4','4714','2021-11-03 15:25:23','6.jpg','2021-11-03 15:25:23','admin','5698989',0,'dio12345',16200),(7,'Jarabelo','Jun jun','Laguidao','1990-05-10','Married','09988858302','Donsol','Alin','Purok 7','4715','2021-11-03 15:27:31','7.jpg','2021-11-03 15:27:31','admin','5656565',0,'jarabelo12345',14800),(8,'Dealca','Janice','Cuangco','1995-01-18','Single','09988858302','Donsol','Banban','Purok 2','4715','2021-11-03 15:41:34','8.jpg','2021-11-03 15:41:34','admin','5656523',0,'dealca12345',19700),(9,'Jalmasco','Jurie Ann','Santobal','1996-12-14','Single','09856565323','Donsol','Banuang Gurang','Purok 2','4715','2021-11-03 15:44:01','1.jpg','2021-11-03 15:44:01','admin','5989899',0,'jalmasco12345',25900),(10,'Gomez','Danilo','S','1996-12-26','Single','09845456562','Prieto Diaz','Calao','Purok 3','4711','2021-11-03 15:50:14','2.jpg','2021-11-03 15:50:14','admin','5656323',0,'gomez12345',90000),(11,'Laravilla','Joy Anne','Santos','1995-06-08','Single','09865656533','Castilla','Dinapa','Purok 2','4713','2021-11-03 15:53:26','3.jpg','2021-11-03 15:53:26','admin','5659898',0,'laravilla12345',55000),(15,'Miradilla','Janice Joy','Santos','2003-12-12','Single','09988858302','Castilla','Buenavista','Purok 2','4713','2021-11-03 16:02:49','4.jpg','2021-11-03 16:02:49','admin','3343334',0,'miradilla12345',38000),(16,'Chavez','Jaira Mara','Santos','2001-03-12','Single','09205017392','Prieto Diaz','Carayat','Purok 3','4711','2021-11-03 16:07:54','5.jpg','2021-11-03 16:07:54','admin','3434333',0,'chavez12345',12000),(17,'Dealca','Rico John','Santos','1995-07-08','Single','09988858302','Donsol','Banban','Purok 3','4715','2021-11-03 16:14:41','6.jpg','2021-11-03 16:14:41','admin','3433444',0,'dealca12345',95000),(18,'Espinola','Christine Joy','Jardin','2001-12-15','Single','09988858302','Castilla','Bonga','Purok 3','4713','2021-11-03 16:17:56','7.jpg','2021-11-03 16:17:56','admin','3433344',0,'espinola12345',8000),(19,'Bragais','Rosalinda','Jardin','1996-05-12','Single','09988858302','Donsol','Banban','PUrok 3','4715','2021-11-03 16:22:05','8.jpg','2021-11-03 16:23:33','admin','3435654',0,'bragais12345',37800),(14038,'Manzanilla','Mariano','T','1997-05-14','Married','09855663322','Gubat','Buenavista','Purok 2','4713','2021-11-03 16:22:05','1.jpg','2021-11-03 16:23:33','admin','2523423',0,'manzanilla12345',12000),(14039,'Dela Cruz','Rico','S','1992-05-12','Married','09635633232','Sorsogon City','Sampaloc','Purok 2','4713','2021-11-03 16:22:05','2.jpg','2021-11-03 16:23:33','admin','2245242',0,'dela cruz12345',85000),(14040,'Jalmanzar','Janus','D','1996-02-11','Married','09856532323','Sorsogon City','Pangpang','Purok 2','4713','2021-11-03 16:22:05','3.jpg','2021-11-03 16:23:33','admin','2345234',0,'jalmanzar12345',95000),(14041,'Lacdang','Ma. Sofia','A','1996-03-10','Married','09656532325','Sorsogon City','Bibincahan','Purok 2','4713','2021-11-03 16:22:05','4.jpg','2021-11-03 16:23:33','admin','2345242',0,'lacdang12345',22600),(14042,'Del Rosario','Janella','S','1996-04-12','Married','09865623235','Sorsogon City','Piot','Purok 2','4713','2021-11-03 16:22:05','5.jpg','2021-11-03 16:23:33','admin','3545455',0,'del rosario12345',25333),(14062,'def','abc',NULL,NULL,NULL,NULL,'sss',NULL,NULL,NULL,NULL,'1707187485.jpg',NULL,NULL,NULL,0,NULL,0),(14063,'def','abc',NULL,NULL,NULL,NULL,'sss',NULL,NULL,NULL,NULL,'1707187546.jpg',NULL,NULL,NULL,0,NULL,0),(14064,'def','abc',NULL,NULL,NULL,NULL,'dfd',NULL,NULL,NULL,NULL,'1707187566.jpg',NULL,NULL,NULL,0,NULL,0),(14065,'def','abc',NULL,NULL,NULL,NULL,'dfd',NULL,NULL,NULL,NULL,'1707187588.jpg',NULL,NULL,NULL,0,NULL,0),(14066,'def','abc',NULL,NULL,NULL,NULL,'dfd',NULL,NULL,NULL,NULL,'1707187755.jpg',NULL,NULL,NULL,0,NULL,0),(14067,'def','abc',NULL,NULL,NULL,NULL,'dfd',NULL,NULL,NULL,NULL,'1707187894.jpg',NULL,NULL,NULL,0,NULL,0),(14068,'def','abc',NULL,NULL,NULL,NULL,'dfd',NULL,NULL,NULL,NULL,'1707188157.jpg',NULL,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'softeng'
--

--
-- Dumping routines for database 'softeng'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19  4:32:21
