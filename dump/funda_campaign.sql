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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `ProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjName` varchar(50) DEFAULT NULL,
  `Projcategory` varchar(50) NOT NULL DEFAULT '',
  `Campaigndetails` varchar(500) NOT NULL DEFAULT '',
  `Fundsneeded` decimal(10,2) NOT NULL DEFAULT '0.00',
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO campaign VALUES (1,'Crafty','Arts and Crafts','86 (the band) - True Life Songs and Pictures',10000.00,'spatil29@uncc.edu'),(2,'Miller\'s Instistute of Learning','Education','Paddlefoot - The first CD',15000.00,'jsmith@gmail.com'),(3,'Banking for Blind','IT','Paddlefoot - The second CD',12000.00,'spatil29@uncc.edu'),(4,'Wheels on the go','Engineering','Joe Rut - Genuine Wood Grained Finish',16750.00,'jsmith@gmail.com'),(5,'Aromatic you','Fragrances','Aroma Therapy is therapeutic treatment with aromatic essential oils. It can be used by anybody for physical, physiological, Mental, spiritual well being daily or as and when required.',20000.00,'jsmith@gmail.com'),(6,'beautytips','Beauty','Creating a beauty blog is an awesome idea for any passionate individual who have sufficient knowledge about the industry and product. With very less investment you can start of your own. Selecting the niche and creating info-based quality article are key factors in getting success.',12000.00,'spatil29@uncc.edu'),(7,'We the planners','Home','Decoration  and party planning whenever and wherever necassary',14250.00,'spatil29@uncc.edu'),(8,'Garden packed','Garden','We sell “garden packs” prepared for beginners, especially those who want to get into container gardening. If you have a green thumb and love planting, this would be a fun and rewarding business to get into.',17000.00,NULL),(9,'Piano','Art','PianoLessons',2300.00,NULL),(10,'Cello','Music','CelloConcerts',1200.00,'spatil29@uncc.edu'),(11,'HipHop','Dance','DanceClasses',4500.00,'jsmith@gmail.com'),(12,'abc','art','abcdefs',2378.00,''),(13,'SwimmingPool','Sport','BuildaPool',23678.00,'jsmith@gmail.com'),(14,'tennis','sport','tenniscourt',4500.00,'brose@yahoo.com'),(15,'CaneCrafts','Arts','BuildCraftsforBlind',8700.00,'andi@gmail.com'),(16,'weer','er','oibin',3000.00,'andi@gmail.com'),(17,'vineyards','wine','winetasting',90000.00,'andi@gmail.com'),(18,'mil','yvufy','iuug ytdyo',1000.00,NULL),(19,'jhfdv ','kfjduvb','nfvb',2300.00,'spatil29@uncc.edu');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
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
