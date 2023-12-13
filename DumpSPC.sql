-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: spctest
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `aol`
--

DROP TABLE IF EXISTS `aol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kolicinaNaLokaciji` decimal(38,2) DEFAULT NULL,
  `artikal_id` int(11) DEFAULT NULL,
  `lokacija_id` int(11) DEFAULT NULL,
  `oblik_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsrq54404gpthftsi12t3js74m` (`artikal_id`),
  KEY `FKptxynph9hi4ifotutg894jtk` (`lokacija_id`),
  KEY `FKcavdgvc6rglupvt3q8j3b5g4o` (`oblik_id`),
  CONSTRAINT `FKcavdgvc6rglupvt3q8j3b5g4o` FOREIGN KEY (`oblik_id`) REFERENCES `oblik` (`id`),
  CONSTRAINT `FKptxynph9hi4ifotutg894jtk` FOREIGN KEY (`lokacija_id`) REFERENCES `lokacija` (`id`),
  CONSTRAINT `FKsrq54404gpthftsi12t3js74m` FOREIGN KEY (`artikal_id`) REFERENCES `artikal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aol`
--

LOCK TABLES `aol` WRITE;
/*!40000 ALTER TABLE `aol` DISABLE KEYS */;
INSERT INTO `aol` VALUES (1,3.00,1,1,1),(2,7.00,1,1,2),(3,4.00,2,2,1),(4,6.00,2,2,2),(5,2.00,3,1,3),(6,8.00,3,3,1),(7,5.00,4,14,20),(8,5.00,5,13,19),(9,3.00,6,12,18),(10,3.00,7,8,8),(11,7.00,7,5,7),(12,5.00,8,11,17),(13,6.00,9,10,16),(14,5.00,9,10,17),(15,10.00,10,4,1),(16,20.00,10,4,2),(17,40.00,10,4,3),(18,5.00,11,11,11),(19,5.00,12,12,12),(20,5.00,13,13,13),(21,3.00,14,3,14),(22,7.00,14,7,14),(23,2.00,15,3,15),(24,4.00,15,14,3),(25,5.00,16,1,5),(26,10.00,16,2,4),(27,15.00,16,3,3),(28,13.00,16,4,2),(29,7.00,16,5,1),(30,13.00,17,14,20),(31,17.00,17,13,19),(32,20.00,17,12,18),(33,10.00,18,2,5),(34,1.00,19,1,1),(35,10.00,20,7,10),(36,4.00,21,3,3),(37,6.00,21,4,3),(38,1.00,22,6,6),(39,8.00,23,6,7),(40,3.00,23,8,9),(41,4.00,23,9,9),(42,7.00,24,5,6),(43,3.00,24,5,7),(44,6.00,24,5,8),(45,4.00,24,5,9),(46,10.00,25,6,10),(47,20.00,25,6,11),(48,30.00,25,6,12),(49,5.00,26,7,13),(50,1.00,27,8,8),(51,5.00,28,9,9),(52,1.00,29,4,10),(53,3.00,29,5,10),(54,5.00,29,6,10),(55,2.00,30,7,11),(56,6.00,31,8,12),(57,2.00,32,9,15),(58,6.00,33,10,16),(59,5.00,34,11,17),(60,5.00,35,12,18),(61,1.00,36,13,19),(62,1.00,37,14,20),(63,5.00,38,9,9),(64,5.00,39,10,10),(65,7.00,40,5,5),(66,13.00,40,5,6),(67,1.00,41,6,6),(68,5.00,42,7,7),(69,2.00,43,5,5),(70,8.00,43,6,5),(71,10.00,43,7,5),(72,5.00,44,3,3),(73,9.00,45,2,2),(74,1.00,45,3,3),(75,10.00,46,8,8),(76,3.00,47,5,8),(77,5.00,47,6,7),(78,7.00,47,7,6),(79,13.00,47,8,5),(80,3.00,48,1,2),(81,5.00,48,3,4),(82,7.00,48,5,6),(83,13.00,48,7,8),(84,10.00,49,6,7),(85,15.00,49,7,7),(86,5.00,49,8,7),(87,20.00,50,3,3),(88,8.00,50,4,3),(89,3.00,51,7,2),(90,7.00,51,8,2),(91,8.00,51,9,2),(92,10.00,51,10,2),(93,1.00,52,4,4),(94,6.00,53,6,7),(95,4.00,53,6,8),(96,10.00,54,9,9),(97,3.00,55,5,4),(98,1.00,56,10,9),(99,5.00,56,11,7),(100,4.00,56,11,6),(101,2.00,57,14,3),(102,7.00,58,5,6),(103,3.00,58,6,5),(104,1.00,59,1,1),(105,2.00,60,2,2),(106,1.00,61,3,3),(107,1.00,62,4,4),(108,2.00,63,3,3),(109,3.00,63,3,3),(110,4.00,63,3,3),(111,3.00,64,12,12),(112,7.00,65,13,13),(113,6.00,66,6,6),(114,2.00,67,4,4),(115,3.00,67,4,5),(116,7.00,67,4,6),(117,2.00,68,5,3),(118,3.00,68,5,6),(119,4.00,68,5,9),(120,3.00,68,5,12),(121,7.00,69,6,9),(122,3.00,69,9,6),(123,1.00,70,7,1),(124,2.00,70,7,2),(125,3.00,70,7,3),(126,2.00,70,7,4),(127,50.00,71,4,5),(128,100.00,71,5,5),(129,150.00,71,6,5),(130,2.00,72,7,2),(131,3.00,73,2,8),(132,3.00,73,3,8),(133,4.00,73,4,8),(134,4.00,74,5,7),(135,3.00,74,6,7),(136,3.00,74,7,7),(137,3.00,75,8,6),(138,4.00,75,9,6),(139,5.00,75,10,6),(140,4.00,76,1,5),(141,2.00,76,2,5),(142,2.00,76,3,5),(143,2.00,76,4,5),(144,2.00,76,5,5),(145,2.00,76,6,5),(146,2.00,76,7,5),(147,2.00,76,8,5),(148,2.00,76,9,5),(149,2.00,76,10,5),(150,2.00,76,11,5),(151,2.00,76,12,5),(152,2.00,76,13,5),(153,2.00,76,14,5),(154,2.00,77,13,8),(155,1.00,78,3,20),(156,2.00,78,3,19),(157,3.00,78,3,18),(158,1.00,78,3,17),(159,2.00,78,3,16),(160,3.00,78,3,15),(161,1.00,78,3,14),(162,2.00,78,3,13),(163,3.00,78,3,12),(164,2.00,78,3,11);
/*!40000 ALTER TABLE `aol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artikal`
--

DROP TABLE IF EXISTS `artikal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kolicinaUkupna` decimal(38,2) DEFAULT NULL,
  `naziv` varchar(255) NOT NULL,
  `kategorija_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdr1awa96uslpmm19rg90qpiov` (`kategorija_id`),
  CONSTRAINT `FKdr1awa96uslpmm19rg90qpiov` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikal`
--

LOCK TABLES `artikal` WRITE;
/*!40000 ALTER TABLE `artikal` DISABLE KEYS */;
INSERT INTO `artikal` VALUES (1,10.00,'Sugamadeks',1),(2,10.00,'Paracetamol',1),(3,10.00,'Thiopental Inresa',1),(4,5.00,'Dopamin',1),(5,5.00,'Ca Glukonat',1),(6,3.00,'Lidokain',1),(7,10.00,'Metoclopramide',1),(8,5.00,'Solucortef',1),(9,11.00,'Optilube',1),(10,75.00,'Propofol',1),(11,5.00,'Ondanzetron',1),(12,5.00,'Efedrin',1),(13,5.00,'Xylocain',1),(14,10.00,'Novaminsulfon',1),(15,6.00,'Betadine',1),(16,50.00,'Adrenalin',1),(17,50.00,'Dexametazon',1),(18,10.00,'Apaurin',1),(19,1.00,'Ventolin',1),(20,10.00,'Solumedrol 125mg',1),(21,10.00,'Solumedrol 40mg',1),(22,1.00,'Salbutamol',1),(23,15.00,'Synopen',1),(24,20.00,'Atropin',1),(25,60.00,'Amlopin 5mg',1),(26,5.00,'Betrion',1),(27,1.00,'Voltaren Emulgel',1),(28,5.00,'Tysour',1),(29,9.00,'Aminofillin',1),(30,2.00,'Silvederma',1),(31,6.00,'Maxitrol',1),(32,2.00,'Benoxi 0,4mg',1),(33,6.00,'Unitropic 0,5mg',1),(34,5.00,'Maxidex',1),(35,5.00,'Novesine 0,4%',1),(36,1.00,'Tobrex',1),(37,1.00,'Beloderm',1),(38,5.00,'Lidokain',1),(39,5.00,'Lidokain/Adrenalin',1),(40,20.00,'Lidokain 2%',1),(41,1.00,'Cordarone',1),(42,5.00,'Bikarbonati',1),(43,20.00,'Andol 100',1),(44,5.00,'Fursemid 20mg',1),(45,10.00,'Sufentanil 5 mikrograma',1),(46,10.00,'Amiodaron 150mg',1),(47,28.00,'Valsacor 160mg',1),(48,28.00,'Tritace 10mg',1),(49,30.00,'Concor Cor 2,5mg',1),(50,28.00,'Physiotens 0,2mg',1),(51,28.00,'Nebivolol 5mg',1),(52,1.00,'Nitrolingval',1),(53,10.00,'Rocuroniumbromid Kabi 50mg - Esmeron',1),(54,10.00,'Neostigmin 0,5mg/ml',1),(55,3.00,'Lystenon 500mg',1),(56,10.00,'Depo Medrol 40mg',1),(57,2.00,'Emla',1),(58,10.00,'Aethoxysklerol 1%',1),(59,1.00,'Mirena',1),(60,2.00,'Podophyllini Solutio 20%',1),(61,1.00,'Mag.-Anestetik BLT*AD 100g',1),(62,1.00,'Neo Cain Cream 500g',1),(63,9.00,'Bocouture 50j',1),(64,3.00,'Belotero Lidocaine Intense',1),(65,7.00,'Belotero Lidocaine Balance',1),(66,6.00,'RRS Hyalift 75 Proact',1),(67,12.00,'RRS Silisorg HA',1),(68,12.00,'RRS HA Eyes',1),(69,10.00,'Depo Medrol 40mg',1),(70,8.00,'Panorama Next Generation NIPT',1),(71,300.00,'Fluostrip',1),(72,2.00,'Duphalac 500ml',1),(73,10.00,'Clariscan',1),(74,10.00,'Naklofen',1),(75,10.00,'Bysimin',1),(76,30.00,'Normabel 5mg',1),(77,2.00,'Mydraicyl 10mg/ml',1),(78,20.00,'Gadovist',1),(79,1.00,'Glucosa 10%',2),(80,19.00,'NaCl 500ml',2),(81,7.00,'Glucosa 5%',2),(82,5.00,'Ringer otopina',2),(83,30.00,'NaCl 1000ml',2),(84,10.00,'Glucosalina',2),(85,34.00,'Kliješta za biopsiju',3),(86,9.00,'Klipse',3),(87,4.00,'Endolup',3),(88,6.00,'Omče',3),(89,5.00,'Injekcije',3),(90,58.00,'Četkice',3),(91,4.00,'Papir perilica',3),(92,2.00,'Rez. filter perilica',3),(93,9.00,'Filter saug',3),(94,20.00,'Neutr. elektrode',3),(95,2.00,'Konek. tube (saug)',3),(96,9.00,'Voda tube',3),(97,50.00,'Ventili za endoskop',3),(98,20.00,'Detergent',3),(99,2.00,'Kiselina',3),(100,2.00,'Lužina',3),(101,1.00,'Škare za endolup',3),(102,9.00,'Incidin',4),(103,23.00,'Caprialco plus H',4),(104,20.00,'Alco plus S',4),(105,8.00,'Plivasept crvaeni',4),(106,1.00,'Cidezime',4),(107,4.00,'Secusept plus',4),(108,1.50,'Secusept activ',4),(109,15.00,'Alkohol 70%',4),(110,6.00,'Alkohol 70%',4),(111,2.00,'Octenisept',4),(112,1.00,'Formaldehid 4%',4),(113,44.00,'Voda za injekcije',4),(114,1.00,'Plivasept tinktura',4),(115,2.00,'Vodikov peroksid 200ml',4),(116,9.00,'Etanol 96%',4),(117,8.00,'UZV gel 5L',4),(118,6.00,'Alkoholne komprese',4),(119,1.00,'Sterisept wipes',4),(120,450.00,'Incidin alcohol wipes',4),(121,1.00,'Skin des neobojani sprej',4),(122,5.00,'Mikrozid wipes jumbo',4),(123,2.00,'Octenisept 50ml',4),(124,2.00,'Formaldehid 10%',4),(125,2.00,'Softasept 250ml',4),(126,2.00,'Softasept 1000ml',4),(127,1.00,'Softasept N 250ml',4),(128,100.00,'Igla zelena',5),(129,10.00,'Igla siva',5),(130,100.00,'Igla smeđa',5),(131,100.00,'Igla roza',5),(132,100.00,'Igla crna',5),(133,100.00,'Igla plava',5),(134,1.00,'Igla za punkciju',5),(135,2.00,'Braunila zelena',5),(136,50.00,'Braunila plava',5),(137,50.00,'Braunila roza',5),(138,50.00,'Braunila žuta',5),(139,400.00,'Skalpel',5),(140,20.00,'Nastavak za skalpel',5),(141,10.00,'Set za torakalnu punkciju',5),(142,54.00,'Sistem za infuziju',5),(143,120.00,'Inzulinska šprica',5),(144,100.00,'Šprica 2ml',5),(145,100.00,'Šprica 5ml',5),(146,100.00,'Šprica 10ml',5),(147,80.00,'Šprica 20ml',5),(148,7.00,'Šprica 50ml',5),(149,7.00,'Šprica 100ml',5),(150,1.00,'Navlaka za uzv. sondu',5),(151,50.00,'Pyloplus',5),(152,1.00,'Vodilica - bougie 10fr',5),(153,10.00,'Urin kateter 16ch',5),(154,10.00,'Urin kateter 18ch',5),(155,36.00,'Konac polysorb 4-0',5),(156,36.00,'Konac monosoft 4-0',5),(157,36.00,'Konac dermalon 3-0',5),(158,1.00,'Vodilica bougie 15fr',5),(159,20.00,'Cannula steriglide 22G',5),(160,100.00,'TSK steriject 32G',5),(161,36.00,'Konac velosorb fast 4-0',5),(162,20.00,'KT za transport cito',5),(163,3.00,'Dräger flow senzor',5),(164,10.00,'Dräger filter safe star',5),(165,1.00,'Dräger filter care star',5),(166,25.00,'Dräger breathing bag',5),(167,25.00,'Dräger circult basic',5),(168,10.00,'Nanosoft igla 0,6mm',5),(169,8.00,'Bref',5),(170,1.00,'Benzin',5),(171,1.00,'Glicerin',5),(172,30.00,'Set za blefaroplastiku',5),(173,104.00,'Urin bočice',6),(174,302.00,'Bubrežnjak',6),(175,1050.00,'Maske',6),(176,110.00,'Kaljače',6),(177,10.00,'Kirurške posude',6),(178,2.00,'Vatice',6),(179,400.00,'Špatule',6),(180,61.00,'Rola papira',6),(181,24.00,'Leukoplast',6),(182,50.00,'Ogrtač',6),(183,9.00,'Sterilni kirurški ogrtač',6),(184,160.00,'Hlačice za kolonoskopiju',6),(185,150.00,'Suknje ginekološke',6),(186,555.00,'Papuče',6),(187,3.00,'Bočice za papa test',6),(188,500.00,'Cytobrush',6),(189,432.00,'Kondomi',6),(190,1.00,'Lubrikant',6),(191,550.00,'Stakalca za papa test',6),(192,500.00,'Špatule ginekološke',6),(193,364.00,'Speculum bijeli \"S\"',6),(194,361.00,'Speculum crveni \"M\"',6),(195,1.00,'Ureoplazma',6),(196,90.00,'Nepropusna podloga',6),(197,250.00,'Podbradak',6),(198,2.00,'Sintetička vata',6),(199,20.00,'Papir za UZV',6),(200,900.00,'Covid test',6),(201,15.00,'Brisevi',6),(202,0.00,'Brisevi s podlogom',6),(203,25.00,'Mrežice vel.8',6),(204,5.00,'Urin vrečica',6),(205,40.00,'Sistem za O2 nosni',6),(206,8.00,'Maska za kisik L',6),(207,9.00,'Maska za kisik M',6),(208,3.00,'Maska za kisik S',6),(209,50.00,'Mini spike',6),(210,7.00,'Airway 50/60/70/80/100mm',6),(211,70.00,'Kirurška prekrivka 60x60',6),(212,4.00,'Kirurška prekrivka 75x90',6),(213,22.00,'Kirurška prekrivka 50x70',6),(214,7.00,'Zavoj 10cm',6),(215,4.00,'Zavoj 6cm',6),(216,2.00,'Sterilna tamponada',6),(217,50.00,'Curapor',6),(218,7.00,'Curafix 5.5x6.5',6),(219,50.00,'Curafix 6x7.5',6),(220,100.00,'Steri strip',6),(221,150.00,'Sterilne komprese 5x5',6),(222,550.00,'Sterilne komprese 10x10',6),(223,100.00,'Sterilne komprese 5x8',6),(224,10000.00,'Nesterilne komprese 7.5x7.5',6),(225,1900.00,'Nesterilne komprese 10x10',6),(226,1800.00,'Nesterilne komprese 5x5',6),(227,10000.00,'Vivapore 5x7',6),(228,500.00,'Vivapore 10x6',6),(229,60.00,'Aspiracijski kateter',6),(230,2.00,'Kirurški konac (Vinka)',6),(231,20.00,'Duodenalne sonde (vel 10,14,16,18)',6),(232,2400.00,'Rukavice S',6),(233,6000.00,'Rukavice M',6),(234,2100.00,'Rukavice L',6),(235,200.00,'Rukavice XL',6),(236,1.00,'Rukavice 6.5',6),(237,1.00,'Rukavice 7',6),(238,70.00,'Rukavice 7.5',6),(239,70.00,'Rukavice 8',6),(240,5.00,'Vazelin',6),(241,468.00,'Elektrode',6),(242,178.00,'Usnici za spirometar',6),(243,1800.00,'EKG papir',6),(244,1.00,'Urin kateter 12ch',6),(245,2.00,'Jednokratni urin kateter 14ch',6),(246,6.00,'Jednokratni urin kateter 16ch',6),(247,3.00,'Vivaqua (5x7,10x9,20x10',6),(248,3.00,'Tubusi (3,4,5)',6),(249,2.00,'Tubus 6',6),(250,2.00,'Tubus 6.5',6),(251,1.00,'Tubus 7',6),(252,4.00,'Tubus 7.5',6),(253,1.00,'Tubus 8',6),(254,2.00,'Tubus 8.5',6),(255,2.00,'Tubus 9',6),(256,10.00,'Kirurški ogrtač sterilni XL',6),(257,10.00,'Kirurški ogrtač sterilni L',6);
/*!40000 ALTER TABLE `artikal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorija`
--

DROP TABLE IF EXISTS `kategorija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorija` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorija`
--

LOCK TABLES `kategorija` WRITE;
/*!40000 ALTER TABLE `kategorija` DISABLE KEYS */;
INSERT INTO `kategorija` VALUES (1,'Lijekovi'),(2,'Infuzije'),(3,'Endoskopije'),(4,'Dezinfekcija'),(5,'Oštri predmeti'),(6,'Razno');
/*!40000 ALTER TABLE `kategorija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokacija`
--

DROP TABLE IF EXISTS `lokacija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lokacija` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokacija`
--

LOCK TABLES `lokacija` WRITE;
/*!40000 ALTER TABLE `lokacija` DISABLE KEYS */;
INSERT INTO `lokacija` VALUES (1,'Ormar'),(2,'Hladnjak'),(3,'Magnet'),(4,'Reanim. kolica'),(5,'Ordinacija 1'),(6,'Ordinacija 2'),(7,'Ordinacija 3'),(8,'Ordinacija 4'),(9,'Ordinacija 5'),(10,'Ordinacija 6'),(11,'Ordinacija 7'),(12,'Ordinacija 8'),(13,'Ordinacija 9'),(14,'Ordinacija 10');
/*!40000 ALTER TABLE `lokacija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oblik`
--

DROP TABLE IF EXISTS `oblik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oblik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oblik`
--

LOCK TABLES `oblik` WRITE;
/*!40000 ALTER TABLE `oblik` DISABLE KEYS */;
INSERT INTO `oblik` VALUES (1,'Otopina za infuziju'),(2,'Sprej'),(3,'Gel'),(4,'Otopina za kožu'),(5,'Tableta'),(6,'Mast'),(7,'Prašak'),(8,'Kapi'),(9,'Ampula'),(10,'Prašak za otopinu'),(11,'Krema'),(12,'Injekcija'),(13,'Screen'),(14,'Otopina'),(15,'Listići'),(16,'Sirup'),(17,'Kontrast'),(18,'Spirala'),(19,'Otopina za injekciju'),(20,'Otopina za inhalaciju');
/*!40000 ALTER TABLE `oblik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'spctest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-13 12:17:42
