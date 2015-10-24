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
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `ID_ANIMAL` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CLIENTE` int(11) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `COR` varchar(45) NOT NULL,
  `IDADE` int(11) NOT NULL,
  `ID_TIPO_ANIMAL` int(11) NOT NULL,
  `DATA_INCLUSAO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_PORTE` int(11) NOT NULL,
  `ID_RACA` int(11) NOT NULL,
  PRIMARY KEY (`ID_ANIMAL`),
  KEY `ID_CLIENTE_idx` (`ID_CLIENTE`),
  KEY `ID_TIPO_ANIMAL_idx` (`ID_TIPO_ANIMAL`),
  KEY `ID_RACA_idx` (`ID_RACA`),
  KEY `ID_PORTE_idx` (`ID_PORTE`),
  CONSTRAINT `ID_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_PORTE` FOREIGN KEY (`ID_PORTE`) REFERENCES `porte` (`ID_PORTE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_RACA` FOREIGN KEY (`ID_RACA`) REFERENCES `raca` (`ID_RACA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_TIPO_ANIMAL` FOREIGN KEY (`ID_TIPO_ANIMAL`) REFERENCES `tipo_animal` (`ID_TIPO_ANIMAL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `IDADE` int(11) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `CPF` varchar(45) NOT NULL,
  `SEXO` char(1) NOT NULL,
  `TELEFONE` varchar(45) NOT NULL,
  `DATA_INCLUSAO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `ID_MARCA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_MARCA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porte`
--

DROP TABLE IF EXISTS `porte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porte` (
  `ID_PORTE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_PORTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porte`
--

LOCK TABLES `porte` WRITE;
/*!40000 ALTER TABLE `porte` DISABLE KEYS */;
/*!40000 ALTER TABLE `porte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `ID_PRODUTO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(255) NOT NULL,
  `DATA_ENTRADA` datetime NOT NULL,
  `DATA_INCLUSAO` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PRECO` decimal(11,2) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `ID_MARCA` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUTO`),
  KEY `ID_MARCA_idx` (`ID_MARCA`),
  KEY `ID_CATEGORIA_idx` (`ID_CATEGORIA`),
  CONSTRAINT `ID_CATEGORIA` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categoria` (`ID_CATEGORIA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_MARCA` FOREIGN KEY (`ID_MARCA`) REFERENCES `marca` (`ID_MARCA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_pertencente`
--

DROP TABLE IF EXISTS `produto_pertencente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_pertencente` (
  `ID_PROD_PERTENCENTE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_TIPO_ANIMAL` int(11) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PROD_PERTENCENTE`),
  KEY `ID_TIPO_ANIMAL_idx` (`ID_TIPO_ANIMAL`),
  KEY `ID_PRODUTO_idx` (`ID_PRODUTO`),
  CONSTRAINT `ID_PRODUTO2` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `produto` (`ID_PRODUTO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_TIPO_ANIMAL2` FOREIGN KEY (`ID_TIPO_ANIMAL`) REFERENCES `tipo_animal` (`ID_TIPO_ANIMAL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_pertencente`
--

LOCK TABLES `produto_pertencente` WRITE;
/*!40000 ALTER TABLE `produto_pertencente` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_pertencente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raca`
--

DROP TABLE IF EXISTS `raca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raca` (
  `ID_RACA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_RACA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raca`
--

LOCK TABLES `raca` WRITE;
/*!40000 ALTER TABLE `raca` DISABLE KEYS */;
/*!40000 ALTER TABLE `raca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_animal`
--

DROP TABLE IF EXISTS `tipo_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_animal` (
  `ID_TIPO_ANIMAL` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(75) NOT NULL,
  PRIMARY KEY (`ID_TIPO_ANIMAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_animal`
--

LOCK TABLES `tipo_animal` WRITE;
/*!40000 ALTER TABLE `tipo_animal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-23 22:07:26
