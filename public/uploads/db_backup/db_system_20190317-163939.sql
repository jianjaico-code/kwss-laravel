-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: db_system
-- ------------------------------------------------------
-- Server version 	5.5.5-10.1.37-MariaDB
-- Date: Sun, 17 Mar 2019 16:39:39 +0800

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
-- Table structure for table `tbl_account`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_account` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` char(25) NOT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_account`
--

LOCK TABLES `tbl_account` WRITE;
/*!40000 ALTER TABLE `tbl_account` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_account` VALUES (1,'2019000001','kwss.123','Admin'),(2,'2019000002','kwss.123','Customer');
/*!40000 ALTER TABLE `tbl_account` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_account` with 2 row(s)
--

--
-- Table structure for table `tbl_customer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer` (
  `cus_id` int(10) NOT NULL AUTO_INCREMENT,
  `acc_id` int(10) NOT NULL,
  `cus_firstname` char(20) NOT NULL,
  `cus_lastname` char(20) NOT NULL,
  `cus_mobile_number` varchar(15) DEFAULT NULL,
  `cus_address` varchar(30) NOT NULL,
  `cus_zone` varchar(255) DEFAULT NULL,
  `cus_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cus_created` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_customer` VALUES (1,2,'Customer','Name','9652354567','CDO',NULL,'2019-03-16 14:36:37','2019-03-16 22:36:37');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_customer` with 1 row(s)
--

--
-- Table structure for table `tbl_customer_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer_type` (
  `custype_id` int(10) NOT NULL AUTO_INCREMENT,
  `custype_type` varchar(255) NOT NULL,
  `custype_cubic_meter_rate` int(11) DEFAULT NULL,
  `custype_min_cubic_meter` int(11) DEFAULT NULL,
  `custype_min_peso_rate` int(11) DEFAULT NULL,
  `custype_due_date_duration` varchar(255) DEFAULT 'Monthly',
  `custype_due_date_penalty` float DEFAULT '0',
  `custype_zone` varchar(255) DEFAULT NULL,
  `custype_previous_data` text,
  `custype_published` int(11) DEFAULT '1',
  PRIMARY KEY (`custype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_type`
--

LOCK TABLES `tbl_customer_type` WRITE;
/*!40000 ALTER TABLE `tbl_customer_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_customer_type` VALUES (1,'Residential Zone 1',14,8,70,'By Zone',10,'1',NULL,1),(2,'Residential Zone 2',14,8,70,'By Zone',10,'2',NULL,1),(3,'Residential Zone 3',14,8,70,'By Zone',10,'3',NULL,1),(4,'Residential Zone 4',14,8,70,'By Zone',10,'4',NULL,1),(5,'Residential Zone 5',14,8,70,'By Zone',10,'5',NULL,1),(6,'Residential Zone 6',14,8,70,'By Zone',10,'6',NULL,1),(7,'Residential Zone 7',14,8,70,'By Zone',10,'7',NULL,1),(8,'Residential Zone 8',14,8,70,'By Zone',10,'8',NULL,1),(9,'Residential Zone 9',14,8,70,'By Zone',10,'9',NULL,1),(10,'Residential Zone 10',14,8,70,'By Zone',10,'10',NULL,1),(11,'Residential Zone 11',14,8,70,'By Zone',10,'11',NULL,1),(12,'Residential Zone 12',14,8,70,'By Zone',10,'12',NULL,1),(13,'Residential Zone 13',14,8,70,'By Zone',10,'13',NULL,1),(14,'Residential Zone 14',14,8,70,'By Zone',10,'14',NULL,1),(15,'Residential Zone 15',14,8,70,'By Zone',10,'15',NULL,1),(16,'Commercial Zone 1',14,8,70,'By Zone',10,'1',NULL,1),(17,'Commercial Zone 2',14,8,70,'By Zone',10,'2',NULL,1),(18,'Commercial Zone 3',14,8,70,'By Zone',10,'3',NULL,1),(19,'Commercial Zone 4',14,8,70,'By Zone',10,'4',NULL,1),(20,'Commercial Zone 5',14,8,70,'By Zone',10,'5',NULL,1),(21,'Commercial Zone 6',14,8,70,'By Zone',10,'6',NULL,1),(22,'Commercial Zone 7',14,8,70,'By Zone',10,'7',NULL,1),(23,'Commercial Zone 8',14,8,70,'By Zone',10,'8',NULL,1),(24,'Commercial Zone 9',14,8,70,'By Zone',10,'9',NULL,1),(25,'Commercial Zone 10',14,8,70,'By Zone',10,'10',NULL,1),(26,'Commercial Zone 11',14,8,70,'By Zone',10,'11',NULL,1),(27,'Commercial Zone 12',14,8,70,'By Zone',10,'12',NULL,1),(28,'Commercial Zone 13',14,8,70,'By Zone',10,'13',NULL,1),(29,'Commercial Zone 14',14,8,70,'By Zone',10,'14',NULL,1),(30,'Commercial Zone 15',14,8,70,'By Zone',10,'15',NULL,1),(31,'Test',1,1,1,NULL,1,'11','O:8:\"stdClass\":10:{s:10:\"custype_id\";i:31;s:12:\"custype_type\";s:4:\"Test\";s:24:\"custype_cubic_meter_rate\";i:1;s:23:\"custype_min_cubic_meter\";i:1;s:21:\"custype_min_peso_rate\";i:1;s:25:\"custype_due_date_duration\";s:7:\"By Zone\";s:24:\"custype_due_date_penalty\";d:1;s:12:\"custype_zone\";s:2:\"13\";s:21:\"custype_previous_data\";s:344:\"O:8:\"stdClass\":10:{s:10:\"custype_id\";i:31;s:12:\"custype_type\";s:4:\"Test\";s:24:\"custype_cubic_meter_rate\";i:1;s:23:\"custype_min_cubic_meter\";i:1;s:21:\"custype_min_peso_rate\";i:1;s:25:\"custype_due_date_duration\";s:1:\"2\";s:24:\"custype_due_date_penalty\";d:1;s:12:\"custype_zone\";s:2:\"13\";s:21:\"custype_previous_data\";N;s:17:\"custype_published\";i:1;}\";s:17:\"custype_published\";i:1;}',1);
/*!40000 ALTER TABLE `tbl_customer_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_customer_type` with 31 row(s)
--

--
-- Table structure for table `tbl_customer_type_old`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer_type_old` (
  `custypeo_id` int(11) NOT NULL AUTO_INCREMENT,
  `custype_id` int(11) DEFAULT NULL,
  `custype_type` varchar(15) DEFAULT NULL,
  `custype_cubic_meter_rate` int(11) DEFAULT NULL,
  `custype_min_cubic_meter` int(11) DEFAULT NULL,
  `custype_min_peso_rate` int(11) DEFAULT NULL,
  `custype_due_date_duration` varchar(255) DEFAULT NULL,
  `custype_due_date_penalty` float DEFAULT NULL,
  `custype_zone` int(11) DEFAULT NULL,
  `custype_previous_data` text,
  `custype_published` int(11) DEFAULT '1',
  PRIMARY KEY (`custypeo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_type_old`
--

LOCK TABLES `tbl_customer_type_old` WRITE;
/*!40000 ALTER TABLE `tbl_customer_type_old` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_customer_type_old` VALUES (1,31,'Test',1,1,1,'2',1,13,NULL,1),(2,31,'Test',1,1,1,'By Zone',1,13,'O:8:\"stdClass\":10:{s:10:\"custype_id\";i:31;s:12:\"custype_type\";s:4:\"Test\";s:24:\"custype_cubic_meter_rate\";i:1;s:23:\"custype_min_cubic_meter\";i:1;s:21:\"custype_min_peso_rate\";i:1;s:25:\"custype_due_date_duration\";s:1:\"2\";s:24:\"custype_due_date_penalty\";d:1;s:12:\"custype_zone\";s:2:\"13\";s:21:\"custype_previous_data\";N;s:17:\"custype_published\";i:1;}',1);
/*!40000 ALTER TABLE `tbl_customer_type_old` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_customer_type_old` with 2 row(s)
--

--
-- Table structure for table `tbl_employee`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `acc_id` int(10) NOT NULL,
  `emp_firstname` char(20) NOT NULL,
  `emp_lastname` char(20) NOT NULL,
  `emp_mobile_number` varchar(15) DEFAULT NULL,
  `emp_address` varchar(30) NOT NULL,
  `emp_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_created` datetime DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_employee` VALUES (1,1,'Admin','Name','','CDO','2019-03-16 13:01:21','2019-03-16 21:01:21');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_employee` with 1 row(s)
--

--
-- Table structure for table `tbl_meter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_meter` (
  `meter_id` int(10) NOT NULL AUTO_INCREMENT,
  `cus_id` int(10) NOT NULL,
  `custype_id` int(10) NOT NULL,
  `meter_serial_no` varchar(255) DEFAULT NULL,
  `meter_model` varchar(15) NOT NULL,
  `meter_duedate` datetime NOT NULL,
  `meter_address` varchar(30) NOT NULL,
  `meter_total_consumed` int(11) DEFAULT '0',
  PRIMARY KEY (`meter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_meter`
--

LOCK TABLES `tbl_meter` WRITE;
/*!40000 ALTER TABLE `tbl_meter` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_meter` VALUES (1,1,1,'15645','451','1970-01-01 00:00:00','CDO',3),(2,1,2,'123','13','1970-01-01 00:00:00','CDO123',2),(3,1,2,'456','Test','2019-03-18 00:00:00','CD',0);
/*!40000 ALTER TABLE `tbl_meter` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_meter` with 3 row(s)
--

--
-- Table structure for table `tbl_meter_reading`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_meter_reading` (
  `reading_id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_id` int(10) NOT NULL,
  `meter_id` int(10) DEFAULT NULL,
  `reading_date` datetime DEFAULT NULL,
  `reading_prev_waterconsumed` int(11) DEFAULT NULL,
  `reading_waterconsumed` int(11) DEFAULT '0',
  `reading_amount` decimal(10,2) DEFAULT NULL,
  `reading_other_payment_name` varchar(255) DEFAULT NULL,
  `reading_other_payment` decimal(10,2) DEFAULT '0.00',
  `reading_status` varchar(20) DEFAULT NULL,
  `reading_remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reading_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_meter_reading`
--

LOCK TABLES `tbl_meter_reading` WRITE;
/*!40000 ALTER TABLE `tbl_meter_reading` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_meter_reading` VALUES (3,1,1,'2019-03-17 00:00:00',1,2,70.00,'Test123',133.00,'Read',NULL),(4,1,2,'2019-03-17 00:00:00',0,2,70.00,'Test',2.00,'Read',NULL);
/*!40000 ALTER TABLE `tbl_meter_reading` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_meter_reading` with 2 row(s)
--

--
-- Table structure for table `tbl_payment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `pay_status` char(7) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_payment` VALUES (1,1,1,'Partial');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_payment` with 1 row(s)
--

--
-- Table structure for table `tbl_payment_details`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment_details` (
  `trans_id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_id` int(10) DEFAULT NULL,
  `reading_id` int(10) NOT NULL,
  `trans_payment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `trans_date` datetime DEFAULT NULL,
  `trans_arrears_amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_details`
--

LOCK TABLES `tbl_payment_details` WRITE;
/*!40000 ALTER TABLE `tbl_payment_details` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_payment_details` VALUES (1,1,3,21.00,'2019-03-17 14:18:43',0.00);
/*!40000 ALTER TABLE `tbl_payment_details` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_payment_details` with 1 row(s)
--

--
-- Table structure for table `tbl_request`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) DEFAULT NULL,
  `request_prev_data_serialized` varchar(255) DEFAULT NULL,
  `request_data_serialized` varchar(255) DEFAULT NULL,
  `request_type` enum('Name','Address') DEFAULT NULL,
  `request_status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `request_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_request`
--

LOCK TABLES `tbl_request` WRITE;
/*!40000 ALTER TABLE `tbl_request` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `tbl_request` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_request` with 0 row(s)
--

--
-- Table structure for table `tbl_sms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sms` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_api_key` text,
  `sms_device_id` int(11) DEFAULT NULL,
  `sms_status` varchar(15) DEFAULT 'Not Used',
  PRIMARY KEY (`sms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sms`
--

LOCK TABLES `tbl_sms` WRITE;
/*!40000 ALTER TABLE `tbl_sms` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_sms` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhZG1pbiIsImlhdCI6MTU1MjgwNzE5OCwiZXhwIjo0MTAyNDQ0ODAwLCJ1aWQiOjY1Mjk3LCJyb2xlcyI6WyJST0xFX1VTRVIiXX0.6R9ib-9-AWKjv5lfHkB385FL6PncDh43IrZJZcNM2nY',110138,'Used'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhZG1pbiIsImlhdCI6MTU0ODY1NzYyNywiZXhwIjo0MTAyNDQ0ODAwLCJ1aWQiOjM2NTY4LCJyb2xlcyI6WyJST0xFX1VTRVIiXX0._U6c-9Kp4virhtFFqytn2dZInIyqZu_sVDm7oyQh0YE',107892,'Not Used'),(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhZG1pbiIsImlhdCI6MTU0OTg1NjEzNywiZXhwIjo0MTAyNDQ0ODAwLCJ1aWQiOjM2NTY4LCJyb2xlcyI6WyJST0xFX1VTRVIiXX0.ItJ9FAF2SZChS2ZJ-38Xi4pZ4n4uaNEGBiQEgj1N1ZY',109356,'Not Used');
/*!40000 ALTER TABLE `tbl_sms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_sms` with 3 row(s)
--

--
-- Table structure for table `tbl_water_reader`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_water_reader` (
  `reader_id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_firstname` char(20) NOT NULL,
  `reader_lastname` char(20) NOT NULL,
  `reader_address` varchar(30) NOT NULL,
  `reader_mobile_number` varchar(15) DEFAULT NULL,
  `reader_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reader_created` datetime DEFAULT NULL,
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_water_reader`
--

LOCK TABLES `tbl_water_reader` WRITE;
/*!40000 ALTER TABLE `tbl_water_reader` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `tbl_water_reader` VALUES (1,'Reader','Name','CDO',NULL,'2019-03-16 21:24:01','2019-03-17 05:24:01');
/*!40000 ALTER TABLE `tbl_water_reader` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `tbl_water_reader` with 1 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Sun, 17 Mar 2019 16:39:41 +0800
