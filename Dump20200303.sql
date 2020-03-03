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
  `branchName` varchar(45) NOT NULL,
  `accountNumber` varchar(24) NOT NULL,
  `IFSCCode` varchar(20) NOT NULL,
  PRIMARY KEY (`accountId`),
  CONSTRAINT `employeeId` FOREIGN KEY (`accountId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountdetails`
--

LOCK TABLES `accountdetails` WRITE;
/*!40000 ALTER TABLE `accountdetails` DISABLE KEYS */;
INSERT INTO `accountdetails` VALUES (1,1,'	Bank of Maharashtra','Mumbai, Maharashtra','4003830171874018','SMBC001'),(2,2,'	Bank of Maharashtra','Thrissur, Kerala','4111111111111111','NMCB001'),(3,3,'Andhra Bank','Thrissur, Kerala','5496198584584769','UTBI001'),(4,4,'	Bank of Baroda','Kolkata, West Bengal	','2223000048400011','UTBI001'),(5,5,'Allahabad Bank','Karur, Tamil Nadu','2223520043560014','UTBI001'),(6,6,'Andhra Bank','Nainital, Uttarakhand','378282246310005','UOVB001'),(7,7,'	Bank of Baroda','Nainital, Uttarakhand','371449635398431','SIBL001'),(8,8,'	Bank of Baroda','Kolkata, West Bengal	','6011111111111117','PJSB001'),(9,9,'Corporation Bank','Mumbai, Maharashtra','6011000990139424','RATN001'),(10,10,'Corporation Bank','Karur, Tamil Nadu','3530111333300000','ORBC001'),(11,11,'	Bank of Baroda','Thrissur, Kerala','3566002020360505','RATN005'),(12,12,'Canara Bank','Thrissur, Kerala','30569309025904','SBHY001'),(13,13,'Allahabad Bank','Nainital, Uttarakhand','38520000023237','MSHQ001'),(14,14,'	Bank of Maharashtra','Mumbai, Maharashtra','565546546546456','KOEX001'),(15,15,'Allahabad Bank','Kolkata, West Bengal	','768686787973','KSCB001'),(16,16,'Central Bank of India','Srinagar, Jammu and Kashmir','56768356756756','JSBL001'),(17,17,'Corporation Bank','Srinagar, Jammu and Kashmir','24544644396646','VYSA001'),(18,18,'Andhra Bank','Thrissur, Kerala','55648574984354','JSBL001'),(19,19,'Andhra Bank','Srinagar, Jammu and Kashmir','3547668274635','CHAS001'),(20,20,'Allahabad Bank','Thrissur, Kerala','56436574564468','ICIC001');
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
  `addressType` varchar(45) NOT NULL,
  `addressLine1` varchar(200) NOT NULL,
  `addressLine2` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `pincode` varchar(6) NOT NULL,
  `employeeId` int NOT NULL,
  `countryId1` int NOT NULL,
  `stateId` int NOT NULL,
  `cityId` int NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `employeeId` (`employeeId`),
  KEY `countryId_idx` (`countryId1`),
  KEY `stateId_idx` (`stateId`),
  KEY `cityId1_idx` (`cityId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`),
  CONSTRAINT `cityId1` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityId`),
  CONSTRAINT `countryId11` FOREIGN KEY (`countryId1`) REFERENCES `country` (`countryId`),
  CONSTRAINT `stateId1` FOREIGN KEY (`stateId`) REFERENCES `state` (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'same','h.no 4546 ','ganli mahulla chock ',' near barely polise station','243122',2,1,1,8),(4,'permanent','Ap #449-2327 ',' Semper Road','','Z3613',7,2,24,7),(5,'permanent','759-3575 ','Dictum. Street','','644656',5,4,2,44),(6,'same','645-7157 ','Tincidunt Avenue','','54551',9,3,8,12),(7,'current','Ap #275-4119 ','Ac, St.','near prem nagar','4165',7,5,3,5),(8,'same','Ap #708-4948 ','Donec Ave','','23419',8,6,5,33),(9,'permanent','924-6288 ','Dolor Rd.','','67869',10,7,4,36),(10,'current','P.O. Box 956, ','1827 Suscipit Rd.','near lajpaqt market','48129',11,8,5,29),(11,'permanent','244-9065 ','Velit Ave','','2965',12,9,8,17),(12,'same','P.O. Box 657, ','2367 Class Avenue','near science museum','09741',13,10,7,36),(13,'permanent','977 ','Enim. Road','','11633',14,3,17,8),(14,'permanent','618-6437 ','Erat St.','','09032',15,4,22,38),(15,'same','880-8865 ','Velit. Rd.','','815960',17,6,23,43),(16,'same','896-2750 ','Nisi Street','','4526HB',16,7,24,44),(17,'permanent','P.O. Box 655, 3985 ','Sodales. St.','','8024',20,9,25,45),(18,'permanent','P.O. Box 733',' 7928 Ipsum St.','right behind pedestarian path','70131',18,1,14,1),(19,'same','Ap #971-6733',' Nam St.','','79212',19,4,26,2),(20,'same','674',' Nostra, St.','','889546',11,6,19,3),(21,'current','9737',' Bibendum Avenue','','9491',12,8,17,4),(22,'current','P.O. Box 942, ','2788  Interdum Avenue','','464113',15,9,12,5),(23,'current','P.O. Box 481,',' 2434 Et Street','opposite to metro station','50974',18,4,12,6),(24,'current','P.O. Box 622,',' 816 Nisi. Ave','','21479',20,10,8,7),(25,'current','7075 Phasellus Av.',NULL,'','760322',14,1,26,8),(26,'same','Ap #989-9327',' Arcu Street','','6849',6,4,24,9),(27,'current','626 Purus Avenue',NULL,'near kallu chauraha','483374',5,5,12,10),(28,'same','P.O. Box 971',', 6822 Quam Avenue','','65600',3,7,6,11),(29,'same','Ap #248-9129 A, St.',NULL,'','384236',1,7,7,12);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
  `contactType` varchar(45) NOT NULL,
  `contactNumber` varchar(45) NOT NULL,
  `employeeId` int NOT NULL,
  `countryCodeId` int NOT NULL,
  PRIMARY KEY (`contactId`),
  KEY `employeeID2_idx` (`employeeId`),
  KEY `countryCodeId_idx` (`countryCodeId`),
  CONSTRAINT `countryId02` FOREIGN KEY (`countryCodeId`) REFERENCES `country` (`countryId`),
  CONSTRAINT `employeeID2` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinformation`
--

LOCK TABLES `contactinformation` WRITE;
/*!40000 ALTER TABLE `contactinformation` DISABLE KEYS */;
INSERT INTO `contactinformation` VALUES (1,'mobile','427 4111655',1,1),(2,'mobile','7412589634',3,2),(3,'fax','1513124',3,3),(4,'landline','4668462',4,4),(5,'mobile','9886354984',5,5),(6,'mobile','7979564145',6,6),(7,'mobile','7979564156',7,7),(8,'mobile','7979564178',8,8),(9,'mobile','7979564185',9,9),(10,'mobile','7979564112',10,10),(11,'mobile','7979564166',11,1),(12,'mobile','7979564190',12,1),(13,'mobile','7979564199',12,3),(14,'mobile','7979564177',13,4),(15,'mobile','7979564133',14,5),(16,'mobile','7979564155',15,6),(17,'mobile','2343556667',16,7),(18,'mobile','7979564123',17,8),(19,'mobile','7979565311',18,9),(20,'mobile','4564680566',18,5),(21,'mobile','5746752565',19,7),(22,'mobile','7979565366',20,8),(23,'mobile','7979565356',2,10);
/*!40000 ALTER TABLE `contactinformation` ENABLE KEYS */;
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
-- Table structure for table `educationdetails`
--

DROP TABLE IF EXISTS `educationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationdetails` (
  `educationId` int NOT NULL AUTO_INCREMENT,
  `qualification` varchar(45) NOT NULL,
  `fieldOfStudy` varchar(45) NOT NULL,
  `instituteName` varchar(100) NOT NULL,
  `universityName` varchar(150) NOT NULL,
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
  `title` varchar(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  `gender` char(1) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `motherName` varchar(100) NOT NULL,
  `spouseName` varchar(100) DEFAULT NULL,
  `departmentId` int NOT NULL,
  `designationId` int NOT NULL,
  `Email` varchar(30) NOT NULL,
  `employeePassword` varchar(50) NOT NULL,
  `marritalStatus` varchar(20) NOT NULL,
  `aadharNumber` varchar(14) NOT NULL,
  `joinDate` date NOT NULL,
  `accountId` int NOT NULL,
  `PANNumber` varchar(16) NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  PRIMARY KEY (`employeeId`,`gender`),
  UNIQUE KEY `employeePassword_UNIQUE` (`employeePassword`),
  KEY `departmentId1` (`departmentId`),
  KEY `accountId_idx` (`accountId`),
  KEY `designationId_idx` (`designationId`),
  CONSTRAINT `accountId` FOREIGN KEY (`accountId`) REFERENCES `accountdetails` (`accountId`),
  CONSTRAINT `departmentId1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`),
  CONSTRAINT `designationId` FOREIGN KEY (`designationId`) REFERENCES `designation` (`designationId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Mr.','suraj','singh','rawat','1995-12-29','m','kunwar isngh rawat','pushpa devi ',NULL,1,3,'ssrawat@ex2india.com','6c3536d8f63d5aa11319989354af196d','Single','74444445252','2020-06-01',1,'564FDBGVF','O+'),(2,'Mr.','animesh',NULL,'dass','1995-02-07','m',' shimal Kumar Dass','Madhu Promila Dass',NULL,2,4,'adass@es2india.com','090be70e37d552205543b52d2f5aebf0','Single','525245238723','2020-06-01',2,'BDGDFVB54','O-'),(3,'Miss.','megha',NULL,'gupta','1998-02-09','f','ramesh gupta','janki devi',NULL,3,5,'mgupta@ex2india.com','c328f40e30a6f48ee164daf006e8d714','single','555212365689','2017-12-20',3,'5646GGRB','AB+'),(4,'Mr.','rishabh',NULL,'bansal','1996-12-26','m','vicky bansal','neha bansal',NULL,4,6,'rbansal@ex2india.com','634716b2e9dda3f095145184b81acb99','Single','783738732714','2019-12-11',4,'564GFGDFGB','AB-'),(5,'Mr.','jaswinder','','singh','1992-04-30','m','shikar singh','shivani singh','sakshi singh',5,7,'jsingh@ex2india.com','464ed91494acb5693cdeface5a5c12ed','Married','783782354527','2018-11-22',5,'NGHJJHG6','A+'),(6,'Mr.','namit',NULL,'chauhan','1994-04-25','m','shikar chauhan','mesgha chuhan',NULL,6,1,'nchahuhan@ex2india.com','598c4d6ef65d0fa7986a834635666ead','Single','887327523875','2014-02-02',6,'JFVJDF\'KG5F','A+'),(7,'Mrs.','rishu',NULL,'singh','1991-03-29','f','akshay singh','anushka singh',' jagvir singh',7,2,'rsingh@ex2india.com','181ff8fa7818a9dc0201bf3d8f29417b','Married','247254325445','2016-10-20',7,'FDGHFD53F','AB+'),(8,'Mr.','sahil',NULL,'singh','1980-11-09','m','aakash singh','parul singh','sulekha singh',8,3,'sdhawan@ex2india.com','879c06dfa2612c2ecf8afd8e2456d27d','Married','345378375245','2015-12-01',8,'GVJHJH41BJH','B-'),(9,'Mr.','rishikant',NULL,'kumar','1985-07-13','m','pankaj kumar','aditi kumar',NULL,1,4,'rkumar@ex2india.com','f10e094c7913bbb75bb0f9497dfd3a37','single','435453427241','2019-11-10',9,'BXJHBJAXB41','B-'),(10,'Mr.','mayank',NULL,'dixit','1985-09-12','m','manoj dixit',' payal dixit',NULL,2,5,'mdixit@ex2india.com','f8de4cf7aa982a45639ebd41e027830e','Single','435356356342','2011-12-10',10,'FVJHSV34JH','B-'),(11,'Mr.','dinesh',NULL,'atri','1986-06-22','m','shubham atri','sakshi atri','shubhangi atri',3,6,'datri@ex2india.com','e1ce28a55877ad556344bdaf98beb441','Married','785270200087','2016-11-01',11,'34VJHFVJH','O+'),(12,'Mr.','mayank',NULL,'dixit','1983-01-02','m',' aman dixit ','alisha dixit',NULL,4,7,'mdixit@ex2india.com','60d25c2d918be5f46443a81ac1ae5f87','Single','453543436534','2016-01-12',12,'JHBKJB87H4H','O-'),(13,'Mr.','rishabh',NULL,'pant','1999-09-20','m','shvam panth','shakshi panth','meenakshi pant',5,1,'rpant@gmail.com','f6bf20a6466e99533f3dd440cd24064c','Married','544531504550','2018-01-20',13,'GCWUJ3JJ2','O+'),(14,'Miss.','bhaygashree',NULL,'singh','1991-01-09','f','shovan singh','gauri singh',NULL,6,2,'bsingh@gmail.com','ddbac82a201a23d4737376af67b8e79d','Single','453453405434','2012-12-12',14,'KJJHBBKJ34','A+'),(15,'Mrs.','nikita',NULL,'sharma','1989-01-20','f','priyank saxenna','piyanka saxena','shubh sharma',7,8,'nsaxena@gmail.com','42dba333c4c5b5f4d4ab68656983e057','Married','534535425353','2020-06-10',15,'VJHVDHH243','A+'),(16,'Mr.','shubh','','saxena','1990-10-10','m','hemant saxena','himani saxena',NULL,8,2,'ssaxena@ex2india.com','4d809ac623ba067c54bd9b94dc953dcb','Single','440500525335','2014-12-11',16,'HBGC KJRTB2','A+'),(17,'Mr.','hemant',NULL,'rampal','1994-09-10','m',' kush rampal','payal rampal','himanshi rampal',2,3,'hrampal@ex2india.com','b7e6923f6de66497d51789db0ef3571d','Married','453453453455','2019-11-10',17,'HCJ4225B5J','A-'),(18,'Miss.','anuradha',NULL,'singh','1980-06-08','f','gautam singh','taurshi singh',NULL,5,4,'asingh@ex2india.com','22bc4892fa5ae2c20f0f04b1939baa76','Single','345345345345','2017-11-11',18,'JHHH452B','A-'),(19,'Mr.','tarun',NULL,'bansal','1987-09-12','m','dharmendar bansal','sakshi bansal',NULL,6,5,'tbansal@ex2india.com','cc447a96eac9094d13df934e559d9963','Single','030983030893','2011-01-11',19,'H2JTY5767','A-'),(20,'Mrs.','megha',NULL,'singh','1977-09-12','f','anuj rajpoot','pinki raajpoot','hemant singh',8,6,'mrajpoot@ex2india.com','680f4ba7683c241b8fb3334167833a2b','Married','354345340209','2016-01-11',20,'HJJHHJKTY','B+');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
  `companyName` varchar(60) DEFAULT NULL,
  `companyLoaction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`experienceId`),
  KEY `employeeId_idx` (`employeeId`),
  CONSTRAINT `employeeId1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (1,'core java','2012-02-01','2012-06-30',6,'TCS','gurgaon'),(2,'testing','2002-01-01','2004-02-08',16,'AMAZON','mumbai'),(3,'IOT','2015-07-14','2016-09-30',8,'INFOSYS','delhi'),(4,'Q.A','2015-04-12','2015-12-10',12,'WIPRO','gurgaon'),(5,'analyst','2019-01-01','2020-01-01',16,'EX2 INDIA ','faridabad'),(6,'gaming','2018-01-09','2019-09-20',18,'IBM','pune'),(7,'graphic designer','2017-09-09','2019-02-09',8,'TCS','hyderadbad'),(8,'android','2019-01-01','2019-12-11',4,'TECHILA','chennai'),(9,'ios','2017-01-01','2019-01-11',7,'TRANCIS','tamil nadu'),(10,'S.E.O','2019-01-01','2020-01-01',10,'GLOBAL CONTINUMM','pune'),(11,'web Development','2012-07-01','2014-08-30',6,'WIPRO','mumbai'),(12,'data analyst','2015-11-20','2016-12-30',19,'HCL','delhi');
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
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
  CONSTRAINT `permissionassigned_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`),
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
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roles` varchar(30) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'user'),(3,'hr'),(4,'super-admin'),(5,'co-admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
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
  CONSTRAINT `roleassigned_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`),
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

-- Dump completed on 2020-03-03 14:55:59
