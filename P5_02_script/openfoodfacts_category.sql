CREATE DATABASE  IF NOT EXISTS `openfoodfacts` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `openfoodfacts`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: openfoodfacts
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'boissons'),(2,'eaux'),(3,'eaux de sources'),(4,'eaux minérales'),(5,'eaux minérales naturelles'),(6,'snacks'),(7,'snacks sucrés'),(8,'biscuits et gâteaux'),(9,'biscuits'),(10,'biscuits au chocolat'),(11,'boissons'),(12,'boissons gazeuses'),(13,'sodas'),(14,'sodas au cola'),(15,'cola sucré'),(16,'brotaufstriche'),(17,'frühstücke'),(18,'süße brotaufstriche'),(19,'fr:pâtes à tartiner'),(20,'haselnusscremes'),(21,'nougatcremes'),(22,'schoko- und haselnussaufstriche'),(23,'snacks'),(24,'snacks sucrés'),(25,'biscuits et gâteaux'),(26,'biscuits'),(27,'imbiss'),(28,'süßer snack'),(29,'en:cocoa and its products'),(30,'schokoladen'),(31,'bitterschokoladen'),(32,'en:dark chocolate bar with more than 70% cocoa'),(33,'imbiss'),(34,'süßer snack'),(35,'kekse und kuchen'),(36,'kekse'),(37,'gefüllte kekse'),(38,'kekse mit nuss-nugat-creme-füllung'),(39,'plant-based foods and beverages'),(40,'plant-based foods'),(41,'cereals and potatoes'),(42,'breakfasts'),(43,'cereals and their products'),(44,'breakfast cereals'),(45,'cereals with nuts'),(46,'crunchy cereal clusters'),(47,'cereal clusters with nuts'),(48,'aliments et boissons à base de végétaux'),(49,'aliments d\'origine végétale'),(50,'céréales et pommes de terre'),(51,'petit-déjeuners'),(52,'céréales et dérivés'),(53,'céréales pour petit-déjeuner'),(54,'mueslis'),(55,'céréales aux fruits'),(56,'mueslis aux fruits'),(57,'produits à tartiner'),(58,'petit-déjeuners'),(59,'produits à tartiner sucrés'),(60,'pâtes à tartiner'),(61,'pâtes à tartiner aux noisettes'),(62,'pâtes à tartiner au chocolat'),(63,'pâtes à tartiner aux noisettes et au cacao'),(64,'plant-based foods and beverages'),(65,'plant-based foods'),(66,'legumes and their products'),(67,'spreads'),(68,'nuts and their products'),(69,'plant-based spreads'),(70,'oilseed purees'),(71,'legume butters'),(72,'nut butters'),(73,'peanut butters'),(74,'snacks'),(75,'sweet snacks'),(76,'biscuits and cakes'),(77,'biscuits'),(78,'chocolate biscuits'),(79,'filled biscuits'),(80,'biscuits-fourres-chocolat'),(81,'aliments et boissons à base de végétaux'),(82,'aliments d\'origine végétale'),(83,'céréales et pommes de terre'),(84,'pains'),(85,'pains de mie'),(86,'pains de mie sans croûte'),(87,'pains complets'),(88,'pains de mie complet'),(89,'aliments et boissons à base de végétaux'),(90,'aliments d\'origine végétale'),(91,'céréales et pommes de terre'),(92,'petit-déjeuners'),(93,'céréales et dérivés'),(94,'céréales pour petit-déjeuner'),(95,'céréales pour petit déjeuner enrichies en vitamines et minéraux'),(96,'céréales au chocolat'),(97,'céréales extrudées'),(98,'en:chocolate-wheat-flakes'),(99,'pétales de blé chocolatés enrichis en vitamines et minéraux'),(100,'boissons'),(101,'eaux'),(102,'eaux de sources'),(103,'boissons sans sucre ajouté'),(104,'crispbreads'),(105,'aliments et boissons à base de végétaux'),(106,'aliments d\'origine végétale'),(107,'snacks'),(108,'céréales et pommes de terre'),(109,'snacks sucrés'),(110,'petit-déjeuners'),(111,'céréales et dérivés'),(112,'biscuits et gâteaux'),(113,'céréales pour petit-déjeuner'),(114,'biscuits'),(115,'snacks'),(116,'snacks sucrés'),(117,'cacao et dérivés'),(118,'chocolats'),(119,'chocolats noirs'),(120,'chocolat noir en tablette extra dégustation à 70% de cacao minimum'),(121,'chocolats noirs extra fin'),(122,'aliments et boissons à base de végétaux'),(123,'aliments d\'origine végétale'),(124,'céréales et pommes de terre'),(125,'petit-déjeuners'),(126,'céréales et dérivés'),(127,'céréales pour petit-déjeuner'),(128,'mueslis'),(129,'céréales aux fruits'),(130,'mueslis aux fruits'),(131,'bevande zuccherate'),(132,'alimentos y bebidas de origen vegetal'),(133,'alimentos de origen vegetal'),(134,'cereales y patatas'),(135,'desayunos'),(136,'cereales y derivados'),(137,'cereales para el desayuno'),(138,'copos'),(139,'copos de cereales'),(140,'en:rolled flakes'),(141,'copos de avena'),(142,'boissons'),(143,'eaux'),(144,'eaux de sources'),(145,'eaux minérales'),(146,'eaux minérales naturelles'),(147,'aliments et boissons à base de végétaux'),(148,'aliments d\'origine végétale'),(149,'snacks'),(150,'céréales et pommes de terre'),(151,'snacks sucrés'),(152,'petit-déjeuners'),(153,'viennoiseries'),(154,'pains'),(155,'brioches'),(156,'pains spéciaux'),(157,'pains au lait'),(158,'pains au lait natures'),(159,'bebidas'),(160,'bebidas carbonatadas'),(161,'bebidas endulzadas artificialmente'),(162,'sodas'),(163,'bebidas light'),(164,'bebidas no alcohólicas'),(165,'bebidas de cola'),(166,'sodas light'),(167,'bebida de cola light'),(168,'cocoa and its products'),(169,'cocoa and chocolate powders'),(170,'malted cocoa'),(171,'instant beverages'),(172,'aliments et boissons à base de végétaux'),(173,'aliments d\'origine végétale'),(174,'matières grasses'),(175,'produits à tartiner'),(176,'produits à tartiner salés'),(177,'matières grasses à tartiner'),(178,'matières grasses végétales'),(179,'pâtes à tartiner végétales'),(180,'margarines'),(181,'margarines allégées'),(182,'boissons'),(183,'boissons gazeuses'),(184,'eaux'),(185,'eaux de sources'),(186,'eaux minérales'),(187,'eaux gazeuses'),(188,'eaux minérales naturelles'),(189,'eau minérale naturelle gazéifiée'),(190,'boissons sans sucre ajouté'),(191,'aliments et boissons à base de végétaux'),(192,'aliments d\'origine végétale'),(193,'céréales et pommes de terre'),(194,'pains'),(195,'biscottes'),(196,'biscottes multicéréales'),(197,'snacks'),(198,'desserts'),(199,'snacks sucrés'),(200,'cacao et dérivés'),(201,'chocolats'),(202,'chocolats noirs'),(203,'chocolat noir pâtissier en tablette à 40% de cacao minimum'),(204,'plant-based foods and beverages'),(205,'beverages'),(206,'plant-based beverages'),(207,'fruit-based beverages'),(208,'juices and nectars'),(209,'fruit juices'),(210,'non-alcoholic beverages'),(211,'orange juices'),(212,'squeezed juices'),(213,'squeezed orange juices'),(214,'fr:jus-d-orange-sans-pulpe'),(215,'aliments et boissons à base de végétaux'),(216,'aliments d\'origine végétale'),(217,'céréales et pommes de terre'),(218,'pains'),(219,'pains de mie'),(220,'pains complets'),(221,'pains de mie complet'),(222,'boissons'),(223,'eaux'),(224,'eaux de sources'),(225,'eaux minérales'),(226,'eaux minérales naturelles'),(227,'eau minérale naturelle non gazeuse'),(228,'snacks'),(229,'snacks sucrés'),(230,'biscuits et gâteaux'),(231,'biscuits'),(232,'biscuits au chocolat'),(233,'en:biscuits au chocolat'),(234,'en:biscuits au chocolat noir'),(235,'en:biscuits et gâteaux'),(236,'en:petit-déjeuners'),(237,'en:snacks sucrés'),(238,'spreads'),(239,'breakfasts'),(240,'sweet spreads'),(241,'fr:pâtes à tartiner'),(242,'hazelnut spreads'),(243,'chocolate spreads'),(244,'cocoa and hazelnuts spreads'),(245,'fr:nocciolata'),(246,'snacks'),(247,'snacks sucrés'),(248,'petit-déjeuners'),(249,'biscuits et gâteaux'),(250,'biscuits'),(251,'biscuits au chocolat'),(252,'en:crispy biscuits'),(253,'biscuit sec croquant allégé en matière grasse'),(254,'biscuits secs'),(255,'biscuit chocolat'),(256,'biscuit sec au lait'),(257,'biscuit sec pour petit déjeuner'),(258,'biscuit aux céréales pour petit déjeuner enrichis en vitamines et minéraux'),(259,'biscuit sec pour petit déjeuner au chocolat'),(260,'biscuit sec croquant au chocolat allégé en matière grasse'),(261,'biscuits au chocolat au lait'),(262,'aliments et boissons à base de végétaux'),(263,'aliments d\'origine végétale'),(264,'céréales et pommes de terre'),(265,'petit-déjeuners'),(266,'pains'),(267,'pains de mie'),(268,'pains complets'),(269,'pains de mie complet'),(270,'boissons'),(271,'boissons gazeuses'),(272,'boissons édulcorées'),(273,'sodas'),(274,'boissons light'),(275,'sodas au cola'),(276,'sodas light'),(277,'sodas au cola light'),(278,'plant-based foods and beverages'),(279,'plant-based foods'),(280,'cereals and potatoes'),(281,'breads'),(282,'sliced breads'),(283,'sliced breads without crust'),(284,'imbiss'),(285,'süßer snack'),(286,'en:cocoa and its products'),(287,'schokoladen'),(288,'bitterschokoladen'),(289,'extrafeine dunkle schokoladen'),(290,'plant-based foods and beverages'),(291,'plant-based foods'),(292,'cereals and potatoes'),(293,'breakfasts'),(294,'cereals and their products'),(295,'breakfast cereals'),(296,'flakes'),(297,'cereal flakes'),(298,'extruded cereals'),(299,'extruded flakes'),(300,'corn flakes'),(301,'plant-based foods and beverages'),(302,'plant-based foods'),(303,'flakes'),(304,'rolled flakes'),(305,'fr:alimentos de origen vegetal'),(306,'fr:alimentos y bebidas de origen vegetal'),(307,'fr:cereales para el desayuno'),(308,'fr:cereales y derivados'),(309,'fr:cereales y patatas'),(310,'fr:copos'),(311,'fr:copos de avena'),(312,'fr:copos de cereales'),(313,'fr:desayunos'),(314,'en:rolled-oats'),(315,'crema da spalmare'),(316,'crema con nocciole'),(317,'crema con cacao'),(318,'crema con nocciole e cacao'),(319,'spalmabili dolci'),(320,'produits laitiers'),(321,'produits fermentés'),(322,'produits laitiers fermentés'),(323,'yaourts'),(324,'yaourts nature'),(325,'nature'),(326,'aliments et boissons à base de végétaux'),(327,'aliments d\'origine végétale'),(328,'céréales et pommes de terre'),(329,'pains'),(330,'pains de mie'),(331,'pains complets'),(332,'pains de mie complet'),(333,'beverages'),(334,'cocoa and its products'),(335,'cocoa and chocolate powders'),(336,'instant beverages'),(337,'cocoa powders'),(338,'chocolate powders'),(339,'plant-based foods and beverages'),(340,'plant-based foods'),(341,'cereals and potatoes'),(342,'breads'),(343,'crispbreads'),(344,'fr:pains-croustillants'),(345,'snacks'),(346,'snacks sucrés'),(347,'biscuits et gâteaux'),(348,'biscuits'),(349,'gâteaux'),(350,'biscuits secs'),(351,'biscuits secs céréales complètes'),(352,'gâteaux secs'),(353,'gâteaux secs céréales complètes'),(354,'postres'),(355,'comidas fermentadas'),(356,'postres vegetales'),(357,'comida no láctea fermentada'),(358,'yogures vegetales'),(359,'yogures de soja'),(360,'snacks'),(361,'snacks sucrés'),(362,'viennoiseries'),(363,'brioches'),(364,'brioches tressées'),(365,'brioches pur beurre'),(366,'brioches natures'),(367,'viandes'),(368,'charcuteries'),(369,'jambons'),(370,'jambons blancs'),(371,'jambon cuit supérieur découenné'),(372,'jambon cuit supérieur'),(373,'snacks'),(374,'salty snacks'),(375,'appetizers'),(376,'chips and fries'),(377,'crisps'),(378,'apéritif'),(379,'chips'),(380,'chips et frites'),(381,'snacks salés'),(382,'tuiles salées'),(383,'en:salty-snacks-made-from-potato'),(384,'snacks'),(385,'snacks sucrés'),(386,'petit-déjeuners'),(387,'biscuits et gâteaux'),(388,'biscuits'),(389,'en:crispy biscuits'),(390,'biscuit sec croquant allégé en matière grasse'),(391,'biscuits secs'),(392,'biscuits sablés'),(393,'biscuit sec pour petit déjeuner'),(394,'biscuit sec aux fruits'),(395,'en:sablés à l\'orange'),(396,'snacks'),(397,'snacks sucrés'),(398,'biscuits et gâteaux'),(399,'biscuits'),(400,'biscuits au son de blé'),(401,'biscuits au son de blé et la figue'),(402,'produits laitiers'),(403,'desserts'),(404,'produits fermentés'),(405,'produits laitiers fermentés'),(406,'fromages'),(407,'desserts lactés'),(408,'fromages à la crème'),(409,'skyr'),(410,'produits laitiers'),(411,'matières grasses'),(412,'produits à tartiner'),(413,'matières grasses à tartiner'),(414,'matières grasses animales'),(415,'matière grasse laitière'),(416,'produits laitiers à tartiner'),(417,'beurres'),(418,'beurres doux'),(419,'beurres de crème douce'),(420,'en:butter-82-fat-unsalted-easy-to-spread'),(421,'beurres tendres'),(422,'milchprodukte'),(423,'desserts'),(424,'fermentierte lebensmittel'),(425,'fermentierte milch'),(426,'käse'),(427,'milchnachspeisen'),(428,'joghurt'),(429,'frischkäse'),(430,'skyr'),(431,'vollmilchjoghurts'),(432,'aliments et boissons à base de végétaux'),(433,'aliments d\'origine végétale'),(434,'en:groceries'),(435,'céréales et pommes de terre'),(436,'condiments'),(437,'céréales et dérivés'),(438,'additifs alimentaires'),(439,'levures de bière'),(440,'aliments et boissons à base de végétaux'),(441,'aliments d\'origine végétale'),(442,'céréales et pommes de terre'),(443,'petit-déjeuners'),(444,'céréales et dérivés'),(445,'céréales pour petit-déjeuner'),(446,'céréales aux fruits à coques'),(447,'pépites de céréales croustillantes'),(448,'pépites de céréales aux fruits à coques'),(449,'epicerie'),(450,'condiments'),(451,'moutardes'),(452,'moutardes de dijon'),(453,'aliments et boissons à base de végétaux'),(454,'aliments à base de plantes en conserve'),(455,'moutardes fines'),(456,'plant-based foods and beverages'),(457,'beverages'),(458,'plant-based foods'),(459,'nuts and their products'),(460,'plant-based beverages'),(461,'milk substitute'),(462,'plant milks'),(463,'nut milks'),(464,'almond milks'),(465,'unsweetened natural almond milks'),(466,'snacks'),(467,'snacks sucrés'),(468,'petit-déjeuners'),(469,'biscuits et gâteaux'),(470,'biscuits'),(471,'biscuits secs'),(472,'comestibles'),(473,'salsas'),(474,'salsas de tomate'),(475,'kétchups'),(476,'snacks'),(477,'sweet snacks'),(478,'biscuits and cakes'),(479,'biscuits'),(480,'chocolate biscuits'),(481,'petit-beurre'),(482,'biscuit with a chocolate bar covering'),(483,'butter biscuit with chocolate'),(484,'milk chocolate biscuits'),(485,'es:galletas con tableta de chocolate con leche'),(486,'plant-based foods and beverages'),(487,'plant-based foods'),(488,'cereals and potatoes'),(489,'breakfasts'),(490,'cereals and their products'),(491,'breakfast cereals'),(492,'mueslis'),(493,'cereals with fruits'),(494,'mueslis with fruits'),(495,'galettes-au-beurre'),(496,'getränke'),(497,'kohlensäurehaltige getränke'),(498,'wasser'),(499,'quellwasser'),(500,'mineralwasser'),(501,'alkoholfreie getränke'),(502,'selterswasser'),(503,'mineralwasser mit kohlensäure'),(504,'ungezuckerte getränke'),(505,'aliments et boissons à base de végétaux'),(506,'aliments d\'origine végétale'),(507,'céréales et pommes de terre'),(508,'petit-déjeuners'),(509,'céréales et dérivés'),(510,'céréales pour petit-déjeuner'),(511,'céréales au chocolat'),(512,'pépites de céréales croustillantes'),(513,'pépites de céréales au chocolat'),(514,'намазки'),(515,'на завтрак'),(516,'сладкие намазки'),(517,'fr:pâtes à tartiner'),(518,'пасты из лесного ореха'),(519,'шоколадные пасты'),(520,'en:cocoa and hazelnuts spreads'),(521,'produits à tartiner'),(522,'petit-déjeuners'),(523,'produits à tartiner sucrés'),(524,'pâtes à tartiner'),(525,'pâtes à tartiner aux noisettes'),(526,'pâtes à tartiner au chocolat'),(527,'pâtes à tartiner aux noisettes et au cacao'),(528,'cacao et dérivés'),(529,'cacaos et chocolats en poudre'),(530,'cacaos en poudre'),(531,'aliments et boissons à base de végétaux'),(532,'aliments d\'origine végétale'),(533,'matières grasses'),(534,'produits à tartiner'),(535,'produits à tartiner salés'),(536,'matières grasses à tartiner'),(537,'matières grasses végétales'),(538,'pâtes à tartiner végétales'),(539,'margarines'),(540,'margarines allégées'),(541,'aliments et boissons à base de végétaux'),(542,'aliments d\'origine végétale'),(543,'produits à tartiner'),(544,'petit-déjeuners'),(545,'pâtes à tartiner végétales'),(546,'produits à tartiner sucrés'),(547,'édulcorants'),(548,'sirops'),(549,'confitures et marmelades'),(550,'sirops simples'),(551,'sirops d\'agave'),(552,'produits à tartiner'),(553,'petit-déjeuners'),(554,'matières grasses à tartiner'),(555,'produits à tartiner sucrés'),(556,'pâtes à tartiner'),(557,'pâtes à tartiner aux noisettes'),(558,'pâtes à tartiner au chocolat'),(559,'pâtes à tartiner aux noisettes et au cacao'),(560,'aliments et boissons à base de végétaux'),(561,'aliments d\'origine végétale'),(562,'céréales et pommes de terre'),(563,'petit-déjeuners'),(564,'céréales et dérivés'),(565,'céréales pour petit-déjeuner'),(566,'boissons'),(567,'eaux'),(568,'eaux de sources'),(569,'eaux minérales'),(570,'boissons sans alcool'),(571,'eaux minérales naturelles'),(572,'boissons sans sucre ajouté'),(573,'untables'),(574,'desayunos'),(575,'untables dulces'),(576,'cremas para untar'),(577,'cremas a base de avellanas'),(578,'cremas de chocolate'),(579,'cremas de cacao y avellanas'),(580,'plant-based foods and beverages'),(581,'plant-based foods'),(582,'cereals and potatoes'),(583,'breakfasts'),(584,'cereals and their products'),(585,'breakfast cereals'),(586,'mueslis'),(587,'mueslis with chocolate'),(588,'beverages'),(589,'carbonated drinks'),(590,'waters'),(591,'spring waters'),(592,'mineral waters'),(593,'carbonated waters'),(594,'natural mineral waters'),(595,'carbonated mineral waters'),(596,'snacks'),(597,'sweet snacks'),(598,'biscuits and cakes'),(599,'biscuits'),(600,'chocolate biscuits'),(601,'fr:d'),(602,'en:breakfasts'),(603,'plant-based foods and beverages'),(604,'plant-based foods'),(605,'cereals and potatoes'),(606,'breakfasts'),(607,'cereals and their products'),(608,'breakfast cereals'),(609,'chocolate cereals'),(610,'crunchy cereal clusters'),(611,'cereal clusters with chocolate'),(612,'aliments et boissons à base de végétaux'),(613,'aliments d\'origine végétale'),(614,'céréales et pommes de terre'),(615,'pains'),(616,'pains de mie'),(617,'pains complets'),(618,'pains de mie complet'),(619,'snacks'),(620,'snacks sucrés'),(621,'biscuits et gâteaux'),(622,'biscuits'),(623,'groceries'),(624,'condiments'),(625,'sauces'),(626,'seasonings'),(627,'additifs alimentaires'),(628,'arômes'),(629,'plant-based foods and beverages'),(630,'beverages'),(631,'plant-based beverages'),(632,'artificially sweetened beverages'),(633,'tea-based beverages'),(634,'iced teas'),(635,'peach flavored iced teas'),(636,'sweetened beverages'),(637,'aliments et boissons à base de végétaux'),(638,'aliments d\'origine végétale'),(639,'céréales et pommes de terre'),(640,'pains'),(641,'tartines craquantes'),(642,'aliments et boissons à base de végétaux'),(643,'aliments d\'origine végétale'),(644,'snacks'),(645,'céréales et pommes de terre'),(646,'snacks sucrés'),(647,'petit-déjeuners'),(648,'pains'),(649,'viennoiseries'),(650,'pains au lait'),(651,'spreads'),(652,'breakfasts'),(653,'sweet spreads'),(654,'fr:pâtes à tartiner'),(655,'hazelnut spreads'),(656,'chocolate spreads'),(657,'cocoa and hazelnuts spreads'),(658,'snacks'),(659,'sweet snacks'),(660,'biscuits and cakes'),(661,'biscuits'),(662,'chocolate biscuits'),(663,'beverages'),(664,'waters'),(665,'spring waters'),(666,'mineral waters'),(667,'non-alcoholic beverages'),(668,'natural mineral waters'),(669,'unsweetened beverages'),(670,'snacks'),(671,'snacks sucrés'),(672,'surgelés'),(673,'biscuits et gâteaux'),(674,'biscuits'),(675,'biscuits fourrés'),(676,'snacks'),(677,'snacks sucrés'),(678,'biscuits et gâteaux'),(679,'biscuits'),(680,'en:biscuits et gâteaux'),(681,'en:snacks sucrés'),(682,'aliments et boissons à base de végétaux'),(683,'aliments d\'origine végétale'),(684,'céréales et pommes de terre'),(685,'pains'),(686,'pains de mie'),(687,'pains de mie blancs nature'),(688,'plant-based foods and beverages'),(689,'plant-based foods'),(690,'desserts'),(691,'fermented foods'),(692,'non-dairy desserts'),(693,'non-dairy fermented foods'),(694,'non-dairy yogurts'),(695,'soy milk yogurts'),(696,'soy desserts'),(697,'flavoured soy dessert'),(698,'vanilla soy desserts'),(699,'sirops'),(700,'aliments et boissons à base de végétaux'),(701,'aliments d\'origine végétale'),(702,'céréales et pommes de terre'),(703,'pains'),(704,'tartines craquantes'),(705,'pains croustillants'),(706,'snacks'),(707,'snacks sucrés'),(708,'biscuits et gâteaux'),(709,'biscuits'),(710,'gâteaux'),(711,'epicerie'),(712,'sauces'),(713,'mayonnaises'),(714,'mayonnaises de dijon'),(715,'it:caffe-solubile'),(716,'biscuits et gâteaux'),(717,'gâteaux'),(718,'madeleines'),(719,'madeleines natures'),(720,'aliments et boissons à base de végétaux'),(721,'boissons'),(722,'aliments d\'origine végétale'),(723,'boissons à base de végétaux'),(724,'cafés'),(725,'boissons instantanées'),(726,'cafés solubles'),(727,'chicorée soluble'),(728,'chicorée et café en poudre soluble');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 17:31:39
