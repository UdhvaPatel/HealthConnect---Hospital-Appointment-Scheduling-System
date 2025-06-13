-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healthconnect
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `room_id` int DEFAULT NULL,
  `type_id` int NOT NULL DEFAULT '1',
  `appointment_date` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `status` enum('Scheduled','Completed','Cancelled','No-Show') DEFAULT 'Scheduled',
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `room_id` (`room_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  CONSTRAINT `appointments_ibfk_4` FOREIGN KEY (`type_id`) REFERENCES `appointmenttypes` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1,1,1,1,'2023-06-01 09:00:00','2023-06-01 09:30:00','Completed','Patient complained of chest pain','2025-05-14 03:36:56'),(2,2,2,2,1,'2023-06-01 10:00:00','2023-06-01 10:30:00','Completed','Headaches and dizziness','2025-05-14 03:36:56'),(3,3,3,3,3,'2023-06-02 09:00:00','2023-06-02 10:00:00','Completed','Annual pediatric checkup','2025-05-14 03:36:56'),(4,4,4,4,2,'2023-06-02 11:00:00','2023-06-02 11:15:00','Completed','Follow-up on knee surgery','2025-05-14 03:36:56'),(5,5,5,5,1,'2023-06-03 14:00:00','2023-06-03 14:30:00','Completed','Concerns about mole','2025-05-14 03:36:56'),(6,6,1,1,2,'2023-06-03 15:00:00','2023-06-03 15:15:00','Completed','Follow-up on heart medication','2025-05-14 03:36:56'),(7,7,2,2,4,'2023-06-04 10:00:00','2023-06-04 11:00:00','Completed','Spinal tap procedure','2025-05-14 03:36:56'),(8,8,3,3,3,'2023-06-04 13:00:00','2023-06-04 14:00:00','Completed','Child wellness exam','2025-05-14 03:36:56'),(9,9,4,4,5,'2023-06-05 08:00:00','2023-06-05 08:30:00','Completed','Emergency for broken arm','2025-05-14 03:36:56'),(10,10,5,5,6,'2023-06-05 11:00:00','2023-06-05 11:15:00','Completed','Blood work ordered','2025-05-14 03:36:56'),(11,1,1,1,2,'2023-06-15 09:00:00','2023-06-15 09:15:00','Scheduled','Follow-up on heart condition','2025-05-14 03:36:56'),(12,2,2,2,2,'2023-06-15 10:00:00','2023-06-15 10:15:00','Scheduled','Follow-up on migraine treatment','2025-05-14 03:36:56'),(13,3,3,3,7,'2023-06-16 09:00:00','2023-06-16 09:10:00','Scheduled','Flu vaccination','2025-05-14 03:36:56'),(14,4,4,4,4,'2023-06-16 11:00:00','2023-06-16 12:00:00','Scheduled','Knee injection','2025-05-14 03:36:56'),(15,5,5,5,2,'2023-06-17 14:00:00','2023-06-17 14:15:00','Scheduled','Follow-up on biopsy results','2025-05-14 03:36:56'),(16,6,6,6,1,'2023-06-18 09:00:00','2023-06-18 09:30:00','Scheduled','First visit with cardiologist','2025-05-14 03:36:56'),(17,7,7,7,6,'2023-06-18 10:00:00','2023-06-18 10:15:00','Scheduled','X-ray follow-up','2025-05-14 03:36:56'),(18,8,1,1,2,'2023-06-19 11:00:00','2023-06-19 11:15:00','Scheduled','Heart medication check','2025-05-14 03:36:56'),(19,9,2,2,3,'2023-06-19 13:00:00','2023-06-19 14:00:00','Scheduled','Annual neurological exam','2025-05-14 03:36:56'),(20,10,3,3,5,'2023-06-20 08:00:00','2023-06-20 08:30:00','Scheduled','Emergency pediatric visit','2025-05-14 03:36:56'),(21,7,3,3,5,'2025-07-16 12:20:00','2025-07-16 12:50:00','Scheduled',NULL,'2025-05-14 03:40:03'),(101,5,2,3,1,'2025-04-21 10:00:00','2025-04-21 11:00:00','Scheduled',NULL,'2025-05-14 03:41:57'),(102,3,6,1,1,'2025-05-15 10:00:00','2025-05-15 10:30:00','Scheduled',NULL,'2025-05-14 03:42:28'),(103,1,1,NULL,1,'2025-05-01 11:00:00','2025-05-01 12:00:00','Scheduled',NULL,'2025-05-14 03:42:36');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointmenttypes`
--

DROP TABLE IF EXISTS `appointmenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmenttypes` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `description` text,
  `base_price` decimal(10,2) NOT NULL,
  `duration_minutes` int NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmenttypes`
--

LOCK TABLES `appointmenttypes` WRITE;
/*!40000 ALTER TABLE `appointmenttypes` DISABLE KEYS */;
INSERT INTO `appointmenttypes` VALUES (1,'Initial Consultation','First visit with specialist',150.00,30),(2,'Follow-up','Routine follow-up visit',75.00,15),(3,'Annual Checkup','Comprehensive annual exam',200.00,60),(4,'Procedure','Medical procedure',300.00,60),(5,'Emergency','Urgent care visit',250.00,30),(6,'Lab Test','Diagnostic testing',100.00,15),(7,'Vaccination','Immunization',50.00,10);
/*!40000 ALTER TABLE `appointmenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `description` text,
  `head_doctor_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`department_id`),
  KEY `head_doctor_id` (`head_doctor_id`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`head_doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Cardiology','Heart and cardiovascular system care',NULL,'2025-05-14 03:36:11'),(2,'Neurology','Nervous system disorders',NULL,'2025-05-14 03:36:11'),(3,'Pediatrics','Child healthcare',NULL,'2025-05-14 03:36:11'),(4,'Orthopedics','Musculoskeletal system',NULL,'2025-05-14 03:36:11'),(5,'Oncology','Cancer treatment and care',NULL,'2025-05-14 03:36:11'),(6,'Radiology','Medical imaging',7,'2025-05-14 03:36:11'),(7,'Laboratory','Diagnostic testing',NULL,'2025-05-14 03:36:11');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `department_id` int NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `experience` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`doctor_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `license_number` (`license_number`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'John','Smith',1,'Cardiologist','555-1001','jsmith@hospital.com','MD12345',15,'2025-05-14 03:36:15'),(2,'Sarah','Johnson',2,'Neurologist','555-1002','sjohnson@hospital.com','MD12346',12,'2025-05-14 03:36:15'),(3,'Michael','Williams',3,'Pediatrician','555-1003','mwilliams@hospital.com','MD12347',10,'2025-05-14 03:36:15'),(4,'Emily','Brown',4,'Orthopedic Surgeon','555-1004','ebrown@hospital.com','MD12348',8,'2025-05-14 03:36:15'),(5,'David','Jones',5,'Oncologist','555-1005','djones@hospital.com','MD12349',20,'2025-05-14 03:36:15'),(6,'Jennifer','Davis',1,'Cardiologist','555-1006','jdavis@hospital.com','MD12350',7,'2025-05-14 03:36:15'),(7,'Robert','Miller',6,'Radiologist','555-1007','rmiller@hospital.com','MD12351',9,'2025-05-14 03:36:15');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorschedules`
--

DROP TABLE IF EXISTS `doctorschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctorschedules` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_recurring` tinyint(1) DEFAULT '1',
  `valid_from` date NOT NULL,
  `valid_to` date DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `doctorschedules_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorschedules`
--

LOCK TABLES `doctorschedules` WRITE;
/*!40000 ALTER TABLE `doctorschedules` DISABLE KEYS */;
INSERT INTO `doctorschedules` VALUES (1,1,'Monday','09:00:00','17:00:00',1,'2023-01-01',NULL),(2,1,'Wednesday','09:00:00','17:00:00',1,'2023-01-01',NULL),(3,1,'Friday','09:00:00','13:00:00',1,'2023-01-01',NULL),(4,2,'Tuesday','08:00:00','16:00:00',1,'2023-01-01',NULL),(5,2,'Thursday','08:00:00','16:00:00',1,'2023-01-01',NULL),(6,3,'Monday','09:00:00','17:00:00',1,'2023-01-01',NULL),(7,3,'Wednesday','09:00:00','17:00:00',1,'2023-01-01',NULL),(8,3,'Friday','09:00:00','17:00:00',1,'2023-01-01',NULL),(9,4,'Tuesday','08:00:00','18:00:00',1,'2023-01-01',NULL),(10,4,'Thursday','08:00:00','18:00:00',1,'2023-01-01',NULL),(11,5,'Monday','10:00:00','16:00:00',1,'2023-01-01',NULL),(12,5,'Wednesday','10:00:00','16:00:00',1,'2023-01-01',NULL),(13,5,'Friday','10:00:00','16:00:00',1,'2023-01-01',NULL),(14,6,'Tuesday','09:00:00','17:00:00',1,'2023-01-01',NULL),(15,6,'Thursday','09:00:00','17:00:00',1,'2023-01-01',NULL),(16,7,'Monday','08:00:00','16:00:00',1,'2023-01-01',NULL),(17,7,'Wednesday','08:00:00','16:00:00',1,'2023-01-01',NULL),(18,7,'Friday','08:00:00','16:00:00',1,'2023-01-01',NULL);
/*!40000 ALTER TABLE `doctorschedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctortimeoff`
--

DROP TABLE IF EXISTS `doctortimeoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctortimeoff` (
  `timeoff_id` int NOT NULL AUTO_INCREMENT,
  `doctor_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`timeoff_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `doctortimeoff_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctortimeoff`
--

LOCK TABLES `doctortimeoff` WRITE;
/*!40000 ALTER TABLE `doctortimeoff` DISABLE KEYS */;
INSERT INTO `doctortimeoff` VALUES (1,1,'2023-07-01','2023-07-14','Vacation',1),(2,2,'2023-08-15','2023-08-22','Conference',1),(3,3,'2023-06-26','2023-06-30','Family event',1),(4,4,'2023-09-05','2023-09-12','Medical leave',0),(5,5,'2023-12-20','2024-01-02','Holiday break',1);
/*!40000 ALTER TABLE `doctortimeoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergencycontacts`
--

DROP TABLE IF EXISTS `emergencycontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergencycontacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`contact_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `emergencycontacts_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergencycontacts`
--

LOCK TABLES `emergencycontacts` WRITE;
/*!40000 ALTER TABLE `emergencycontacts` DISABLE KEYS */;
INSERT INTO `emergencycontacts` VALUES (1,1,'Lisa Wilson','Spouse','555-3001',1),(2,2,'Robert Taylor','Husband','555-3002',1),(3,3,'Jessica Anderson','Mother','555-3003',1),(4,4,'Daniel Thomas','Father','555-3004',1),(5,5,'Karen Jackson','Wife','555-3005',1),(6,6,'Mark White','Brother','555-3006',1),(7,7,'Nancy Harris','Sister','555-3007',1),(8,8,'Paul Martin','Husband','555-3008',1),(9,9,'Maria Garcia','Wife','555-3009',1),(10,10,'Kevin Martinez','Father','555-3010',1),(11,1,'Michael Wilson','Son','555-3011',0),(12,3,'Sarah Anderson','Sister','555-3012',0);
/*!40000 ALTER TABLE `emergencycontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insuranceproviders`
--

DROP TABLE IF EXISTS `insuranceproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insuranceproviders` (
  `provider_id` int NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceproviders`
--

LOCK TABLES `insuranceproviders` WRITE;
/*!40000 ALTER TABLE `insuranceproviders` DISABLE KEYS */;
INSERT INTO `insuranceproviders` VALUES (1,'Blue Cross','800-555-1001','info@bluecross.com','www.bluecross.com','2025-05-14 03:36:07'),(2,'Aetna','800-555-1002','support@aetna.com','www.aetna.com','2025-05-14 03:36:07'),(3,'United Health','800-555-1003','help@unitedhealth.com','www.unitedhealth.com','2025-05-14 03:36:07'),(4,'Medicare','800-555-1004','contact@medicare.gov','www.medicare.gov','2025-05-14 03:36:07'),(5,'Kaiser Permanente','800-555-1005','service@kaiser.org','www.kaiser.org','2025-05-14 03:36:07');
/*!40000 ALTER TABLE `insuranceproviders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborders`
--

DROP TABLE IF EXISTS `laborders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laborders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `test_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Ordered','In Progress','Completed','Cancelled') DEFAULT 'Ordered',
  `notes` text,
  PRIMARY KEY (`order_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `test_id` (`test_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `laborders_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`),
  CONSTRAINT `laborders_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `labtests` (`test_id`),
  CONSTRAINT `laborders_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborders`
--

LOCK TABLES `laborders` WRITE;
/*!40000 ALTER TABLE `laborders` DISABLE KEYS */;
INSERT INTO `laborders` VALUES (1,10,1,5,'2025-05-14 03:37:10','Completed','Routine blood work'),(2,10,2,5,'2025-05-14 03:37:10','Completed','Routine blood work'),(3,5,9,5,'2025-05-14 03:37:10','Completed','Mole biopsy'),(4,7,8,2,'2025-05-14 03:37:10','Completed','CSF culture'),(5,7,1,2,'2025-05-14 03:37:10','Completed','Infection monitoring'),(6,6,3,1,'2025-05-14 03:37:10','Completed','Cholesterol check'),(7,4,10,4,'2025-05-14 03:37:10','Completed','Knee imaging'),(8,9,10,4,'2025-05-14 03:37:10','Completed','Fracture confirmation'),(9,3,7,3,'2025-05-14 03:37:10','Completed','Child wellness urinalysis'),(10,8,4,3,'2025-05-14 03:37:10','Completed','Asthma monitoring');
/*!40000 ALTER TABLE `laborders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labresults`
--

DROP TABLE IF EXISTS `labresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labresults` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `result_value` varchar(255) NOT NULL,
  `result_notes` text,
  `result_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `technician_id` int DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `labresults_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `laborders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labresults`
--

LOCK TABLES `labresults` WRITE;
/*!40000 ALTER TABLE `labresults` DISABLE KEYS */;
INSERT INTO `labresults` VALUES (1,1,'WBC: 6.5, RBC: 4.7, HGB: 14.2','Normal ranges','2025-05-14 03:37:14',1),(2,2,'Glucose: 95, Na: 140, K: 4.0','All values within normal limits','2025-05-14 03:37:14',1),(3,3,'Benign nevus','No signs of malignancy','2025-05-14 03:37:14',2),(4,4,'Streptococcus pneumoniae','Bacterial growth detected','2025-05-14 03:37:14',2),(5,5,'WBC: 12.8, RBC: 4.5, HGB: 13.8','Elevated white count','2025-05-14 03:37:14',1),(6,6,'Total Cholesterol: 210, HDL: 45, LDL: 140','Borderline high LDL','2025-05-14 03:37:14',1),(7,7,'No fractures or abnormalities','Normal knee joint','2025-05-14 03:37:14',3),(8,8,'Fracture at distal radius','Clean break, well-aligned','2025-05-14 03:37:14',3),(9,9,'pH: 6.5, Protein: negative, Glucose: negative','Normal urinalysis','2025-05-14 03:37:14',2),(10,10,'ALT: 25, AST: 22, Albumin: 4.2','Normal liver function','2025-05-14 03:37:14',1);
/*!40000 ALTER TABLE `labresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labtests`
--

DROP TABLE IF EXISTS `labtests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labtests` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) NOT NULL,
  `description` text,
  `department_id` int NOT NULL,
  `standard_cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`test_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `labtests_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labtests`
--

LOCK TABLES `labtests` WRITE;
/*!40000 ALTER TABLE `labtests` DISABLE KEYS */;
INSERT INTO `labtests` VALUES (1,'CBC','Complete Blood Count',7,25.00),(2,'Basic Metabolic Panel','Glucose, electrolytes, kidney function',7,35.00),(3,'Lipid Panel','Cholesterol and triglycerides',7,30.00),(4,'Liver Function Test','Liver enzymes and proteins',7,40.00),(5,'Thyroid Stimulating Hormone','TSH level',7,45.00),(6,'Hemoglobin A1C','3-month glucose average',7,50.00),(7,'Urinalysis','Urine screening',7,20.00),(8,'Culture and Sensitivity','Infection identification',7,60.00),(9,'Biopsy','Tissue examination',7,150.00),(10,'X-ray','Basic imaging',6,75.00),(11,'MRI','Magnetic resonance imaging',6,500.00),(12,'CT Scan','Computed tomography',6,350.00);
/*!40000 ALTER TABLE `labtests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalrecords`
--

DROP TABLE IF EXISTS `medicalrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalrecords` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `diagnosis` text NOT NULL,
  `treatment` text,
  `notes` text,
  `record_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `medicalrecords_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `medicalrecords_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `medicalrecords_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalrecords`
--

LOCK TABLES `medicalrecords` WRITE;
/*!40000 ALTER TABLE `medicalrecords` DISABLE KEYS */;
INSERT INTO `medicalrecords` VALUES (1,1,1,1,'Hypertension','Prescribed beta-blocker, recommended low-sodium diet','Patient has family history of heart disease','2025-05-14 03:37:00'),(2,2,2,2,'Migraine','Prescribed triptans, recommended stress management','Patient reports 2-3 migraines per month','2025-05-14 03:37:00'),(3,3,3,3,'Healthy child','Recommended annual vaccinations','Child is meeting all developmental milestones','2025-05-14 03:37:00'),(4,4,4,4,'Post-operative knee surgery','Physical therapy recommended','Patient recovering well from ACL reconstruction','2025-05-14 03:37:00'),(5,5,5,5,'Suspicious mole','Biopsy ordered','Mole shows irregular borders and color variation','2025-05-14 03:37:00'),(6,6,1,6,'Atrial fibrillation','Prescribed anticoagulants','Patient to monitor for dizziness or fainting','2025-05-14 03:37:00'),(7,7,2,7,'Meningitis','Lumbar puncture performed, antibiotics prescribed','Patient admitted for observation','2025-05-14 03:37:00'),(8,8,3,8,'Childhood asthma','Prescribed inhaler, allergy testing recommended','Parents to monitor for triggers','2025-05-14 03:37:00'),(9,9,4,9,'Compound fracture of radius','Arm set and cast applied','Follow-up in 6 weeks for cast removal','2025-05-14 03:37:00'),(10,10,5,10,'Routine blood work','Blood drawn for CBC and metabolic panel','Results pending','2025-05-14 03:37:00');
/*!40000 ALTER TABLE `medicalrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicationinventory`
--

DROP TABLE IF EXISTS `medicationinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicationinventory` (
  `medication_id` int NOT NULL AUTO_INCREMENT,
  `medication_name` varchar(100) NOT NULL,
  `generic_name` varchar(100) DEFAULT NULL,
  `dosage_form` varchar(50) NOT NULL,
  `strength` varchar(50) NOT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `current_stock` int NOT NULL DEFAULT '0',
  `reorder_level` int NOT NULL DEFAULT '10',
  `unit_price` decimal(10,2) NOT NULL,
  `last_restocked` date DEFAULT NULL,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicationinventory`
--

LOCK TABLES `medicationinventory` WRITE;
/*!40000 ALTER TABLE `medicationinventory` DISABLE KEYS */;
INSERT INTO `medicationinventory` VALUES (1,'Lisinopril','Lisinopril','Tablet','10mg','Generic',500,100,0.50,'2023-05-15'),(2,'Lipitor','Atorvastatin','Tablet','20mg','Pfizer',300,50,2.00,'2023-05-20'),(3,'Propranolol','Propranolol','Tablet','40mg','Generic',400,100,0.75,'2023-05-10'),(4,'Amoxicillin','Amoxicillin','Capsule','500mg','Generic',600,200,0.30,'2023-06-01'),(5,'Ibuprofen','Ibuprofen','Tablet','200mg','Generic',1000,300,0.10,'2023-05-25'),(6,'Sumatriptan','Sumatriptan','Tablet','50mg','GlaxoSmithKline',200,50,5.00,'2023-05-18'),(7,'Warfarin','Warfarin','Tablet','5mg','Generic',350,100,0.80,'2023-05-22'),(8,'Albuterol','Albuterol','Inhaler','90mcg','Teva',150,50,15.00,'2023-06-05'),(9,'Omeprazole','Omeprazole','Capsule','20mg','Generic',450,150,0.60,'2023-05-30'),(10,'Metformin','Metformin','Tablet','500mg','Generic',550,200,0.25,'2023-06-02');
/*!40000 ALTER TABLE `medicationinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientallergies`
--

DROP TABLE IF EXISTS `patientallergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientallergies` (
  `allergy_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `allergy_name` varchar(100) NOT NULL,
  `severity` enum('Mild','Moderate','Severe') NOT NULL,
  `reaction_description` text,
  PRIMARY KEY (`allergy_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `patientallergies_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientallergies`
--

LOCK TABLES `patientallergies` WRITE;
/*!40000 ALTER TABLE `patientallergies` DISABLE KEYS */;
INSERT INTO `patientallergies` VALUES (1,1,'Penicillin','Severe','Anaphylaxis'),(2,2,'Peanuts','Severe','Difficulty breathing, hives'),(3,3,'Shellfish','Moderate','Swelling, itching'),(4,4,'Latex','Mild','Skin irritation'),(5,5,'Aspirin','Moderate','Stomach pain, nausea'),(6,6,'Iodine','Severe','Anaphylaxis'),(7,7,'Sulfa drugs','Moderate','Rash, fever'),(8,8,'Eggs','Mild','Hives'),(9,9,'Dust mites','Mild','Sneezing, runny nose'),(10,10,'Pollen','Moderate','Sneezing, itchy eyes'),(11,1,'Peanuts','Mild',NULL);
/*!40000 ALTER TABLE `patientallergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `insurance_provider_id` int DEFAULT NULL,
  `policy_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`patient_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `insurance_provider_id` (`insurance_provider_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`insurance_provider_id`) REFERENCES `insuranceproviders` (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'James','Wilson','1980-05-15','Male','555-2001','james.wilson@email.com','123 Main St, Anytown',1,'BC123456789','2025-05-14 03:36:25'),(2,'Mary','Taylor','1975-08-22','Female','555-2002','mary.taylor@email.com','456 Oak Ave, Somewhere',2,'AE987654321','2025-05-14 03:36:25'),(3,'William','Anderson','1990-03-10','Male','555-2003','william.anderson@email.com','789 Pine Rd, Nowhere',3,'UH456789123','2025-05-14 03:36:25'),(4,'Patricia','Thomas','1985-11-30','Female','555-2004','patricia.thomas@email.com','321 Elm St, Anywhere',1,'BC987654321','2025-05-14 03:36:25'),(5,'Richard','Jackson','1972-07-04','Male','555-2005','richard.jackson@email.com','654 Maple Dr, Everywhere',NULL,NULL,'2025-05-14 03:36:25'),(6,'Jennifer','White','1995-02-18','Female','555-2006','jennifer.white@email.com','987 Cedar Ln, Someplace',4,'MC123456789','2025-05-14 03:36:25'),(7,'Charles','Harris','1988-09-25','Male','555-2007','charles.harris@email.com','159 Birch Blvd, Noplace',5,'KP987654321','2025-05-14 03:36:25'),(8,'Linda','Martin','1978-12-05','Female','555-2008','linda.martin@email.com','753 Spruce Ct, Anyplace',2,'AE123456789','2025-05-14 03:36:25'),(9,'Thomas','Garcia','1965-06-20','Male','555-2009','thomas.garcia@email.com','852 Willow Way, Everyplace',NULL,NULL,'2025-05-14 03:36:25'),(10,'Susan','Martinez','1992-04-12','Female','555-2010','susan.martinez@email.com','963 Aspen Trl, Nowhere',3,'UH789123456','2025-05-14 03:36:25'),(11,'Kannan','Shrikant','1985-07-15','Male','5551234567','kannan.shrikant@gmail.com','123 Main St, Boston, MA 02115',1,'INS12345678','2025-05-14 03:36:31'),(12,'Dhruv','Pechetty','2000-11-22','Male','5552345678','dhruv.pechetty@gmail.com','456 Oak Ave, Cambridge, MA 02138',2,'BCBS987654','2025-05-14 03:36:31'),(13,'Udhva','Patel','2003-09-16','Male','5553456789','udhva.patel@gmail.com','789 Pine Rd, Somerville, MA 02144',1,'AETNA54321','2025-05-14 03:36:31'),(14,'Sai Vikram','Karthikeya','2001-05-18','Male','5554567890','sai.karthikeya@gmail.com','321 Elm St, Quincy, MA 02169',3,'HUMANA8765','2025-05-14 03:36:31'),(15,'Pranav','Vanam','1999-09-12','Male','5555678901','pranav.vanam@gmail.com','654 Maple Dr, Brookline, MA 02445',NULL,NULL,'2025-05-14 03:36:31'),(16,'Yuwnwei','Wu','1998-12-05','Female','5556789012','yuwnwei.wu@gmail.com','987 Cedar Ln, Newton, MA 02458',2,'BCBS24680','2025-05-14 03:36:31');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insurance_covered` decimal(10,2) DEFAULT '0.00',
  `payment_date` timestamp NULL DEFAULT NULL,
  `payment_method` enum('Cash','Credit Card','Debit Card','Insurance','Bank Transfer') DEFAULT NULL,
  `status` enum('Pending','Partial','Completed','Failed','Refunded') DEFAULT 'Pending',
  `insurance_claim_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,1,150.00,150.00,0.00,'2023-06-01 15:00:00','Credit Card','Completed',NULL),(2,2,2,150.00,30.00,120.00,'2023-06-01 16:00:00','Insurance','Completed','AET-789456'),(3,3,3,200.00,50.00,150.00,'2023-06-02 16:00:00','Insurance','Completed','UH-123456'),(4,4,4,75.00,75.00,0.00,'2023-06-02 17:00:00','Debit Card','Completed',NULL),(5,5,5,150.00,150.00,0.00,'2023-06-03 20:00:00','Cash','Completed',NULL),(6,6,6,75.00,15.00,60.00,'2023-06-03 21:00:00','Insurance','Completed','MC-654321'),(7,7,7,300.00,50.00,250.00,'2023-06-04 17:00:00','Insurance','Completed','KP-987654'),(8,8,8,200.00,40.00,160.00,'2023-06-04 20:00:00','Insurance','Completed','AET-321654'),(9,9,9,250.00,250.00,0.00,'2023-06-05 14:00:00','Bank Transfer','Completed',NULL),(10,10,10,100.00,20.00,80.00,'2023-06-05 17:00:00','Insurance','Completed','UH-456789'),(11,11,1,75.00,0.00,0.00,NULL,NULL,'Pending',NULL),(12,12,2,75.00,0.00,0.00,NULL,NULL,'Pending',NULL),(13,13,3,50.00,0.00,0.00,NULL,NULL,'Pending',NULL),(14,14,4,300.00,0.00,0.00,NULL,NULL,'Pending',NULL),(15,15,5,75.00,0.00,0.00,NULL,NULL,'Pending',NULL),(16,11,1,75.00,25.00,0.00,'2025-05-14 03:40:43','Credit Card','Partial',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `prescription_id` int NOT NULL AUTO_INCREMENT,
  `record_id` int NOT NULL,
  `medication_id` int DEFAULT NULL,
  `medication_name` varchar(100) NOT NULL,
  `dosage` varchar(100) NOT NULL,
  `frequency` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `instructions` text,
  `prescribed_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Completed','Cancelled') DEFAULT 'Active',
  PRIMARY KEY (`prescription_id`),
  KEY `record_id` (`record_id`),
  KEY `fk_prescription_medication` (`medication_id`),
  CONSTRAINT `fk_prescription_medication` FOREIGN KEY (`medication_id`) REFERENCES `medicationinventory` (`medication_id`),
  CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `medicalrecords` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,3,'Propranolol','1 tablet','Twice daily','30 days','Take with food','2025-05-14 03:37:43','Active'),(2,2,6,'Sumatriptan','1 tablet','As needed for migraine','10 tablets','Take at first sign of migraine','2025-05-14 03:37:43','Active'),(3,3,NULL,'Multivitamin','1 chewable','Daily','90 days','For general health','2025-05-14 03:37:43','Active'),(4,4,5,'Ibuprofen','1 tablet','Every 6 hours as needed','7 days','For pain and inflammation','2025-05-14 03:37:43','Completed'),(5,5,NULL,'Biopsy site care','Apply thin layer','Twice daily','Until healed','Keep area clean and dry','2025-05-14 03:37:43','Active'),(6,6,7,'Warfarin','1 tablet','Daily','30 days','Monitor for bleeding','2025-05-14 03:37:43','Active'),(7,7,4,'Amoxicillin','1 capsule','Three times daily','10 days','Take until finished','2025-05-14 03:37:43','Completed'),(8,8,8,'Albuterol','2 puffs','Every 4-6 hours as needed','30 days','Use before exercise if needed','2025-05-14 03:37:43','Active'),(9,9,5,'Ibuprofen','1 tablet','Every 8 hours as needed','14 days','For pain management','2025-05-14 03:37:43','Active'),(10,10,NULL,'Vitamin D','1000 IU','Daily','90 days','For general health','2025-05-14 03:37:43','Active');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_number` varchar(10) NOT NULL,
  `room_type` enum('Consultation','Examination','Procedure','Hospital') NOT NULL,
  `department_id` int DEFAULT NULL,
  `capacity` int DEFAULT '1',
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `room_number` (`room_number`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'101','Consultation',1,1),(2,'102','Consultation',2,1),(3,'103','Consultation',3,1),(4,'104','Consultation',4,1),(5,'105','Consultation',5,1),(6,'201','Examination',1,2),(7,'202','Examination',2,2),(8,'203','Examination',3,2),(9,'204','Examination',4,2),(10,'205','Examination',5,2),(11,'301','Procedure',1,1),(12,'302','Procedure',2,1),(13,'303','Procedure',3,1),(14,'304','Procedure',4,1),(15,'305','Procedure',5,1),(16,'401','Hospital',NULL,4),(17,'402','Hospital',NULL,2),(18,'403','Hospital',NULL,1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `department_id` int DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Lisa','Thompson','Nurse',1,'555-4001','lthompson@hospital.com','2020-01-15'),(2,'Mark','Roberts','Nurse',2,'555-4002','mroberts@hospital.com','2019-05-20'),(3,'Anna','Clark','Nurse',3,'555-4003','aclark@hospital.com','2021-03-10'),(4,'Paul','Lewis','Nurse',4,'555-4004','plewis@hospital.com','2018-11-05'),(5,'Rachel','Walker','Nurse',5,'555-4005','rwalker@hospital.com','2022-02-18'),(6,'Kevin','Allen','Lab Technician',7,'555-4006','kallen@hospital.com','2020-07-22'),(7,'Jessica','Young','Lab Technician',7,'555-4007','jyoung@hospital.com','2021-09-14'),(8,'Daniel','Scott','Radiology Technician',6,'555-4008','dscott@hospital.com','2019-04-30'),(9,'Amanda','Green','Administrator',NULL,'555-4009','agreen@hospital.com','2017-08-12'),(10,'Steven','Adams','Receptionist',NULL,'555-4010','sadams@hospital.com','2022-01-05');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-13 15:27:45
