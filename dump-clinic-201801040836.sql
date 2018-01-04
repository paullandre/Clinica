-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: clinic
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(250) NOT NULL,
  `mName` varchar(250) NOT NULL,
  `lName` varchar(250) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birth` datetime NOT NULL,
  `age` int(11) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `address` varchar(400) NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (61,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(62,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(63,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(64,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(65,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(66,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(67,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(68,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:53:18','2017-12-29 16:54:06'),(69,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 16:54:44','2017-12-29 16:54:44'),(70,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 17:11:51','2017-12-29 17:11:51'),(71,'Lolo','L','Thunder','Male','2017-12-29 00:00:00',200,'Filipino','Pluto',0,'2017-12-29 17:12:12','2017-12-29 17:12:12'),(72,'Kuplang','P','Pokwang','2','0000-00-00 00:00:00',23,'Filipino','Address',0,'2017-12-29 19:33:55','2017-12-29 19:33:55'),(73,'Kuplang','P','Pokwang','2','0000-00-00 00:00:00',23,'Filipino','Address',0,'2017-12-29 19:39:11','2017-12-29 19:39:11'),(74,'Kuplang','P','Pokwang','2','0000-00-00 00:00:00',23,'Filipino','Address',0,'2017-12-29 19:40:32','2017-12-29 19:40:32'),(75,'Kuplang','P','Pokwang','2','0000-00-00 00:00:00',23,'Filipino','Address',0,'2017-12-29 19:42:57','2017-12-29 19:42:57'),(76,'Prokopyo','T','Tiburcia','2','0000-00-00 00:00:00',10,'American','Tondo',0,'2017-12-29 19:44:02','2017-12-29 19:44:02'),(77,'asd','asd','klnjl','1','0000-00-00 00:00:00',50,'UOIHh','nijbjbjkb',0,'2017-12-29 19:46:32','2017-12-29 19:46:32'),(78,'asffff',' kn;oibiyh ','l;m\'lml','1','0000-00-00 00:00:00',30,'Filipino','Address',0,'2017-12-29 19:49:55','2017-12-29 19:49:55'),(79,'Palaka','D','Bakla','1','0000-00-00 00:00:00',15,'Armenian','Armania',0,'2017-12-29 19:51:37','2017-12-29 19:51:37'),(80,'Serious','N','Not','2','0000-00-00 00:00:00',500,'Nigerian','Nigeria',0,'2017-12-29 19:55:43','2017-12-29 19:55:43'),(81,'Last Record','T','This','1','0000-00-00 00:00:00',250,'Dutch','Netherlands',0,'2017-12-29 19:56:48','2017-12-29 19:56:48'),(82,'TEST','T','TESTSTEST','1','0000-00-00 00:00:00',20,'asjbhasbdh','blzhjbcjhasdv',0,'2017-12-29 20:17:38','2017-12-29 20:17:38'),(83,'asdasd','asdasda','asdasd','1','0000-00-00 00:00:00',50,'bhasdbyugw','ijajsbdiasd',0,'2017-12-29 20:29:38','2017-12-29 20:29:38'),(84,'asdasd','cbqygftqegf','bhlaslgshagfyuvq','1','0000-00-00 00:00:00',40,'kLNxjbsc','jbjbashbd',0,'2017-12-29 20:31:40','2017-12-29 20:31:40'),(85,'sdasd','bhjbvhjb','hvjhjvjh','1','0000-00-00 00:00:00',20,'joijlhj','jknkjbj',0,'2017-12-29 20:34:47','2017-12-29 20:34:47'),(86,'OLD','T','TESTAMENT','1','0000-00-00 00:00:00',20,'nayfbuf','ahbhbawd',0,'2017-12-29 20:38:02','2017-12-29 20:38:02'),(87,'basbdabsd','akjsbasbdjbasjd','PPPPALSAPLSPALS','1','2017-10-01 00:00:00',7,'NA','COM',0,'2017-12-29 20:40:43','2017-12-29 20:40:43'),(88,'PUKRAG','T','TANGA','1','2017-10-14 00:00:00',67,'NAT','GEO',0,'2017-12-29 20:43:36','2017-12-29 20:43:36'),(89,'STR','T','TIME','1','2017-05-01 00:00:00',20,'GEO','GOOGLE',0,'2017-12-29 20:45:28','2017-12-29 20:45:28'),(90,'SELECT','L','ALL','2','2017-12-05 00:00:00',22,'NANANA','COMCOMCOM',0,'2017-12-29 20:57:09','2017-12-29 20:57:09'),(93,'4TH PAGE','T','TEST','1','2018-01-01 00:00:00',1,'N','COMPLETE',0,'2018-01-03 12:53:44','2018-01-03 12:53:44'),(94,'4TH PAGE','T','TEST','1','2018-01-01 00:00:00',1,'N','COMPLETE',0,'2018-01-03 12:53:44','2018-01-03 12:53:44');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'clinic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-04  8:36:03
