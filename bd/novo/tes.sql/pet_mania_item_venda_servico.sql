CREATE DATABASE  IF NOT EXISTS `pet_mania` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pet_mania`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pet_mania
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `item_venda_servico`
--

DROP TABLE IF EXISTS `item_venda_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_venda_servico` (
  `ID_ITEM_SERVICO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_VENDA_SERVICO` int(11) NOT NULL,
  `ID_SERVICO` int(11) NOT NULL,
  `QUANTIDADE` int(11) NOT NULL,
  `PRECO_TOTAL` decimal(11,2) NOT NULL,
  PRIMARY KEY (`ID_ITEM_SERVICO`),
  KEY `ID_VENDA_SERVICO_idx` (`ID_VENDA_SERVICO`),
  KEY `ID_SERVICO_idx` (`ID_SERVICO`),
  CONSTRAINT `ID_SERVICO` FOREIGN KEY (`ID_SERVICO`) REFERENCES `servico` (`ID_SERVICO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_VENDA_SERVICO` FOREIGN KEY (`ID_VENDA_SERVICO`) REFERENCES `venda_servico` (`ID_VENDA_SERVICO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_venda_servico`
--

LOCK TABLES `item_venda_servico` WRITE;
/*!40000 ALTER TABLE `item_venda_servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_venda_servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-26 21:36:35
