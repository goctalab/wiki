-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: goctalab_wiki
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `archive`
--

DROP TABLE IF EXISTS `archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive` (
  `ar_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ar_namespace` int(11) NOT NULL DEFAULT '0',
  `ar_title` varbinary(255) NOT NULL DEFAULT '',
  `ar_text` mediumblob NOT NULL,
  `ar_comment` varbinary(767) NOT NULL,
  `ar_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ar_user_text` varbinary(255) NOT NULL,
  `ar_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ar_minor_edit` tinyint(4) NOT NULL DEFAULT '0',
  `ar_flags` tinyblob NOT NULL,
  `ar_rev_id` int(10) unsigned DEFAULT NULL,
  `ar_text_id` int(10) unsigned DEFAULT NULL,
  `ar_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ar_len` int(10) unsigned DEFAULT NULL,
  `ar_page_id` int(10) unsigned DEFAULT NULL,
  `ar_parent_id` int(10) unsigned DEFAULT NULL,
  `ar_sha1` varbinary(32) NOT NULL DEFAULT '',
  `ar_content_model` varbinary(32) DEFAULT NULL,
  `ar_content_format` varbinary(64) DEFAULT NULL,
  PRIMARY KEY (`ar_id`),
  KEY `name_title_timestamp` (`ar_namespace`,`ar_title`,`ar_timestamp`),
  KEY `ar_usertext_timestamp` (`ar_user_text`,`ar_timestamp`),
  KEY `ar_revid` (`ar_rev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive`
--

LOCK TABLES `archive` WRITE;
/*!40000 ALTER TABLE `archive` DISABLE KEYS */;
INSERT INTO `archive` VALUES (1,0,'Git_Workflow','','Explanation of the Git Workflow for Goctalab',1,'Goctalab','20170316134407',0,'',2,2,0,45,2,0,'fnw8by68hixelmobf3bxl7cb0acet7w',NULL,NULL),(2,0,'Git_Workflow','','',1,'Goctalab','20170316140636',0,'',3,3,0,174,2,2,'hol1kxa4y04x6tiu8v5gak2o9pyw2zt',NULL,NULL),(3,0,'Git_Workflow','','/* Backup Database */',1,'Goctalab','20170316140651',0,'',4,4,0,176,2,3,'2d99tip0gvljy50ns7bb3979rkrzstb',NULL,NULL),(4,0,'Git_Workflow','','/* Backup Database */',1,'Goctalab','20170316141022',0,'',5,5,0,220,2,4,'evnrc7looe6ejv7a8xpqjy06qd1u8x4',NULL,NULL),(5,0,'Git_Workflow','','/* Push to Server */',1,'Goctalab','20170316142325',0,'',6,6,0,272,2,5,'mm17vjgult4i0tq5yzq9h60ykz1a4zr',NULL,NULL),(6,0,'Git_Workflow','','/* Push to Server */',1,'Goctalab','20170316142446',0,'',7,7,0,381,2,6,'tgggrmu4njahujo2odohqejc9kj119r',NULL,NULL),(7,0,'Git_Workflow','','/* Push to Server */',1,'Goctalab','20170316142647',0,'',8,8,0,482,2,7,'56dh6xmlkxqz9qkr03ipk0l081j3lgi',NULL,NULL),(8,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316142829',0,'',9,9,0,444,2,8,'5zpskquq2hfhzjeh0d8flna1w38esw3',NULL,NULL),(9,0,'Git_Workflow','','/* WordPress site */',1,'Goctalab','20170316142855',0,'',10,10,0,444,2,9,'smeijrvbap9bsbr6twyeunkv4jkkpc5',NULL,NULL),(10,0,'Git_Workflow','','/* Steps on the local machine */',1,'Goctalab','20170316143201',0,'',11,11,0,482,2,10,'mlrfqwttnvfrpx5i3l0mh9nzf2u5lzm',NULL,NULL),(11,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316143606',0,'',12,12,0,655,2,11,'gn8dzdwydbdedqj7imicuzr23ivcutq',NULL,NULL),(12,0,'Git_Workflow','','/* WordPress site */',1,'Goctalab','20170316143650',0,'',13,13,0,666,2,12,'6ko6uz4kggriv1aqrx0zo9drv36viul',NULL,NULL),(13,0,'Git_Workflow','','/* WordPress site */',1,'Goctalab','20170316143836',0,'',14,14,0,768,2,13,'cfz5a0lfj1znxrj5owg7f5trfvj55r1',NULL,NULL),(14,0,'Git_Workflow','','/* WordPress site */',1,'Goctalab','20170316144206',0,'',15,15,0,818,2,14,'hex8rvvwlif5tta1ic7m86sgptx6v8q',NULL,NULL),(15,0,'Git_Workflow','','/* Title of list */',1,'Goctalab','20170316144451',0,'',16,16,0,906,2,15,'5eeoh7vswe8h1hmkyjwzlnfj9cp7140',NULL,NULL),(16,0,'Git_Workflow','','/* Title of list */',1,'Goctalab','20170316144606',0,'',17,17,0,667,2,16,'1cop0kkvnl6vmwkmku2bs8p2bwqm3qf',NULL,NULL),(17,0,'Git_Workflow','','/* SSH into server and change directory */',1,'Goctalab','20170316144814',0,'',18,18,0,668,2,17,'oj78uqxdftnpifymh6xju25ca4pgt6p',NULL,NULL),(18,0,'Git_Workflow','','/* Root access and change directory */',1,'Goctalab','20170316144824',0,'',19,19,0,669,2,18,'iph5jxl4faryppyuqxevyvanki4s62a',NULL,NULL),(19,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316145236',0,'',20,20,0,689,2,19,'2t0cte86uw1zhztzwy3ssw6b0alnb06',NULL,NULL),(20,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316145329',0,'',21,21,0,606,2,20,'nlr2fjyaslwc9xea4fkxi1ycqlp2qqc',NULL,NULL),(21,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316145437',0,'',22,22,0,638,2,21,'lwfkgvidyn0l9q5zvjt81cm46p2bs7x',NULL,NULL),(22,0,'Git_Workflow','','/* WordPress site */',1,'Goctalab','20170316145609',0,'',23,23,0,640,2,22,'rb2re0z842vknxym7sd8quo0th7udfv',NULL,NULL),(23,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316145656',0,'',24,24,0,657,2,23,'0ah32wn8nkm4kcbqtb6j56hnw1evmab',NULL,NULL),(24,0,'Git_Workflow','','/* Steps on the remote machine */',1,'Goctalab','20170316150003',0,'',25,25,0,733,2,24,'fk9zs723iyfyfsk9x8bw6azpxnsis8a',NULL,NULL),(25,0,'Git_Workflow','','/* Steps on the remote machine */',1,'Goctalab','20170316150137',0,'',26,26,0,834,2,25,'7plx6c5abw6cq0z8me03wdcvwfy3nlq',NULL,NULL),(26,0,'Git_Workflow','','/* Steps on the local machine */',1,'Goctalab','20170316150204',0,'',27,27,0,824,2,26,'qsxky29d305blmdymuhfjotmv5sl0eo',NULL,NULL),(27,0,'Git_Workflow','','/* Steps on the remote machine */',1,'Goctalab','20170316150220',0,'',28,28,0,831,2,27,'s4tkp1zfcd6s3l8z70r5aefgnf9ozzg',NULL,NULL),(28,0,'Git_Workflow','','/* Steps on the remote machine */',1,'Goctalab','20170316151540',0,'',29,29,0,832,2,28,'bk2aun5rid3qya433q2gd5ig0ud54xj',NULL,NULL),(29,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316154239',0,'',30,30,0,1644,2,29,'3mitbiltav052h4qcprd034e62m0pvj',NULL,NULL),(30,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316154738',0,'',31,31,0,1646,2,30,'gme01q42ln048siod2izrghf49276op',NULL,NULL),(31,0,'Git_Workflow','','/* WordPress */',1,'Goctalab','20170316193226',0,'',32,32,0,1919,2,31,'sekmh7qykpegq7yx6m6cf7fydqd349p',NULL,NULL),(32,0,'Git_Workflow','','/* Push to server */',1,'Goctalab','20170316193301',0,'',33,33,0,1837,2,32,'3bkhqicni169elwr52ub90ckezu9jzv',NULL,NULL),(33,0,'Git_Workflow','','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',1,'Goctalab','20170321205504',0,'',42,42,0,1837,8,0,'3bkhqicni169elwr52ub90ckezu9jzv',NULL,NULL),(34,0,'Push_to_Server','','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',1,'Goctalab','20170321205607',0,'',43,43,0,1837,9,0,'3bkhqicni169elwr52ub90ckezu9jzv',NULL,NULL),(35,0,'Test_parsoid','','Created page with \"test parsoid\"',1,'Goctalab','20170321202146',0,'',41,41,0,12,7,0,'nb2tux7be2wx6vism0589yamodjfbrc',NULL,NULL),(36,0,'Test_parsoid_2','','Created page with \"test\"',1,'Goctalab','20170321224736',0,'',45,45,0,4,11,0,'jrwjerxiekdtj9k82lg930wpkr6tq6r',NULL,NULL),(37,0,'Test_parsoid_2','','',1,'Goctalab','20170321225627',0,'',46,46,0,10,11,45,'a30efshekcbc1ca8ekcckngyfifbh3o',NULL,NULL),(38,0,'Test_parsoid_2','','I made a chance',1,'Goctalab','20170322164155',0,'',47,47,0,4,11,46,'jrwjerxiekdtj9k82lg930wpkr6tq6r',NULL,NULL),(39,6,'Acerca_de_las_Pilas.pdf','','',1,'Goctalab','20170320224400',0,'',36,36,0,0,5,0,'phoiac9h4m842xq45sp7s6u21eteeq1',NULL,NULL),(40,6,'WwwGoctaWikiLOGOFF.jpg','','Logo de GoctaWiki pe',1,'Goctalab','20170320211837',0,'',34,34,0,20,3,0,'b5bnr1uvq8pagk72gs8bro99a9q9r26',NULL,NULL),(41,6,'Test_vid.mp4','','',1,'Goctalab','20170321172411',0,'',38,38,0,0,6,0,'phoiac9h4m842xq45sp7s6u21eteeq1',NULL,NULL),(42,6,'WwwGoctaWikiLOGOFFsmall.png','','',1,'Goctalab','20170322172449',0,'',48,48,0,0,12,0,'phoiac9h4m842xq45sp7s6u21eteeq1',NULL,NULL),(43,0,'Test_upload','','Created page with \"[[File:wwwGoctaWikiLOGOFF.jpg|options|caption]]\"',1,'Goctalab','20170320213049',0,'',35,35,0,47,4,0,'9tbvh287n6a28a102hvjppodllp2dga',NULL,NULL),(44,0,'Test_upload','','',1,'Goctalab','20170321172301',0,'',37,37,0,53,4,35,'9x1mxodx9dpinjbt5xqw12mvsrdi539',NULL,NULL),(45,0,'Test_upload','','',1,'Goctalab','20170321172509',0,'',39,39,0,22,4,37,'f4blidvz6it2j0ifvdhmds3xisyxcm0',NULL,NULL),(46,0,'Test_upload','','',1,'Goctalab','20170321172727',0,'',40,40,0,21,4,39,'ashpbycpg4dlasnxq57et40vfkois6c',NULL,NULL),(47,0,'Git_Workflow','','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',1,'Goctalab','20170321205926',0,'',44,44,0,1837,10,0,'3bkhqicni169elwr52ub90ckezu9jzv',NULL,NULL);
/*!40000 ALTER TABLE `archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bot_passwords`
--

DROP TABLE IF EXISTS `bot_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bot_passwords` (
  `bp_user` int(11) NOT NULL,
  `bp_app_id` varbinary(32) NOT NULL,
  `bp_password` tinyblob NOT NULL,
  `bp_token` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `bp_restrictions` blob NOT NULL,
  `bp_grants` blob NOT NULL,
  PRIMARY KEY (`bp_user`,`bp_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bot_passwords`
--

LOCK TABLES `bot_passwords` WRITE;
/*!40000 ALTER TABLE `bot_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `bot_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varbinary(255) NOT NULL,
  `cat_pages` int(11) NOT NULL DEFAULT '0',
  `cat_subcats` int(11) NOT NULL DEFAULT '0',
  `cat_files` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_title` (`cat_title`),
  KEY `cat_pages` (`cat_pages`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Pages_with_broken_file_links',1,0,0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorylinks`
--

DROP TABLE IF EXISTS `categorylinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorylinks` (
  `cl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `cl_to` varbinary(255) NOT NULL DEFAULT '',
  `cl_sortkey` varbinary(230) NOT NULL DEFAULT '',
  `cl_sortkey_prefix` varbinary(255) NOT NULL DEFAULT '',
  `cl_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cl_collation` varbinary(32) NOT NULL DEFAULT '',
  `cl_type` enum('page','subcat','file') NOT NULL DEFAULT 'page',
  UNIQUE KEY `cl_from` (`cl_from`,`cl_to`),
  KEY `cl_sortkey` (`cl_to`,`cl_type`,`cl_sortkey`,`cl_from`),
  KEY `cl_timestamp` (`cl_to`,`cl_timestamp`),
  KEY `cl_collation_ext` (`cl_collation`,`cl_to`,`cl_type`,`cl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorylinks`
--

LOCK TABLES `categorylinks` WRITE;
/*!40000 ALTER TABLE `categorylinks` DISABLE KEYS */;
INSERT INTO `categorylinks` VALUES (4,'Pages_with_broken_file_links','TEST UPLOAD','','2017-03-22 22:48:36','uppercase','page');
/*!40000 ALTER TABLE `categorylinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_tag`
--

DROP TABLE IF EXISTS `change_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change_tag` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ct_rc_id` int(11) DEFAULT NULL,
  `ct_log_id` int(11) DEFAULT NULL,
  `ct_rev_id` int(11) DEFAULT NULL,
  `ct_tag` varbinary(255) NOT NULL,
  `ct_params` blob,
  PRIMARY KEY (`ct_id`),
  UNIQUE KEY `change_tag_rc_tag` (`ct_rc_id`,`ct_tag`),
  UNIQUE KEY `change_tag_log_tag` (`ct_log_id`,`ct_tag`),
  UNIQUE KEY `change_tag_rev_tag` (`ct_rev_id`,`ct_tag`),
  KEY `change_tag_tag_id` (`ct_tag`,`ct_rc_id`,`ct_rev_id`,`ct_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_tag`
--

LOCK TABLES `change_tag` WRITE;
/*!40000 ALTER TABLE `change_tag` DISABLE KEYS */;
INSERT INTO `change_tag` VALUES (1,47,NULL,45,'visualeditor',NULL),(2,48,NULL,46,'visualeditor',NULL),(3,49,NULL,47,'visualeditor',NULL),(7,63,56,48,'visualeditor',NULL),(8,64,NULL,49,'visualeditor',NULL);
/*!40000 ALTER TABLE `change_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externallinks`
--

DROP TABLE IF EXISTS `externallinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externallinks` (
  `el_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `el_from` int(10) unsigned NOT NULL DEFAULT '0',
  `el_to` blob NOT NULL,
  `el_index` blob NOT NULL,
  PRIMARY KEY (`el_id`),
  KEY `el_from` (`el_from`,`el_to`(40)),
  KEY `el_to` (`el_to`(60),`el_from`),
  KEY `el_index` (`el_index`(60))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externallinks`
--

LOCK TABLES `externallinks` WRITE;
/*!40000 ALTER TABLE `externallinks` DISABLE KEYS */;
INSERT INTO `externallinks` VALUES (1,11,'Http://www.github.com/goctalab','http://com.github.www./goctalab'),(2,11,'http://www.goctalab.org.pe','http://pe.org.goctalab.www./'),(3,12,'https://www.mediawiki.org/wiki/Extension:PDFEmbed','https://org.mediawiki.www./wiki/Extension:PDFEmbed'),(4,12,'https://www.mediawiki.org/wiki/Extension:EmbedVideo','https://org.mediawiki.www./wiki/Extension:EmbedVideo'),(5,12,'https://www.mediawiki.org/wiki/VisualEditor','https://org.mediawiki.www./wiki/VisualEditor');
/*!40000 ALTER TABLE `externallinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filearchive`
--

DROP TABLE IF EXISTS `filearchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filearchive` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fa_name` varbinary(255) NOT NULL DEFAULT '',
  `fa_archive_name` varbinary(255) DEFAULT '',
  `fa_storage_group` varbinary(16) DEFAULT NULL,
  `fa_storage_key` varbinary(64) DEFAULT '',
  `fa_deleted_user` int(11) DEFAULT NULL,
  `fa_deleted_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted_reason` varbinary(767) DEFAULT '',
  `fa_size` int(10) unsigned DEFAULT '0',
  `fa_width` int(11) DEFAULT '0',
  `fa_height` int(11) DEFAULT '0',
  `fa_metadata` mediumblob,
  `fa_bits` int(11) DEFAULT '0',
  `fa_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `fa_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') DEFAULT 'unknown',
  `fa_minor_mime` varbinary(100) DEFAULT 'unknown',
  `fa_description` varbinary(767) DEFAULT NULL,
  `fa_user` int(10) unsigned DEFAULT '0',
  `fa_user_text` varbinary(255) DEFAULT NULL,
  `fa_timestamp` binary(14) DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `fa_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fa_sha1` varbinary(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`fa_id`),
  KEY `fa_name` (`fa_name`,`fa_timestamp`),
  KEY `fa_storage_group` (`fa_storage_group`,`fa_storage_key`),
  KEY `fa_deleted_timestamp` (`fa_deleted_timestamp`),
  KEY `fa_user_timestamp` (`fa_user_text`,`fa_timestamp`),
  KEY `fa_sha1` (`fa_sha1`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filearchive`
--

LOCK TABLES `filearchive` WRITE;
/*!40000 ALTER TABLE `filearchive` DISABLE KEYS */;
INSERT INTO `filearchive` VALUES (1,'Acerca_de_las_Pilas.pdf',NULL,'deleted','mybcbqfyidjk4qb06mdwg00csxkb3kp.pdf',1,'20170322174726','',467010,0,0,'',0,'OFFICE','application','pdf','',1,'Goctalab','20170320224400',0,'mybcbqfyidjk4qb06mdwg00csxkb3kp'),(2,'WwwGoctaWikiLOGOFF.jpg',NULL,'deleted','gopgi0l9cusef21c8zjbyd5u48bhbcy.jpg',1,'20170322174811','',159121,3543,1000,'a:14:{s:11:\"Orientation\";i:1;s:11:\"XResolution\";s:5:\"500/1\";s:11:\"YResolution\";s:5:\"500/1\";s:14:\"ResolutionUnit\";i:2;s:8:\"Software\";s:11:\"GIMP 2.8.16\";s:8:\"DateTime\";s:19:\"2017:03:18 18:50:58\";s:11:\"ExifVersion\";s:4:\"0210\";s:15:\"FlashPixVersion\";s:4:\"0100\";s:10:\"ColorSpace\";i:65535;s:17:\"DateTimeDigitized\";s:19:\"2015:05:22 12:50:20\";s:16:\"DateTimeMetadata\";s:19:\"2017:03:18 13:42:08\";s:10:\"ObjectName\";a:2:{s:9:\"x-default\";s:9:\"x-default\";s:5:\"_type\";s:4:\"lang\";}s:18:\"OriginalDocumentID\";s:40:\"xmp.did:F77F1174072068118A6DCE09043D4BC2\";s:22:\"MEDIAWIKI_EXIF_VERSION\";i:2;}',8,'BITMAP','image','jpeg','Logo de GoctaWiki pe',1,'Goctalab','20170320211837',0,'gopgi0l9cusef21c8zjbyd5u48bhbcy'),(3,'Test_vid.mp4',NULL,'deleted','hpd0quf4yrp4mthke7ltm0zrfog6ex0.mp4',1,'20170322174827','',20487260,0,0,'',0,'VIDEO','video','mp4','',1,'Goctalab','20170321172411',0,'hpd0quf4yrp4mthke7ltm0zrfog6ex0'),(4,'WwwGoctaWikiLOGOFFsmall.png',NULL,'deleted','l9ttxjl6fun9zvs1z8olkh32myo1jdy.png',1,'20170322174856','',6919,135,135,'a:6:{s:10:\"frameCount\";i:0;s:9:\"loopCount\";i:1;s:8:\"duration\";d:0;s:8:\"bitDepth\";i:8;s:9:\"colorType\";s:16:\"truecolour-alpha\";s:8:\"metadata\";a:5:{s:11:\"XResolution\";s:9:\"19685/100\";s:11:\"YResolution\";s:9:\"19685/100\";s:14:\"ResolutionUnit\";i:3;s:8:\"DateTime\";s:19:\"2017:03:22 17:24:22\";s:15:\"_MW_PNG_VERSION\";i:1;}}',8,'BITMAP','image','png','',1,'Goctalab','20170322172449',0,'l9ttxjl6fun9zvs1z8olkh32myo1jdy');
/*!40000 ALTER TABLE `filearchive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `img_name` varbinary(255) NOT NULL DEFAULT '',
  `img_size` int(10) unsigned NOT NULL DEFAULT '0',
  `img_width` int(11) NOT NULL DEFAULT '0',
  `img_height` int(11) NOT NULL DEFAULT '0',
  `img_metadata` mediumblob NOT NULL,
  `img_bits` int(11) NOT NULL DEFAULT '0',
  `img_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `img_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') NOT NULL DEFAULT 'unknown',
  `img_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `img_description` varbinary(767) NOT NULL,
  `img_user` int(10) unsigned NOT NULL DEFAULT '0',
  `img_user_text` varbinary(255) NOT NULL,
  `img_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `img_sha1` varbinary(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_name`),
  KEY `img_usertext_timestamp` (`img_user_text`,`img_timestamp`),
  KEY `img_size` (`img_size`),
  KEY `img_timestamp` (`img_timestamp`),
  KEY `img_sha1` (`img_sha1`(10)),
  KEY `img_media_mime` (`img_media_type`,`img_major_mime`,`img_minor_mime`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagelinks`
--

DROP TABLE IF EXISTS `imagelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagelinks` (
  `il_from` int(10) unsigned NOT NULL DEFAULT '0',
  `il_from_namespace` int(11) NOT NULL DEFAULT '0',
  `il_to` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `il_from` (`il_from`,`il_to`),
  KEY `il_to` (`il_to`,`il_from`),
  KEY `il_backlinks_namespace` (`il_from_namespace`,`il_to`,`il_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagelinks`
--

LOCK TABLES `imagelinks` WRITE;
/*!40000 ALTER TABLE `imagelinks` DISABLE KEYS */;
INSERT INTO `imagelinks` VALUES (4,0,'Test_vid.mp4');
/*!40000 ALTER TABLE `imagelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interwiki`
--

DROP TABLE IF EXISTS `interwiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interwiki` (
  `iw_prefix` varbinary(32) NOT NULL,
  `iw_url` blob NOT NULL,
  `iw_api` blob NOT NULL,
  `iw_wikiid` varbinary(64) NOT NULL,
  `iw_local` tinyint(1) NOT NULL,
  `iw_trans` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `iw_prefix` (`iw_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interwiki`
--

LOCK TABLES `interwiki` WRITE;
/*!40000 ALTER TABLE `interwiki` DISABLE KEYS */;
INSERT INTO `interwiki` VALUES ('acronym','http://www.acronymfinder.com/~/search/af.aspx?string=exact&Acronym=$1','','',0,0),('advogato','http://www.advogato.org/$1','','',0,0),('arxiv','http://www.arxiv.org/abs/$1','','',0,0),('c2find','http://c2.com/cgi/wiki?FindPage&value=$1','','',0,0),('cache','http://www.google.com/search?q=cache:$1','','',0,0),('commons','https://commons.wikimedia.org/wiki/$1','https://commons.wikimedia.org/w/api.php','',0,0),('dictionary','http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=$1','','',0,0),('doi','http://dx.doi.org/$1','','',0,0),('drumcorpswiki','http://www.drumcorpswiki.com/$1','http://drumcorpswiki.com/api.php','',0,0),('dwjwiki','http://www.suberic.net/cgi-bin/dwj/wiki.cgi?$1','','',0,0),('elibre','http://enciclopedia.us.es/index.php/$1','http://enciclopedia.us.es/api.php','',0,0),('emacswiki','http://www.emacswiki.org/cgi-bin/wiki.pl?$1','','',0,0),('foldoc','http://foldoc.org/?$1','','',0,0),('foxwiki','http://fox.wikis.com/wc.dll?Wiki~$1','','',0,0),('freebsdman','http://www.FreeBSD.org/cgi/man.cgi?apropos=1&query=$1','','',0,0),('gentoo-wiki','http://gentoo-wiki.com/$1','','',0,0),('google','http://www.google.com/search?q=$1','','',0,0),('googlegroups','http://groups.google.com/groups?q=$1','','',0,0),('hammondwiki','http://www.dairiki.org/HammondWiki/$1','','',0,0),('hrwiki','http://www.hrwiki.org/wiki/$1','http://www.hrwiki.org/w/api.php','',0,0),('imdb','http://www.imdb.com/find?q=$1&tt=on','','',0,0),('kmwiki','http://kmwiki.wikispaces.com/$1','','',0,0),('linuxwiki','http://linuxwiki.de/$1','','',0,0),('lojban','http://mw.lojban.org/papri/$1','','',0,0),('lqwiki','http://wiki.linuxquestions.org/wiki/$1','','',0,0),('meatball','http://www.usemod.com/cgi-bin/mb.pl?$1','','',0,0),('mediawikiwiki','https://www.mediawiki.org/wiki/$1','https://www.mediawiki.org/w/api.php','',0,0),('memoryalpha','http://en.memory-alpha.org/wiki/$1','http://en.memory-alpha.org/api.php','',0,0),('metawiki','http://sunir.org/apps/meta.pl?$1','','',0,0),('metawikimedia','https://meta.wikimedia.org/wiki/$1','https://meta.wikimedia.org/w/api.php','',0,0),('mozillawiki','http://wiki.mozilla.org/$1','https://wiki.mozilla.org/api.php','',0,0),('mw','https://www.mediawiki.org/wiki/$1','https://www.mediawiki.org/w/api.php','',0,0),('oeis','http://oeis.org/$1','','',0,0),('openwiki','http://openwiki.com/ow.asp?$1','','',0,0),('pmid','https://www.ncbi.nlm.nih.gov/pubmed/$1?dopt=Abstract','','',0,0),('pythoninfo','http://wiki.python.org/moin/$1','','',0,0),('rfc','https://tools.ietf.org/html/rfc$1','','',0,0),('s23wiki','http://s23.org/wiki/$1','http://s23.org/w/api.php','',0,0),('seattlewireless','http://seattlewireless.net/$1','','',0,0),('senseislibrary','http://senseis.xmp.net/?$1','','',0,0),('shoutwiki','http://www.shoutwiki.com/wiki/$1','http://www.shoutwiki.com/w/api.php','',0,0),('squeak','http://wiki.squeak.org/squeak/$1','','',0,0),('theopedia','http://www.theopedia.com/$1','','',0,0),('tmbw','http://www.tmbw.net/wiki/$1','http://tmbw.net/wiki/api.php','',0,0),('tmnet','http://www.technomanifestos.net/?$1','','',0,0),('twiki','http://twiki.org/cgi-bin/view/$1','','',0,0),('uncyclopedia','http://en.uncyclopedia.co/wiki/$1','http://en.uncyclopedia.co/w/api.php','',0,0),('unreal','http://wiki.beyondunreal.com/$1','http://wiki.beyondunreal.com/w/api.php','',0,0),('usemod','http://www.usemod.com/cgi-bin/wiki.pl?$1','','',0,0),('wiki','http://c2.com/cgi/wiki?$1','','',0,0),('wikia','http://www.wikia.com/wiki/$1','','',0,0),('wikibooks','https://en.wikibooks.org/wiki/$1','https://en.wikibooks.org/w/api.php','',0,0),('wikidata','https://www.wikidata.org/wiki/$1','https://www.wikidata.org/w/api.php','',0,0),('wikif1','http://www.wikif1.org/$1','','',0,0),('wikihow','http://www.wikihow.com/$1','http://www.wikihow.com/api.php','',0,0),('wikimedia','https://wikimediafoundation.org/wiki/$1','https://wikimediafoundation.org/w/api.php','',0,0),('wikinews','https://en.wikinews.org/wiki/$1','https://en.wikinews.org/w/api.php','',0,0),('wikinfo','http://wikinfo.co/English/index.php/$1','','',0,0),('wikipedia','https://en.wikipedia.org/wiki/$1','https://en.wikipedia.org/w/api.php','',0,0),('wikiquote','https://en.wikiquote.org/wiki/$1','https://en.wikiquote.org/w/api.php','',0,0),('wikisource','https://wikisource.org/wiki/$1','https://wikisource.org/w/api.php','',0,0),('wikispecies','https://species.wikimedia.org/wiki/$1','https://species.wikimedia.org/w/api.php','',0,0),('wikiversity','https://en.wikiversity.org/wiki/$1','https://en.wikiversity.org/w/api.php','',0,0),('wikivoyage','https://en.wikivoyage.org/wiki/$1','https://en.wikivoyage.org/w/api.php','',0,0),('wikt','https://en.wiktionary.org/wiki/$1','https://en.wiktionary.org/w/api.php','',0,0),('wiktionary','https://en.wiktionary.org/wiki/$1','https://en.wiktionary.org/w/api.php','',0,0);
/*!40000 ALTER TABLE `interwiki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipblocks`
--

DROP TABLE IF EXISTS `ipblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipblocks` (
  `ipb_id` int(11) NOT NULL AUTO_INCREMENT,
  `ipb_address` tinyblob NOT NULL,
  `ipb_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ipb_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ipb_by_text` varbinary(255) NOT NULL DEFAULT '',
  `ipb_reason` varbinary(767) NOT NULL,
  `ipb_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ipb_auto` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_anon_only` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_create_account` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_enable_autoblock` tinyint(1) NOT NULL DEFAULT '1',
  `ipb_expiry` varbinary(14) NOT NULL DEFAULT '',
  `ipb_range_start` tinyblob NOT NULL,
  `ipb_range_end` tinyblob NOT NULL,
  `ipb_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_block_email` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_allow_usertalk` tinyint(1) NOT NULL DEFAULT '0',
  `ipb_parent_block_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ipb_id`),
  UNIQUE KEY `ipb_address` (`ipb_address`(255),`ipb_user`,`ipb_auto`,`ipb_anon_only`),
  KEY `ipb_user` (`ipb_user`),
  KEY `ipb_range` (`ipb_range_start`(8),`ipb_range_end`(8)),
  KEY `ipb_timestamp` (`ipb_timestamp`),
  KEY `ipb_expiry` (`ipb_expiry`),
  KEY `ipb_parent_block_id` (`ipb_parent_block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipblocks`
--

LOCK TABLES `ipblocks` WRITE;
/*!40000 ALTER TABLE `ipblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwlinks`
--

DROP TABLE IF EXISTS `iwlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwlinks` (
  `iwl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `iwl_prefix` varbinary(20) NOT NULL DEFAULT '',
  `iwl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `iwl_from` (`iwl_from`,`iwl_prefix`,`iwl_title`),
  KEY `iwl_prefix_title_from` (`iwl_prefix`,`iwl_title`,`iwl_from`),
  KEY `iwl_prefix_from_title` (`iwl_prefix`,`iwl_from`,`iwl_title`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwlinks`
--

LOCK TABLES `iwlinks` WRITE;
/*!40000 ALTER TABLE `iwlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `iwlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_cmd` varbinary(60) NOT NULL DEFAULT '',
  `job_namespace` int(11) NOT NULL,
  `job_title` varbinary(255) NOT NULL,
  `job_timestamp` varbinary(14) DEFAULT NULL,
  `job_params` blob NOT NULL,
  `job_random` int(10) unsigned NOT NULL DEFAULT '0',
  `job_attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `job_token` varbinary(32) NOT NULL DEFAULT '',
  `job_token_timestamp` varbinary(14) DEFAULT NULL,
  `job_sha1` varbinary(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`job_id`),
  KEY `job_sha1` (`job_sha1`),
  KEY `job_cmd_token` (`job_cmd`,`job_token`,`job_random`),
  KEY `job_cmd_token_id` (`job_cmd`,`job_token`,`job_id`),
  KEY `job_cmd` (`job_cmd`,`job_namespace`,`job_title`,`job_params`(128)),
  KEY `job_timestamp` (`job_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l10n_cache`
--

DROP TABLE IF EXISTS `l10n_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l10n_cache` (
  `lc_lang` varbinary(32) NOT NULL,
  `lc_key` varbinary(255) NOT NULL,
  `lc_value` mediumblob NOT NULL,
  KEY `lc_lang_key` (`lc_lang`,`lc_key`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l10n_cache`
--

LOCK TABLES `l10n_cache` WRITE;
/*!40000 ALTER TABLE `l10n_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `l10n_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langlinks`
--

DROP TABLE IF EXISTS `langlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `langlinks` (
  `ll_from` int(10) unsigned NOT NULL DEFAULT '0',
  `ll_lang` varbinary(20) NOT NULL DEFAULT '',
  `ll_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ll_from` (`ll_from`,`ll_lang`),
  KEY `ll_lang` (`ll_lang`,`ll_title`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langlinks`
--

LOCK TABLES `langlinks` WRITE;
/*!40000 ALTER TABLE `langlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `langlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_search`
--

DROP TABLE IF EXISTS `log_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_search` (
  `ls_field` varbinary(32) NOT NULL,
  `ls_value` varbinary(255) NOT NULL,
  `ls_log_id` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ls_field_val` (`ls_field`,`ls_value`,`ls_log_id`),
  KEY `ls_log_id` (`ls_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_search`
--

LOCK TABLES `log_search` WRITE;
/*!40000 ALTER TABLE `log_search` DISABLE KEYS */;
INSERT INTO `log_search` VALUES ('associated_rev_id','34',34),('associated_rev_id','36',37),('associated_rev_id','38',40),('associated_rev_id','48',56);
/*!40000 ALTER TABLE `log_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logging`
--

DROP TABLE IF EXISTS `logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logging` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varbinary(32) NOT NULL DEFAULT '',
  `log_action` varbinary(32) NOT NULL DEFAULT '',
  `log_timestamp` binary(14) NOT NULL DEFAULT '19700101000000',
  `log_user` int(10) unsigned NOT NULL DEFAULT '0',
  `log_user_text` varbinary(255) NOT NULL DEFAULT '',
  `log_namespace` int(11) NOT NULL DEFAULT '0',
  `log_title` varbinary(255) NOT NULL DEFAULT '',
  `log_page` int(10) unsigned DEFAULT NULL,
  `log_comment` varbinary(767) NOT NULL DEFAULT '',
  `log_params` blob NOT NULL,
  `log_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `type_time` (`log_type`,`log_timestamp`),
  KEY `user_time` (`log_user`,`log_timestamp`),
  KEY `page_time` (`log_namespace`,`log_title`,`log_timestamp`),
  KEY `times` (`log_timestamp`),
  KEY `log_user_type_time` (`log_user`,`log_type`,`log_timestamp`),
  KEY `log_page_id_time` (`log_page`,`log_timestamp`),
  KEY `type_action` (`log_type`,`log_action`,`log_timestamp`),
  KEY `log_user_text_type_time` (`log_user_text`,`log_type`,`log_timestamp`),
  KEY `log_user_text_time` (`log_user_text`,`log_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logging`
--

LOCK TABLES `logging` WRITE;
/*!40000 ALTER TABLE `logging` DISABLE KEYS */;
INSERT INTO `logging` VALUES (1,'newusers','create2','20170316131444',1,'Goctalab',2,'Mwinter',0,'','a:1:{s:9:\"4::userid\";i:2;}',0),(2,'patrol','autopatrol','20170316134408',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:2;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(3,'patrol','autopatrol','20170316140636',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:3;s:9:\"5::previd\";i:2;s:7:\"6::auto\";i:1;}',0),(4,'patrol','autopatrol','20170316140651',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:4;s:9:\"5::previd\";i:3;s:7:\"6::auto\";i:1;}',0),(5,'patrol','autopatrol','20170316141023',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:5;s:9:\"5::previd\";i:4;s:7:\"6::auto\";i:1;}',0),(6,'patrol','autopatrol','20170316142325',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:6;s:9:\"5::previd\";i:5;s:7:\"6::auto\";i:1;}',0),(7,'patrol','autopatrol','20170316142447',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:7;s:9:\"5::previd\";i:6;s:7:\"6::auto\";i:1;}',0),(8,'patrol','autopatrol','20170316142647',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:8;s:9:\"5::previd\";i:7;s:7:\"6::auto\";i:1;}',0),(9,'patrol','autopatrol','20170316142829',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:9;s:9:\"5::previd\";i:8;s:7:\"6::auto\";i:1;}',0),(10,'patrol','autopatrol','20170316142855',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:10;s:9:\"5::previd\";i:9;s:7:\"6::auto\";i:1;}',0),(11,'patrol','autopatrol','20170316143201',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:11;s:9:\"5::previd\";i:10;s:7:\"6::auto\";i:1;}',0),(12,'patrol','autopatrol','20170316143607',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:12;s:9:\"5::previd\";i:11;s:7:\"6::auto\";i:1;}',0),(13,'patrol','autopatrol','20170316143650',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:13;s:9:\"5::previd\";i:12;s:7:\"6::auto\";i:1;}',0),(14,'patrol','autopatrol','20170316143836',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:14;s:9:\"5::previd\";i:13;s:7:\"6::auto\";i:1;}',0),(15,'patrol','autopatrol','20170316144206',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:15;s:9:\"5::previd\";i:14;s:7:\"6::auto\";i:1;}',0),(16,'patrol','autopatrol','20170316144451',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:16;s:9:\"5::previd\";i:15;s:7:\"6::auto\";i:1;}',0),(17,'patrol','autopatrol','20170316144606',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:17;s:9:\"5::previd\";i:16;s:7:\"6::auto\";i:1;}',0),(18,'patrol','autopatrol','20170316144814',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:18;s:9:\"5::previd\";i:17;s:7:\"6::auto\";i:1;}',0),(19,'patrol','autopatrol','20170316144824',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:19;s:9:\"5::previd\";i:18;s:7:\"6::auto\";i:1;}',0),(20,'patrol','autopatrol','20170316145237',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:20;s:9:\"5::previd\";i:19;s:7:\"6::auto\";i:1;}',0),(21,'patrol','autopatrol','20170316145329',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:21;s:9:\"5::previd\";i:20;s:7:\"6::auto\";i:1;}',0),(22,'patrol','autopatrol','20170316145437',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:22;s:9:\"5::previd\";i:21;s:7:\"6::auto\";i:1;}',0),(23,'patrol','autopatrol','20170316145609',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:23;s:9:\"5::previd\";i:22;s:7:\"6::auto\";i:1;}',0),(24,'patrol','autopatrol','20170316145656',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:24;s:9:\"5::previd\";i:23;s:7:\"6::auto\";i:1;}',0),(25,'patrol','autopatrol','20170316150003',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:25;s:9:\"5::previd\";i:24;s:7:\"6::auto\";i:1;}',0),(26,'patrol','autopatrol','20170316150138',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:26;s:9:\"5::previd\";i:25;s:7:\"6::auto\";i:1;}',0),(27,'patrol','autopatrol','20170316150204',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:27;s:9:\"5::previd\";i:26;s:7:\"6::auto\";i:1;}',0),(28,'patrol','autopatrol','20170316150221',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:28;s:9:\"5::previd\";i:27;s:7:\"6::auto\";i:1;}',0),(29,'patrol','autopatrol','20170316151540',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:29;s:9:\"5::previd\";i:28;s:7:\"6::auto\";i:1;}',0),(30,'patrol','autopatrol','20170316154239',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:30;s:9:\"5::previd\";i:29;s:7:\"6::auto\";i:1;}',0),(31,'patrol','autopatrol','20170316154738',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:31;s:9:\"5::previd\";i:30;s:7:\"6::auto\";i:1;}',0),(32,'patrol','autopatrol','20170316193227',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:32;s:9:\"5::previd\";i:31;s:7:\"6::auto\";i:1;}',0),(33,'patrol','autopatrol','20170316193301',1,'Goctalab',0,'Git_Workflow',2,'','a:3:{s:8:\"4::curid\";i:33;s:9:\"5::previd\";i:32;s:7:\"6::auto\";i:1;}',0),(34,'upload','upload','20170320211837',1,'Goctalab',6,'WwwGoctaWikiLOGOFF.jpg',3,'Logo de GoctaWiki pe','a:3:{s:8:\"img_sha1\";s:31:\"gopgi0l9cusef21c8zjbyd5u48bhbcy\";s:13:\"img_timestamp\";s:14:\"20170320211837\";s:17:\"associated_rev_id\";i:34;}',0),(35,'patrol','autopatrol','20170320211838',1,'Goctalab',6,'WwwGoctaWikiLOGOFF.jpg',3,'','a:3:{s:8:\"4::curid\";i:34;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(36,'patrol','autopatrol','20170320213049',1,'Goctalab',0,'Test_upload',4,'','a:3:{s:8:\"4::curid\";i:35;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(37,'upload','upload','20170320224400',1,'Goctalab',6,'Acerca_de_las_Pilas.pdf',5,'','a:3:{s:8:\"img_sha1\";s:31:\"mybcbqfyidjk4qb06mdwg00csxkb3kp\";s:13:\"img_timestamp\";s:14:\"20170320224400\";s:17:\"associated_rev_id\";i:36;}',0),(38,'patrol','autopatrol','20170320224401',1,'Goctalab',6,'Acerca_de_las_Pilas.pdf',5,'','a:3:{s:8:\"4::curid\";i:36;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(39,'patrol','autopatrol','20170321172302',1,'Goctalab',0,'Test_upload',4,'','a:3:{s:8:\"4::curid\";i:37;s:9:\"5::previd\";i:35;s:7:\"6::auto\";i:1;}',0),(40,'upload','upload','20170321172411',1,'Goctalab',6,'Test_vid.mp4',6,'','a:3:{s:8:\"img_sha1\";s:31:\"hpd0quf4yrp4mthke7ltm0zrfog6ex0\";s:13:\"img_timestamp\";s:14:\"20170321172411\";s:17:\"associated_rev_id\";i:38;}',0),(41,'patrol','autopatrol','20170321172411',1,'Goctalab',6,'Test_vid.mp4',6,'','a:3:{s:8:\"4::curid\";i:38;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(42,'patrol','autopatrol','20170321172509',1,'Goctalab',0,'Test_upload',4,'','a:3:{s:8:\"4::curid\";i:39;s:9:\"5::previd\";i:37;s:7:\"6::auto\";i:1;}',0),(43,'patrol','autopatrol','20170321172727',1,'Goctalab',0,'Test_upload',4,'','a:3:{s:8:\"4::curid\";i:40;s:9:\"5::previd\";i:39;s:7:\"6::auto\";i:1;}',0),(44,'patrol','autopatrol','20170321202146',1,'Goctalab',0,'Test_parsoid',7,'','a:3:{s:8:\"4::curid\";i:41;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(45,'delete','delete','20170321205441',1,'Goctalab',0,'Git_Workflow',2,'content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(46,'patrol','autopatrol','20170321205504',1,'Goctalab',0,'Git_Workflow',8,'','a:3:{s:8:\"4::curid\";i:42;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(47,'delete','delete','20170321205525',1,'Goctalab',0,'Git_Workflow',8,'content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(48,'patrol','autopatrol','20170321205608',1,'Goctalab',0,'Push_to_Server',9,'','a:3:{s:8:\"4::curid\";i:43;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(49,'patrol','autopatrol','20170321205926',1,'Goctalab',0,'Git_Workflow',10,'','a:3:{s:8:\"4::curid\";i:44;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(50,'patrol','autopatrol','20170321224737',1,'Goctalab',0,'Test_parsoid_2',11,'','a:3:{s:8:\"4::curid\";i:45;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(51,'patrol','autopatrol','20170321225628',1,'Goctalab',0,'Test_parsoid_2',11,'','a:3:{s:8:\"4::curid\";i:46;s:9:\"5::previd\";i:45;s:7:\"6::auto\";i:1;}',0),(52,'patrol','autopatrol','20170322164156',1,'Goctalab',0,'Test_parsoid_2',11,'','a:3:{s:8:\"4::curid\";i:47;s:9:\"5::previd\";i:46;s:7:\"6::auto\";i:1;}',0),(53,'delete','delete','20170322164249',1,'Goctalab',0,'Push_to_Server',9,'content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(54,'delete','delete','20170322164337',1,'Goctalab',0,'Test_parsoid',7,'content was: \"test parsoid\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(55,'delete','delete','20170322164349',1,'Goctalab',0,'Test_parsoid_2',11,'content was: \"test\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(56,'upload','upload','20170322172449',1,'Goctalab',6,'WwwGoctaWikiLOGOFFsmall.png',12,'','a:3:{s:8:\"img_sha1\";s:31:\"l9ttxjl6fun9zvs1z8olkh32myo1jdy\";s:13:\"img_timestamp\";s:14:\"20170322172449\";s:17:\"associated_rev_id\";i:48;}',0),(57,'patrol','autopatrol','20170322172449',1,'Goctalab',6,'WwwGoctaWikiLOGOFFsmall.png',12,'','a:3:{s:8:\"4::curid\";i:48;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(58,'delete','delete','20170322174726',1,'Goctalab',6,'Acerca_de_las_Pilas.pdf',5,'','a:0:{}',0),(59,'delete','delete','20170322174811',1,'Goctalab',6,'WwwGoctaWikiLOGOFF.jpg',3,'','a:0:{}',0),(60,'delete','delete','20170322174827',1,'Goctalab',6,'Test_vid.mp4',6,'','a:0:{}',0),(61,'delete','delete','20170322174856',1,'Goctalab',6,'WwwGoctaWikiLOGOFFsmall.png',12,'','a:0:{}',0),(62,'delete','delete','20170322174931',1,'Goctalab',0,'Test_upload',4,'content was: \"[[File:Test_vid.mp4]]\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(63,'patrol','autopatrol','20170324135800',1,'Goctalab',0,'Website_Development_Workflow',11,'','a:3:{s:8:\"4::curid\";i:45;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(64,'delete','delete','20170324135819',1,'Goctalab',0,'Git_Workflow',10,'content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])','a:0:{}',0),(65,'patrol','autopatrol','20170324140238',1,'Goctalab',0,'MediaWiki_Extensions',12,'','a:3:{s:8:\"4::curid\";i:46;s:9:\"5::previd\";i:0;s:7:\"6::auto\";i:1;}',0),(66,'patrol','autopatrol','20170324140841',1,'Goctalab',0,'Website_Development_Workflow',11,'','a:3:{s:8:\"4::curid\";i:47;s:9:\"5::previd\";i:45;s:7:\"6::auto\";i:1;}',0),(67,'patrol','autopatrol','20170324142458',1,'Goctalab',0,'Website_Development_Workflow',11,'','a:3:{s:8:\"4::curid\";i:48;s:9:\"5::previd\";i:47;s:7:\"6::auto\";i:1;}',0),(68,'patrol','autopatrol','20170327004131',1,'Goctalab',0,'Website_Development_Workflow',11,'','a:3:{s:8:\"4::curid\";i:49;s:9:\"5::previd\";i:48;s:7:\"6::auto\";i:1;}',0);
/*!40000 ALTER TABLE `logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_deps`
--

DROP TABLE IF EXISTS `module_deps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_deps` (
  `md_module` varbinary(255) NOT NULL,
  `md_skin` varbinary(32) NOT NULL,
  `md_deps` mediumblob NOT NULL,
  UNIQUE KEY `md_module_skin` (`md_module`,`md_skin`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_deps`
--

LOCK TABLES `module_deps` WRITE;
/*!40000 ALTER TABLE `module_deps` DISABLE KEYS */;
INSERT INTO `module_deps` VALUES ('ext.visualEditor.core','vector|en','[\"extensions/VisualEditor/lib/ve/src/ce/styles/../../ui/styles/images/resize-ne-sw.svg\",\"extensions/VisualEditor/lib/ve/src/ce/styles/../../ui/styles/images/resize-nw-se.svg\",\"extensions/VisualEditor/lib/ve/src/ui/styles/images/icons/table-move-column-ltr.svg\",\"extensions/VisualEditor/lib/ve/src/ui/styles/images/icons/table-move-column-rtl.svg\",\"extensions/VisualEditor/lib/ve/src/ui/styles/images/icons/table-move-row-after.svg\",\"extensions/VisualEditor/lib/ve/src/ui/styles/images/icons/table-move-row-before.svg\"]'),('ext.visualEditor.hackyIcons','vector|en','[\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-disambiguation-ltr.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-disambiguation-rtl.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-existing-ltr.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-existing-rtl.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-not-found-he-yi.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-not-found-ltr.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-not-found-rtl.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-redirect-ltr.svg\",\"extensions/VisualEditor/modules/ve-mw/ui/styles/images/icons/page-redirect-rtl.svg\"]'),('ext.visualEditor.mwimage','vector|en','[\"extensions/VisualEditor/modules/ve-mw/ui/styles/widgets/images/broken-image.png\"]'),('ext.visualEditor.mwlink','vector|en','[\"extensions/VisualEditor/modules/ve-mw/ui/styles/tools/images/link-ltr.png\"]'),('ext.visualEditor.welcome','vector|en','[\"extensions/VisualEditor/modules/ve-mw/ui/styles/dialogs/images/welcomeSplash-ltr.png\"]'),('jquery.spinner','vector|en','[\"resources/src/jquery/images/spinner-large.gif\",\"resources/src/jquery/images/spinner.gif\"]'),('jquery.spinner','vector|es','[\"resources/src/jquery/images/spinner-large.gif\",\"resources/src/jquery/images/spinner.gif\"]'),('mediawiki.ForeignStructuredUpload.BookletLayout','vector|en','[\"resources/src/mediawiki/mediawiki.ForeignStructuredUpload.BookletLayout.less\"]'),('mediawiki.action.view.categoryPage.styles','vector|en','[\"resources/src/mediawiki.action/mediawiki.action.view.categoryPage.less\",\"resources/src/mediawiki.less/mediawiki.mixins.less\"]'),('mediawiki.action.view.filepage','vector|en','[\"resources/src/mediawiki.action/images/checker.png\"]'),('mediawiki.action.view.filepage','vector|es','[\"resources/src/mediawiki.action/images/checker.png\"]'),('mediawiki.action.view.postEdit','apioutput|en','[\"resources/src/mediawiki.action/images/green-checkmark.png\"]'),('mediawiki.action.view.postEdit','vector|en','[\"resources/src/mediawiki.action/images/green-checkmark.png\"]'),('mediawiki.action.view.postEdit','vector|es','[\"resources/src/mediawiki.action/images/green-checkmark.png\"]'),('mediawiki.action.view.redirectPage','vector|en','[\"resources/src/mediawiki.action/images/nextredirect-ltr.png\",\"resources/src/mediawiki.action/images/nextredirect-ltr.svg\",\"resources/src/mediawiki.action/images/nextredirect-rtl.png\",\"resources/src/mediawiki.action/images/nextredirect-rtl.svg\",\"resources/src/mediawiki.action/images/redirect-ltr.png\",\"resources/src/mediawiki.action/images/redirect-ltr.svg\",\"resources/src/mediawiki.action/images/redirect-rtl.png\",\"resources/src/mediawiki.action/images/redirect-rtl.svg\"]'),('mediawiki.feedlink','vector|en','[\"resources/src/mediawiki/images/feed-icon.png\",\"resources/src/mediawiki/images/feed-icon.svg\"]'),('mediawiki.helplink','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki/images/help.png\",\"resources/src/mediawiki/images/help.svg\",\"resources/src/mediawiki/mediawiki.helplink.less\"]'),('mediawiki.helplink','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki/images/help.png\",\"resources/src/mediawiki/images/help.svg\",\"resources/src/mediawiki/mediawiki.helplink.less\"]'),('mediawiki.htmlform.styles','vector|en','[\"resources/src/mediawiki/htmlform/images/question.png\",\"resources/src/mediawiki/htmlform/images/question.svg\"]'),('mediawiki.htmlform.styles','vector|es','[\"resources/src/mediawiki/htmlform/images/question.png\",\"resources/src/mediawiki/htmlform/images/question.svg\"]'),('mediawiki.icon','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki/images/arrow-collapsed-ltr.png\",\"resources/src/mediawiki/images/arrow-collapsed-ltr.svg\",\"resources/src/mediawiki/images/arrow-expanded.png\",\"resources/src/mediawiki/images/arrow-expanded.svg\",\"resources/src/mediawiki/mediawiki.icon.less\"]'),('mediawiki.icon','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki/images/arrow-collapsed-ltr.png\",\"resources/src/mediawiki/images/arrow-collapsed-ltr.svg\",\"resources/src/mediawiki/images/arrow-expanded.png\",\"resources/src/mediawiki/images/arrow-expanded.svg\",\"resources/src/mediawiki/mediawiki.icon.less\"]'),('mediawiki.legacy.shared','apioutput|en','[\"resources/src/mediawiki.legacy/images/ajax-loader.gif\",\"resources/src/mediawiki.legacy/images/spinner.gif\"]'),('mediawiki.legacy.shared','vector|en','[\"resources/src/mediawiki.legacy/images/ajax-loader.gif\",\"resources/src/mediawiki.legacy/images/spinner.gif\"]'),('mediawiki.legacy.shared','vector|es','[\"resources/src/mediawiki.legacy/images/ajax-loader.gif\",\"resources/src/mediawiki.legacy/images/spinner.gif\"]'),('mediawiki.notification','vector|en','[\"skins/Vector/skinStyles/mediawiki.notification.less\",\"skins/Vector/variables.less\"]'),('mediawiki.pager.tablePager','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki/images/arrow-sort-ascending.png\",\"resources/src/mediawiki/images/arrow-sort-ascending.svg\",\"resources/src/mediawiki/images/arrow-sort-descending.png\",\"resources/src/mediawiki/images/arrow-sort-descending.svg\",\"resources/src/mediawiki/images/pager-arrow-disabled-fastforward-ltr.png\",\"resources/src/mediawiki/images/pager-arrow-disabled-fastforward-ltr.svg\",\"resources/src/mediawiki/images/pager-arrow-disabled-fastforward-rtl.png\",\"resources/src/mediawiki/images/pager-arrow-disabled-fastforward-rtl.svg\",\"resources/src/mediawiki/images/pager-arrow-disabled-forward-ltr.png\",\"resources/src/mediawiki/images/pager-arrow-disabled-forward-ltr.svg\",\"resources/src/mediawiki/images/pager-arrow-disabled-forward-rtl.png\",\"resources/src/mediawiki/images/pager-arrow-disabled-forward-rtl.svg\",\"resources/src/mediawiki/images/pager-arrow-fastforward-ltr.png\",\"resources/src/mediawiki/images/pager-arrow-fastforward-ltr.svg\",\"resources/src/mediawiki/images/pager-arrow-fastforward-rtl.png\",\"resources/src/mediawiki/images/pager-arrow-fastforward-rtl.svg\",\"resources/src/mediawiki/images/pager-arrow-forward-ltr.png\",\"resources/src/mediawiki/images/pager-arrow-forward-ltr.svg\",\"resources/src/mediawiki/images/pager-arrow-forward-rtl.png\",\"resources/src/mediawiki/images/pager-arrow-forward-rtl.svg\",\"resources/src/mediawiki/mediawiki.pager.tablePager.less\"]'),('mediawiki.skinning.content.parsoid','vector|en','[\"resources/src/mediawiki.skinning/content.parsoid.less\"]'),('mediawiki.skinning.interface','apioutput|en','[\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.svg\"]'),('mediawiki.skinning.interface','vector|en','[\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.svg\"]'),('mediawiki.skinning.interface','vector|es','[\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-ltr.svg\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.png\",\"resources/src/mediawiki.skinning/images/magnify-clip-rtl.svg\"]'),('mediawiki.special','vector|en','[\"skins/Vector/skinStyles/mediawiki.special.less\"]'),('mediawiki.special','vector|es','[\"skins/Vector/skinStyles/mediawiki.special.less\"]'),('mediawiki.special.preferences.styles','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"skins/Vector/images/preferences/break.png\",\"skins/Vector/images/preferences/fade.png\",\"skins/Vector/skinStyles/mediawiki.special.preferences.styles.less\",\"skins/Vector/variables.less\"]'),('mediawiki.special.userlogin.common.styles','vector|en','[\"resources/src/mediawiki.special/images/icon-lock.png\"]'),('mediawiki.special.userlogin.common.styles','vector|es','[\"resources/src/mediawiki.special/images/icon-lock.png\"]'),('mediawiki.special.userlogin.login.styles','vector|en','[\"resources/src/mediawiki.special/images/glyph-people-large.png\"]'),('mediawiki.special.userlogin.login.styles','vector|es','[\"resources/src/mediawiki.special/images/glyph-people-large.png\"]'),('mediawiki.special.userlogin.signup.styles','vector|en','[\"resources/src/mediawiki.special/images/icon-contributors.png\",\"resources/src/mediawiki.special/images/icon-edits.png\",\"resources/src/mediawiki.special/images/icon-pages.png\"]'),('mediawiki.toolbar','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.toolbar/images/en/button_bold.png\",\"resources/src/mediawiki.toolbar/images/en/button_extlink.png\",\"resources/src/mediawiki.toolbar/images/en/button_headline.png\",\"resources/src/mediawiki.toolbar/images/en/button_hr.png\",\"resources/src/mediawiki.toolbar/images/en/button_image.png\",\"resources/src/mediawiki.toolbar/images/en/button_italic.png\",\"resources/src/mediawiki.toolbar/images/en/button_link.png\",\"resources/src/mediawiki.toolbar/images/en/button_media.png\",\"resources/src/mediawiki.toolbar/images/en/button_nowiki.png\",\"resources/src/mediawiki.toolbar/images/en/button_sig.png\",\"resources/src/mediawiki.toolbar/toolbar.less\"]'),('mediawiki.toolbar','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.toolbar/images/en/button_bold.png\",\"resources/src/mediawiki.toolbar/images/en/button_extlink.png\",\"resources/src/mediawiki.toolbar/images/en/button_headline.png\",\"resources/src/mediawiki.toolbar/images/en/button_hr.png\",\"resources/src/mediawiki.toolbar/images/en/button_image.png\",\"resources/src/mediawiki.toolbar/images/en/button_italic.png\",\"resources/src/mediawiki.toolbar/images/en/button_link.png\",\"resources/src/mediawiki.toolbar/images/en/button_media.png\",\"resources/src/mediawiki.toolbar/images/en/button_nowiki.png\",\"resources/src/mediawiki.toolbar/images/en/button_sig.png\",\"resources/src/mediawiki.toolbar/toolbar.less\"]'),('mediawiki.ui','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/forms.less\",\"resources/src/mediawiki.ui/components/utilities.less\",\"resources/src/mediawiki.ui/default.less\"]'),('mediawiki.ui','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/forms.less\",\"resources/src/mediawiki.ui/components/utilities.less\",\"resources/src/mediawiki.ui/default.less\"]'),('mediawiki.ui.button','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/buttons.less\"]'),('mediawiki.ui.button','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/buttons.less\"]'),('mediawiki.ui.checkbox','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/checkbox.less\",\"resources/src/mediawiki.ui/components/images/checked.png\",\"resources/src/mediawiki.ui/components/images/checked.svg\",\"resources/src/mediawiki.ui/components/images/checked_disabled.png\",\"resources/src/mediawiki.ui/components/images/checked_disabled.svg\"]'),('mediawiki.ui.checkbox','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/checkbox.less\",\"resources/src/mediawiki.ui/components/images/checked.png\",\"resources/src/mediawiki.ui/components/images/checked.svg\",\"resources/src/mediawiki.ui/components/images/checked_disabled.png\",\"resources/src/mediawiki.ui/components/images/checked_disabled.svg\"]'),('mediawiki.ui.input','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/inputs.less\"]'),('mediawiki.ui.input','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/inputs.less\"]'),('mediawiki.ui.radio','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/images/radio_checked.png\",\"resources/src/mediawiki.ui/components/images/radio_checked.svg\",\"resources/src/mediawiki.ui/components/images/radio_disabled.png\",\"resources/src/mediawiki.ui/components/images/radio_disabled.svg\",\"resources/src/mediawiki.ui/components/radio.less\"]'),('mediawiki.ui.radio','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.ui/variables.less\",\"resources/src/mediawiki.ui/components/images/radio_checked.png\",\"resources/src/mediawiki.ui/components/images/radio_checked.svg\",\"resources/src/mediawiki.ui/components/images/radio_disabled.png\",\"resources/src/mediawiki.ui/components/images/radio_disabled.svg\",\"resources/src/mediawiki.ui/components/radio.less\"]'),('mediawiki.widgets','vector|en','[\"resources/src/mediawiki.widgets/mw.widgets.TitleWidget.less\"]'),('mediawiki.widgets','vector|es','[\"resources/src/mediawiki.widgets/mw.widgets.TitleWidget.less\"]'),('mediawiki.widgets.DateInputWidget','vector|en','[\"resources/src/mediawiki.widgets/mw.widgets.CalendarWidget.less\",\"resources/src/mediawiki.widgets/mw.widgets.DateInputWidget.less\"]'),('mediawiki.widgets.StashedFileWidget','vector|en','[\"resources/src/mediawiki.widgets/mw.widgets.StashedFileWidget.less\"]'),('oojs-ui-core.styles','vector|en','[\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-invert.png\",\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-invert.svg\",\"resources/lib/oojs-ui/themes/mediawiki/images/textures/pending.gif\",\"skins/Vector/skinStyles/ooui.less\"]'),('oojs-ui-core.styles','vector|es','[\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-invert.png\",\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-invert.svg\",\"resources/lib/oojs-ui/themes/mediawiki/images/textures/pending.gif\",\"skins/Vector/skinStyles/ooui.less\"]'),('oojs-ui-toolbars','vector|en','[\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-progressive.png\",\"resources/lib/oojs-ui/themes/mediawiki/images/icons/check-progressive.svg\"]'),('oojs-ui-widgets','vector|en','[\"resources/lib/oojs-ui/images/grab.cur\",\"resources/lib/oojs-ui/images/grabbing.cur\"]'),('oojs-ui-widgets','vector|es','[\"resources/lib/oojs-ui/images/grab.cur\",\"resources/lib/oojs-ui/images/grabbing.cur\"]'),('skins.vector.styles','vector|en','[\"resources/src/mediawiki.less/mediawiki.mixins.animation.less\",\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.mixins.rotation.less\",\"skins/Vector/components/common.less\",\"skins/Vector/components/externalLinks.less\",\"skins/Vector/components/footer.less\",\"skins/Vector/components/navigation.less\",\"skins/Vector/components/personalMenu.less\",\"skins/Vector/components/search.less\",\"skins/Vector/components/tabs.less\",\"skins/Vector/components/watchstar.less\",\"skins/Vector/images/arrow-down-focus-icon.png\",\"skins/Vector/images/arrow-down-focus-icon.svg\",\"skins/Vector/images/arrow-down-icon.png\",\"skins/Vector/images/arrow-down-icon.svg\",\"skins/Vector/images/bullet-icon.png\",\"skins/Vector/images/bullet-icon.svg\",\"skins/Vector/images/external-link-ltr-icon.png\",\"skins/Vector/images/external-link-ltr-icon.svg\",\"skins/Vector/images/page-fade.png\",\"skins/Vector/images/portal-break.png\",\"skins/Vector/images/search-fade.png\",\"skins/Vector/images/search-ltr.png\",\"skins/Vector/images/search-ltr.svg\",\"skins/Vector/images/tab-break.png\",\"skins/Vector/images/tab-current-fade.png\",\"skins/Vector/images/tab-normal-fade.png\",\"skins/Vector/images/unwatch-icon-hl.png\",\"skins/Vector/images/unwatch-icon-hl.svg\",\"skins/Vector/images/unwatch-icon.png\",\"skins/Vector/images/unwatch-icon.svg\",\"skins/Vector/images/user-icon.png\",\"skins/Vector/images/user-icon.svg\",\"skins/Vector/images/watch-icon-hl.png\",\"skins/Vector/images/watch-icon-hl.svg\",\"skins/Vector/images/watch-icon-loading.png\",\"skins/Vector/images/watch-icon-loading.svg\",\"skins/Vector/images/watch-icon.png\",\"skins/Vector/images/watch-icon.svg\",\"skins/Vector/screen-hd.less\",\"skins/Vector/screen.less\",\"skins/Vector/variables.less\"]'),('skins.vector.styles','vector|es','[\"resources/src/mediawiki.less/mediawiki.mixins.animation.less\",\"resources/src/mediawiki.less/mediawiki.mixins.less\",\"resources/src/mediawiki.less/mediawiki.mixins.rotation.less\",\"skins/Vector/components/common.less\",\"skins/Vector/components/externalLinks.less\",\"skins/Vector/components/footer.less\",\"skins/Vector/components/navigation.less\",\"skins/Vector/components/personalMenu.less\",\"skins/Vector/components/search.less\",\"skins/Vector/components/tabs.less\",\"skins/Vector/components/watchstar.less\",\"skins/Vector/images/arrow-down-focus-icon.png\",\"skins/Vector/images/arrow-down-focus-icon.svg\",\"skins/Vector/images/arrow-down-icon.png\",\"skins/Vector/images/arrow-down-icon.svg\",\"skins/Vector/images/bullet-icon.png\",\"skins/Vector/images/bullet-icon.svg\",\"skins/Vector/images/external-link-ltr-icon.png\",\"skins/Vector/images/external-link-ltr-icon.svg\",\"skins/Vector/images/page-fade.png\",\"skins/Vector/images/portal-break.png\",\"skins/Vector/images/search-fade.png\",\"skins/Vector/images/search-ltr.png\",\"skins/Vector/images/search-ltr.svg\",\"skins/Vector/images/tab-break.png\",\"skins/Vector/images/tab-current-fade.png\",\"skins/Vector/images/tab-normal-fade.png\",\"skins/Vector/images/unwatch-icon-hl.png\",\"skins/Vector/images/unwatch-icon-hl.svg\",\"skins/Vector/images/unwatch-icon.png\",\"skins/Vector/images/unwatch-icon.svg\",\"skins/Vector/images/user-icon.png\",\"skins/Vector/images/user-icon.svg\",\"skins/Vector/images/watch-icon-hl.png\",\"skins/Vector/images/watch-icon-hl.svg\",\"skins/Vector/images/watch-icon-loading.png\",\"skins/Vector/images/watch-icon-loading.svg\",\"skins/Vector/images/watch-icon.png\",\"skins/Vector/images/watch-icon.svg\",\"skins/Vector/screen-hd.less\",\"skins/Vector/screen.less\",\"skins/Vector/variables.less\"]');
/*!40000 ALTER TABLE `module_deps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectcache`
--

DROP TABLE IF EXISTS `objectcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectcache` (
  `keyname` varbinary(255) NOT NULL DEFAULT '',
  `value` mediumblob,
  `exptime` datetime DEFAULT NULL,
  PRIMARY KEY (`keyname`),
  KEY `exptime` (`exptime`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectcache`
--

LOCK TABLES `objectcache` WRITE;
/*!40000 ALTER TABLE `objectcache` DISABLE KEYS */;
INSERT INTO `objectcache` VALUES ('global:LESS:/var/www/html/wiki/resources/src/mediawiki/mediawiki.helplink.less:511711247b38d5ed3ee96dee4d3bf89a','�R\�n\�0}\�+�\��(��Tż\�W\�$m��I�ʄ��%�\�M\Z/\����-��.\�?w.:8Ȓ��~�Q	\�l\�6�A#;ӡj	#�!%\�mm�Q�{VK G\�-\�v4�\�F\��\�ïZo$��k\�J5,˔3\�z�\"w��\�%y�})Yҟ=\�\�\���h�\�4�\r@���oy���_PV\�\�Zڠ1LTuh ia΁\�L\�^��\n�\�e�y�ĺ	\�\�]8e��\�Y8\��\n;\�\�\� �\�Ɠy=1K\�q�\�\�wt\���N-��9\�i/���D\�����DH�\�����.\��\�\���oA\�0ׄٷ)D\�4\�\�U�\�6y�fYV$�\��O���۲�5o','2017-03-31 12:47:46'),('global:LESS:/var/www/html/wiki/skins/Vector/screen-hd.less:511711247b38d5ed3ee96dee4d3bf89a','��M�\�0��9�Iw\��i:�s�\�+��&v�CC)���I�B�\�<�{�,�.�-�1�5�������v�A\�6 :\�\�Qt�X\�0ؑ����\�4�5��J\�\"o�\�1B\�\�\��Y�<Ǳfqc\��,�\nG\�^\�:�\'�I���ˆg!C�]\���\�\��#6�\�a��\�7���������~^y \���zX�S\�j6a�\����Ň\�F6�\�c �N;\�\�OkЅ��\�X<�xHjYe\�qP�I\�3���ѩmtҚӌ�\�?$9L\�0�$\�\�\�B�\�\��cYd��\�\�\�\�\���Ƙ���_','2017-03-31 12:29:05'),('global:LESS:/var/www/html/wiki/skins/Vector/screen.less:511711247b38d5ed3ee96dee4d3bf89a','\�\\\�o7�|�+x\n�\�9�����|�M�4�4	��\��]\�\�y�\\,w-�A���\�c�\\=\�\�_�.bk��\����\����:���+9\\N/g�\��3��S�\�\'�ED�ېI�\��\��\�	yF~��$\��\�f\���+���DJ�,C\�, 4KŚ�ܧa�%<\"	�^�^*��-S\"y��[I\���x���E\��tE��\����b�fp	�Ӄ\�\�\��K#⊱��u���\�K�!/>}\"i\���\nB}��\\��T\�<\�\�V���+`$�\�5#bI6l���\�H�\�pbd-d�\���܁t&�bͬ�@\�7/\'DDᶧE���0�\�:�\�\ZyP�O��hJ\����+x\nɍ�\�%4\n\�9L\�R��\�@\�S+{A`��9h�#\�\�*]�\�9Y�`\�!0�(*\�r\�A璅z�;\�;]3�(\�u$-#�b�|���[ @8�i�űHR\�\02\�\��ȿDF|\n؉�m�\�Z�7(�b�\��\�^~��槟^�#?���x�ˇ�o~x������\�^~�\��1�A�y�\��Ǘ?a3��c� �K�*�k�\��Ր��\���\��9��\�]�|U\�\'�\r\�b\���5�\'��9\�㇘l>)bK�\�\�vN$���\�K$��[P�\�:Yx�E2\'O���V \���!{덗�\�l\�\�@Yغ\�~�?C�E�� �D\�%\�^c!RXo��\0\�@$Q-�o|\�y@�\�i0]^^\�/=�$�\�ʌX�k�\�G�\�K\�B>���\�-OJ�%|M�ٙ\�l\�Ή\�Z���×�\�p�?�$\�	\0	�Ü�i��˵����R7趾�B~\�\n�\'.\���!��g!��4K+�\�\�\Z5U\�\Z�dX\r�;oy�ݑ�|���J{\��]򙯙\�#OM�AoT0���\�q\rv\�^��EM�i�W\Z`m�M9�Sk���	��H�m�\�׸�LG�4���U ��1�y:\Z^��QE�\�\�)�/%gm�<�\�d\���\���p�\�\�J�V\�\�x6�j���ՠa.z3Tr\rx��gte;�\�>��)\��\�5���ۨ<ȋ�q�ä	\�AoR�\�\�*,s �0T~X�)�p��E��i! \�c߈\Zf[M\�i\�$K\�j\�{�\n�\\��\�a�\�Go\���lV�ڋ�r\�RlI��Z6x\rF�n�\r\�I\�\�\"\�\�\�:�\��O��WIP|\0o삥	�Z,q\�h���[.�\"d\r0�(��\"��v��drUUG�7���}\�e$�\�8�qW.\�n�\�\�\r:E�E�{��#DAD-y,��S�;a!8Y�����;�} j�-\�_5\�\�)\n:�?�\�\Z�\��g\�����P�r[~\�SO?\�U6�\���Ь&	*B/\�K�1(\n\Z�W\�j���޾g\�(\�\�9ɒ���z!\�Yl<J\�\�\�\�gu�3�\�\�k�\�)�\�%�鍜��k\�P�f�\�^\�)@�\0\�ߗ8F��B�E�\\\�c�7�Q�2�N���|?\�\������\0�\�\�4bw\0	�\�\��\03o�4�gL��j��}\��B�ky�_\�٥K>Z���_Z!x��\��\�7\��\0��h��{��Xe>��T1��\�\�\�Ds\��J�\�\'\r�\��)\Z C<\0\0�\�`<뒋Y:\�((\�Q_	W�Ƙ\��\�m\�`�ۺPf߸\\\�\�\n��\'c��Z��\�1\"9\�B\�,!wap0,Td\�?m���C��\�LKP(������i�-�J�\'c\�Qn\Z�\�~`R\��W\�\"�,���ԃ8(�Y\�Otc�\���*\�yj�0F�8�H�?͘?��چW\�P�5ac�aw\0�_\'�W\�`E�3\noRpy�DH\�h�\�/4Uc\�S\�e�1fE\'P�htr�r��.gOC)P�U��7\�(TD\�\�\\9;\�\\\�ĳOK\�Gy\�m�n�ܸ6y\�;�מq\�\�>��\�|�*\�[���\���`��y\�!)Z6p�A���P46����ǒ\��U\��F\�_^���.\n�V\�\�\0�\�#\�t�ƭ2r���f\�OO!\�\�\�?Jy&�4�`�\��GkT�@ф������V<XT�\�u���Gq�ַ��u�\�z\0��u�O������&ƀ\�\��\�Ƭ]p,c�\�-\�/MDM\�|>w%��S7\�fT�0���s\�C\�5�����\�G�\��	x�-݊\�:\"\�jA\'0���RZ�\�!\�zi�ʲ�\�e\�\���x��� n�\�{�{wΙm�Ei6GW2Mu8x>\�C{���@2I��+ҷ�u�U��Fz\�	B \�Z\�p�.1�\�=\r�ϒ3~\�k�~�\�\0\Z\�\�{\�ٱk\�g+�XR1f�����zk\���$�ǟ�0�\�3(�/�L\���Q���\� �>�3�#\�\�]�qod�\�*�\�\�&{\�\�\\������a�\\D��X@x\�c�T|�u�wV�]`�\�\�\�p�ǕI1�+l�|\�\�{��_n\�1�G\r\�a\�]%�т\�\�RdJ]{6+���\�{ph)l\�\���V�Ȝ�>�XfQ�%�\�\�b�]\�\�*{zsu;]U���{6\�^�Ï3h\�\�ȕ8=�\'�g$b}�(3���\�.%��D5\�q�\�\�\�U�D�8�:\�;UQ�\�6dR�ш\�[\�6V4\�\�nw\�#�o��d\�H���\n@\\B��<;\�\�\"\�\�-�ֶ\�-]�0O�ܪ��\�Ⱥ-lTݍ�R��MIӤp�cj\�к�G�� �l�\�3�\�d�oP��j^}l=��\�L�|\�\���F\�u\��V�R\�\�\�\����zgN�<0z�֏U\�\�Ԩ���(uGZ\��rT\']e\0e�8�\00\�\�\�o\�sǵ\0� \�Or��mI3q\"\�:\�\Z\�\�=f-��������Q^x��I�\�<�\�R|\Z��\�{S=(�7&Bދ��\�nۋ9&�S\�T�\�\�x<Ϝ�4;\�\�ȩ\0\�7�\�\\\�\�ᔻx\�~4R(Q.F\�U�\�\ZALI�\'њf2�\�\0\�\�j�J\�>\��\�]V\�Jr�\�ϭ���1\rZ�EW��9\�\�f\�{\�\'\�}8�p�ف��Mף\Z�β>5G\�ny�\�\�6���M4\�4J��v��~\�/,ʜ\�\��pt%gt\�H/ICr�\�ú�\�t\�\�a��q\��\��\� \�D\�A�.g6��\�\�T҆��\��ݬ\Z�7G^\�D4MѴ�؀tT;j0R�Z�\�\�\�\�\�v\�\"�������\�}��]�W��*���%q_g� A\�!c*4�^�jOo�m\"E�n%\�q-U\�K\����u\��\���h���E\�õ�pU:�T\�\�}7pT\��\�Sb�\� j���r�\�\�Z\�R�?O�/\�|�j�\�^/W�\�yy\�\�[��\�u}@�R\�燠e}W�\�IC~9vM�\�s\�e���4Laȕ.AK�\�R\�Ǵ�}&�=ull��:�ƺ��\\Q\�./MM\�����a]%\�k*Ki\��c�p�`8R���W�K�w\�\"�\'w:QM�-\�򦎖q^{�Y\�U��dD\�%�O4>ֽY\�[�T��\�P�	��\�R=~\���\�\�1�<4\�\�F���齣�f\�)\�!!�i\�?6\�\�+~|FT�.K�\�W�X�_�7�*\�=�g#�\�\� \��\�O�l\�Yټ�\r-C�n|o���]&�\�#�S��\�,�G\��#\�ix\�صچ\�\�~[�/���a/�\�d?\�J����* ��g���\�\�x�p�k�T�=��\"�z�~gQ]���d߱zkE\�p��ȩ�2+�\�\�\"K���\�o��\��\���R	\�\�}n	�㐫\Zk\�	�O\�\�BZ;\�R�\�\�hc�\�D�\�M\�\�`��SOU\��0%U�\�|u\�g�ZO)��6�T��\�\�\�MQ�q8��U��`Bv��Ҙ��*\�\�^\�{T\�=�\�v譊��dhQ���o�Ӟ\��*�Z���\�7_�\�8\�~��C�<\��z\�;\�\�^\����Xy�\�q1�\�mW<�	��t�.S&�5/z.u\�\�(+\�+o\�0C�Z�\�;�ES�N\��N\��\�p\�h<�.O��_:�bL;|�f\�T��H]\�\�`��\�y\��7\�a͆9\0�`)**1\�\�i!ϖ)ivg2X&\�-�d�\�\�l\�}ϋ��}+�C(�,\�ݕSs]e\�]��l	��l�$�\�R���\ZI\�yw���s�\Z<\�W㸛Wܛ���:v�$�8Lt\�Գ\�L\�u-߳6\�a87��4dɸDH\�ۈ\�\��&�\�D\�_����\�\��\�*�\�\����zP�����E\�:\'e\r��\�\�Z�^����\"Q\��t�!��+k!O\�b��7�uY\rP%��\�\n�F!<\�\�\�x*�*X�W�xz�\�NMv\�|)9$�_�|\"93_!�\��3uSO\�z�0\�\�T�K\�\�\�6�N7��\r`\�\�$\�ԕ�\\>�H�|���\"�H\�\�OqoX�M���4\�hFgL>\���x\Z\ZY\"�\�T�%Y\�P\'�\�5�^宸�}\�5�6,Kf\�\�\��NY�;癲��\�\�\��\�\�1�\n,o\�%�\'��\�+\�у�9u3ǅ�\�\�Zuӯ9mw�p_�{�6\�[��xՍF,4\�M�\�\�\�/մh\�n�\r\�RW\�n�\�v�%��z\"S�m�\�˜=��h�D\�Ս\\O,U�\�\�\\��?f�ʡ�\�5c�����V-ޢ0u�\�_{\�ަ/\�\0���\�6[��\�\�\�S���5/n\�\�\�ѭ\'\�-�ը$�#�>��g�\�\�.y�\�ڗa����A���t\�\�\�m\�#�\�ڸ[�WmS�uzx��\�\�#D��#{rxw\�ID\�\�Ϛ���\�o�u\�}U\�m�\�$\�vܰ��r��q��I�\�4\�p�?5z����\�\�9l~�I��ᵠo��#O[]g�B�\�{Hj�ĜHU�[��F�[�ή/.\�\�\�}X䚺\�\�3��ʇ�;�EKѲ�/Zǣ|�=2&��P���$`A\�9|9\�S\�U�v���Dͅ\��\r�2\�\�Y~\�/^<J���\�$~���^�6\�~~�\�x\�Y�\�\��F�/|އ��y\���&\�\�\�/\��C\��C\��&�s�Q\�A_\�\�\�\�6\�\�\���}�y\�!�q��\'\�\���\\\�YNa&�N\n��,��\�M\�_��]K\��8\�/P�\�Q\"�}Ne�b���b��@՝X:�\����\��Hax�\0���a�\�Q�U\�J�4ɉ\\��[�\�͒\���=@\�N�\0�dA{p���q,H \�\'��H\�%�V�����\�\��+\\�#�O\��\��\��b0�/�\�_���\�9��\���','2017-03-31 12:29:04'),('global:LESS:/var/www/html/wiki/skins/Vector/skinStyles/mediawiki.special.less:511711247b38d5ed3ee96dee4d3bf89a','5��n\�0�\�}\n��!Ѥ��#�x��&\�nC\rm%���x��h�X�g��o�ک%��\��cP\�g�r�\�d����=Bp�iO\����\�\��lc�\�{\�U@=\r4�]�mǘ\0~�V<Fo\�C\'=���^w \�\�<�Pɲ�8;{�\�\�`�\"\�D�\�S1L\�\�H3���o\nK�\�D\�\�c�\�\��*�pO\�T�ZX\��D\����Itq\�\�\�w\�.?���\�\�;\�I*2�\�F�\\$�_A\�*\�0tkҮR96��֘}]QsiL\�6�C)()u\�&\�/','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:05cf53f8b0ac2c2ab112b6035a4ba5e0','�\Zko\�8\�\�Z,0]\�n\�m\�\��\�\r\�l˱6�\�\�i\��~�\��H:�E�I�ER%�޿-w\��ß9M�\�XQ*�a~b)&\�F]�hl�{�*<�G��U�ft)+83�\�EɼGe�(\�Pi\�\0:&\�,u(\�f[JMg\�t-�eB��%lO�&UN\�\�\Z��tT�	\�ͥ\�?�\�\�P��Ţ:Gv��\�\�gt�.\�S\��n.�\�A�Q\�\�Ï9&F�1R��j:dL�?�n\��\�<\0�\�wE�}G��D��n�\��\�<��J&j�\ZI�PD��\�\�\�,�&��T\ZܓQ^T\�(�2z�\�N$4��8�\�S\�|Z\�=]~6!=|���tAD\�<�|���w�6N�\�\�\�C/\�A.?�%\'��Gjb�\�dR������GD\�\�\���H~,�1�D\���̥�g\��܀\�\�[���\'oOJr\�/�\\\n	\�ƴ/ڒ�Y�\�g���;�}\�\�8�9�%�Sp\�\�!\�F�KP�C׻�7l�c\�\�\�\�\�\�\�\�Un\nb�\�M\�/R��\�X��3e\�̀wy\�\�Oa�%\�=�9\�.�ӱO�\��\��&=B.[\�\�$\��D�_o�B�9M�1��oz�\�T^�\�,I8틟3�K���\�Y�\nH���9�\��\��\�_�\0=2\�\�1�W�������v��0Y�\�y��̣�6�����sr,�\\S.��\�6�\�U\�`\�\�t�>\�\�\�p\�E\�Ȭ䃪[�j�8$I�8\�!k\�\�s�\�[YGD\�\�\�\�@\���(���\�\�p`\�v��4?\�\�\�.\�UJ�(,�=BZ�å\�!�g�\�\�~J�A@G�\�S�`!q\�xr�U��c\�{\�3b����\�R\�▁�@L\�p���Bp\Z�b(��BIs�B�PK�\�n�s���\�\�t�\�\�{=$��M\�o*\�\��A	�\�\"=s&�]����\�,0�6�Āg��u�\�u�H?b�\nӸz�.>�\�R�\���.\�t��\���@�\�D\�֟k.`\�\�{\���z~���\�\�\�Oh�!�-��\���i1\�\�e\�)um�}4>�a87\��MK\�\��\�C����\rO��,l��V�\'+�\�\0�\�\��p�{\"��m��X��\�t�a\n\�|H�y#��\�A\�z�h\r�8\r\�\�\�t���\�\�㉣\�\��5I1���VN\nM�\r��\��|�Π,\�O6�5�L��~W�M�Ӗ��\rWv�\���_�\�?u��\�\�Db�5�\�hφT)�\�a��\�.P\�1ոhp(��M�\�6\�j����غlT�\�xsd\'oS��sp\�l�~\�\�\�}��\� UƇ�\�\�ݜ��;f\�\n\�\�\�@\�\�\�$~!Ld\���è˺q�Μ\��\�~a��7F O��vq%�6\�N\�\nB\�t]!\���\�I\�\�-�ғ�\�dYa߷�z\�^\�$���.\�$I\�F+�(����\���\�\�mOX_\�\�{�\�?@Gsn�$R\�N\�R�@	\�:��o�\�\�\�\'\�\�\�\�5ÿ�7\�_@�e�\�5\�A�\� \��=�\"/\�~\�f#L�j\'�B(�%\���k^qb�/|��W�m\�\�lq\Z��*�xY\����Q<�`\�\'\�#6�\�\�@N�S��:\�\�\�\r\�گd�w\��v��&y�\��\�C��Z�\�m\�i�V��\�Z9a\�ږ�;\�ʯ��]��䮵I�IR��m\�֚\�{����S\�vj\�\�\��-�SK�\"��%�\��\�o�\�ߞ\�\���������U�\�\�,=\��H\�˳c\�\�HYxd鿶/\�z�\�U!5s͉?g�̡hA�\��k��\�ru��W�\�-���,��s\�\�9��p�dB��ZQ\�\�p�\�w��\�\�^{=�[wLv\�\�o��ʖpދ\�7\"��y�\��2K��>���>!�R�s+_L�\"A1|\����`$�\�`�>]�7R[PW���s\�\�`d��FVȡko�E��+\��5F6\�bd��V�\�\�X\Z#Y�d�HV Y\�ɺ�X#x�\�-�w^�$Z#x�\�-�w^��[#x�\�-�wndQ�N(P\'�\n\�	\�%�\Z�o�Cp#���B�\n\�*$��\�\�^�\�\�^�\�\�\�h�l0�\�\�#+�1\�\� x�\��[\�3>c\�3?c�s�@\"�I\�5��&�\�$�+ko�E���,rZ�|V �\�cr�F�j4�F�j4�F�\Z$k��A�\�\Z,�eP�\n�A�\ZGhD*\�\��=\�8�7x\�}�(���XOI=�S?��H\n��S��\�n\�\��)\�}�(�Ҍ�\�;gMo\����\�$��Ԛ\�b{C`�H3l\�g}/�.��<�\�D�#Ql��\�\��\�㊈�#\�c�5�U)\�\'���G���]_\��m\�Y\�$O��\�\��\�}�����\��\�}\����\���\�\�o�熾��\�\��\�\���\��&w�Y\�wʉ\�\�q\�/�\�\�\�3�� �ĳ?Ͽu�a�E��\��B�-9�3�m?34ֺ~$hI�(����ɒZ���N��0\��\�:\�#J�J�O�#��bЍ˫�\�{�G��aG�0|�_��\n�U:\rC\nܳ\rz�\�^{�/f�B\�\�\�#\�K\����	6a�*�b�h#�W�N��L[\�/��\�	�Ji�\Z|��HhT�\�\ZD\"-yi\�\�\�=}\�\�\�\�o\�\��o�+�6M90�oi��F\'f&r=&	�x�ى��Mwm\�=g\n��ֻ�\��\��\'����\�}D���\�؉o�c#>�u`\�\�w\�\��\'�ʹ~լ�\�e1\�e\�\�~�\�\��','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:134e11620bb65534a45fd5b31853a3f0','\�<�rۺ���{<��oD��Hs�,�8q�ə7s�\"A�6E꒔%[\��,�\�8\�\�ɋ�H$\�.�-X,����\ZZ��O�\�Y�؎\n�\�d\�/\�0H�\�{D]Q6�pZ{:\�1�Fㄤ�&V4�ЛZ�\�#x\"�\\k\��\�\�\nb.F�\�>��C˾E\�,p8;�è�\�j��\�O\�)Ar>r14\���<#E]q�hš\�9�\rKwt\�L3�7��{N2�����p\�\�J�9�\�o��?=ǋ��xa\���(oX?�%1\�l�\�\�|\�-WB^i���\0q\�Pz���|4yMZBQz,\�\�R	��^0[��!�\0�G{�\0\�j_z�	\��L\�\�lh�a���\'�\�H�w}+�k\�Z�-�\r\�\�Y\�1j,]I\�J߅��q�\�8Y>\�\r4)S?\0��	.\���Ȗ\�F5���ceQ�i�\�<�̳�,�Ƃx���\� �<�\�Xj���5�ܜb���NS+��gm$�\r#ð:M�TX%�E5׋\�\��p��\�=�\\?�w\�\���L0/p<\�J\�(^B!+\��\�UG�h��:\�\�0��\�Fȷ\��10�\�+0,/��\��?�C���\�\�����3�\�G�i�p\ZF����rB\�\�z\�Т\��G\\�0E]ȷ{L�7�F�;��w��X]�ډ\�G\��W7\����O��\0\�C?6\�MIy�!v���&_]\�qΐ�6\�\�M�\0\0�AL��d�)�7�=�7�\���̃j�I\0�I{��TG)\�T�Gi�JS(\�b2��\"��\���4[\�\�:�M0���R��|�&mJ� ��a�\�giS\�\�V�v\�ޝ׉\� \�\\�\"�Ɍ;Ù\�\�<P<@��)8���7�H�i0�9#F�\����O\�\�§�Q؇�㋫�\�\�?^��A�\0~vf�oO]���_\\�G�\�|�\�?5\�\�\�\�\�\��ݳ\�s�s�\�Σp~ch\�\�hw;98�8�{�\�\�\�\�Np\��\���\��\�\���.\�.fg��`��?\�[��/$����8<M#DDU\�詧\r�+t&���%�\�j(Bt��D��U\n\�#Y\�Q<�	/�ܞ�zyYݗ\�=n\�ic\�M�\���H\��Y�z��\�\n�hx)\�\�B���$\�l^��\�2ub�ԪiT\�4%��Ws�L\�T�\�*=\�$J[_�LHqf�H���\�\�S\�\�͙G\��&\�T��\�\�/�3K`M�|1\� aM�M�,\�\'6oV\�FeQU�\�0�X7�`\�\0y�D0�L��\�\��V�)\�Y\�\�\�$\�.��\�Bq�]O�� \�\�b�!�	�\�\\ \�\�z��ŉ�\�۳\�x�3�\�I�=Z�\0ĚOy\'qXuK[Ӭ�=�&Z(�O��U\�BZ��\0jܽTY4M~hYZ�V���Pz�~fy���hy�\�\rY\�r\�=4\�3А���8��ˈk�e�lE\�h�\�h��\�E\���\�A3�\�#v\�4�2k\�\�IQ��)G\r4^S5�]\n��W^(=�yQ\�\�\�\�\n\�\�6(*	�\�Ȱ�\�_�T%��\�x\�ſ�J�(�F�\�K�]�\�:-��}7$(-P$E��RФ�u��CaML˂\�)ᦊ\��7�(B\�U\�9��@05^t1m�a\�\�\�\Z\�L:�Q\�\"�3@2!_0N\�?B�Λ*�\�0\��d8M\�\�)z��\�d�8RC�(8h. 4��\�cŮX��\'#�\�0SD�I\�B\�����<�xE\�\�QyE%�	)t ��v!�=\��� ��j��\�#�IJ9��R\�\�\���\�ٲ�6���vǶ�>T�\�Z5|\\\�}s�̄R�s\�\��7o2\�\�\n��\�ܗ:\0@\�\��g\�\Zf���I8�!�I8��U:�Ӛ�A�5˄iP\���i[J\�\�\�\��\�\�Qgv_d<���jP�\�\�WXc\�qP�4\�\r�I�x��\�,\�\r��U�@`\�\�\�d\�: \�>�m�x\r\���7 ��ӂ\�2/C:�\"Ɠw���Z�5/\�0f<\�1�>!\�ڰ,+u\�}`��\�\�GͶ\�k�\0��\�.��t��ԏW\�\�?;�p�y;>\�enw\�㝎._\�8�Ɠ\��\�ٟ�\�둼�\�҆�#�B�\�\�\�\��x~�\�FwG�\�?�\� �\�\��1�\�D$C\\}X\�|ha�[�\�\��\�5v��O��9S\�Ɲl�@u\���E\�i\�ِ#�~��\�J�7c�2�Eɓ\�\�\�hx\�\�O�;\�\n0�X���\�\�w\�О\�\�p�`�E\�\�V\�AHl4}�L��y�nsdD���>~]\�n64)\�8\�#�x9_W\�ƣ\�s\�Y���.�Z3?�\�V�h��Ƚ�\n9,Y\���\�\Z3S�T�s{뾨;\r=X�F=\�$�\r��&��-�+\\\\_\�\�\���[~�\Z\�D�Ȧk\�?���\�{����y\�\�%0�8�\�;\�1�\�:4#�$5�>.�<rp��/�\�\�K\"�\�E����\�\Z\\l[ٽV�\n���Z�\�\�dۀ���\���_d\�\\^m�\�E��k4�QU	f\��\'-��Ps\"��Y�2�r��\�\�\Z��\�\�\��\�㙐9�O\�`���\�\��\�\�\�(\�\�\�\�\�}�\�N�\�\����}�F�\�ܞ\�\�\�����X�}<�&\��\�\��N7�/��;�]�\�\��\�j/���%��\�0B\�!�`:\�j��2[\nUy10]T\�5�HB��\�}e\�\�7=נ\'�<[��/�f�~؋ʐ�ɡڸ\��\�VvÎ��?ߎ�\�w\�\���e,\�8�$�,��4>\�\��=\�8\�jG�y�\�\�G۷�\�\�\�ܑv�o\���\�w:�S7A\�G\��c����H\�|\��yv\���W\�\�`v{��*.��O\�?��/_G\�\0֐�_�+Dۮ+�5e4[Z4��\�D�\'&si	Z-��$>@�\�^�N�!\�d沥��j4@��\�P��FD\��Zrɚog7\�\�p[9\��\�h\�:��]\��\Z\���\�ӂz�d:�\�3=n�\"�:��,S���ƛ�A�mZV\�\�C\�8t��\���\0\�\�Λ���\�T<4-풠)�\�T��\�nX�%�d\�\�Ȱ��AskO_e��_0VqL\�$�\�4\�\�Tff�U?B�lY^\�1�*�U�y�\0*>J�\�J��I�V�S\�\�r*II�\�7�\�_\�mw6�\�*\��R��)<�iW�MS��ue̊\�j3�I��+�\�\�ވ\��Btb\�T�\�\�OCs�5��\�\�\�Ա�(�sN8\n���K��\��&���\�_�򪀋k� �>�£�9�#��\r6��?\����	TIIq$W��۷v�\�C9C\�@K�\��s\Z �,�f�\n��%�\�$\��\�Z%\�)TG~_{ad��q8�¹�[$��\\��k\�^)�\�9^��f\Z��[B\� ���?�w\�˩fۂ�崑���~\�̿,�\Z\�\�P\�\�D�296G����\�m\�\��ﱗ�F��<�\���\�x\�ӥ�\�{��l��P��w�;\�^��\�g\�:\�\�s�\�+�\�\n\'G\���t�����LV��\�~�,m��\\\�\�Z3?aj\n\�z���qeO�\�U`�\�&��K�\�sK��L�º���\��\�-|:�j\�7�M!\"q \�|����\�\n�\�\�n\���/�=�Q?ͱ,6=\�+�g��zp#k�\�VB\�\�ҍ\�ɲ4[\���.\�}\'8h�\�\�\���\�\�$\\\rT֞�\�\�x�\�\���DO~�Nl\�7\�Vb�S_U\'�	M\�Ma2�˾2/V�]z�a�,ѕ]*9���F�\�9i`\�՛�Z�.�]Lîm\�/fֽ1��\�6֞�\na֋\���t��h]+/�!#t\�%y�+\�`�\���hK\�q]\�Vl����h��×\�+��\��P\�`s�bګ���Y�\�˚�\�GJ��y\�L�!M�y\�\�\��\�ô%f!7o�E�2.�\n�$\�x����\�*F�\�t�\��/\�Y\�h��#Y\�M\�� ���\�^���B7e�7d�f**�TEN\�%C�ϐC\�p)����9R5�\�a��%H\�&���a\�\�P\���\�f�\��\�ND����k���!�h��\�\�F�U\�SM��RuV�\"q�H��\�\\_��\�r\�诿��T\�\�3Կ��4�u��AW�\�\ZE�C����\����\�o[\�-��\�����\n�?�j�\��_-ٔ�{\�jEW�H�v[\�\�*���-�~y�\�\'��PIC]w~�\�Rf\����Cr?EM���7V\n�ñ�\�\���_L��\nҕ�\Zݹ�4��X�\�p(N������\�$ny�\���Z�1�t�h��\�%\�,ƞ\�\��}\���^��á{��i��\n�\�۫y��0�P�\�ު�\�D�jj�D滛̹���F�����\�\�P��3\"\���W\�ye\�zUu^\��J%I\��Ď�[�\�\����6N�9gbJ\�vvq}�MoX^9���n��m�\�x��b\�j�\�_Mv\0U\n�� H\�E\�\�o�Q��V\�ҽgO\�6�?��P=\�Lnb+��2\\�(\\\Z}�o-�冝��\r��a\�#\�E��K\�\��-�&V.rڠ�\�\�P\�\�*H|v\�G\�*I5\�F\�\��2G�pv��1����\�\�g�V�^Si{�_v�\\s\�hkJ[��Ao\�j\�\�p�kKε�9}[>!N\�\�2��\�s-�r\�񕧓_��\��4�t@�\��\��ypGs�0���y/&���ӝ\�P�\�<\Z��!�\�݈W绮w0� �I\�ۏ��z!:\'�\�ͱ�tD�`UY\�0�\�o\Z��q\�@�\�Φ\�ϺH�Dje���\���\�\�X�m~d�x\�l�t� \�}\�obZê��VQ\�%L0,*\�\�q�}MԠ,J�(kW��CA0*\�\�{VZkɌ]]��4�||�F�-\�\�4pe7A�կ-\��Щ\�go�,�|�\�aai\��/�r)\�;�n�E\�S\�R�[\�/��K7\"�,T	���j) _��DV���a]�涒;V�#\���͠\��^��p̍�\�ze��Ό/\ny�:ΐ��6|\�\��%\����gx\�j�\�\�\�\��\�\�o����\���\�Bvj��J�zT\���iH\�\"��H~d\�߂\�\���(A� ��*/��&�\�{��7e\�ǗR�\�\�\�b7�\�˪f�f\�/\� \���8Tx�$��\�\�;4��֘��ok�ꂠ��@\�+�a������\�/����	�n\'(@\�H\�x]�}h�!\�\���\�-b�*=\�\��q����(\�}s�ey����,*]z\�i�+\�R�ͦ��e�\�\�\"{15��ɥ�\�w�tXcF�\�{*\���QE抪�^�����Jf2���E��?z�','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:137cb5df15b45f22d765346f6e0ea264','�\Zko\�8\�x[,0]\�n�W\�{w����o�� \�r��,�$�i\Z��%�A?\�\�`Q CQ|��(J�]�����8���\nr��A\�M�b\�\ZO+\��4\� \�\�P�Y\��\�wC%����2�-H�\�\�	�Uh\�4U��ӵ,�)\rc��=-b�\�AA\�\�\Z�\�tT�)ϥ\�\�g\��Ѐ\�\��s��)\�%\'�= \�p��`\�)�n.%��NWq�\�ݏFƕ1R���j:&\��w?�åw\���?\�\0\�q�����<\��!�CL�C\�X}7\�p�c\�wX+\��\ZK�R\��R\�\�� ����R\ZܔS^\��\�UYJet�\�\Z�4��8\�[\��=\\��6!=|%��]%�( ��da�ͅ\�=3��\�0Xȏ�iɉ�ÙY��Z&��X\�)yL\�\��\\�\�\��\�5ᔨ=��C\�<�\�\�Z����\�|\�<x�2R0~\�RH�7=\��z@��\�!d7\�\�=zD>�tDg\�w)\�\\�p��i#\�%l�\�q\0\�09l�c\���\�\��B�DX�$\� in��:�DOℜ);\�\\\�\�VA�1eoQCiw�\�\�>\��y��O\�z���ܰ}R\�Nbʯ�Y?\�K�\�4k\����1饾QeXBx3_�4\�t\�~ΡR�.��gE\�\�)���OU@�\\\�,5��e���G&��F��32<3�7j�27*Ԩh�ɫ\"NHi9Yڔ� G��\�5㒘֯�R[\�-��T��>!\�FU_��YQ;T|T��헇��)G�8�o���~�\�\�\�	��9\rv6��o�\"8�=\�}\�>E�--M1��p�\�K�{BHgw�d)d��,0�\�Ĕ}\�,$\�O���o95�.��\�bc��?��\�\�.7P�n\�\�Nd\'\�\�\��Ҋ)�4�\�U%(�Z\n�p���f:7ţm���\����l��<-ퟭG�\\B�Q���7���&��l�#\�D	\�X�呾\'T��u�~]����\�x\�\�W}\�W\�.#���+�|�\�6Xpsع���w\�i\�C\����\�(�sS#s|\�|�0?w}c�Ō3s\�{LS\�<)$!MNp@.L>�\�S���\�%,\n-�j���\��\"\�\"��%\�1\0� �&.\�`s�! \�\�#m9�姗e�B*��6}4���\�a��4$\�4:�sе\�\�OnO\�w���M�QMh�*�rRj�o܏����L\�O��5�\�\���)_?�^\�-\�\��\�B�\r�T�b\�?\��\�\�LvL��\�t\�FT)�Q��\�\�P%	ո|p�H��m\�%\�䖩\�=/�\����.�\��m\�|n�mꏝ\��\�V�\0rez�\�\�\��\�p�� \�W\�7\�\�!Z�U\�\�Dݠ9LZ�gm\�\�^\���@k�$JiX�l�\�ܶ tM\�52}\������^\�99i��>\�\��]�^�r\�\�,�\�\�OY�f��c\"�(���g\�3t��Qn\�[_\�\�q{�\�M@�sn�%\�\�\�V<C%\�;��\�\�\��}�\�\�\�\�\n�\�\�\�PB\�e�]7\�a�\�+eP���A�f�\����X\ru��\"�\�vq�\�;��!��\�*`��l1\�5B\�_UX�S����&!��+���L\�\��kC9OOi6m�+����c�k\�9y\�\�<E;�}�\��\�X�\�\�\�$#�N�۬�r����r\�޵-��\�+��w\"w폔��k\��K�Ӵ\�,M�\�\\\�`|��\�LFr\�\�\�6�\�;o\���6�����lT�{�\�أ�ZV\n�գV\�c}(���\�#I.��\\?\"aёe�\�>g\�\�.\\�\�\�5*���?�Bђ{	h�οO;(@��n�o�`d�\�[�.���+\'ԱB�ۮ��g��\��n\�	\�m㿹nh�\'8�\��\�â\���E\�$�=|�z8g=|B4\'$�\�V� � A�b�\�$\�.	��Fx�a�p\�Um�@mr�\�\�Y\���x�Ã�\�\Z�o�C�\n;}�<\�\��:��cňx\��W ^�xE\�\�b�\�\r��\�!x��h�\�\r��\�!x��n�\�\r��\�!�\�E�:�@�P�N(P\'(�\�ko�E��-�B�\n�*ī�B�\�{A�\�{A�\�K���`�[<\�\��\nm\�5�7\�\"x�\�����Ϙ��\�Ϙ�\��\�kyM\"�I\�5��\�\�\Z�o�Cpˋ�V\"��\�e%�X���^��j�W#�\Z\�5�\� ^�x\r\�5�ʠ@(�5-�Ѝ\�Х4\�#~8[�\�8I�\���\�\��G~\Z�O��(2T�\�P�>\�\�é��_9\�g��*͈�<�6�����Ju�\�jMd��-�d\"Ov\��`\��\�7\"ȑ(6\�Ou�\�\���W\�T	�Jm�H��qR��Hp\��\�\�\�5\��\���\�{\�ٗ��~����\���s�st��\�\���+���9�\�\Z\�[�!\�\�h��x\���B\�[�{��7\���\�~�k�กu\�]\�g��q�Q}�C7\rg�\�\��\�jo�ۛ�$v\��3C��W��s��\�\�GD\�}��z\���\Z����`¤R\n|2�\�m��ܽ\��[�7?��=�y\�p�a�\�ɰ�\�FH�{\�A8�P��\�/dN\�du\�\�>[\�\����5?��\\\�\�\�\�H\�\�[ԡ9ޖ\�bP۷#&L&��j��&zOi\\C�PڙEb-ye\�\�\�=�\�__�\�\�\�Gbh�+�6#BM9��n\�\�\'ff&\n=E�u0V9\Z���(z�t7\��[��\np�;�}}�	h�Ϡ��A\0\� ���׾�\�\��i�\Z\�_G6\�T�O\�֟y�]\\\�\\\�*�E�\�\��','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:13d1b02022618f2882241f315bd6019f','+�26�R\�\�-\�\�HML\�\�\�K\�M\�K\�\�/�N\�,.\�I��\�\�\�K�U�\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:28cb4ac20918c47d667e1ca60e22a633','��\�\n\�0E�\�;D(B���\�4�5\�\�\��\�)\n��\�c�˹\'ɚ\�\�f�\'� :�!��w�\r%ʲw\�\�\�s��r\�%6XB�5�Ύ\�7�h\�8$W�\�\�\�Ɵ\�\�\�k�\�D���ܔRoᗮ\� ��$8Et�b+�I4WZ\�,G\0Qh\�\�\�U�\�\�\�q��\�\�\�g\�hgƘۘ\�T\�_�S�N�T\�D�\�','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:2fb26cab51b5b6b8d6316dc023790fce','�T[�\�6�+�S!-\�\���\�\�jo}k���\�k\'u����wl�,hϾ�93\�\�|s�e(iAX�Չ���\�ѵ�\�\��N��\�W{8\�\�Z\r����3�\��[��Ъ�orSL�\�z\�w��U�\�l�Ӂ�\���N��-ju��)\'\�9�2Z�m�m�AV5GWR\�n\�#�����\ZG+�\�4�pV]��k/\�Z�iyp%�)ߠH�7g\�\�\�:U	�>�\�ɋC0�Ɣ�s�E�}g�0.���Π�Orp�3׽�^\Z۝��,OV?�G��\�V\�\�VrX�Z��V\"\�\Z\�!`X߸po�o�$Ym?\��)	�\Z+j%�{Z8+�ǂ�|\'/VϾ�Z8Q�\��pn~���y\�]�HKF��2.�oK\�(&�*M\���E�\�?v���[�\�\rD\�f�G\��%�e\�v�\��w�v�\�܅\�<�\�c�O�n\"|�~�\��,��z���\�Ѽd<\��/F\���\�\�2`#�B).h\�E4�	\�i�Fa�h:�|�o@\�y2\�3�\�}��o(Cw\��ym&\�J3�gy�p�\�XN6\�YQL\"\�iL\�}\�x\�!\�;�x�V\�j\�)\�r��oo��[i�f���S�\�@aPR\�8N3H\�7��\�o\�8=\"�I\��FxEB�9N�\r�$Y�i\Z��si\�4��|�$\�P\�UlJC8�\�\02bv=\�4!\�\nL�)�D\n=�$��,}YqD\�a�\�\Z�(�\�§!�;�á\��^\�\�el|04v(\�yЊ<\rGo�\�\�\�\���]�����V\����(y_���^\�I��\r\�U�����_���0\�\�z\�\�[��\�\�Fqz�\�3����oa��i��]=b:�OM\'���Q\�_�CaB�\�r�Z���@t�ڢv�\��c�\�\��_','2017-03-31 12:47:52'),('global:resourceloader:filter:minify-css:7:30597275d53f935e6d8dfbfb67ff9e55','�T\�n\�0|��\��l���]\�*3\�e�%C����\�}��~\�M�a�/�G�x<;\���흼�\��r���T�T\�`Q}�=$\n&02�\�~�jp4\�J\�o�.D�\�jk�\�t�\'\�]e���V\�>�.�.�JӠܙR\�X�����2\�\�\�zmm���ױ}���y^\�H�\�zO%8r\�\��$7\��[х1��\�!\�\�u�\�\Z�j\�\�<S|M\�\Z�AL\�\�#h\Zm�$=;�Hʡ����5��{�^�C�KG,��|\\}\�<+�������|.�]\�;���W>G��Bp�\��-��,6�\�C���\Z����\�\�Т��)��d�\'\�:8SRL�\"\�C\�&l�\�\"�\�{�\�	�rG\�\Z\�`��t�)AΨA&�:�./!�m\�rf-�g�\�+��\��=7T	Tԭ@&;Z\��\�|�\��O\�\�\��%X����#\�\�\�X\�c@���\Z��A-#���ƌ4\�/\�۫���r\�\\�z^UE�\�\"j\�ig��	�\�R\�\�\�\�{��\���8\�N_��#�2�5H\�]\r1��m\�\�@�\�W�x\n|C\�\�?\��B�\�w�\���\�\�9�3\�\�Y\r���y�yx�\���X!-~�_l��|;�\��()��~A�\��\�x%:v*6\�\�N���\�','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:4874e3cf67aca4a08a401f390c49bfba','�ێ�6�W\�D���d&S\�\Z�\���U[l�c�\�	�\"��\�6	���F�9ǜ�}\Z��\�=㧟jF9��\�\�v�T�7k��B��\�n�\�\�M�ı�HI\��\�6��\\\�[	~`�T\�2�� k<M\�)e\�\n.�vl��YӐ=\�\�\Z%ܗ8�\rJ#\�b@����F\� �\�%/\����}|O���[����p��V-\��\�\��B\�\��\�:\\�\r\�\�\�:���\�\�8�V9\�\�Y\�0�Ɖ\�h��3�\�z�+z\�rR�F%ś�,3�2x��iV�\���&�r�\�i_m\�\�9�^\�jW�q�}W*iQ˜A8W��\�0r@���arR��\�.H��\�o,j\�Y0dϚ\�\�#1�\�ݠ|\�\�(\� �U�s�<�:SFWD6�%k9U-\0�6!���\�[�2\�\�jQ\�T�F��\�d\�\�mm�\�\�6k+H	j4d����5D\�\�\�3ub��\�\�hU\�\�}\\��\�\���$\0\�\�X\�\�$F\\6��!H�\�\r\�����\�{�k(8��\�^���_@�f�\�m��i�.��\�ZK�\�j.Q��N�{�GI�����\��c��\�[�o(b,�\�/mV@,t\�\n\�-Mt5q��5U�ƪb\�\Z\\(���i�%8��r�\�U\�.�\��\�\' MBf�wh\�7\�\�(P����]\�C��vl\�;�\�+��P�\�/��?��\�mnG}+�&\�\���\�}�C\�:\�<�d*\�͑G�r-��$Wf$��0��!^�\�Z(8��!�)��k͇�2��>FO�B?�~\Z\Z��ڤo\����\�?~�ۿ�k\�0���V7xiiO\�Q\Z�\�3I\Z{̻13Ӏ:\�e�2~9\���<.+f��\'rI\�S~J`��s\�\�y{8+#f���U\�D&@։];\�\�d�Fi��n�\��\\f�\�:�\�t�I\\aZ8(�\��^נ7�\\U��1ȝJ�\�\��i��2\��\�Ѱ� �\�q\�+�ig�\�re����n�ϥ�5\�u�A�.\�XQ\�.{�96.���w\�q+����l\�f�W\�VUL\�\n�]�/���z|V\�z7����������\�\�ǝj�\�\Z<\n��xN)\�����\�\�\�5��K3uv��o�a�Bf\�\r\�\�V[�c�~U�[_\�ʗOw�>Mx��8\�9NWb2]������\�S\�nt/\�8%�M�T0T\�\\��dg\�wG\'�ϰu\�Ǔh%y\�\���\����\\�fC��\'n�\���Y�aE�P\�ᦥ��%\�շ\�`��nv\�_�3m�\�**.\������T(0���[bv!��S�','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:58a5147982cfcdd2c518d1c40c3cf9d0','�T\�n\�0��\�^�(H��H��d��	˒!\�I[\��>Ju�$M�b�\�#y<�\��\�ö��\�BZ\�A���H��P,�\"B\r�|�tAz)��\Z�,��Tm�\�P\��P\�e�z�.��p�k\��=�۽�1O�+�s�T4H{�6\��\��h����5�ZS��b�6�\�\�\�/�\�|F�\�9G�\Z:\�\��\��Nt�U�\�P�H\�\�*�l��\ZJ���g\�.\��\�g�. �\�;\�\0\Z(\Z�w$\"�X(��E5}Z����=8���k\�\�W(�V?v\�\�`\�ʀuCS�\�OՕ������t)2D\�͍\�\��`�ѻ8\Z$�WP:�ߝL}~P\��7:H�\�\�[^�SL�VCn\'�]��U���Jڙs�Z[\�~I�I$�(�!�\\�D����aqfA�g�\�3�\"!\rZ\�C\�-%AT#���\�zI�DL������\�\�\�狰\��`\�[\�c>�\�L���?jY7���\n^��1]\�֡SY\�y]�\�����\�]�\�4\�\�sϯ\��\�\�c����c\�\��D�!\n7t�8~\�\�>x�\�/S�a\�S��\�jj�e�\�\�+��k\�\��\�]�\�\�\�|[�1-�?��\�\�c\�#\\�C,~�d���\�\�K�\�\�\"�\���tG��0G\�N�\Z�`�\�n�','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:5a34789617fee7de16cf2bcd9eddcf63','\�<�r\�:��\�y)W\��\�}H53+\�G��>�W[5E��D�\"5$e\�V�ߧ�xH�\�$����H$�n\0}�\�h \�Ȋ�*�?F\�8�{Q����:�(n<\�\� r\�#\�G)I\�\�x\��;�]\���D\�y�\�:�&|�b\�{\"U�s;��i\��NDq睧\�\�\'�g<)B!��0\n4. K�\�\r�\�EqG�\�sI�.�\�6\\ó�4��q\���\�#h\n�K�I��:\��䯛�\�\Z�t]?FN\�Ga\'H㧼i��\��ӄf��e���\�Kơ�4�~��l4�p\�i1���Ɯ�(=�\�Fr	�~8�\���S\0�GkE\0\�n]�c��\�.�L�\0L\�h�d�k:�\�\�	\�p�����M�\�\�y\�j,]I\�K\�F��q�{n,Gˮ��\�e�\��x��0Ņ��ز�\�fp�,-�0�U�g�y\�\�\�a\�Yp��,\�\�t\�IP$�K�������Q��(p�\�ijY\��K#Ɔax�P���Ϗ��#�q\�\\t�b/�f�;?�*\�]߱\�(N\�P\�N;D��\�]�AL���D�O\�7F���w��������\�\���I`?��� rn��P@\�����Ĺ���Ɠ�\�$�\�\0�E\�0�\�i\0TO�M\�C���a�:�\�t�DlQg\Z\�];�;䵝\�\r?܃�\�P�\�.<m\�\"P\�P�7dYD��T:A�|y�˛8C\�\�Pv6\�\0\0XP`�	-4J\�Ɇ\�ېw\�\�l6f�\0J^dH\'\�\Zr�DS�J�i\ZM�$Ȋ)�\��c\'@PĹ�ٲ�\�qh��\'ĕ�4iCVDQ�M�</z�5��n6�i{\�\��\�\�\����\�(n�̤=�@.\�U \0�Y��Y��Q�{�:�p\�G�t�\�_m�\�\�\�{èG痣�\�!~�$\��\�>�lO�ܜx8a+<;�{\�\�v�wb*\�[��\�?\�;�Wgj\��D��\�\�\�\�\�ף�\�\�V��~\��v/���\�\�^������\�\\��\�^ܞOO\���&��֒Ư7Я!E�L	F\�i#\"\��b���@_=q\�@�\�Q����d\�ѹ�ݧ�vP��(2�!\�~�L�TU\���>/󹀋\��	?�B;X��`/LS\�\�4/V�D��U\Z��\�\'V�%�f�\ZD���%I�\ZK��Õ�~e\�%2;sT\r\�Z]\�L\�zP�Zp;J�\�l�㓉\�\�\�b{�G+姠�\'\�\�~���yk�C�qr����b4Aд0ʞ�R[d�Ò\�!%EҴ\�n\r;\�1L �)\�\�&��\�s�y\�l}#\�:M��jݐ�\�\��\�ד(N�\�\�\�\��>d`<U�\�DS��\�\0$�_\��7Ѧ8q\�b[����>#\�I\��Tߥ\�	@�%IpS�U��5\�\n\�wi��\�g��� �J�{�\�\�s�%˲\����\�iqrO\�J\�\�\�*\�7��-O9��\�yΝ�f[Q\Z�	\�\�r9qm�2�[\��!�e5\ZkavQzDjhyА��w���\rͭ\�_��@2T��`)�Q}]\�5\�\�A�Bn_TS�J�A\�xQ��\nv�\�J�	�R,\Z�\�$�$\� �\n��\��*����0ْ<\�P\�A\�\�I\�MJ�IiA��u9{��d\ZPX���`�ʸ��	\�\��/��h�&<FA X�/���\�4q\�\rwO!\�)b	��A [�/Z*�!\�,��\��	�,2���\�=T\�\r2^<�)\nS�4���P\�ba�KJ���\�dZ\"͢c�*yS	E5]\�˂�\�\�h��\�J��[˺P�\�\�`3*\�1D-H�\�\�\����PV�h\�A�T\�lٜz�\�]G�c�\�h�F��\Z>>\�9JfB)O�\�\���?��o�)�\nK�_\�\0��1,h�3�7\�Ĺ1�\�\�\�\�)OEU֜�����´�\����m��\�\�\��\�\�R\'�j\�f<f&uvP_	\�)\\#\�uQ\�4ˋ\�qk�ꇓiZ�he\�B���\n\���$@\�tD\�}\�\�&:�:\�\�\�Y��N\�\�\�sއl(%��\�y)5C\'����10�{�����\�ٶ��{�_\�)D̤:o�fA���N\�`\�k�\�I�t�\r�\����_��S\\\�f;:\�n\�\��x4�x�l���)>��\Z*\��\"}0<�/tsDV\0[�\�.����\�p8�\�?\Zw�pP*\�J\�ED<4\�3U�,\�ƛ#�^7�\�_c�*-x�`\�ڸ3\�\���m�>A��\Z�?H�s��\�3ư�\0_�\\|]~��>H���\0�8��\��]��\�E\�4�G\�\�-�BXYA\01q\�(\n`r6\�3X�q\�_Y=z|]\�N>4˸ȉb��?_V\���\Z��i���.\�[\� M\�Vy\����Ƚ�9,_\�\�֜�r3W�T��\�tg\n뿸3�|X\�]��,JC�����B+��W\�\�����Wwp�:U��&Q,\�2~��[\�)�&�Xi-�\����1�$��[\�3��:4�0)u�n/�@\np�%Z��\�\�k#�5��\�xa\�5x\�*>��ǭT�\�5��-\�06E\�\�\�\�m>ˤ�\�:\�GVy8\ZĨ�Ng���\�H�.@-ԜJ�����ɺLL\�og�L3�d|�N�;�T\�ݑW\�#�J�{������/�/(\�\�\�\�)=\�\�V\n՛\�\�ٱs���_ߜ(\�͟w;���~�!|����ɭa�_?�\��\�\�(�ˏW\�\�\��j�\r��\���ٷ���\�\�m���\�|Y��\�+�	1hX�M�&���`\�\n�M\�5JfQ��u��NB\�Xe�\�\�dm\�	zfϻa_Y��oGݭ\�lWa�\"�z�S��\��O�\�#��M��\�\�\�\�\��[7�\�\�̕��n��\��\�\�/EW�G\�c��\�Pjm�yz\�z�\�iz��\�,1\�/��\�>k������hKJ;X,2$ǩk�55_g4��\�d�\'&tiEZ-���&�h\�٭%\�d�2Enn<ۚfjf���!�{�D\�\�d��\0�wr\�>���\�\�\�~w?��\�[�=�\�P�Q<�.\�\'˦i`�\�q\�\�-2�#�(J��ۼXAU�`Og7\�Gd�Cw����\�P\�jq,\�-�p\�T<4-듨��\�Vm�\�FY�)��ƬdY\���y����*�\�Y��O!�K�&g\n*B\�i\Z�cB��P�\�!x�\�鼲�c+VX�\�\n#!WB�+`B.1d�t!ۭ�\�f*��7��\�h5>z�	\�\�\�\' 7����7K\�˶jF����\�YQAU�f0I��vW�bût]6��\��\�S]�ih���S��~���:vG3ލf\�\��\�\Z�\'��.	�\�%�/�!h�&\�\� �R�k�\�G^\�\�\�cC �a\�O\�c��UR�x\�\�j\����\��P�\�xM��.X�r�#iF�\0\�8Y\�I�xk\�*�N��8\nc�ڍb���Υ\�\"��\���\�\�]��B\�$N�\�\�\�iY�%�\rj\���\'�A��\�#\�?PN��:\�W\���\�&$\�5j��\��C&\�\�\��l��������\�xt�TD�;�\Z\��#�\��m@\�$b܆\�tFؕ_���R��\�.[T�1yY\0\�\�\�Q�@*=�6�\�\���>`\�\�\�K{�kT�wy�4H��b�\'���ye�Ov�&\\e\�g���m���\Z�Z\0fe�\�\��̵\�\�\��jc�Yg!\'I\n �b#���bQrw7\�>\�cOy\��,�\�\��\�\��I�=x�=F	G\�54�\�h</M\�8<�Csߋ.\Zn2�t=�9�)��U�U`�\�eO\�\\�\�ɯ\�	\�c�\�pf�\�(�]�p�\�\�F#\�xۗe`E�*\�0]\�\�\�Y\'�\�˄��\�h\�\�`(��z\�_j\�e�ӱ\�8�wo�e����\�!L}	}�õ��\�k��>dD�������\�`��頰��\�ڌ\r\��\r�us�|}iiu�\\*l\���T\���Y@\�C��\n��d���}nA��~ȒA��rP� �D�\�\�\�+\�iӼ�K/C?͸\�	�c\�8�LP�3�U\�{S�ph-W�@\�\��\n�h�_SWq�/�\�\�x���$��D3U��^j/�i\�g\�!o�O\�\�\�<��\�\�1\�\�\�$k�\�*0Vc��\�4Wb�\�\�Q�a)�����k���!.h��݃K�U\�SMſPuV�\"i�ʿ�\�\\_��\�r\�诿��T\�\�30���4�u��A���\Ze�C���\Z��\�o[\�-��\�q́��?�j�\��_m\�R�{x\�rEW�H�v[\�꩎�-�~y�\�\'��P\�\�p�\�Rf\��E\"r�EM��7V�\�q\�\���_L�\\	�\nҕ�\Z\���u\��X��tB(N�����3Dq�p~\��`� �6��\��W6Z�\�\�8�\0X���\�Zu�M \���$�H�V\��.\�n\�+\�G��=Ÿ�flt�e4�&	T\�K\�� z\�݄��?$\�ŷ�4o��� ���\��8\�+����\��ޗ^A�/\"�]I77\�[�\�-c\r���t�Ȕ�����@\�\�\"�x�zx\�\�ʮ\�d\��~r+ö\� �9���\0��-@���&0�\�\��Z}���KӞ�\�>\�\0\��C�4�\�d�!l\�\�\�\�H�b�q�4\�\0Sb|ϗܙBZ\�4�n�s\�۸�,�r�\�;z\�\\\r	�\�%\�ƃh-�\'I\�Qo4�\�-s4g?e0�{\�\�ʿ8�|\�q�8\�\�Ձ\�\��뚻G�S\�~-΄�fg\�X�d��\n2s\">NN��2��\�\�u�X9\��̍��\� \�}\Zi\�\'���\�\�,�%\�Ez\��\����� ׇ\�\�\�v{`L�\�ٹ�Mw��˳\�ߟ|�N嫭G\�\�;9�\�\�=�\��~:�L���li��7�~�ֹ\��R�gS<h]23\"q��o�2Qf\�!\��\�G\�H\��J�\�=\�gA�����0,�\�i\�5\\\�\�\�\��!�\�\�D\r����v�j�8E�\�\�\\\'}`��Ƒ\�\�5ѥ	H-^\��\Z�`\�\� zˋ\"Pl�\�EK�\�R�q/_���m����9�!�\�˥P�\�\�NFq�O�q�Y6Ò�[�t�\�\�B�h�ڰ�\�s�L�\�rȡ\�Bmn+��`I;\�<��\�z\�\�\�-�\�i`���\�8,spuz|�\�\�r���\��ɋ]E\�ܟʕ���v\�\�>��V�N��`Y�\�Xk\�-\�\�\��oQ�&�#M�L�J^�ɏ쪻\�h\�\�-%J%\�N\��T|�h�b�\Z+�|\�\\쓰E�z\�-�e�ĳ`bg�)�� �MU�	�\�h�%X�~\'�.�j ���*��v`���/	�|��Ho��\�V5]0d%�V�2n���\�;fj�*�Ə�F,�쑐U�\�;�\�\�c\�<���\��','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:5e2947b147d8f5142f5b5b81a47f3dd9','��A\n\� E�R�����s�I�����$\�\�kB�Yt3�����D����sI�����g�,8G7�\�x%x\�\�\�]x�s\�60K�ʎ\\��4s;e��|k[�x�\�����B|\�&\Z��g��\Z�0ِ?\rmp��ȃ-�\�i\�FHx��\�\r','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:6b0c5354a9e9f765dedb3b3f11c04637','�TɎ\�6�\�\�H�\�݇A��o�%@��D\�DSK(\�r\�\�O��\�6z���U��\�\�\�e,iN\��{-q;��m��7-\�z-�RG�v����\Z-�)���oު;�j�\';\�ٯ\�}ojiP\�\�ޔ?y?ha�\ZmT��\rHY\�.�U�U\'��0�\�Q\�іT�\�\�nhD%�\�Ɉ\�-z�k�5\��]Qתk��[�@�\r\n|{�\�!�,�U�\�\�\�l��X3h�\�qF_T;�Ɗ\��VU\�w\�\��\�k�\�Kc�S#kE#˓\�O�I����c2�7��6��������772<tͷ\\����hݜ�A����}��Ȁ�|\'G\�gWA-�(}\�f<7?_Z��⿮��#\��W��cX�]ջ��\�?v(w�[�\�\rD\�\�<�\�+�ˊ\�\�?M�8\�\r8\�!����yR�=� �.)|�n�\��ԧs����\���b<\�\�/D\���\�\�2`#�B	\�i\�D��1\�h��ath2�|�o@\�xRǳ�\�}�\�o�(Cw\��ym&\�JS��Y�p�\�P��\�4\�g�\�$�s>�<sw�,<\�9\�o5\��RX����[�ޭ4E�M_[�)Ч�0()c\')$p��^�8\�\�\'G\�0#\�\���/3\�q\\ G�zO�ĠA+8#�6IBZ\�\�%N���B�P\Z±\�8���\�8\�	q�c���\"w\��➓�r�te�\��8\�1[40Q6υ\�C�4w:�C���\n�\�\�(\\04\�w(͸\��,{�Go��\�\�\���]������\�s���(y_���\�\�Y���\�U���\�-\�\�w\�u_�lí�^[q�8?\�����\�\�ǰԢk��Y?b:�OM\'���I\�_�E~B�\�r�Z��!\Z���?3�~���','2017-03-31 12:47:52'),('global:resourceloader:filter:minify-css:7:8055499895c1161cf623b9463083d019','+�27�R\�\�-\�-\�\�\�\�\�\�OϯNJL\�N/\�/\�K\�\�\�MLO�*-\�\�\�\�\��\�%�\�\'���E�\n�\�\�͒,R�5k��','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:aebac3d10cdb36389f3783791f495514','��\�n�@�_%M��\��_D\��w}�5l`e�qS�\�;��+QU��d-s�\�a��OYH���\�a$�\�m���#蔦j+[\�o�ϝ\��E\�\�؃.Lz쪻�h�vݙ�9v�\�\�}��&�\�\�=ׯ��u�`�w�\�%\�`tG�N\�\�\�\�\�\�\�ou���\�^ݻ��t\�\�\����t>T����-Z�\'\�����5\��\���Κ\�\�\�>OD��\�\�V�B(P�QC�ǀo�7�#���-�5��\�)�6ʩ�\�)T\Z[�\�u\�d\���9OAp\"\�%\�D�1�\�\�jT\�4�\�\��̑@U��d��I aZ�P/\��t�B\\rr�\��\�\�9F�*\�\�ѩ;Yt$�D�|��\�T\�(�5\n�D@Ē�\�N\�s3�Ȣ�J\�i�H^��+=��g�\�<�\"Ȓ\���l��uq\�VA��m8L\�\"�{UL�k�b �L���(q\� ��0\�<\� \�e������\��E��bL(�	{(T1S��9ĸ HB\�SLE�M{\�W�ĎQ\�!�,��0�G�eQ��\�I_J��B���LdO�~\��=\��\�\�\�,̉D%?��+�\�\���Ц��z%��-�-v\"\�z����]IC�S\����δFi\�\\�e�mz;\�M�V\�i�ɰ�\�6�\�\�5F\\,\�=or۷���\�\�MNvU�\�7\�\r�r��/�n7�','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:b765a0fb2764712a6bc4483a49facdfa','��\�n�@�_%M��\��_D\��w}�5l`e�qS�\�;��+QU��d-s�\�a��OYH���\�a$�\�m���#蔦j+[\�o�ϝ\��E\�\�؃.Lz쪻�h�vݙ�9v�\�\�}��&�\�\�=ׯ��u�`�w�\�%\�`tG�N\�\�\�\�\�\�\�ou���\�^ݻ��t\�\�\����t>T����-Z�\'\�����5\��\���Κ\�\�\�>OD��\�\�V�B(P�QC�ǀo�7�#���-�5��\�)�6ʩ�\�)T\Z[�\�u\�d\���9OAp\"\�%\�D�1�\�\�jT\�4�\�\��̑@U��d��I aZ�P/\��t�B\\rr�\��\�\�9F�*\�\�ѩ;Yt$�D�|��\�T\�(�5\n�D@Ē�\�N\�s3�Ȣ�J\�i�H^��+=��g�\�<�\"Ȓ\���l��uq\�VA��m8L\�\"�{UL�k�b �L���(q\� ��0\�<\� \�e������\��E��bL(�	{(T1S��9ĸ HB\�SLE�M{\�W�ĎQ\�!�,��0�G�eQ��\�I_J��B���LdO�~\��=\��\�\�\�,̉D%?��+�\�\���Ц��z%��-�-v\"\�z����]IC�S\����δFi\�\\�e�mz;\�M�V\�i�ɰ�\�6�\�\�5F\\,\�=or۷���\�\�MNvU�\�7\�\r�r��/�n7�','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:bbe4b1ead3c45cb2bdb6035175c27e1b','�W\�\�&~:\�j/2^g.\�.V��\�U�\�\�4(&�߽p;�dZU#\�\0>\�\�\\�%O\�/�\�!U\�X�\\���\�\�4V���M��=ٔZ\Z��\�\�3\�Z^:�\�\�K�\�ɦ\�\�q���%oM-\�\n�\�I���vh�mx\�\�5\�Y-��$U-ΐg� ׂX\�*��BwJT�d\��>����M+�E;Q�m*ltǁ�8�R�%�\�\�dŮv�.ņ�\������T4\��[�!�Q�\�\�\0�#-O=Ѐ\'����������\�\�Ȧ���іl�,\�jwB�,7�1�v$\�mR?&�SR?\'�KR�\�WZ9\�qo)�d92�.,�{L+��Уl`nA;d/E\�p\�N�cw2���\�\�G\�[ޠ,,9�#\�6}\�M��55U-y\�;�t��\�\�R3~ϱB[vm�C��5g(<�݌*������/\�\�]\ra��� �&\�@\�,5$z\�\�>r[I\�zpz\�.�\�\�\��\�\�^8ZH8��\��%�Z��p��}Y� \�Tb*\�N��NB\�6;�*��\��w5\�f\�;�h���*�7B\��%�<��\�?wɁ��1C�o1\�!��tv8[	hr\���[\Zt1q�5U\�\�\�r\�]����i�[-�Rz�\�\�|\�\�\�\"3�\�)T�?:�\��3\\r)�tg�䕻\nJ��7�\\\�\0\��a�N�\�\�\�oEc\�z�̡M�\0t�-^\�\�\�#�\�T�\�(o�\�p�,�)�˭�2�0�\�(��Ͼ������ \�\��\�\����B\�\�ǇX���\�¤R�\�\�\��\�\���\��ϟ\����[2L���3-Y�\n\0&WqpTЫiںC\�_�3\�\��/�\r�\��\nUs+\�=�K�!&�)�5�j>��p$᜗�S;���\�\�X.Aڑ_�֧&\�P�~��\���z.�8\�  \�*�(��^�\�Z��\�J��Qq6\��\�LK0\��n|�\�\�\�h9\�\�$20�\0\�K�\�קɴ\�b���vN7$�7\\\��f{\�kP�˦V�\�ڞ��]\�\�\�\�w�\��\�)���v�\�*A3,%�_\�1%+��	}N��\�\'��5-����\\wR)�\�ɑ;\�6�}Y�1\���O�x�7ݷ�;ʨ��;[_\�G\�\�i!������a�ц~F06\�W�����|�t�\�ӄwꈧ�\�\�\n(\�I��}\�?\�<�\�F�\�\�~��̥�1A\�\�\�Y�\�B#�_D��dv[���#��\��\n��\��A(_W\��\�\��xXɯ�Rܰ\�B\�rSV\�\�ȇQ\�l4,\�7�\�A\�ʙ6R	���l�W�m{*ÿW\�f1ۚ���','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:d41d8cd98f00b204e9800998ecf8427e','+�2�RR�\0','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:d938f621a21d4860b00dc0b8aab7ceb1','\�Y[�\�:�+\�L�\�\�{�8W\�\�p\�\�/��D� \�r,\"_��\�̺�\�\�lG�L�������J�V��՗O\�p��\�w�\�i#cAiQ�Z\�W\�&4.Q�,¢,\�).y)\��ْ\���r\�HtoC\�O}p��	��\�y�㫐�^��PT@��LѤ\�\�D���Nb\�^hGN	\��H\�\�*�$L\��*\'�Z*8\�z9)\��x\\����K��v��\�+\�?^\�\�\�<\�Iu�:��\�\0(�-*��0��pGS:���>ڌ�n�S\�\�v{\�\Z/��Q��\�n\�1a\�`MƌE\�ݔg(&\�#*�\���\�\��Ȱ}�./�l�o�Hܛ U	J..���\��0���XL�K8;aΒ�\�&uF\�9S\�z\�ғb\�kS�@��qfE\�i\��M�Zf\�e,�\�2\�.�]���?\��SZʽ�E)r\�;i�	6\�\�-\��<Z�*�$�8���BoK��J�y\��@4Vu4��#K\�M\�j�Q�\�4\\�&[۔�\�򡰉\�Q\�\�%�Q\�Ʀ�v@\�\�yv\n\�E�\�f���v4\�\r\Z�\�W՝�7\�|�1��x\�\�\�\�k\�$(So��ꭢ����ڇ.У}g�\Z;\�\�Ȓ\�c�\0\�|g9Y�YN\�\�=gcsW`n�\��Nsl�Vk\�7\�\�\"W\�qq�B\�j\�g�U�.\�2�K���(YJ�W\Z�h\�II\��[��E)+\�\���ʫ`T|\�h�\�\�j!=\�++\�$\�\�Q��]e���\�<���\�U�\�[���b�	�@\�\�3	A���F��\�qҥ��DRUO��\�]J�.CV:���{\�Fwb\0�%\�Y�y�0&%�A-Eǐ\�3-��\�\�e}7�\�\�g5.6�ä��Dez>��)a�\�\�-�x_Nn^~��xE\�\�\�\��\�	�1�0�N\�,��b���\\�~QMg�\�r>R�\\U\�e�Е��Ɠ�\�\n\�q�0a��\�\�=�2^z��\�FD6j&\�f�:\�mfu\�\�B��Ы�;�����mG\�ƞ>�����C\�^��^3j�f~(�u.�\�I%i\�=ܙ�\���Q߁Jwú\����\';�\�\�5�\�ڵP�QLqjdߛ�\���\�z���\�\r\�$k\�f\��d\'�UJv\�a_�\�҂�\�jt\0L\�+�yBm0H�!tc\��i��cEFS\��.\0#\�ڤ6%n�\r<\0\�\�J8?�P��уA+��\�bP�[2|P��2�Y\�^<؃��\�\�l\�jT\�Vt�\�h�j�2�\�;\�e\�\��]|/�t*yߕ�2p\�x1F3\rri,� ����C�\�BXQ�ۧ�\�q����]| \�\�\�\�_��#�uc1\�\�\�bRa��S\�\��IcߵI\�4,}���C\�AA��\�!�p\�\�2�\nЏ\�j/\�E���d�ۮ*\�\�Y�\Zz֠\�U�O7vaO�J���\�\')\�\'}�D�\'/6�\� �Z+ݘ�\n\�ѫ���t\�o�\�\�uD�gܾ��+/�ֳ�DK�H�G>ɗ�/_s�\\��3<-\�>\�QBp�O��z\���TZ�\�4\�?�\�\�=��H�!4]E��\�y�f\���A��\�B\Z�L�j��X?\��v�y��+0=�aGz\�~a��\��\��\��W+�\�\Z�\�Ԗd\"\�\�V\�m�\�~�OhK�\�l##e���\�:HӴ��(/��kc\�5U,�+�\�6&F`K�\�\�\��G��w\�m��\��/{\�:f�n|\�\�\���*��(s����m\�\�\�;n���w�7��\�k�,Y?��ȶ�\�ͯO˯,�\�}J|��F\�6�*a�\")��2\�\� ���\�<��2�5�s�şYIm\�Cׄ�pl�&�C���F\�\�\�\Z�7\�hf{�$芞�1a`t\�\0\�t\�\"���\0\Z4$�c\Z\� \���P��\\����Z ��1\��@����\Z�qmp:5\�Fg��p�	\�0\�GLͣ�Z>��\�X\�p$�.\�+�\�R�$������1^gQV\\�\�\�ɺ�\�K���\'C8�f���c���\���?h���6?3�fxwY��7E\�5\'xfk�F\�\��N7u9�R�S��Ә\�\�iJ���.~߹!\�\�\�ɾ.Մ��9�n\��%�к*���8�r�/�f�\��\�\��[	oG�\n5��M��귔$\�͊u\�>:s��/k|c\��\�0��v\�+��[��%�kN\�CU&�\�\�d-�g�\�\���S��˛6�1\�L ��Xw$\r�l\�\�kTa����h�buyy.�l$RR%5U/q�\�@�\�\�\�?\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:e52aed8dd1e394e0ab586f15aa1c9baf','��\�\n\�0Ee苂�����\�4�5���1�w�(8t\�\�$�sO�ѻ�����(\�ǘ̝U\r((PV�CZ]\�N��*��\�t��x�t\�p�칞E\�\�\"ٜ`X�qm��|�\�\n�5\�\�x�p}\�>]{��$\��\�N �\�Eq���a5B��\�u�1ɲ�lأW�1\�t��\�3\�Z��N��%:�\�(A�\�s�\�\0','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:e701ecbc02be25687d960328b21965a9','+�26�R\�\�-\�\�HML\�\�\�K\�M\�K\�\�/�N\�,.\�I��\�\�\�K�U�\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:fb4ff050210abeadb63fa2fea8699925','\�Y[o\��+\�ƞ�J�l�K�\�\�}i�aۧ��DY��K)\�N\"\�w��d\�\�iQ�8p\�H\�\�\�p.�t\�>��4��J\'�q)�deeAø\���vG�0\"��$\�K��і�?�\��s&h�뱉/���d��\"��\�\�j&i\��\"\�{��Nbɮ�\'��<$g\�\n�i_\�I��\nΔfN�\�\'\"\�\��|v� \��\�sU��Җ���D�A����\�\�ʩ(,� \�R��%\"��6#�_\�{\�\0�\�=\�[\�\�oNT&o�ְ�=%L<\�\�v\�2����s���h\�OuS\�~�F\r/h�\�.1\�\�-p������\"qn�TA$(9;�\�Z,?5<Q�3�A��p�pv*��%	�m&���S&�u�\�g)!\�HQǤj�^�qbE\�nhny���\�lcg��m\�lgg�!O=o�\�aZҹi�E)r\�{q^�i���d`-$	+N�,��\�\�| D��e�\��Y=\rVb\�%g��6�ٺQ\Zk�N����\�6&e\�Ű|,lfqT��M	��5)\�=Pv&\�C���z�\�\Z��aM{�M\�|��\��[t����(T*\�+\�o8�A�|\�ԑo\r\�]��C�|5۳֨��,\�,y3e�1\�w�А\�rr���9���s\�L.��Zu�Q߄k�\\I\�\�i\nY�L_�V	j\�eBm)\�s�\�5\�+�\rHl,ePJr\�߂�,ʺ\"1���R^�\��Vq-\�p_\�?}E9�$I���$\�R(�\�uȸ�^�}�9���A,x��e�-�ZJ\0�&��$��\�K\�IMe3��I�)��,Y�P\����wts/ �F\\\��F��1���8rz�E\�􃪶\�6w�6h!ؐٸ\�@�\�\���\rZ0�a\�ꊓ� \�e|��|�\�xE\�\�2�k9���`t�\n�SܖM\�j\'\���\�\���y��\�\"\�>]�*��\�\Z`�Q:nW��\�lD\�\�z�el�\�\�\�FDv*\�\r4�]�.�z\� [Ǒ�\�jzϲ\�G;�\'*{C\�D?�y�\�~��J�^$\�\�|VqR\�4\�nK&�	�\�\�AK\r\�&\�\��KC3�\�06�\�\�P��Lr�e\�_ը;^�yN(�׌�[D\�\�\�!��\�\�ñ^���Ui�B�\�hq\�#\��\� �\�щ)\�5\��X�Q�dk\�0��\�o]\�\�:px�K�5Ӆ\�O5	�=�+�Q9\�<H�Q9*\�<tV®.4&D*�.	\�\�\�\n\�}�Ԏg[UW\�\�I\�\�Y\�0S>�\�\�\�Y\�\�wQ��_f\�\��vj$S\�4�)H[�\0?��V\��9�\�q<$���lF@7�whM\Z�6�9F])ǲXVn�Ťm!\n�������c��im\�\�Au�\�7h \�݁\n\�8A�\�h�f�i�`��Xk\�\�E�{�����\�{\�_�,\��\Z-.�z��3{��m ��S-⧜&� ݭ\�=X�P?u�:1g��[��\��\�>�3�\�@\"�v6��O����l=\�hIB$	\�̧�z��k\�\��e\��\�j\��2k\�\��\�j�Y�|�\������?�8\�z���H�@ꡢD����Zy?�`\�l ��5G&e��\\m^\�\�v��7\�-0�l�قjʾ2z�M�����z\�5~\�4��AgjGұ\�hke��D	\���/hK4�\�l-#e�\�\�\�OӴ_�(\�t�+c���5U,�+�\�	\Z-�#�~\�\�#�\�}\�ﲵ\��׃{\\3G��+��V�jRf\���#jۃ�\�l\���u\��m樗��A�l^NCd�P�ׯO˯,�\�CJ<��+��\�//5�.5\�4�\Zj�\�r>�\�s\�\�\�QNØ�������پjb\�\�\�\�=��<o�\�\\\�\�a\�7L��I�ULZ\�?�U\��c\\@(��AF��]\�L\�@��rL#�,���\�\nu=��c\�¿֛,8&.��\�\�\�q�POÂ:����(i�\�M�:u\\\�S1����\0�)+�(ԡy%\�ʥ�\�m8��������8\�ݔqI�w}1wp�\�\���\�\�\�\�\�O\�\�\�\�\n���:?w�zz���G7I\�u(xg��&W\�x\�\�b��ӺV�׹\�4��hAu���\�\���\�����\r\�kUEX��\���C	#��Jx�A9�ߞN\�\�\r\��e	\�f��\n���M��\�\�(I�+\�~>�\�G�\���\�1e\�/�h�G�\�\��)ȵ��tp��~�M\��C�1�0\�x6z�3�\�(\�^�+\0\�9�\�?\�\�I�[��%��\Z\�\'����\�','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-js:7:6895d0583b1c8796e739e87abafce5bf','M�A\n�0E\�2��BōčW\��N!�Lt�QZ\�ݛy\�϶\��4!�\����HE�\�\�i+>Q�k>��%4��j��\�f\�\�3\�	\�^�잚�E]p8��\nX@�o;\���','2017-03-31 12:29:03'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:06ec79a439b40715f102aca5644e3097c2de5b69','+�24�R220470643�4660T�\0','2017-04-13 19:33:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:1123b8dad5370f3614b6c11616d4d9d07484fcc3','+�24�R2204706224316�T�\0','2017-04-19 16:43:49'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:33a0653971619b16549515a751f430f82a131383','+�24�R22047062447B%k\0','2017-04-18 17:27:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:345de260378e89193df41aa3fbbd5a3faf1fd852','+�24�R220470643�4660T�\0','2017-04-13 19:33:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:36755b7002a369c7779b8f4cf9dfc0c01dfd22d1','+�24�R22047062247�04R�\0','2017-04-19 17:48:12'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:403afadb1a2601cc32940455d0fa2fd24709ea2a','+�24�R22047062247�05S�\0','2017-04-19 17:48:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:40fb7750f95f1aef609561dd947530e194aec6ba','+�24�R22047062243145S�\0','2017-04-19 16:41:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:48c1af55acf042c73166869ad65e5cb7a944f730','+�24�R22047062247�46R�\0','2017-04-19 17:49:32'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:4be34bf463882d06001731838583af9c90fe77ff','+�24�R22047062247172S�\0','2017-04-19 17:47:26'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:546aeabf94c83df873746e0ea92e28163395f22c','+�24�R22047062022110T�\0','2017-04-17 22:44:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:5edeb354f59d01d65b2387d9f9e14f5aa5bf397b','+�24�R22047062146�0�T�\0','2017-04-21 13:58:19'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:605276d2d8e2b4a422f9491abfab5c7fc1146abb','+�24�R2204706224312�T�\0','2017-04-19 16:42:50'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:61154b31abc156d241ac5d1f2696af9e8c542ee8','+�24�R22047062243145S�\0','2017-04-19 16:41:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:83df1717e1a9610f4605e74890598906c4def4ba','+�24�R22047062247�0�P�\0','2017-04-19 17:48:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:85dfe3dfd3700b16c8d03cd4f58d93fb947c40e6','+�24�R22047062247172S�\0','2017-04-19 17:47:26'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:88d9ed493a41fb742e5af6da601dae59448caa2e','+�24�R22047062247�05S�\0','2017-04-19 17:48:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:9e8516261a7d79e715e449459203aea3f9b6439f','+�24�R22047062247�0�P�\0','2017-04-19 17:48:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:a811964c565f6912f3b62ec74911d71a3846f39d','+�24�R22047062022110T�\0','2017-04-17 22:44:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:bc6371e66511ba9962fa41dced81a97c09c34fc6','+�24�R2204706214102�P�\0','2017-04-21 14:02:38'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:c0d42d2fefee1ffd5789b8ce87d0d6ebaab40261','+�24�R22047062247�04T�\0','2017-04-19 17:48:12'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:c98decd8ac52a17d0db86ac23d8441f4e1937041','+�24�R22047062700146R�\0','2017-04-24 00:41:32'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:cf4adaf6d8568600745e2dba2745116a2c91b161','+�24�R22047062243166W�\0','2017-04-19 16:43:37'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:d44849d4397bcf0d6bc1398657275a8150713d44','+�24�R22047062146�00P�\0','2017-04-21 13:58:00'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:e608cc14bbf623401ecc57070ef0d7cea38a3a2f','+�24�R22047062447B%k\0','2017-04-18 17:27:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:f38e0ffbadd4dbfabefe834085c27dbc0b745910','+�24�R22047062700146R�\0','2017-04-24 00:41:32'),('goctalab_wiki:jobqueue:refreshLinks:rootjob:311eca3f9d832e6f5d3a928220cbaa63853830f2','+�24�R22047062247�02W�\0','2017-04-19 17:48:28'),('goctalab_wiki:messages:en','��\n\�0�E_ ˲���diC�]cA猡�\�d��\�*\"�z�\�6?\�T���CA\�m�\�\�( \�M\�$\�\���>x\�\�\�8���\�W�A\�k�\��%\�\�C�����','2038-01-19 03:14:07'),('goctalab_wiki:messages:es','��\n�@�e�`\�[o\�\�B\�&�B0\�\�kː�v30LF����^úM�\�I\'4�\�Hy,\�&m�l�\�\\������\�Eа/\�����qa��\�\�','2038-01-19 03:14:07'),('goctalab_wiki:pcache:idhash:11-0!*!*!!*!*!*','�X\�N\�H�\�y�\ZK#\� ��4\�N�\�4�\�&=�3*ە�\�e�\��\�\�>\�>\�>\�~�l\'�ѓVC�\��\�w.\�׾\���^hQ\\�&/�\���w\��t*�3\���\��\�8��\\\n\�Ԝ�X�PE�\�Ua�|SEtS���F0�E��RD��w��i�\�؀\�	��;\�^>\�\�d2N\�]gV Q!OX$\�E��Td��<�eVQ��7\�T��_�;\�A�\�\�s��\r�r/\nbsV�\�\�\�\�\\%�Z:,L�և\�E;�\"dq!\�Ι1�\�\�-�\�.\�\�e\�\rU\�[���\�\�T��2���\�Zv\�3�**C#U�6��B�\�jܲZ�\�b\�ͅ3y�F^X\�=䯃�9�(x�<\�%Oj)$O��\�\"#�R\�H�Q���͚�$�ʬ��\�غ\�L-��\�ar\�g�%�\�@T�\"UF��Vk��\�s�S干\")Mb*\�\�@\Z\�\�2�ق-Uq�jT]v,tX\�\0 .�����(+ib\�\rLŸ�\\��A\�68\�e�\��$Y�!u\r._s\��Y/V�xUOS�f��^ceL��\�\����YDP\�Y(��L�\�j*\�\�S~a8P&�֟�[\�\�\�u�%p�JC�\�(��\�PY���и?\�g\r�\�\�n,x�@�\�dt\�\�\05�υJg�\�x\�\�\�rb6U��\'��[kߙ�$#If%YK�Ւl�\�J�U�\�94�K\r\�hQs��\�7X���=\�\�m1ּ���3\�\�\r��$*\�i,\0	��\�\"y/�j�P�\\�I����\�%;T}h*}�*_*��\���b��r0��^,�\�U\�c��\�\n\�\�\"���9�\�O�|�ϛ\�{�]Z��b��ۣ\0g˼�\�71R^�Y�\�\�GU�|��j�F�U�mQ\r�\�G\�{T%KKm��cY\�-\n�2c2x\�%B^\�j�iD^��fi[i H7	�D\���\�\�\�ī��8\0�R�]��2@\�5�����R3C�C\'�Ar\"\�pp\�Zt\�^�IR\�\�V\�Q�X�T�\�\�\�	�/V\�_Q���1�R=���Ϫ�7@�CE�\���\r�\�(\�z.=��\�\�\�ܣ��\��.�U\�\��@ה@���\�\��z��meD�\�e\����\�:Wbys\��J��\\�s��Ҵ���Y\���\�����\��{\r{\\.�G�\�\r]�s���T�@mfp!>��D�\�\�\�W�i|\�v]���Ze�\�|�zm���ȨY48�9�������e�l��T\�\�\�y����.\�\n�\�\��W\�J���翈�\�^faR�O\�����q\��\�Gi�;S�\�\�i�-�\�\��|grhf�j\�k$r#y��\�9y\�N\�CЎ\�\�eV���\�%\�:���N}\'\�j\��U�Rj�U\��\�o;�\�!\�\�S���� ��1|\�.��\�]�\0���[ \�¹v*�K\�\0���Z\�����2���}\�\�u�\�߫I߰���`,�K\�dĆ;���7�7\�\�L	\\\�\�N;#\����y�!��*�\�\� �c�b\�RE�\�\�sE�D4o����\�<{\�i��Nj��\�:?�Z�}r�fG�\�\�\�2��a|�\�5�E�\�O\�\����\�5���DF\��(B��\'�\�E�>؜�]\�s�F����3\n|wT˜\�H<C�]�S\�|\�\�\�\��\�9\0\�\�Oy�D\'O\�f�\�\�m\��Z���f\�ň�O}���\\���\�۩ޯgJ��\�7^\�v�qZ\�\�d^\"�[��\nM�k\��c>F~#\n;r���x\�.Y1+Ӡ���S\�\�)\�gp��CCH\�@�\�@o��\�z��ϱ�PD��\�(�*\��k���,�d�\�7��\�^��\����\�yý�\�\��έk��i\'Xaj\\N՝ p\��Eu\n�x����HR\�룳\�\��g�\�\�ܴ۪;��]w\�\r,��Z��d<�\"Cּ\�:���z\�8A\r\����B�X<ܨD��-�\�\�6?�4�E\�j�����.�VتJ��q\�\�lh��i\�\�17|��g\�]\�R�\�\�ˆע\��H�����!���\Z1vM�\�p\�ٖhw|{N��6_�\��\nm \�\�\"�}[�[-#M�\�\�O+̶�\�\�V0l(��Sm7�rC;˚�VR/1VI]I�R4�\�[tl\�\�iq�\�Кtư�`�%X-L͢d��g\�{��Z\�\�\�\�Ћ)3G�\�ݿ�\���@���\�	o���\�q���DN\�\�q�B�\ZU�\�`�\��\"�\�ݓ�Q\�_}\�3\�k�H\�\�x\�\�	k�\�u��ç\"�;��Fު��\�i[�\�$)���\�/�Fn#\�G?�','2017-03-31 12:47:56'),('goctalab_wiki:pcache:idoptions:11','E�A�0E\�2 m)~�ƅ+�\�Q&:�P5\Z\�\�-D\�n2\�ͼ\n%hS_n|��	\�\0m@\�1pS��w�|\r�Q�|�\�=\�37�\�OE<9��O\�\�@:q��g�\"�7~?�ҹJS��\�3�l\�\�m߽�\�Y�T\�\������kfnK?}','2017-03-31 12:47:56');
/*!40000 ALTER TABLE `objectcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oldimage`
--

DROP TABLE IF EXISTS `oldimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldimage` (
  `oi_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_archive_name` varbinary(255) NOT NULL DEFAULT '',
  `oi_size` int(10) unsigned NOT NULL DEFAULT '0',
  `oi_width` int(11) NOT NULL DEFAULT '0',
  `oi_height` int(11) NOT NULL DEFAULT '0',
  `oi_bits` int(11) NOT NULL DEFAULT '0',
  `oi_description` varbinary(767) NOT NULL,
  `oi_user` int(10) unsigned NOT NULL DEFAULT '0',
  `oi_user_text` varbinary(255) NOT NULL,
  `oi_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `oi_metadata` mediumblob NOT NULL,
  `oi_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `oi_major_mime` enum('unknown','application','audio','image','text','video','message','model','multipart','chemical') NOT NULL DEFAULT 'unknown',
  `oi_minor_mime` varbinary(100) NOT NULL DEFAULT 'unknown',
  `oi_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `oi_sha1` varbinary(32) NOT NULL DEFAULT '',
  KEY `oi_usertext_timestamp` (`oi_user_text`,`oi_timestamp`),
  KEY `oi_name_timestamp` (`oi_name`,`oi_timestamp`),
  KEY `oi_name_archive_name` (`oi_name`,`oi_archive_name`(14)),
  KEY `oi_sha1` (`oi_sha1`(10))
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldimage`
--

LOCK TABLES `oldimage` WRITE;
/*!40000 ALTER TABLE `oldimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `oldimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_namespace` int(11) NOT NULL,
  `page_title` varbinary(255) NOT NULL,
  `page_restrictions` tinyblob NOT NULL,
  `page_is_redirect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `page_random` double unsigned NOT NULL,
  `page_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `page_links_updated` varbinary(14) DEFAULT NULL,
  `page_latest` int(10) unsigned NOT NULL,
  `page_len` int(10) unsigned NOT NULL,
  `page_content_model` varbinary(32) DEFAULT NULL,
  `page_lang` varbinary(35) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `name_title` (`page_namespace`,`page_title`),
  KEY `page_random` (`page_random`),
  KEY `page_len` (`page_len`),
  KEY `page_redirect_namespace_len` (`page_is_redirect`,`page_namespace`,`page_len`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,0,'Página_principal','',0,1,0.271019149039,'20170301225917',NULL,1,774,'wikitext',NULL),(11,0,'Website_Development_Workflow','',0,0,0.7527912664,'20170327004131','20170327005728',49,1785,'wikitext',NULL),(12,0,'MediaWiki_Extensions','',0,1,0.296611219999,'20170324140238','20170324140313',46,255,'wikitext',NULL);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_props`
--

DROP TABLE IF EXISTS `page_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_props` (
  `pp_page` int(11) NOT NULL,
  `pp_propname` varbinary(60) NOT NULL,
  `pp_value` blob NOT NULL,
  `pp_sortkey` float DEFAULT NULL,
  UNIQUE KEY `pp_page_propname` (`pp_page`,`pp_propname`),
  UNIQUE KEY `pp_propname_page` (`pp_propname`,`pp_page`),
  UNIQUE KEY `pp_propname_sortkey_page` (`pp_propname`,`pp_sortkey`,`pp_page`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_props`
--

LOCK TABLES `page_props` WRITE;
/*!40000 ALTER TABLE `page_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_restrictions`
--

DROP TABLE IF EXISTS `page_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_restrictions` (
  `pr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pr_page` int(11) NOT NULL,
  `pr_type` varbinary(60) NOT NULL,
  `pr_level` varbinary(60) NOT NULL,
  `pr_cascade` tinyint(4) NOT NULL,
  `pr_user` int(11) DEFAULT NULL,
  `pr_expiry` varbinary(14) DEFAULT NULL,
  PRIMARY KEY (`pr_id`),
  UNIQUE KEY `pr_pagetype` (`pr_page`,`pr_type`),
  KEY `pr_typelevel` (`pr_type`,`pr_level`),
  KEY `pr_level` (`pr_level`),
  KEY `pr_cascade` (`pr_cascade`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_restrictions`
--

LOCK TABLES `page_restrictions` WRITE;
/*!40000 ALTER TABLE `page_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagelinks`
--

DROP TABLE IF EXISTS `pagelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagelinks` (
  `pl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `pl_from_namespace` int(11) NOT NULL DEFAULT '0',
  `pl_namespace` int(11) NOT NULL DEFAULT '0',
  `pl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `pl_from` (`pl_from`,`pl_namespace`,`pl_title`),
  KEY `pl_namespace` (`pl_namespace`,`pl_title`,`pl_from`),
  KEY `pl_backlinks_namespace` (`pl_from_namespace`,`pl_namespace`,`pl_title`,`pl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagelinks`
--

LOCK TABLES `pagelinks` WRITE;
/*!40000 ALTER TABLE `pagelinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protected_titles`
--

DROP TABLE IF EXISTS `protected_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protected_titles` (
  `pt_namespace` int(11) NOT NULL,
  `pt_title` varbinary(255) NOT NULL,
  `pt_user` int(10) unsigned NOT NULL,
  `pt_reason` varbinary(767) DEFAULT NULL,
  `pt_timestamp` binary(14) NOT NULL,
  `pt_expiry` varbinary(14) NOT NULL DEFAULT '',
  `pt_create_perm` varbinary(60) NOT NULL,
  UNIQUE KEY `pt_namespace_title` (`pt_namespace`,`pt_title`),
  KEY `pt_timestamp` (`pt_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protected_titles`
--

LOCK TABLES `protected_titles` WRITE;
/*!40000 ALTER TABLE `protected_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `protected_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `querycache`
--

DROP TABLE IF EXISTS `querycache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `querycache` (
  `qc_type` varbinary(32) NOT NULL,
  `qc_value` int(10) unsigned NOT NULL DEFAULT '0',
  `qc_namespace` int(11) NOT NULL DEFAULT '0',
  `qc_title` varbinary(255) NOT NULL DEFAULT '',
  KEY `qc_type` (`qc_type`,`qc_value`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `querycache`
--

LOCK TABLES `querycache` WRITE;
/*!40000 ALTER TABLE `querycache` DISABLE KEYS */;
/*!40000 ALTER TABLE `querycache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `querycache_info`
--

DROP TABLE IF EXISTS `querycache_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `querycache_info` (
  `qci_type` varbinary(32) NOT NULL DEFAULT '',
  `qci_timestamp` binary(14) NOT NULL DEFAULT '19700101000000',
  UNIQUE KEY `qci_type` (`qci_type`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `querycache_info`
--

LOCK TABLES `querycache_info` WRITE;
/*!40000 ALTER TABLE `querycache_info` DISABLE KEYS */;
INSERT INTO `querycache_info` VALUES ('activeusers','20170327005729');
/*!40000 ALTER TABLE `querycache_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `querycachetwo`
--

DROP TABLE IF EXISTS `querycachetwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `querycachetwo` (
  `qcc_type` varbinary(32) NOT NULL,
  `qcc_value` int(10) unsigned NOT NULL DEFAULT '0',
  `qcc_namespace` int(11) NOT NULL DEFAULT '0',
  `qcc_title` varbinary(255) NOT NULL DEFAULT '',
  `qcc_namespacetwo` int(11) NOT NULL DEFAULT '0',
  `qcc_titletwo` varbinary(255) NOT NULL DEFAULT '',
  KEY `qcc_type` (`qcc_type`,`qcc_value`),
  KEY `qcc_title` (`qcc_type`,`qcc_namespace`,`qcc_title`),
  KEY `qcc_titletwo` (`qcc_type`,`qcc_namespacetwo`,`qcc_titletwo`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `querycachetwo`
--

LOCK TABLES `querycachetwo` WRITE;
/*!40000 ALTER TABLE `querycachetwo` DISABLE KEYS */;
INSERT INTO `querycachetwo` VALUES ('activeusers',1489671847,2,'Goctalab',0,'');
/*!40000 ALTER TABLE `querycachetwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentchanges`
--

DROP TABLE IF EXISTS `recentchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recentchanges` (
  `rc_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_timestamp` varbinary(14) NOT NULL DEFAULT '',
  `rc_user` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_user_text` varbinary(255) NOT NULL,
  `rc_namespace` int(11) NOT NULL DEFAULT '0',
  `rc_title` varbinary(255) NOT NULL DEFAULT '',
  `rc_comment` varbinary(767) NOT NULL DEFAULT '',
  `rc_minor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_bot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_cur_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_this_oldid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_last_oldid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_source` varbinary(16) NOT NULL DEFAULT '',
  `rc_patrolled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_ip` varbinary(40) NOT NULL DEFAULT '',
  `rc_old_len` int(11) DEFAULT NULL,
  `rc_new_len` int(11) DEFAULT NULL,
  `rc_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rc_logid` int(10) unsigned NOT NULL DEFAULT '0',
  `rc_log_type` varbinary(255) DEFAULT NULL,
  `rc_log_action` varbinary(255) DEFAULT NULL,
  `rc_params` blob,
  PRIMARY KEY (`rc_id`),
  KEY `rc_timestamp` (`rc_timestamp`),
  KEY `rc_namespace_title` (`rc_namespace`,`rc_title`),
  KEY `rc_cur_id` (`rc_cur_id`),
  KEY `new_name_timestamp` (`rc_new`,`rc_namespace`,`rc_timestamp`),
  KEY `rc_ip` (`rc_ip`),
  KEY `rc_ns_usertext` (`rc_namespace`,`rc_user_text`),
  KEY `rc_user_text` (`rc_user_text`,`rc_timestamp`),
  KEY `rc_name_type_patrolled_timestamp` (`rc_namespace`,`rc_type`,`rc_patrolled`,`rc_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentchanges`
--

LOCK TABLES `recentchanges` WRITE;
/*!40000 ALTER TABLE `recentchanges` DISABLE KEYS */;
INSERT INTO `recentchanges` VALUES (1,'20170316131444',1,'Goctalab',2,'Mwinter','',0,0,0,0,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,1,'newusers','create2','a:1:{s:9:\"4::userid\";i:2;}'),(2,'20170316134407',1,'Goctalab',0,'Git_Workflow','Explanation of the Git Workflow for Goctalab',0,0,1,2,2,0,1,'mw.new',1,'127.0.0.1',0,45,0,0,NULL,'',''),(3,'20170316140636',1,'Goctalab',0,'Git_Workflow','',0,0,0,2,3,2,0,'mw.edit',1,'127.0.0.1',45,174,0,0,NULL,'',''),(4,'20170316140651',1,'Goctalab',0,'Git_Workflow','/* Backup Database */',0,0,0,2,4,3,0,'mw.edit',1,'127.0.0.1',174,176,0,0,NULL,'',''),(5,'20170316141022',1,'Goctalab',0,'Git_Workflow','/* Backup Database */',0,0,0,2,5,4,0,'mw.edit',1,'127.0.0.1',176,220,0,0,NULL,'',''),(6,'20170316142325',1,'Goctalab',0,'Git_Workflow','/* Push to Server */',0,0,0,2,6,5,0,'mw.edit',1,'127.0.0.1',220,272,0,0,NULL,'',''),(7,'20170316142446',1,'Goctalab',0,'Git_Workflow','/* Push to Server */',0,0,0,2,7,6,0,'mw.edit',1,'127.0.0.1',272,381,0,0,NULL,'',''),(8,'20170316142647',1,'Goctalab',0,'Git_Workflow','/* Push to Server */',0,0,0,2,8,7,0,'mw.edit',1,'127.0.0.1',381,482,0,0,NULL,'',''),(9,'20170316142829',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,9,8,0,'mw.edit',1,'127.0.0.1',482,444,0,0,NULL,'',''),(10,'20170316142855',1,'Goctalab',0,'Git_Workflow','/* WordPress site */',0,0,0,2,10,9,0,'mw.edit',1,'127.0.0.1',444,444,0,0,NULL,'',''),(11,'20170316143201',1,'Goctalab',0,'Git_Workflow','/* Steps on the local machine */',0,0,0,2,11,10,0,'mw.edit',1,'127.0.0.1',444,482,0,0,NULL,'',''),(12,'20170316143606',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,12,11,0,'mw.edit',1,'127.0.0.1',482,655,0,0,NULL,'',''),(13,'20170316143650',1,'Goctalab',0,'Git_Workflow','/* WordPress site */',0,0,0,2,13,12,0,'mw.edit',1,'127.0.0.1',655,666,0,0,NULL,'',''),(14,'20170316143836',1,'Goctalab',0,'Git_Workflow','/* WordPress site */',0,0,0,2,14,13,0,'mw.edit',1,'127.0.0.1',666,768,0,0,NULL,'',''),(15,'20170316144206',1,'Goctalab',0,'Git_Workflow','/* WordPress site */',0,0,0,2,15,14,0,'mw.edit',1,'127.0.0.1',768,818,0,0,NULL,'',''),(16,'20170316144451',1,'Goctalab',0,'Git_Workflow','/* Title of list */',0,0,0,2,16,15,0,'mw.edit',1,'127.0.0.1',818,906,0,0,NULL,'',''),(17,'20170316144606',1,'Goctalab',0,'Git_Workflow','/* Title of list */',0,0,0,2,17,16,0,'mw.edit',1,'127.0.0.1',906,667,0,0,NULL,'',''),(18,'20170316144814',1,'Goctalab',0,'Git_Workflow','/* SSH into server and change directory */',0,0,0,2,18,17,0,'mw.edit',1,'127.0.0.1',667,668,0,0,NULL,'',''),(19,'20170316144824',1,'Goctalab',0,'Git_Workflow','/* Root access and change directory */',0,0,0,2,19,18,0,'mw.edit',1,'127.0.0.1',668,669,0,0,NULL,'',''),(20,'20170316145236',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,20,19,0,'mw.edit',1,'127.0.0.1',669,689,0,0,NULL,'',''),(21,'20170316145329',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,21,20,0,'mw.edit',1,'127.0.0.1',689,606,0,0,NULL,'',''),(22,'20170316145437',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,22,21,0,'mw.edit',1,'127.0.0.1',606,638,0,0,NULL,'',''),(23,'20170316145609',1,'Goctalab',0,'Git_Workflow','/* WordPress site */',0,0,0,2,23,22,0,'mw.edit',1,'127.0.0.1',638,640,0,0,NULL,'',''),(24,'20170316145656',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,24,23,0,'mw.edit',1,'127.0.0.1',640,657,0,0,NULL,'',''),(25,'20170316150003',1,'Goctalab',0,'Git_Workflow','/* Steps on the remote machine */',0,0,0,2,25,24,0,'mw.edit',1,'127.0.0.1',657,733,0,0,NULL,'',''),(26,'20170316150137',1,'Goctalab',0,'Git_Workflow','/* Steps on the remote machine */',0,0,0,2,26,25,0,'mw.edit',1,'127.0.0.1',733,834,0,0,NULL,'',''),(27,'20170316150204',1,'Goctalab',0,'Git_Workflow','/* Steps on the local machine */',0,0,0,2,27,26,0,'mw.edit',1,'127.0.0.1',834,824,0,0,NULL,'',''),(28,'20170316150220',1,'Goctalab',0,'Git_Workflow','/* Steps on the remote machine */',0,0,0,2,28,27,0,'mw.edit',1,'127.0.0.1',824,831,0,0,NULL,'',''),(29,'20170316151540',1,'Goctalab',0,'Git_Workflow','/* Steps on the remote machine */',0,0,0,2,29,28,0,'mw.edit',1,'127.0.0.1',831,832,0,0,NULL,'',''),(30,'20170316154239',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,30,29,0,'mw.edit',1,'127.0.0.1',832,1644,0,0,NULL,'',''),(31,'20170316154738',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,31,30,0,'mw.edit',1,'127.0.0.1',1644,1646,0,0,NULL,'',''),(32,'20170316193226',1,'Goctalab',0,'Git_Workflow','/* WordPress */',0,0,0,2,32,31,0,'mw.edit',1,'127.0.0.1',1646,1919,0,0,NULL,'',''),(33,'20170316193301',1,'Goctalab',0,'Git_Workflow','/* Push to server */',0,0,0,2,33,32,0,'mw.edit',1,'127.0.0.1',1919,1837,0,0,NULL,'',''),(34,'20170320211837',1,'Goctalab',6,'WwwGoctaWikiLOGOFF.jpg','Logo de GoctaWiki pe',0,0,0,3,34,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,34,'upload','upload','a:2:{s:8:\"img_sha1\";s:31:\"gopgi0l9cusef21c8zjbyd5u48bhbcy\";s:13:\"img_timestamp\";s:14:\"20170320211837\";}'),(35,'20170320213049',1,'Goctalab',0,'Test_upload','Created page with \"[[File:wwwGoctaWikiLOGOFF.jpg|options|caption]]\"',0,0,1,4,35,0,1,'mw.new',1,'127.0.0.1',0,47,0,0,NULL,'',''),(36,'20170320224400',1,'Goctalab',6,'Acerca_de_las_Pilas.pdf','',0,0,0,5,36,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,37,'upload','upload','a:2:{s:8:\"img_sha1\";s:31:\"mybcbqfyidjk4qb06mdwg00csxkb3kp\";s:13:\"img_timestamp\";s:14:\"20170320224400\";}'),(37,'20170321172301',1,'Goctalab',0,'Test_upload','',0,0,0,4,37,35,0,'mw.edit',1,'127.0.0.1',47,53,0,0,NULL,'',''),(38,'20170321172411',1,'Goctalab',6,'Test_vid.mp4','',0,0,0,6,38,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,40,'upload','upload','a:2:{s:8:\"img_sha1\";s:31:\"hpd0quf4yrp4mthke7ltm0zrfog6ex0\";s:13:\"img_timestamp\";s:14:\"20170321172411\";}'),(39,'20170321172509',1,'Goctalab',0,'Test_upload','',0,0,0,4,39,37,0,'mw.edit',1,'127.0.0.1',53,22,0,0,NULL,'',''),(40,'20170321172727',1,'Goctalab',0,'Test_upload','',0,0,0,4,40,39,0,'mw.edit',1,'127.0.0.1',22,21,0,0,NULL,'',''),(41,'20170321202146',1,'Goctalab',0,'Test_parsoid','Created page with \"test parsoid\"',0,0,1,7,41,0,1,'mw.new',1,'127.0.0.1',0,12,0,0,NULL,'',''),(42,'20170321205441',1,'Goctalab',0,'Git_Workflow','content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,2,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,45,'delete','delete','a:0:{}'),(43,'20170321205504',1,'Goctalab',0,'Git_Workflow','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',0,0,1,8,42,0,1,'mw.new',1,'127.0.0.1',0,1837,0,0,NULL,'',''),(44,'20170321205525',1,'Goctalab',0,'Git_Workflow','content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,8,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,47,'delete','delete','a:0:{}'),(45,'20170321205607',1,'Goctalab',0,'Push_to_Server','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',0,0,1,9,43,0,1,'mw.new',1,'127.0.0.1',0,1837,0,0,NULL,'',''),(46,'20170321205926',1,'Goctalab',0,'Git_Workflow','Created page with \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code> sudo -i </code>  ::<code> cd /var/www/html/w...\"',0,0,1,10,44,0,1,'mw.new',1,'127.0.0.1',0,1837,0,0,NULL,'',''),(47,'20170321224736',1,'Goctalab',0,'Test_parsoid_2','Created page with \"test\"',0,0,1,11,45,0,1,'mw.new',1,'127.0.0.1',0,4,0,0,NULL,'',''),(48,'20170321225627',1,'Goctalab',0,'Test_parsoid_2','',0,0,0,11,46,45,0,'mw.edit',1,'127.0.0.1',4,10,0,0,NULL,'',''),(49,'20170322164155',1,'Goctalab',0,'Test_parsoid_2','I made a chance',0,0,0,11,47,46,0,'mw.edit',1,'127.0.0.1',10,4,0,0,NULL,'',''),(50,'20170322164249',1,'Goctalab',0,'Push_to_Server','content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,9,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,53,'delete','delete','a:0:{}'),(51,'20170322164337',1,'Goctalab',0,'Test_parsoid','content was: \"test parsoid\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,7,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,54,'delete','delete','a:0:{}'),(52,'20170322164349',1,'Goctalab',0,'Test_parsoid_2','content was: \"test\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,11,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,55,'delete','delete','a:0:{}'),(53,'20170322172449',1,'Goctalab',6,'WwwGoctaWikiLOGOFFsmall.png','',0,0,0,12,48,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,56,'upload','upload','a:2:{s:8:\"img_sha1\";s:31:\"l9ttxjl6fun9zvs1z8olkh32myo1jdy\";s:13:\"img_timestamp\";s:14:\"20170322172449\";}'),(54,'20170322174726',1,'Goctalab',6,'Acerca_de_las_Pilas.pdf','',0,0,0,5,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,58,'delete','delete','a:0:{}'),(55,'20170322174811',1,'Goctalab',6,'WwwGoctaWikiLOGOFF.jpg','',0,0,0,3,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,59,'delete','delete','a:0:{}'),(56,'20170322174827',1,'Goctalab',6,'Test_vid.mp4','',0,0,0,6,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,60,'delete','delete','a:0:{}'),(57,'20170322174856',1,'Goctalab',6,'WwwGoctaWikiLOGOFFsmall.png','',0,0,0,12,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,61,'delete','delete','a:0:{}'),(58,'20170322174931',1,'Goctalab',0,'Test_upload','content was: \"[[File:Test_vid.mp4]]\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,4,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,62,'delete','delete','a:0:{}'),(59,'20170324135759',1,'Goctalab',0,'Website_Development_Workflow','created new workflow page',0,0,1,11,45,0,1,'mw.new',1,'127.0.0.1',0,1446,0,0,NULL,'',''),(60,'20170324135819',1,'Goctalab',0,'Git_Workflow','content was: \"== Push to server ==  === WordPress ===  ==== Steps on the local machine ====  :\'\'\' Root access and change directory \'\'\'  ::<code>...\", and the only contributor was \"[[Special:Contributions/Goctalab|Goctalab]]\" ([[User talk:Goctalab|talk]])',0,0,0,10,0,0,3,'mw.log',1,'127.0.0.1',NULL,NULL,0,64,'delete','delete','a:0:{}'),(61,'20170324140238',1,'Goctalab',0,'MediaWiki_Extensions','added extensions page',0,0,1,12,46,0,1,'mw.new',1,'127.0.0.1',0,255,0,0,NULL,'',''),(62,'20170324140840',1,'Goctalab',0,'Website_Development_Workflow','/* Push From Local Development Machine To Production Server */',0,0,0,11,47,45,0,'mw.edit',1,'127.0.0.1',1446,1611,0,0,NULL,'',''),(63,'20170324142457',1,'Goctalab',0,'Website_Development_Workflow','tweaks',0,0,0,11,48,47,0,'mw.edit',1,'127.0.0.1',1611,1765,0,0,NULL,'',''),(64,'20170327004131',1,'Goctalab',0,'Website_Development_Workflow','',0,0,0,11,49,48,0,'mw.edit',1,'127.0.0.1',1765,1785,0,0,NULL,'','');
/*!40000 ALTER TABLE `recentchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirect`
--

DROP TABLE IF EXISTS `redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirect` (
  `rd_from` int(10) unsigned NOT NULL DEFAULT '0',
  `rd_namespace` int(11) NOT NULL DEFAULT '0',
  `rd_title` varbinary(255) NOT NULL DEFAULT '',
  `rd_interwiki` varbinary(32) DEFAULT NULL,
  `rd_fragment` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`rd_from`),
  KEY `rd_ns_title` (`rd_namespace`,`rd_title`,`rd_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirect`
--

LOCK TABLES `redirect` WRITE;
/*!40000 ALTER TABLE `redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision`
--

DROP TABLE IF EXISTS `revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revision` (
  `rev_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rev_page` int(10) unsigned NOT NULL,
  `rev_text_id` int(10) unsigned NOT NULL,
  `rev_comment` varbinary(767) NOT NULL,
  `rev_user` int(10) unsigned NOT NULL DEFAULT '0',
  `rev_user_text` varbinary(255) NOT NULL DEFAULT '',
  `rev_timestamp` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `rev_minor_edit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rev_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rev_len` int(10) unsigned DEFAULT NULL,
  `rev_parent_id` int(10) unsigned DEFAULT NULL,
  `rev_sha1` varbinary(32) NOT NULL DEFAULT '',
  `rev_content_model` varbinary(32) DEFAULT NULL,
  `rev_content_format` varbinary(64) DEFAULT NULL,
  PRIMARY KEY (`rev_id`),
  KEY `rev_page_id` (`rev_page`,`rev_id`),
  KEY `rev_timestamp` (`rev_timestamp`),
  KEY `page_timestamp` (`rev_page`,`rev_timestamp`),
  KEY `user_timestamp` (`rev_user`,`rev_timestamp`),
  KEY `usertext_timestamp` (`rev_user_text`,`rev_timestamp`),
  KEY `page_user_timestamp` (`rev_page`,`rev_user`,`rev_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=binary MAX_ROWS=10000000 AVG_ROW_LENGTH=1024;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision`
--

LOCK TABLES `revision` WRITE;
/*!40000 ALTER TABLE `revision` DISABLE KEYS */;
INSERT INTO `revision` VALUES (1,1,1,'',0,'MediaWiki default','20170301225917',0,0,774,0,'jvsy8vlt5binmzx9f9t39nmzvhlm5tf',NULL,NULL),(45,11,49,'created new workflow page',1,'Goctalab','20170324135759',0,0,1446,0,'26zlvutovbu3bj5630dnvlpoxkyl5hi',NULL,NULL),(46,12,50,'added extensions page',1,'Goctalab','20170324140238',0,0,255,0,'3w2cs0lo70pxqwt9pgjiy8s6hknftv3',NULL,NULL),(47,11,51,'/* Push From Local Development Machine To Production Server */',1,'Goctalab','20170324140840',0,0,1611,45,'i24ogxnkznyev072hl4s671vgqhdva7',NULL,NULL),(48,11,52,'tweaks',1,'Goctalab','20170324142457',0,0,1765,47,'jo7ds13clszjq41mw4nu15v2mbaxl1z',NULL,NULL),(49,11,53,'',1,'Goctalab','20170327004131',0,0,1785,48,'8dsql7ag9ubb1jyk5ed7ircqc5qosiq',NULL,NULL);
/*!40000 ALTER TABLE `revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchindex` (
  `si_page` int(10) unsigned NOT NULL,
  `si_title` varchar(255) NOT NULL DEFAULT '',
  `si_text` mediumtext NOT NULL,
  UNIQUE KEY `si_page` (`si_page`),
  FULLTEXT KEY `si_title` (`si_title`),
  FULLTEXT KEY `si_text` (`si_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchindex`
--

LOCK TABLES `searchindex` WRITE;
/*!40000 ALTER TABLE `searchindex` DISABLE KEYS */;
INSERT INTO `searchindex` VALUES (12,'mediawiki extensions',' theu800 following extensions areu800 installed inu800 theu800 goctalab wiki. refer tou800 theu800 documentation foru800 howu800 tou800 useu800. * * * '),(11,'website development workflow',' copies ofu800 theu800 code foru800 theu800 wordpress site andu800 theu800 mediawiki exit inu800 3u800 places * onu800 theu800 local development machine located atu800 goctalab. * onu800 au800 gitu800 server atu800 github . * inu800 production atu800 generally development isu800 done onu800 theu800 local development machine then pushed tou800 theu800 gitu800 server then pulled into theu800 production server. however ifu800 changes need tou800 beu800 done remotely then basically theu800 opposite needs tou800 occur before resuming work onu800 theu800 local development machine. described below areu800 howu800 tou800 runu800 theu800 scripts that perform these actions. allu800 theu800 scripts areu800 located onu800 theu800 local development machine atu800 home goctalab sever_scripts  dou800 notu800 under anyu800 circumstances make changes onu800 both theu800 development machine andu800 theu800 production server without running theu800 script.  push from local development machine tou800 production server push from local development machine tou800 production server push from local development machine tou800 production server there areu800 individual scripts foru800 wordpress andu800 mediawiki. tou800 push from theu800 development machine tou800 theu800 production server cdu800 into theu800 gl_website_dev_scripts directory andu800 tou800 runu800 theu800 scripts asu800 follows cdu800 home goctalab gl_website_dev_scripts sudo shu800 . push_wpu82eshu800 sudo shu800 . push_wikiu82eshu800  note that after pushing oru800 pulling theu800 wordpress site youu800 must reset theu800 background image because foru800 some reason itu800 isu800 being setu800 byu800 anu800 absolute path.  this will beu800 theu800 primary workflow. seeu800 below foru800 theu800 less common useu800 case inu800 reverse. pull from production server tou800 local development machine pull from production server tou800 local development machine pull from production server tou800 local development machine because these scripts will andu800 should beu800 used rarely they have been placed inu800 au800 subdirectory called pull_scripts. cdu800 home goctalab gl_website_dev_scripts pull_scripts sudo shu800 . pull_wpu82eshu800 sudo shu800 . pull_wikiu82eshu800 ');
/*!40000 ALTER TABLE `searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_identifiers`
--

DROP TABLE IF EXISTS `site_identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_identifiers` (
  `si_site` int(10) unsigned NOT NULL,
  `si_type` varbinary(32) NOT NULL,
  `si_key` varbinary(32) NOT NULL,
  UNIQUE KEY `site_ids_type` (`si_type`,`si_key`),
  KEY `site_ids_site` (`si_site`),
  KEY `site_ids_key` (`si_key`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_identifiers`
--

LOCK TABLES `site_identifiers` WRITE;
/*!40000 ALTER TABLE `site_identifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_identifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stats`
--

DROP TABLE IF EXISTS `site_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stats` (
  `ss_row_id` int(10) unsigned NOT NULL,
  `ss_total_edits` bigint(20) unsigned DEFAULT '0',
  `ss_good_articles` bigint(20) unsigned DEFAULT '0',
  `ss_total_pages` bigint(20) DEFAULT '-1',
  `ss_users` bigint(20) DEFAULT '-1',
  `ss_active_users` bigint(20) DEFAULT '-1',
  `ss_images` int(11) DEFAULT '0',
  UNIQUE KEY `ss_row_id` (`ss_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stats`
--

LOCK TABLES `site_stats` WRITE;
/*!40000 ALTER TABLE `site_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_global_key` varbinary(32) NOT NULL,
  `site_type` varbinary(32) NOT NULL,
  `site_group` varbinary(32) NOT NULL,
  `site_source` varbinary(32) NOT NULL,
  `site_language` varbinary(32) NOT NULL,
  `site_protocol` varbinary(32) NOT NULL,
  `site_domain` varbinary(255) NOT NULL,
  `site_data` blob NOT NULL,
  `site_forward` tinyint(1) NOT NULL,
  `site_config` blob NOT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `sites_global_key` (`site_global_key`),
  KEY `sites_type` (`site_type`),
  KEY `sites_group` (`site_group`),
  KEY `sites_source` (`site_source`),
  KEY `sites_language` (`site_language`),
  KEY `sites_protocol` (`site_protocol`),
  KEY `sites_domain` (`site_domain`),
  KEY `sites_forward` (`site_forward`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_summary`
--

DROP TABLE IF EXISTS `tag_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_summary` (
  `ts_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ts_rc_id` int(11) DEFAULT NULL,
  `ts_log_id` int(11) DEFAULT NULL,
  `ts_rev_id` int(11) DEFAULT NULL,
  `ts_tags` blob NOT NULL,
  PRIMARY KEY (`ts_id`),
  UNIQUE KEY `tag_summary_rc_id` (`ts_rc_id`),
  UNIQUE KEY `tag_summary_log_id` (`ts_log_id`),
  UNIQUE KEY `tag_summary_rev_id` (`ts_rev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_summary`
--

LOCK TABLES `tag_summary` WRITE;
/*!40000 ALTER TABLE `tag_summary` DISABLE KEYS */;
INSERT INTO `tag_summary` VALUES (4,59,NULL,45,'visualeditor'),(5,61,NULL,46,'visualeditor'),(6,62,NULL,47,'visualeditor'),(7,63,56,48,'visualeditor'),(8,64,NULL,49,'visualeditor');
/*!40000 ALTER TABLE `tag_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatelinks`
--

DROP TABLE IF EXISTS `templatelinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatelinks` (
  `tl_from` int(10) unsigned NOT NULL DEFAULT '0',
  `tl_from_namespace` int(11) NOT NULL DEFAULT '0',
  `tl_namespace` int(11) NOT NULL DEFAULT '0',
  `tl_title` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `tl_from` (`tl_from`,`tl_namespace`,`tl_title`),
  KEY `tl_namespace` (`tl_namespace`,`tl_title`,`tl_from`),
  KEY `tl_backlinks_namespace` (`tl_from_namespace`,`tl_namespace`,`tl_title`,`tl_from`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatelinks`
--

LOCK TABLES `templatelinks` WRITE;
/*!40000 ALTER TABLE `templatelinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatelinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text` (
  `old_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_text` mediumblob NOT NULL,
  `old_flags` tinyblob NOT NULL,
  PRIMARY KEY (`old_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=binary MAX_ROWS=10000000 AVG_ROW_LENGTH=10240;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text`
--

LOCK TABLES `text` WRITE;
/*!40000 ALTER TABLE `text` DISABLE KEYS */;
INSERT INTO `text` VALUES (1,'<strong>MediaWiki se ha instalado.</strong>\n\nConsulta la [https://meta.wikimedia.org/wiki/Help:Contents/es guía del usuario] para obtener información sobre el uso del software wiki.\n\n== Primeros pasos ==\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Configuration_settings Lista de ajustes de configuración]\n* [https://www.mediawiki.org/wiki/Manual:FAQ/es Preguntas frecuentes sobre MediaWiki]\n* [https://lists.wikimedia.org/mailman/listinfo/mediawiki-announce Lista de correo de anuncios de publicación de MediaWiki]\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Localisation#Translation_resources Traducir MediaWiki en tu idioma]\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Combating_spam Aprende cómo combatir el spam en tu wiki]','utf-8'),(2,'== Push to Server ==\n\n=== Backup Database ===','utf-8'),(3,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\ncd /var/www/html/wp/\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql','utf-8'),(4,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\n\ncd /var/www/html/wp/\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql','utf-8'),(5,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\n\ncd /var/www/html/wp/\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql\n\ngit add -A && git commit -m \"Your Message\"','utf-8'),(6,'== Push to Server ==\n\n=== WP Site ===\n=== Root Access and CD ===\n\n<code> sudo -i </code>\n\ncd /var/www/html/wp/\n\n=== Backup Database ===\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql\n\ngit add -A && git commit -m \"[your commit message]\"','utf-8'),(7,'== Push to Server ==\n\n=== WP Site ===\n=== Root Access and Change Directory ===\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n=== Backup Database ===\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n=== Stage and Commit ===\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n=== Push to Github ===','utf-8'),(8,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to Github =====\n\n<code> git push origin master </code>','utf-8'),(9,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n* Root access and change directory\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n* Backup database \n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n* Stage and commit\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n* Push to github \n\n<code> git push origin master </code>','utf-8'),(10,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n# Root access and change directory\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n# Backup database \n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n# Stage and commit\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n# Push to github \n\n<code> git push origin master </code>','utf-8'),(11,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to github =====\n\n<code> git push origin master </code>','utf-8'),(12,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to github =====\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n===== SSH into server and change directory=====\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(13,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(14,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n; 1) Root access and change directory : <code> sudo -i </code>\n; name 2 : value 2\n; name 3 : value 3\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(15,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n== Title of list ==\n; # Root access : <code> sudo -i </code>\n; # change directory : <code> cd /var/www/html/wp/ </code>\n; 3) Backup database : value 3\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(16,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n== Title of list ==\n# <code> sudo -i </code> //gain root access\n# <code> cd /var/www/html/wp/ </code> //change directory\n# <code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code> //backup database\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(17,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(18,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(19,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(20,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n# item 1\n** indent\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(21,'== Push to server ==\n\n=== WordPress site ===\n\n\'\'\' Root access and change directory \'\'\'\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(22,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\'\'\' Root access and change directory \'\'\'\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n\'\'\' SSH into server and change directory \'\'\'\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(23,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\'\'\' Root access and change directory \'\'\'\n\n:<code> sudo -i </code>\n\n:<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n\'\'\' SSH into server and change directory \'\'\'\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(24,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(25,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>','utf-8'),(26,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < db_backup.dump </code>','utf-8'),(27,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < db_backup.dump </code>','utf-8'),(28,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < goctalab_wp_db_bak.sql </code>','utf-8'),(29,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>','utf-8'),(30,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wk/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(31,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(32,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(33,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(34,'Logo de GoctaWiki pe','utf-8'),(35,'[[File:wwwGoctaWikiLOGOFF.jpg|options|caption]]','utf-8'),(36,'','utf-8'),(37,'[[File:Organización,_Acción,_Autodefensa_-13A.mp4]]','utf-8'),(38,'','utf-8'),(39,'[[File:TestVideo.mp4]]','utf-8'),(40,'[[File:Test_vid.mp4]]','utf-8'),(41,'test parsoid','utf-8'),(42,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(43,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(44,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(45,'test','utf-8'),(46,'test again','utf-8'),(47,'test','utf-8'),(48,'','utf-8'),(49,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\nDO NOT under any circumstances make changes on both the development machine and the production server without running the script.\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the server_script directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Push From Local Development Machine To Production Server ==\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(50,'The following extensions are installed in the goctalab wiki. Refer to the documentation for how to use.\n* https://www.mediawiki.org/wiki/Extension:PDFEmbed\n* https://www.mediawiki.org/wiki/Extension:EmbedVideo\n* https://www.mediawiki.org/wiki/VisualEditor','utf-8'),(51,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the server_script directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Push From Local Development Machine To Production Server ==\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(52,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the GL_website_dev_scripts directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/GL_website_dev_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Pull From Production Server To Local Development Machine ==\nBecause these scripts will and should be used rarely, they have been placed in a subdirectory called pull_scripts.\n\n<code>cd /home/goctalab/GL_website_dev_scripts/pull_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(53,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the GL_website_dev_scripts directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/GL_website_dev_scripts/</code>\n\n<code>sudo sh ./push_wp.sh</code>\n\n<code>sudo sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Pull From Production Server To Local Development Machine ==\nBecause these scripts will and should be used rarely, they have been placed in a subdirectory called pull_scripts.\n\n<code>cd /home/goctalab/GL_website_dev_scripts/pull_scripts/</code>\n\n<code>sudo sh ./pull_wp.sh</code>\n\n<code>sudo sh ./pull_wiki.sh</code>','utf-8');
/*!40000 ALTER TABLE `text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcache`
--

DROP TABLE IF EXISTS `transcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transcache` (
  `tc_url` varbinary(255) NOT NULL,
  `tc_contents` blob,
  `tc_time` binary(14) NOT NULL,
  UNIQUE KEY `tc_url_idx` (`tc_url`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcache`
--

LOCK TABLES `transcache` WRITE;
/*!40000 ALTER TABLE `transcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `transcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatelog`
--

DROP TABLE IF EXISTS `updatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatelog` (
  `ul_key` varbinary(255) NOT NULL,
  `ul_value` blob,
  PRIMARY KEY (`ul_key`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatelog`
--

LOCK TABLES `updatelog` WRITE;
/*!40000 ALTER TABLE `updatelog` DISABLE KEYS */;
INSERT INTO `updatelog` VALUES ('PingBack','702aa8cf24a47fccccae3cd49c557610'),('Pingback-1.28.0',NULL),('filearchive-fa_major_mime-patch-fa_major_mime-chemical.sql',NULL),('image-img_major_mime-patch-img_major_mime-chemical.sql',NULL),('oldimage-oi_major_mime-patch-oi_major_mime-chemical.sql',NULL),('user_former_groups-ufg_group-patch-ufg_group-length-increase-255.sql',NULL),('user_groups-ug_group-patch-ug_group-length-increase-255.sql',NULL),('user_properties-up_property-patch-up_property.sql',NULL);
/*!40000 ALTER TABLE `updatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadstash`
--

DROP TABLE IF EXISTS `uploadstash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploadstash` (
  `us_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `us_user` int(10) unsigned NOT NULL,
  `us_key` varbinary(255) NOT NULL,
  `us_orig_path` varbinary(255) NOT NULL,
  `us_path` varbinary(255) NOT NULL,
  `us_source_type` varbinary(50) DEFAULT NULL,
  `us_timestamp` varbinary(14) NOT NULL,
  `us_status` varbinary(50) NOT NULL,
  `us_chunk_inx` int(10) unsigned DEFAULT NULL,
  `us_props` blob,
  `us_size` int(10) unsigned NOT NULL,
  `us_sha1` varbinary(31) NOT NULL,
  `us_mime` varbinary(255) DEFAULT NULL,
  `us_media_type` enum('UNKNOWN','BITMAP','DRAWING','AUDIO','VIDEO','MULTIMEDIA','OFFICE','TEXT','EXECUTABLE','ARCHIVE') DEFAULT NULL,
  `us_image_width` int(10) unsigned DEFAULT NULL,
  `us_image_height` int(10) unsigned DEFAULT NULL,
  `us_image_bits` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`us_id`),
  UNIQUE KEY `us_key` (`us_key`),
  KEY `us_user` (`us_user`),
  KEY `us_timestamp` (`us_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadstash`
--

LOCK TABLES `uploadstash` WRITE;
/*!40000 ALTER TABLE `uploadstash` DISABLE KEYS */;
INSERT INTO `uploadstash` VALUES (1,1,'14r5ohb075bs.6ov2sz.1.jpg','/tmp/php05mpEk','mwrepo://local/temp/0/02/20170320212003!php05mpEk.jpg','file','20170320212003','finished',NULL,'a:12:{s:5:\"width\";i:3543;s:6:\"height\";i:1000;s:4:\"bits\";i:8;s:10:\"fileExists\";b:1;s:4:\"size\";i:159121;s:9:\"file-mime\";s:10:\"image/jpeg\";s:10:\"major_mime\";s:5:\"image\";s:10:\"minor_mime\";s:4:\"jpeg\";s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"sha1\";s:31:\"gopgi0l9cusef21c8zjbyd5u48bhbcy\";s:8:\"metadata\";s:574:\"a:14:{s:11:\"Orientation\";i:1;s:11:\"XResolution\";s:5:\"500/1\";s:11:\"YResolution\";s:5:\"500/1\";s:14:\"ResolutionUnit\";i:2;s:8:\"Software\";s:11:\"GIMP 2.8.16\";s:8:\"DateTime\";s:19:\"2017:03:18 18:50:58\";s:11:\"ExifVersion\";s:4:\"0210\";s:15:\"FlashPixVersion\";s:4:\"0100\";s:10:\"ColorSpace\";i:65535;s:17:\"DateTimeDigitized\";s:19:\"2015:05:22 12:50:20\";s:16:\"DateTimeMetadata\";s:19:\"2017:03:18 13:42:08\";s:10:\"ObjectName\";a:2:{s:9:\"x-default\";s:9:\"x-default\";s:5:\"_type\";s:4:\"lang\";}s:18:\"OriginalDocumentID\";s:40:\"xmp.did:F77F1174072068118A6DCE09043D4BC2\";s:22:\"MEDIAWIKI_EXIF_VERSION\";i:2;}\";s:10:\"media_type\";s:6:\"BITMAP\";}',159121,'gopgi0l9cusef21c8zjbyd5u48bhbcy','image/jpeg','BITMAP',3543,1000,8),(2,1,'14r889f3mxdw.4w9nto.1.mp4','/tmp/phpLxEgry','mwrepo://local/temp/3/31/20170321171847!phpLxEgry.mp4','file','20170321171847','finished',NULL,'a:12:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"bits\";i:0;s:10:\"fileExists\";b:1;s:4:\"size\";i:20487260;s:9:\"file-mime\";s:9:\"video/mp4\";s:10:\"major_mime\";s:5:\"video\";s:10:\"minor_mime\";s:3:\"mp4\";s:4:\"mime\";s:9:\"video/mp4\";s:4:\"sha1\";s:31:\"hpd0quf4yrp4mthke7ltm0zrfog6ex0\";s:8:\"metadata\";s:0:\"\";s:10:\"media_type\";s:5:\"VIDEO\";}',20487260,'hpd0quf4yrp4mthke7ltm0zrfog6ex0','video/mp4','VIDEO',0,0,0),(3,1,'14r88hcxjkd8.hul4n4.1.mp4','/tmp/phpC0cIAO','mwrepo://local/temp/6/6b/20170321172140!phpC0cIAO.mp4','file','20170321172140','finished',NULL,'a:12:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"bits\";i:0;s:10:\"fileExists\";b:1;s:4:\"size\";i:20487260;s:9:\"file-mime\";s:9:\"video/mp4\";s:10:\"major_mime\";s:5:\"video\";s:10:\"minor_mime\";s:3:\"mp4\";s:4:\"mime\";s:9:\"video/mp4\";s:4:\"sha1\";s:31:\"hpd0quf4yrp4mthke7ltm0zrfog6ex0\";s:8:\"metadata\";s:0:\"\";s:10:\"media_type\";s:5:\"VIDEO\";}',20487260,'hpd0quf4yrp4mthke7ltm0zrfog6ex0','video/mp4','VIDEO',0,0,0);
/*!40000 ALTER TABLE `uploadstash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varbinary(255) NOT NULL DEFAULT '',
  `user_real_name` varbinary(255) NOT NULL DEFAULT '',
  `user_password` tinyblob NOT NULL,
  `user_newpassword` tinyblob NOT NULL,
  `user_newpass_time` binary(14) DEFAULT NULL,
  `user_email` tinyblob NOT NULL,
  `user_touched` binary(14) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_token` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_email_authenticated` binary(14) DEFAULT NULL,
  `user_email_token` binary(32) DEFAULT NULL,
  `user_email_token_expires` binary(14) DEFAULT NULL,
  `user_registration` binary(14) DEFAULT NULL,
  `user_editcount` int(11) DEFAULT NULL,
  `user_password_expires` varbinary(14) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `user_email_token` (`user_email_token`),
  KEY `user_email` (`user_email`(50))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Goctalab','',':pbkdf2:sha512:30000:64:eJEhLmO/AqgDSVKM7+J9nw==:BhOVKuNcqJuKzgKHpCraYlUQjrUXGJw+VeRCPT4ize7MKMUyMkp9JuJgJHgXlUzqcCxUIA9GzyUrPAiiFbVJAw==','',NULL,'inflama81@gmail.com','20170327004004','1010cf20a59514b75f69a46a887bc1fb',NULL,NULL,NULL,'20170301225917',52,NULL),(2,'Mwinter','Michael Winter',':pbkdf2:sha512:30000:64:cF4RDrVknfEy1DjlBZ3fnA==:ln4mcFED99AHI6NaKVcdfUVmoplJtF1iytDN6QvRiWn/+Mal5WpUrofSwsIwqpTLpfO34L+EkKWSQI99Gh68sA==','',NULL,'','20170316131450','cd64d1f9817a90e1876cc529a6ec3840',NULL,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',NULL,'20170316131444',0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_former_groups`
--

DROP TABLE IF EXISTS `user_former_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_former_groups` (
  `ufg_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ufg_group` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ufg_user_group` (`ufg_user`,`ufg_group`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_former_groups`
--

LOCK TABLES `user_former_groups` WRITE;
/*!40000 ALTER TABLE `user_former_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_former_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `ug_user` int(10) unsigned NOT NULL DEFAULT '0',
  `ug_group` varbinary(255) NOT NULL DEFAULT '',
  UNIQUE KEY `ug_user_group` (`ug_user`,`ug_group`),
  KEY `ug_group` (`ug_group`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'bureaucrat'),(1,'sysop');
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_newtalk`
--

DROP TABLE IF EXISTS `user_newtalk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_newtalk` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_ip` varbinary(40) NOT NULL DEFAULT '',
  `user_last_timestamp` varbinary(14) DEFAULT NULL,
  KEY `un_user_id` (`user_id`),
  KEY `un_user_ip` (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_newtalk`
--

LOCK TABLES `user_newtalk` WRITE;
/*!40000 ALTER TABLE `user_newtalk` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_newtalk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_properties`
--

DROP TABLE IF EXISTS `user_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_properties` (
  `up_user` int(11) NOT NULL,
  `up_property` varbinary(255) NOT NULL,
  `up_value` blob,
  UNIQUE KEY `user_properties_user_property` (`up_user`,`up_property`),
  KEY `user_properties_property` (`up_property`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_properties`
--

LOCK TABLES `user_properties` WRITE;
/*!40000 ALTER TABLE `user_properties` DISABLE KEYS */;
INSERT INTO `user_properties` VALUES (1,'visualeditor-editor','visualeditor'),(1,'visualeditor-hidebetawelcome','1'),(1,'visualeditor-hideusered','1');
/*!40000 ALTER TABLE `user_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valid_tag`
--

DROP TABLE IF EXISTS `valid_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valid_tag` (
  `vt_tag` varbinary(255) NOT NULL,
  PRIMARY KEY (`vt_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valid_tag`
--

LOCK TABLES `valid_tag` WRITE;
/*!40000 ALTER TABLE `valid_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `valid_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchlist`
--

DROP TABLE IF EXISTS `watchlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchlist` (
  `wl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wl_user` int(10) unsigned NOT NULL,
  `wl_namespace` int(11) NOT NULL DEFAULT '0',
  `wl_title` varbinary(255) NOT NULL DEFAULT '',
  `wl_notificationtimestamp` varbinary(14) DEFAULT NULL,
  PRIMARY KEY (`wl_id`),
  UNIQUE KEY `wl_user` (`wl_user`,`wl_namespace`,`wl_title`),
  KEY `namespace_title` (`wl_namespace`,`wl_title`),
  KEY `wl_user_notificationtimestamp` (`wl_user`,`wl_notificationtimestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=binary;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlist`
--

LOCK TABLES `watchlist` WRITE;
/*!40000 ALTER TABLE `watchlist` DISABLE KEYS */;
INSERT INTO `watchlist` VALUES (1,2,2,'Mwinter','20170316131444'),(2,2,3,'Mwinter',NULL),(3,1,0,'Git_Workflow',NULL),(4,1,1,'Git_Workflow',NULL),(5,1,6,'WwwGoctaWikiLOGOFF.jpg',NULL),(6,1,7,'WwwGoctaWikiLOGOFF.jpg',NULL),(7,1,0,'Test_upload',NULL),(8,1,1,'Test_upload',NULL),(9,1,6,'Acerca_de_las_Pilas.pdf',NULL),(10,1,7,'Acerca_de_las_Pilas.pdf',NULL),(11,1,6,'Test_vid.mp4',NULL),(12,1,7,'Test_vid.mp4',NULL),(13,1,0,'Test_parsoid',NULL),(14,1,1,'Test_parsoid',NULL),(15,1,0,'Push_to_Server',NULL),(16,1,1,'Push_to_Server',NULL),(19,1,0,'Test_parsoid_2',NULL),(20,1,1,'Test_parsoid_2',NULL),(21,1,6,'WwwGoctaWikiLOGOFFsmall.png',NULL),(22,1,7,'WwwGoctaWikiLOGOFFsmall.png',NULL),(23,1,0,'Website_Development_Workflow',NULL),(24,1,1,'Website_Development_Workflow',NULL),(25,1,0,'MediaWiki_Extensions',NULL),(26,1,1,'MediaWiki_Extensions',NULL);
/*!40000 ALTER TABLE `watchlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-30  7:53:48
