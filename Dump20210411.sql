CREATE DATABASE  IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bank`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `goivay`
--

DROP TABLE IF EXISTS `goivay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goivay` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `loaigoivayID` int NOT NULL,
  `Tengoi` varchar(255) DEFAULT NULL,
  `Laisuat` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKgoivayAndLoaigoivay` (`loaigoivayID`),
  CONSTRAINT `FKgoivayAndLoaigoivay` FOREIGN KEY (`loaigoivayID`) REFERENCES `loaigoivay` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goivay`
--

LOCK TABLES `goivay` WRITE;
/*!40000 ALTER TABLE `goivay` DISABLE KEYS */;
INSERT INTO `goivay` VALUES (1,1,'vay tin chap IT',0.06),(2,1,'vay tin chap sinh vien',0.05),(3,2,'vay the chap nha',0.08);
/*!40000 ALTER TABLE `goivay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hopdongvay`
--

DROP TABLE IF EXISTS `hopdongvay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hopdongvay` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `goivayID` int NOT NULL,
  `userID` int NOT NULL,
  `Ngayvay` date DEFAULT NULL,
  `Han` date DEFAULT NULL,
  `Trangthai` varchar(255) DEFAULT NULL,
  `TienVay` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKhopdongvayAndGoivay` (`goivayID`),
  KEY `FKhopdongvayAndUser` (`userID`),
  CONSTRAINT `FKhopdongvayAndGoivay` FOREIGN KEY (`goivayID`) REFERENCES `goivay` (`ID`),
  CONSTRAINT `FKhopdongvayAndUser` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hopdongvay`
--

LOCK TABLES `hopdongvay` WRITE;
/*!40000 ALTER TABLE `hopdongvay` DISABLE KEYS */;
INSERT INTO `hopdongvay` VALUES (1,1,2,'2021-02-04','2021-04-03','chua duyet',5000000),(2,1,3,'2021-01-03','2021-05-03','chua duyet',6000000),(3,3,2,'2020-04-03','2021-04-03','chua duyet',990000000);
/*!40000 ALTER TABLE `hopdongvay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaigoivay`
--

DROP TABLE IF EXISTS `loaigoivay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaigoivay` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaigoivay`
--

LOCK TABLES `loaigoivay` WRITE;
/*!40000 ALTER TABLE `loaigoivay` DISABLE KEYS */;
INSERT INTO `loaigoivay` VALUES (1,'vay tin chap'),(2,'vay the chap');
/*!40000 ALTER TABLE `loaigoivay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunoptien`
--

DROP TABLE IF EXISTS `phieunoptien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunoptien` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `hopdongvayID` int NOT NULL,
  `Ngaydong` date DEFAULT NULL,
  `Tienlai` int DEFAULT NULL,
  `Tiengoc` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKphieunoptienAndHopdongvay` (`hopdongvayID`),
  CONSTRAINT `FKphieunoptienAndHopdongvay` FOREIGN KEY (`hopdongvayID`) REFERENCES `hopdongvay` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunoptien`
--

LOCK TABLES `phieunoptien` WRITE;
/*!40000 ALTER TABLE `phieunoptien` DISABLE KEYS */;
INSERT INTO `phieunoptien` VALUES (1,1,'2021-04-05',10,100000),(2,3,'2021-04-05',13,555555);
/*!40000 ALTER TABLE `phieunoptien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokhai`
--

DROP TABLE IF EXISTS `tokhai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokhai` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `Nghenghiep` varchar(255) DEFAULT NULL,
  `Chucvu` varchar(255) DEFAULT NULL,
  `Diachicongty` varchar(255) DEFAULT NULL,
  `Tencongty` varchar(255) DEFAULT NULL,
  `Mucluong` varchar(255) DEFAULT NULL,
  `Chitieuhangthang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKtokhaiAndUser` (`userID`),
  CONSTRAINT `FKtokhaiAndUser` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokhai`
--

LOCK TABLES `tokhai` WRITE;
/*!40000 ALTER TABLE `tokhai` DISABLE KEYS */;
/*!40000 ALTER TABLE `tokhai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Sdt` int DEFAULT NULL,
  `Cmdd` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Diachi` varchar(255) DEFAULT NULL,
  `Hoten` varchar(255) DEFAULT NULL,
  `Ngaysinh` date DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,978878439,'001099011185','sainttroll99@gmail.com','Soc Son - Ha Noi','Vu Chien Thang','1999-02-05','thangvu99','thang12345','admin'),(2,382999209,'001088011195','toanta@gmail.com','Doi Can - Ha Noi','Ta Xuan Toan','1999-02-24','toanta99','toan12345','cus'),(3,988944109,'00102345034','tuyentran@gmail.com','My Loc - Nam Dinh','Tran Sy Tuyen','1999-05-30','tuyentran99','tuyen12345','cus');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bank'
--

--
-- Dumping routines for database 'bank'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11  9:46:00
