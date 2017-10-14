-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: mockHMS
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `pincode` char(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`pincode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('110029','New Delhi','Delhi'),('247667','Roorkee','Uttarakhand'),('248001','Dehradun','Uttarakhand'),('249407','Haridwar','Uttarakhand'),('800020','Patna','Bihar');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Appointment` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `prescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES (1,'2017-10-12','Headache','Cyanide'),(2,'2017-10-13','Loose Motion','Paracetamol'),(3,'2017-10-14','Insomnia','Don\'t know any medicine'),(4,'2017-10-14','Chest Pain','Moov');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `fee` int(11) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `certificate_url` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `worktime_slot` int(11) DEFAULT NULL,
  `h_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `h_id` (`h_id`),
  CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `Hospital` (`h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Anjula Roy','Gynacologist',100,2.00,'URL_CERTI','URL_IMAGE','9557391575',15001700,1),(2,'Akhilesh Kumar','Medicine',120,3.20,'XYZ','ABC','9897359594',8001000,2),(3,'Alok Anand','Audiologist',150,4.10,'123','HelloWorld!','7454968460',10001200,3),(4,'Vibhu Sharma','Psychiatrist',500,3.60,'WTF','BYE','9410679047',12001400,4);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hospital`
--

DROP TABLE IF EXISTS `Hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hospital` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_name` varchar(20) NOT NULL,
  `pincode` char(6) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `website` varchar(30) DEFAULT NULL,
  `facility` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`h_id`),
  KEY `pincode` (`pincode`),
  CONSTRAINT `Hospital_ibfk_1` FOREIGN KEY (`pincode`) REFERENCES `Address` (`pincode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hospital`
--

LOCK TABLES `Hospital` WRITE;
/*!40000 ALTER TABLE `Hospital` DISABLE KEYS */;
INSERT INTO `Hospital` VALUES (1,'IIT Hospital','247667','9412103621','website-link','Pathology Lab'),(2,'Saksham Hospital','248001','9837121655','website-link','X-Ray'),(3,'AIIMS, Delhi','110029','9754317910','website-link','Physiotherapy Unit'),(4,'Tulsi Hospital','249407','9719438333','website-random','CT Scan');
/*!40000 ALTER TABLE `Hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login_d`
--

DROP TABLE IF EXISTS `Login_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login_d` (
  `d_email_id` varchar(50) NOT NULL,
  `d_password` varchar(50) NOT NULL,
  `d_id` int(11) NOT NULL,
  PRIMARY KEY (`d_email_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `Login_d_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `Doctor` (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login_d`
--

LOCK TABLES `Login_d` WRITE;
/*!40000 ALTER TABLE `Login_d` DISABLE KEYS */;
INSERT INTO `Login_d` VALUES ('akhkumar@hoho.com','XYZ',2),('anjularoy@dummymail.com','ABC',1),('princealok@gmail.com','WXY',3),('vibhugod@live.com','MNO',4);
/*!40000 ALTER TABLE `Login_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login_p`
--

DROP TABLE IF EXISTS `Login_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login_p` (
  `p_email_id` varchar(50) NOT NULL,
  `p_password` varchar(50) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`p_email_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `Login_p_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `Patient` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login_p`
--

LOCK TABLES `Login_p` WRITE;
/*!40000 ALTER TABLE `Login_p` DISABLE KEYS */;
INSERT INTO `Login_p` VALUES ('abhisheikh8797@gmail.com','God knows',5),('bharatraj974@gmail.com','Hi',2),('purushottamabhisheikh@gmail.com','Bye',3),('ramcrahul@hotmail.com','Why am I still here?',4);
/*!40000 ALTER TABLE `Login_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meet`
--

DROP TABLE IF EXISTS `Meet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Meet` (
  `a_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`,`p_id`,`d_id`),
  KEY `p_id` (`p_id`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `Meet_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `Appointment` (`a_id`),
  CONSTRAINT `Meet_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `Patient` (`p_id`),
  CONSTRAINT `Meet_ibfk_3` FOREIGN KEY (`d_id`) REFERENCES `Doctor` (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meet`
--

LOCK TABLES `Meet` WRITE;
/*!40000 ALTER TABLE `Meet` DISABLE KEYS */;
INSERT INTO `Meet` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4);
/*!40000 ALTER TABLE `Meet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `pincode` char(6) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `pincode` (`pincode`),
  CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`pincode`) REFERENCES `Address` (`pincode`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (2,'Bharat','1997-11-09','M','8938894970','NA','247667'),(3,'Purushottam','1997-02-12','M','8797319775','NA','247667'),(4,'Rahul Ram','1997-10-05','M','9504251688','NA','247667'),(5,'Ashok Kumar','1963-06-01','M','9835095925','NA','800020');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-15  1:47:07
