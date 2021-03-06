-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: trip_builder
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(255) NOT NULL,
  `IATA` char(10) DEFAULT NULL,
  `ICAO` char(10) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `iata` (`IATA`),
  KEY `icao` (`ICAO`)
) ENGINE=InnoDB AUTO_INCREMENT=749 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES (1,'Aachen Airport','MST','EHBK','Netherlands'),(2,'Aalborg Airport AMBA','AAL','EKYT','Denmark'),(3,'Aarhus Airport','AAR','EKAH','Denmark'),(4,'Abbotsford International Airport','YXX','CYXX','Canada'),(5,'Abdulaziz Airport','JED','OEJN','Saudi Arabia'),(6,'Aberdeen Airport','ABZ','EGPD','United Kingdom'),(7,'Abha Airport','AHB','OEAB','Saudi Arabia'),(8,'Abidjan International Airport','ABJ','DIAP','Ivory Coast'),(9,'Abruzzo International Airport','PSR','LIBP','Italy'),(10,'Abu Dhabi International Airport','AUH','OMAA','Abu Dhabi'),(11,'Abu Simbel Airport','ABS','HEBL','Egypt'),(12,'Abuja - Nnamdi Azikwe International Airport','ABV','DNAA','Nigeria'),(13,'Acapulco - General Juan N Alvarez International','ACA','MMAA','Mexico'),(14,'Accra - Kotoka International Airport','ACC','DGAA','Ghana'),(15,'Adams Field','LIT','KLIT','United States'),(16,'Adana - Sakirpasa Airport','ADA','LTAF','Turkey'),(17,'Addis Ababa - Bole International Airport','ADD','HAAB','Ethiopia'),(18,'Adelaide Airport','ADL','YPAD','Australia'),(19,'Adelaide - Parafield Airport Ltd','PAL','YPPF','Australia'),(20,'Aden International Airport','ADE','OYAA','Yemen'),(21,'Adi Sucipto International Airport','JOG','WIIJ','Indonesia'),(22,'Adi Sumarmo Wiryokusumo Airport','SOC','WARQ','Indonesia'),(23,'Adirondack Regional Airport','SLK','KSLK','United States'),(24,'Adisumarmo International Airport','SOC','WARQ','Indonesia'),(25,'Adnan Menderes Airport','ADB','LTBJ','Turkey'),(26,'Aerodrom Portoroz doo','POW','LJPZ','Slovenia'),(27,'Aéroport d´Annecy - Meythet','NCY','LFCP','France'),(28,'Aéroport International de Vatry','XCR','LFOK','France'),(29,'Aeroporto da Praia','RAI','GVNP','Cape Verde'),(30,'Aeropuerto Central Ciudad Real','CQM','LERL','Spain'),(31,'Afonso Pena Airport','CWB','SBCT','Brazil'),(32,'Agadir - Al Massira International Airport','AGA','GMAD','Morocco'),(33,'Agen - La Garenne Airport','AGF','LFBA','France'),(34,'Agra Airport','AGR','VIAG','India'),(35,'Aguadilla - Rafael Hernandez Airport','BQN','TJBQ','Puerto Rico'),(36,'Aguascalientes - Jesús Terán Peredo International Airport','AGU','MMAS','Mexico'),(37,'Aguenar Airport','TMR','DAAT','Algeria'),(38,'Ahmadabad Airport','IKA','OIIE','Iran'),(39,'Ahmedabad - Sardar Vallabh Bhai Patel International Airport','AMD','VAAH','India'),(40,'Airport','','','Liechtenstein'),(41,'Aitutaki Airport','AIT','NCAI','Cook Is'),(42,'Aix les Bains Airport','CMF','LFLB','France'),(43,'Ajaccio - Campo Dell´Oro Airport','AJA','LFKJ','France'),(44,'Akanu Ibiam International Airport','ENU','DNEN','Nigeria'),(45,'Akita Airport','AXT','RJSK','Japan'),(46,'Akron-Canton Regional Airport','CAK','KCAK','United States'),(47,'Al Ain International Airport','','','Abu Dhabi'),(48,'Al Alamain International Airport','DBB','HEAL','Egypt'),(49,'Al Hoceima - Cherif Al Idrissi Airport','AHU','GMTA','Morocco'),(50,'Al Maktoum International Airport','DWC','OMDW','Dubai'),(51,'Al Massira Airport','AGA','GMAD','Morocco'),(52,'Alamosa - San Luis Valley Regional/Bergman Airfield','ALS','KALS','United States'),(53,'Albacete - Los Llanos Airport','ABC','LEAB','Spain'),(54,'Albany International Airport','ALB','KALB','United States'),(55,'Albany - Southwest Georgia Regional Airport','ABY','KABY','United States'),(56,'Albi - Le Sequestre Airport','LBI','LFCI','France'),(57,'Albuquerque International Airport','ABQ','KABQ','United States'),(58,'Aldergrove Airport','BFS','EGAA','United Kingdom'),(59,'Alderney Airport','ACI','EGJA','Guernsey'),(60,'Alejandro Velasco Astete Int´l Airport','CUZ','SPZO','Peru'),(61,'Aleppo International Airport','ALP','OSAP','Syria'),(62,'Alexander the Great Airport','SKP','LWSK','Macedonia'),(63,'Alexandria - Borg El Arab Airport','HBE','HEBA','Egypt'),(64,'Alexandria - El Nhouza Airport','ALY','HEAX','Egypt'),(65,'Alexandria - Esler Regional Airport','ESF','KESF','United States'),(66,'Alexandria International Airport','AEX','KAEX','United States'),(67,'Alexandros Papadiamantis Airport','JSI','LGSK','Greece'),(68,'Alexandroupolis International Airport','AXD','LGAL','Greece'),(69,'Alfonso Bonilla Aragon Airport','CLO','SKCL','Colombia'),(70,'Alghero - Fertilia Airport','AHO','LIEA','Italy'),(71,'Algiers-Houari Boumedienne Airport','ALG','DAAG','Algeria'),(72,'Ali - Gunsa Airport','','','China PRC'),(73,'Alicante Airport','ALC','LEAL','Spain'),(74,'Alice Springs Airport','ASP','YBAS','Australia'),(75,'Allama Iqbal International Airport','LHE','OPLA','Pakistan'),(76,'Allentown Airport','ABE','KABE','United States'),(77,'Allgäu Airport','FMM','EDJA','Germany'),(78,'Alma Ata','ALA','UAAA','Kazakhstan'),(79,'Almaty International Airport','ALA','UAAA','Kazakhstan'),(80,'Almeria Airport','LEI','LEAM','Spain'),(81,'Alor Setar Airport','AOR','WMKA','Malaysia'),(82,'Alta Airport','ALF','ENAT','Norway'),(83,'Altenburg Nobitz Airport','AOC','EDAC','Germany'),(84,'Altenrhein - St Gallen Airport','ACH','LSZR','Switzerland'),(85,'Alvedro Airport','LCG','LECO','Spain'),(86,'Alykel Airport','NSK','UOOO','Russia'),(87,'Amado Nervo National Airport','TPQ','MMEP','Mexico'),(88,'Amarillo - Rick Husband International Airport','AMA','KAMA','United States'),(89,'Amata Kabua International Airport','MAJ','PKMJ','Marshall Is'),(90,'Amausi International Airport','LKO','VILK','India'),(91,'Amborovy Airport','MJN','FMNM','Madagascar'),(92,'Ambouli Airport','JIB','HDAM','Djibouti'),(93,'Ambrosio L V Taravella','COR','SACO','Argentina'),(94,'American Samoa Airport','PPG','NSTU','American Samoa'),(95,'Amerigo Vespucci Airport','FLR','LIRQ','Italy'),(96,'Amilcar Cabral International Airport','SID','GVAC','Cape Verde'),(97,'Amman - Queen Alia International Airport','AMM','OJAI','Jordan'),(98,'Amritsar - Raja Sansi International Airport','ATQ','VIAR','India'),(99,'Amsterdam Airport Schiphol','AMS','EHAM','Netherlands'),(100,'Anadyr - Ugolny Airport','DYR','UHMA','Russia'),(101,'Anchorage International Airport','ANC','PANC','United States'),(102,'Anchorage - Ted Stevens International Airport','ANC','PANC','United States'),(103,'Ancona Falconara Airport','AOI','LIPY','Italy'),(104,'Andenes - Andoya Airport','ANX','ENAN','Norway'),(105,'Andorra Airport','','','Andorra'),(106,'Andoya Airport','ANX','ENAN','Norway'),(107,'Angads Airport','OUD','GMFO','Morocco'),(108,'Angel Albino Corzo Airport','TGZ','MMTG','Mexico'),(109,'Angelholm - Helsingborg Airport','AGH','ESDB','Sweden'),(110,'Anglet Airport','BIQ','LFBZ','France'),(111,'Angoulême - Brie-Champniers Airport','ANG','LFBU','France'),(112,'Anguilla Wallblake Airport','AXA','TQPF','Anguilla'),(113,'Ankara - Esenboga International Airport','ESB','LTAC','Turkey'),(114,'Annaba-Rabah Bitat Airport','AAE','DABB','Algeria'),(115,'Annecy - Haute Savoie Mont Blanc Airport','NCY','LFCP','France'),(116,'Antalya Airport','AYT','LTAI','Turkey'),(117,'Antananarivo - Ivato International Airport','TNR','FMMI','Madagascar'),(118,'Antigua V C Bird International Airport','SJF','TAPA','Antigua & Barbuda'),(119,'Antofagasta Airport- Cerro Moreno','ANF','SCFA','Chile'),(120,'Antonio Canova Airport','TSF','LIPH','Italy'),(121,'Antonio Carlos Jobim','GIG','SBGL','Brazil'),(122,'Antonio Maceo Airport','SCU','MUCU','Cuba'),(123,'Antonov','GML','UKKM','Ukraine'),(124,'Antwerp Airport','ANR','EBAW','Belgium'),(125,'Apia Airport','APW','NSFA','Samoa'),(126,'Appleton - Outagamie County Regional Airport','ATW','KATW','United States'),(127,'Aqaba - King Hussein International Airport','AQJ','OJAQ','Jordan'),(128,'Arad International Airport','ARW','LRAR','Romania'),(129,'Araura Airport','AIT','NCAI','Cook Is'),(130,'Araxos Airport','GPA','LGRX','Greece'),(131,'Archerfield Airport','BNE','YBAF','Australia'),(132,'Åre Östersund Airport','OSD','ESNZ','Sweden'),(133,'Arica - Chacalluta Airport','ARI','SCAR','Chile'),(134,'Aristotelis Airport','KSO','LGKA','Greece'),(135,'Arkhangelsk - Talagi Airport','ARH','ULAA','Russia'),(136,'Arlanda Airport','ARN','ESSA','Sweden'),(137,'Arles Airport','FNI','LFTW','France'),(138,'Armor Airport','SBK','LFRT','France'),(139,'Arnage Aerodrome','LME','LFRM','France'),(140,'Aro Airport','MOL','ENML','Norway'),(141,'Arturo Merino Benitez Airport','SCL','SCEL','Chile'),(142,'Aruba - Queen Beatrix Airport','AUA','TNCA','Aruba'),(143,'Arusha Airport','ARK','HTAR','Tanzania'),(144,'AS Sulaimaniyah West Airport','SUL','ORSU','Iraq'),(145,'Asahikawa Airport','AKJ','RJEC','Japan'),(146,'Asheville Regional Airport','AVL','KAVL','United States'),(147,'Ashford Airport','LYX','EGMD','United Kingdom'),(148,'Ashkabad Airport','ASB','UTAA','Turkmenistan'),(149,'Asmara Int´l Airport','ASM','HHAS','Eritrea'),(150,'Assiut Airport','ATZ','HEAT','Egypt'),(151,'Astana International Airport JSC','TSE','UACC','Kazakhstan'),(152,'Astrakhan - Narimanovo Airport','ASF','URWA','Russia'),(153,'Asturias Airport','OVD','LEAS','Spain'),(154,'Asuncion - Silvio Pettirossi International Airport','ASU','SGAS','Paraguay'),(155,'Aswan - Daraw Airport','ASW','HESN','Egypt'),(156,'Atatürk Airport','IST','LTBA','Turkey'),(157,'Athens Ben Epps Airport','AHN','KAHN','United States'),(158,'Athens International Airport El Venizelos','ATH','LGAT','Greece'),(159,'Atlanta - Hartsfield-Jackson International Airport','ATL','KATL','United States'),(160,'Atlanta International Airport','ATL','KATL','United States'),(161,'Atlantic City International Airport','ACY','KACY','United States'),(162,'Atlantique International Airport','NTE','LFRS','France'),(163,'Atyrau Airport','GUW','UATG','Kazakhstan'),(164,'Auckland International Airport','AKL','NZAA','New Zealand'),(165,'Augsburg Airport','AGB','EDMA','Germany'),(166,'Augusta Regional Airport','AGS','KAGS','United States'),(167,'Augusto C Sandino International Airport','MGA','MNMG','Nicaragua'),(168,'Augusto Severo Airport','NAT','SBNT','Brazil'),(169,'Aulnat Airport','CFE','LFLC','France'),(170,'Aurel Vlaicu International Airport','BBU','LRBS','Romania'),(171,'Aurillac Airport','AUR','LFLW','France'),(172,'Austin-Bergstrom International Airport','AUS','KAUS','United States'),(173,'Avalon Airport','AVV','YMAV','Australia'),(174,'Avignon-Caumont Airport','AVN','LFMV','France'),(175,'Babelthaup/Koror Airport','ROR','PTRO','Palau'),(176,'Badajoz Airport','BJZ','LEBZ','Spain'),(177,'Badajoz - Talavera la Real Airport','BJZ','LEBZ','Spain'),(178,'Badala Airport','FAA','GUFH','Guinea'),(179,'Baden-Baden - Baden Airpark','FKB','EDSB','Germany'),(180,'Bag‚ - Aeroporto Internacional Comandante Gustavo Kraemer','BGX','SBBG','Brazil'),(181,'Baghdad International Airport','BGW','ORBI','Iraq'),(182,'Bagotville Airport','YBG','CYBG','Canada'),(183,'Bagram Air Base','BPM','OAIX','Afghanistan'),(184,'Bahias de Huatulco Intïl Airport','HUX','MMBT','Mexico'),(185,'Bahrain International Airport','BAH','OBBI','Bahrain'),(186,'Baia Mare International Airport','BAY','LRBM','Romania'),(187,'Baie Comeau Airport','YBC','CYBC','Canada'),(188,'Baiyun','CAN','ZGGG','China PRC'),(189,'Baku - Heydar Aliyev Intïl Airport','BAK','UBBB','Azerbaijan'),(190,'Balandino Airport','CEK','USCC','Russia'),(191,'Bali International Airport','DPS','WADD','Indonesia'),(192,'Balice Airport','KRK','EPKK','Poland'),(193,'Balikpapan - Sepinggan International Airport','BPN','WALL','Indonesia'),(194,'Ballasalla Airport','IOM','EGNS','Isle of Man'),(195,'Baltimore - Washington International Airport','BWI','KBWI','United States'),(196,'Bamako - Senou International Airport','BKO','GABS','Mali'),(197,'Banak Airport','LKL','ENNA','Norway'),(198,'Banda Aceh - Sultan Iskandarmuda Airport','BTJ','WITT','Indonesia'),(199,'Bandar Seri Begawan Airport','BWN','WBSB','Brunei'),(200,'Bandaranaike International Airport','CMB','VCBI','Sri Lanka'),(201,'Bandung - Husein Sastranegara International Airport','BDO','WICC','Indonesia'),(202,'Baneasa Airport','BBU','LRBS','Romania'),(203,'Bangalore International Airport','BLR','VOBG','India'),(204,'Bangkok International Airport','BKK','VTBD','Thailand'),(205,'Bangkok - Suvarnabhumi International Airport','NBK','VTBS','Thailand'),(206,'Bangor International Airport','BGR','KBGR','United States'),(207,'Bangui-MïPoko Airport','BGF','FEFF','Central African Rep.'),(208,'Banja Luka Airport','BNX','LQBK','Bosnia-Herzegovina'),(209,'Banjul International Airport','BJL','GBYD','Gambia'),(210,'Bankstown Airport','BWU','YSBK','Australia'),(211,'Baoan','SZX','ZGSZ','China PRC'),(212,'Baotou Airport','BAV','ZBOW','Mongolia'),(213,'Barahona - Aeropuerto Internacional Maria Montez','BRX','MDBH','Dominican Republic'),(214,'Barcelona International Airport','BCN','LEBL','Spain'),(215,'Bardufoss Airport','BDU','ENDU','Norway'),(216,'Bari Karol Wojtyla International Airport','BRI','LIBD','Italy'),(217,'Barnaul Airport','BAX','UNBB','Russia'),(218,'Barra Airport','BRR','EGPR','United Kingdom'),(219,'Barra Eoligarry Airport','BRR','EGPR','United Kingdom'),(220,'Barranquilla - Aeropuerto Intïl Ernesto Cortissoz','BAQ','SKBQ','Colombia'),(221,'Basel/Mulhouse Airport','BSL','LFSB','Switzerland'),(222,'Basrah International Airport','BSR','ORMM','Iraq'),(223,'Bata Airport','BSG','FGBT','Equatorial Guinea'),(224,'Batam - Hang Nadim International Airport','BTH','WIDD','Indonesia'),(225,'Baton Rouge Metroplitan Airport','BTR','KBTR','United States'),(226,'Battle Creek Airport','AZO','KAZO','United States'),(227,'Batu Berendam Airport','MKZ','WMKM','Malaysia'),(228,'Batumi Airport','BUS','UGSB','Georgia'),(229,'Baucau - Cakung Airport','NCH','WPEC','East Timor'),(230,'Bauerfield Airport','VLI','NVVV','Vanuatu'),(231,'Bayone Airport','BIQ','LFBZ','France'),(232,'Beauvais/Tille Aeroport','BVA','LFOB','France'),(233,'Beef Island - Terrance B Lettsome International Airport','EIS','TUPJ','Virgin Is (UK)'),(234,'Beijing - Capital International Airport','PEK','ZBAA','China PRC'),(235,'Beijing Nanyuan Airport','NAY','ZBNY','China PRC'),(236,'Beira International Airport','BEW','FQBR','Mozambique'),(237,'Beirut - Rafic Hariri International Airport','BEY','OLBA','Lebanon'),(238,'Belem International Airport','BEL','SBBE','Brazil'),(239,'Belfast City Airport (George Best)','BHD','EGAC','United Kingdom'),(240,'Belfast International Airport','BFS','EGAA','United Kingdom'),(241,'Belgrade - Nikola Tesla Airport','BEG','LYBE','Serbia'),(242,'Belize - Phillip S W Goldson Airport','BZE','MZBZ','Belize'),(243,'Bellegarde Airport','LIG','LFBL','France'),(244,'Belleville - MidAmerica St Louis Airport','BLV','KBLV','United States'),(245,'Bellingham International Airport','BLI','KBLI','United States'),(246,'Belo Horizonte - Pampulha Airport','PLU','SBBH','Brazil'),(247,'Belo Horizonte - Tancredo Neves International Airport','CNF','SBCF','Brazil'),(248,'Ben Epps Airport','AHN','KAHN','United States'),(249,'Ben Gurion International Airport','TLV','LLBG','Israel'),(250,'Ben Yaïacov Airport','RPN','LLIB','Israel'),(251,'Benazir Bhutto International Airport','ISB','OPRN','Pakistan'),(252,'Benbecula Airport','BEB','EGPL','United Kingdom'),(253,'Benghazi - Benina International Airport','BEN','HLLB','Libya'),(254,'Benina International Airport','BEN','HLLB','Libya'),(255,'Benito Juarez Airport','MEX','MMMX','Mexico'),(256,'Berbera Airport','BBO','HCMI','Somaliland'),(257,'Bergamo - Orio Al Serio Airport','BGY','LIME','Italy'),(258,'Bergen Airport','BGO','ENBR','Norway'),(259,'Bergerac - Roumaniere Airport','EGC','LFBE','France'),(260,'Bergman Field','ALS','KALS','United States'),(261,'Bergstrom International Airport','AUS','KAUS','United States'),(262,'Berlin - Sch”nefeld International Airport','SXF','EDDB','Germany'),(263,'Berlin - Tegel Airport','TXL','EDDT','Germany'),(264,'Bermuda International Airport','BDA','TXKF','Bermuda'),(265,'Bern Belp Airport','BRN','LSZB','Switzerland'),(266,'B‚ziers-Agde-Vias Airport','BZR','LFMU','France'),(267,'B‚ziers Cap dïAgde Airport','BZR','LFMU','France'),(268,'Biak - Frans Kaisiepo Airport','BIK','WABB','Indonesia'),(269,'Biard Airport','PIS','LFBI','France'),(270,'Biarritz-Anglet-Bayone Airport','BIQ','LFBZ','France'),(271,'Bilbao Airport','BIO','LEBB','Spain'),(272,'Billings Logan International Airport','BIL','KBIL','United States'),(273,'Billund Airport','BLL','EKBI','Denmark'),(274,'Biloxi International Airport','GPT','KGPT','United States'),(275,'Binghamton Airport','BGM','KBGM','United States'),(276,'Binhai','TSN','ZBTJ','China PRC'),(277,'Bintulu Airport','BTU','WBGB','Malaysia'),(278,'V C Bird International Airport','SJF','TAPA','Antigua & Barbuda'),(279,'Birmingham International Airport','BHM','KBHM','United States'),(280,'Birmingham International Airport','BHX','EGBB','United Kingdom'),(281,'Bishkek - Manas International Airport','FRU','UAFM','Kyrgyzstan'),(282,'Bishop International Airport','FNT','KFNT','United States'),(283,'Bismarck Airport','BIS','KBIS','United States'),(284,'Bissau - Osvaldo Vieira International Airport','BXO','GGOV','Guinea Bissau'),(285,'Black Forest Airport','LHA','EDTL','Germany'),(286,'Blackbushe Airport','BBS','EGLK','United Kingdom'),(287,'Blackpool International Airport','BLK','EGNH','United Kingdom'),(288,'Blagnac Airport','TLS','LFBO','France'),(289,'Blankensee Airport','LBC','EDHL','Germany'),(290,'Blantyre - Chileka International Airport','BLZ','FWCL','Malawi'),(291,'Blatchford Field','YXD','CYXD','Canada'),(292,'Blenheim Airport','BHE','NZWB','New Zealand'),(293,'Bloemfontein Airport','BFN','FABL','South Africa'),(294,'Blountville - Tri-Cities Regional Airport','TRI','KTRI','United States'),(295,'Blue Danube Airport','LNZ','LOWL','Austria'),(296,'Blue Grass Airport','LEX','KLEX','United States'),(297,'Bluefield - Mercer County Airport','BLF','KBLF','United States'),(298,'Boa Vista International Airport','BVB','SBBV','Brazil'),(299,'Bob Hope Airport','BUR','KBUR','United States'),(300,'Bodensee - Airport Friedrichshafen','FDH','EDNY','Germany'),(301,'Bod› Airport','BOO','ENBO','Norway'),(302,'Boeing Field','BFI','KBFI','United States'),(303,'Bogot  - El Dorado International Airport','BOG','SKBO','Colombia'),(304,'Boise Airport','BOI','KBOI','United States'),(305,'Bole Airport','ADD','HAAB','Ethiopia'),(306,'Bologna Airport','BLQ','LIPE','Italy'),(307,'Bolshoye Savino','PEE','USPP','Russia'),(308,'Bolzano Airport','BZO','LIPB','Italy'),(309,'Bombay Airport','BOM','VABB','India'),(310,'Bonaire - Flamingo Airport','BON','TNCB','BES Islands'),(311,'Bonaire International Airport','BON','TNCB','BES Islands'),(312,'Bonn Airport','CGN','EDDK','Germany'),(313,'Bonriki Intïl Airport','TRW','NGTA','Kiribati'),(314,'Boosaaso - Bender Qassim International Airport','BSA','MCMF','Somalia'),(315,'Bora Bora Airport','BOB','NTTB','French Polynesia'),(316,'Bordeaux - Merignac Airport','BOD','LFBD','France'),(317,'Borl„nge Airport','BLE','ESSD','Sweden'),(318,'Bornholm Airport','RNN','EKRN','Denmark'),(319,'Boryspil Airport','KBP','UKBB','Ukraine'),(320,'Bosasso Airport','BSA','MCMF','Somalia'),(321,'Bossaso Airport','BSA','MCMF','Somalia'),(322,'Boston - Logan International Airport','BOS','KBOS','United States'),(323,'Bouguenais - Nantes Atlantique Airport','NTE','LFRS','France'),(324,'Bourgas Airport','BOJ','LBBG','Bulgaria'),(325,'Bourges Airport','BOU','LFLD','France'),(326,'Bourgogne Airport','DIJ','LFSD','France'),(327,'Bournemouth International Airport','BOH','EGHH','United Kingdom'),(328,'Boutheon Airport','EBU','LFMH','France'),(329,'Bozeman - Gallatin Field Airport','BZN','KBZN','United States'),(330,'Brac Airport','BWK','LDSB','Croatia'),(331,'Bradford Regional Airport','BFD','KBFD','United States'),(332,'Bradley International Airport','BDL','KBDL','United States'),(333,'Braganca Aerodrome','BGC','LPBG','Portugal'),(334,'Brasilia International Airport - Presidente Juscelino Kubitschek','BSB','SBBR','Brazil'),(335,'Bratislava - M R Stefanik Airport','BTS','LZIB','Slovakia'),(336,'Bratsk Airport','BTK','UIBB','Russia'),(337,'Brazzaville - Maya Maya Airport','BVZ','FCBB','Congo PR'),(338,'Bremen Airport','BRE','EDDW','Germany'),(339,'Brescia Airport','VBS','LIPO','Italy'),(340,'Brest - Bretagne Airport','BES','LFRB','France'),(341,'Brest Guipavas Airport','BES','LFRB','France'),(342,'Brie Airport','ANG','LFBU','France'),(343,'Brindisi - Casale Airport','BDS','LIBR','Italy'),(344,'Brisbane - Archerfield Airport','BNE','YBAF','Australia'),(345,'Brisbane International Airport','BNE','YBBN','Australia'),(346,'Bristol - Filton Airport','BRS','EGTG','United Kingdom'),(347,'Bristol International Airport','BRS','EGGD','United Kingdom'),(348,'Brive - La Roche Airport','BVE','LFBV','France'),(349,'Brnik Airport','LJU','LJLJ','Slovenia'),(350,'Brno-Turany Airport','BRQ','LKTB','Czech Republic'),(351,'Bromma Airport','BMA','ESSB','Sweden'),(352,'Bron International Airport','LYN','LFLY','France'),(353,'Brownsville South Padre Island International Airport','BRO','KBRO','United States'),(354,'Brunei International Airport','BWN','WBSB','Brunei'),(355,'Brussels Airport','BRU','EBBR','Belgium'),(356,'Brussels - South Charleroi Airport','CRL','EBCI','Belgium'),(357,'Bucaramanga - Palo Negro Airport','BGA','SKBG','Colombia'),(358,'Bucharest - Baneasa Airport','BBU','LRBS','Romania'),(359,'Bucharest - Henri Coanda International Airport','OTP','LROP','Romania'),(360,'Budapest Ferihegy International Airport','BUD','LHBP','Hungary'),(361,'Buenos Aires - Aeroparque Jorge Newbery','AEP','SABE','Argentina'),(362,'Buenos Aires - Aeropuerto Intïl de Ezeiza ïMinistro Pistariniï','EZE','SAEZ','Argentina'),(363,'Buenos Aires - Don Torcuato International Airport','DOT','SADD','Argentina'),(364,'Buffalo Niagara International Airport','BUF','KBUF','United States'),(365,'Bujumbura Airport','BJM','HBBA','Burundi'),(366,'Bukhara International Airport','BHK','UTSB','Uzbekistan'),(367,'Bulawayo - JM Nkomo International Airport','BUQ','FVBU','Zimbabwe'),(368,'Buon Ma Thuot Airport','BMV','VVBM','Vietnam'),(369,'Buraidah - Gassim Airport','ELQ','OEGS','Saudi Arabia'),(370,'Burbank - Bob Hope Airport','BUR','KBUR','United States'),(371,'Burgos - Villafria Airport','RGS','LEBG','Spain'),(372,'Burlington International Airport','BTV','KBTV','United States'),(373,'Busan','PUS','RKPP','South Korea'),(374,'Bushfield','AGS','KAGS','United States'),(375,'Bydgoszcz - I J Paderewski Airport','BZG','EPBY','Poland'),(376,'Cabo Frio International Airport','CFB','SBCB','Brazil'),(377,'Cadiz Airport','XRY','LEJR','Spain'),(378,'Cagliari - Elmas Mario Mameli Airport','CAG','LIEE','Italy'),(379,'Cairo International Airport','CAI','HECA','Egypt'),(380,'Cakung','NCH','WPEC','East Timor'),(381,'Calabar - Margaret Ekpo International Airport','CBQ','DNCA','Nigeria'),(382,'Calama Airport - El Loa','CJC','SCCF','Chile'),(383,'Calgary International Airport','YYC','CYYC','Canada'),(384,'Cali - Alfonso Bonilla Aragón International Airport','CLO','SKCL','Colombia'),(385,'Calicut International Airport','CCJ','VOCL','India'),(386,'Calvi - Sainte Catherine Aeroport','CLY','LFKC','France'),(387,'Cam Ranh International Airport','CXR','VVCR','Vietnam'),(388,'Camagüey-Ignacio Agramonte Airport','CMW','MUCM','Cuba'),(389,'Camargue Airport','FNI','LFTW','France'),(390,'Cambria County Airport','JST','KJST','United States'),(391,'Cambridge Airport','CBG','EGSC','United Kingdom'),(392,'Camden Airport','CDU','YSCN','Australia'),(393,'Campbeltown Airport','CAL','EGEC','United Kingdom'),(394,'Campeche - Ingeniero Alberto Acuna Ongay Int´l Airport','CPE','MMCP','Mexico'),(395,'Campinas','VCP','SBKP','Brazil'),(396,'Campo Dell´Oro Airport','AJA','LFKJ','France'),(397,'Campo dos Palmares','MCZ','SBMO','Brazil'),(398,'Campo Grande International Airport','CGR','SBCG','Brazil'),(399,'Cañal Bajo','ZOS','SCJO','Chile'),(400,'Canberra International Airport','CBN','YSCB','Australia'),(401,'Cancun International Airport','CUN','MMUN','Mexico'),(402,'Canefield Airport','DCF','TDCF','Dominica'),(403,'Cannes - Mandelieu Airport','CEQ','LFMD','France'),(404,'Canton Airport','CAK','KCAK','United States'),(405,'Cap FAP Guillermo Concha Iberico Int´l','PIU','SPUR','Peru'),(406,'Cap Haitien International Airport','CAP','MTCH','Haiti'),(407,'Cape Town International Airport','CPT','FACT','South Africa'),(408,'Capital City Airport','LAN','KLAN','United States'),(409,'Capitan Oriel Lea Plaza','TJA','SLTJ','Bolivia'),(410,'Capodichino Airport','NAP','LIRN','Italy'),(411,'Captain Montes Airport','TYL','SPYL','Peru'),(412,'Carcassonne Salvaza Airport','CCF','LFMK','France'),(413,'Cardiff Airport','CWL','EGFF','United Kingdom'),(414,'Carl A Spaatz Field','RDG','KRDG','United States'),(415,'Carl T Jones Fld','HSV','KHSV','United States'),(416,'Carlisle Airport','CAX','EGNC','United Kingdom'),(417,'Carlos Rovirosa Pérez Int´l Airport','VSA','MMVA','Mexico'),(418,'Carrasco International Airport','MUD','SUMU','Uruguay'),(419,'Cartagena - Rafael Nunez Airport','CTG','SKCG','Colombia'),(420,'Carthage International Airport','TUN','DTTA','Tunisia'),(421,'Casablanca - Mohammed V International Airport','CMN','GMMN','Morocco'),(422,'Casale Airport','BDS','LIBR','Italy'),(423,'Casper - Natrona County International Airport','CPR','KCPR','United States'),(424,'Cassidy International Airport','CXI','PLCH','Kiribati'),(425,'Castres - Mazamet Airport','DCM','LFCK','France'),(426,'Castries - George FL Charles Airport','SLU','TLPC','St Lucia'),(427,'Cát Bi International Airport','HPH','VVCI','Vietnam'),(428,'Cataloi Airport','TCE','LRTC','Romania'),(429,'Catamarca Airport','CTC','SANC','Argentina'),(430,'Catania-Fontanarossa Airport','CTA','LICC','Italy'),(431,'Cataratas del Iguazu','IGR','SARI','Argentina'),(432,'Cataratas Int´l Airport','IGU','SBFI','Brazil'),(433,'Caumont Airport','AVN','LFMV','France'),(434,'Cayenne - Rochambeau Airport','CAY','SOCA','French Guiana'),(435,'Cayo Largo-Vilo Acuña Int´l Airport','CYO','MUCL','Cuba'),(436,'Cedar Rapids Airport','CID','KCID','United States'),(437,'Cedar Rapids Eastern Iowa Airport','CID','KCID','United States'),(438,'Central Wisconsin Regional Airport','CWA','KCWA','United States'),(439,'Cerro Moreno','ANF','SCFA','Chile'),(440,'Chabeuil Airport','VAF','LFLU','France'),(441,'Chacalluta Airport','ARI','SCAR','Chile'),(442,'Chambéry-Savoie Airport','CMF','LFLB','France'),(443,'Chamonate','CPO','SCHA','Chile'),(444,'Champagne Airport','RHE','LFSR','France'),(445,'Champaign - Willard Airport','CMI','KCMI','United States'),(446,'Champniers Airport','ANG','LFBU','France'),(447,'Changchun Longjia International Airport','CGQ','ZYCC','China PRC'),(448,'Changi Airport','SIN','WSSS','Singapore'),(449,'Changsha Huanghua International Airport','CSX','ZGHA','China PRC'),(450,'Chania International Airport','CHQ','LGSA','Greece'),(451,'Channel Islands - Alderney Airport','ACI','EGJA','Guernsey'),(452,'Channel Islands - Guernsey Airport','GCI','EGJB','Guernsey'),(453,'Channel Islands - Jersey Airport','JER','EGJJ','Jersey'),(454,'Charleroi Airport','CRL','EBCI','Belgium'),(455,'Charles B Wheeler','MKC','KMKC','United States'),(456,'Charles De Gaulle Airport','CDG','LFPG','France'),(457,'Charleston International Airport','CHS','KCHS','United States'),(458,'Charleston - Yeager Airport','CRW','KCRW','United States'),(459,'Charlotte - Douglas International Airport','CLT','KCLT','United States'),(460,'Charlottetown Airport','YYG','CYYG','Canada'),(461,'Charmeil Airport','VHY','LFLV','France'),(462,'Châteauroux-Déols \"Marcel Dassault\"\" Airport\"','CHR','LFLX','France'),(463,'Chattanooga Metropolitan Airport','CHA','KCHA','United States'),(464,'Chek Lap Kok Airport','HKG','VHHH','Hong Kong'),(465,'Chelyabinsk - Balandino Airport','CEK','USCC','Russia'),(466,'Chengdu Shuangliu International Airport','CTU','ZUUU','China PRC'),(467,'Chennai International Airport','MAA','VOMM','India'),(468,'Chennault International Airport','CWF','KCWF','United States'),(469,'Cheongju International Airport','CHN','RKTU','South Korea'),(470,'Cherbourg - Maupertus Aeroport','CER','LFRC','France'),(471,'Cherif Al Idriss Airport','AHU','GMTA','Morocco'),(472,'Chernivtsi International Airport','CWC','UKLN','Ukraine'),(473,'Chester Airport','CEG','EGNR','United Kingdom'),(474,'Chester - Hawarden Airport','CEG','EGNR','United Kingdom'),(475,'Chetumal International Airport','CTM','MMCM','Mexico'),(476,'Cheyenne Airport','CYS','KCYS','United States'),(477,'Chhatarpati Shivaji Int´l Airport','BOM','VABB','India'),(478,'Chiang Kai Shek International Airport','TPE','RCTP','Taiwan ROC'),(479,'Chiang Mai International Airport','CNX','VTCC','Thailand'),(480,'Chiang Rai International Airport','CEI','VTCT','Thailand'),(481,'Chicago - Gary Chicago International Airport','GYY','KGYY','United States'),(482,'Chicago Midway International Airport','MDW','KMDW','United States'),(483,'Chicago - O´Hare Airport','ORD','KORD','United States'),(484,'Chicago Rockford International Airport','RFD','KRFD','United States'),(485,'Chihuahua - General Roberto Fierro Villalobos International Airport','CUU','MMCU','Mexico'),(486,'Chileka International Airport','BLZ','FWCL','Malawi'),(487,'Ching Chuang Kang','RMQ','RCMQ','Taiwan ROC'),(488,'Chinggis Khaan International Airport','ULN','ZMUB','Mongolia'),(489,'Chinita Airport','MAR','SVMC','Venezuela'),(490,'Chios Island National Airport','JKH','LGHI','Greece'),(491,'Chisinau International Airport','KIV','LUKK','Moldova'),(492,'Chita - Kadala Airport','HTA','UIAA','Russia'),(493,'Chitose - New Chitose Airport','CTS','RJCC','Japan'),(494,'Chittagong - Shah Amanat Int´l Airport','CGP','VGEG','Bangladesh'),(495,'Chongqing Jiangbei International Airport','CKG','ZUCK','China PRC'),(496,'Christchurch International Airport','CHC','NZCH','New Zealand'),(497,'Christmas Island','CXI','PLCH','Kiribati'),(498,'Christmas Island Airport','XCH','YPXM','Australia'),(499,'Chulman Airport','CNN','UELL','Russia'),(500,'Chuuk International Airport','TKK','PTKK','Micronesia'),(501,'Ciampino Airport','CIA','LIRA','Italy'),(502,'Ciego de Avila-Maximo Gomez Int´l Airport','AVI','MUCA','Cuba'),(503,'Cienfuegos - Jamie González Int´l Airport','CFG','MUCF','Cuba'),(504,'Cincinnati - Northern Kentucky International Airport','CVG','KCVG','United States'),(505,'City of Derry - Londonderry Eglinton Airport','LDY','EGAE','United Kingdom'),(506,'City of Kelowna','YLW','CYLW','Canada'),(507,'City of North Bay','YYB','CYYB','Canada'),(508,'Ciudad del Este - Guarani International Airport','AGT','SGES','Paraguay'),(509,'Ciudad del Carmen Airport','CME','MMCE','Mexico'),(510,'Ciudad Obregón Airport','CEN','MMCN','Mexico'),(511,'Ciudad Real - Aeropuerto Central','CQM','LERL','Spain'),(512,'Ciudad Victoria - General Pedro J Méndez International Airport','CVM','MMCV','Mexico'),(513,'CKS Airport','TPE','RCTP','Taiwan ROC'),(514,'Clark International Airport','CRK','RPLC','Philippines'),(515,'Clearwater International Airport','PIE','KPIE','United States'),(516,'Clermont Ferrand Auvergne Airport','CFE','LFLC','France'),(517,'Cleveland - Hopkins International Airport','CLE','KCLE','United States'),(518,'Cochabamba - Jorge Wilstermann Airport','CBB','SLCB','Bolivia'),(519,'Cochin International Airport','COK','VOCI','India'),(520,'Cocos (Keeling) Islands Airport','CCK','YPCC','Australia'),(521,'Coffs Harbour Airport','CFS','YCFS','Australia'),(522,'Coimbatore Airport','CJB','VOCB','India'),(523,'Coleman A Young Municipal Airport','DET','KDET','United States'),(524,'Colima - Miguel de la Madrid Airport','CLQ','MMIA','Mexico'),(525,'Colmar - Houssen Airport','CMR','LFGA','France'),(526,'Cologne - Bonn Airport','CGN','EDDK','Germany'),(527,'Colombo Airport','CMB','VCBI','Sri Lanka'),(528,'Colonel Bud Day Field','SUX','KSUX','United States'),(529,'Colorado Springs Airport','COS','KCOS','United States'),(530,'Columbia Metropolitan Airport','CAE','KCAE','United States'),(531,'Columbus - Golden Triangle Regional Airport','GTR','KCUS','United States'),(532,'Columbus - Port Columbus International Airport','CMH','KCMH','United States'),(533,'Comeau Airport','YBC','CYBC','Canada'),(534,'Comodoro Rivadavia International Airport','CRD','SAVC','Argentina'),(535,'Conakry International Airport','CKY','GUCY','Guinea'),(536,'Concepcion Airport','CCP','SCIE','Chile'),(537,'Congonhas Airport','CGH','SBSP','Brazil'),(538,'Connaught Airport','NOC','EIKN','Ireland'),(539,'Constanta - Mihail Kogalniceanu Airport','CND','LRCK','Romania'),(540,'Constantine Airport','CZL','DABC','Algeria'),(541,'Cook Is - Aitutaki Airport','AIT','NCAI','Cook Is'),(542,'Cook Is - Rarotonga Airport','RAR','NCRG','Cook Is'),(543,'Coolangatta - Gold Coast Airport','OOL','YBCG','Australia'),(544,'Coolidge Int´l Airport','SJF','TAPA','Antigua & Barbuda'),(545,'Copenhagen - Kastrup International Airport','CPH','EKCH','Denmark'),(546,'Copenhagen - Roskilde Airport','RKE','EKRK','Denmark'),(547,'Copernicus Airport','WRO','EPWR','Poland'),(548,'Copiapó - Chamonate Airport','CPO','SCHA','Chile'),(549,'J M Cordoba Airport','MDE','SKRG','Colombia'),(550,'Cordoba Airport','ODB','LEBA','Spain'),(551,'Cordoba - Ambrosio L V Taravella Airport','COR','SACO','Argentina'),(552,'Corfu International Airport','CFU','LGKR','Greece'),(553,'Cork International Airport','CRK','EICK','Ireland'),(554,'Corning Regional Airport','ELM','KELM','United States'),(555,'Cornouaille Airport','UIP','LFRQ','France'),(556,'Coronel Francisco Secada Vignetta Int´l','IQT','SPQT','Peru'),(557,'Corpus Christi International Airport','CRP','KCRP','United States'),(558,'Cortez Municipal Airport','CEZ','KCEZ','United States'),(559,'E Cortissoz Airport','BAQ','SKBQ','Colombia'),(560,'Corumba Airport','CMG','SBCR','Brazil'),(561,'A Coruña Airport','LCG','LECO','Spain'),(562,'Costa Brava Airport','GRO','LEGE','Spain'),(563,'Costa Smerelda Airport','OLB','LIEO','Italy'),(564,'Côte D´Azur Airport','NCE','LFMN','France'),(565,'Côte de Granit Airport','LAI','LFRO','France'),(566,'Cotonou Cadjehoun Airport','COO','DBBB','Benin'),(567,'Coventry - West Midlands International Airport','CVT','EGBE','United Kingdom'),(568,'Cozumel International Airport','CZM','MMCZ','Mexico'),(569,'Cristoforo Colombo Airport','GOA','LIMJ','Italy'),(570,'Crotone Airport','CRV','LIBC','Italy'),(571,'Crown Point International Airport','TAB','TTCP','Trinidad & Tobago'),(572,'Crown Point International Airport','POS','TTPP','Trinidad & Tobago'),(573,'Cruzeiro do Sul International Airport','CZS','SBCZ','Brazil'),(574,'Cuatro Vientos Airport','MCV','LECU','Spain'),(575,'Cuernavaca - General Mariano Matamoros Airport','CVJ','MMCB','Mexico'),(576,'Cufar Airport','','GGCF','Guinea Bissau'),(577,'Cuiaba - Marechal Rondon International Airport','CGB','SBCY','Brazil'),(578,'Cumberland Regional Airport','CBE','KCBE','United States'),(579,'Cuneo - Levaldigi Airport','CUF','LIMZ','Italy'),(580,'Curaçao - Hato Airport','CUR','TNCC','Curaâ€¡ao'),(581,'Curitiba - Afonso Pena Airport','CWB','SBCT','Brazil'),(582,'Cusco - Alejandro Velasco Astete International Airport','CUZ','SPZO','Peru'),(583,'Cuxhaven - Nordholz Sea Airport','FCN','ETMN','Germany'),(584,'Cyril E King Airport','STT','TIST','Virgin Is (USA)'),(585,'Côte d´Opale Airport','LTQ','LFAT','France'),(586,'Da Nang International Airport','DAD','VVDN','Vietnam'),(587,'Dabolim Airport','GOI','VAGO','India'),(588,'Daegu International Airport','TAE','RKTN','South Korea'),(589,'Dagali Airport','DLD','ENDI','Norway'),(590,'Dakar-Yoff - Leopol Sedar Senghor International Airport','DKR','GOOY','Senegal'),(591,'Dakhla Airport','DAK','GMMH','Morocco'),(592,'Dalaman Airport','DLM','LTBS','Turkey'),(593,'Dalcross Airport','INV','EGPE','United Kingdom'),(594,'Dalian Zhoushuizi International Airport','DLC','ZYTL','China PRC'),(595,'Dallas - Fort Worth International Airport','DFW','KDFW','United States'),(596,'Dallas Love Field','DAL','KDAL','United States'),(597,'Damascus International Airport','DAM','OSDI','Syria'),(598,'Dammam - King Fahd International Airport','DMM','OEDF','Saudi Arabia'),(599,'Dane County Regional Airport','MSN','KMSN','United States'),(600,'Dar-es-Salaam - Julius Nyerere International Airport','DAR','HTDA','Tanzania'),(601,'Daraw Airport','ASW','HESN','Egypt'),(602,'Darwin Int´l Airport','DRW','YPDN','Australia'),(603,'Datong Airport','DAT','ZBDT','China PRC'),(604,'Davao - Francisco Bangoy International Airport','DVO','RPMD','Philippines'),(605,'Dayton International Airport','DAY','KDAY','United States'),(606,'Daytona Beach International Airport','DAB','KDAB','United States'),(607,'Deauville - Saint Gatien Airport','DOL','LFRG','France'),(608,'Debrecen International Airport','DEB','LHDC','Hungary'),(609,'Decatur Airport','DEC','KDEC','United States'),(610,'Del Bajío International Airport','BJX','MMLO','Mexico'),(611,'Delhi - Indira Gandhi International Airport','DEL','VIDP','India'),(612,'Denpasar International Airport','DPS','WADD','Indonesia'),(613,'Denpasar - Ngurah Rai International Airport','DPS','WADD','Indonesia'),(614,'Denver International Airport','DEN','KDEN','United States'),(615,'Deols Airport','CHR','LFLX','France'),(616,'Deputado Luis Eduardo Magalhaes','SSA','SBSV','Brazil'),(617,'Dera Ghazi Khan Airport','DEA','OPDG','Pakistan'),(618,'Derry Airport','LDY','EGAE','United Kingdom'),(619,'Des Moines International Airport','DSM','KDSM','United States'),(620,'Detroit City Airport - Coleman A Young Int´l Airport','DET','KDET','United States'),(621,'Detroit Metropolitan Wayne County Airport','DTW','KDTW','United States'),(622,'Detroit - Willow Run Airport','YIP','KYIP','United States'),(623,'Dhahran International Airport','DHA','OEDR','Saudi Arabia'),(624,'Dhaka - Shahjalal International Airport','DAC','VGZR','Bangladesh'),(625,'Diagoras Airport','RHQ','LGRP','Greece'),(626,'Diego Aracena','IQQ','SCDA','Chile'),(627,'Dijon - Bourgogne Aéroport','DIJ','LFSD','France'),(628,'Dili - Presidente Nicolau Lobato International Airport','DIL','WPDL','East Timor'),(629,'Dimokritos International Airport','AXD','LGAL','Greece'),(630,'Dinard-Pleurtuit-Saint Malo Airport','DNR','LFRD','France'),(631,'Dionysios Solomos Airport','ZTH','LGZA','Greece'),(632,'Diori Hamani Int´l Airport','NIM','DRRN','Niger'),(633,'Diosdado Macapagal Int´l Airport','CRK','RPLC','Philippines'),(634,'Diwopu Airport','URC','ZWWW','China PRC'),(635,'Djerba - Zarzis International Airport','DJE','DTTJ','Tunisia'),(636,'Djibouti - Ambouli Airport','JIB','HDAM','Djibouti'),(637,'Dnepropetrovsk International Airport','DNK','UKDD','Ukraine'),(638,'Doha International Airport','DOH','OTBD','Qatar'),(639,'Dois de Julho','SSA','SBSV','Brazil'),(640,'Dole Jura Airport','DLE','LFGJ','France'),(641,'Dole - Tavaux Airport','DLE','LFGJ','France'),(642,'Domodedovo Airport','DME','UUDD','Russia'),(643,'Don Miguel Hidalgo Airport','GDL','MMGL','Mexico'),(644,'Don Muang','BKK','VTBD','Thailand'),(645,'Don Quijote','CQM','LERL','Spain'),(646,'Don Torcuato','DOT','SADD','Argentina'),(647,'Doncaster Sheffield Airport','DSA','EGCN','United Kingdom'),(648,'Donegal International Airport','CFN','EIDL','Ireland'),(649,'Donetsk International Airport','DOK','UKCC','Ukraine'),(650,'Dortmund - Wickede Airport','DTM','EDLW','Germany'),(651,'Dorval Airport','YUL','CYUL','Canada'),(652,'Dothan Regional Airport','DHN','KDHN','United States'),(653,'Douala International Airport','DLA','FKKD','Cameroon'),(654,'Douglas International Airport','CLT','KCLT','United States'),(655,'Dov Hoz Airport','SDV','LLSD','Israel'),(656,'Dr Joaquin Balaguer Int´l','JBQ','MDJB','Dominican Republic'),(657,'Drake Field Airport','FYV','KFYV','United States'),(658,'Dresden Airport','DRS','EDDC','Germany'),(659,'Dryden Regional Airport','YHD','CYHD','Canada'),(660,'Dubai - Al Maktoum International Airport','DWC','OMDW','Dubai'),(661,'Dubai International Airport','DXB','OMDB','Dubai'),(662,'Dublin Airport','DUB','EIDW','Ireland'),(663,'Dubois - Jefferson County Airport','DUJ','KDUJ','United States'),(664,'Dubrovnik Airport','DBV','LDDU','Croatia'),(665,'Dubuque Regional Airport','DBQ','KDBQ','United States'),(666,'Dulles International Airport','IAD','KIAD','United States'),(667,'Dundee Airport','DND','EGPN','United Kingdom'),(668,'Dunedin International Airport','DUD','NZDN','New Zealand'),(669,'Dunhuang Airport','DNH','ZLDH','China PRC'),(670,'Durango - La Plata County Airport','DRO','KDRO','United States'),(671,'Durban - King Shaka International Airport','DUR','FALE','South Africa'),(672,'Durham Airport','RDU','KRDU','United States'),(673,'Durham Tees Valley Airport','MME','EGNV','United Kingdom'),(674,'Dushanbe Airport','DYU','UTDD','Tajikistan'),(675,'Düsseldorf International Airport','DUS','EDDL','Germany'),(676,'Düsseldorf - Mönchengladbach Airport','MGL','EDLN','Germany'),(677,'Dutchess County Airport','POU','KPOU','United States'),(678,'Dzaoudzi Pamandzi Airport','DZA','FMCZ','Mayotte'),(679,'East London Airport','ELS','FAEL','South Africa'),(680,'East Midlands Airport','EMA','EGNX','United Kingdom'),(681,'Easter Island','IPC','SCIP','Chile'),(682,'Eastern Oregon Regional Airport','PDT','KPDT','United States'),(683,'Eastleigh Airport','SOU','EGHI','United Kingdom'),(684,'Eday Airport','EOI','EGED','United Kingdom'),(685,'Edinburgh Airport','EDI','EGPH','United Kingdom'),(686,'Edmonton City Centre','YXD','CYXD','Canada'),(687,'Edmonton International Airport','YEG','CYEG','Canada'),(688,'Eduardo Gomes Int´l Airport','MAO','SBEG','Brazil'),(689,'Eelde Airport','GRQ','EHGG','Netherlands'),(690,'Egilsstadir Airport','EGS','BIEG','Iceland'),(691,'Eilat Airport','ETH','LLET','Israel'),(692,'Eindhoven Airport','EIN','EHEH','Netherlands'),(693,'Ekaterinburg','SVX','USSS','Russia'),(694,'El Altet Airport','ALC','LEAL','Spain'),(695,'El Alto','LPB','SLLP','Bolivia'),(696,'El Arish International Airport','AAC','HEAR','Egypt'),(697,'El Catey, Samana','AZS','MDCY','Dominican Republic'),(698,'El Dorado Airport','BOG','SKBO','Colombia'),(699,'El Hierro Airport','VDE','GCHI','Canary Is'),(700,'El Loa','CJC','SCCF','Chile'),(701,'El Nhouza Airport','ALY','HEAX','Egypt'),(702,'El Oued-Guemar Airport','ELU','DAUO','Algeria'),(703,'El Paso International Airport','ELP','KELP','United States'),(704,'El Plumerillo Airport','MDZ','SAME','Argentina'),(705,'El Prat Airport','BCN','LEBL','Spain'),(706,'El Salvador Int´l Airport','SAL','MSLP','El Salvador'),(707,'El Tepual Airport','PMC','SCTE','Chile'),(708,'El Trompillo Airport','SRZ','SLET','Bolivia'),(709,'Elba Island - Marina di Campo Airport','EBA','LIRJ','Italy'),(710,'Eldoret International Airport','EDL','HKEL','Kenya'),(711,'Eleftherios Venizelos','ATH','LGAT','Greece'),(712,'Ellington Field','EFD','KEFD','United States'),(713,'Elmas Airport','CAG','LIEE','Italy'),(714,'Elmira Corning Regional Airport','ELM','KELM','United States'),(715,'England Airpark','AEX','KAEX','United States'),(716,'Enontekiö Airport','ENF','EFET','Finland'),(717,'Enrico Forlanini Airport','LIN','LIML','Italy'),(718,'Enschede Airport Twente','ENS','EHTW','Netherlands'),(719,'Ensheim Airport','SCN','EDDR','Germany'),(720,'Entebbe Airport','EBB','HUEN','Uganda'),(721,'Entzheim Airport','SXB','LFST','France'),(722,'Enugu - Akanu Ibiam International Airport','ENU','DNEN','Nigeria'),(723,'Epinal - Mirecourt Airport','EPL','LFSG','France'),(724,'Eppley Airfield','OMA','KOMA','United States'),(725,'Erbil International Airport','EBL','ORER','Iraq'),(726,'Ercan International Airport','ECN','LCEN','North Cyprus'),(727,'Erfurt Airport','ERF','EDDE','Germany'),(728,'Erfurt-Weimar','ERF','EDDE','Germany'),(729,'Erie International Airport','ERI','KERI','United States'),(730,'Ernesto Cortissoz Airport','BAQ','SKBQ','Colombia'),(731,'Eros Airport','ERS','FYWE','Namibia'),(732,'Errachidia - Moulay Ali Cherif Airport','ERH','GMFK','Morocco'),(733,'Es Senia Airport','ORN','DAOO','Algeria'),(734,'Esbjerg Airport','EBJ','EKEB','Denmark'),(735,'Esenboga Airport','ESB','LTAC','Turkey'),(736,'Esperance','SFG','TFFG','St Martin'),(737,'Esquel Airport','EQS','SAVE','Argentina'),(738,'Essaouira Mogador Airport','ESU','GMMI','Morocco'),(739,'Essen Mülheim Airport','ESS','EDLE','Germany'),(740,'Essendon Airport','MEB','YMEN','Australia'),(741,'Essey Airport','ENC','LFSN','France'),(742,'EuroAirport','BSL','LFSB','Switzerland'),(743,'Evansville Regional Airport','EVV','KEVV','United States'),(744,'Evenes - Harstad/Narvik Airport','EVE','ENEV','Norway'),(745,'Everod Airport','KID','ESMK','Sweden'),(746,'Exeter International Airport','EXT','EGTE','United Kingdom'),(747,'Exuma International Airport','GGT','MYEF','Bahamas'),(748,'Ezeiza Airport','EZE','SAEZ','Argentina');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trip_id` int(10) unsigned NOT NULL,
  `start_airport` int(10) unsigned NOT NULL,
  `end_airport` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flights_trip_id_start_airport_end_airport_unique` (`trip_id`,`start_airport`,`end_airport`),
  KEY `flights_trip_id_index` (`trip_id`),
  KEY `flights_start_airport_index` (`start_airport`),
  KEY `flights_end_airport_index` (`end_airport`),
  CONSTRAINT `flights_end_airport_foreign` FOREIGN KEY (`end_airport`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flights_start_airport_foreign` FOREIGN KEY (`start_airport`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flights_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,1,2,5,'2016-11-11 12:11:40','2016-11-11 12:11:40'),(2,1,3,4,'2016-11-11 12:11:32','2016-11-11 12:11:32'),(3,1,4,5,'2016-11-11 12:11:17','2016-11-11 12:11:17'),(9,1,10,14,'2016-11-11 14:11:54','2016-11-11 14:11:54'),(10,1,7,14,'2016-11-11 14:11:11','2016-11-11 14:11:11'),(11,1,6,14,'2016-11-11 14:11:26','2016-11-11 14:11:26'),(12,1,1,14,'2016-11-11 14:11:08','2016-11-11 14:11:08');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_11_09_120100_create_password_resets_table',1),(2,'2014_11_09_120100_create_users_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2016_11_09_221345_create_trips_table',1),(9,'2016_11_09_221406_create_flights_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('461df899ace8381da0502794b5f67198e48549ae526f6b22ce4140034e1164cf59c0b7bbac3c6ea0',1,1,NULL,'[]',0,'2016-11-12 02:02:26','2016-11-12 02:02:26','2116-11-11 21:02:26'),('50a9c879e991494ee3495be17334cb7dc5e9f43aa9d0ca8e7c4e242715a58f6b39c28f6947d84ef9',1,1,NULL,'[]',0,'2016-11-12 02:35:40','2016-11-12 02:35:40','2116-11-11 21:35:40'),('5e6b23e89c9810ef61831fcf0677a4ef7be75675bbdb3821c6fdda65de725a4f567b0e40dc4e805b',1,1,NULL,'[]',0,'2016-11-12 01:25:13','2016-11-12 01:25:13','2116-11-11 20:25:13'),('7c03a8afca59697d7c5d49d8f4044f1e52d34e50b661be4adfea08090d362a2dc9faeb5c46164e07',1,1,NULL,'[]',0,'2016-11-11 23:56:46','2016-11-11 23:56:46','2116-11-11 18:56:46'),('7d03319c8d91ee5dc4cc732b00b61ecd758e3620bd2dd37a0e9ea877e3612389a0b4f2069dd235f3',1,1,NULL,'[]',0,'2016-11-12 01:24:58','2016-11-12 01:24:58','2116-11-11 20:24:58'),('9149722552dda0dec96a1d0973d785c946769fc845679d14b381cc9abacee1a839c617afe8e53c99',1,1,NULL,'[]',0,'2016-11-11 23:54:55','2016-11-11 23:54:55','2116-11-11 18:54:55'),('91f9b0ffd514b066ba7aebb8102ec95a018de31b5c7d6d6c0cf5deba6cad306064f0afcd9fa68a6f',1,1,NULL,'[]',0,'2016-11-11 23:00:52','2016-11-11 23:00:52','2116-11-11 18:00:52'),('bef97f5f68b1e3a6427e9c0d86cd14b1d1f23883f8b380f407abdbe623e0f79d6f58d885dbab0626',1,1,NULL,'[]',0,'2016-11-11 23:06:10','2016-11-11 23:06:10','2116-11-11 18:06:10'),('dc35c917cfdfc5c204260a273f8c29d35b63322e3358d6c95c5fc2a228782d8af7339e66aef8ecb3',1,1,NULL,'[]',0,'2016-11-11 23:54:22','2016-11-11 23:54:22','2116-11-11 18:54:22'),('e3a2c4884b9829f24287bdc7f59b1af728f2d94ee8a4939edac493c31a078021e0eb95c361a96798',1,1,NULL,'[]',0,'2016-11-12 01:58:45','2016-11-12 01:58:45','2116-11-11 20:58:45');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
INSERT INTO `oauth_auth_codes` VALUES ('06daef6a71ccd20303d7d0d5d3c51939560828a35790625783b646ca0fb7bcf79e252f86516bc3dc',1,1,'[]',1,'2016-11-11 19:06:46'),('087b84c918b6eea65f40e25cfe3e3f47f6dd93764ed1a53513dee3d704c4c9ce94c063208a12416a',1,1,'[]',1,'2016-11-11 20:35:13'),('0f2f368dbf63444da847be5bb21a9aefe0d7f0566665d8c697055588d16e07d93224b0848017fd41',1,1,'[]',1,'2016-11-11 21:08:45'),('1285542265ca71f186bd87dfd565b4015bcbc98ea4382737e8cfe508ebf867685a4adcea28e36ad0',1,1,'[]',0,'2016-11-11 17:52:25'),('16b0f5b753cf642c850a726c584410cec1f8720618f46931b013c4b5a89125b870c944fc7a40d74d',1,1,'[]',1,'2016-11-11 18:07:29'),('191ee099635f0ad76cfe39ad09b8698bd7c2d7c555b505d0779ed92017acdf89b23fdb521199e06e',1,1,'[]',1,'2016-11-11 21:45:39'),('1daee9c1e3c3c21e46940c47650da230faa6ea3c5b6ac5b465492f8069d2de9a6618d49ff1b14876',1,1,'[]',1,'2016-11-11 19:04:22'),('361951fab3d011c89e4be2fb88fdc0245c5b6506ed2b26ee7c823bcf5c78ef401b9d0845a2093d8e',1,1,'[]',0,'2016-11-11 17:56:27'),('4987c35dd6b6dea89a5788af08a71ecda976883bad1bf57f995e5808b398f0aef1b60743e6fd578b',1,1,'[]',1,'2016-11-11 21:12:25'),('4bb2085f023490e9965d3b8c7082bffb54e8fa4174dd91d533d18d8f560f930b1579f33bcb6a3517',1,1,'[]',0,'2016-11-11 18:03:59'),('787799500937b568d3a4a7e23eeb7553da2ab2f60a182090a992fecc2f203158fb109f7f3fedd8e8',1,1,'[]',1,'2016-11-11 19:04:55'),('7abfc24017a60dcc1a7ea11bb11a73481ba6eacc5b2e049391b0992c4040ae6b04b0f506c25698d0',1,1,'[]',0,'2016-11-11 18:05:45'),('8605497c8f208b384fbb4ca482ed7369c7c89add29532c3ab20c05bba10813246e8e115ad397800d',1,1,'[]',0,'2016-11-11 18:06:43'),('8e847c45106108c38219dd359abf4db68e097b855ae8fd60df3e60de48afdd2f834476ad5eaeb65b',1,1,'[]',1,'2016-11-11 20:34:58'),('cc68cfb88a1367e515adbfcb0a2bf5e4519baf529b0c852a36af89e74082ec791da67b24d5f3cd76',1,1,'[]',0,'2016-11-11 18:00:12'),('d99508844000a96e3d2ddb44e21ead57a258a28735d532d244566aa2d112e93eb0b945de35cf5c2a',1,1,'[]',0,'2016-11-11 17:39:39'),('f8d9c2484be22b000fbcde769c4184ce1b50ffa3370ef7f352ceec9a617b33ddc10bf46aa07770d8',1,1,'[]',1,'2016-11-11 18:16:10');
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,1,'TripBuilder','c9dbGcg7Ej7D6De1qG7MSNJobhBEP4YV5qonhOh1','http://tripbuilderclient.dev/callback',0,0,0,'2016-11-11 21:49:39','2016-11-11 21:49:39');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('2aeb5230883243f61dc4e09a4222100355392fd01453e560c854330a9e79a2701ce6944c1179c5f6','461df899ace8381da0502794b5f67198e48549ae526f6b22ce4140034e1164cf59c0b7bbac3c6ea0',0,'2116-11-11 21:02:26'),('2b01b9c1da687dc6d84248e61585ef77f2b219c361f723c8cf002e83870661ab511cfd26617bb18f','dc35c917cfdfc5c204260a273f8c29d35b63322e3358d6c95c5fc2a228782d8af7339e66aef8ecb3',0,'2116-11-11 18:54:22'),('31f64681e00bb56fb0213f26e49b625a0ac8bd8668045eff3739450e991ab2ea7a103f2606f85391','bef97f5f68b1e3a6427e9c0d86cd14b1d1f23883f8b380f407abdbe623e0f79d6f58d885dbab0626',0,'2116-11-11 18:06:10'),('4123af4c67e7e442299ac8e66c38872315b0a45bffbc3ff7220f2a53edc966ce190970b2c5941220','e3a2c4884b9829f24287bdc7f59b1af728f2d94ee8a4939edac493c31a078021e0eb95c361a96798',0,'2116-11-11 20:58:45'),('864d2e88a64fa7b42d4baec0ca9b6d92df5be8d654822e1c1e6062acc9df1895a2c3726f5076cd5f','91f9b0ffd514b066ba7aebb8102ec95a018de31b5c7d6d6c0cf5deba6cad306064f0afcd9fa68a6f',0,'2116-11-11 18:00:52'),('9168c3cfd64b5b316e4de33d2735aee55ea399a4cb3dbe260ffb0e47e64341acbfc4b6711e080fff','7c03a8afca59697d7c5d49d8f4044f1e52d34e50b661be4adfea08090d362a2dc9faeb5c46164e07',0,'2116-11-11 18:56:47'),('ba4efe2cd5142aae6b3a622b65066ec840ca522878e4bf2944ab16c8f66cb0c50ea51bc3f91e11ae','9149722552dda0dec96a1d0973d785c946769fc845679d14b381cc9abacee1a839c617afe8e53c99',0,'2116-11-11 18:54:55'),('e80687698ee960b84fdaa1ae45055903162aea02341da3182a6078f078e875c3bd653b2c9208e844','7d03319c8d91ee5dc4cc732b00b61ecd758e3620bd2dd37a0e9ea877e3612389a0b4f2069dd235f3',0,'2116-11-11 20:24:58'),('ee78664b0d8c81dee1eb1f96d739f73f1c7d76ebb4c6405bfc2c27da09c4fed0a38bf85f0dec3bdf','5e6b23e89c9810ef61831fcf0677a4ef7be75675bbdb3821c6fdda65de725a4f567b0e40dc4e805b',0,'2116-11-11 20:25:13'),('fb91ddd55a550b0bd3a39028b940fbccca0e7517ea7dcac15a4b3910e4a54cb6fcd0a06f9995181e','50a9c879e991494ee3495be17334cb7dc5e9f43aa9d0ca8e7c4e242715a58f6b39c28f6947d84ef9',0,'2116-11-11 21:35:40');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trips_source_city_destination_city_unique` (`source_city`,`destination_city`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,'Monteal','Bejing','2016-11-11 21:15:17','2016-11-11 21:15:17'),(2,'Monteal','Calgory','2016-11-11 21:15:17','2016-11-11 21:15:17'),(3,'Monteal','Shanghai','2016-11-11 21:15:17','2016-11-11 21:15:17'),(4,'Monteal','Toronto','2016-11-11 21:15:18','2016-11-11 21:15:18'),(5,'Monteal','vancouver','2016-11-11 21:15:18','2016-11-11 21:15:18'),(6,'Bejing','Montreal','2016-11-11 21:15:18','2016-11-11 21:15:18'),(7,'Calgory','Montreal','2016-11-11 21:15:18','2016-11-11 21:15:18'),(8,'Shanghai','Montreal','2016-11-11 21:15:18','2016-11-11 21:15:18'),(9,'Toronto','Montreal','2016-11-11 21:15:18','2016-11-11 21:15:18'),(10,'vancouver','Montreal','2016-11-11 21:15:18','2016-11-11 21:15:18');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xiaofang','xiaofang@gmail.com','$2y$10$g/AyYWqk.qwV4GTzdlCkS.DylxKW9qPJAU4kGut04f6T5qkHVesOi','YR0TCZGmJw9CwhaDqeVNAnK3cPrmlgSH8SR2SZrLsSF7nEswqhhAZJgVRL4c','2016-11-11 21:21:54','2016-11-11 21:27:28');
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

-- Dump completed on 2016-11-11 16:50:07
