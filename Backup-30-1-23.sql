CREATE DATABASE  IF NOT EXISTS `loas_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loas_shop`;
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(30) NOT NULL,
  `client_dni` int NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `client_address` varchar(50) NOT NULL,
  `client_phone` int NOT NULL,
  `client_order` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Pepe Ramirez',63725619,'peperamirez@gmail.com','Paseo Iria, 499, Bajos',989907450,'honor shard pouch(L)'),(2,'Biel Arce',39252267,'aya.saldivar@latinmail.com','Avenida Armenta, 113, Bajo 2º',346769917,'honor shard pouch(M)'),(3,'Emma Sanabria Tercero',35111183,'miramontes.saul@giron.es','Travesía Cuenca, 014, 65º A',346586670,'honor shard pouch(S)'),(5,'PEPE',52525252,'pepe@gmail.com','Bouchard 2448',1155446677,'...');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig_cliente` AFTER INSERT ON `clients` FOR EACH ROW BEGIN

    INSERT INTO logclientes VALUES (DEFAULT, USER(), CURDATE(), CURTIME(), "INSERT" );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `id_nombre`
--

DROP TABLE IF EXISTS `id_nombre`;
/*!50001 DROP VIEW IF EXISTS `id_nombre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `id_nombre` AS SELECT 
 1 AS `client_id`,
 1 AS `client_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_productos`
--

DROP TABLE IF EXISTS `log_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_productos` (
  `logp_id` int NOT NULL AUTO_INCREMENT,
  `prod_eliminado` varchar(20) DEFAULT NULL,
  `fecha_borrado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `operacion` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`logp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_productos`
--

LOCK TABLES `log_productos` WRITE;
/*!40000 ALTER TABLE `log_productos` DISABLE KEYS */;
INSERT INTO `log_productos` VALUES (1,'honor shard pouch(S)','2023-01-25 03:00:00','delete');
/*!40000 ALTER TABLE `log_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logclientes`
--

DROP TABLE IF EXISTS `logclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logclientes` (
  `logc_id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `operacion` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`logc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logclientes`
--

LOCK TABLES `logclientes` WRITE;
/*!40000 ALTER TABLE `logclientes` DISABLE KEYS */;
INSERT INTO `logclientes` VALUES (1,'root@localhost','2023-01-25','15:01:47','INSERT');
/*!40000 ALTER TABLE `logclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nombre_dni`
--

DROP TABLE IF EXISTS `nombre_dni`;
/*!50001 DROP VIEW IF EXISTS `nombre_dni`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_dni` AS SELECT 
 1 AS `client_name`,
 1 AS `client_dni`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_mail`
--

DROP TABLE IF EXISTS `nombre_mail`;
/*!50001 DROP VIEW IF EXISTS `nombre_mail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_mail` AS SELECT 
 1 AS `client_name`,
 1 AS `client_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_note` varchar(100) NOT NULL,
  `prod_id` int NOT NULL,
  `prod_name` varchar(60) NOT NULL,
  `prod_qty` int NOT NULL,
  `client_id` int NOT NULL,
  `client_name` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `prod_id` (`prod_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prod_code_name`
--

DROP TABLE IF EXISTS `prod_code_name`;
/*!50001 DROP VIEW IF EXISTS `prod_code_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prod_code_name` AS SELECT 
 1 AS `prod_code`,
 1 AS `prod_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_code` int NOT NULL,
  `prod_name` varchar(60) NOT NULL,
  `prod_stock` int NOT NULL,
  `prod_cat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,14039,'honor shard pouch(M)',59,'Shards'),(3,21542,'honor shard pouch(L)',55,'Shards');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trig_products` BEFORE DELETE ON `products` FOR EACH ROW BEGIN

    INSERT INTO log_productos VALUES ( default,old.prod_name, CURDATE(),  "delete" );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `prov_id` int NOT NULL AUTO_INCREMENT,
  `prov_name` varchar(30) NOT NULL,
  `prov_email` varchar(50) NOT NULL,
  `prov_address` varchar(50) NOT NULL,
  `prov_phone` int NOT NULL,
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Antonio Reyna','luciana.leiva@hotmail.com','Cl.Ximena Arroyo #04285',511497512),(2,'Andrea Carrasco Rivera','malena68@mateo.com','Av. Adrián Muñiz # 6050',1350065),(3,'Jerónimo Valadez','montenegro.alexander@gmail.com','Jr.Ivan Meléndez #60269',511023404),(4,'Antonio Rey','luciana@hotmail.com','Cl.Ximena Arroyo #4285',521497512),(5,'Andre Rivera','malena69@mateo.com','Av. Adrián Muñiz #605',1250065),(6,'Gerónimo Valadez','montenegro.ger@gmail.com','Jr.Ivan Meléndez #6069',531023404);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'loas_shop'
--

--
-- Dumping routines for database 'loas_shop'
--
/*!50003 DROP FUNCTION IF EXISTS `obtener_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_id`(f_client_name varchar(60)) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE f_id INT;
    
    SELECT client_id
    INTO f_id
    FROM clients
    WHERE
		client_name = f_client_name;
	RETURN f_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_nombre`(f_client_id INT) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE f_name varchar(60);
    
    SELECT client_name
    INTO f_name
    FROM clients
    WHERE
		client_id = f_client_id;
	RETURN f_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `alterTables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `alterTables`(
id_prod INT,
code_prod INT,
name_prod VARCHAR(60),
stock_prod INT,
cat_prod VARCHAR(30),
operacion Varchar(20)
)
BEGIN
IF operacion = "Insert" THEN
	BEGIN
		INSERT INTO products
					(prod_id,
                    prod_code,
                    prod_name,
                    prod_stock,
                    prod_cat)
                    
		VALUES		(id_prod,
					code_prod,
                    name_prod,
                    stock_prod,
                    cat_prod);
	END;
    
ELSEIF operacion = 'Select' THEN
        BEGIN
            SELECT *
            FROM   products;
        END;

ELSEIF operacion = 'Update' THEN
        BEGIN
            UPDATE products
            SET    prod_code = code_prod,
                   prod_name = name_prod,
                   prod_stock = stock_prod,
                   prod_cat = cat_prod
            WHERE  prod_id = id_prod;
        END;
ELSEIF operacion = 'Delete' THEN
        BEGIN
            DELETE FROM products
            WHERE  prod_id = id_prod;
        END;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SelectCusto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectCusto`(campo varchar(60), orden varchar(1))
BEGIN

CASE 
WHEN campo='client_name' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_name;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_name DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
WHEN campo='client_id' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_id;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_id DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
ELSE
    SELECT 'Campo incorrecto.';
END CASE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SelectCustom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectCustom`(campo varchar(60), orden varchar(1))
BEGIN

CASE 
WHEN campo='client_name' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_name;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_name DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
WHEN campo='client_id' THEN
    CASE 
    WHEN orden='A' THEN SELECT * FROM clients ORDER BY client_id;    
    WHEN orden='D' THEN SELECT * FROM clients ORDER BY client_id DESC;    
    ELSE SELECT 'Orden incorrecto.';
    END CASE;
ELSE
    SELECT 'Campo incorrecto.';
END CASE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `id_nombre`
--

/*!50001 DROP VIEW IF EXISTS `id_nombre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `id_nombre` AS select `clients`.`client_id` AS `client_id`,`clients`.`client_name` AS `client_name` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombre_dni`
--

/*!50001 DROP VIEW IF EXISTS `nombre_dni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_dni` AS select `clients`.`client_name` AS `client_name`,`clients`.`client_dni` AS `client_dni` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombre_mail`
--

/*!50001 DROP VIEW IF EXISTS `nombre_mail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_mail` AS select `clients`.`client_name` AS `client_name`,`clients`.`client_email` AS `client_email` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prod_code_name`
--

/*!50001 DROP VIEW IF EXISTS `prod_code_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prod_code_name` AS select `products`.`prod_code` AS `prod_code`,`products`.`prod_name` AS `prod_name` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 10:20:46
