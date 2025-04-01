CREATE DATABASE  IF NOT EXISTS `coorporative_society` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coorporative_society`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coorporative_society
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `dividend`
--

DROP TABLE IF EXISTS `dividend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dividend` (
  `dividend_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `Year` year NOT NULL,
  `dividend_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`dividend_id`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `fk_dividend_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dividend`
--

LOCK TABLES `dividend` WRITE;
/*!40000 ALTER TABLE `dividend` DISABLE KEYS */;
/*!40000 ALTER TABLE `dividend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dividend_based_on_loans`
--

DROP TABLE IF EXISTS `dividend_based_on_loans`;
/*!50001 DROP VIEW IF EXISTS `dividend_based_on_loans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dividend_based_on_loans` AS SELECT 
 1 AS `member_id`,
 1 AS `loan_dividend`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dividend_based_on_savings`
--

DROP TABLE IF EXISTS `dividend_based_on_savings`;
/*!50001 DROP VIEW IF EXISTS `dividend_based_on_savings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dividend_based_on_savings` AS SELECT 
 1 AS `member_id`,
 1 AS `savings_dividend`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `final_dividend_2024`
--

DROP TABLE IF EXISTS `final_dividend_2024`;
/*!50001 DROP VIEW IF EXISTS `final_dividend_2024`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `final_dividend_2024` AS SELECT 
 1 AS `member_id`,
 1 AS `savings_dividend`,
 1 AS `loan_dividend`,
 1 AS `net_dividend`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `income_id` int NOT NULL AUTO_INCREMENT,
  `Income_amount` decimal(10,2) NOT NULL,
  `date_recorded` date DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (78,90000.00,'2023-08-03'),(79,18000.00,'2023-10-05'),(80,30000.00,'2023-08-03'),(81,19200.00,'2023-11-07'),(82,12000.00,'2023-02-02'),(83,90000.00,'2023-07-06'),(85,66000.00,'2023-08-03'),(86,15000.00,'2023-08-03'),(87,12000.00,'2023-11-07'),(89,90000.00,'2023-03-02'),(90,28200.00,'2023-10-05'),(91,30000.00,'2022-11-03'),(92,58200.00,'2023-11-07'),(93,84000.00,'2023-07-06'),(94,90000.00,'2023-08-03'),(96,90000.00,'2023-11-02'),(97,72000.00,'2023-07-06'),(101,90000.00,'2024-01-04'),(102,90000.00,'2024-01-04'),(103,90000.00,'2024-01-04'),(104,90000.00,'2024-03-07'),(105,30000.00,'2024-03-07'),(106,36000.00,'2024-04-04'),(109,15600.00,'2024-05-02'),(110,36000.00,'2024-05-02'),(111,60000.00,'2024-05-02'),(112,72000.00,'2024-05-02'),(113,90000.00,'2024-05-02'),(114,90000.00,'2024-07-04'),(115,12000.00,'2024-08-01'),(116,90000.00,'2024-08-01'),(117,9000.00,'2024-08-01'),(118,31800.00,'2024-09-05'),(119,46800.00,'2024-09-05'),(120,90000.00,'2024-09-05'),(121,60000.00,'2024-09-05'),(122,44400.00,'2024-09-05'),(123,15000.00,'2024-10-03'),(124,90000.00,'2024-10-03'),(125,90000.00,'2024-10-03'),(126,90000.00,'2024-11-07'),(127,30000.00,'2024-11-07'),(129,90000.00,'2024-11-07'),(130,90000.00,'2024-11-07');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `loan_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `loan_amount` decimal(10,2) NOT NULL,
  `interest_amount` decimal(10,2) NOT NULL,
  `date_issued` date NOT NULL,
  `due_date` date NOT NULL,
  `loan_balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `member_id_idx` (`member_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_loans_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (75,5,1500000.00,90000.00,'2023-08-03','2024-06-03',0.00),(76,7,300000.00,18000.00,'2023-10-05','2024-08-05',0.00),(77,9,500000.00,30000.00,'2023-08-03','2024-06-03',0.00),(78,12,320000.00,19200.00,'2023-11-07','2024-09-07',0.00),(79,13,200000.00,12000.00,'2023-02-02','2023-12-02',0.00),(80,16,1500000.00,90000.00,'2023-07-06','2024-05-06',0.00),(82,18,1100000.00,66000.00,'2023-08-03','2024-06-03',0.00),(83,19,250000.00,15000.00,'2023-08-03','2024-06-03',0.00),(84,20,200000.00,12000.00,'2023-11-07','2024-09-07',20000.00),(85,21,1500000.00,90000.00,'2023-05-04','2024-03-04',0.00),(86,22,1500000.00,90000.00,'2023-03-02','2024-01-02',0.00),(87,23,470000.00,28200.00,'2023-10-05','2024-08-05',0.00),(88,24,500000.00,30000.00,'2022-11-03','2023-09-03',0.00),(89,27,970000.00,58200.00,'2023-11-07','2024-09-07',0.00),(90,28,1400000.00,84000.00,'2023-07-06','2024-05-06',0.00),(91,29,1500000.00,90000.00,'2023-08-03','2024-06-03',0.00),(92,30,1500000.00,90000.00,'2023-05-04','2024-03-04',0.00),(93,2,1500000.00,90000.00,'2023-11-02','2024-09-02',0.00),(94,10,1200000.00,72000.00,'2023-07-06','2024-05-06',0.00),(98,15,1500000.00,90000.00,'2024-01-04','2024-11-04',0.00),(99,3,1500000.00,90000.00,'2024-01-04','2024-11-04',0.00),(100,17,1500000.00,90000.00,'2024-01-04','2024-11-04',0.00),(101,22,1500000.00,90000.00,'2024-03-07','2025-01-07',1500000.00),(102,19,500000.00,30000.00,'2024-03-07','2025-01-07',160000.00),(103,6,600000.00,36000.00,'2024-04-04','2025-02-04',515000.00),(104,28,1500000.00,90000.00,'2024-05-02','2025-03-02',1500000.00),(106,13,260000.00,15600.00,'2024-05-02','2025-03-02',150000.00),(107,8,600000.00,36000.00,'2024-05-02','2025-03-02',450000.00),(108,10,1000000.00,60000.00,'2024-05-02','2025-03-02',720000.00),(109,9,1200000.00,72000.00,'2024-05-02','2025-03-02',450000.00),(110,29,1500000.00,90000.00,'2024-07-04','2025-05-04',1325000.00),(111,7,200000.00,12000.00,'2024-08-01','2025-06-01',40000.00),(112,5,1500000.00,90000.00,'2024-08-01','2025-06-01',1300000.00),(113,24,150000.00,9000.00,'2024-08-01','2025-06-01',100000.00),(114,12,530000.00,31800.00,'2024-09-05','2025-07-05',530000.00),(115,14,780000.00,46800.00,'2024-09-05','2025-07-05',680000.00),(116,16,1500000.00,90000.00,'2024-09-05','2025-07-05',1070000.00),(117,21,1000000.00,60000.00,'2024-09-05','2025-07-05',550000.00),(118,23,740000.00,44400.00,'2024-09-05','2025-07-05',740000.00),(119,26,250000.00,15000.00,'2024-10-03','2025-08-03',250000.00),(120,27,1500000.00,90000.00,'2024-10-03','2025-08-03',1100000.00),(121,15,1500000.00,90000.00,'2024-10-03','2025-08-03',1300000.00),(122,18,1500000.00,90000.00,'2024-11-07','2025-09-07',1500000.00),(123,20,500000.00,30000.00,'2024-11-07','2025-09-07',500000.00),(125,3,1500000.00,90000.00,'2024-11-07','2025-09-07',1350000.00),(126,30,1500000.00,90000.00,'2024-11-07','2025-09-07',1500000.00);
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `loans_BEFORE_INSERT` BEFORE INSERT ON `loans` FOR EACH ROW BEGIN
 INSERT INTO income (income_amount, date_recorded)
    VALUES (NEW.interest_amount, NEW.date_issued);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `loans_AFTER_DELETE` AFTER DELETE ON `loans` FOR EACH ROW BEGIN
 DELETE FROM income 
    WHERE income_amount = OLD.interest_amount 
      AND date_recorded = OLD.date_issued;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `role` enum('President','Treasurer','Financial Secretary','Secretary','Member') NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (2,'Treasurer'),(3,'Member'),(4,'Member'),(5,'Member'),(6,'Member'),(7,'Member'),(8,'Member'),(9,'Member'),(10,'President'),(11,'Member'),(12,'Member'),(13,'Member'),(14,'Member'),(15,'Member'),(16,'Member'),(17,'Member'),(18,'Member'),(19,'Member'),(20,'Member'),(21,'Member'),(22,'Secretary'),(23,'Member'),(24,'Financial Secretary'),(25,'Member'),(26,'Member'),(27,'Member'),(28,'Member'),(29,'Member'),(30,'Member');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings`
--

DROP TABLE IF EXISTS `savings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings` (
  `savings_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `opening_balance` decimal(10,2) DEFAULT '0.00',
  `percent_change` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`savings_id`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings`
--

LOCK TABLES `savings` WRITE;
/*!40000 ALTER TABLE `savings` DISABLE KEYS */;
INSERT INTO `savings` VALUES (59,2,3140000.00,'2024-12-14',2840000.00,10.56),(60,3,3840000.00,'2024-12-14',3540000.00,8.47),(61,4,533000.00,'2024-12-14',458000.00,16.38),(62,5,1783000.00,'2024-12-14',1483000.00,20.23),(63,6,361000.00,'2024-11-24',231000.00,56.28),(64,7,335000.00,'2024-12-14',210000.00,59.52),(65,8,410000.00,'2024-12-14',220000.00,86.36),(66,9,1014000.00,'2024-11-24',859000.00,18.04),(67,10,977000.00,'2024-12-14',742000.00,31.67),(68,11,265500.00,'2024-12-14',199500.00,33.08),(69,12,400500.00,'2024-12-14',280500.00,42.78),(70,13,178042.00,'2024-11-24',104042.00,71.13),(71,14,401000.00,'2024-12-14',496000.00,-19.15),(72,15,1490000.00,'2024-12-14',1190000.00,25.21),(73,16,1315000.00,'2024-12-14',1185000.00,10.97),(74,17,832000.00,'2024-11-24',1211000.00,-31.30),(75,18,960000.00,'2024-12-14',860000.00,11.63),(76,19,357011.00,'2024-11-24',197011.00,81.21),(77,20,290000.00,'2024-11-24',101000.00,187.13),(78,21,1424800.00,'2024-12-14',1124800.00,26.67),(79,22,1376000.00,'2024-11-24',1226000.00,12.23),(80,23,397410.00,'2024-11-24',237410.00,67.39),(81,24,100000.00,'2024-12-14',20000.00,400.00),(82,26,130000.00,'2024-11-24',105000.00,23.81),(83,27,810000.00,'2024-12-14',510000.00,58.82),(84,28,825000.00,'2024-12-14',765000.00,7.84),(85,29,1269000.00,'2024-12-14',969000.00,30.96),(86,30,770000.00,'2024-11-24',900000.00,-14.44);
/*!40000 ALTER TABLE `savings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_income`
--

DROP TABLE IF EXISTS `total_income`;
/*!50001 DROP VIEW IF EXISTS `total_income`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_income` AS SELECT 
 1 AS `total_income_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_loans_collected`
--

DROP TABLE IF EXISTS `total_loans_collected`;
/*!50001 DROP VIEW IF EXISTS `total_loans_collected`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_loans_collected` AS SELECT 
 1 AS `total_loans_collected`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_savings`
--

DROP TABLE IF EXISTS `total_savings`;
/*!50001 DROP VIEW IF EXISTS `total_savings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_savings` AS SELECT 
 1 AS `total_savings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `transaction_type` enum('Deposit','Withdrawal','Repayment','Loan Issued') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `fk_transactions_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (62,2,'Deposit',25000.00,'2024-01-04','Monthly savings'),(63,3,'Deposit',25000.00,'2024-01-04','Monthly savings'),(64,4,'Deposit',15000.00,'2024-01-04','Monthly savings'),(65,5,'Deposit',25000.00,'2024-01-04','Monthly savings'),(66,6,'Deposit',25000.00,'2024-01-04','Monthly savings'),(67,7,'Deposit',25000.00,'2024-01-04','Monthly savings'),(68,8,'Deposit',25000.00,'2024-01-04','Monthly savings'),(69,9,'Deposit',20000.00,'2024-01-04','Monthly savings'),(70,10,'Deposit',25000.00,'2024-01-04','Monthly savings'),(71,11,'Deposit',5000.00,'2024-01-04','Monthly savings'),(72,14,'Deposit',15000.00,'2024-01-04','Monthly savings'),(73,15,'Deposit',25000.00,'2024-01-04','Monthly savings'),(74,16,'Deposit',25000.00,'2024-01-04','Monthly savings'),(75,17,'Deposit',20000.00,'2024-01-04','Monthly savings'),(76,18,'Deposit',20000.00,'2024-01-04','Monthly savings'),(77,19,'Deposit',5000.00,'2024-01-04','Monthly savings'),(78,20,'Deposit',10000.00,'2024-01-04','Monthly savings'),(79,21,'Deposit',25000.00,'2024-01-04','Monthly savings'),(81,23,'Deposit',20000.00,'2024-01-04','Monthly savings'),(82,27,'Deposit',25000.00,'2024-01-04','Monthly savings'),(83,28,'Deposit',5000.00,'2024-01-04','Monthly savings'),(84,29,'Deposit',25000.00,'2024-01-04','Monthly savings'),(85,30,'Deposit',25000.00,'2024-01-04','Monthly savings'),(86,22,'Deposit',25000.00,'2024-01-04','Monthly savings'),(88,5,'Loan Issued',1500000.00,'2023-08-03','Approved'),(89,7,'Loan Issued',300000.00,'2023-10-05','Approved'),(90,9,'Loan Issued',500000.00,'2023-08-03','Approved'),(91,12,'Loan Issued',320000.00,'2023-11-07','Approved'),(92,13,'Loan Issued',200000.00,'2023-02-02','Approved'),(93,16,'Loan Issued',1500000.00,'2023-07-06','Approved'),(94,17,'Loan Issued',1500000.00,'2023-05-04','Approved'),(95,18,'Loan Issued',1100000.00,'2023-08-03','Approved'),(96,19,'Loan Issued',250000.00,'2023-08-03','Approved'),(97,20,'Loan Issued',200000.00,'2023-11-07','Approved'),(98,21,'Loan Issued',1500000.00,'2023-05-04','Approved'),(99,22,'Loan Issued',1500000.00,'2023-03-02','Approved'),(100,23,'Loan Issued',470000.00,'2023-10-05','Approved'),(101,24,'Loan Issued',500000.00,'2022-11-03','Approved'),(102,27,'Loan Issued',970000.00,'2023-11-07','Approved'),(103,28,'Loan Issued',1400000.00,'2023-07-06','Approved'),(104,29,'Loan Issued',1500000.00,'2023-08-03','Approved'),(105,30,'Loan Issued',1500000.00,'2023-05-04','Approved'),(106,2,'Loan Issued',1500000.00,'2023-11-02','Approved'),(107,5,'Repayment',280000.00,'2023-12-31','Loan Offset'),(108,7,'Repayment',50000.00,'2023-12-31','Loan Offset'),(109,9,'Repayment',325000.00,'2023-12-31','Loan Offset'),(110,16,'Repayment',475000.00,'2023-12-31','Loan Offset'),(111,17,'Repayment',1000000.00,'2023-12-31','Loan Offset'),(112,18,'Repayment',950000.00,'2023-12-31','Loan Offset'),(113,19,'Repayment',55000.00,'2023-12-31','Loan Offset'),(114,21,'Repayment',975000.00,'2023-12-31','Loan Offset'),(115,24,'Repayment',400000.00,'2023-12-31','Loan Offset'),(116,28,'Repayment',100000.00,'2023-12-31','Loan Offset'),(117,29,'Repayment',200000.00,'2023-12-31','Loan Offset'),(118,10,'Loan Issued',1200000.00,'2023-07-06','Approved'),(119,10,'Repayment',380000.00,'2023-12-31','Loan Offset'),(120,5,'Repayment',60000.00,'2024-01-04','Loan Offset'),(121,9,'Repayment',100000.00,'2024-01-04','Loan Offset'),(122,10,'Repayment',70000.00,'2024-01-04','Loan Offset'),(123,13,'Repayment',116000.00,'2024-01-04','Loan Offset'),(124,16,'Repayment',200000.00,'2024-01-04','Loan Offset'),(125,17,'Repayment',20000.00,'2024-01-04','Loan Offset'),(126,17,'Withdrawal',480000.00,'2024-01-04','Loan Repayment'),(127,18,'Repayment',85000.00,'2024-01-04','Loan Offset'),(128,19,'Repayment',195000.00,'2024-01-04','Loan Offset'),(129,20,'Repayment',10000.00,'2024-01-04','Loan Offset'),(130,21,'Repayment',150000.00,'2024-01-04','Loan Offset'),(131,22,'Repayment',1500000.00,'2024-01-04','Loan Offset'),(132,28,'Repayment',50000.00,'2024-01-04','Loan Offset'),(133,29,'Repayment',100000.00,'2024-01-04','Loan Offset'),(134,30,'Repayment',100000.00,'2024-01-04','Loan Offset'),(138,15,'Loan Issued',1500000.00,'2024-01-04','Approved'),(139,3,'Loan Issued',1500000.00,'2024-01-04','Approved'),(140,17,'Loan Issued',1500000.00,'2024-01-04','Approved'),(141,2,'Deposit',25000.00,'2024-02-01','Monthly savings'),(142,3,'Deposit',25000.00,'2024-02-01','Monthly savings'),(143,4,'Deposit',10000.00,'2024-02-01','Monthly savings'),(144,5,'Deposit',25000.00,'2024-02-01','Monthly savings'),(145,6,'Deposit',25000.00,'2024-02-01','Monthly savings'),(146,7,'Deposit',10000.00,'2024-02-01','Monthly savings'),(147,8,'Deposit',25000.00,'2024-02-01','Monthly savings'),(148,11,'Deposit',8000.00,'2024-02-01','Monthly savings'),(149,12,'Deposit',25000.00,'2024-02-01','Monthly savings'),(150,14,'Deposit',15000.00,'2024-02-01','Monthly savings'),(151,15,'Deposit',25000.00,'2024-02-01','Monthly savings'),(152,16,'Deposit',20000.00,'2024-02-01','Monthly savings'),(153,17,'Deposit',10000.00,'2024-02-01','Monthly savings'),(154,18,'Deposit',20000.00,'2024-02-01','Monthly savings'),(155,19,'Deposit',25000.00,'2024-02-01','Monthly savings'),(156,20,'Deposit',20000.00,'2024-02-01','Monthly savings'),(157,21,'Deposit',25000.00,'2024-02-01','Monthly savings'),(158,22,'Deposit',25000.00,'2024-02-01','Monthly savings'),(159,23,'Deposit',25000.00,'2024-02-01','Monthly savings'),(160,24,'Deposit',10000.00,'2024-02-01','Monthly savings'),(161,27,'Deposit',25000.00,'2024-02-01','Monthly savings'),(162,28,'Deposit',5000.00,'2024-02-01','Monthly savings'),(163,29,'Deposit',25000.00,'2024-02-01','Monthly savings'),(164,30,'Deposit',15000.00,'2024-02-01','Monthly savings'),(165,2,'Repayment',100000.00,'2024-02-01','Loan Offset'),(166,3,'Repayment',200000.00,'2024-02-01','Loan Offset'),(167,5,'Repayment',80000.00,'2024-02-01','Loan Offset'),(168,12,'Repayment',30000.00,'2024-02-01','Loan Offset'),(169,13,'Repayment',50000.00,'2024-02-01','Loan Offset'),(170,15,'Repayment',100000.00,'2024-02-01','Loan Offset'),(171,16,'Repayment',200000.00,'2024-02-01','Loan Offset'),(172,18,'Repayment',25000.00,'2024-02-01','Loan Offset'),(173,21,'Repayment',175000.00,'2024-02-01','Loan Offset'),(174,24,'Repayment',20000.00,'2024-02-01','Loan Offset'),(175,28,'Repayment',300000.00,'2024-02-01','Loan Offset'),(176,29,'Repayment',200000.00,'2024-02-01','Loan Offset'),(177,2,'Deposit',25000.00,'2024-03-07','Monthly savings'),(178,3,'Deposit',25000.00,'2024-03-07','Monthly savings'),(179,4,'Deposit',10000.00,'2024-03-07','Monthly savings'),(180,5,'Deposit',25000.00,'2024-03-07','Monthly savings'),(181,6,'Deposit',25000.00,'2024-03-07','Monthly savings'),(182,7,'Deposit',5000.00,'2024-03-07','Monthly savings'),(183,8,'Deposit',15000.00,'2024-03-07','Monthly savings'),(184,9,'Deposit',25000.00,'2024-03-07','Monthly savings'),(185,10,'Deposit',25000.00,'2024-03-07','Monthly savings'),(186,11,'Deposit',7000.00,'2024-03-07','Monthly savings'),(187,12,'Deposit',20000.00,'2024-03-07','Monthly savings'),(188,13,'Deposit',5000.00,'2024-03-07','Monthly savings'),(189,14,'Deposit',15000.00,'2024-03-07','Monthly savings'),(190,15,'Deposit',25000.00,'2024-03-07','Monthly savings'),(191,16,'Deposit',25000.00,'2024-03-07','Monthly savings'),(192,18,'Deposit',25000.00,'2024-03-07','Monthly savings'),(193,19,'Deposit',25000.00,'2024-03-07','Monthly savings'),(194,20,'Deposit',19000.00,'2024-03-07','Monthly savings'),(195,21,'Deposit',25000.00,'2024-03-07','Monthly savings'),(196,22,'Deposit',25000.00,'2024-03-07','Monthly savings'),(197,23,'Deposit',20000.00,'2024-03-07','Monthly savings'),(198,24,'Deposit',10000.00,'2024-03-07','Monthly savings'),(199,27,'Deposit',25000.00,'2024-03-07','Monthly savings'),(200,28,'Deposit',5000.00,'2024-03-07','Monthly savings'),(201,29,'Deposit',25000.00,'2024-03-01','Monthly savings'),(202,30,'Deposit',25000.00,'2024-03-01','Monthly savings'),(203,2,'Repayment',100000.00,'2024-03-07','Loan Offset'),(204,3,'Repayment',200000.00,'2024-03-07','Loan Offset'),(205,5,'Repayment',70000.00,'2024-03-07','Loan Offset'),(206,7,'Repayment',50000.00,'2024-03-07','Loan Offset'),(207,9,'Repayment',75000.00,'2024-03-07','Loan Offset'),(208,10,'Repayment',95000.00,'2024-03-07','Loan Offset'),(209,12,'Repayment',20000.00,'2024-03-07','Loan Offset'),(210,13,'Repayment',34000.00,'2024-03-07','Loan Offset'),(211,14,'Withdrawal',200000.00,'2024-03-07','Loan Repayment'),(212,15,'Repayment',100000.00,'2024-03-07','Loan Offset'),(213,16,'Repayment',200000.00,'2024-03-07','Loan Offset'),(214,18,'Withdrawal',150000.00,'2024-03-07','Personal Use'),(215,18,'Repayment',40000.00,'2024-03-07','Loan Offset'),(216,20,'Repayment',15000.00,'2024-03-07','Loan Offset'),(217,21,'Repayment',200000.00,'2024-03-07','Loan Offset'),(218,24,'Repayment',20000.00,'2024-03-07','Loan Offset'),(219,28,'Repayment',50000.00,'2024-03-07','Loan Offset'),(220,29,'Repayment',100000.00,'2024-03-07','Loan Offset'),(221,30,'Repayment',1080000.00,'2024-03-07','Loan Offset'),(222,30,'Withdrawal',320000.00,'2024-03-07','Loan Repayment'),(223,22,'Loan Issued',1500000.00,'2024-03-07','Approved'),(224,19,'Loan Issued',500000.00,'2024-03-07','Approved'),(225,2,'Deposit',25000.00,'2024-04-04','Monthly savings'),(226,3,'Deposit',25000.00,'2024-04-04','Monthly savings'),(227,4,'Deposit',5000.00,'2024-04-04','Monthly savings'),(228,5,'Deposit',25000.00,'2024-04-04','Monthly savings'),(229,7,'Deposit',25000.00,'2024-04-04','Monthly savings'),(230,8,'Deposit',25000.00,'2024-04-04','Monthly savings'),(231,9,'Deposit',25000.00,'2024-04-04','Monthly savings'),(232,10,'Deposit',20000.00,'2024-04-04','Monthly savings'),(233,11,'Deposit',5000.00,'2024-04-04','Monthly savings'),(234,13,'Deposit',20000.00,'2024-04-04','Monthly savings'),(235,14,'Deposit',15000.00,'2024-04-04','Monthly savings'),(236,15,'Deposit',25000.00,'2024-04-04','Monthly savings'),(237,16,'Deposit',5000.00,'2024-04-04','Monthly savings'),(238,17,'Deposit',10000.00,'2024-04-04','Monthly savings'),(239,18,'Deposit',25000.00,'2024-04-04','Monthly savings'),(240,19,'Deposit',25000.00,'2024-04-04','Monthly savings'),(241,20,'Deposit',10000.00,'2024-04-04','Monthly savings'),(242,21,'Deposit',25000.00,'2024-04-04','Monthly savings'),(243,22,'Deposit',25000.00,'2024-04-07','Monthly savings'),(244,23,'Deposit',25000.00,'2024-04-04','Monthly savings'),(245,24,'Deposit',10000.00,'2024-04-04','Monthly savings'),(246,27,'Deposit',25000.00,'2024-04-04','Monthly savings'),(247,28,'Deposit',5000.00,'2024-04-04','Monthly savings'),(248,29,'Deposit',25000.00,'2024-04-04','Monthly savings'),(249,2,'Repayment',150000.00,'2024-04-04','Loan Offset'),(250,3,'Repayment',200000.00,'2024-04-04','Loan Offset'),(251,5,'Repayment',770000.00,'2024-04-04','Loan Offset'),(252,7,'Repayment',100000.00,'2024-04-04','Loan Offset'),(253,10,'Repayment',60000.00,'2024-04-04','Loan Offset'),(254,12,'Repayment',50000.00,'2024-04-04','Loan Offset'),(255,15,'Repayment',100000.00,'2024-04-04','Loan Offset'),(256,16,'Repayment',200000.00,'2024-04-04','Loan Offset'),(257,20,'Repayment',10000.00,'2024-04-04','Loan Offset'),(258,24,'Repayment',20000.00,'2024-04-04','Loan Offset'),(259,29,'Repayment',100000.00,'2024-04-04','Loan Offset'),(260,6,'Loan Issued',600000.00,'2024-04-04','Approved'),(261,2,'Deposit',25000.00,'2024-05-02','Monthly savings'),(262,3,'Deposit',25000.00,'2024-05-02','Monthly savings'),(263,4,'Deposit',5000.00,'2024-05-02','Monthly savings'),(264,5,'Deposit',25000.00,'2024-05-02','Monthly savings'),(265,8,'Deposit',10000.00,'2024-05-02','Monthly savings'),(266,9,'Deposit',25000.00,'2024-05-02','Monthly savings'),(267,10,'Deposit',25000.00,'2024-05-02','Monthly savings'),(268,11,'Deposit',5000.00,'2024-05-02','Monthly savings'),(269,13,'Deposit',5000.00,'2024-05-02','Monthly savings'),(270,14,'Deposit',5000.00,'2024-05-02','Monthly savings'),(271,15,'Deposit',25000.00,'2024-05-02','Monthly savings'),(272,16,'Deposit',5000.00,'2024-05-02','Monthly savings'),(273,17,'Deposit',21000.00,'2024-05-02','Monthly savings'),(274,18,'Deposit',25000.00,'2024-05-02','Monthly savings'),(275,19,'Deposit',5000.00,'2024-05-02','Monthly savings'),(276,20,'Deposit',20000.00,'2024-05-02','Monthly savings'),(277,21,'Deposit',25000.00,'2024-05-02','Monthly savings'),(278,22,'Deposit',25000.00,'2024-05-02','Monthly savings'),(279,27,'Deposit',25000.00,'2024-05-02','Monthly savings'),(280,28,'Deposit',5000.00,'2024-05-02','Monthly savings'),(281,29,'Deposit',25000.00,'2024-05-02','Monthly savings'),(282,2,'Repayment',100000.00,'2024-05-02','Loan Offset'),(283,3,'Repayment',200000.00,'2024-05-02','Loan Offset'),(284,5,'Repayment',170000.00,'2024-05-02','Loan Offset'),(285,10,'Repayment',595000.00,'2024-05-02','Loan Offset'),(286,15,'Repayment',100000.00,'2024-05-02','Loan Offset'),(287,16,'Repayment',225000.00,'2024-05-02','Loan Offset'),(288,17,'Repayment',200000.00,'2024-05-02','Loan Offset'),(289,19,'Repayment',45000.00,'2024-05-02','Loan Offset'),(290,20,'Repayment',20000.00,'2024-05-02','Loan Offset'),(291,24,'Repayment',20000.00,'2024-05-02','Loan Offset'),(292,27,'Repayment',70000.00,'2024-05-02','Loan Offset'),(293,28,'Repayment',900000.00,'2024-05-02','Loan Offset'),(294,29,'Repayment',200000.00,'2024-05-02','Loan Offset'),(295,28,'Loan Issued',1500000.00,'2024-05-02','Approved'),(297,13,'Loan Issued',260000.00,'2024-05-02','Approved'),(298,8,'Loan Issued',600000.00,'2024-05-02','Approved'),(299,10,'Loan Issued',1000000.00,'2024-05-02','Approved'),(300,9,'Loan Issued',1200000.00,'2024-05-02','Approved'),(301,2,'Deposit',25000.00,'2024-06-06','Monthly savings'),(302,3,'Deposit',25000.00,'2024-06-06','Monthly savings'),(303,4,'Deposit',5000.00,'2024-06-06','Monthly savings'),(304,5,'Deposit',25000.00,'2024-06-06','Monthly savings'),(305,6,'Deposit',20000.00,'2024-06-06','Monthly savings'),(306,8,'Deposit',10000.00,'2024-06-06','Monthly savings'),(307,9,'Deposit',10000.00,'2024-06-06','Monthly savings'),(308,10,'Deposit',25000.00,'2024-06-06','Monthly savings'),(309,11,'Deposit',6000.00,'2024-06-06','Monthly savings'),(310,12,'Deposit',10000.00,'2024-06-06','Monthly savings'),(311,13,'Deposit',10000.00,'2024-06-06','Monthly savings'),(312,14,'Deposit',5000.00,'2024-06-06','Monthly savings'),(313,15,'Deposit',25000.00,'2024-06-06','Monthly savings'),(314,16,'Deposit',20000.00,'2024-06-06','Monthly savings'),(315,17,'Deposit',10000.00,'2024-06-06','Monthly savings'),(316,18,'Deposit',10000.00,'2024-06-06','Monthly savings'),(317,19,'Deposit',25000.00,'2024-06-06','Monthly savings'),(318,20,'Deposit',20000.00,'2024-06-06','Monthly savings'),(319,21,'Deposit',25000.00,'2024-06-06','Monthly savings'),(320,24,'Deposit',10000.00,'2024-06-06','Monthly savings'),(321,27,'Deposit',25000.00,'2024-06-06','Monthly savings'),(322,28,'Deposit',5000.00,'2024-06-06','Monthly savings'),(323,29,'Deposit',25000.00,'2024-06-06','Monthly savings'),(324,30,'Deposit',25000.00,'2024-06-06','Monthly savings'),(325,2,'Repayment',175000.00,'2024-06-06','Loan Offset'),(326,3,'Repayment',200000.00,'2024-06-06','Loan Offset'),(327,5,'Repayment',70000.00,'2024-06-06','Loan Offset'),(328,7,'Repayment',50000.00,'2024-06-06','Loan Offset'),(329,9,'Repayment',150000.00,'2024-06-06','Loan Offset'),(330,12,'Repayment',50000.00,'2024-06-06','Loan Offset'),(331,13,'Repayment',30000.00,'2024-06-06','Loan Offset'),(332,15,'Repayment',100000.00,'2024-06-06','Loan Offset'),(333,17,'Repayment',250000.00,'2024-06-06','Loan Offset'),(334,19,'Repayment',55000.00,'2024-06-06','Loan Offset'),(335,20,'Repayment',30000.00,'2024-06-06','Loan Offset'),(336,24,'Repayment',20000.00,'2024-06-06','Loan Offset'),(337,29,'Repayment',400000.00,'2024-06-06','Loan Offset'),(338,2,'Deposit',25000.00,'2024-07-04','Monthly savings'),(339,3,'Deposit',25000.00,'2024-07-04','Monthly savings'),(340,4,'Deposit',5000.00,'2024-07-04','Monthly savings'),(341,5,'Deposit',25000.00,'2024-07-04','Monthly savings'),(342,7,'Deposit',25000.00,'2024-07-04','Monthly savings'),(343,8,'Deposit',25000.00,'2024-07-04','Monthly savings'),(344,9,'Deposit',10000.00,'2024-07-04','Monthly savings'),(345,10,'Deposit',25000.00,'2024-07-04','Monthly savings'),(346,11,'Deposit',5000.00,'2024-07-04','Monthly savings'),(347,14,'Deposit',15000.00,'2024-07-04','Monthly savings'),(348,15,'Deposit',25000.00,'2024-07-04','Monthly savings'),(349,17,'Deposit',10000.00,'2024-07-04','Monthly savings'),(350,18,'Deposit',15000.00,'2024-07-04','Monthly savings'),(351,19,'Deposit',10000.00,'2024-07-04','Monthly savings'),(352,20,'Deposit',25000.00,'2024-07-04','Monthly savings'),(353,21,'Deposit',25000.00,'2024-07-04','Monthly savings'),(354,23,'Deposit',25000.00,'2024-07-04','Monthly savings'),(355,24,'Deposit',10000.00,'2024-07-04','Monthly savings'),(356,27,'Deposit',25000.00,'2024-07-04','Monthly savings'),(357,28,'Deposit',5000.00,'2024-07-04','Monthly savings'),(358,29,'Deposit',25000.00,'2024-07-04','Monthly savings'),(359,30,'Deposit',25000.00,'2024-07-04','Monthly savings'),(360,2,'Repayment',200000.00,'2024-07-04','Loan Offset'),(361,3,'Repayment',200000.00,'2024-07-04','Loan Offset'),(362,7,'Repayment',50000.00,'2024-07-04','Loan Offset'),(363,9,'Repayment',150000.00,'2024-07-04','Loan Offset'),(364,12,'Repayment',50000.00,'2024-07-04','Loan Offset'),(365,15,'Repayment',100000.00,'2024-07-04','Loan Offset'),(366,17,'Repayment',250000.00,'2024-07-04','Loan Offset'),(367,19,'Repayment',70000.00,'2024-07-04','Loan Offset'),(368,20,'Repayment',25000.00,'2024-07-04','Loan Offset'),(369,27,'Repayment',900000.00,'2024-07-04','Loan Offset'),(370,29,'Repayment',200000.00,'2024-07-04','Loan Offset'),(371,29,'Loan Issued',1500000.00,'2024-07-04','Approved'),(372,2,'Deposit',25000.00,'2024-08-01','Monthly savings'),(373,3,'Deposit',25000.00,'2024-08-01','Monthly savings'),(374,5,'Deposit',25000.00,'2024-08-01','Monthly savings'),(375,7,'Deposit',25000.00,'2024-08-01','Monthly savings'),(376,8,'Deposit',25000.00,'2024-08-01','Monthly savings'),(377,9,'Deposit',10000.00,'2024-08-01','Monthly savings'),(378,10,'Deposit',25000.00,'2024-08-01','Monthly savings'),(379,11,'Deposit',5000.00,'2024-08-01','Monthly savings'),(380,13,'Deposit',24000.00,'2024-08-01','Monthly savings'),(381,14,'Deposit',5000.00,'2024-08-01','Monthly savings'),(382,15,'Deposit',25000.00,'2024-08-01','Monthly savings'),(383,17,'Deposit',10000.00,'2024-08-01','Monthly savings'),(384,18,'Deposit',25000.00,'2024-08-01','Monthly savings'),(385,20,'Deposit',10000.00,'2024-08-01','Monthly savings'),(386,21,'Deposit',25000.00,'2024-08-01','Monthly savings'),(387,23,'Deposit',20000.00,'2024-08-01','Monthly savings'),(388,24,'Deposit',10000.00,'2024-08-01','Monthly savings'),(389,27,'Deposit',25000.00,'2024-08-01','Monthly savings'),(390,28,'Deposit',5000.00,'2024-08-01','Monthly savings'),(391,29,'Deposit',25000.00,'2024-08-01','Monthly savings'),(392,30,'Deposit',25000.00,'2024-08-01','Monthly savings'),(393,2,'Repayment',200000.00,'2024-08-01','Loan Offset'),(394,3,'Repayment',200000.00,'2024-08-01','Loan Offset'),(395,9,'Repayment',150000.00,'2024-08-01','Loan Offset'),(396,10,'Repayment',105000.00,'2024-08-01','Loan Offset'),(397,12,'Repayment',70000.00,'2024-08-01','Loan Offset'),(398,13,'Repayment',40000.00,'2024-08-01','Loan Offset'),(399,15,'Repayment',100000.00,'2024-08-01','Loan Offset'),(400,17,'Repayment',250000.00,'2024-08-01','Loan Offset'),(401,20,'Repayment',20000.00,'2024-08-01','Loan Offset'),(402,29,'Repayment',175000.00,'2024-08-01','Loan Offset'),(403,7,'Loan Issued',200000.00,'2024-08-01','Approved'),(404,5,'Loan Issued',1500000.00,'2024-08-01','Approved'),(405,24,'Loan Issued',150000.00,'2024-08-01','Approved'),(406,2,'Deposit',25000.00,'2024-09-05','Monthly savings'),(407,3,'Deposit',25000.00,'2024-09-05','Monthly savings'),(408,5,'Deposit',25000.00,'2024-09-05','Monthly savings'),(409,6,'Deposit',10000.00,'2024-09-05','Monthly savings'),(411,8,'Deposit',5000.00,'2024-09-05','Monthly savings'),(412,9,'Deposit',10000.00,'2024-09-05','Monthly savings'),(413,11,'Deposit',5000.00,'2024-09-05','Monthly savings'),(414,14,'Deposit',5000.00,'2024-09-05','Monthly savings'),(415,15,'Deposit',25000.00,'2024-09-05','Monthly savings'),(416,17,'Deposit',10000.00,'2024-09-05','Monthly savings'),(417,18,'Deposit',25000.00,'2024-09-05','Monthly savings'),(418,19,'Deposit',20000.00,'2024-09-05','Monthly savings'),(419,20,'Deposit',25000.00,'2024-09-05','Monthly savings'),(420,21,'Deposit',25000.00,'2024-09-05','Monthly savings'),(421,22,'Deposit',25000.00,'2024-09-05','Monthly savings'),(422,23,'Deposit',25000.00,'2024-09-05','Monthly savings'),(423,27,'Deposit',25000.00,'2024-09-05','Monthly savings'),(424,28,'Deposit',5000.00,'2024-09-05','Monthly savings'),(425,29,'Deposit',25000.00,'2024-09-05','Monthly savings'),(426,2,'Repayment',285000.00,'2024-09-05','Loan Offset'),(427,3,'Repayment',100000.00,'2024-09-05','Loan Offset'),(428,6,'Repayment',50000.00,'2024-09-05','Loan Offset'),(429,8,'Repayment',150000.00,'2024-09-05','Loan Offset'),(430,12,'Repayment',50000.00,'2024-09-05','Loan Offset'),(431,15,'Repayment',100000.00,'2024-09-05','Loan Offset'),(432,17,'Repayment',200000.00,'2024-09-05','Loan Offset'),(433,19,'Repayment',80000.00,'2024-09-05','Loan Offset'),(434,23,'Repayment',470000.00,'2024-09-05','Loan Offset'),(435,12,'Loan Issued',530000.00,'2024-09-05','Approved'),(436,14,'Loan Issued',780000.00,'2024-09-05','Approved'),(437,16,'Loan Issued',1500000.00,'2024-09-05','Approved'),(438,21,'Loan Issued',1000000.00,'2024-09-05','Approved'),(439,23,'Loan Issued',740000.00,'2024-09-05','Approved'),(440,2,'Deposit',25000.00,'2024-10-03','Monthly savings'),(441,3,'Deposit',25000.00,'2024-10-03','Monthly savings'),(442,5,'Deposit',25000.00,'2024-10-03','Monthly savings'),(443,6,'Deposit',25000.00,'2024-10-03','Monthly savings'),(444,9,'Deposit',10000.00,'2024-10-03','Monthly savings'),(445,10,'Deposit',20000.00,'2024-10-03','Monthly savings'),(446,11,'Deposit',5000.00,'2024-10-03','Monthly savings'),(447,12,'Deposit',20000.00,'2024-10-03','Monthly savings'),(448,15,'Deposit',25000.00,'2024-10-03','Monthly savings'),(449,18,'Deposit',25000.00,'2024-10-03','Monthly savings'),(450,19,'Deposit',20000.00,'2024-10-03','Monthly savings'),(451,20,'Deposit',5000.00,'2024-10-03','Monthly savings'),(452,21,'Deposit',25000.00,'2024-10-03','Monthly savings'),(453,26,'Deposit',25000.00,'2024-10-03','Monthly savings'),(454,27,'Deposit',25000.00,'2024-10-03','Monthly savings'),(455,28,'Deposit',5000.00,'2024-10-03','Monthly savings'),(456,29,'Deposit',25000.00,'2024-10-03','Monthly savings'),(457,30,'Deposit',25000.00,'2024-10-03','Monthly savings'),(458,2,'Repayment',190000.00,'2024-10-03','Loan Offset'),(459,6,'Repayment',35000.00,'2024-10-03','Loan Offset'),(460,9,'Repayment',150000.00,'2024-10-03','Loan Offset'),(461,10,'Repayment',100000.00,'2024-10-03','Loan Offset'),(462,15,'Repayment',700000.00,'2024-10-03','Loan Offset'),(463,17,'Repayment',350000.00,'2024-10-03','Loan Offset'),(464,19,'Repayment',40000.00,'2024-10-03','Loan Offset'),(465,20,'Repayment',50000.00,'2024-10-03','Loan Offset'),(466,21,'Repayment',150000.00,'2024-10-03','Loan Offset'),(467,26,'Loan Issued',250000.00,'2024-10-03','Approved'),(468,27,'Loan Issued',1500000.00,'2024-10-03','Approved'),(469,15,'Loan Issued',1500000.00,'2024-10-03','Approved'),(470,2,'Deposit',25000.00,'2024-11-07','Monthly savings'),(471,3,'Deposit',25000.00,'2024-11-07','Monthly savings'),(472,4,'Deposit',10000.00,'2024-11-07','Monthly savings'),(473,5,'Deposit',25000.00,'2024-11-07','Monthly savings'),(474,9,'Deposit',10000.00,'2024-11-07','Monthly savings'),(475,11,'Deposit',5000.00,'2024-11-07','Monthly savings'),(476,12,'Deposit',25000.00,'2024-11-07','Monthly savings'),(477,13,'Deposit',10000.00,'2024-11-07','Monthly savings'),(478,14,'Deposit',5000.00,'2024-11-07','Monthly savings'),(479,15,'Deposit',25000.00,'2024-11-07','Monthly savings'),(480,16,'Deposit',25000.00,'2024-11-07','Monthly savings'),(481,18,'Deposit',25000.00,'2024-11-07','Monthly savings'),(482,20,'Deposit',25000.00,'2024-11-07','Monthly savings'),(483,21,'Deposit',25000.00,'2024-11-07','Monthly savings'),(484,24,'Deposit',10000.00,'2024-11-07','Monthly savings'),(485,27,'Deposit',25000.00,'2024-11-07','Monthly savings'),(486,28,'Deposit',5000.00,'2024-11-07','Monthly savings'),(487,29,'Deposit',25000.00,'2024-11-07','Monthly savings'),(488,30,'Deposit',25000.00,'2024-11-07','Monthly savings'),(489,5,'Repayment',100000.00,'2024-11-07','Loan Offset'),(490,9,'Repayment',150000.00,'2024-11-07','Loan Offset'),(491,13,'Repayment',40000.00,'2024-11-07','Loan Offset'),(492,15,'Repayment',100000.00,'2024-11-07','Loan Offset'),(493,16,'Repayment',280000.00,'2024-11-07','Loan Offset'),(494,19,'Repayment',50000.00,'2024-11-07','Loan Offset'),(495,21,'Repayment',150000.00,'2024-11-07','Loan Offset'),(496,24,'Repayment',50000.00,'2024-11-07','Loan Offset'),(497,27,'Repayment',300000.00,'2024-11-07','Loan Offset'),(498,18,'Loan Issued',1500000.00,'2024-11-07','Approved'),(499,20,'Loan Issued',500000.00,'2024-11-07','Approved'),(501,3,'Loan Issued',1500000.00,'2024-11-07','Approved'),(502,2,'Deposit',25000.00,'2024-12-05','Monthly savings'),(503,3,'Deposit',25000.00,'2024-12-05','Monthly savings'),(504,4,'Deposit',10000.00,'2024-12-05','Monthly savings'),(505,5,'Deposit',25000.00,'2024-12-05','Monthly savings'),(507,8,'Deposit',25000.00,'2024-12-05','Monthly savings'),(508,10,'Deposit',25000.00,'2024-11-07','Monthly savings'),(509,11,'Deposit',5000.00,'2024-12-05','Monthly savings'),(510,12,'Deposit',20000.00,'2024-12-05','Monthly savings'),(511,14,'Deposit',5000.00,'2024-12-05','Monthly savings'),(512,16,'Deposit',5000.00,'2024-12-05','Monthly savings'),(513,18,'Deposit',10000.00,'2024-12-05','Monthly savings'),(514,21,'Deposit',25000.00,'2024-12-05','Monthly savings'),(515,24,'Deposit',10000.00,'2024-12-05','Monthly savings'),(516,27,'Deposit',25000.00,'2024-12-05','Monthly savings'),(517,28,'Deposit',5000.00,'2024-12-05','Monthly savings'),(519,15,'Deposit',25000.00,'2024-12-05','Monthly savings'),(520,29,'Deposit',25000.00,'2024-12-05','Monthly savings'),(521,7,'Repayment',100000.00,'2024-11-07','Loan Offset'),(522,10,'Repayment',75000.00,'2024-11-07','Loan Offset'),(523,30,'Loan Issued',1500000.00,'2024-11-07','Approved'),(524,3,'Repayment',150000.00,'2024-12-05','Loan Offset'),(525,5,'Repayment',100000.00,'2024-12-05','Loan Offset'),(526,7,'Repayment',60000.00,'2024-12-05','Loan Offset'),(527,14,'Repayment',100000.00,'2024-12-05','Loan Offset'),(528,15,'Repayment',100000.00,'2024-12-05','Loan Offset'),(529,16,'Repayment',150000.00,'2024-12-05','Loan Offset'),(530,21,'Repayment',150000.00,'2024-12-05','Loan Offset'),(531,27,'Repayment',100000.00,'2024-12-05','Loan Offset'),(532,7,'Deposit',10000.00,'2024-09-05','Monthly Deposit');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transactions_AFTER_INSERT` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
-- Check if the transaction type is 'loan issued'
    IF NEW.transaction_type = 'loan issued' THEN
        -- Insert the loan record into the loans table
        INSERT INTO loans 
            (member_id, loan_amount, interest_amount, date_issued, due_date, loan_balance)
        VALUES
            (NEW.member_id,  -- member_id from the transaction
             NEW.amount,  -- loan amount from the transaction
             NEW.amount * 0.06,  -- 6% interest of the loan amount
             NEW.transaction_date,  -- the date the loan was issued
             DATE_ADD(NEW.transaction_date, INTERVAL 10 MONTH),  -- loan due date, 10 months after issue
             NEW.amount
            );
		END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adjust_loan_balance_after_repayment` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
    -- Check if the transaction is a loan repayment
    IF NEW.transaction_type = 'Repayment' THEN
        -- Deduct the repayment amount from the member's outstanding loan balance
        UPDATE loans
        SET loan_balance = loan_balance - NEW.amount
        WHERE member_id = NEW.member_id
          AND loan_balance > 0;  -- Only applies if there's an outstanding balance
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_savings_balance` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
    -- Check if the transaction type is a deposit
    IF NEW.transaction_type = 'Deposit' THEN
        -- Update the savings balance for the relevant member
        UPDATE savings
        SET balance = balance + NEW.amount,
            last_updated = NOW()
        WHERE member_id = NEW.member_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `handle_withdrawal` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
    -- Case 1: Personal Use Withdrawal
    IF NEW.transaction_type = 'Withdrawal' AND NEW.description = 'Personal Use' THEN
        -- Deduct from the savings balance only
        UPDATE savings
        SET balance = balance - NEW.amount,
            last_updated = NOW()
        WHERE member_id = NEW.member_id;

    -- Case 2: Loan Repayment Withdrawal
    ELSEIF NEW.transaction_type = 'Withdrawal' AND NEW.description = 'Loan Repayment' THEN
        -- Deduct from both the savings balance and loan balance
        UPDATE savings
        SET balance = balance - NEW.amount,
            last_updated = NOW()
        WHERE member_id = NEW.member_id;

        UPDATE loans
        SET loan_balance = loan_balance - NEW.amount
        WHERE member_id = NEW.member_id
        AND loan_balance > 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transactions_AFTER_DELETE` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
 IF OLD.transaction_type = 'loan issued' THEN
        DELETE FROM loans WHERE member_id = OLD.member_id AND loan_amount = OLD.amount;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adjust_savings_balance_after_delete` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
    -- Check if the deleted transaction was a deposit
    IF OLD.transaction_type = 'Deposit' THEN
        -- Subtract the deleted deposit amount from the member's savings balance
        UPDATE savings
        SET balance = balance - OLD.amount,
            last_updated = NOW()
        WHERE member_id = OLD.member_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `adjust_loan_balance_after_deletion` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
    -- Check if the deleted transaction was a loan repayment
    IF OLD.transaction_type = 'Repayment' THEN
        -- Add the repayment amount back to the member's outstanding loan balance
        UPDATE loans
        SET loan_balance = loan_balance + OLD.amount
        WHERE member_id = OLD.member_id
          AND loan_balance >= 0;  -- Ensures logic integrity
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `handle_withdrawal_after_delete` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
    -- Case 1: Personal Use Withdrawal
    IF OLD.transaction_type = 'Withdrawal' AND OLD.description = 'Personal Use' THEN
        -- Add back to the savings balance
        UPDATE savings
        SET balance = balance + OLD.amount,
            last_updated = NOW()
        WHERE member_id = OLD.member_id;

    -- Case 2: Loan Repayment Withdrawal
    ELSEIF OLD.transaction_type = 'Withdrawal' AND OLD.description = 'Loan Repayment' THEN
        -- Add back to both the savings balance and loan balance
        UPDATE savings
        SET balance = balance + OLD.amount,
            last_updated = NOW()
        WHERE member_id = OLD.member_id;

        UPDATE loans
        SET loan_balance = loan_balance + OLD.amount
        WHERE member_id = OLD.member_id
        AND loan_balance >= 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'coorporative_society'
--

--
-- Dumping routines for database 'coorporative_society'
--

--
-- Final view structure for view `dividend_based_on_loans`
--

/*!50001 DROP VIEW IF EXISTS `dividend_based_on_loans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dividend_based_on_loans` AS select `m`.`member_id` AS `member_id`,((0.40 * (select `total_income`.`total_income_amount` from `total_income`)) * (sum(`l`.`loan_amount`) / (select `total_loans_collected`.`total_loans_collected` from `total_loans_collected`))) AS `loan_dividend` from (`members` `m` join `loans` `l` on((`m`.`member_id` = `l`.`member_id`))) where (year(`l`.`date_issued`) = 2024) group by `m`.`member_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dividend_based_on_savings`
--

/*!50001 DROP VIEW IF EXISTS `dividend_based_on_savings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dividend_based_on_savings` AS select `m`.`member_id` AS `member_id`,((0.60 * (select `total_income`.`total_income_amount` from `total_income`)) * (`s`.`balance` / (select `total_savings`.`total_savings` from `total_savings`))) AS `savings_dividend` from (`members` `m` join `savings` `s` on((`m`.`member_id` = `s`.`member_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final_dividend_2024`
--

/*!50001 DROP VIEW IF EXISTS `final_dividend_2024`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final_dividend_2024` AS select `m`.`member_id` AS `member_id`,coalesce(`s`.`savings_dividend`,0) AS `savings_dividend`,coalesce(`l`.`loan_dividend`,0) AS `loan_dividend`,(coalesce(`s`.`savings_dividend`,0) + coalesce(`l`.`loan_dividend`,0)) AS `net_dividend` from ((`members` `m` left join `dividend_based_on_savings` `s` on((`m`.`member_id` = `s`.`member_id`))) left join `dividend_based_on_loans` `l` on((`m`.`member_id` = `l`.`member_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_income`
--

/*!50001 DROP VIEW IF EXISTS `total_income`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_income` AS select coalesce(sum(`income`.`Income_amount`),0) AS `total_income_amount` from `income` where (year(`income`.`date_recorded`) = 2024) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_loans_collected`
--

/*!50001 DROP VIEW IF EXISTS `total_loans_collected`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_loans_collected` AS select sum(`loans`.`loan_amount`) AS `total_loans_collected` from `loans` where (year(`loans`.`date_issued`) = 2024) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_savings`
--

/*!50001 DROP VIEW IF EXISTS `total_savings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_savings` AS select sum(`savings`.`balance`) AS `total_savings` from `savings` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01 16:42:23
