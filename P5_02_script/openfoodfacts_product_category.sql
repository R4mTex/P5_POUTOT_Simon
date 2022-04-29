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
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `product_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(5,23),(5,24),(5,25),(5,26),(6,27),(6,28),(6,29),(6,30),(6,31),(6,32),(7,33),(7,34),(7,35),(7,36),(7,37),(7,38),(8,39),(8,40),(8,41),(8,42),(8,43),(8,44),(8,45),(8,46),(8,47),(9,48),(9,49),(9,50),(9,51),(9,52),(9,53),(9,54),(9,55),(9,56),(10,57),(10,58),(10,59),(10,60),(10,61),(10,62),(10,63),(11,64),(11,65),(11,66),(11,67),(11,68),(11,69),(11,70),(11,71),(11,72),(11,73),(11,74),(11,75),(11,76),(11,77),(11,78),(11,79),(11,80),(12,81),(12,82),(12,83),(12,84),(12,85),(12,86),(12,87),(12,88),(13,89),(13,90),(13,91),(13,92),(13,93),(13,94),(13,95),(13,96),(13,97),(13,98),(13,99),(14,100),(14,101),(14,102),(14,103),(15,104),(16,105),(16,106),(16,107),(16,108),(16,109),(16,110),(16,111),(16,112),(16,113),(16,114),(17,115),(17,116),(17,117),(17,118),(17,119),(17,120),(17,121),(18,122),(18,123),(18,124),(18,125),(18,126),(18,127),(18,128),(18,129),(18,130),(19,131),(20,132),(20,133),(20,134),(20,135),(20,136),(20,137),(20,138),(20,139),(20,140),(20,141),(21,142),(21,143),(21,144),(21,145),(21,146),(22,147),(22,148),(22,149),(22,150),(22,151),(22,152),(22,153),(22,154),(22,155),(22,156),(22,157),(22,158),(23,159),(23,160),(23,161),(23,162),(23,163),(23,164),(23,165),(23,166),(23,167),(24,168),(24,169),(24,170),(24,171),(25,172),(25,173),(25,174),(25,175),(25,176),(25,177),(25,178),(25,179),(25,180),(25,181),(26,182),(26,183),(26,184),(26,185),(26,186),(26,187),(26,188),(26,189),(26,190),(27,191),(27,192),(27,193),(27,194),(27,195),(27,196),(28,197),(28,198),(28,199),(28,200),(28,201),(28,202),(28,203),(29,204),(29,205),(29,206),(29,207),(29,208),(29,209),(29,210),(29,211),(29,212),(29,213),(29,214),(30,215),(30,216),(30,217),(30,218),(30,219),(30,220),(30,221),(31,222),(31,223),(31,224),(31,225),(31,226),(31,227),(32,228),(32,229),(32,230),(32,231),(32,232),(32,233),(32,234),(32,235),(32,236),(32,237),(33,238),(33,239),(33,240),(33,241),(33,242),(33,243),(33,244),(33,245),(34,246),(34,247),(34,248),(34,249),(34,250),(34,251),(34,252),(34,253),(34,254),(34,255),(34,256),(34,257),(34,258),(34,259),(34,260),(34,261),(35,262),(35,263),(35,264),(35,265),(35,266),(35,267),(35,268),(35,269),(36,270),(36,271),(36,272),(36,273),(36,274),(36,275),(36,276),(36,277),(37,278),(37,279),(37,280),(37,281),(37,282),(37,283),(38,284),(38,285),(38,286),(38,287),(38,288),(38,289),(39,290),(39,291),(39,292),(39,293),(39,294),(39,295),(39,296),(39,297),(39,298),(39,299),(39,300),(40,301),(40,302),(40,303),(40,304),(40,305),(40,306),(40,307),(40,308),(40,309),(40,310),(40,311),(40,312),(40,313),(40,314),(41,315),(41,316),(41,317),(41,318),(41,319),(42,320),(42,321),(42,322),(42,323),(42,324),(42,325),(43,326),(43,327),(43,328),(43,329),(43,330),(43,331),(43,332),(44,333),(44,334),(44,335),(44,336),(44,337),(44,338),(45,339),(45,340),(45,341),(45,342),(45,343),(45,344),(46,345),(46,346),(46,347),(46,348),(46,349),(46,350),(46,351),(46,352),(46,353),(47,354),(47,355),(47,356),(47,357),(47,358),(47,359),(48,360),(48,361),(48,362),(48,363),(48,364),(48,365),(48,366),(49,367),(49,368),(49,369),(49,370),(49,371),(49,372),(50,373),(50,374),(50,375),(50,376),(50,377),(50,378),(50,379),(50,380),(50,381),(50,382),(50,383),(51,384),(51,385),(51,386),(51,387),(51,388),(51,389),(51,390),(51,391),(51,392),(51,393),(51,394),(51,395),(52,396),(52,397),(52,398),(52,399),(52,400),(52,401),(53,402),(53,403),(53,404),(53,405),(53,406),(53,407),(53,408),(53,409),(54,410),(54,411),(54,412),(54,413),(54,414),(54,415),(54,416),(54,417),(54,418),(54,419),(54,420),(54,421),(54,422),(54,423),(54,424),(54,425),(54,426),(54,427),(54,428),(54,429),(54,430),(54,431),(56,432),(56,433),(56,434),(56,435),(56,436),(56,437),(56,438),(56,439),(57,440),(57,441),(57,442),(57,443),(57,444),(57,445),(57,446),(57,447),(57,448),(58,449),(58,450),(58,451),(58,452),(58,453),(58,454),(58,455),(59,456),(59,457),(59,458),(59,459),(59,460),(59,461),(59,462),(59,463),(59,464),(59,465),(60,466),(60,467),(60,468),(60,469),(60,470),(60,471),(61,472),(61,473),(61,474),(61,475),(62,476),(62,477),(62,478),(62,479),(62,480),(62,481),(62,482),(62,483),(62,484),(62,485),(63,486),(63,487),(63,488),(63,489),(63,490),(63,491),(63,492),(63,493),(63,494),(64,495),(65,496),(65,497),(65,498),(65,499),(65,500),(65,501),(65,502),(65,503),(65,504),(66,505),(66,506),(66,507),(66,508),(66,509),(66,510),(66,511),(66,512),(66,513),(67,514),(67,515),(67,516),(67,517),(67,518),(67,519),(67,520),(68,521),(68,522),(68,523),(68,524),(68,525),(68,526),(68,527),(69,528),(69,529),(69,530),(70,531),(70,532),(70,533),(70,534),(70,535),(70,536),(70,537),(70,538),(70,539),(70,540),(71,541),(71,542),(71,543),(71,544),(71,545),(71,546),(71,547),(71,548),(71,549),(71,550),(71,551),(71,552),(71,553),(71,554),(71,555),(71,556),(71,557),(71,558),(71,559),(73,560),(73,561),(73,562),(73,563),(73,564),(73,565),(74,566),(74,567),(74,568),(74,569),(74,570),(74,571),(74,572),(74,573),(74,574),(74,575),(74,576),(74,577),(74,578),(74,579),(76,580),(76,581),(76,582),(76,583),(76,584),(76,585),(76,586),(76,587),(77,588),(77,589),(77,590),(77,591),(77,592),(77,593),(77,594),(77,595),(78,596),(78,597),(78,598),(78,599),(78,600),(78,601),(78,602),(79,603),(79,604),(79,605),(79,606),(79,607),(79,608),(79,609),(79,610),(79,611),(80,612),(80,613),(80,614),(80,615),(80,616),(80,617),(80,618),(81,619),(81,620),(81,621),(81,622),(82,623),(82,624),(82,625),(82,626),(82,627),(82,628),(83,629),(83,630),(83,631),(83,632),(83,633),(83,634),(83,635),(83,636),(84,637),(84,638),(84,639),(84,640),(84,641),(85,642),(85,643),(85,644),(85,645),(85,646),(85,647),(85,648),(85,649),(85,650),(86,651),(86,652),(86,653),(86,654),(86,655),(86,656),(86,657),(87,658),(87,659),(87,660),(87,661),(87,662),(88,663),(88,664),(88,665),(88,666),(88,667),(88,668),(88,669),(89,670),(89,671),(89,672),(89,673),(89,674),(89,675),(90,676),(90,677),(90,678),(90,679),(90,680),(90,681),(91,682),(91,683),(91,684),(91,685),(91,686),(91,687),(92,688),(92,689),(92,690),(92,691),(92,692),(92,693),(92,694),(92,695),(92,696),(92,697),(92,698),(93,699),(94,700),(94,701),(94,702),(94,703),(94,704),(94,705),(95,706),(95,707),(95,708),(95,709),(95,710),(96,711),(96,712),(96,713),(96,714),(97,715),(98,716),(98,717),(98,718),(98,719),(99,720),(99,721),(99,722),(99,723),(99,724),(99,725),(99,726),(99,727),(99,728);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 17:31:38
