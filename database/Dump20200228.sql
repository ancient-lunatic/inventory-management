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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `country` varchar(30) NOT NULL,
  `employeeId` int NOT NULL,
  `addressType` varchar(45) NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'h.no 4546 ganli mahulla chock near barely polise station','bareli','U.P','243122','india',2,'permanent'),(4,'Ap #449-2327 Semper Road','Leval-Chaudeville','HE','Z3613','Costa Rica',7,'permanent'),(5,'759-3575 Dictum. Street','Värnamo','F','644656','Cocos (Keeling) Islands',5,'permanent'),(6,'645-7157 Tincidunt Avenue','Corbara','CAM','54551','Swaziland',9,'permanent'),(7,'Ap #275-4119 Ac, St.','Lauro de Freitas','BA','4165','Aruba',7,'current'),(8,'Ap #708-4948 Donec Ave','Davenport','Iowa','23419','Georgia',8,'permanent'),(9,'924-6288 Dolor Rd.','Wonju','Gan','67869','Iran',10,'permanent'),(10,'P.O. Box 956, 1827 Suscipit Rd.','Ávila','CL','48129','Saint Pierre and Miquelon',11,'current'),(11,'244-9065 Velit Ave','Boca del Río','Ver','2965','Colombia',12,'permanent'),(12,'P.O. Box 657, 2367 Class Avenue','Malambo','ATL','09741','Argentina',13,'permanent'),(13,'977 Enim. Road','Picton','SI','11633','Palau',14,'permanent'),(14,'618-6437 Erat St.','Porto Alegre','Rio Grande do Sul','09032','France',15,'permanent'),(15,'880-8865 Velit. Rd.','San Miguel','SJ','815960','Argentina',17,'permanent'),(16,'896-2750 Nisi Street','Płock','Mazowieckie','4526HB','Taiwan',16,'permanent'),(17,'P.O. Box 655, 3985 Sodales. St.','Puerto Vallarta','Jal','8024','Benin',20,'permanent'),(18,'P.O. Box 733, 7928 Ipsum St.','Cuernavaca','Mor','70131','Micronesia',18,'permanent'),(19,'Ap #971-6733 Nam St.','Cañas','Guanacaste','79212','Saint Kitts and Nevis',19,'permanent'),(20,'674 Nostra, St.','Essex','Ontario','889546','Panama',11,'permanent'),(21,'9737 Bibendum Avenue','Orhangazi','Bur','9491','Peru',12,'current'),(22,'P.O. Box 942, 2788 Interdum Avenue','Vienna','Wie','464113','Laos',15,'current'),(23,'P.O. Box 481, 2434 Et Street','Cuernavaca','Mor','50974','Saudi Arabia',18,'current'),(24,'P.O. Box 622, 816 Nisi. Ave','Chimbote','Ancash','21479','Laos',20,'current'),(25,'7075 Phasellus Av.','Cañas','G','760322','Saint Kitts and Nevis',14,'current'),(26,'Ap #989-9327 Arcu Street','Cajazeiras','Paraíba','6849','Saint Lucia',6,'permanent'),(27,'626 Purus Avenue','St. Albert','AB','483374','Bahamas',5,'current'),(28,'P.O. Box 971, 6822 Quam Avenue','Castelló','CV','65600','Italy',3,'permanent'),(29,'Ap #248-9129 A, St.','Guri','Gye','384236','Bolivia',1,'permanent');
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  `gender` char(1) NOT NULL,
  `department` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `employeePassword` varchar(30) NOT NULL,
  `phoneNumber` varchar(13) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'suraj','singh','rawat','1995-12-29','m','intern','ssrawat@ex2india.com','123456789','9899973970'),(2,'animesh',NULL,'dass','1995-02-07','m','intern','adass@es2india.com','987654321','9756652500'),(3,'megha',NULL,'gupta','1998-02-09','f','intern','mgupta@ex2india.com','741258963','7454632625'),(4,'rishabh',NULL,'bansal','1996-12-26','m','intern','rbansal@ex2india.com','SKOEb54565','7843654124'),(5,'jaswinder','','singh','1992-04-30','m','intern','jsingh@ex2india.com','jsddjhfisddsml','5453468354'),(6,'namit',NULL,'chauhan','1994-04-25','m','intern','nchahuhan@ex2india.com','dlkjkfgwebd','7874654854'),(7,'rishu',NULL,'singh','1991-03-29','f','H.R','rsingh@ex2india.com','ljkdgfgsdbf','6783468455'),(8,'sahil',NULL,'singh','1980-11-09','m','G.M','sdhawan@ex2india.com','kjsdgjsf','5574647567'),(9,'rishikant',NULL,'kumar','1985-07-13','m','junior developer','rkumar@ex2india.com','dshksanflkjdn','5454354682'),(10,'mayank',NULL,'dixit','1985-09-12','m','senior developer','mdixit@ex2india.com','dsljfvwsdvfjbsdak','4165432135'),(11,'dinesh',NULL,'atri','1986-06-22','m','developer','datri@ex2india.com','fffffffffff','7418529630'),(12,'mayank',NULL,'dixit','1983-01-02','m','gaming','mdixit@ex2india.com','gggggggg','1478529630'),(13,'rishabh',NULL,'pant','1999-09-20','m','intern','rpant@gmail.com','iiiiiiiiiiiii','7417539510'),(14,'bhaygashree',NULL,'singh','1991-01-09','f','hr','bsingh@gmail.com','oooooooo','7418529630'),(15,'nikita',NULL,'saxena','1989-01-20','f','gaming','nsaxena@gmail.com','nikitasaxena','7418529630'),(16,'shubh','','saxena','1990-10-10','m','analyst','ssaxena@ex2india.com','shubhmangal','7417537598'),(17,'hemant',NULL,'rampal','1994-09-10','m','developer','hrampal@ex2india.com','hhhhhhhhh','741895623'),(18,'anuradha',NULL,'singh','1980-06-08','f','analyst','asingh@ex2india.com','anuradha','8529637410'),(19,'tarun',NULL,'bansal','1987-09-12','m','manager','tbansal@ex2india.com','tarunbansal','9638527410'),(20,'megha',NULL,'rajpoot','1977-09-12','f','developer','mrajpoot@ex2india.com','megha','9876543210');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 12:42:17
