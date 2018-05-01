-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: wms
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `c_ID` int(100) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) DEFAULT NULL,
  `address` text,
  `mob_num` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'miley','guwahati,panbazar','9864532467','mil@gmail.com'),(2,'LILY','guwahati,paltanbazar','9864532489','lily@gmail.com'),(3,'jason','guwahati,fancy bazar','9864532757','jas@gmail.com'),(4,'HFYJGU','YGUKG','76896795465','JGHJG@FTG.com'),(5,'uyfut','fyf','768575778877','dahgah@htt.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `I_ID` int(100) NOT NULL AUTO_INCREMENT,
  `capacity` float(6,2) DEFAULT NULL,
  `avail` float(6,2) DEFAULT NULL,
  `remain` int(255) DEFAULT NULL,
  `p_type` varchar(30) DEFAULT NULL,
  `loc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`I_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,500.00,500.00,50,'tea','sec1'),(2,550.40,50.50,332,'electronics','sec2'),(3,100.00,100.00,10,'cloth','sec3'),(4,100.00,100.00,80,'coffee','sec4');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `E_ID` int(100) NOT NULL AUTO_INCREMENT,
  `E_type` varchar(20) DEFAULT NULL,
  `E_name` varchar(50) DEFAULT NULL,
  `E_password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`E_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Manager','John Miller','123john'),(2,'Picker','James Stuart','123james'),(3,'Packer','Ashton','123ash'),(4,'Receiver','Ricky Peterson','123ricky');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `o_ID` int(100) NOT NULL AUTO_INCREMENT,
  `quantity` int(255) DEFAULT NULL,
  `prod_name` varchar(30) DEFAULT NULL,
  `prod_type` varchar(50) DEFAULT NULL,
  `c_id` int(100) DEFAULT NULL,
  `recv` date DEFAULT NULL,
  `dispatch` date DEFAULT NULL,
  `ship_address` text,
  PRIMARY KEY (`o_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,40,'TATA','tea',1,'2018-01-20','2018-01-22','uzan bazar'),(2,5,'LG Tv','electronics',2,'2018-02-20','2018-03-04','lakhtokia'),(3,10,'paplum dress','cloth',3,'2018-03-08','2018-03-19','zoo road'),(4,1,'tea','tea',4,'2018-01-02','2018-02-12','HFHJF'),(5,100,'dghfhy','electronics',5,'2018-01-02','2018-02-12','hfhf');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `s_ID` int(100) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) DEFAULT NULL,
  `s_mob_num` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `prod_name` varchar(50) DEFAULT NULL,
  `prod_type` varchar(30) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `supp_ord` date DEFAULT NULL,
  `supp` date DEFAULT NULL,
  `inv_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`s_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'JAMES','7002145346','ajm@gmail.com','TATA','tea',30,'2018-01-01','2018-01-10',1),(2,'Tom','7102145346','tom@gmail.com','TV','electronics',10,'2018-03-01','2018-03-06',2),(3,'sia','7002155346','sia@gmail.com','skirt','cloth',50,'2018-02-08','2018-02-15',3),(4,'rohit','88761732543','dahgah@htt.com','tea','tea',21,'2018-02-08','2018-03-10',1),(5,'jfj','8777575','dahgah@htt.com','tea','tea',50,'2018-03-01','2018-03-10',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 13:36:37
