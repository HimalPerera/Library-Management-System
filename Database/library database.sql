-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: library_database
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `Name` varchar(50) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `SQuestion` varchar(45) NOT NULL,
  `Answer` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Mahesh','mahesh','1234','What is the name of the school you went ?','Thurstan College'),('Name1','Username1','Password1','What is the name of the school you went ?','School1');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Lending_Period` int(11) NOT NULL,
  `Fine` double NOT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Book1','Author1',100,'Lending',7,10),(2,'Book2','Author2',200,'Reference',0,0),(3,'Book3','Author3',300,'Lending',8,15),(4,'Book4','Author4',400,'Lending',10,20),(5,'Book5','Author5',500,'Lending',15,25),(6,'Book6','Author6',600,'Lending',5,12),(7,'Book7','Author7',700,'Lending',3,14);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued_book`
--

DROP TABLE IF EXISTS `issued_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issued_book` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `NoOfPages` int(11) NOT NULL,
  `Lending_Period` int(11) NOT NULL,
  `Fine` double NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Admission_Number` varchar(45) NOT NULL,
  `Faculty` varchar(45) NOT NULL,
  `Year` int(11) NOT NULL,
  `Issued_Date` date NOT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_book`
--

LOCK TABLES `issued_book` WRITE;
/*!40000 ALTER TABLE `issued_book` DISABLE KEYS */;
INSERT INTO `issued_book` VALUES (1,'Book1','Author1',100,7,10,1,'Student1','AdmissionNumber1','Applied Science',2,'2019-05-01'),(4,'Book4','Author4',400,10,20,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-03'),(5,'Book5','Author5',500,15,25,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-03'),(6,'Book6','Author6',600,5,12,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-02');
/*!40000 ALTER TABLE `issued_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returned_book`
--

DROP TABLE IF EXISTS `returned_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `returned_book` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `NoOfPages` int(11) NOT NULL,
  `Lending_Period` int(11) NOT NULL,
  `Fine_Per_Day` double NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Admission_Number` varchar(45) NOT NULL,
  `Faculty` varchar(45) NOT NULL,
  `Year` int(11) NOT NULL,
  `Issued_Date` date NOT NULL,
  `Returned_Date` date NOT NULL,
  `NoOfDelayed_Days` int(11) NOT NULL,
  `Paid_Fine` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returned_book`
--

LOCK TABLES `returned_book` WRITE;
/*!40000 ALTER TABLE `returned_book` DISABLE KEYS */;
INSERT INTO `returned_book` VALUES (3,'Book3','Author3',300,8,15,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-02','2019-05-12',2,30),(6,'Book6','Author6',600,5,12,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-03','2019-05-12',4,48),(6,'Book6','Author6',600,5,12,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-03','2019-05-12',4,48),(7,'Book7','Author7',700,3,14,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-04','2019-05-08',1,14),(7,'Book7','Author7',700,3,14,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-04','2019-05-08',1,14),(7,'Book7','Author7',700,3,14,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-07','2019-05-12',2,28),(7,'Book7','Author7',700,3,14,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-07','2019-05-12',2,28),(7,'Book7','Author7',700,3,14,3,'Student3','AdmissionNumber3','Applied Science',3,'2019-05-07','2019-05-11',1,14);
/*!40000 ALTER TABLE `returned_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Admission_Number` varchar(45) NOT NULL,
  `Faculty` varchar(45) NOT NULL,
  `Year` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Student1','AdmissionNumber1','Applied Science',2),(2,'Student2','AdmissionNumber2','Medical Science',3),(3,'Student3','AdmissionNumber3','Applied Science',3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 23:43:25
