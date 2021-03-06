-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: online_shop
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `discount` tinyint NOT NULL,
  `alias_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'MOTHERBOARD'),(2,'RAM'),(3,'HDD'),(4,'SSD'),(5,'CPU');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storecheck`
--

DROP TABLE IF EXISTS `storecheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storecheck` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `storecheck_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `value` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storecheck`
--

LOCK TABLES `storecheck` WRITE;
/*!40000 ALTER TABLE `storecheck` DISABLE KEYS */;
INSERT INTO `storecheck` VALUES (1,1,574,0,'2021-02-24 13:03:34','2021-02-24 13:03:34'),(2,1,216,0,'2021-02-24 13:03:34','2021-02-24 13:03:34'),(3,1,325,500,'2021-02-24 13:03:34','2021-02-24 13:03:34'),(4,1,299,2,'2021-02-24 13:03:34','2021-02-24 13:03:34');
/*!40000 ALTER TABLE `storecheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` tinyint NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jameson',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-09-07 15:14:54'),(2,'Lennie',1,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-10-03 05:27:44'),(3,'Harry',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-11-20 07:32:32'),(4,'Lonny',13,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-01-24 10:39:17'),(5,'Rex',50,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-01-31 05:23:47'),(6,'Jeanette',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-03-01 20:38:56'),(7,'Darryl',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-11-12 17:05:43'),(8,'Lewis',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-05-20 11:42:56'),(9,'Irving',11,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-11-21 20:21:58'),(10,'Emerson',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-11-19 08:38:11'),(11,'Rubie',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-05-13 12:25:23'),(12,'Lorna',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-10-05 10:51:53'),(13,'Helga',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-05-06 06:41:01'),(14,'Everette',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-01-14 05:42:52'),(15,'Dangelo',78,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-08-15 18:35:19'),(16,'Margarette',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-08-07 05:30:27'),(17,'Delpha',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-12-31 06:06:14'),(18,'Enos',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-02-19 00:28:50'),(19,'Randi',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-07-05 21:43:37'),(20,'Vern',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-08-16 21:30:48'),(21,'Elaina',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-03-30 20:18:06'),(22,'Uriah',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-06-14 04:03:26'),(23,'Vanessa',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-06-03 00:38:28'),(24,'Americo',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-02-29 19:07:27'),(25,'Aylin',60,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-02-19 14:31:21'),(26,'Cara',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-02-14 22:09:07'),(27,'Brigitte',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-04-25 15:13:44'),(28,'Ezequiel',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-02-07 19:51:37'),(29,'Heather',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-07-16 11:19:04'),(30,'Johathan',2,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-06-15 19:14:45'),(31,'Brock',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-07-21 20:05:35'),(32,'Wayne',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-06-27 04:49:48'),(33,'Andre',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2021-02-09 00:05:12'),(34,'Karine',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-03-16 07:11:20'),(35,'Yoshiko',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-07-12 04:04:27'),(36,'Judy',23,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-12-05 02:14:09'),(37,'Antonia',1,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-12-11 09:57:00'),(38,'Drake',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-03-22 21:08:05'),(39,'Judd',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-07-11 09:54:07'),(40,'Brannon',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-05-23 23:02:13'),(41,'Chester',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-06-23 11:58:34'),(42,'Milton',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-06-20 21:12:27'),(43,'Tanner',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-08-02 19:21:41'),(44,'Lacey',64,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-06-02 23:50:54'),(45,'Marcia',16,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-11-16 04:06:49'),(46,'Bella',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-07-07 19:53:48'),(47,'Tamia',35,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-06-25 19:16:21'),(48,'Chesley',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-07-28 08:00:12'),(49,'Vivianne',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-09-22 11:31:13'),(50,'Elna',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-08-27 01:49:31'),(51,'Gideon',1,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-10-14 16:34:08'),(52,'Hallie',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-07-23 00:51:01'),(53,'Toni',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-07-08 22:04:28'),(54,'Laury',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-09-06 23:01:56'),(55,'Nella',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-09-21 17:23:48'),(56,'Eldridge',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-03-17 22:12:20'),(57,'Ophelia',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-09-02 23:08:46'),(58,'Cassie',4,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-10-11 16:07:58'),(59,'Kiera',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-01-24 23:48:53'),(60,'Adrain',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-05-16 11:52:12'),(61,'Jasen',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-01-13 13:55:59'),(62,'Ellsworth',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-01-12 03:45:22'),(63,'Emory',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-03-02 12:55:32'),(64,'Harvey',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-12-09 19:14:15'),(65,'Russell',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-04-13 22:06:01'),(66,'Elaina',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-04-17 06:42:08'),(67,'Vallie',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-06-24 17:23:46'),(68,'Terrence',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-03-04 17:02:11'),(69,'Kendra',76,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-03-16 03:45:03'),(70,'Aracely',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-06-27 10:01:42'),(71,'Freeman',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-04-04 13:02:41'),(72,'Berry',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-04-19 07:58:49'),(73,'Macie',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-12-12 04:07:17'),(74,'Nelson',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-11-30 20:52:56'),(75,'Tessie',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2015-06-29 09:50:18'),(76,'Shania',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-08-04 17:16:48'),(77,'Isabella',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-04-17 14:43:22'),(78,'Dianna',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-12-30 07:35:11'),(79,'Meagan',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-06-08 17:14:04'),(80,'Irving',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-03-07 22:41:40'),(81,'Lexus',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-06-10 04:37:43'),(82,'Maria',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-07-22 20:26:29'),(83,'Sandra',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-02-15 05:10:13'),(84,'Dillan',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-12-07 11:21:43'),(85,'Alivia',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2020-06-20 19:16:55'),(86,'Jenifer',57,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-10-08 16:16:34'),(87,'Yazmin',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-05-21 09:58:13'),(88,'Theresia',9,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-04-29 13:18:01'),(89,'Isaac',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2017-11-16 16:00:55'),(90,'Caleb',5,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-07-03 09:14:28'),(91,'Jena',1,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-09-20 15:33:45'),(92,'Rubie',8,'2021-02-23 07:51:01','2021-02-23 07:51:49','2014-08-21 16:35:08'),(93,'Isaias',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2016-07-21 02:01:34'),(94,'Elise',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2012-03-27 05:09:51'),(95,'Rick',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-05-13 06:27:47'),(96,'Samara',1,'2021-02-23 07:51:01','2021-02-23 07:51:49','2011-04-12 06:59:05'),(97,'Abelardo',0,'2021-02-23 07:51:01','2021-02-23 07:51:49','2018-08-16 16:05:47'),(98,'Ernestina',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-11-25 05:40:48'),(99,'Kathlyn',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2013-09-05 13:26:10'),(100,'Arturo',127,'2021-02-23 07:51:01','2021-02-23 07:51:49','2019-04-19 01:22:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 14:28:29
