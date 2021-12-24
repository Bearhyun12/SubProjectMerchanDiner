-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: merchan_diner
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `STORE_NUM` int NOT NULL AUTO_INCREMENT,
  `STORE_NAME` varchar(45) NOT NULL,
  `STORE_ADDRESS` varchar(45) DEFAULT NULL,
  `TYPE` varchar(45) DEFAULT NULL,
  `LONGITUDE` varchar(50) DEFAULT NULL,
  `LATITUDE` varchar(50) DEFAULT NULL,
  `HASHTAG` varchar(45) DEFAULT NULL,
  `ID` varchar(12) NOT NULL,
  PRIMARY KEY (`STORE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'제육맛집','서울시','korean',NULL,NULL,NULL,''),(6,'김치볶음','서울시 강남구쓰','chinese',NULL,NULL,NULL,''),(7,'배가너무고파','동해','korean',NULL,NULL,NULL,''),(8,'한식','서울시','westen',NULL,NULL,NULL,'samsung'),(12,'맘모스 코히','강남구 13번출구','westen',NULL,NULL,NULL,'samsung'),(14,'아리차이','서울 관악구 신림동길 4',NULL,NULL,NULL,'짜장면맛집','samsung'),(15,'불삼시대','서울 관악구 신림로65길 24',NULL,NULL,NULL,'무한리필','samsung');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `ID` varchar(50) NOT NULL,
  `STORE_NUM` int NOT NULL,
  `CONTENTS` text NOT NULL,
  `REGDATE` timestamp NULL DEFAULT NULL,
  `TASTE_SALTY` varchar(5) DEFAULT NULL,
  `TASTE_SWEETY` varchar(5) DEFAULT NULL,
  `TASTE_SPICY` varchar(5) DEFAULT NULL,
  `COMMENT_NUM` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`COMMENT_NUM`),
  KEY `fk_comment_customer1_idx` (`ID`),
  KEY `fk_comment_board1_idx` (`STORE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('samsung',8,'이제 타임스탬프도 된답니다 핳ㅎ','2021-10-21 14:30:48',NULL,NULL,NULL,1),('댓글기능 성공했습니당',8,'samsung',NULL,NULL,NULL,NULL,2),('손소독제',6,'냄새나',NULL,NULL,NULL,NULL,3),('손소독제6',6,'냄새가 또나',NULL,NULL,NULL,NULL,4),('손소독제7',6,'손소독제 쓰세요',NULL,NULL,NULL,NULL,5),('실비아님',6,'으아라라',NULL,NULL,NULL,NULL,6),('이제 댓글도 저장된다아',8,'samsung','2021-10-21 14:27:36',NULL,NULL,NULL,7),('정현석',6,'손소독제',NULL,NULL,NULL,NULL,8),('samsung',8,'중복 댓글도 달립니다 ㅎㅎ','2021-10-21 14:57:46',NULL,NULL,NULL,9),('samsung',8,'배고파','2021-10-21 15:56:59',NULL,NULL,NULL,10),('samsung',8,'손손손','2021-10-21 16:20:07',NULL,NULL,NULL,11),('samsung',8,'댓그르르르','2021-10-22 00:34:57',NULL,NULL,NULL,12);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` varchar(12) NOT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `NICKNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `SIGNUP_PATH` varchar(30) DEFAULT NULL,
  `PI_ACCEPT` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('samsung','1111','이재용','쁘띠재용',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_board`
--

DROP TABLE IF EXISTS `customer_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_board` (
  `ID` varchar(12) NOT NULL,
  `STORE_NUM` int NOT NULL,
  `BOOKMARK` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`,`STORE_NUM`),
  KEY `fk_customer-board_customer1_idx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_board`
--

LOCK TABLES `customer_board` WRITE;
/*!40000 ALTER TABLE `customer_board` DISABLE KEYS */;
INSERT INTO `customer_board` VALUES ('samsung',1,NULL);
/*!40000 ALTER TABLE `customer_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_detail`
--

DROP TABLE IF EXISTS `customer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_detail` (
  `ID` varchar(12) NOT NULL,
  `TASTE_SALTY` varchar(5) DEFAULT NULL,
  `TASTE_SWEETY` varchar(5) DEFAULT NULL,
  `TASTE_SPICY` varchar(5) DEFAULT NULL,
  `PREFER_TYPE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_customer-detail_customer1_idx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_detail`
--

LOCK TABLES `customer_detail` WRITE;
/*!40000 ALTER TABLE `customer_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtag`
--

DROP TABLE IF EXISTS `hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtag` (
  `TAG_NAME` varchar(45) NOT NULL,
  `STORE_NUM` int NOT NULL,
  PRIMARY KEY (`TAG_NAME`,`STORE_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtag`
--

LOCK TABLES `hashtag` WRITE;
/*!40000 ALTER TABLE `hashtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashtag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-22  9:38:35
