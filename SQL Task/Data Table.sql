-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `consumer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_sold`
--

DROP TABLE IF EXISTS `product_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sold` (
  `product_id` int NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `number_of_sold` int DEFAULT NULL,
  `transaction_transaction_id` int NOT NULL,
  `transaction_consumer_consumer_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`transaction_transaction_id`,`transaction_consumer_consumer_id`),
  KEY `fk_product_sold_transaction1_idx` (`transaction_transaction_id`,`transaction_consumer_consumer_id`),
  CONSTRAINT `fk_product_sold_transaction1` FOREIGN KEY (`transaction_transaction_id`, `transaction_consumer_consumer_id`) REFERENCES `transaction` (`transaction_id`, `consumer_consumer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `consumer_consumer_id` int NOT NULL,
  PRIMARY KEY (`transaction_id`,`consumer_consumer_id`),
  KEY `fk_transaction_consumer_idx` (`consumer_consumer_id`),
  CONSTRAINT `fk_transaction_consumer` FOREIGN KEY (`consumer_consumer_id`) REFERENCES `consumer` (`consumer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 21:22:17
