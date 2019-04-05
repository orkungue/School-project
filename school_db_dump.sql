-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: school_proj
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `application_settings`
--

DROP TABLE IF EXISTS `application_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setup` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_settings`
--

LOCK TABLES `application_settings` WRITE;
/*!40000 ALTER TABLE `application_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-04-01 10:34:43','2019-04-01 10:34:43');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_docs`
--

DROP TABLE IF EXISTS `class_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_docs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_docs`
--

LOCK TABLES `class_docs` WRITE;
/*!40000 ALTER TABLE `class_docs` DISABLE KEYS */;
INSERT INTO `class_docs` VALUES (1,35,1),(2,35,2),(3,35,3);
/*!40000 ALTER TABLE `class_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_groups`
--

DROP TABLE IF EXISTS `class_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_groups`
--

LOCK TABLES `class_groups` WRITE;
/*!40000 ALTER TABLE `class_groups` DISABLE KEYS */;
INSERT INTO `class_groups` VALUES (1,1,'10a',2,'2019-04-01 10:10:04','2019-04-01 10:10:04'),(2,1,'5b',1,'2019-04-01 10:10:04','2019-04-01 10:10:04'),(3,1,'10c',3,'2019-04-01 10:10:04','2019-04-01 10:10:04');
/*!40000 ALTER TABLE `class_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_groups`
--

DROP TABLE IF EXISTS `doc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_groups`
--

LOCK TABLES `doc_groups` WRITE;
/*!40000 ALTER TABLE `doc_groups` DISABLE KEYS */;
INSERT INTO `doc_groups` VALUES (1,'Eigene Dateien'),(2,'Vorlagen');
/*!40000 ALTER TABLE `doc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_types`
--

DROP TABLE IF EXISTS `doc_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_types`
--

LOCK TABLES `doc_types` WRITE;
/*!40000 ALTER TABLE `doc_types` DISABLE KEYS */;
INSERT INTO `doc_types` VALUES (1,'Deutsch'),(2,'Englisch'),(3,'Französisch'),(4,'Chemie'),(5,'Biologie'),(6,'Geographie'),(7,'Geschichte'),(8,'Informatik'),(9,'Kunst'),(10,'Latein'),(11,'Mathe'),(12,'Musik'),(13,'Physik'),(14,'Religion'),(15,'Sozialkunde'),(16,'Spanisch');
/*!40000 ALTER TABLE `doc_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doc_headline` varchar(255) DEFAULT NULL,
  `doc_content` longblob,
  `user_id` int(11) DEFAULT NULL,
  `doc_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `doc_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES (1,'test',_binary 'asdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdfasdfsadfasdf',1,1,'2019-04-01 15:40:27','2019-04-02 09:56:05',1),(2,'dsafasfasdf',_binary 'asdfsadfasdf',1,1,'2019-04-01 15:40:38','2019-04-01 15:40:38',1),(3,'LULULULUU',_binary 'dsfsadfsadfdsfsadf<div>sdaf</div><div>saf</div><div>sadf</div><div>asg</div><div>fdhdghljk dhsfdöklsjf <b>safkjs döfkj</b></div>',1,1,'2019-04-01 15:48:38','2019-04-01 15:48:38',1),(4,'dsafasdfasdf',_binary 'sadfsadfds',1,1,'2019-04-01 16:28:18','2019-04-01 16:28:18',1),(5,'aaaaaaaaaaaa',_binary 'aaaaaaaaaaaaaaaaaaaaaaa',1,1,'2019-04-01 16:28:45','2019-04-01 16:28:45',1),(6,'sdfasdökflädöfk sadfälkas ',_binary 'sdföäldkfassad sdälöfksdaf sadfsadf<div>sadfk</div><div>sad pksdaf</div><div>psadkf äösadjf sadfmns d đasd fksdaf opwjr ä2öl35 4v0994u5c09n43v&nbsp;</div><div>ogr jtäkl345tv</div><div>ugrkfjn ä</div>',1,1,'2019-04-01 16:30:31','2019-04-01 16:30:31',1),(7,'asdasdasdasd',_binary 'asd',1,1,'2019-04-01 16:31:21','2019-04-01 16:31:21',1),(8,'sdafsdaf',_binary 'sadfasf',1,1,'2019-04-01 16:32:53','2019-04-01 16:32:53',1),(9,'sdaf',_binary '  \n',1,1,'2019-04-01 16:33:09','2019-04-01 16:33:09',1),(10,'asdfasfd',_binary 'fdsa',1,1,'2019-04-01 16:34:51','2019-04-01 16:34:51',1),(11,'cccc',_binary 'cccc',1,1,'2019-04-01 16:35:46','2019-04-01 16:35:46',1),(12,'asdasdas',_binary '  \n',1,1,'2019-04-01 16:40:58','2019-04-01 16:40:58',1),(13,'sdafsadf',_binary '  \n',1,1,'2019-04-01 16:44:07','2019-04-01 16:44:07',1),(14,'dddddddddddd',_binary '  \n',1,1,'2019-04-01 16:44:15','2019-04-01 16:44:15',1),(15,'dddddddddddd',_binary '  \n',1,1,'2019-04-01 16:44:21','2019-04-01 16:44:21',1),(16,'dddddddddddddd',_binary '  \n',1,1,'2019-04-01 16:44:24','2019-04-01 16:44:24',1),(17,'ddddddddddd',_binary '  \n',1,1,'2019-04-01 16:44:28','2019-04-01 16:44:28',1),(18,'Hallo Welt',_binary '  \n',1,1,'2019-04-02 11:52:32','2019-04-02 11:52:32',1),(19,'',_binary '  \n',1,1,'2019-04-02 11:53:00','2019-04-02 11:53:00',1),(20,'',_binary '  \n',1,1,'2019-04-02 11:53:54','2019-04-02 11:53:54',1),(21,'',_binary '  \n',1,1,'2019-04-02 11:53:55','2019-04-02 11:53:55',1),(22,'',_binary '  \n',1,1,'2019-04-02 11:54:17','2019-04-02 11:54:17',1),(23,'dsfasfsadfas',_binary 'dfasdfasdfsad',1,1,'2019-04-02 11:54:27','2019-04-02 11:54:27',1),(24,'asdfasdfasdf',_binary 'asdasdf',1,1,'2019-04-02 11:55:09','2019-04-02 11:55:09',1),(25,'fdsadfsd',_binary 'fsdfsd',1,1,'2019-04-02 11:56:53','2019-04-02 11:56:53',1),(26,'asdadasd',_binary 'asdasd',1,1,'2019-04-02 11:57:35','2019-04-02 11:57:35',1),(27,'dsfsadfasdf',_binary 'sfdasdfdas',1,1,'2019-04-02 12:12:49','2019-04-02 12:12:49',1),(28,'asdasdasd',_binary 'asdasd',1,1,'2019-04-02 12:14:03','2019-04-02 12:14:03',1),(29,'sfdgdfagdsfg',_binary 'dfgsdfg',1,1,'2019-04-02 12:16:21','2019-04-02 12:16:21',1),(30,'dsfsafsdf',_binary 'sadfsdfsdaf',1,1,'2019-04-02 12:17:39','2019-04-02 12:17:39',1),(31,'fsdafsdaf',_binary '  \n',1,1,'2019-04-02 12:17:59','2019-04-02 12:17:59',1),(32,'fsadf',_binary 'sdfasdfasd',1,1,'2019-04-02 13:35:48','2019-04-02 13:35:48',2),(33,'',_binary '  \n',1,1,'2019-04-02 13:48:58','2019-04-02 13:48:58',1),(34,'lulululululululuullulu',_binary 'lululululuulu',1,1,'2019-04-02 14:11:08','2019-04-02 14:11:08',2),(35,'123123123',_binary '  \n',1,1,'2019-04-02 14:12:23','2019-04-02 14:12:23',2);
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `note_content_student` text,
  `note_content_teacher` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20190401103317'),('20190401105558'),('20190401110009'),('20190401120858'),('20190401121234'),('20190401134552'),('20190401150234'),('20190401150831'),('20190401151133'),('20190402100027'),('20190402100536');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setups`
--

DROP TABLE IF EXISTS `setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `enabled_apps` longtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setups`
--

LOCK TABLES `setups` WRITE;
/*!40000 ALTER TABLE `setups` DISABLE KEYS */;
INSERT INTO `setups` VALUES (1,1,'\n              \n              \n              \n              \n              \n              \n            <img src=\"/images/main/Deutsch.png\" id=\"Deutsch\" class=\"box\" alt=\"Deutsch\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Englisch.png\" id=\"Englisch\" alt=\"Englisch\" class=\"box\" showit=\"false\" style=\"display: none;\">\n            <img src=\"/images/main/Franzoesisch.png\" id=\"Französisch\" alt=\"Französisch\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Biologie.png\" id=\"Biologie\" alt=\"Biologie\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Chemie.png\" id=\"Chemie\" alt=\"Chemie\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Geographie.png\" id=\"Geographie\" alt=\"Geographie\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Geschichte.png\" id=\"Geschichte\" alt=\"Geschichte\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Informatik.png\" id=\"Informatik\" alt=\"Informatik\" class=\"box\" showit=\"true\" style=\"opacity: 1;\">\n            <img src=\"/images/main/Kunst.png\" id=\"Kunst\" alt=\"Kunst\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Latein.png\" id=\"Latein\" alt=\"Latein\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Mathe.png\" id=\"Mathe\" alt=\"Mathe\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Musik.png\" id=\"Musik\" alt=\"Musik\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Physik.png\" id=\"Physik\" alt=\"Physik\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Religion.png\" id=\"Religion\" alt=\"Religion\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Sozialkunde.png\" id=\"Sozialkunde\" alt=\"Sozialkunde\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <img src=\"/images/main/Spanisch.png\" id=\"Spanisch\" alt=\"Spanisch\" class=\"box\" showit=\"false\" style=\"opacity: 0.33; display: none;\">\n            <!-- <div id=\"box-1\" class=\"box\"></div> <div id=\"box-2\" class=\"box\"></div> <div id=\"box-3\" class=\"box\"></div> -->\n          \n          \n          \n          \n          \n          \n          ','2019-04-02 11:32:14','2019-04-02 14:27:14');
/*!40000 ALTER TABLE `setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetables` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `timetable_content` longblob,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
INSERT INTO `timetables` VALUES (1,1,_binary '\n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n\n      \n    <caption></caption>\n    <tbody><tr>\n      <th>Zeit</th>\n      <th>Montag</th>\n      <th>Dienstag</th>\n      <th>Mittwoch</th>\n      <th>Donnerstag</th>\n      <th>Freitag</th>\n    </tr>\n    <tr>\n      <th>8:00 </th>\n      <td contenteditable=\"false\">Mathe</td>\n      <td contenteditable=\"false\">Mathe</td>\n      <td contenteditable=\"false\">Englisch</td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\">Sport</td>\n    </tr>\n    <tr>\n      <th>9:00 </th>\n      <td contenteditable=\"false\">Mathe</td>\n      <td contenteditable=\"false\">Deutsch</td>\n      <td contenteditable=\"false\">Latein</td>\n      <td contenteditable=\"false\">Biologie</td>\n      <td contenteditable=\"false\">Sport</td>\n    </tr>\n    <tr>\n      <th>10:00 </th>\n      <td contenteditable=\"false\">Chemie</td>\n      <td contenteditable=\"false\">Englisch</td>\n      <td contenteditable=\"false\">Physik</td>\n      <td contenteditable=\"false\">Englisch</td>\n      <td contenteditable=\"false\">Sport</td>\n    </tr>\n    <tr>\n      <th>11:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>12:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>13:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>14:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>15:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>16:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>17:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n  </tbody>\n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  ','2019-04-02 10:52:38','2019-04-02 14:27:14'),(2,1,_binary '\n    <caption></caption>\n    <tbody><tr>\n      <th>Zeit</th>\n      <th>Montag</th>\n      <th>Dienstag</th>\n      <th>Mittwoch</th>\n      <th>Donnerstag</th>\n      <th>Freitag</th>\n    </tr>\n    <tr>\n      <th>8:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>9:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>10:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>11:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>12:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>13:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>14:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>15:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>16:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n    <tr>\n      <th>17:00 </th>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n      <td contenteditable=\"false\"></td>\n    </tr>\n  </tbody>','2019-04-02 10:52:38','2019-04-02 10:52:38');
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'Director','2019-04-01 10:10:04','2019-04-01 10:10:04'),(2,'Teacher','2019-04-01 10:10:04','2019-04-01 10:10:04'),(3,'Student','2019-04-01 10:10:04','2019-04-01 10:10:04');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lehrer_klasse1','$2a$10$OzGTKy4aLVDbQ0C9SVUvSusNR5erWsRuY/JuAclUql2XUVkFEZ7ru','2019-04-01 10:36:04','2019-04-01 10:36:04',1,2),(2,'schüler_klasse1','$2a$10$3iT2DNAzCwUvQuCY1SNmGu5UUjxW93a9OPEPDbAa.2BkV65lazJJW','2019-04-02 12:26:57','2019-04-02 12:26:57',1,3),(3,'schüler_klasse1_no2','$2a$10$3GHREXfFo7R7aqVH76FiMuKFriGrIpADTW4sK6N1O25oqXYuxGgLK','2019-04-02 12:27:20','2019-04-02 12:27:20',1,3),(4,'schüler_klasse2','$2a$10$8hAuoQTFToRRakJ2oY1wMujorCQkPtx8aSe8.MhxKkPdQAHmozq6i','2019-04-02 12:27:38','2019-04-02 12:27:38',2,3);
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

-- Dump completed on 2019-04-05  5:14:13
