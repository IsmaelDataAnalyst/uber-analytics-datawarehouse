-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: uber_dw
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `dim_ubicacion`
--

DROP TABLE IF EXISTS `dim_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_ubicacion` (
  `ubicacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(3) NOT NULL,
  `zona` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ubicacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_ubicacion`
--

LOCK TABLES `dim_ubicacion` WRITE;
/*!40000 ALTER TABLE `dim_ubicacion` DISABLE KEYS */;
INSERT INTO `dim_ubicacion` VALUES (1,'CDM','Centro'),(2,'CDM','Aeropuerto'),(3,'CDM','Zona Hotelera'),(4,'CDM','Residencial'),(5,'CDM','Industrial'),(6,'CDM','Universitaria'),(7,'CDM','Financiera'),(8,'CDM','Comercial'),(9,'CDM','Turistica'),(10,'CDM','Premium'),(11,'MEX','Centro'),(12,'MEX','Aeropuerto'),(13,'MEX','Zona Hotelera'),(14,'MEX','Residencial'),(15,'MEX','Industrial'),(16,'MEX','Universitaria'),(17,'MEX','Financiera'),(18,'MEX','Comercial'),(19,'MEX','Turistica'),(20,'MEX','Premium'),(21,'JAL','Centro'),(22,'JAL','Aeropuerto'),(23,'JAL','Zona Hotelera'),(24,'JAL','Residencial'),(25,'JAL','Industrial'),(26,'JAL','Universitaria'),(27,'JAL','Financiera'),(28,'JAL','Comercial'),(29,'JAL','Turistica'),(30,'JAL','Premium'),(31,'NLE','Centro'),(32,'NLE','Aeropuerto'),(33,'NLE','Zona Hotelera'),(34,'NLE','Residencial'),(35,'NLE','Industrial'),(36,'NLE','Universitaria'),(37,'NLE','Financiera'),(38,'NLE','Comercial'),(39,'NLE','Turistica'),(40,'NLE','Premium'),(41,'PUE','Centro'),(42,'PUE','Aeropuerto'),(43,'PUE','Zona Hotelera'),(44,'PUE','Residencial'),(45,'PUE','Industrial'),(46,'PUE','Universitaria'),(47,'PUE','Financiera'),(48,'PUE','Comercial'),(49,'PUE','Turistica'),(50,'PUE','Premium'),(51,'QRO','Centro'),(52,'QRO','Aeropuerto'),(53,'QRO','Zona Hotelera'),(54,'QRO','Residencial'),(55,'QRO','Industrial'),(56,'QRO','Universitaria'),(57,'QRO','Financiera'),(58,'QRO','Comercial'),(59,'QRO','Turistica'),(60,'QRO','Premium'),(61,'GUA','Centro'),(62,'GUA','Aeropuerto'),(63,'GUA','Zona Hotelera'),(64,'GUA','Residencial'),(65,'GUA','Industrial'),(66,'GUA','Universitaria'),(67,'GUA','Financiera'),(68,'GUA','Comercial'),(69,'GUA','Turistica'),(70,'GUA','Premium'),(71,'YUC','Centro'),(72,'YUC','Aeropuerto'),(73,'YUC','Zona Hotelera'),(74,'YUC','Residencial'),(75,'YUC','Industrial'),(76,'YUC','Universitaria'),(77,'YUC','Financiera'),(78,'YUC','Comercial'),(79,'YUC','Turistica'),(80,'YUC','Premium'),(81,'SON','Centro'),(82,'SON','Aeropuerto'),(83,'SON','Zona Hotelera'),(84,'SON','Residencial'),(85,'SON','Industrial'),(86,'SON','Universitaria'),(87,'SON','Financiera'),(88,'SON','Comercial'),(89,'SON','Turistica'),(90,'SON','Premium'),(91,'BCN','Centro'),(92,'BCN','Aeropuerto'),(93,'BCN','Zona Hotelera'),(94,'BCN','Residencial'),(95,'BCN','Industrial'),(96,'BCN','Universitaria'),(97,'BCN','Financiera'),(98,'BCN','Comercial'),(99,'BCN','Turistica'),(100,'BCN','Premium');
/*!40000 ALTER TABLE `dim_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-01  7:43:49
