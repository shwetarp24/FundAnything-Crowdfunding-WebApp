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
-- Table structure for table userprofile
--

DROP TABLE IF EXISTS userprofile;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE userprofile (
  Email varchar(50) NOT NULL,
  Interests varchar(100) DEFAULT NULL,
  Contactno varchar(50) DEFAULT NULL,
  AboutMe varchar(50) DEFAULT NULL,
  Profession varchar(50) DEFAULT NULL,
  CurrentRole varchar(10) DEFAULT NULL,
  PRIMARY KEY (Email),
  CONSTRAINT FK_Email3 FOREIGN KEY (Email) REFERENCES fuser (Email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table userprofile
--

LOCK TABLES userprofile WRITE;
/*!40000 ALTER TABLE userprofile DISABLE KEYS */;
INSERT INTO userprofile VALUES ('abc','Drawing, Painting','9809389809','ArtLover','Artist','Designer'),('akdu@uncc.edu','sjfhv','988768','hmdfv ','djhfvb','djfvhb'),('andi@gmail.com','Polo','8797689809','Teacher','teacher','teacher'),('brose@yahoo.com','Golf','5468798097','Sports lover','Doctor','Physician'),('jsmith@gmail.com','Karate','5467687980','Love Combat Sports','Scientist','CEO'),('meet@uthra.com','jsfhv','98789','jmhfv',' jvdfhb','ksjfbhv'),('p@b.com','jbhs','987867','kjxvjh ','msnf v','mxnv '),('spa@uncc.edu','sjvh','98093','skhfvb',' dfjhvb',' dkjhvb'),('spatil29@uncc.edu','Dance, Piiano','9809389810','GradStudent','Student','Student');
/*!40000 ALTER TABLE userprofile ENABLE KEYS */;
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
