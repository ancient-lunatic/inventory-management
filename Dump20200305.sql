-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventorymanagement
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
-- Table structure for table `accountdetails`
--

DROP TABLE IF EXISTS `accountdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountdetails` (
  `accountId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `bankName` varchar(45) NOT NULL,
  `locality` varchar(80) NOT NULL,
  `cityId` int NOT NULL,
  `accountNumber` varchar(24) NOT NULL,
  `IFSCCode` varchar(20) NOT NULL,
  PRIMARY KEY (`accountId`),
  KEY `cityId1_idx` (`cityId`),
  KEY `cityId123_idx` (`cityId`),
  CONSTRAINT `cityId123` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`),
  CONSTRAINT `employeeId` FOREIGN KEY (`accountId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountdetails`
--

LOCK TABLES `accountdetails` WRITE;
/*!40000 ALTER TABLE `accountdetails` DISABLE KEYS */;
INSERT INTO `accountdetails` VALUES (1,1,'	Bank of Maharashtra','thane',30,'4003830171874018','SMBC001'),(2,2,'	Bank of Maharashtra','by-pass road',32,'4111111111111111','NMCB001'),(3,3,'Andhra Bank','subahash nagra',32,'5496198584584769','UTBI001'),(4,4,'	Bank of Baroda','pilibhit road',33,'2223000048400011','UTBI001'),(5,5,'Allahabad Bank','karamchari nagar',39,'2223520043560014','UTBI001'),(6,6,'Andhra Bank','prem nagar',35,'378282246310005','UOVB001'),(7,7,'	Bank of Baroda','rajendra nagar',34,'371449635398431','SIBL001'),(8,8,'	Bank of Baroda','kurmanchal nagr',32,'6011111111111117','PJSB001'),(9,9,'Corporation Bank','vaishali',30,'6011000990139424','RATN001'),(10,10,'Corporation Bank','badkal station',30,'3530111333300000','ORBC001'),(11,11,'	Bank of Baroda','faridabad road',36,'3566002020360505','RATN005'),(12,12,'Canara Bank','gandhi road',33,'30569309025904','SBHY001'),(13,13,'Allahabad Bank','minister road',36,'38520000023237','MSHQ001'),(14,14,'	Bank of Maharashtra','palace road',38,'565546546546456','KOEX001'),(15,15,'Allahabad Bank','by pass',38,'768686787973','KSCB001'),(16,16,'Central Bank of India','sec 28',37,'56768356756756','JSBL001'),(17,17,'Corporation Bank','sec30',37,'24544644396646','VYSA001'),(18,18,'Andhra Bank','sec54, part-2',36,'55648574984354','JSBL001'),(19,19,'Andhra Bank','karim park ',34,'3547668274635','CHAS001'),(20,20,'Allahabad Bank','sec78 part-c ,black -A',36,'56436574564468','ICIC001');
/*!40000 ALTER TABLE `accountdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressId` int NOT NULL AUTO_INCREMENT,
  `addressTypeId` int NOT NULL,
  `employeeId` int NOT NULL,
  `addressLine1` varchar(200) NOT NULL,
  `addressLine2` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `cityId` int NOT NULL,
  `pincode` varchar(6) NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `employeeId` (`employeeId`),
  KEY `cityId1_idx` (`cityId`),
  KEY `addressTypeId_idx` (`addressTypeId`),
  KEY `addressType_idx` (`addressTypeId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `addressType` FOREIGN KEY (`addressTypeId`) REFERENCES `addresstype` (`adressTypeId`),
  CONSTRAINT `cityId1` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,3,2,'h.no 4546 ','ganli mahulla chock ',' near barely polise station',8,'243122'),(4,2,7,'Ap #449-2327 ',' Semper Road','',7,'Z3613'),(5,2,5,'759-3575 ','Dictum. Street','',44,'644656'),(6,3,9,'645-7157 ','Tincidunt Avenue','',12,'54551'),(7,1,7,'Ap #275-4119 ','Ac, St.','near prem nagar',5,'4165'),(8,3,8,'Ap #708-4948 ','Donec Ave','',33,'23419'),(9,2,10,'924-6288 ','Dolor Rd.','',36,'67869'),(10,1,11,'P.O. Box 956, ','1827 Suscipit Rd.','near lajpaqt market',29,'48129'),(11,2,12,'244-9065 ','Velit Ave','',17,'2965'),(12,3,13,'P.O. Box 657, ','2367 Class Avenue','near science museum',36,'09741'),(13,2,14,'977 ','Enim. Road','',8,'11633'),(14,2,15,'618-6437 ','Erat St.','',38,'09032'),(15,3,17,'880-8865 ','Velit. Rd.','',43,'815960'),(16,3,16,'896-2750 ','Nisi Street','',44,'4526HB'),(17,2,20,'P.O. Box 655, 3985 ','Sodales. St.','',45,'8024'),(18,2,18,'P.O. Box 733',' 7928 Ipsum St.','right behind pedestarian path',1,'70131'),(19,3,19,'Ap #971-6733',' Nam St.','',2,'79212'),(20,3,11,'674',' Nostra, St.','',3,'889546'),(21,1,12,'9737',' Bibendum Avenue','',4,'9491'),(22,1,15,'P.O. Box 942, ','2788  Interdum Avenue','',5,'464113'),(23,1,18,'P.O. Box 481,',' 2434 Et Street','opposite to metro station',6,'50974'),(24,1,20,'P.O. Box 622,',' 816 Nisi. Ave','',7,'21479'),(25,1,14,'7075 Phasellus Av.',NULL,'',8,'760322'),(26,3,6,'Ap #989-9327',' Arcu Street','',9,'6849'),(27,1,5,'626 Purus Avenue',NULL,'near kallu chauraha',10,'483374'),(28,3,3,'P.O. Box 971',', 6822 Quam Avenue','',11,'65600'),(29,3,1,'Ap #248-9129 A, St.',NULL,'',12,'384236');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresstype`
--

DROP TABLE IF EXISTS `addresstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresstype` (
  `adressTypeId` int NOT NULL AUTO_INCREMENT,
  `addressType` varchar(45) NOT NULL,
  PRIMARY KEY (`adressTypeId`),
  UNIQUE KEY `Type_UNIQUE` (`addressType`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresstype`
--

LOCK TABLES `addresstype` WRITE;
/*!40000 ALTER TABLE `addresstype` DISABLE KEYS */;
INSERT INTO `addresstype` VALUES (1,'current'),(2,'permanent'),(3,'same');
/*!40000 ALTER TABLE `addresstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigneddevices`
--

DROP TABLE IF EXISTS `assigneddevices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigneddevices` (
  `assignedDeviceId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `deviceId` int NOT NULL,
  `assignedDate` date NOT NULL,
  `returnDate` date NOT NULL,
  PRIMARY KEY (`assignedDeviceId`),
  KEY `employeeId` (`employeeId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `assigneddevices_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `assigneddevices_ibfk_3` FOREIGN KEY (`deviceId`) REFERENCES `device` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigneddevices`
--

LOCK TABLES `assigneddevices` WRITE;
/*!40000 ALTER TABLE `assigneddevices` DISABLE KEYS */;
INSERT INTO `assigneddevices` VALUES (1,3,8,'2020-01-09','2020-03-02'),(2,10,22,'2020-02-19','2020-02-26'),(3,15,5,'2020-01-10','2020-02-23'),(4,17,20,'2020-02-10','2020-02-28'),(5,19,11,'2020-02-10','2020-03-02'),(6,6,13,'2020-02-22','2020-02-28'),(7,13,10,'2020-02-22','2020-03-02'),(8,11,2,'2020-02-28','2020-03-10');
/*!40000 ALTER TABLE `assigneddevices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodgroup` (
  `bloodGroupId` int NOT NULL AUTO_INCREMENT,
  `bloodGroupName` varchar(45) NOT NULL,
  PRIMARY KEY (`bloodGroupId`),
  UNIQUE KEY `bloodGroupId_UNIQUE` (`bloodGroupId`),
  UNIQUE KEY `bloodGroupName_UNIQUE` (`bloodGroupName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroup`
--

LOCK TABLES `bloodgroup` WRITE;
/*!40000 ALTER TABLE `bloodgroup` DISABLE KEYS */;
INSERT INTO `bloodgroup` VALUES (2,'A-'),(1,'A+'),(6,'AB-'),(5,'AB+'),(4,'B-'),(3,'B+'),(8,'O-'),(7,'O+');
/*!40000 ALTER TABLE `bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `cityId` int NOT NULL AUTO_INCREMENT,
  `stateId` int DEFAULT NULL,
  `cityName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cityId`),
  UNIQUE KEY `cityId_UNIQUE` (`cityId`),
  KEY `stateId_idx` (`stateId`),
  CONSTRAINT `stateId` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,1,'Waras'),(2,2,'Andkhoy'),(3,3,'Mazar-i-Sharif'),(4,3,'Jalalabad'),(5,4,'Kabul'),(6,4,'Kandahar'),(7,5,'Reggane'),(8,6,'Lagos'),(9,7,'NewCastel'),(10,7,'Orange'),(11,8,'Gold Castel'),(12,8,'Logan'),(13,9,'Gawler'),(14,10,'Vale do Jurua'),(15,11,'bacabal'),(16,11,'Santa Ines'),(17,12,'Curitiba'),(18,12,'Londrina'),(19,13,'helo'),(20,13,'kailua'),(21,14,'Prizren'),(22,15,'dallan'),(23,15,'anshan'),(24,16,'Kentucky.'),(25,16,'Alabama.'),(26,17,'Gharb Seheil'),(27,18,'Giza*'),(28,18,'Shubra El Kheima*'),(29,19,'thane'),(30,19,'borivali'),(31,20,'new delhi'),(32,20,'nizamuddin'),(33,20,'vaishali'),(34,21,'bareilly'),(35,21,'badaun'),(36,21,'pilibhit'),(37,21,'lucknow'),(38,22,'dehradun'),(39,22,'masoori'),(40,23,'fuji'),(41,23,'yaizu'),(42,24,'Oyama'),(43,24,'Tochigi'),(44,25,'anan'),(45,26,'narulo');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaintId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `deviceId` int NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`complaintId`),
  KEY `employeeId` (`employeeId`),
  KEY `deviceId` (`deviceId`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`deviceId`) REFERENCES `device` (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (1,1,1,'device not working properly'),(2,2,3,'connection issue'),(3,16,12,'device is broken'),(4,9,20,'connection issue with the device'),(5,14,19,'device is not working .Kindly see it');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactinformation`
--

DROP TABLE IF EXISTS `contactinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactinformation` (
  `contactId` int NOT NULL AUTO_INCREMENT,
  `contactNumber` varchar(45) NOT NULL,
  `employeeId` int NOT NULL,
  `countryCodeId` int NOT NULL,
  `contactTypeId` int NOT NULL,
  PRIMARY KEY (`contactId`),
  KEY `employeeID2_idx` (`employeeId`),
  KEY `countryCodeId_idx` (`countryCodeId`),
  KEY `contactTypeId_idx` (`contactTypeId`),
  CONSTRAINT `contactTypeId` FOREIGN KEY (`contactTypeId`) REFERENCES `contacttype` (`contactTypeId`),
  CONSTRAINT `countryId02` FOREIGN KEY (`countryCodeId`) REFERENCES `country` (`countryId`),
  CONSTRAINT `employeeID2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinformation`
--

LOCK TABLES `contactinformation` WRITE;
/*!40000 ALTER TABLE `contactinformation` DISABLE KEYS */;
INSERT INTO `contactinformation` VALUES (1,'427 4111655',1,1,1),(2,'7412589634',3,2,1),(3,'1513124',3,3,3),(4,'4668462',4,4,2),(5,'9886354984',5,5,1),(6,'7979564145',6,6,1),(7,'7979564156',7,7,1),(8,'7979564178',8,8,1),(9,'7979564185',9,9,1),(10,'7979564112',10,10,1),(11,'7979564166',11,1,1),(12,'7979564190',12,1,1),(13,'7979564199',12,3,1),(14,'7979564177',13,4,1),(15,'7979564133',14,5,1),(16,'7979564155',15,6,1),(17,'2343556667',16,7,1),(18,'7979564123',17,8,1),(19,'7979565311',18,9,1),(20,'4564680566',18,5,1),(21,'5746752565',19,7,1),(22,'7979565366',20,8,1),(23,'7979565356',2,10,1);
/*!40000 ALTER TABLE `contactinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttype`
--

DROP TABLE IF EXISTS `contacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacttype` (
  `contactTypeId` int NOT NULL AUTO_INCREMENT,
  `contactType` varchar(45) NOT NULL,
  PRIMARY KEY (`contactTypeId`),
  UNIQUE KEY `contactTypeId_UNIQUE` (`contactTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttype`
--

LOCK TABLES `contacttype` WRITE;
/*!40000 ALTER TABLE `contacttype` DISABLE KEYS */;
INSERT INTO `contacttype` VALUES (1,'mobile'),(2,'landline'),(3,'fax');
/*!40000 ALTER TABLE `contacttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryId` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(50) NOT NULL,
  `postalCode` varchar(10) NOT NULL,
  `countryPhoneCode` varchar(45) NOT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `countryId_UNIQUE` (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan','AF','93'),(2,'Algeria','DZ','213'),(3,'American Samoa','AS','1-684'),(4,'Australia','AU','61'),(5,'Bahamas','BS','1-242'),(6,'Brazil','BR','55'),(7,'China','CN','86'),(8,'Egypt','EG','20'),(9,'India','IN','91'),(10,'Japan','JP','81');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentId` int NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(45) NOT NULL,
  PRIMARY KEY (`departmentId`),
  UNIQUE KEY `departmentId_UNIQUE` (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'HR'),(2,'Accounts and Finance'),(3,'Research and development'),(4,'Learning and development'),(5,'IT services'),(6,'Product development'),(7,'Admin department'),(8,'Security and transport.');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designation` (
  `designationId` int NOT NULL AUTO_INCREMENT,
  `designationName` varchar(45) NOT NULL,
  PRIMARY KEY (`designationId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
INSERT INTO `designation` VALUES (1,'H.R. manager'),(2,'PHP developerr'),(3,'Android developer'),(4,'Project Manager'),(5,'General Manager'),(6,'Content Writter'),(7,'System Administrator'),(8,'CEO/MD');
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `deviceId` int NOT NULL AUTO_INCREMENT,
  `deviceType` varchar(30) NOT NULL,
  `deviceBrand` varchar(30) DEFAULT NULL,
  `deviceModel` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` float(10,2) NOT NULL,
  `serialNumber` varchar(30) NOT NULL,
  `warrenty` tinyint DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL,
  `specificationId` int DEFAULT NULL,
  PRIMARY KEY (`deviceId`),
  KEY `specificatinId56_idx` (`specificationId`),
  CONSTRAINT `specificatinId56` FOREIGN KEY (`specificationId`) REFERENCES `specification` (`specificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1,'phone','REDMI','NOTE8','black',13999.00,'21212121',2,'2019-12-18',1),(2,'phone','OnePLus','7T','white',14000.00,'11114565',4,'2015-11-19',9),(3,'headphone','UBL','st','purple',5999.00,'WEE454545',6,'2020-01-25',3),(4,'laptop','lenovo','thinkpad','red',40000.00,'4152637898',5,'2018-09-19',4),(5,'mouse','Logitech','Gt','blueish black',5000.00,'412569870',1,'2017-09-11',10),(6,'laptop','dell','xyz','grey',60000.00,'789456GTY',5,'2019-09-11',5),(7,'keyboard','dell','yyy','Grey',80000.00,'7892563TY',4,'2014-09-11',10),(8,'phone','REDMI','7T','black',13999.00,'785235665',4,'2015-11-09',1),(9,'laptop','lenovo','thinkpad','pink',50000.00,'yu789523',5,'2019-11-01',6),(10,'phone','iphone','6s','white',15000.00,'5454d53',1,'2020-01-15',7),(11,'phone','iphone','6s','black',15000.00,'4353543',1,'2019-01-15',7),(12,'phone','iphone','7s','white',25000.00,'54545345d53',1,'2020-01-15',7),(13,'phone','iphone','8','white',25000.00,'5454d543',1,'2019-01-15',8),(14,'phone','iphone','7s','blue',20000.00,'453',1,'2019-01-15',8),(15,'phone','iphone','6s','white',26000.00,'54553453454d53',1,'2020-01-15',7),(16,'phone','iphone','8s','white',35000.00,'4534534564',1,'2020-01-15',8),(17,'phone','iphone','8s','blue',35000.00,'54546524d53',1,'2020-01-15',8),(18,'laptop','hcl','55','red',45000.00,'POTY7894564',5,'2015-09-12',5),(19,'laptop','hcl','55','red',45000.00,'POTY7894564254',5,'2015-09-12',6),(20,'laptop','hcl','65','red',45000.00,'kOTY78952456',5,'2015-09-12',6),(21,'laptop','hcl','55','red',45000.00,'yOTY7856',5,'2015-09-12',5),(22,'laptop','hcl','pp','white',45000.00,'PLOTY7894452356',5,'2015-09-12',4),(23,'laptop','hcl','pp','blue',45000.00,'POTY71256',5,'2015-09-12',5),(24,'laptop','hcl','65','black',45000.00,'KKOTY789456',5,'2015-09-12',6),(25,'laptop','hcl','55','red',45000.00,'HOTY789456',5,'2015-09-12',6),(26,'mouse','logitech','is','blue',10000.00,'7458966321',1,'2014-01-11',3),(27,'keyboard','dell','55','black',50000.00,'753qwe12',3,'2013-11-09',3);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disability`
--

DROP TABLE IF EXISTS `disability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disability` (
  `disabilityId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `NameOfDisability` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`disabilityId`),
  UNIQUE KEY `disabilityId_UNIQUE` (`disabilityId`),
  KEY `employeeId1_idx` (`employeeId`),
  CONSTRAINT `employeeId12` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disability`
--

LOCK TABLES `disability` WRITE;
/*!40000 ALTER TABLE `disability` DISABLE KEYS */;
INSERT INTO `disability` VALUES (1,1,'heart problem'),(2,2,'cynus'),(3,4,'liver infection'),(4,6,'blood pressure'),(5,9,'diabetic'),(6,10,'diabetic'),(7,20,'blood pressure'),(8,18,'ear problem');
/*!40000 ALTER TABLE `disability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `documentId` int NOT NULL AUTO_INCREMENT,
  `documentName` varchar(45) NOT NULL,
  PRIMARY KEY (`documentId`),
  UNIQUE KEY `documentId_UNIQUE` (`documentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'PAN Card'),(2,'Adhaar Card'),(3,'Passport'),(4,'Driving Licence');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationdetails`
--

DROP TABLE IF EXISTS `educationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationdetails` (
  `educationId` int NOT NULL AUTO_INCREMENT,
  `qualification` varchar(45) NOT NULL,
  `fieldOfStudy` varchar(45) DEFAULT NULL,
  `instituteName` varchar(100) NOT NULL,
  `universityName` varchar(150) DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `employeeId` int NOT NULL,
  `boardName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`educationId`),
  KEY `employeeId_idx` (`employeeId`),
  CONSTRAINT `employeeId4` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationdetails`
--

LOCK TABLES `educationdetails` WRITE;
/*!40000 ALTER TABLE `educationdetails` DISABLE KEYS */;
INSERT INTO `educationdetails` VALUES (1,'BTECH','IT','Manipal Academy of Higher Education','Dr. A.P.J. Abdul Kalam Technical University','2002-06-01','2006-06-01',1,NULL),(2,'BTECH','CS','	Indian Institute of Technology Kanpur','Jawaharlal Nehru University','2006-06-01','2010-01-06',2,NULL),(3,'BTECH','EC','	Lovely Professional University','	Tamil Nadu Agricultural University','2008-01-06','2012-06-01',3,NULL),(4,'BTECH','EN','	University of Delhi','	Tamil Nadu Agricultural University','2008-01-06','2012-06-01',4,NULL),(5,'MTECH','CYBER','Amity University','Dr. A.P.J. Abdul Kalam Technical University','2002-06-01','2006-06-01',5,NULL),(6,'MBA','HR','	Lovely Professional University','Jawaharlal Nehru University','2007-01-06','2011-11-11',6,NULL),(7,'B.ARCH','GA','	University of Delhi','Christ University','2006-06-01','2010-01-06',7,NULL),(8,'MCA','IT','Birla Institute of Technology and Science','Dr. A.P.J. Abdul Kalam Technical University','2006-06-01','2010-01-06',8,NULL),(9,'MCA','IT','Amity University','Jawaharlal Nehru University','2002-06-01','2004-06-01',9,NULL),(10,'MCA','IT','	Indian Institute of Technology Kanpur','Christ University','2009-06-01','2011-01-01',10,NULL),(11,'BTEch','IT','	University of Delhi','Dr. A.P.J. Abdul Kalam Technical University','2002-06-01','2006-06-01',11,NULL),(12,'B.ARCH','GA','Birla Institute of Technology and Science','amil Nadu Agricultural University','2002-06-01','2006-06-01',12,NULL),(13,'B.ANIMATION','GA','		SRM Institute of Science and Technology','amil Nadu Agricultural University','2002-06-01','2006-06-01',13,NULL),(14,'B.ANIMATION','GA','	SRM Institute of Science and Technology','	Chandigarh University','2002-06-01','2006-06-01',14,NULL),(15,'BTECH','CS','	Indian Institute of Science','Dr. A.P.J. Abdul Kalam Technical University','2002-06-01','2006-06-01',15,NULL),(16,'BTECH','EC','	Indian Institute of Technology Kanpur','	University of Calicut','2002-06-01','2006-06-01',16,NULL),(17,'MTECH','ME','	Indian Institute of Science','	University of Calicut','2009-06-01','2011-01-01',17,NULL),(18,'MCA','IT','	Indian Institute of Science','	Chandigarh University','2009-06-01','2011-01-01',18,NULL),(19,'BTECH','CS','Manipal Academy of Higher Education','Dr. A.P.J. Abdul Kalam Technical University','2002-06-01','2006-06-01',19,NULL),(20,'MCA','IT','Manipal Academy of Higher Education','Dr. A.P.J. Abdul Kalam Technical University','2005-06-10','2007-06-10',20,NULL);
/*!40000 ALTER TABLE `educationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `salutationId` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) NOT NULL,
  `employeeGenderId` int NOT NULL,
  `BirthDate` date NOT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `genderId_idx` (`employeeGenderId`),
  KEY `titleID2_idx` (`salutationId`),
  CONSTRAINT `genderId` FOREIGN KEY (`employeeGenderId`) REFERENCES `gender` (`genderId`),
  CONSTRAINT `SalutationID2` FOREIGN KEY (`salutationId`) REFERENCES `salutation` (`salutationId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'suraj','singh','rawat',1,'1995-12-29'),(2,1,'animesh',NULL,'dass',1,'1995-02-07'),(3,2,'Megha',NULL,'gupta',2,'1998-02-09'),(4,1,'Rishabh',NULL,'Bansal',1,'1996-12-26'),(5,1,'Jaswinder',NULL,'singh',1,'1992-04-30'),(6,1,'namit',NULL,'chauhan',1,'1994-04-25'),(7,2,'rishu',NULL,'singh',2,'1991-03-29'),(8,1,'sahil',NULL,'singh',1,'1980-11-09'),(9,1,'rishikant',NULL,'kumar',1,'1985-07-13'),(10,1,'mayank',NULL,'dixit',1,'1985-09-12'),(11,1,'dinish',NULL,'atri',1,'1986-06-22'),(12,1,'mayank',NULL,'kumar',1,'1983-01-02'),(13,1,'rishabhh',NULL,'path',1,'1999-09-20'),(14,2,'bhagyashri',NULL,'singh',2,'1991-01-09'),(15,2,'nikita','','sharma',2,'1989-01-20'),(16,1,'subh',NULL,'saxexna',1,'1990-10-10'),(17,1,'hemanth',NULL,'rampal',1,'1994-09-10'),(18,2,'anuradha',NULL,'singh',2,'1980-06-08'),(19,1,'tarun',NULL,'bansal',1,'1987-09-12'),(20,2,'megha',NULL,'singh',2,'1977-09-12');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeebloodgroup`
--

DROP TABLE IF EXISTS `employeebloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeebloodgroup` (
  `employeebloodGroupId` int NOT NULL AUTO_INCREMENT,
  `bloodGroupId` int NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`employeebloodGroupId`),
  UNIQUE KEY `employeebloodGroupId_UNIQUE` (`employeebloodGroupId`),
  KEY `employeeID3_idx` (`employeeId`),
  KEY `bloodGroupId_idx` (`bloodGroupId`),
  CONSTRAINT `bloodGroupId` FOREIGN KEY (`bloodGroupId`) REFERENCES `bloodgroup` (`bloodGroupId`),
  CONSTRAINT `employeeID3` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeebloodgroup`
--

LOCK TABLES `employeebloodgroup` WRITE;
/*!40000 ALTER TABLE `employeebloodgroup` DISABLE KEYS */;
INSERT INTO `employeebloodgroup` VALUES (1,2,1),(2,6,2),(3,4,3),(4,2,4),(5,1,5),(6,3,6),(7,6,7),(8,4,8),(9,3,9),(10,2,10),(11,3,11),(12,1,12),(13,3,13),(14,3,14),(15,4,15),(16,3,16),(17,2,17),(18,4,18),(19,2,19),(20,1,20);
/*!40000 ALTER TABLE `employeebloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeedocument`
--

DROP TABLE IF EXISTS `employeedocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeedocument` (
  `employeeDocumentId` int NOT NULL AUTO_INCREMENT,
  `documentId` int NOT NULL,
  `uniqueNumber` varchar(45) NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`employeeDocumentId`),
  UNIQUE KEY `employeeDocumentId_UNIQUE` (`employeeDocumentId`),
  KEY `documentIdd_idx` (`documentId`),
  KEY `employeeId234_idx` (`employeeId`),
  CONSTRAINT `documentIdd` FOREIGN KEY (`documentId`) REFERENCES `documents` (`documentId`),
  CONSTRAINT `employeeId234` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeedocument`
--

LOCK TABLES `employeedocument` WRITE;
/*!40000 ALTER TABLE `employeedocument` DISABLE KEYS */;
INSERT INTO `employeedocument` VALUES (1,1,'VBGF142FGB',1),(2,2,'654651484651',1),(3,3,'5FG6464614',1),(4,1,'FDBFG16532',2),(5,2,'5651465031464',2),(6,1,'GBFG16651',3),(7,2,'16BGFB6',3),(8,1,'GBGFB45',4),(9,1,'FGFGB651',5),(10,2,'65165461464',5),(11,1,'GFB16511',6),(12,1,'MJH1651651',7),(13,1,'JM1616061',8),(14,1,'J1M65J1M32',9),(15,1,'JM16HJ41M60',10),(16,1,'MJH6165161',11),(17,2,'6316875798616',11),(18,1,'6HJM16514651',12),(19,2,'164464161464665',12),(20,1,'JHM165131',13),(21,1,'H31M6T131',14),(22,1,'1D64G1D131',15),(23,1,'DRG16E4131',16),(24,1,'3GR1430631DR31',17),(25,1,'RD1G413111',18),(26,1,'3D1G6R1316',19),(27,1,'13GDR15161',20);
/*!40000 ALTER TABLE `employeedocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeemaritalstatus`
--

DROP TABLE IF EXISTS `employeemaritalstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeemaritalstatus` (
  `employeeMaritalStatusId` int NOT NULL AUTO_INCREMENT,
  `marritalStatusId` int NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`employeeMaritalStatusId`),
  UNIQUE KEY `employeeMaritalStatusId_UNIQUE` (`employeeMaritalStatusId`),
  KEY `employeeId5_idx` (`employeeId`),
  KEY `marritalStatusId_idx` (`marritalStatusId`),
  CONSTRAINT `employeeId5` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `marritalStatusId` FOREIGN KEY (`marritalStatusId`) REFERENCES `marritalstatus` (`marritalStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeemaritalstatus`
--

LOCK TABLES `employeemaritalstatus` WRITE;
/*!40000 ALTER TABLE `employeemaritalstatus` DISABLE KEYS */;
INSERT INTO `employeemaritalstatus` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,1,6),(7,2,7),(8,2,8),(9,1,9),(10,1,10),(11,2,11),(12,1,12),(13,2,13),(14,1,14),(15,2,15),(16,1,16),(17,2,17),(18,1,18),(19,1,19),(20,2,20);
/*!40000 ALTER TABLE `employeemaritalstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `experienceId` int NOT NULL AUTO_INCREMENT,
  `areaOfIntrest` varchar(45) NOT NULL,
  `startTime` date NOT NULL,
  `endTime` date NOT NULL,
  `employeeId` int NOT NULL,
  `companyName` varchar(60) NOT NULL,
  `companyCityId` int NOT NULL,
  PRIMARY KEY (`experienceId`),
  KEY `employeeId_idx` (`employeeId`),
  KEY `cityId71_idx` (`companyCityId`),
  CONSTRAINT `cityId71` FOREIGN KEY (`companyCityId`) REFERENCES `city` (`cityId`),
  CONSTRAINT `employeeId1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,'core java','2012-02-01','2012-06-30',6,'TCS',30),(2,'testing','2002-01-01','2004-02-08',16,'AMAZON',31),(3,'IOT','2015-07-14','2016-09-30',8,'INFOSYS',32),(4,'Q.A','2015-04-12','2015-12-10',12,'WIPRO',36),(5,'analyst','2019-01-01','2020-01-01',16,'EX2 INDIA ',34),(6,'gaming','2018-01-09','2019-09-20',18,'IBM',32),(7,'graphic designer','2017-09-09','2019-02-09',8,'TCS',32),(8,'android','2019-01-01','2019-12-11',4,'TECHILA',39),(9,'ios','2017-01-01','2019-01-11',7,'TRANCIS',39),(10,'S.E.O','2019-01-01','2020-01-01',10,'GLOBAL CONTINUMM',34),(11,'web Development','2012-07-01','2014-08-30',6,'WIPRO',32),(12,'data analyst','2015-11-20','2016-12-30',19,'HCL',30);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familyrelationdetails`
--

DROP TABLE IF EXISTS `familyrelationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familyrelationdetails` (
  `familyRelationDetailsId` int NOT NULL AUTO_INCREMENT,
  `salutationId` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) NOT NULL,
  `relationId` int NOT NULL,
  `employeeId` int DEFAULT NULL,
  PRIMARY KEY (`familyRelationDetailsId`),
  UNIQUE KEY `nameId_UNIQUE` (`familyRelationDetailsId`),
  KEY `titleId_idx` (`salutationId`),
  KEY `relationID_idx` (`relationId`),
  KEY `employeeID45_idx` (`employeeId`),
  CONSTRAINT `employeeID45` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `relationID` FOREIGN KEY (`relationId`) REFERENCES `relation` (`relationId`),
  CONSTRAINT `salutationId` FOREIGN KEY (`salutationId`) REFERENCES `salutation` (`salutationId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familyrelationdetails`
--

LOCK TABLES `familyrelationdetails` WRITE;
/*!40000 ALTER TABLE `familyrelationdetails` DISABLE KEYS */;
INSERT INTO `familyrelationdetails` VALUES (21,1,'kunwar','singh','rawat',1,1),(22,1,'shimal','kumar','dass',1,2),(23,1,'ramesh',NULL,'gupta',1,3),(24,1,'vicky',NULL,'bansal',1,4),(25,1,'shikhar',NULL,'singh',1,5),(26,1,'shikhar',NULL,'chauhan',1,6),(27,1,'akshay',NULL,'singh',1,7),(28,1,'aakash',NULL,'singh',1,8),(29,1,'pankaj',NULL,'kumar',1,9),(30,1,'manoj',NULL,'dixit',1,10),(31,1,'shubham',NULL,'atri',1,11),(32,1,'aman',NULL,'dixit',1,12),(33,1,'shivam','','pant',1,13),(34,1,'sovan',NULL,'singh',1,14),(35,1,'priyank',NULL,'saxena',1,15),(36,5,'hemant',NULL,'saxena',1,16),(37,1,'khush',NULL,'rampal',1,17),(38,1,'gautam',NULL,'singh',1,18),(39,1,'dhermender',NULL,'bansakl',1,19),(40,1,'anuj',NULL,'rajpoot',1,20),(41,2,'pushpa',NULL,'devi',2,1),(42,2,'madhu','promila','dass',2,2),(43,2,'janki','','devi',2,3),(44,2,'neha',NULL,'bansal',2,4),(45,2,'shaivani',NULL,'singh',2,5),(46,2,'megha',NULL,'chauhan',2,6),(47,2,'anushka',NULL,'singh',2,7),(48,2,'parul',NULL,'singh',2,8),(49,2,'adati',NULL,'kumar',2,9),(50,2,'payal',NULL,'dixit',2,10),(51,2,'sakshi',NULL,'atri',2,11),(52,2,'alisha',NULL,'dixit',2,12),(53,2,'sakshi',NULL,'panth',2,13),(54,2,'gauri',NULL,'singh',2,14),(55,2,'priyanka',NULL,'saxena',2,15),(56,2,'himani',NULL,'saxena',2,16),(57,2,'payal',NULL,'rampal',2,17),(58,2,'tarushi',NULL,'singh',2,18),(59,2,'sakshi',NULL,'bansal',2,19),(60,2,'pinki',NULL,'rajpoot',2,20),(61,2,'sakshi',NULL,'singh',3,5),(62,1,'jagveer',NULL,'singh',3,7),(63,2,'sulekha',NULL,'singh',3,8),(64,2,'shubhangi',NULL,'atari',3,11),(65,2,'minakshi',NULL,'panth',3,13),(66,1,'subh',NULL,'sharmna',3,15),(67,2,'himanshi',NULL,'rampal',3,17),(68,1,'hemanth',NULL,'singh',3,20);
/*!40000 ALTER TABLE `familyrelationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `genderId` int NOT NULL AUTO_INCREMENT,
  `genderType` varchar(45) NOT NULL,
  PRIMARY KEY (`genderId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'male'),(2,'female'),(3,'other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtitle`
--

DROP TABLE IF EXISTS `jobtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobtitle` (
  `jobTitleId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `departmentId` int NOT NULL,
  `designationId` int NOT NULL,
  PRIMARY KEY (`jobTitleId`),
  UNIQUE KEY `jobTitleId_UNIQUE` (`jobTitleId`),
  KEY `designationId12_idx` (`designationId`),
  KEY `departmentId12_idx` (`departmentId`),
  KEY `employeeId89_idx` (`employeeId`),
  CONSTRAINT `departmentId12` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`),
  CONSTRAINT `designationId12` FOREIGN KEY (`designationId`) REFERENCES `designation` (`designationId`),
  CONSTRAINT `employeeId89` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtitle`
--

LOCK TABLES `jobtitle` WRITE;
/*!40000 ALTER TABLE `jobtitle` DISABLE KEYS */;
INSERT INTO `jobtitle` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,1,8),(9,9,2,1),(10,10,3,2),(11,11,4,3),(12,12,6,4),(13,13,7,5),(14,14,8,1),(15,15,1,2),(16,16,2,3),(17,17,3,4),(18,18,4,8),(19,19,5,5),(20,20,8,5);
/*!40000 ALTER TABLE `jobtitle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joindate`
--

DROP TABLE IF EXISTS `joindate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joindate` (
  `joinDateId` int NOT NULL AUTO_INCREMENT,
  `dateOfJoing` date NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`joinDateId`),
  UNIQUE KEY `joinDateId_UNIQUE` (`joinDateId`),
  KEY `employeeId4_idx` (`employeeId`),
  KEY `employeeId40_idx` (`employeeId`),
  CONSTRAINT `employeeId40` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joindate`
--

LOCK TABLES `joindate` WRITE;
/*!40000 ALTER TABLE `joindate` DISABLE KEYS */;
INSERT INTO `joindate` VALUES (1,'2020-06-01',1),(2,'2017-12-20',2),(3,'2014-02-02',3),(4,'2019-11-10',4),(5,'2016-01-12',5),(6,'2016-01-12',6),(7,'2019-11-10',7),(8,'2014-12-11',8),(9,'2011-12-10',9),(10,'2017-11-11',10),(11,'2020-06-01',11),(12,'2011-12-10',12),(13,'2011-12-10',13),(14,'2019-11-10',14),(15,'2017-11-11',15),(16,'2016-01-12',16),(17,'2016-01-11',17),(18,'2011-12-10',18),(19,'2016-01-11',19),(20,'2017-11-11',20);
/*!40000 ALTER TABLE `joindate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logininfo`
--

DROP TABLE IF EXISTS `logininfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logininfo` (
  `loginInfoId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`loginInfoId`),
  UNIQUE KEY `loginInfoId_UNIQUE` (`loginInfoId`),
  KEY `employeeId666_idx` (`employeeId`),
  CONSTRAINT `employeeId666` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logininfo`
--

LOCK TABLES `logininfo` WRITE;
/*!40000 ALTER TABLE `logininfo` DISABLE KEYS */;
INSERT INTO `logininfo` VALUES (21,'ssrawat@ex2india.com','4dd49f4f84e4d6945e3bc6d14812004e',1),(22,'adass@es2india.com','6c3536d8f63d5aa11319989354af196d',2),(23,'mgupta@ex2india.com','6c3536d8f63d5aa11319989354af196d',3),(24,'rbansal@ex2india.com','6c3536d8f63d5aa11319989354af196d',4),(25,'jsingh@ex2india.com','6c3536d8f63d5aa11319989354af196d',5),(26,'nchahuhan@ex2india.com','634716b2e9dda3f095145184b81acb99',6),(27,'rsingh@ex2india.com','464ed91494acb5693cdeface5a5c12ed',7),(28,'sdhawan@ex2india.com','598c4d6ef65d0fa7986a834635666ead',8),(29,'rkumar@ex2india.com','181ff8fa7818a9dc0201bf3d8f29417b',9),(30,'mdixit@ex2india.com','879c06dfa2612c2ecf8afd8e2456d27d',10),(31,'datri@ex2india.com','206373bf51578d742a9bd1d6c0254591',11),(32,'mdixit@ex2india.com','f8de4cf7aa982a45639ebd41e027830e',12),(33,'rpant@gmail.com','e1ce28a55877ad556344bdaf98beb441',13),(34,'bsingh@gmail.com','60d25c2d918be5f46443a81ac1ae5f87',14),(35,'nsaxena@gmail.com','f6bf20a6466e99533f3dd440cd24064c',15),(36,'ssaxena@ex2india.com','ddbac82a201a23d4737376af67b8e79d',16),(37,'hrampal@ex2india.com','42dba333c4c5b5f4d4ab68656983e057',17),(38,'asingh@ex2india.com','4d809ac623ba067c54bd9b94dc953dcb',18),(39,'tbansal@ex2india.com','b7e6923f6de66497d51789db0ef3571d',19),(40,'mrajpoot@ex2india.com','22bc4892fa5ae2c20f0f04b1939baa76',20);
/*!40000 ALTER TABLE `logininfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marritalstatus`
--

DROP TABLE IF EXISTS `marritalstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marritalstatus` (
  `marritalStatusId` int NOT NULL AUTO_INCREMENT,
  `marritialStatusType` varchar(45) NOT NULL,
  PRIMARY KEY (`marritalStatusId`),
  UNIQUE KEY `marritalStatusId_UNIQUE` (`marritalStatusId`),
  UNIQUE KEY `marritialStatusType_UNIQUE` (`marritialStatusType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marritalstatus`
--

LOCK TABLES `marritalstatus` WRITE;
/*!40000 ALTER TABLE `marritalstatus` DISABLE KEYS */;
INSERT INTO `marritalstatus` VALUES (4,'divorced'),(6,'engaged'),(2,'married'),(3,'seperated'),(1,'single'),(5,'widowed');
/*!40000 ALTER TABLE `marritalstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `permissionId` int NOT NULL AUTO_INCREMENT,
  `permission` varchar(30) NOT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'CRUD User'),(2,'Crud Device'),(3,'accept request'),(4,'edit information'),(5,'assigne device'),(6,'reject device');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionassigned`
--

DROP TABLE IF EXISTS `permissionassigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissionassigned` (
  `permissionAssignedId` int NOT NULL AUTO_INCREMENT,
  `roleId` int NOT NULL,
  `permissionId` int NOT NULL,
  PRIMARY KEY (`permissionAssignedId`),
  KEY `roleId` (`roleId`),
  KEY `permissionId` (`permissionId`),
  CONSTRAINT `permissionassigned_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`),
  CONSTRAINT `permissionassigned_ibfk_2` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionassigned`
--

LOCK TABLES `permissionassigned` WRITE;
/*!40000 ALTER TABLE `permissionassigned` DISABLE KEYS */;
INSERT INTO `permissionassigned` VALUES (1,1,2),(2,1,3),(3,1,4),(4,1,6),(5,1,5),(6,2,3),(7,2,4),(8,3,3),(9,3,4),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,4,5),(15,4,6),(16,5,3),(17,5,5);
/*!40000 ALTER TABLE `permissionassigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation` (
  `relationId` int NOT NULL AUTO_INCREMENT,
  `relationType` varchar(45) NOT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `relationId_UNIQUE` (`relationId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (1,'father'),(2,'mother'),(3,'spouse');
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportingperson`
--

DROP TABLE IF EXISTS `reportingperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportingperson` (
  `reportingPersonId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `reportingEmployeeId` int NOT NULL,
  PRIMARY KEY (`reportingPersonId`),
  UNIQUE KEY `reportingPersonId_UNIQUE` (`reportingPersonId`),
  KEY `employeeId999_idx` (`employeeId`),
  KEY `employeeId888_idx` (`reportingEmployeeId`),
  CONSTRAINT `employeeId888` FOREIGN KEY (`reportingEmployeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `employeeId999` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportingperson`
--

LOCK TABLES `reportingperson` WRITE;
/*!40000 ALTER TABLE `reportingperson` DISABLE KEYS */;
INSERT INTO `reportingperson` VALUES (1,1,5),(2,2,5),(3,3,5),(4,4,5),(5,5,5),(6,6,6),(7,7,6),(8,8,6),(9,9,6),(10,10,7),(11,11,7),(12,12,7),(13,13,7),(14,14,8),(15,15,8),(16,16,8),(17,17,8),(18,18,8),(19,19,9),(20,20,9);
/*!40000 ALTER TABLE `reportingperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requestdevice`
--

DROP TABLE IF EXISTS `requestdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestdevice` (
  `requestId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `deviceType` varchar(30) NOT NULL,
  `deviceBrand` varchar(30) NOT NULL,
  `deviceModel` varchar(30) NOT NULL,
  `priority` int NOT NULL,
  `noOfDays` int DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `specificationId` int NOT NULL,
  PRIMARY KEY (`requestId`),
  KEY `employeeId` (`employeeId`),
  KEY `specificationId_idx` (`specificationId`),
  CONSTRAINT `requestdevice_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `specificationId_rd` FOREIGN KEY (`specificationId`) REFERENCES `specification` (`specificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requestdevice`
--

LOCK TABLES `requestdevice` WRITE;
/*!40000 ALTER TABLE `requestdevice` DISABLE KEYS */;
INSERT INTO `requestdevice` VALUES (12,5,'phone','REDMI','7T',1,2,'need urgent',1),(13,6,'laptop','hcl','pp',2,1,NULL,4),(14,6,'mouse','logitech','Gt',3,NULL,'need urgent . my mouse is not working ',10),(15,9,'phone','iphone','6s',2,NULL,'testing puspose',7),(16,15,'laptop','hcl','55',2,NULL,NULL,5),(17,19,'phone','iphone','7s',2,15,NULL,8),(18,14,'phone','iphone','7s',2,15,NULL,8),(19,20,'laptop','lenovo','thinkpad',3,NULL,NULL,10),(20,3,'mouse','logitech','Gt',3,NULL,NULL,10);
/*!40000 ALTER TABLE `requestdevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requesthistory`
--

DROP TABLE IF EXISTS `requesthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requesthistory` (
  `requestHistoryId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `specificationId` int NOT NULL,
  `deviceType` varchar(30) NOT NULL,
  `deviceBrand` varchar(30) NOT NULL,
  `deviceModel` varchar(30) NOT NULL,
  `deviceStatus` varchar(20) NOT NULL,
  `assignedDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `assignedDays` smallint DEFAULT NULL,
  PRIMARY KEY (`requestHistoryId`),
  KEY `employeeId` (`employeeId`),
  KEY `specificationId_idx` (`specificationId`),
  CONSTRAINT `requesthistory_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `specificationId_rh` FOREIGN KEY (`specificationId`) REFERENCES `specification` (`specificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requesthistory`
--

LOCK TABLES `requesthistory` WRITE;
/*!40000 ALTER TABLE `requesthistory` DISABLE KEYS */;
INSERT INTO `requesthistory` VALUES (3,5,4,'laptop','lenovo','thinkpad','assigned','2018-10-15','2018-12-12',45),(4,15,4,'laptop','hcl','pp','assigned','2019-02-20','2019-09-24',200),(5,13,5,'laptop','hcl','pp','reject',NULL,NULL,30),(6,6,1,'phone','redmi','7T','assigned','2019-02-10','2019-03-01',20),(7,20,3,'mouse','logitech','is','assigned','2019-11-10','2020-02-01',60),(8,19,9,'phone','oneplus','7T','assigned','2019-02-14','2019-05-12',100),(11,11,7,'phone','iphone','6s','reject',NULL,NULL,20),(12,12,7,'phone','iphone','7s','reject',NULL,NULL,10);
/*!40000 ALTER TABLE `requesthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleassigned`
--

DROP TABLE IF EXISTS `roleassigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roleassigned` (
  `roleAssignedId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`roleAssignedId`),
  KEY `roleId` (`roleId`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `roleassigned_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`),
  CONSTRAINT `roleassigned_ibfk_2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleassigned`
--

LOCK TABLES `roleassigned` WRITE;
/*!40000 ALTER TABLE `roleassigned` DISABLE KEYS */;
INSERT INTO `roleassigned` VALUES (21,1,1),(22,2,2),(23,3,2),(24,4,2),(25,5,4),(26,6,2),(27,7,1),(28,8,2),(29,9,3),(30,10,5),(31,11,1),(32,12,2),(33,13,2),(34,14,2),(35,15,1),(36,16,2),(37,17,3),(38,18,5),(39,19,2),(40,20,2);
/*!40000 ALTER TABLE `roleassigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'user'),(3,'hr'),(4,'super-admin'),(5,'co-admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salutation`
--

DROP TABLE IF EXISTS `salutation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salutation` (
  `salutationId` int NOT NULL AUTO_INCREMENT,
  `salutationType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`salutationId`),
  UNIQUE KEY `tilleId_UNIQUE` (`salutationId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salutation`
--

LOCK TABLES `salutation` WRITE;
/*!40000 ALTER TABLE `salutation` DISABLE KEYS */;
INSERT INTO `salutation` VALUES (1,'Mr.'),(2,'Mrs.'),(3,'Miss.'),(4,'Ms.'),(5,'Dr.');
/*!40000 ALTER TABLE `salutation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specification`
--

DROP TABLE IF EXISTS `specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specification` (
  `specificationId` int NOT NULL AUTO_INCREMENT,
  `processor` varchar(20) DEFAULT NULL,
  `battery` int DEFAULT NULL,
  `ram` int DEFAULT NULL,
  `operatingSystem` varchar(30) DEFAULT NULL,
  `storage` int DEFAULT NULL,
  `connectivity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`specificationId`),
  KEY `specificationId_idx` (`specificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specification`
--

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;
INSERT INTO `specification` VALUES (1,'565 snpadragon',4000,4,'android',32,NULL),(2,'741 snapdrago',4000,6,'android',64,NULL),(3,NULL,NULL,NULL,NULL,NULL,'wireless'),(4,'intel i5 ',12000,8,'windows',16,NULL),(5,'intel i5',12000,12,'ubantu',250,NULL),(6,'intel i7',12000,12,'windows',500,NULL),(7,'A75 cyclone',4000,4,'ios',65,NULL),(8,'a85 tORNADO',5000,6,'IOS',128,NULL),(9,'865 SNAPDRAGON',6000,8,'ANDROID',128,NULL),(10,NULL,NULL,NULL,NULL,NULL,'wired');
/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `stateId` int NOT NULL AUTO_INCREMENT,
  `countryId` int NOT NULL,
  `stateName` varchar(45) NOT NULL,
  PRIMARY KEY (`stateId`),
  UNIQUE KEY `stateId_UNIQUE` (`stateId`),
  KEY `rffef_idx` (`countryId`),
  CONSTRAINT `countryId` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,1,'Bamyan'),(2,1,'Faryab'),(3,1,'Ghor'),(4,1,'Khost'),(5,2,'Adrar'),(6,2,'Chlef'),(7,2,'Béjaïa'),(8,4,'New South Wales'),(9,4,'Queensland'),(10,4,'South Australia'),(11,6,'Acre'),(12,6,' Maranhão'),(13,6,' Paraíba'),(14,7,'Hebei Province'),(15,7,'Jilin Province'),(16,7,'	Liaoning Province'),(17,8,'Alexandria '),(18,8,'Aswan '),(19,8,'Cairo '),(20,9,'Mumbai'),(21,9,'Delhi'),(22,9,'Uttar Pradesh'),(23,9,'Uttarakhand'),(24,10,'Shizuoka'),(25,10,'Tochigi'),(26,10,'Tokushima');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-05 15:46:31
