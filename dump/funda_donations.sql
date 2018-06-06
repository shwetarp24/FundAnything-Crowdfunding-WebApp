-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: funda
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `DonID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectID` int(11) NOT NULL,
  `AmountDonated` decimal(10,0) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DonID`),
  KEY `FK_Projid` (`ProjectID`),
  KEY `FK_Email2` (`Email`),
  CONSTRAINT `FK_Email2` FOREIGN KEY (`Email`) REFERENCES `fuser` (`Email`),
  CONSTRAINT `FK_Projid` FOREIGN KEY (`ProjectID`) REFERENCES `campaign` (`ProjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO donations VALUES (1,1,10,'spatil29@uncc.edu'),(2,2,20,'jsmith@gmail.com'),(3,3,30,'spatil29@uncc.edu'),(4,4,50,'jsmith@gmail.com'),(5,5,60,'spatil29@uncc.edu'),(6,10,100,'andi@gmail.com'),(7,4,20,'andi@gmail.com'),(8,6,40,'jsmith@gmail.com'),(9,7,100,'jsmith@gmail.com'),(10,13,300,'spatil29@uncc.edu'),(12,8,30,'jsmith@gmail.com'),(13,7,50,'andi@gmail.com'),(14,6,90,'spatil29@uncc.edu'),(15,13,50,'spatil29@uncc.edu'),(16,13,50,'spatil29@uncc.edu'),(17,13,1112,'spatil29@uncc.edu'),(18,13,1112,'spatil29@uncc.edu'),(19,13,29,'spatil29@uncc.edu'),(20,13,29,'spatil29@uncc.edu'),(21,13,30,'spatil29@uncc.edu'),(22,7,786,'spatil29@uncc.edu'),(23,17,60,'spatil29@uncc.edu');
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-04 17:56:19
