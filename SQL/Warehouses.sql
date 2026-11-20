-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: logistics_delivery_analytics
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `warehouse_id` int NOT NULL,
  `warehouse_name` varchar(150) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `warehouse_type` varchar(50) DEFAULT NULL,
  `capacity_units` int DEFAULT NULL,
  `operating_cost` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Warehouse 001','Kochi','West Bengal','East','Regional Hub',53025,466992.69),(2,'Warehouse 002','Ahmedabad','Uttar Pradesh','South','Distribution Center',70373,597266.95),(3,'Warehouse 003','Mumbai','West Bengal','West','Distribution Center',34388,408020.70),(4,'Warehouse 004','Pune','Karnataka','West','Distribution Center',50920,690604.74),(5,'Warehouse 005','Jaipur','Delhi','West','Fulfillment Center',55193,359061.08),(6,'Warehouse 006','Nagpur','Tamil Nadu','North','Fulfillment Center',35011,772701.12),(7,'Warehouse 007','Ahmedabad','Uttar Pradesh','East','Distribution Center',51254,376094.46),(8,'Warehouse 008','Bengaluru','Madhya Pradesh','East','Regional Hub',78266,894744.84),(9,'Warehouse 009','Kolkata','Karnataka','North','Distribution Center',31106,407852.98),(10,'Warehouse 010','Lucknow','Madhya Pradesh','South','Regional Hub',41786,812754.82),(11,'Warehouse 011','Lucknow','Uttar Pradesh','West','Fulfillment Center',76852,466096.29),(12,'Warehouse 012','New Delhi','Madhya Pradesh','West','Fulfillment Center',36944,357159.49),(13,'Warehouse 013','Jaipur','Maharashtra','North','Fulfillment Center',93917,342837.54),(14,'Warehouse 014','Lucknow','Tamil Nadu','West','Distribution Center',61164,792137.72),(15,'Warehouse 015','Kochi','West Bengal','Central','Distribution Center',96743,402302.15),(16,'Warehouse 016','Bengaluru','Maharashtra','East','Fulfillment Center',48715,423765.37),(17,'Warehouse 017','Jaipur','West Bengal','West','Fulfillment Center',74251,321835.00),(18,'Warehouse 018','Jaipur','Karnataka','West','Fulfillment Center',88907,872153.80),(19,'Warehouse 019','Lucknow','Madhya Pradesh','Central','Distribution Center',84506,356215.64),(20,'Warehouse 020','Nagpur','Maharashtra','South','Distribution Center',55809,358159.41),(21,'Warehouse 021','Jaipur','Uttar Pradesh','South','Fulfillment Center',26844,859606.48),(22,'Warehouse 022','Pune','Uttar Pradesh','Central','Distribution Center',69864,828647.18),(23,'Warehouse 023','New Delhi','Gujarat','South','Distribution Center',96412,359215.84),(24,'Warehouse 024','Lucknow','Karnataka','North','Distribution Center',57174,802602.41),(25,'Warehouse 025','Nagpur','Karnataka','Central','Distribution Center',65933,359872.71),(26,'Warehouse 026','Pune','Uttar Pradesh','East','Fulfillment Center',33144,240814.20),(27,'Warehouse 027','New Delhi','Gujarat','East','Fulfillment Center',27649,770660.17),(28,'Warehouse 028','Mumbai','West Bengal','East','Distribution Center',56645,735521.87),(29,'Warehouse 029','New Delhi','Madhya Pradesh','West','Fulfillment Center',72674,392160.33),(30,'Warehouse 030','Hyderabad','West Bengal','Central','Fulfillment Center',32818,244900.07),(31,'Warehouse 031','Jaipur','West Bengal','Central','Fulfillment Center',56880,328636.00),(32,'Warehouse 032','Bengaluru','Karnataka','South','Regional Hub',80109,735160.73),(33,'Warehouse 033','Lucknow','Uttar Pradesh','Central','Fulfillment Center',57333,874618.43),(34,'Warehouse 034','Mumbai','West Bengal','Central','Fulfillment Center',74058,366481.49),(35,'Warehouse 035','Hyderabad','Delhi','South','Distribution Center',74575,769146.34),(36,'Warehouse 036','Bengaluru','Gujarat','Central','Distribution Center',45130,344111.51),(37,'Warehouse 037','Nagpur','Tamil Nadu','Central','Regional Hub',46716,669312.28),(38,'Warehouse 038','Kolkata','Gujarat','North','Regional Hub',51297,240201.70),(39,'Warehouse 039','Bengaluru','Madhya Pradesh','South','Fulfillment Center',39062,601412.86),(40,'Warehouse 040','Jaipur','Gujarat','North','Fulfillment Center',49492,373816.72),(41,'Warehouse 041','Pune','Uttar Pradesh','West','Distribution Center',76481,846609.08),(42,'Warehouse 042','Kochi','West Bengal','South','Fulfillment Center',95724,388620.64),(43,'Warehouse 043','New Delhi','West Bengal','Central','Fulfillment Center',86377,466877.30),(44,'Warehouse 044','Nagpur','Maharashtra','Central','Fulfillment Center',30567,785288.96),(45,'Warehouse 045','Kolkata','Madhya Pradesh','North','Fulfillment Center',56806,495557.70),(46,'Warehouse 046','New Delhi','Madhya Pradesh','North','Fulfillment Center',94457,351656.82),(47,'Warehouse 047','Jaipur','Gujarat','West','Fulfillment Center',89885,574231.91),(48,'Warehouse 048','Lucknow','West Bengal','West','Fulfillment Center',95191,784793.66),(49,'Warehouse 049','Nagpur','Delhi','Central','Fulfillment Center',67674,491887.88),(50,'Warehouse 050','Mumbai','Uttar Pradesh','East','Distribution Center',90482,275679.71),(51,'Warehouse 051','Kolkata','Uttar Pradesh','West','Regional Hub',63127,455822.58),(52,'Warehouse 052','Lucknow','Maharashtra','Central','Fulfillment Center',43502,867222.10),(53,'Warehouse 053','Hyderabad','Delhi','West','Distribution Center',92193,231855.57),(54,'Warehouse 054','Lucknow','Uttar Pradesh','South','Fulfillment Center',70724,474080.52),(55,'Warehouse 055','Ahmedabad','West Bengal','North','Fulfillment Center',98802,646580.73),(56,'Warehouse 056','Kolkata','Madhya Pradesh','Central','Regional Hub',26240,236532.76),(57,'Warehouse 057','Lucknow','Madhya Pradesh','West','Distribution Center',68544,428365.83),(58,'Warehouse 058','Pune','Tamil Nadu','North','Fulfillment Center',36640,857216.41),(59,'Warehouse 059','Pune','Uttar Pradesh','East','Regional Hub',52895,202057.70),(60,'Warehouse 060','Nagpur','Delhi','West','Regional Hub',31920,721254.15),(61,'Warehouse 061','Hyderabad','Tamil Nadu','Central','Fulfillment Center',99928,785789.98),(62,'Warehouse 062','New Delhi','Tamil Nadu','South','Fulfillment Center',50643,379483.72),(63,'Warehouse 063','Chennai','Karnataka','North','Distribution Center',49227,334594.35),(64,'Warehouse 064','Lucknow','Uttar Pradesh','North','Distribution Center',43251,838671.04),(65,'Warehouse 065','Kochi','Uttar Pradesh','South','Fulfillment Center',44238,730081.22),(66,'Warehouse 066','Jaipur','West Bengal','Central','Fulfillment Center',80044,261634.11),(67,'Warehouse 067','Kolkata','Madhya Pradesh','East','Regional Hub',47723,332782.02),(68,'Warehouse 068','Lucknow','Gujarat','South','Distribution Center',54973,627375.71),(69,'Warehouse 069','New Delhi','Karnataka','East','Fulfillment Center',28513,481980.19),(70,'Warehouse 070','Lucknow','Madhya Pradesh','Central','Fulfillment Center',63316,543005.55),(71,'Warehouse 071','Chennai','Gujarat','West','Distribution Center',50225,865110.55),(72,'Warehouse 072','Mumbai','Madhya Pradesh','West','Fulfillment Center',24379,482569.53),(73,'Warehouse 073','Kochi','Karnataka','Central','Regional Hub',31305,814811.04),(74,'Warehouse 074','Chennai','Delhi','East','Regional Hub',51722,655736.20),(75,'Warehouse 075','Jaipur','West Bengal','South','Fulfillment Center',97684,267566.01),(76,'Warehouse 076','Kochi','Tamil Nadu','Central','Distribution Center',75429,716045.07),(77,'Warehouse 077','Chennai','Karnataka','Central','Regional Hub',98437,554550.53),(78,'Warehouse 078','Jaipur','Karnataka','West','Distribution Center',96424,342070.02),(79,'Warehouse 079','Nagpur','Tamil Nadu','South','Distribution Center',62476,388475.51),(80,'Warehouse 080','New Delhi','Uttar Pradesh','West','Distribution Center',64253,581279.35),(81,'Warehouse 081','Kolkata','Madhya Pradesh','East','Regional Hub',40708,613225.79),(82,'Warehouse 082','Chennai','Uttar Pradesh','East','Regional Hub',84963,877087.01),(83,'Warehouse 083','Kochi','Gujarat','North','Fulfillment Center',47621,795398.50),(84,'Warehouse 084','Pune','Tamil Nadu','Central','Distribution Center',50001,328204.29),(85,'Warehouse 085','Hyderabad','Karnataka','South','Regional Hub',34220,737274.29),(86,'Warehouse 086','Chennai','Uttar Pradesh','South','Regional Hub',85122,185970.10),(87,'Warehouse 087','Kolkata','West Bengal','West','Fulfillment Center',87907,273462.09),(88,'Warehouse 088','New Delhi','Tamil Nadu','West','Regional Hub',57784,323784.30),(89,'Warehouse 089','Pune','Tamil Nadu','South','Regional Hub',59070,609983.53),(90,'Warehouse 090','Jaipur','Delhi','West','Regional Hub',59150,320173.20),(91,'Warehouse 091','Pune','Gujarat','North','Fulfillment Center',81262,442996.52),(92,'Warehouse 092','Chennai','Uttar Pradesh','Central','Fulfillment Center',75544,354801.44),(93,'Warehouse 093','New Delhi','Delhi','North','Distribution Center',47161,422939.97),(94,'Warehouse 094','Jaipur','Uttar Pradesh','East','Regional Hub',41180,858565.04),(95,'Warehouse 095','Bengaluru','Delhi','South','Fulfillment Center',38825,898110.97),(96,'Warehouse 096','Kochi','West Bengal','North','Fulfillment Center',21017,673719.92),(97,'Warehouse 097','Ahmedabad','Madhya Pradesh','North','Fulfillment Center',40885,592061.67),(98,'Warehouse 098','Lucknow','Gujarat','West','Distribution Center',66260,690082.45),(99,'Warehouse 099','Mumbai','Gujarat','West','Distribution Center',30260,735589.58),(100,'Warehouse 100','Kolkata','Uttar Pradesh','West','Distribution Center',74946,712089.18);
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-01 18:53:19
