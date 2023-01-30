-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: loas_shop
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Pepe Ramirez',63725619,'peperamirez@gmail.com','Paseo Iria, 499, Bajos',989907450,'honor shard pouch(L)'),(2,'Biel Arce',39252267,'aya.saldivar@latinmail.com','Avenida Armenta, 113, Bajo 2º',346769917,'honor shard pouch(M)'),(3,'Emma Sanabria Tercero',35111183,'miramontes.saul@giron.es','Travesía Cuenca, 014, 65º A',346586670,'honor shard pouch(S)'),(5,'PEPE',52525252,'pepe@gmail.com','Bouchard 2448',1155446677,'...');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_productos`
--

LOCK TABLES `log_productos` WRITE;
/*!40000 ALTER TABLE `log_productos` DISABLE KEYS */;
INSERT INTO `log_productos` VALUES (1,'honor shard pouch(S)','2023-01-25 03:00:00','delete');
/*!40000 ALTER TABLE `log_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logclientes`
--

LOCK TABLES `logclientes` WRITE;
/*!40000 ALTER TABLE `logclientes` DISABLE KEYS */;
INSERT INTO `logclientes` VALUES (1,'root@localhost','2023-01-25','15:01:47','INSERT');
/*!40000 ALTER TABLE `logclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,14039,'honor shard pouch(M)',59,'Shards'),(3,21542,'honor shard pouch(L)',55,'Shards');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Antonio Reyna','luciana.leiva@hotmail.com','Cl.Ximena Arroyo #04285',511497512),(2,'Andrea Carrasco Rivera','malena68@mateo.com','Av. Adrián Muñiz # 6050',1350065),(3,'Jerónimo Valadez','montenegro.alexander@gmail.com','Jr.Ivan Meléndez #60269',511023404),(4,'Antonio Rey','luciana@hotmail.com','Cl.Ximena Arroyo #4285',521497512),(5,'Andre Rivera','malena69@mateo.com','Av. Adrián Muñiz #605',1250065),(6,'Gerónimo Valadez','montenegro.ger@gmail.com','Jr.Ivan Meléndez #6069',531023404);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 10:22:45
