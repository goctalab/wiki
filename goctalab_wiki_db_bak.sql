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
INSERT INTO `objectcache` VALUES ('global:LESS:/var/www/html/wiki/resources/src/mediawiki/mediawiki.helplink.less:511711247b38d5ed3ee96dee4d3bf89a','ïR\€n\¬0}\Á+¢\ÓÜ(°•T≈º\ÏW\“$m≠∂Iî Ñ¯˜%õ\ÿM\Z/\—ÒÒÒ±-á¡.\Œ?w.:8»í¢ß~åQ	\‰l\–6ˆA#;”°j	#ó!%\„mmıQâ{VK G\€-\Êv4à\◊F\’Û\Á√ØZo$ôçk\ÀJ5,Àî3\Ãzº\"w¡Ûä\–%yë})Y“ü=\‹\È\œ±éhÛØ\È≠4í\r@îæ¡oy£®ï_PV\·\ﬁZ⁄†1LTuh iaŒÅ\ËL\«^Å†\nì\∆eßyçƒ∫	\¬\Ï]8eøí\◊Y8\’¢\n;\È\œ\∆ Ö\¬∆ìy=1K\«q§\Õ\–wt\ƒ©ïN-˜˚9\Ài/≤âˇD\ÎèØΩ£∑DHÇ\€˛∑©Ù.\ÏÒå\ \›Ø˛oA\‘0◊ÑŸ∑)D\€4\Ÿ\ÂUñ\Ï6yñfYV$π\‹æOäúß€≤Ú5o','2017-03-31 12:47:46'),('global:LESS:/var/www/html/wiki/skins/Vector/screen-hd.less:511711247b38d5ed3ee96dee4d3bf89a','çíMä\√0Ö˜9ÖIw\◊˘i:åsè\Ÿ+±ã&v∞CC)Ω˚®IÜB°\€<˘{í,É.ı-Úí∂1¶5üæù™Ω¯¡vˆA\ƒ6 :\Á\ÎÄQt¨X\Í≠0ÿë£ôºÜ\‚4¿5äΩJ\„\"oÆ\‚ñ1B\Ë\…\…ªYã<«±fqc\»ı,ä\nG\ﬁ^\÷:π\'ªIæ˜´ÀÜg!Có]\Á˝å\·\„´#6Å\√a•û\‰ã7ßç°µˇ≠∑˚~^y \“¡ÖzXªS\ƒj6aà\ﬁ¡ñÛ≈á\Î±F6ÒΩ\…c ïN;\‚\«Ok–Öæë\ŒX<ûxHjYe\ÁqPùI\≈3π®∂—©mt“ö”åì\Œ?$9L\–0ı$\Ôå\È\‘B¥\Î\·ícYdßÚ\»\’\…\‰ô\ÈÚè∆ò¶ÇÚãô_','2017-03-31 12:29:05'),('global:LESS:/var/www/html/wiki/skins/Vector/screen.less:511711247b38d5ed3ee96dee4d3bf89a','\Â\\\Îo7ˇ|˛+x\nä\ÿ9≠¨áı∞|¥Mì4∏4	í¥\≈®]\ \‚yµ\\,w-´A˛˜õ\·cü\\=\‹\ÿ_Æ.bkóú\Œá¢Û\—¸ãÑ:æîù+9\\N/gÛ\Œ˘3ÚÛSë\È\'åED¶€êIÚ\Ï¸\‰¸\Ÿ	yF~à∂$\…\—f\≈˝ë+ëÖâDJå,C\«, 4K≈ö¶‹ßa∏%<\"	ø^•^*ºê-S\"yö¡[I\€¡êxú∞òE\ÿtEæè\ƒ˛î¯bΩfp	Ö”É\÷\ÿ\·ÛäK#‚ä±î∞uä≠Ñ\ÊK∂!/>}\"i\¬˝í\nB}†á\\ÆêT\Ï<\‰\ÈV≥¢+`$°\—5#bI6lÅÙâ\ÿHñ\»pbd-d™\‰ë°‹Åt&ëbÕ¨≤@\ﬁ7/\'DD·∂ßEÑˇ˛0º\≈:Ò\Ë\ZyP•OíÆhJ\÷Ù˙ß+x\n…ç°\’%4\n\‡9L\»RÑ°\ÿ@\¬S+{A`¡Æ9hü#\Ì\Œ*]á\‰9Yà`\€!0´(*\Ër\≈AÁíÖz™;\œ;]3ù(\Îu$-#éb¡|äΩÄ[ @8úiô≈±HR\‰\02\’\»ı»øDF|\nÿâ°mä\„Z°7(ıbß\Œ˚\ﬂ^~¸¯Êßü^æ#?˛ãºxˇÀá∑o~x˜ô¸¯Ò˝\Ôü^~¸\‘¡1´Aºy˝\Ó˝«ó?a3ê®c° àKÚ*°k¶\‘ü’êøú\‡•û\‰∞9Ù˚\ﬂ]ù|U\Ô∫\'®\r\’b\≈ñˆ5ı\'†æ9\È„áòl>)bK∫\Ê\·vN$ç§∏\‡K$öì[Pˇ\Ê:YxæE2\'Oñ¸¡V \Ê†Å!{Îçó˜\”l\’\“@Yÿ∫\¬~†?CˇE∞Ñ ˙D\‹%\ÿ^c!RXo∞¨\0\¬@$Q-°o|\»y@û\–i0]^^\Â/=Ω$ˆ\È åX¸¬ík¶\ÊG∑\“K\ÈB>æåú\·-OJÉ%|MØŸô\Êl\∆Œâ\ÏØZÙ¢˛√óˆ\…på?¯$\‡	\0	¨√úÑiÇ∫ÀµÖ∞ÄßR7Ë∂æÒB~\√\n∏\'.\Ô´ñ!èòg!¡£4K+®\Ëç\Ÿ\Z5U\Íπ\ZîdX\rõ;oyî›ë∑|¡í¿J{\Õ§]ÚôØô\Ï#OMÄAoT0˜Ù£\√q\rv\Í^Å≠EM™i†W\Z`m©M9èSk±¥∞	âÖH¥m˛\ﬁ◊∏ÙLGØ4ÄûûU ˇâ1Úy:\Z^ÙÒQEÛ\Ã\Ê)˘/%gm¥<∑\Ìd\Œˆı\Á∂˝çp∑\«\ÁJÒV\ \…x6új¡ô˝’†a.z3Tr\rx¯ágte;ï\·>®ı)\√¡\“5ì∑≥€®<»ãÚáq˘√§	\⁄AoRß\ﬁ\Ôç*,s ï0T~X§)ˇp∑∞Eáçi!¬†\⁄cﬂà\Zf[M\Ïi\¬$K\œj\ÿ{í\nÙ\\∂˙\…aî\√Go\…ô˛lVï⁄ãïr\–RlI≥ñZ6x\rFàn¯\r\ÔI\ÿ\Ó\"\Ï°\‹\Ê:Ö\’ÄOõ§WIP|\0oÏÇ•	£Z,q\Àh∞ôì[.˘\"d\r0ñ(©°\"µπv≥¶drUUGø7õéÛ}\Âe$≥\ƒ8©qW.\„ên¡\–\€\r:EçEÄ{èÇ#DAD-y,¿πS∂;a!8Y∑ô¸ÅÚ≤;•} jÜ-\⁄_5\Â\Ì)\n:¿?ü\’\Zô\›ıg\‹˝¿óùP∑r[~\€SO?\ËáU6ë\–˝≥–¨&	*B/\ŒK∑1(\n\Z˙W\’j∑õ£ﬁæg\Î(\Ë\Ÿ9…íÙ©z!\œYl<J\Í\…\€\Îßgu˚3˛\·\›k¢\€)˝\Ê%ôÈçú¡§k\◊P¡fÖ\Ìï^\Ô)@Å\0\‰ﬂó8FÆıBÒE¿\\\∆c§7öQû2ÚNÄØ∂|?\Ã\Ì˙¡©Å˛\0ê\–\–4bw\0	ÛÆ\÷\’¿\03oæ4êgL¯òj£ˇ}\ÀıB˚ky£_\‰µŸ•K>ZÅ§ë_Z!x¯ä\»¡\⁄7\⁄¯\0Äàh®Ü{±˝Xe>í≥T1≥¶\◊\ÿ\ﬁDs\Ì˜Jã\Ó\'\r¡\“Úä)\Z C<\0\0£\È`<ÎíãY:\”((\÷Q_	Wñ∆ò\Î¥\Àm\⁄`Æ€∫Pfﬂ∏\\\„ö\«\nÉ˙\'c±ÜZ∞ê\∆1\"9\◊B\Ó≤,!wap0,Td\„?m©µÖCñ•\ÌLKP(∂∫ıôáïi∂-¡Jô\'c\Í´Qn\Zõ\È~`R\ÀÚW\ÿ\"à,§û¯‘É8(¡Y\Í™Otcü\‘˝ˇ*\‡yjé0F∫8ûHò?Õò?˝ˆ⁄ÜW\∆Pà5acäaw\0Ä_\'∞W\‡`EÆ3\noRpy¸DH\Èôhı\‰/4Uc\‹S\»e©1fE\'P¶htrír•Ù.gOC)P≥UñÑ7\ÿ(TD\…\‰\\9;\‡\\\”ƒ≥OK\ÎñGy\÷m∑n£‹∏6y\¬;Ç◊ûq\‘\–>Üò\ÍØ|ç*\Â[Éπª\›ìá`ø©y\‘!)Z6p∞AÜ≠ÖP46˛ôˆÒ«í\—¡U\◊ˆF\Í_^ππ©.\nªV\∆\⁄\0î\Îñ#\ﬂtõ∆≠2rÇõåf\÷OO!\÷\Îí\ ?Jy&æ4ë`æ\ŒıGkTÚ@—Ñ≠é¯ªàV<XT¨\÷u∑ÙôGqñ÷∑ã∫u∏\–z\0ˆ´u≤OÖ¢õ∫∞ˆ&∆Ä\Ë\√˛\Ì∆¨]p,cª\‡-\”/MDM\€|>Óººw%ö≥S7\–¬ïfTá0±¡†s\ÀC\Œ5çÉîØ¡\ŸGõ\¬ß	xÚ-›ä\Ã:\"\”jA\'0çÑRZä\◊!\’zi˜ ≤∫\◊e\Î™\÷Ûûx¿ú§ nñ\Ô{™{wŒômÅEi6GW2Mu8x>\—C{ì≥∂@2I¡É+“∑øu®UıäFz\Î	B \‹Z\‹p∞.1å\ƒ=\r≠œí3~\Ìkæ~¶\„\0\Z\Œ\¬{\ÿŸ±k\ƒg+ÒXR1fóóó˚πzk\È©Ò˛$Ò«ü£0∑\Í3(ò/™L\«ıÙQı°∑\» û>∫3ò#\Âü\Ï]Øqod¸\ÿ*¯\‹\Â&{\›\‡≤\\∂§πı™ßa˝\\DòΩX@x\Ãc∑T|ßu£wVÙ]`π\„\Ã\Áπpå«ïI1â+l®|\Ê\Ë{ó¯_n\ﬂ1ÜG\r\‡a\⁄]%ª—Ç\√\“RdJ]{6+ª™Ü\ {ph)l\Ë\»¸¸VÅ»úÄ>ªXfQ¥%™\–\ÿbò]\‰\÷*{zsu;]U˜ñ∏{6\Î^™√è3h\Œ\Ì»ï8=à\'∑g$b}Ü(3øˆª\È.%ªñD5\Áq˛\Ï\‰\ƒUˆDÖ8°:\‡;UQÖ\ 6dRá—à\Ó[\Œ6V4\Ë\Ãnw\’#òoôäd\€H•¿õ\n@\\B®é<;\—\Á\"\Ô\Ë-ø÷∂\‡-]∞0Oà‹™ìö\œ»∫-lT›çêR±¯MI”§pÄcj\Õ–∫§G∏† àlΩ\Ÿ3ç\ÊdáoPâµj^}l=ÜÚ\»L∏|\‡\‡¨˘˙F\—u\”˘VöR\∆\ÿ\Ë\Î¿∞¥zgN<0zö÷èU\ƒ\ﬂ‘®â˚˜(uGZ\‡ïrT\']e\0e˙8Ω\00\Â\«\ o\«s«µ\0ü \ Or≠çmI3q\"\Ë:\’\Z\·\œ=f-Ç¯ÖÜá∏ø˚Q^x¿≠Ié\Ê§<∑\”R|\Zçã\È{S=(æ7&Bﬁã¿®\—n€ã9&¡S\‡Tˆ\Ï\Ëx<œúˆ4;\”\·»©\0\Á7ì\ \\\Ï\‰·îªx\Î~4R(Q.F\·∞Uº\Ó\ZALIÄ\'—öf2∏\»\0\ÿ\√j≥J\Ìº>\ ˙\Í]V\ﬂJr¢\Áœ≠˚ìã1\rZúEW∫π9\ﬁ\Áf\ƒ{\À\'\⁄}8ÒpªŸÅÛ˘M◊£\ZÔ£†¡Œ≤>5G\€nyû\Ì\⁄6öìâM4\·4JµÛÉvë™~\Ã/, ú\‰õ\Œ¯pt%gt\’H/ICrú\–√∫†\‡t\‚\…aùÄq\Ëˆ\»˘\Õ \ÎD\„Aê.g6™Å\‡∞\≈T“Üˆ°\◊›¨\Zö7G^\”D4M—¥˙ÿÄtT;j0R˚Z∂\ \·∑\ﬁ\÷\Àv\Î\"¿∑∏Ùæë¥\Â}Äó]ûWö¿*ı±â%q_g˜ A\ﬂ!c*4å^ôjOo§m\"EÒ∂àn%\√q-U\ÃK\‹˙¿Üu\‹Ù\÷òhü©àE\Ì√µ•pU:ØT\–\’}7pT\Ê±\·Sb˙\– jéØ±rÒ\„\⁄Z\ÓR≤?O∂/\Ë|°jì\”^/W§\‘yy\…\√[ì∂\–u}@πR\’Áá†e}Wπ\œIC~9vMè\÷s\‰e§óÄ4La»ï.AKï\ÈR\√«¥ı}&•=ull±Û:π∆∫ª¡\\Q\Ï./MM\√˝è∂´a]%\‚k*Ki\„øcíp§`8Rπ†âW∞Køw\œ\"ª\'w:QM£-\¬Ú¶éñq^{Òë•Y\ÂU¿∂dD\Ô%òO4>÷ΩY\„[≥Tì¢\ÔP¨	¯é\“R=~\œ∑Ø\Ë\◊1Ç<4\Ÿ\ÁFñ¬ÑñåÈΩ£áf\ƒ)\Á!!Öi\€?6\ﬂ\ﬁ+~|FTÙ.Kµ\Î¥W¶Xª_∂7˝*\’=æg#ô\Ëñ\« \Î¿\ÃOπl\ŸYŸºÉ\r-C∏n|o∑ˆ∂]&™\ﬁ#†SªÑ\’,¯G\Õ¿#\Áπix\⁄ÿµ⁄Ü\ \€~[ã/ø™ùa/ª\—d?\√JõùØø* ïˇg¸è¨\€\Ôxêp˛k§Tî=Æ¿\"üzô~gQ]ı¨¸dﬂ±zkE\≈píü»©ª2+∞\“\⁄\"Kïª°\’oò¢\”Ú\¬ıéR	\√\·}n	ç„ê´\Zk\ 	˘O\Â\‚BZ;\‘RÉ\“\‚hcâ\–Dª\ŸM\’\‡`õèSOU\Êı0%Ué\—|u\„g∑ZO)≠í6ÖTë¢\›\ÂÆ\ÎMQ±q8íºU¯ò`Bvéß“òöê*\Î\Ô^\⁄{T\›=Ç\ÊvË≠äØ∏dhQõ∫≥oé”û\ÈÙà*¥Zèçë\Â7_Ø\‹8\”~çóCó<\¬Úz\Õ;\œ\”^\”˙à¶Xyö\≈q1º\⁄mW<§	ôÒâtÒ.S&Ü5/z.u\Ë\Ÿ(+\‚+o\Í0CÖZª\≈;úES˜N\⁄ˇN\Ô§è\»p\”h<˝.O£π_:˜bL;|ôf\Ê∏TÅÖH]\Âó\‹`πª\Õy\ËÙàπ7\ÌaÕÜ9\0¡`)**1\Ã\Â§i!œñ)ivg2X&\‚-®dï\Î´\Õl\Ô}œã≠¶}+¯C(â,\Ì›ïSs]e\‚]¬öêÇl	Ñ∫lñ$∑\’RªçÉ\ZI\Îyw˝˙¨s˘\Z<\‰ãW„∏õW‹õø¥∫:vˆ$º8Lt\Ì‘≥\ L\⁄u-ﬂ≥6\√a87¨Ú4d…∏DH\Â€à\·\‚ˇ&î\ÍD\Ó_øî˚ı\ƒ\∆˜\÷*Ó±´Æ\‹\ﬁ©Ä≤zPµˆ≠ÖÇE\∆:\'e\r≠Ò\∆\◊Z˘^Ω¶†≥\"Q\‰Úöt§!úÉ+k!O\ﬁb¯Ñ7ÛuY\rP%ıù\Ê\nåF!<\Ó\¬\⁄x*â*X¥WΩxzÚ\—NMv\Ô|)9$º_Å|\"93_!†\Ó¯3uSO\Í´zë0\◊\›TûK\—\·\Í6ÙN7¯ı\r`\≈\◊$\»‘ïè\\>¢Hè|¿µ™\"úH\ \√OqoX§Mï∫4\«hFgL>\’˜óx\Z\ZY\"ô\‚Tâ%Y\—P\'ä\Õ5≠^ÂÆ∏Ω}\Íï5ä6,Kf\’\”\ÌNYÚ;Áô≤≠æ\—\Óû\÷¸\‘\—1Ö\n,o\Õ%•\'±ß\Ó+\Ì≥—Éâ9u3«Ö¿\÷\ÍZu”Ø9mwñp_ˇ{ª6\ [≥Üx’çF,4\…MΩ\·\‡\Á/’¥h\Èn¸\r\ÂRW\”nï\Àv§%™Ùz\"Sımö\ÿÀú=ºèhÆD\Õ’ç\\O,Ué\ﬂ\‹\\¯˚?f∂ °ó\◊5c¿§†∫πV-ﬁ¢0u˜\’_{\Ÿﬁ¶/\ÍÖ\0˜πù\–6[˚é\‡µ\‡\’S¯ˆÒ5/n\◊\ﬁ\Í—≠\'\÷-¶’®$ˇ#ˇ>áßgì\«\Âª.yÒ\œ⁄óa®âÅüA˝˚Út\Œ\‰æ\Ìm\«#∏\Óπ⁄∏[µWmS∑uzxîÅ\‡\·É#D¢ï#{rxw\ÁID\—\Ôœöä±ñ\Óoıu\◊}U\ÁmÛ\Î$\ÿv‹∞øßrı˚q™ˆI†\È4\Êp©?5z∏úÉ˙\‘\⁄9l~∑IâÚÉ·µ†oêπ#O[]gıBú\‚{HjˆƒúHUÅ[∏ÄFÛ[ÖŒÆ/.\ÿ\—\ÿ}X‰ö∫\⁄\¬3˜® áî;πEK—≤Ä/Z«£|∫=2&•≥Póà¶$`A\⁄9|9\ŸS\ŸU˛vºîüDÕÖ\◊\rÆ2\‹\”Y~\Íî/^<JÆ∂Ö\ÎÉ$~ˆç∞^Ø6\“~~¡\⁄x\ﬁYÚê\…\ŒùFÛ/|ﬁáß£y\Á¸ñ&\Áõ\Õ\Ê/\œÒªC\ŒÒªC\‰π˛&∂sùQ\ËA_\Ë\Ã\Á\Ï6\Ÿ\ﬂ\Ì´¡}ñy\œ!äq±ø\'\ﬁ\√•Ú\\\€YNa&óN\nñà,ÒÒ\‚M\‚ü_ÉÇ]K\◊¸8\Â/P§\ŸQ\"˛}Neåbıè¢bøÜ@’ùX:ì\„§Ø˝\‰¶Haxº\0î˜üaˇ\ÈQ˝U\‚J¶4…â\\ë©[©\«Õí\Œ˙ï=@\ÃNø\0Ú¨dA{pºˆµq,H \¬\'É£H\ÿ%˝V¥ùáØ∞\¬\Êùï+\\π#òO\∆ì\ŸÚ\‚Úb0/≥\Î_ˆßì\·≤9ò≤\È˙¸','2017-03-31 12:29:04'),('global:LESS:/var/www/html/wiki/skins/Vector/skinStyles/mediawiki.special.less:511711247b38d5ed3ee96dee4d3bf89a','5è¡n\¬0Ü\Ô}\n´ª!—§•¥#úxÄù&\ÌnC\rm%Å™™x˜•hªXÚgˇˇo£⁄©%§í\ÎÚcP\Âg´r±\Ÿd∞Åìπ=Bp±iO\»¿Ä˛\ \„ˆlc¥\√{\÷U@=\r4¶]Çm«ò\0~ÆV<Fo\ÕC\'=èÖ^w \‡\‰<˜P…≤Ü8;{ı\Ë∫\Œ`§\"\…DÒ\‹S1L\€\‡H3ˆØ∂o\nKˇ\«D\Î\»cˆ\ \÷ˆ*øpO\ÈT•ZX\…õD\≈Ωò¶Itq\Ë\≈\ƒw\·û.?§£ı\Ô\Ê;\ŒI*2å\ÎFÒó\\$ö_A\’*\Ô0tk“ÆR96≤¶÷ò}]QsiL\’6ªC)()u\€&\Õ/','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:05cf53f8b0ac2c2ab112b6035a4ba5e0','•\Zko\„8\ÓØ\‰Z,0]\ƒn\ﬁm\Ï\›˜\Óæ\r\ÊÉlÀ±6≤\‰ì\‰¶i\‡ˇ~î\‰˝H:ÉEÅIëER%èﬁø-w\€˝√ü9Mô\ÈXQ*Æa~b)&\‡F]¶hlò{¿*<™G£ÄU°ft)+83Ù\√E…ºGe¢(\ÕPi\√\0:&\ƒ,u(\Êf[JMg\‚t-ãeBÉà%lOÛà&UN\‘\È\Zë¯tT≤	\ÿÕ•\⁄?¶\È\‚PÉã≈¢:Gvç∫\‡\‰≤gtÅ.\„S\Â¶¸n.˝\„AóQ\Œ\Ã√è9&F•1Ràäj:dLß?ãn\÷˘\»<\0•\ÍwE¿}G¯àDë˙nò\·Ù\«<§∞J&j¸\ZIïPDñë\Ôó\≈\«,ê&á∏T\Z‹ìQ^T\Í≤(§2zˆ\ÕN$4ñä8˝\‡S\Á|Z\À=]~6!=|•∞™tAD\À<á|ª¶êwÅ6N˜\Ã\Œ\‚C/\ËA.?¶%\'ÜˆGjbı\ÈdR©Ú˘£ëíGD\Õ\œ\≈¡äH~,Ø1ßD\Ì¡¿Ã•ñg\÷¬îî‹Ä\Õ\Ê[õû≥\'oOJr\∆/˚\\\n	\∆∆¥/⁄íÜY°\»gñˆ∏;ÚÄ}\Ã\Èò8õ9∑%îSp\‚\‹!\”F™KPØC◊ªº7lîc\÷\Ïé\◊\◊\◊\√\»\ÁUn\nbî\‰M\Ì/RÖ•\ËXúé3e\«ÃÄwy\“\ËOa˜%\Ï=¨9\Ì.ˆ”±O∫\Ÿ˛\ÊÛ&=B.[\È\ $\÷úDî_o˙BÅ9Mõ1øãoz≠\ÔT^è\Á,I8Ìãü3®KÅã§\ƒYë¬ó\nH•ˇî9ù\Àı\Ãì\Ì_ø\0=2\—\Ó1öW≠ë¡ôô¨ûv¨Û0Yì\≈yö¨Ã£ò6à£Öç∏sr,Ω\\S.â©\›6®\Ë∑U\ﬁ`\Ô\ÎtÛ>\∆\ƒ\ÿp\Í±E\Õ»¨‰É™[ªjø8$Iò8\ƒ!k\Î\Ïs£\√[YGD\∆\‘\‘\…@\Œ˛¡(≤Å≥\…\ p`\ÊvÆ∂4?\‘\’\À.\¬UJ®(,ô=BZª√•\Âú!˚gã\–\ ~J˙A@G¶\ÏS¶`!q\∆xr≠U¯˘c\Ï{\“3b£®Ø˛\„R\È‚ñÅ®@L\◊pª˛æBp\Züb(¨ñBIs∏BÖPK°\Án¿sææå\«\∆t¥\◊\ﬂ{=$•ëM\Èo*\“\¬˛A	¢\Á\"=s&§]¥ôá∞\≈,0™6ÆƒÄg¢Ñu©\ﬂuÚH?b™\n”∏zø.>ª\’Rº\”˜´.\‰´tóí\ËÄã˚@¶\€D\Î≠÷ük.`\Ô\‡{\ÓÒ¿z~Æ°ä\„\‘\–Oh!Û-¡Ù\ÿıùi1\Œ\Ãe\Ô)umÛ¨ê}4>¡a87\ŸµMK\Â∑\∆Ñ\‚C§®™à\rO±à,lì∫V¿\'+Å\Œ\0¯\·\Ëp˘{\"∑Ωm¢éXÖ∂\‚tÚa\n\Î|H¥y#†Ñ\—A\Ôzòh\râ8\r\œ\Ï\ƒt≠˜Ú\“\Ì„â£\Ì\Õ˛5I1®ı˛VN\nM˜\rÄõ\Õ¡|≥Œ†,\√O6ø5íLå¸~WÆMÆ”ñ∂æ\rWv°\·é•_±\Õ?u˛Ø\Ï\ﬂDbå5ß\ÃhœÜT)©\ÊaΩß\‡.P\∆1’∏hp(ıúM∫\≈6\◊j°Üˆ≤ÿ∫lT¥\·xsd\'oSæësp\Õlì~\Ë\√\÷}∂∏\œ U∆á¸\‰\·›úø˜;f\Ÿ\n\·\–\Œ@\—\Í\Ì$~!Ld\–ˆô√®À∫qºŒú\Ÿõ\ﬂ~aæÙ7F O¢åvq%Ò6\ﬁN\Ì\nB\◊t]!\”˚Æ\ÍI\Ë\Í-ö“ì§\ÀdYaﬂ∑±z\Îâ^\“$ö≤á.\”$I\ÎF+ï(Ü®åß\ÈÙü\›\·mOX_\”\Ì{ê\–?@Gsn™$R\ÊN\‡¶Rº@	\Ï:üÉo¸\÷\€\‚£\'\·\Í\Â\œ5√øõ7\À_@µeÙ\Ì5\≈Aò\Ë \Á¨=É\"/\Ã~\›f#LÛj\'®B(˘%\·ˇ∂k^qbà/|∑äWüm\ﬁ\√lq\Z≤Ø*¨xY\Áü™±ÇQ<õ`\‚â\'\Ô#6∏\√\⁄@NÛSöé:\‰í\œ\«\rÓê•\‰⁄Ød∂w\‡¯vë£&y†\÷˜\‚CñæZß\“m\”iµVá¸\⁄Z9a\Ì⁄ñ˝;\÷ Ø≠™]˚ì‰ÆµIÚ•µIR´≠m\Á÷ö\‚{é±µµS\÷vj\Î\∆\Îı-∂SK˛\"∞ª%Å\∆˘\‚o•\‚ﬂû\Ì\·ı¨®ñ•Çı¨U¸\Ï\œ,=\‰ÙH\‚À≥c\◊\œHYxdÈø∂/\ÈzÛÑ\ÀU!5sÕâ?g˛Ã°hAâ\Ìˆk®ı\ÓrußïWî\√-˛ùå,ˆÅs\À\—9¥Òp©dB¿ÇZQ\Ë\⁄p£\’wØÛ\Ã\ﬂ^{=ß[wLv\€\ËoÆª ñpﬁã\„7\"äßyã\Ëé2KÑà>ñú±>!ûRös+_Lê\"A1|\Óâ§Ç`$¨\›`ò>]˚7R[PWú≠∞s\÷\Ÿ`dãëFV»°koºE¡+\ÏÙ5F6\ŸbdáëVñ\«\‚X\Z#YÅdíHV Y\—…∫§X#xÉ\‡-Çw^°$Z#xÉ\‡-Çw^°§[#xÉ\‡-ÇwndQ†N(P\'®\n\‘	\ %ı\Z¡oºCp#´ê¨B≤\n\…*$´ê\Ï\…^ê\Ï\…^ê\Ï\…\‰hèl0≤\≈\»#+¥1\◊\ﬁ xã\‡Ç[\Ÿ3>c\È3?c˘sß@\"ØI\‰5âº&ë\◊$Úö+koºE¡ç,rZÅ|V ó\»cròFÛj4ØFÛj4ØFÛ\Z$kê¨A≤\…\Z,ãeP†\nîAÅ\ZGhD*\…\Îı=\Õ8õ7x\«}¸(˙¯ˇXOI=ÚS?ù¢H\nÆ˙SÚ≥á\Áün\ \Î)\”}Ω(®“åà\—;gMo\◊ü˙ì\Í$ª≠‘ö\»b{C`ÒH3l\’g}/¿.æ©<°\ÔDê#Ql§∫\Í\‚°˚\Óæ„äàä#\·c≠5ΩU)\Ô\'ªêëG≠çå]_\Óˇm\⁄Y\ﬂ$Oº≥\◊\‹˙\„}™±ùíü\‚´ı\›}\…˜èÙ\”˙¶\Ïô\Íào≠ÁÜæ˚ü\–\Ô¯\Ë\‹Ùû\¬˜&wπY\’w â\’\ﬁq\ÿ/¯\Ï\‹\÷3Ææ ˘ƒ≥?Óª®œøu£a¥EüÉ\Ì¨ˆB±-9â3∑m?34÷∫~$hIı(ˆª˘Ä…íZ¶ØüN˝˚0\”¿\„:\Ê#JóJÅO˙#Çºb–çÀ´π\›{äG˝ìaG®0|¿_±ú\nªU:\rC\n‹≥\rz´\È^{™/f˝B\Á\Ë\Ê#\„æK\Ëô˙Ø	6a˛*Ûb˛h#ùWèNá˙L[\‘/áˆ\·á	ìJi®\Z|π˘HhTˇ\⁄\ZD\"-yi\Ë\·\”=}\Ï\ﬂ\ﬁ\⁄o\»\⁄†oÅ+õ6M90¯oi¡ôF\'f&r=&	£x¿Ÿâ¢ßMwm\Ì=g\n©Ä÷ª∞\€˜\œ¡\'æà¿§\Ã}D˝¿ç\«ÿâo£c#Ôñ™>ˇu`\‹\ƒw\“\€˙\'´Õ¥~’¨™\“e1\◊e\‘\Ô~™\Í\·','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:134e11620bb65534a45fd5b31853a3f0','\Ì<ár€∫≤ø¢{<ûâoDäΩHsã,ó8qØ…ô7sá\"Aâ6EÍíî%[\„Ä,≤\Â8\…\À…ãïH$\ .Ä-X,àªí¨\ZZ˜èOê\„Y≠ÿé\nñ\„d\‚/\›0H∏\ÿ{D]Q6üpZ{:\À1ÚF„Ñ§ˆ&V4ÚÇÆ–õZé\„#x\"ı\\k\‚˘\›\ÿ\nb.Fë\Á>ë™CÀæE\·,p8;Ù√®ª\·j¯Û\ƒO\Ê)Ar>r14\…ã<#E]q∫h≈°\Ô9≠\rKwt\◊L3∏7åõ{N2ÜÜ§†íp\⁄\Â†JØ9˘\Î•oíä?=«ãêùxa\–ıì(oX?¿%1\ÕlØ\ \‡|\Ô-WB^i∫ÙΩ\0q\ÈPz¡≤ì|4yMZBQz,\Ë\∆R	¯á^0[¥Ω!ä\0˘G{Ö\0\≈j_z∑	\ﬁãL\‰\ÂlhÜaíÑ¿\'©\ÃHów}+Ωk\›Z≠-∂\r\Õ\…Y\È1j,]I\ŒJﬂÖç•qÚã\„8Y>\Â\r4)S?\0µÉ	.\ÃÑ»ñ\ÕF5ÖÉáceQôi¨\¬<´Ã≥∂,π∆ÇxπÄü\— ˛<Å\≈Xjú¥∫5¥‹úbÜæÛ¥NS+íûgm$°\r#√∞:M®TX%ÒE5◊ã\‚\‰≤pˇñ\·=ä\\?úw\ÔΩ\ÿ˙®L0/p<\€J\¬(^B!+\Èô\ÓUG≥hÅ¿:\·\ﬁ0ˆà\‘F»∑\Ôı10¥\Ëä+0,/û˙\÷à?ÙC˚Æ˜\¬\‡ãΩøó3ü\ÔûGìiÚp\ZFâèíºrB\Ó\Ãz\«–¢\‰¡G\\Ú0E]»∑{L¢7±F®;ã¸wéïX]Ú⁄â\ÔG\Ô†W7\Â¡¶ºOõí\0\√C?6\ÂùMIyæ!vàáè&_]\ÓqŒê˜6\Â\›M°\0\0îALçìd∫)˜7•=¯7ü\œ˘πÃÉjÄI\0≤I{§ÜTG)\“T¢GiöJS(\“b2¡ü\"∑Ω\»ˆ±4[\‚\”:ˆM0≥Ñ®R¿ı|ü&mJ≤ ®íaì\Á¢giS\…\ÎVÛòv\Êﬁù◊â\Ôº \Ó\\É\"£…å;√ô\‰\‚<P<@˘ó)8™πı7ΩHúi0Ç9#Fö\“ˆÆ∑O\Œ\Á¬ß˝Qÿáø„ã´Ò\Ó\’?^ë˜Aˇ\0~vfüoO]ú∞ú_\\˙G˝\Œ|ß\”?5\‰õ\Ì\ƒ\ƒ\È\Ó¸›≥\Îs•s™\‹Œ£p~ch\·\Óhw;98∏8∏{ó\Ê\‰\‰\ÀNp\“Òá\«˚É\ŒÆ\◊\ﬂı˜.\Ô.fgì¡`´ı?\Ê[∫ı/$ãÆÅ¡8<M#DDU\‘Ë©ß\rê+t&ûçñ%±\√j(Bt∫ºDãÑU\n\÷#Y\ÊQ<Ç	/õ‹û™zyY›ó\≈=n\·ic\ MÅ\√¿ÚH\÷ÑYÇz©æ\≈\nóhx)\’\∆B¿∫∂$\Ÿl^Éî\„2ubê‘™iT\ÿ4%†æWsëL\∆T˘\·*=\÷$J[_öLHqfÄHâ˘®\∆\≈S\À\∆ÕôG\÷∞&\‹TÛö\ÿ\∆/¥3K`M≥|1\  aMßM¥,\”\'6oV\ƒFeQU∑\Í0êX7ä`\Œ\0yóD0ØL≠û\€\ÃÛV˚)\‘Y\‚\÷\Í¶$\Óú.øú\ÓBq™]OØ∂ \√\‡®bΩ!˙	˛\Ì\\ \·\‚zæâ≈âª\«€≥\Íx®3ˆ\ÏIı=Zù\0ƒöOy\'qXuK[”¨∂=á&Z(˙Oö¯U\”BZ©ø\0j‹ΩTY4M~hYZùV¶˙˛Pzá~fyñ•¨hy¢\·\rY\Àr\Ó=4\ﬂ3–êÄˇã8áñÀàkÅe¡lE\Àhû\÷h¨Ö\ŸE\Óô°\ÂA3∑\ﬁ#v\Ëß4∑2k\È\‰èIQâº)G\r4^S5õ]\nπëW^(=êyQ\Â\ﬁ\ƒ\œ\n\ÿ\‡6(*	¶\’»∞†\”_ÉT%ù¸\ x\÷≈ø∫J™(¶Fä\¬KÚ]°\Ô:-´©}7$(-P$E†äR–§Ùu¨¢°CaMLÀÇ\—)·¶ä\ÿÄ7ø(B\—U\“9åÇ@05^t1mªa\‡\ﬁ\Î\Z\ÓûL:¨Q\ƒ\"Ä3@2!_0N\‹?B∂Œõ*˝\’0\‡ôd8M\Õ\ﬂ)z®Æ\Èdº8RCÜ(8h. 4˘°\∆c≈ÆXóî\'#å\…0SD™I\«B\”Ú¶ä™ö<êxE\√\ÕQyE%§	)t ∑öv!•=\»¿¶ ¿£jêÄ\«#£IJ9°¥R\ﬁ\¬\√¸©\⁄Ÿ≤ı6Öªév«∂ñ>Tï\ÿZ5|\\\»}sîÃÑRûs\’\È¢ı7o2\”\›\níß\⁄‹ó:\0@\Ë\‡Ég\Á\ZfèóıI8≥!òI8ùóU:Ø”ö¨Aó5ÀÑiP\œˆΩi[J\Ô\ƒ\È¢\Õ¸\ﬂ\ÍQgv_d<¶¶ıjPü\ÎÅ\…WXc\œqP¿4\À\r£IªxıÇ\È,\…\r≥≤U°@`\—\÷\ﬂd\Í£: \Â>•mìx\r\‰Ùº7 Ùï”Ç\À2/C:í\"∆ìwçºîZ°5/\Ì0f<\“1†>!\Ï⁄∞,+u\Î}`Ω∫\Ôá\ÿGÕ∂\Àkó\0ª¯\Îå.∂øtæí‘èW\ÿ\‘?;¯pˆy;>\√enw\¬„ùé._\›8ä∆ì\◊Ò\ŒŸü£\„õÎëºÛ\ﬂ“Ü£#¯B∑\«\ƒ\Ê\ﬂ˛x~•\ÓFwG£\—?˛\— ≥\œ\À•1¨\ÀD$C\\}X\∆|ha∏[Ñ\—\Î¶˝\·5v®ÚO¡Å9S\÷∆ùlñ@u\ÿ¥˝E\ i\ÿŸê#¡~êñ\–JÒ7cã2∞E…ì\◊\„\Êhx\ÁÅ\‰O°;\–\n0åXµ∏Úù\Á\—w\›–û\≈\Àpñ`ïE\◊\œV\‡AHl4}ÑLπÄyÙnsdDπØ¨>~]\Õn64)\À8\»#ãx9_W\—∆£\Ís\√Yíº∫.òZ3?â\ﬂVπh˘Ú´»ΩΩ\n9,Y\Ÿ´ö\Ÿ\Z3SçT±s{Îæ®;\r=X˚F=\‹$≤\rÄÄ&˛æ-≠+\\\\_\◊\’\‘˝Ûù[~ù\Z\‹Dã»¶k\Í?¡Ç≠\‚{ì˚´¥y\∆\”%0ä8â\¬;\ƒ1ï\“:4#∑$5™>.¨<rp©ö/¿\Ã\∆K\"¯\’EüÉ∏∞\·\Z\\l[ŸΩV™\n£¸âZÅ\ﬂ\œd€ÄÇÆ´\“˜∂_d\“\\^mÑ\ÂÆEûÛk4àQU	f\Ïæ\'-∫ÖPs\"ï≥Y≥2ïrâî\ﬂ\Œ\Zô•\÷\»\‰ù\«„ôê9ØO\∆`çÙù\œ\Ô˝\œ\√\œ(\‹\Ÿ\€\Ô\À}Û\·Nî\€\Ÿˆ˘â}ÖFÆ\›‹û\ \·\Ìü˜ªèãXª}<å&\·˚\«\«¯N7É/ÔììÖ≥;ˆ]˘\Í\√ı\Ëj/∫û´%±Ü\‹0B\÷!§`:\ jõÖÓî¨2[\nUy10]T\…5ÛHB¥ı\‹}e\„\Á7=◊†\'ô<[î™/âfô~ÿã ê∞…°⁄∏\ŸÛ\¬Vv√é±å?ﬂé≤\€w\È\÷¡¡e,\»8ı$£,∫¯4>\ﬂ\Ìù=\Ó8\«jGùyã\ŸÓßù\ÈG€∑æ\‰\Í\∆‹ëvÆo\≈˜í\÷w:ùS7A\◊G\«˙c∏èÜˆH\Ï|\È¸yv\÷˜˚W\…\Ÿ`v{Òà¨*.ÆÆO\Œ?©É/_G\Õ\0÷êñ_¨+D€Æ+¯5e4[Z4π´\ÎD˛\'&si	Z-˘ı$>@Ûñ\’^ëN∂!\‰dÊ≤•™Üj4@âë\ÔPøFD\Ï˛Zr…öog7\Î\„p[9\Î˛\—h\Ô:ˇ¥]\€˙\Z\‚Å˘â\Á”Çzíd:¶\ﬁ3=nº\"≥:Ç≤,Sª∂∞∆õ¶AªmZV\„\ﬁC\ 8t˚˜\ ¿˜\0\‡≥\¬Œõå¢\ﬁT<4-Ìí†)™\ÂTç˜\ÍnXΩ%ˇd\⁄\“»∞¿ÒAskO_eºö_0VqL\∆$Ñ\…4\÷\∆TffüU?B¡lY^\Õ1µ*ºUÛyë\0*>J¸\÷JàêI¨V∞S\«\»r*IIÅ\Ô7≠\≈_\œmw6Û\„Ñ*\÷˛RÉÜ)<πiW∂MS¢ïueÃä\Ê©j3ùI¢º+≥\€\∆ﬁà\Î±ÒBtb\œTû\‚\‡OCs¨5ù˛\À\Îõ\’‘±¢(úsN8\n˜æ£KÆ\Î∫§&˜É∂\“_†Ú™Äãkº à>ß¬£ä9ï#øè\r6∫â?\Ô¿˜ˆ	TIIq$W≠â€∑v¨\«C9C\„Ö@Ká\≈¿s\Z Û,íf§\n†´%©\¬$\ÓØ\ÏZ%\◊)TG~_{ad£ãq8ß¬π≤[$∂Ø\\˚µk\’^)õ\ƒ9^åÆf\Z¶˘[B\ﬂ °¶Ñ?ˇw\ À©f€ÇˆÂ¥ëü™Û~\≈Ãø,ˆ\Z\È\ÓP\„\‘Dß296GÇßªÅ\’m\ƒ\ÿÛÔ±óêFó§<∂\‹ˆ°\◊x\ﬁ”•é\Â{£†l˛ØPìãw†;\∆^˚º\Ìg\Â:\Ô\Ïsñ\Â+£\”\n\'G\Ó˜®t§øΩ†õLVÄ\È~∑,mÙæ\\\ﬁ\‰Z3?aj\n\’z∞ÜπqeO˘\ÍU`±\ÿ&˜µKæ\ÌsKæ¥LÛ¬∫ûπˆ\¬˙\Ô-|:£j\Ô7≥M!\"q \Ï|ØñÅÚ\Ã\n¢\‰\◊n\∆˚≤/é=ÆQ?Õ±,6=\Î+≤gÛÒzp#kÇ\‚VB\◊\–“ç\¬…≤4[\„¯á.\Õ}\'8h¥\≈\Ã\œıº\Ê\‰ß$\\\rT÷ûõ\ÂÆ\ xÇ\Œ\‡äøDO~ÖNl\ÿ7\ÊVbèS_U\'±	M\·Ma2íÀæ2/V¢]zˇaè,—ï]*9µ†ûFÛ\«9i`\Â’õ˝Z˚.≠]L√Æm\—/f÷Ω1æï\›6÷ûµ\na÷ã\ÈÆ˝t¥òh]+/ı!#t\›%yú+\›`Ñ\Ãπ≠hK\»q]\÷Vl®ûù¥h®Ø√ó\Îã+´ª\Â∫P\È`sßb⁄´§±ñYí\¬Àöú\“GJ˜≤y\’L¯!Míy\Ÿ\‘\ÀÒ\Œ√¥%f!7oßEÛ2.Ω\nº$\ÂxÅßˇì\‡*Fï\Œt´\ÿı/\‚®Y\Á≠hæÑ#Y\·M\·¡ øÜ¶\‡^∏âÒB7eë7dëf**ΩTEN\‚%CßœêC\ﬁp)éñ¡ï9R5É\…a†µ%H\÷&éºïa\Ã\∆P\›™é\»f±\·è\„ND≥¯˚¡kèí≤!Æh≠Ò\›\„FõU\‹SM¡øRuV†\"q®Høò\‚\\_Û˝\Ãr\√ËØøò¿T\ƒ\»3‘ø∑∏4≤uÉ•AW∂\ÌÜ\ZE˘CÑ˚∑≠\Ëí¸ãâ\‘o[\‰∑-Úˇ\¬±ç°§\nõ?´j≠\Í¨_-Ÿîø{\„jEW≥H˚v[\«\Í*∂˛´-ı~yã\Â\'´∫PIC]w~ú\—Rf\ÓªÖ˜Cr?EM¨≤å7V\nÅ√±á\Ê\Ôı¿_L∫˛\n“ï±\Z›π≥4˘äXõ\Áßp(NÉîàãµ•\¬$nyÅ\ÎÅ˝ÉZ¥1ΩtªhΩ≤\·∫%\◊,∆û\Ô\ ˆ}\“˝™^∫ˇ√°{íòiÙ¿\nõ\ÿ€´y§π0Ú∞õPı\Õﬁ™å\ÕDÄjj©DÔ™òÃπ¿∫˜F§≥¯¢û\Ê\ÌPéû3\"\ÂÒ˘W\«ye\◊zUu^\»˚J%I\–°ƒé®[ı\Ì\ŸÙñ∞6Ná9gbJ\ vvq}†MoX^9ºÉ¡nß∑m±\Èxπùb\€jê\◊_Mv\0U\nØ• H\ÃE\Ã\ÊoÑQ≠æV\’“ΩgO\Ÿ6•?ª˜P=\ﬁLnb+Ñç2\\˜(\\\Z}ío-éÂÜùìß\råéa\‚Ü#\ÿEÉòK\Ïâ\ÏÙ-é&V.r⁄†ó\ƒ\’P\–\‡Ω*H|v\⁄G\·*I5\ÂF\√\ÓÚû2G˛pv£∫1º™¸´\√\ÀgöVÖ^Si{≥_vÒ\\s\ÔhkJ[Æ˘Ao\“j\⁄\Ôp≤kKŒµ˚9}[>!N\Œ\Í2ëâ\Èµs-°r\¬Òïßì_∏à\Êï≠4¨t@Ç\Ì˚\”ÒypGsÙ0˜ç˛y/&≠˝£”ù\ŒPü\ﬁ<\ZÛı!ú\Ì›àWÁªÆw0˝ ûI\◊€è∫ªz!:\'˚\ËÕ±˚tDô`UY\‚0ã\€o\Z˝Ú≠q\È≠@•\ÿŒ¶\‡œ∫H¶DjeÙÆ¿\ Ùò\∆\‘Xçm~dÆx\ƒl±t˜ \›}\ƒobZ√™õôVQ\√%L0,*\È\¬q¯}M‘†,JÅ(kW´çCA0*\Œ\“{VZk…å]]öÄ4ù||°FÖ-\ÿ\Î4pe7A©’Ø-\Ìõî–©\∆go,†|∂\…aai\ÿ¸/±r)\Ï;ønìE\”S\‚õRø[\È/±ØK7\"Æ,T	ø©çj) _ö¿DV≠Ü∏a]îÊ∂í;V¥#\ ∂™Õ†\«Ä^≠ïpÃçé\–ze˛≠Œå/\ny≠:Œêí∞6|\Ï∏\ÿë%\’˘©ºgx\≈jé\Â\„ì\Á\ÈÙ\Ô∞\Óoäãï™\Î˛µ\€Bvjæ∏JãzT\—´ºiH\◊\"∞ÚH~d\⁄ﬂÇ\ \Î¯¶(A¸ ä˜*/õá&Ø\‡{¥ù7e\›«óRâ\‰\Î\Áb7Ñ\…À™f£f\‚/\√ \Œ˚¡8Txâ$®ä\“\‰;4˜ô÷òºâokÇÍÇ†¯º@\Í+ºa®áÅ´Ú¯\ /¯¡˜Ñ	Ùn\'(@\ÓH\”x]í}hÖ!\·∂\‡˚¥\»-bÜ*=\Á\≈¯qàÚÄù¢¨(\ﬂ}sÚey¨Ωë¡,*]z\›iΩ+\‚RÅÕ¶ã≠eÛ\≈\‘\"{15ù˛…•¡\ÏwætXcF´\√{*\Ãı˙QEÊä™™^≠Ø†™àJf2ıöÉE•ß?zˇ','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:137cb5df15b45f22d765346f6e0ea264','•\Zko\„8\ÓØx[,0]\ƒnöW\€{w¿˝ÑªoÉ˘ \€r¨â,˘$πi\Z¯ø%˘A?\“\Ó`Q CQ|â§(JΩ]≠ó˚ª®8áâÜ\nr£ÆA\ Mìb\√\ZO+\√Ò4\Î \“\ÃP¿Y\ﬁ¿\–wC%ãñâ≤2π-Hô\·≥\ÿ	üUh\Ì©4Uúâ”µ,ë)\rcñ≤=-bö\÷AA\‘\È\Zì\‰tT≤)œ•\⁄\ﬂg\ŸÚ–Ä\À\Â≤Çs¨Æ)\”%\'ó= \ƒpôú`\ )˛n.%˝ÛNWq¡\Ã›èF∆ï1Råêäj:&\Ãßw?Æ√•w\À˝¯?\Ô\0\’qıà±øÜ<\‡â!èCLÇC\‚X}7\Ãp˙c\—wX+\Õ¯\ZKïR\∆ñR\Ïü\ ˜ ê¶á§R\Z‹îS^\÷ˇ\“UYJet\Õ\Z¶4ëä8\‡[\⁄=\\ˇ∫6!=|%∞Æ]%≤( ˚Æda®ÕÖ\”=3Ñ≥\‰0X»èêi…â°√ôY˜êZ&ì™X\‹)yL\‘\‚˛\\˛\Ïà\Â˚\”5·î®=òòC\ÿ<Û\‰\¬Zôëä∞\€|\Î¢<xì2R0~\ŸRH∞7=\ﬁÉz@¨â\–!d7\À\‘=zD>•tDg\ﬁw)\Â\\πpÉúi#\’%lê\◊q\0\‹09lõc\ﬁÓïóóó\√\ƒÒ∞BDX£$\Á inªë:™DO‚Ñú);\Ê\\\Ã\”VAõ1eoQCiwµ\◊\«>\Ë˛y˚ªO\–zÑú∂‹∞}R\ÎNb ØìY?\ÈKö\‰4k\Á¸éæ1È•æQeXBx3_∞4\Ât\»~Œ°RÖ.ÑêgE\ \⁄)ÖÑ˙OU@∫\\\œ,5˘˛e˘˚ÜG&∫ΩFã∫32<3ì7jß27*‘®hë…´\"NHi9Y⁄îº G¡≤\À5„íò÷Ø£R[\Ë-˙°TØ˙>!\∆FU_É±YQ;T|TäèÌóáí§)GÄ8§oìÜÆ~Ù\„\–\€	íÅ9\rv6û¡oå\"8õ=\Ã}\‚>E´--M1≥ãpÖ\ÍKÉ{BHgwÙd)d∞å,Ôá¥0ä\Îƒî}\∆,$\…OØçØo95¡.¢Å\ÿbc£®?¶ï\”\«.7Pün\‡\ŒNd\'\‹\∆\ÁÇ“ä)ï4†\≈U%(ãZ\nΩpˆÛµf:7≈£mˇ∫ú\€ˆ©ålÉ∂<-Ìü≠GÙ\\B∏Q¡Ñ¥7ã∂õ&•ßl¡#\ŒD	\ÎXøÂëæ\'Tï¶u¯~]æè∂Æ\≈x\◊\ÔW}\‡W\Ÿ.#Òùü+Ä|∑\È6Xpsÿπ∞ΩÅw\Ïi\»C\Î˛ÖÜ\ (ésS#s|\‹|´0?w}cö≈å3s\Ÿ{LS\È<)$!MNp@.L>É\Ì≤S˘≤°\ÿ%,\n-±j£ì•\Î¡\"\◊\"¯§%\–1\0• ù&.\Õ`s∂!¬†\›\‘#m9¥ÂßóeäB*åê6}4™Ü˝\ÿaÆã4$\Ê4:≥s–µ\Ÿ\◊OnO\œwØˆØMçQMhˆ*êrRj∫o‹èéÙˇ†L\√Oæ∏5ì\Œ\Ã¸Ò)_?õ^\Á-\Ì\‹≠\ÏB£\rúTøb\“?\◊¨\Ï\ﬂLvLµá\Œt\ÎFT)©Q≥µ\‡\∆P%	’∏|pàHıîm\Œ%\‡‰ñ©\≈=/∑\÷˜ùà.Ø\Ì¯m\‚∑|nàmÍèù\ÿ˘\œV˙\0rez\œ\Ë\Ì°\«p≤∑ \»W\ÿ7\Ï\ÌÄ!ZΩU\‚\¬D›†9LZØgm\‡\Ã^\⁄˜Ûß@kÚ$JiXílì\Ì‹∂ tM\◊52}\Ë˙±úîÆ^\„99iˆî>\’\ÿ˜]¨^¶r\‚\Á,ç\Á\Ï°OYöf˛Ùc\"ì(à®úg\Ÿ3t•˝Qn\œ[_\€\Ìq{ê\–M@ásnã%\Ê\Œ\„∂V<C%\Ï;°É\Ô\◊\€Ú}¿\·\ \Ê\Î\n\Ô\Ê\Ë°PB\’eÙ]7\≈aò\È+eP˙¶çA±fø\ÓÚÙºX\ru•ø\"¸\ﬂvqÉ\Îè;¢â!æ¯\›*`ıÄl1\Ÿ5B\‰_UXÛSìÇ®ß&!µÒ+ûΩèL\»\‡äkC9OOi6mõ+æòˆºcík\–9y\Ì\◊<E;}∑\ÃÒõ\ XÆ\Ô\–\«$#πN¶€¨Ûr≠˘µΩr\Œﬁµ-ˇü\ÿ+ø∂w\"wÌèîÅΩk\“ÙKÉ”¥\Ÿ,M˚\Ì\\\€`|≤ú\ﬁLFr\Á\Ó\Â6ç\Ï;o\ÁÚì¿6óÚßçølTä{¥\Áÿ£¢ZV\nä’£V\…c}(±¯à\”#I.èé\\?\"a—ëeˇ\‹>g\Î\Õ.\\•\‘\Ã5*˛®¸?òB—í{	h†ŒøO;(@ø¢n˘oÙ`dπ\Ìú[é.†∑á+\'‘±Bá€Æ°ùg˛ˆ\⁄ùn\›	\Ÿm„øπnhÛ\'8˚\≈Ò\Â√¢\ËéÛáE\–$ö=|¨z8g=|B4\'$µ\‡Væ ò AÇb¯\‹$\‚.	Ç≥FxÉa˙p\ﬁUmÅ@mræ\¬\ﬁY\„¡∂x∞√ÉÚ\Ë\Z¡oºC\n;}ç<\ÿ\‚¡:ò≥cnÃåx\‚àW ^ÅxE\œ\Îíbç\‡\rÇ∑\ﬁ!xÖíhç\‡\rÇ∑\ﬁ!xÖínç\‡\rÇ∑\ﬁ!∏\ÂEÅ:°@ùP†N(P\'(ó\‘koºE¡-ØBº\nÒ*ƒ´ØBº\ƒ{Aº\ƒ{Aº\ƒKê£˝`É[<\ÿ\·¡\nm\Ã5Ç7\ﬁ\"xá\‡é˜åôœò˚å\Ÿœòˇ\‹ê\»kyM\"ØI\‰5âº\Êä\≈\Z¡oºCpÀãúV\"üï\»e%ÚXâ¶ë^çÙj§W#Ω\Z\È5à\◊ ^Éx\r\‚5ò †@(É5-é–ç\‘–•4\Í#~8[¥\„8IÜ\„£éˇ\«\„åÜG~\ZåOßê(2T¡\’PØ>\„\‚√©ºé_9\›géí*Õàò<Å6¯∫íúÜJuö\ﬂjMdâΩ-∞d\"Ov\‚Û°`\ﬂû\“7\"»ë(6\›OuÇ\·\ƒ∏˚W\ƒT	üJmùH˘âqR±ôHp\ÿ˙\ﬁ\»\ƒ5\Ë˛\ﬂˆ¶\Ê{\ÂŸó¯Ü~Ñøü¡\œı∑s¸stçº\œ\ﬂ˙˝+˛º¿9É\Ê\Z\„[∫!\Ôã\Ôhâüx\ÈıæB\·[∫{é´7\÷˚â\À~¡kø‡∏Åu\Õ]\…gü˝qüQ}ˆC7\rgª\·\Ë£ÛΩ\’jo¯€õì$v\€ˇ3C≠õWÉısÄ±\ﬂ\€GD\’}˝ûz\Ôéô\Z˜Ù±ò`¬§R\n|2ú\‰m¸ı‹Ω\ﬁó[∫7?Ùâ=¢y\”pa≠\À…∞¶\·FHÇ{\ÀA8˝P˝Ö\⁄/dN\Ódu\‡¢\„>[\ËÄ\Ã˛∑õ5?´¢\\\‹\€\ﬂ\–H\Áö\—[‘°9ﬁñ\ÌãbP€∑#&L&•°jÙ˘&zOi\\CˇP⁄ôEb-ye\Ë\·\√=Ω\Ô__ª\œ\Œ\⁄GbhÖ+¢6#BM9¯èn\·ô\∆\'ff&\n=Eéu0V9\Záúù(z˜t7\Ÿ¡[ßê\npÉ;º}}å	hµœ†¡†A\0\¬ ∞πˆ◊æø\Œ\ÿ˙iÒ\Z\“_G6\ŒT•O\Ã÷üy™]\\\Ë™\\\Ë*∂Eı\›\·ˇ','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:13d1b02022618f2882241f315bd6019f','+∂26∂R\“\À-\◊\ÕHML\…\…\ÃK\’M\ÃK\Œ\»/™N\…,.\»I¨¥\ \À\œK≠U≤\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:28cb4ac20918c47d667e1ca60e22a633','çè\—\n\¬0E•\Ã;D(B˝öÆ\À4ö5\“\∆\…ˇ\›)\néπ\ÈcíÀπ\'…ö\Õ\∆fπ\'Ñ :!©ôw∫\r% ≤w\»\Î\Àsõ¿r\–%6XBú5òŒé\Óí7∞h\◊8$WÙ\À\◊\—∆ü\…\œ\⁄kâ\ÈDÆµÅ‹îRo·óÆ\Á èë$8Et˛b+åI4WZ\⁄,G\0Qh\–\È\ŒU£\◊\⁄\≈q∑ª\ \◊\Í≠g\‚hg∆ò€ò\ÈT\—_¶SØNöT\ﬂD≥\Ì','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:2fb26cab51b5b6b8d6316dc023790fce','•T[è\Í6˛+úS!-\Í\⁄¯í\·\·®jo}k•æö\ƒk\'u°ãˆøwlá,hœæ¥93\ﬂ\Ã|sÒe(iAX˘’âΩñ∏\——µ˙\–\ŸôNãΩ\‘W{8\»\◊Z\rΩˇî¶3Ú\Ì¡[ô≥–™ÜorSLî\√z\›w∂ñUù\Ól˘”Åê\«ÉN´¡-ju˛°)\'\€9ø2ZπmÖmîAV5GWR\Ÿn\«#∏°°ïÑ\ZG+˙\«4≠pV]†ºk/\ÍZôiyp%¡)ﬂ†H∞7g\‚\œ\“:U	ç>é\∆…ãC0Ç∆îûsÒEµ}gù0.î†™Œ†øOrp™3◊Ω®^\Z€ù¨ç,OV?≠Gı¢\÷V\›\…VrX∂Z∑≤V\"\‡∑\Z\÷!`Xﬂ∏poöoÖ$Ym?\–˙)	ã\Z+j%ç{Z8+å«ÇÚ|\'/VœæÇZ8QÜ\»ıpn~æ¥˙y\…]ÚHKF†˚2.˘oK\∆(&∞*M\’˘πE¯\œ?v®æ[Ú\Ô\rD\‡fàG\Á˙%ˇe\…v\«èwúvå\‡‹Ö\œ<™\⁄cêOón\"|î~É\ﬁÒ,§Ûπz˛åî\÷—ºd<\Õ˝/F\÷˝ù\¬\Ê2`#§B).h\‚E4£	\ŒiÚÆFah:©|Üo@\Ây2\œ3õ\–}®¡o(Cw\ÿ¸ym&\ƒJ3úgyÖpë\—XN6\¬YQL\"\≈iL\Á}\Œx\Ó!\Ó;ôxÇV\‹j\¬)\Œr•∏oo∑Ω[iÜföΩ∂S†\œ@aPR\Œ8N3H\‡7úÅ\‚úo\Œ8=\"ÜI\œ¿FxEBô9Ní\rÚ$Y§i\Z¥Çsi\”4¶•|Ω$\È¨P\ﬂUlJC8Òõ\«\02bv=\«4!\Œ\nL∑)¸D\n=ª$Ø¸,}YqD\ÓçaÛÑ\Õ\Zò(õ\Ê¬ß!ö;ù√°\À¸^\≈\÷el|04v(\Ày–ä<\rGo∫\”\È\Ê\ﬂˇˇ]˝èØ§ˇV\ÏôÆæ(y_ÑïΩ^\ÕI∫∑\r\ÍUñî˜óÖ_∂èØ0\⁄\ÎÆz\Ÿ\∆[º∂\·\‚Fqz¢\√3õÙóèoa©ÖiûÑ]=b:àOM\'ª∫¢Q\Ó_îCaBæ\ÂrÄZ˛ı¥@t±⁄¢v¯\ÃÙc¯\Ì\Îˆ_','2017-03-31 12:47:52'),('global:resourceloader:filter:minify-css:7:30597275d53f935e6d8dfbfb67ff9e55','ùT\Ìn\€0|ï†\√˛lëë§]\—*3\»eë%C¢ì∂Ü\ﬂ}îö~\ƒMña/ìGÚx<;\…ı˝Ìùº˘\÷ÑrÆÉîTâT\Ì`Q}ä=$\n&02ï\Í~∞jp4\÷J\ÔöoÑ.D˘\Õjkı\›t∂\'\≈]eˆØ˜V\÷>Æ.Ù.µJ”†‹ôR\ÿXõˇ£ıÛ2\‚\⁄\ÿzmmΩû™◊±}©ÆÉy^\ÊH¡\‚zO%8r\—\–˘$7\Ë∑[—Ö1è†\ﬁ!\Õ\√uµ\Ë\Zêj\–\€<S|M\œ\ZùAL\’\„#h\Zm$=;êH °û˙ºˆ5∑Ò{^ÉCøKG,æÄ|\\}\ﬂ<+Äçóõñ¶¢|.Æ]\–;áâ©W>GÜëBp•\œÚ-˙é,6ü\∆CãÇÛ\Z§á®˙\Ì\…–¢˙†)ÙØdê\'\À:8SRLô\"\÷C\È&là\›\"Å\À{Ú\—	µrG\∆\Z\„`™ätõ)AŒ®A&˚:Ö./!m\„rf-±g©\Ë+Ø¥\Ë¿=7T	T‘≠@&;Z\Õı\À|≤\Á˙O\‚\Õ\“Û%XÜ©öÉ#\Ï\√\ÃX\Œc@á®≤\Zí•A-#õˆı∆å4\‡/\Œ€´îıør\·\\ïz^UE˛\⁄\"j\‚igØÒ	ö\ R\„\‹\Í\Î{∂˙\ÊÙ´8\∆N_˘•#Ò2â5H\¬]\r1çóm\ÿ\«@ê\ŸWºx\n|C\Ì•\Ï?\€ıB˝\‡w˜\„ÒèÚ∞\ \œ9ß3\’\„Y\r¶ºóyØyx¯\ÿÙÆX!-~_l˘˜|;ˆ\ Ùç()πÆ~A˜\—Û\‰x%:v*6\Ë\€NÆ¶õ\Ì','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:4874e3cf67aca4a08a401f390c49bfba','ù€é£6ÙW\ËD´Ω≥d&S\Ì\Zµ\ÍÙµU[lÇcª\∆	õ\"˛Ω\«6	ò§≠Fö9«ú˚}\Z¸≤\€=„ßüjF9â¥\·\“vâTà7kç¨Bíú\‚§në\√\„M°ƒ±ñHI\ÊÅ\”6¨∞\\\…[	~`Ò¶T\ 2É¥ k<M\≈)e\ƒ\n.vlò©Y”ê=\’\ƒ\Z%‹ó8ë\rJ#\«b@Æ±åñF\’ Ö\Ï%/\œÒæÅ}|OºõÜ[ˆ≥≤ºpäëV-\Œ¸\Ã\ÂB\È≥\·˚\ :\\\r\…\’\—:ÄÚ¶Ñ\◊\Ã8¨V9\Ï\ƒY\Î0à∆â\Áh¿á3ñ\‡zü+z\ÓrRˆF%≈õ≤,3ç2xì¶iV≥\Áßô&îrπ\«i_m\„\Í9Æ^\‚jWØqı}W*iQÀúA8WÇÒû°\‹0r@§Ñ†arRúˆ\‘.H˚£\Ëo,j\ÏY0dœö\·\ÊØ#1¨\◊›†|\À\Í(\Õ êUÅsõ<≥:SFWD6¯%k9U-\0Ω6!õÖ¢\Ïû[π2\Ã\⁄jQ\“TåF˛˘\‚d\–\Ëmm¯\ﬂ\—6k+H	j4dÉö¨®5D\„\‡®\√3ub¶™\≈\‰hU\œ\Î}\\Ú˝\—\’Ú∑$\0\⁄\ÍX\Á\›$F\\6ú≤!H¿\‘\r\Ê•àÉÅà\‡{âk(8¡˙\Õ^®úà_@πf¶\ÔmÖ∑i˙.˙é\◊ZK§\Õj.Q¯íNû{ùGIø®üäª\Ê¶c®é\È[®o(b,¨\È/mV@,t\Â\n\«-Mt5qíé5U˝∆™b\‚\Z\\(ø∫üié%8§òrı\„U\À.ù\‡Û\“\' MBf†wh\Ÿ7\€\Õ(P¡Ñòê]\ÏCÇïvl\‰;ß\…+´˚På\ﬁ/Òà˛?∑±\‚mnG}+°&\÷\„ˆÜ\·®}êC\»:\€<´d*\”ÕëGïr-ªà$Wf$âã0ˆÛ!^˚\ÏZ(8à∫!¯)˙kÕá®2¨å>FOüB?˙~\Z\Zí±⁄§o\⁄Ú´ìˆ˚\Ô?~ˇ€ø≤k\…0µ±≤V7xiiO\‚Q\ZÄ\∆3I\Z{Ãª13”Ä:\€eÖ2~9\‹¸°<.+f∏Ω\'rI\“S~J`î¡s\Â\‘y{8+#fÄµÇU\ÂD&@÷â];\’\’dîFiÚ˛nì\‘Û\\f§\√:£\√tºI\\aZ8(ı\‡ù^◊†7ù\\Uôê1»ùJ¥\·\≈ÛÜiΩò2\÷¿\Í—∞ß ö\◊q\Ê≠+êigÖ\Óre≠™±∑nîœ•ú5\ÍuîAª.\ÁXQ\◊.{Å96.™Øªw\Ÿ¬çq+ÖÉ•Øl\ÌfâW\ÎVUL\…\n¢]¿/ÑÆßz|V\Êz7§•ç¡Ò˚Öı†å\Ó\’«ùjÄ\Ì\Z<\nû¨xN)\Ì˝∏ü¨\ÏÄ\◊\Ì5≥ÑK3uv™¨oûa∏Bf\—\r\√\‡V[Ùcã~UÒ[_\Ë óOw˘>Mxßé8\Í9NWb2]ú©ªΩ˛ì\ÕS\Ànt/\‚∏8%óMπT0T\Á\\¯•dg\‡wG\'∏œ∞u\Ô«ìh%y\…\Â˙è\‡íΩú\\∫fCñç\'nò\ﬁ˛ˆYøaEπP\≈·¶•∂ì%\€’∑\ÿ`óønv\Ì_î3m∏\‰**.\Ë¸íáıT(0˙£Ü[bv!˜˝Sˆ','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:58a5147982cfcdd2c518d1c40c3cf9d0','ùT\—n\€0¸£\≈^∂(H≤ÆHùèdâ≤	Àí!\—I[\√ˇ>Juã$Möbì\…#y<û\Àı\„√∂ºª\ÔBZ\€Aå≤ÜH≤≤P,è\"B\rë|átAz)ªø\Zå,çïTm¸\‡¥P\ﬁ˙P\ﬁeåzò.ˆ§p•k\Ÿ¯=Ñ€Ω•1O´+Ωs≠T4H{°6\∆¿\Êˇh˝∫é∏5∂ZS≠ßb˘6∑\œ\Âï\◊/ã\È|Fß\·9GÆ\Z:\À\Õ∫\‚˜Nt˛Uú\«PµH\Á\·*Äl∫à\ZJπ˜®g\ƒ.\Õü\”gç. ¶\Â;\„\0\Z(\Zçw$\"ΩX(ë§E5}Z˚ä˚∏=8ß¿¢k\„\∆W(üV?v\œ\ƒ`\Ì ÄuCSë\≈O’ïı™µ©àΩt)2D\‰ΩÕç\Ô\—ú`Ω—ª8\Z$úWP:≤ﬂùL}~P\‰˚7:H≥\À\ [^èSLöVCn\'å]¡¶U˘ÑJ⁄ôsáZ[\‡~I™I$≤(ó!ù\\ùDõˆ¯¿aqfA±gπ\Ë3≥\"!\rZ\–C\œ-%AT#ê˘é\∆zIüDLîí˜˙úà\‚\›\⁄Áã∞\”Ú`\Ô[\–c>í\ÂÉLäî¨?jY7Û©™¡\n^ûê1]\·÷°SY\Ïy]ô\Ì¯ª®à\Á]º\…4\Êµ\∆sœØ\ŸÛõ\”\œcéùæ¶c\‰ñ\ƒ˚Dñ!\n7tÑ8~\·\«>xÇ\ƒ/S∏a\ S∞∞\‡jjÆeø\Ì\€+ıÉk\Ó\∆˘\Ô≤]•\Á¢\Âô\Î|[ç1-¶?ä∂\€\Èc\’#\\ˆC,~≤dãØÛ\Õ\ÿK≠\—\’\"ß\ ıÚtG˙ù0G\«NÜ\Zù`Ûï´\Èn˜','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:5a34789617fee7de16cf2bcd9eddcf63','\Ì<âr\€:íø\¬y)W\≈ë\‚}H53+\ÀGú¯>ìW[5Eë†Dõ\"5$e\ŸV˘ﬂßêxHñ\Ì$õóçïH$én\0}†\—h \È»ä¢*ù?F\È8ò{QòÚâˇà:í(n<\·¥\÷ r\Ê#\‰G)I\Ìé\Ìx\Ëá±;±]\◊áD\Íyˆ\ÿ:â&|Çb\ﬂ{\"U∂s;å£i\ËÚNDqÁùß\„\œ\'åg<)B!ÚÚ0\n4. K\Ã\r¢\ÿEqGö\‹sI¯.˜\Œ6\\√≥∫4Éèq\”¯ô\Ô¶#h\nóK£Iáá:\›¸‰ØõΩ\…\Z˛t]?FN\ÍGa\'H„ßºi§ç\»ı”Ñf∂ñeÅã\ÊK∆°®4ô~à¯l4˝p\Ÿi1†ÇÜ∆ú∏(=í\ËFr	¯~8Ω\Á¸äS\0˘GkE\0\≈n]¯cî¥\ﬁ.ãLî\0L\”h¯dçk:é\≈\›	\Ïp¯ûª±πM∂\Õ\…y\Èj,]I\ŒK\ﬂFç•qÚú{n,GÀÆÇâ\∆e™\·†xò¢0≈Öæêÿ≤˘\»fpê,-™0≠Uôgçy\÷\Á\Âa\◊Yp¢†,\‡\Át\»IP$∞Kçìó∑ÜñõQ¨É(pü\÷ijY\‡ªºK#∆ÜaxöP´ÚùœèìÙ#≤q\Á\\táb/àfù;?Ò*\Õ]ﬂ±\”(N\ÊP\»N;D∏ª\’]¥ALìåõDâO\ƒ7FÅù˙w®˚à°°˚é¥\≈\‹ıìI`?Ä¯É rnªèP@\Í˛Ωú˘ƒπ˛ùÄ∆ìÙ\·$ä\”\0•E\Ì0Ç\Ïi\0TO†M\ÈCÄ¯ÙaÇ:ê\ÔtôDlQg\Z\Ô];µ;‰µù\‹\r?‹Éí\›P˙\ .<m\»\"P\ŸP∂7dYD¯ÜT:Aö|y±Àõ8C\Ÿ\›Pv6\ƒ\0\0XP`Ñ	-4J\”…Ü\“€êw\·\ﬂl6fä\0J^dH\'\Ôí\Zr•DSâJ•i\ZM°$»ä)Ü\‹Òc\'@PƒπßŸ≤ê\’qhÇï\'ƒïû4iCVDQìMá</zñ5ïºn6èi{\Ê\ﬂ˙\Ì\‰\÷ìˆ®\‰(nìÃ§=ò@.\ﬁU \0îY¢´YõÛQó{é:ìp\”GÇtµ\Â_mü\Õ\ƒ\œ{√®GÁó£ù\À!~º$\Ô˝\ﬁ>¸lOø‹úx8a+<;ø{\Ì\Ÿvªwb*\◊[©Ö\”?\ﬁ;ßWgj\Ô˙DΩô\≈\—\Ï\⁄\Ÿ◊£ù\·\ŒV∫ø~\‘˜v/¨ÒÒ\◊\Ì^ˇ∏éˆ˜˙\Ì\\Ø∑\Ï^‹ûOO\«˝˛&˜ø÷í∆Ø7–Ø!EÚL	F\‚i#\"\Ë¿b®¢æ@_=q\Ô@∂\–Qî˙öód\Î£—πÛ›ß¨vP¡Ç(2ì!\Ã~˘L˜TU\–Û∫¯>/ÛπÄã\–¿	?éB;XÄ≤`/LS\‘\Õ4/VΩDü¿U\ZÖä\≈\'Vª%ÒfÛ\ZDó©≥%I≠\ZKåë√ï¿~e\‡%2;sT\r\‚Z]\÷L\ zPöZp;J§\ƒl§„ìâ\Ì\‡\Õb{ÇG+Âß†¶\'\–\Ã~±°≠yk∞CâqrÄÖµ¶b4A–¥0 û¿R[dÆ√í\„Ç!%E“¥\Õn\r;\Êá1L ¿)\Ô\”&ôâ\√sãy\ﬁl}#\’:MΩöj›ê•\Ì\„˛\≈◊ì(Nı\Ï\…\Â\÷¡>d`<U±\◊DS¡ø\Ì\0$û_\Ì¡7—¶8q\Áàb[©ò˜Ä>#\ﬂI\‡ëTﬂ•\’	@¨%IpSóUº¥5\Õ\n\‹wi¬Å˝Ä\‚gâØö ≤JΩ{†\∆\Ìsï%À≤\‡áñ•\’iqrO\ﬂJ\Ô\–\—*\œ7íú-O9Ç©\ËyŒùèf[Q\Z	\Á\–r9qm∞2¯[\—Ú!öe5\ZkavQzDjhy–ê¿≠wà˙â\rÕ≠\Ã_˘£@2Táí`)¿Q}]\–5\›\·AßBn_TSÉJ˜A\“xQ∞≥\nvπ\ÍJÜ	∂R,\ZÙ\◊$ï$\Ÿ ø\nûÒØ°\—Ñ*™•ì¢0Ÿí<\—P\ÈªA\À\ÍöI\ﬂMJãIiAë¢u9{©Çd\ZPXó≤≤`Ñ ∏©∂	\‡\Õ¿/™∏hÑ&<FA X∫/Üîµ\›4q\Ô\rwO!\÷)b	¿ÄA [ê/Z*ØÓæÖ!\€,ç˛\Íé	,2ú¢Æ\Ô=T\◊\r2^<©)\nSí4à∫ÚëP\„±ba¨KJåìå\∆dZ\"Õ¢c°*yS	E5]\ÈÀÇ™\„\ÊhÇ™\“JÑê[À∫Pº\“\‰`3*\‡1D-H¿\„ë\—\Â•íçPV©h\·AÒT\ÌlŸúzõ\¬]Gªc´\ÀhÆF¨Æ\Z>>\‚ø9JfB)Oº\⁄\‰û˚õ?ûÄoá)ù\nK≥_\Ê\0©É1,hö3ö7\Ãƒπ1¡\Ã\ƒ\Ÿ\‰)OEU÷ú†ãåöâ¬¥©\Î˛§Ém¶˜\“\‰æ\≈¸\ﬂ\ÏR\'ˆj\‰f<f&uvP_	\Îõ)\\#\ﬂuQ\»4Àã\‚qkÒÍáìiZòhe\”BÖ˛¿\n\Ï¿Ò$@\ÁtD\ }\ \⁄&:∂:\»\Ë\ËYó˙N\«\Èû\œsﬁál(%å®\Ëy)5C\'ãö©à10í{å®∑˚ç\ﬁŸ∂ù˘{_\›)DÃ§:oæfA∞ÉøN\ÈÇ`\Îk˚\ÎI˝tâ\rˇ\”˝èß_∂íS\\\Êf;:\⁄n\ \Âµ¢x4˛xïlü˛˘)>∫æ\Z*\€ˇ\"}0<Ñ/tsDV\0[ü\Œ.µù¯ˆ\”p8¸\«?\ZwµpP*\√J\›ED<4\—3Uâ,\∆∆õ#¨^7¯\Ë_cà*-x∞`\À⁄∏3\“\Õ®˚mˇ>AëÒ\Zˆ?H∞sÑπ\Ï3∆∞§\0_î\\|]~Ü∑>Hˇ∫≠\0˚8Öå\Á£¿]çæ\„E\Œ4ôG\”\Î-∫BXYA\01q\–(\n`r6\“3X¯q¬ì\Â_Y=z|]\ÕN>4À∏»âbõ∏?_V\—¡£\ZÉiöæ∏.\ÿ[\” M\ﬁVy\—Ú˘´»Ωµ9,_\Ÿ\À÷ú˘r3WéTÅ±\Œtg\nÎø∏3â|X\«]∑â,JC††Öˇ∞B+≠ªW\Ê\‰˙Ø¶ÙWwp˛:U∏â&Q,\œ2~Çï[\≈)ˆ&èXi-≤\¬˘•Ù1ä$ç£[\ƒ3ï≤:4£0)u™n/¨@\npô%Z¨¿\ﬁ\∆k#¯5§Ä\Àxa\Ã5x\›*>∑≤«≠TÜ\≈5øü-\»06E\√\–\‰\Ôm>À§Ö\Ã:\ÀGVy8\Zƒ®™Ngé∏å\ÔHõ.@-‘úJï¸íÅô…∫LL\ÀogïL3´d|ÉNâ;ÚT\Ã›ëW\«#∞Jˆ{è˝ˆó˜Ω/É/(\⁄\ﬁ\›\Î)=\Î\·V\n’õ\È\÷Ÿ±sâÜû_ﬂú(\—Õüw;è˜â~Û!|é£èè…≠aÖ_?§\«˜\Ó\Œ(îÀèW\√\À\›¯jˆ\r¨ó\‘ÉŸ∑Ñò¢\Â™\Àm∫ç≤\Ã|Y¯´\ +É	1hXÇMÉ&öµ˝`\Ÿ\n˙M\–5JfQéíuµ≤NB\ÏXe©\ÿ\Ëdm\‹	zfœªa_Y¡üoG›≠\€lWaˇ\"úzúSùù\ÌÙO∑\›#≠≠M˝˚\È\Œ\Á\Ì\…Ü[7Å\Ï\ÊÃï∑Øn§≤\ﬁµ\€\Ì/EWáG\∆c¥á\ŒPjmˇyz\⁄zó\Èiz≥ˇ\Èê,1\Œ/Øé\œ>k˝Ø˚˚Ø£hKJ;X,2$«©k˙55_g4π∞\Îd˛\'&tiEZ-Ñ°û&Ñh\∆Ÿ≠%\Èdó2Enn<€öfjfîø!ı{ßD\Œ\ÓÆdè¨\0∑wr\Ÿ>äˆ∂\‘\”\ﬁ~w?£≥\œ[µ=¢\◊PåQ<≥.\»\'À¶i`Ú≠\Ëq\„\‡-2´#®(Jóπ€ºXAUÄ`Og7\ÓGdúCwáüô±\ÀP\‡jq,\∆-±p\ÁT<4-Îì®´ö\ÌVm˘\ÍFYΩ)ˇÑ∆¨dY\‡˘∞yõ˙˜Ú*õ\‡YÜ©O!òKô&g\n*B\‚i\Z´cB≥ìPô\Ëå!xà\¬Èº≤ºc+VX¨\Ê\n#!WBú+`B.1d¡t!€≠î\ƒf*ãÒ7£≠\≈h5>zñ	\Á\‘\¬\' 7®öÖè7K\‡À∂jFµ≤≤†\ÏYQAUµf0IîÉvWôb√ªt]6∏à\ŒÒπ\ÓS]¸ihéΩ¶SÑ¿~Ω≥ú:vG3ﬁçf\·\¬˜\Ô\Z≤\'˛∫.	π\…%°/ı!hÇ&\‚\‚∫ äR¿k®\·G^\„\…\ÔcC éa\·O\≈cΩ˝URíx\Ÿ\”j\‚ˆ≠ù\ÎÒP¡\–xM¿∞.X•rè#iF¶\0\Í∞8Y\«Ióxk\◊*πN°ä8\nc¯⁄çbùè¢Œ•\›\"ëø\Â˙ª\ÿ\ﬂ]´ˆB\Ÿ$NÛ\≈\Ë\ÍñiYø%Ù\rj\…¯Û\'°A±ú\Íé#\Í?PN˘©:\·W\Ã¸Û\≈&$\›5júö\ËÙC&\«\Ê\–Òló∞∫Ωò¯¡ˆ\“xtÄTD£;Ù\Z\œ˚#∫\Ë±ñm@\‚$b‹Ü\ÂtFÿï_Ù£µR∞ã\ﬁ.[Tê1yY\0\€\¬\·Q¯@*=©6¥\Ó\Èˆì>`\ \ﬂ\ŒK{¿kTÄwyˆ4Hô™bµ\'∞¢æyeèOv≤&\\e\›gãΩÜmñ≠ˇ\ZÆZ\0feö\◊\ŸıÃµ\◊\Ÿ\Á±éjcöYg!\'I\n úb#óÅ≤bQrw7\„>\„úcOy\‘Å,ã\Ì\œ˙\‚\ÏÚI˘=x±=F	G\–54˜\‚h</M\Ÿ8<¢Csﬂã.\Zn2ìt=Ø9˘)çñUÙU`Û\‹eO\–\\Òó\Ë…Ø\–	\ÓùcÛ\”pfß\Œ(Û]µpõ\–\—F#\Îx€óe`Eê*\—0]\Ó\ﬂ\ÏY\'∫\¬ÀÑßˆ\”h\∆\‚`(¨Ωz\√_j\Áeµ”±\Á8ÙãôwoÇe∑îıï\÷!L}	}¢√µóç\“kÖ†>dDûó†¥Ü•õ\œ`âêÈ†∞πû\«⁄å\r\’ÛÉ\rıus|}iiuØ\\*l\ÓÙΩT\ƒˇ™Y@\ÊCû§\näÆdÙë≥}nA≥≤~»íA±årPÙ ´Dâ\Ÿ\≈\»+\⁄i”ºúK/C?Õ∏\«	ûc\‡8ºLP•3∫U\Ï{Sêph-Wı@\∆\·Æ¶\n™hí_SWqú/é\Ó\ƒx°õä$òäD3Uçá^j/≤i\–g\»!o∏O\À\‡\ <©ö\√\‰1\–\⁄\“$ká\Á*0VcòÇ\·4Wb≥\ÿ\–Q¿a)íµ¯˚¡kêí≤!.h≠˘›ÉKõU\‹SM≈øPuV†\"i† øò\‚\\_Û˝\Ãr\√ËØøò¿T\ƒ\»30æ∑∏4≤uÉ•A∏≠Ü\Ze˘CÑ∑£\Z≤Úãâ\‘o[\‰∑-Úˇ\¬qÃÅ¨â?´j≠\Í¨_m\≈Ræ{x\„rEW≥H˚v[\«Í©éÒ´-ı~yã\Â\'´∫P\…\√pú\—Rf\ÓªE\"r£EM¨Úå7VÅ\”q\÷\Ôı¿_L∫\\	˛\n“ï≥\Z\›¡≥u\ÂäXõßtB(N£ïàóï3Dqúp~\Ë˘`ˇ é6¶õ\Ì≠W6Z∑\‰ö\≈8ˆ\0Xæ˘ì\ÌZu≥M \›¡ò$¥H£V\‹¿.\ÿn\Õ+\ÕG±è=≈∏Äfltóe4®&	T\”K\Â¯ z\Ô›Ñˆù?$\›≈∑˚4oåÚÙ ≠Äè\…Ú8\‰+ø¨≥Û\“ﬁó^A/\"å]I77\Î[µ\Ÿ-c\r¨úçt¡»îú≠¸ä˙@\€\ﬁ\"∞xºzx\„\› Æ\€d\”Ò~r+√∂\Ÿ ≥9æö¸\0™ß-@ê¯ã&0ò\’\ﬂ£Z}≠™•K”ûÚ\›>\ \0\Ï˛Cı4π\„d¡!l\»\·∫\«\Â≤Hîbáq§4\Ïü\0Sb|œó‹ôBZ\ƒ4ôn˜s\Â€∏¯,µrˇ\”;z\À\\\r	ç\Â´%\Á∆Éh-ì\'I\«Qo4Ø\Ë-s4g?e0™{\ƒ\À ø8±|\Ó©q≥8\ﬂ\‡’Å\ÿ\ÎÛ´ÎöªGõS\⁄~-ŒÑìfg\ÁûXdóÇ\n2s\">NNéı2¡ä\Ÿ\’uúX9\“˚¬ÉÃç£Û\Í \◊}\Zi\⁄\'ë¯Ω\…\Ë,º%\ÁæEz\Ó˚\⁄¯≤õê ◊á\ﬁ\·\…v{`LÆ\ÕŸπˆMwØ•À≥\œﬂü|îNÂ´≠G\√\€;9ó\‹\„=Ù\Ê¿~:¢L¸™Çliêı7ç~˘÷π\Ï°R∏gS<h]23\"q˘Ωo∞2Qf\≈!\Í¶ˆ\‡G\Ê¢H\ÃëJ˜\“=\—gAºÒ˙¶ı0,ª\Ãi\È5\\\€\√\¬\„ì!è\ﬂ\◊D\r˙¢ó≤vµjâ8E≥\“\·\\\'}`•µ∆ë\Ã\ÿ5—•	H-^\‰˘\Z∂`\Ô\ﬁ zÀã\"Plı\€EKõ\ËRêq/_∫ÄÚm¯¶ÄÖ9§!†\ƒÀ•P\‚\ŒNFqàOâq≤Y6√í˝[ªtù\‚\“Bïhú⁄∞ñ\‚sL®\’r»°\’Bmn+πØ`I;\‚<Ç´\⁄z\Ë\Ë\≈-Ö\»i`ÆÉÑ\Ê£8,spuz|˛\»\»réî∫\·Û…ã]E\÷‹ü ïÜóØv\Ë\⁄>¢ûVˇNÄ¶`Yπ\ÍXk\Â-\Ê\«\ÎóoQÅ&ô#M∞L˘J^˛…èÏ™ª\‚h\–\ﬂ-%J%\ÈN\Î¿T|Ûñhñb¯\Z+â|\‡\\Ïì∞E¿z\‘-¸eöƒ≥`bgÉ)ö™ ìMUõ	¢\Ó≠hç%X¯~\'®.äj à§æ*ò¶v`∏öÄ/	É|≥òHoÉÇ\‰V5]0d%ÄVò2næÅã\‹;fjÚ*ó∆èÛF,ëÏëêU˝\Ó;ï\œ\Àc\Â<é∂˘\›ˇ','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:5e2947b147d8f5142f5b5b81a47f3dd9','ÖçA\n\√ EØRíµ°Ü∂söIù®†é®$\…\›kB°Yt3ã˘ˇΩüDˇ∏â¶sIæäÉ®ågß,8G7ê\“x%x\◊\ﬂ\—]x˜s\◊60Kä é\\˜ó4s;eåˇ|k[áx¥\Â∞Éß™B|\ÍØ&\Z•´gã∂\ZÛ0Ÿê?\rmp¿ò»É-Æ\Ói\…FHxÜö\·\r','2017-03-31 12:29:05'),('global:resourceloader:filter:minify-css:7:6b0c5354a9e9f765dedb3b3f11c04637','•T…é\„6˝\Õ\⁄Hì\Ê¢›áAêåoπ%@Æ¥D\ÀDSK(\⁄r\⁄\ËOëî\’6z˙í¿Uı™\Í\’\¬e,iN\‚Ú´{-q;°£mı°7-\Íz-ˆRG∂v∞óØµ\Z-˛)ªæìoﬁ™;≠j¯\';\«ŸØ\◊}ojiP\’\Îﬁî?y?haµ\ZmT´Û\rHY\Ÿ.˘UßU\'∑≠0ç\ÍêQ\Õ—ñT∂\€\ÈnhD%°\∆…à\·-z†kÖ5\Íı]Q◊™kêñ[ú@Ù\r\n|{≥\Ê!˛,çUï\–\Ë\„l¨ºX3h∫\“qF_T;Ù∆ä\Œ˙VU\’w\Ë\Ôì≠\Íªk¥\’Kc˙S#kE#Àì\—OõIΩ®çëc2ï7£©6≠¨ï¯≠àç772<tÕ∑\\íä¨∑h›úÑAçµíù}ä¨»ÄÚ|\'G\ÎgWA-¨(}\‰f<7?_Z˝º‚øÆ¯§#\–˛W¸∑cXï]’ª¡¯\œ?v(wæ[Ò\Ô\rD\‡\›<é\÷+˛Àä\Ì\‡?Mû8\Ó\r8\Ì!¿πÛéyRµ=Ü ó.)|îná\ﬁÒ‘ßsπ˛åî\÷¡ºb<\…\‹/D\÷˝ù\¬\Ó2`#§B	\Œi\ÏD¥†1\Œh¸Æath2´|Åo@\ÂxR«≥ò\–}®\ﬁoÙ(Cw\ÿÚym&\ƒJSú•YÖpû\“Péã\·4\œgë\‚$§s>ß<swù,<\∆9\Ào5\·ßRXΩ∑≥Å[Üﬁ≠4EãM_[Ü)–ß†0()c\')$pÅß^†8\„\≈\'G\ƒ0#\…\ÿØà/3\√q\\ GízOöƒ†A+8#ê6IBZ\ \Ë%NÖ∫ÆBãP\Z¬±\€8ê≥õ\Ë8\Ê	qñcöª∏\"w\…ı‚ûì¨r≥teÖ\‹˝8\Ê1[40Q6œÖ\œCˆ4w:áCó∫Ω\n≠\«\ (\\04\Èw(Õ∏\◊Ú,{ıGoæÛ\È\Ê\ﬂˇˇ]˝èØ§ˇñ\Ôsô¨ø(y_ÑëÉ\ﬁ\ÕY∫∑ç\ÍUñîó\»-\€\«w\Ìu_Ωl√≠Ù^[qÉ8?\“˛ùçá\À\««∞‘¢kûÑY?b:àOM\'≥æ¢I\Ó_îE~BÆ\ÂrÑZ˛ı!\Z≠∑®?3˝~˚∫˝','2017-03-31 12:47:52'),('global:resourceloader:filter:minify-css:7:8055499895c1161cf623b9463083d019','+∂27±R\“\À-\◊-\œ\Ã\Œ\‘\Õ\…OœØNJL\ŒN/\ /\ÕK\—\Õ\ÃMLOµ*-\ \—\–\…\Î•\Áó%ß\Î\'ßñÉEı\nÚ\“\ÌÕí,Rç5kï¨','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:aebac3d10cdb36389f3783791f495514','µî\€nõ@Ü_%MÖ´\ŸÒûÄ_D\È¡w}à5l`e∞qSı\›;ªò+QU©™d-s¯\Êüaê∑OYHìÙˆ\„a$∂\Œm¶á¶#Ëî¶j+[\ÔoÙœù\ŒˆE\◊\ÎúÿÉ.LzÏ™ªıh˜v›ôæ9vô\È\◊}ó≠&∑\⁄\«=◊Øù¥uÒ`Ñw´\Õ%\Ï`tGäN\Á\÷\‘\√\›\–\È∫ouáˆ˝\¬^›ªñπt\Í\Î\÷˝©¯t>T˜Å¯à-Zß\'\”ı∂©Ò5\‡ú\≈£¶Œö\‹\÷\≈>ODπÑ\ÿ\‚V£B(P˜QCà«ÄoÒ7é#åö°-ß5∑æ\¬)è6 ©à\À)T\Z[î\√u\Ïd\Õ¯π9OAp\"\‘%\ÈD¯1ä\È\—jT\‰4ü\‡\Ôå•Ãë@Uòëd¨úI aZ§P/\ﬁ¸t˚B\\rr¡\Ã˛\Ã\—9FÆ*\»\Ã—©;Yt$ØDÙ|∏å\ T\Êò(Ù5\nóD@ƒíã\ÌN\·s3µ»¢˜J\…i˙H^¶õ+=øgñ\Œ<π\"»í\œ˛£lˇ∏uq\‰VA§m8L\Ô\"Ä{UL©kØb ±LÖ≤û(q\¬ °å0\‡<\… \ƒeÅàùÉàá\ƒæEÄÒbL(Ö	{(T1Sˇπ9ƒ∏ HB\·SLEÑM{\√W´ƒéQ\“!é,òÚ0ïGäeQÅÉ\—I_JÅ˙B®èÉLdOú~\Ïª=\Œˆ\’\ﬁ\ﬁ,ÃâD%?Òí+ç\‚\À˝á–¶èˇz%¸˝-Ñ-v\"\◊zı¡ö∑]IC˛S\„˜ØøŒ¥Fi\›\\¨eÆmz;\‡MñV\Êi∏…∞ß\È6≠\Œ\›5F\\,\Â™=or€∑ï˛ë\⁄\⁄MNvUì\Ì7\”\rîrâÄ/øn7ø','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:b765a0fb2764712a6bc4483a49facdfa','µî\€nõ@Ü_%MÖ´\ŸÒûÄ_D\È¡w}à5l`e∞qSı\›;ªò+QU©™d-s¯\Êüaê∑OYHìÙˆ\„a$∂\Œm¶á¶#Ëî¶j+[\ÔoÙœù\ŒˆE\◊\ÎúÿÉ.LzÏ™ªıh˜v›ôæ9vô\È\◊}ó≠&∑\⁄\«=◊Øù¥uÒ`Ñw´\Õ%\Ï`tGäN\Á\÷\‘\√\›\–\È∫ouáˆ˝\¬^›ªñπt\Í\Î\÷˝©¯t>T˜Å¯à-Zß\'\”ı∂©Ò5\‡ú\≈£¶Œö\‹\÷\≈>ODπÑ\ÿ\‚V£B(P˜QCà«ÄoÒ7é#åö°-ß5∑æ\¬)è6 ©à\À)T\Z[î\√u\Ïd\Õ¯π9OAp\"\‘%\ÈD¯1ä\È\—jT\‰4ü\‡\Ôå•Ãë@Uòëd¨úI aZ§P/\ﬁ¸t˚B\\rr¡\Ã˛\Ã\—9FÆ*\»\Ã—©;Yt$ØDÙ|∏å\ T\Êò(Ù5\nóD@ƒíã\ÌN\·s3µ»¢˜J\…i˙H^¶õ+=øgñ\Œ<π\"»í\œ˛£lˇ∏uq\‰VA§m8L\Ô\"Ä{UL©kØb ±LÖ≤û(q\¬ °å0\‡<\… \ƒeÅàùÉàá\ƒæEÄÒbL(Ö	{(T1Sˇπ9ƒ∏ HB\·SLEÑM{\√W´ƒéQ\“!é,òÚ0ïGäeQÅÉ\—I_JÅ˙B®èÉLdOú~\Ïª=\Œˆ\’\ﬁ\ﬁ,ÃâD%?Òí+ç\‚\À˝á–¶èˇz%¸˝-Ñ-v\"\◊zı¡ö∑]IC˛S\„˜ØøŒ¥Fi\›\\¨eÆmz;\‡MñV\Êi∏…∞ß\È6≠\Œ\›5F\\,\Â™=or€∑ï˛ë\⁄\⁄MNvUì\Ì7\”\rîrâÄ/øn7ø','2017-03-31 12:47:46'),('global:resourceloader:filter:minify-css:7:bbe4b1ead3c45cb2bdb6035175c27e1b','•W\Îé\„&~:\—j/2^g.\’.V˚˝\€Uª\¬\«4(&Ò¶ñﬂΩp;ˆdZU#\Õ\0>\◊\Ô\\ß%O\œ/è\‰!U\⁄X°\\≤˘Û\–\Ï4VÙò§Má˝=ŸîZ\ZÖµ\‚\·ë3\·Z^:°\’\ÌK±\Á…¶\“\⁄qãç§%oM-\„\nó\‘I°ˆvhπmx\€\“5\‘Y-˝ó$U-Œêg± ◊ÇX\Œ*´êBwJTßd\ﬂ¿>±£¡ÇM+ˇE;QÚm*lt«Åµ8âRÉ%∏\‘\Êd≈Æv˛.≈Ü˙\‡¸Åâ∂îT4\‹˙[£!˘Q\Œ\ﬂ\0é#-O=–Ä\'¢¿˜öù˙Çñ˚ù\’\≈»¶™™¿—ñl≤,\ÀjwBë,7î1°v$\ÍmR?&ıSR?\'ıKRˇ\ÿWZ9\‹qo)¥d92Ä.,ß{L+¿ç–£l`nA;d/E\Îp\ÎNícw2ú¥®\ÂÉ\ÈG\Ì[ﬁ†,,9Æ#\Á6}\‰Mé¥55U-y\ ;¡tá¡\ÿ\—R3~œ±B[vmçCå∂5g(<ü›å*É±≠¯õì/\∆\Â]\ra¡≠Å †&\Ô@\Ó,5$z\Í\Ôπ>r[I\›zpz\Õ.©\ƒ\Ó\‡ç\Í\ƒ^8ZH8∫˙\–˝%°Z¡¯pı£}YÚ \ŒTb*\≈Në≤NB\‡6;©*ıÜ\€¸w5\Ÿf\Ÿ;ÙÉhå∂é*ó7B\·¯%õ<ü∑\÷?w…Åôé1C¶o1\À!ïâtv8[	hr\Â˙é[\Zt1qê5U\√\∆\Èr\‚]®æ˙üiî[-ôRzÒ\„\≈|\œ\œ\Â\"3†\ƒ)Tê?:˛\›ı3\\r)ßtg±‰ïª\nJ≤ÙÖ7ä\\\√\0\…ˇa∑Næ\Œ\Ó\…oEc\ÔzªÃ°Mö\0tÑ-^\Á\–\Õ#ã\ËT®\Ô(o•\Àpâ,¢)ÄÀ≠¢2ı0ì\–(íµœæî¢ªë®± \Ë\√¢\Œ\Ÿ®∂ºB\—\√«áXó°¨\∆¬§RÆ\Î\Î\∆¸\Ê\≈˝Ò\”˚œü\ﬂˇ˛Ø[2Lç¨ù3-Yö\n\0&WqpT–´i⁄∫C\—_£3\≈\‘á/µ\r£\‚Û∑\nUs+\‹=ôKí!&é)Ù5òj>´˙p$·úóíS;ûçÜ\Ÿ\ÂÖX.A⁄ë_ä÷ß&\ Pñ~Åø\€ÙÚz.ô8\¬  \–*•(á´^ü\‡£ZµÜ\„JÉ≤Qq6\ÃÆ\ÍLK0\‡ªn|â\÷\ƒ\ÊΩh9\Œ\¬$20∑\0\—KÛé\Õ◊ß…¥\ƒbôéÖvN7$ò7\\\‰•f{\ÈkP∑À¶Vñ\Â•⁄û†©]\Á\÷\◊\Áw˘\¬ú\Á)óò°vç\Ô*A3,%º_\’1%+©Òêü	}NÖ∏\Ã\'ˆÛµ5-ç°Ωü\\wR)≤\ﬂ…ë;\„6˙}YÒù1\Ë°˝O¶xº7›∑Ü; ®£ã;[_\÷G\—\ÿi!∫íöñìÛa∏—Ü~F06\‡WùºˆÖ≠|˘tó\Ô”ÑwÍàßû\ﬂ\Ÿ\n(\”Iö˘}\Ï?\Ÿ<µ\ÏF˜\«\≈~π¨Ã•Ç1A\Á\¬\œYª\ÿB#ø_D¡ùdv[˜˛∫#≠•\Áˇ\n¨∑\Á˝A(_W\ÃÚ\Î\ﬁ˚xX…Ø¨R‹∞\‚B\ÍrSV\€\…»áQ\ l4,\Ï7ª\‘A\» ô6R	ïµêlæWÑm{*√øW\„f1€öáá¸','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:d41d8cd98f00b204e9800998ecf8427e','+∂2∞RR≤\0','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:d938f621a21d4860b00dc0b8aab7ceb1','\ÌY[ì\„:˛+\ÊL•\Œ\Œ{ú8W\Á\·p\ÿ\√/¿DÒ \€r,\"_êî\…Ã∫¸\ﬂ\ÈñlGæL±úÖ¢†∂íJ¨V´ª’óO\Àpøé\·wø\ i¬à#cAiQìZ\—W\Â&4.Q¨,¬¢,\Ë).y)\¬∑Ÿí\‰ë¯r\ÂµHtoC\‡O}p˛í	ö˛\’y¨„´ê¿^ï¨PT@˜ìL—§\Ó\ƒDæÅNb\≈^hGN	\Ÿ˚H\Œ\ *ñ$L\À¯*\'ÅZ*8\”z9)\Œàx\\∂èóãKâ˙v˛π\Ëü+\Ÿ?^\≈\„\Ï<\‚Iuç:Éˆ\Î\0(Ω-*∑¢0©ÇpGS:ñà¯>⁄å¥nöS\Ó±\»v{\ÿ\Z/øπQôº\√n\À1a\‰†`M∆åE\ÔÇ›îg(&\⁄#*¿\‘˜µ\Ë\ÓÆ»∞}ë./Öl´o•H‹õ U	J..∂ñü\Î®0©©†XL∏K8;aŒíÑ\”&uF\Ÿ9S\·™z\Ì“ìb\Â¶kSç@ˇîqfE\Ë≠i\Ó¯M∂Zf\Îe,≥\Õ2\€.≥]ü°æ?\ŒÚSZ Ω•E)r\¬;i˛	6\Â\Â-\Ã¿<Zú*í$¨8ª™¨BoKÛûïJïy\Ë≠ˆ@4Vu4òà#K\ŒM\€j≠Q≤\œ4\\ã&[€î≠\ÀÚ°∞â\≈Q\…\‡∑%¨Q\Ê∆¶¨v@\Ÿ\⁄yv\n\ÍEø\’fˆ˝îv4\Ô\r\Z˜\–W’ùÛ7\Ë|˝1®åx\Á\…\Ê\ k\Œ$(Soú∫Í≠¢°¸˚ï⁄á.–£}gÖ\Z;\«\¬»í\◊cñ\0\„|g9YíYN\Œ\‘=gcsW`n¢\Í±ˇNslùVk\‘7\‚\⁄\"W\“qqöB\Œj\”g§UÇ.\„2°K•ñó(YJíW\Zêh\ÏII\Œ¯[òóE)+\”\Â˜ü ´`T|\ﬂh¶\Ÿ\Ój!=\‚ß++\„í$\È\“QêÑ]e∏Ü∫\Í<áåõ\ÍUõ\◊[ÛÛıb¡	∑@\≈\’3	AºÜÉFëà\”q“•åÚDRUOÖÆ\”]J¢.CV:˙˙˜{\›Fwb\0ó%\¬Yóyò0&%≠A-E«ê\”3-í∫\Î\‘e}7Ò∏\ÿ\’g5.6ê√§æ±Dez>Ω¸)a≤\‚\‰-åx_Nn^~ÜºxE\—\»\“\◊ˆ\Î	Ú1∫0ıN\Ô,µÒbä±≠\\Ø~QMgÛ±\Âr>Rï\\U\Ÿe™–ïÄî∆ìÄ\‹\n\—q≥0aõÙ\Ë\‡=®2^z˙Ú\ÁFD6j&\Ïf¢:\Ámfu\ﬁ\€Bö£–´™;ß≤∑ÆÒmG\‘∆û>óàºßèC\÷^˙í^3j°f~(πu.ò\ƒI%i\ÿ=‹ôï\‹˘°QﬂÅJw√∫\„ôˇëô\';Å\Ó\–5Ù\Á⁄µP¸QLqjdﬂõ∫\◊ˆˆ\Õzööˇ\ \r\„$k\„f\—Ùd\'èUJv\∆a_ß\¬“Çä\Ïjt\0L\Ï+ÆyBm0H©!tc\ ˘iºõcEFS\÷.\0#\À⁄§6%n∞\r<\0\Œ\ÂJ8?¥P¸˝—ÉA+°±\ÍbPÄ[2|PÄö2çY\¬^<ÿÉ•π\⁄\‰ªl\◊jT\”Vt£\—hßj£2ä\‚;\⁄e\À\«ˆ]|/êt*yﬂïÆ2p\◊x1F3\rri,ö Ç§ÄıCÄ\ÓBXQÄ€ßò\«qüì∏Ò]| \€\‘\€\„_ì©#Æuc1\Ã\Î∂\ŸbRa™çS\›\∆˜IcﬂµI\Œ4,}´µ´C\ AAÇõ\œ!ıp\·\—2∞\n–è\–j/\œEâãÛdØ€Æ*\»\›Yæ\Zz÷†\√UO7vaOÇJÄ¸ò\ \')\‚\'}˛D∫\'/6ò\Ïì üZ+›ò≥\n\Î—´äÛõt\Ôoß\‚\—uD∏g‹æÄ˘+/ñ÷≥Û∏DK¢H®G>…óÛ/_sæ\\ü¡3<-\÷>\ÃQBp¡Oãız\Â˘TZ¿\Œ4\‰?ˇ\È\Ÿ=ò©Hë!4]EâÙ\‡y¸f\·ˇÇA∞Å\ÏB\ZéL©j¸∏X?\√˜vªy∑¿+0=ØaGz\ ~aÙˆ\ÎÚ\’É\ÏıW+¸\Ÿ\ZÅ\÷‘ñd\"\—\“V\⁄mâ\–~ÉOhKó\Ìl##eúõæ\≈:H”¥õ™(/¥ßkc\Á§5U,º+ã\ÿ6&F`K˙\›\ \€˙Gúïw\ÿm≥ï\Ôè/{\Ô∏:fÆn|\÷\Ï\œˇ™*Ωô(s°∫é®m\⁄\Ÿ\÷;nÇóçwÙ7ô´\ÔkÉ,Y?ü˚»∂°\“ÕØOÀØ,∞\‰á}J|Ú¯F\Õ6Ú*a£\")ß±2\”\Ì ßπú\«<ü¸2∏5És∞≈üYIm\»C◊Ñ˚pl∏&˙Cò˚ÜF\ﬂ\–\Ë\Z˝7\—hf{¸$Ëäû≤1a`t\÷\0\Ót\∆\"˛≥ê\0\Z4$êc\Z\ﬂ \·ˇéP§´\\˛˝ê∞Z ¡µ1\·∞@éªÑ˙\ZÙqmp:5\ÁFg•Øpı	\»0\ŸGLÕ£˚Z>ø¡\◊X\Ìp$°.\Õ+ı\ÊRÆ$ı≠˛®£∑1^gQV\\æ\Í\‚…∫˘\≈KºòÉ\'C8∑f˜øôc†èü\∆ß©?hìıå6?3®fxwYã™7E\Ì5\'xfkûF\◊\Ã˙N7u9ïRüSß™”ò\Ó£\’iJ∂æ≤.~ﬂπ!\◊\›\Ï…æ.’Ñ˘˜9¯n\È˜%Ù–∫*°Åó8ÇrÇ/ìfé\ﬂ˝\Õ\Íú[	oGß\n5âìMôêÍ∑î$\÷Õäu\Á>:sØß/k|c\›Ø\—0Ö˛v\Õ+àÄ[ê˚%ÄkN\ÓCU&ó\⁄\Âd-≠g˚\≈\ŒéˆSì¨Àõ6Û1\ﬂL ∂¸Xw$\rîl\·\…kTaè¯çπhÇbuyy.øl$RR%5U/qª\Ë@É\«\Êª\”?\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:e52aed8dd1e394e0ab586f15aa1c9baf','çè\—\n\¬0EeËãÇ¢°˚öÆ\À4ö5£çì1¸wß(8t\”\«$ósO¢—ª≠ô•éº(\œ«òÃùU\r((PVÉCZ]\€NêΩ*∞¡\¬t®¡x∂t\ﬂpüÏπûE\Ÿ\∆\"Ÿú`Xˆqm¸ô|Ø\Ì\nå5\Ÿ\÷xˆp}\Ÿ>]{πè$\·í\ÎN ¶\ƒEq©§≠a5B£Ä\ﬁuë1…≤´lÿ£W˜1\Ît£°\ 3\◊ZèâNı¸%:ı\È§(A˘\Õsñ\›\0','2017-03-31 12:29:03'),('global:resourceloader:filter:minify-css:7:e701ecbc02be25687d960328b21965a9','+∂26∂R\“\À-\◊\ÕHML\…\…\ÃK\’M\ÃK\Œ\»/™N\…,.\»I¨¥\ \À\œK≠U≤\0','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-css:7:fb4ff050210abeadb63fa2fea8699925','\ÌY[o\Î∏˛+\Í∆ûúJäl˘Kã\Ì\È}i˜a€ß¢îDY¨©K)\⁄N\"\ËøwÜîd\Íí\ÌiQ¥8p\‡H\√\·\Ãp.át\ﬁ>¯é4íæJ\'°q)àdeeA√∏\‰•º˝vGí0\"Ò˘$\ Kë®—ñ¿?˘\…˙s&h˙Î±â/¢ˆ™dÖ§\"¥Ä\·\ j&i\“ÙÇ\"\œ{ˆÄNb…Æ¥\'ßÑ<$g\Âï\nõi_\ÍôI†ò\nŒîfNä\”\'\"\Ì\ÓÒ|và \—ûø\√sUèÒ∏∏“ñ∏µºDΩAáçîÇ\ﬁ\Ïá ©(,´ \‹Rîû%\"ûá6#≠_\Êú{\Í\0≤\€=\Ôû[\À\ÕoNT&o¿÷∞õ=%L<\‰\Ô£v\∆2ëΩ˜˜sû±òh\ÔOuS\∆~¨F\r/hÇ\Ë.1\Œ\’-pπ©†¥πï\"qnÇTA$(9;¯\ﬁZ,?5<Q°3ÚA≤òpápv*Çú%	ßm&öå≤S&Éuı\⁄g)!\ƒHQ«§jÅ^òqbE\‡nhny≠ï≠\Ìlcgæùm\Ìlgg˚!O=oö\ÌaZ“πi≠E)r\¬{q^àiõÚÚd`-¬ä$	+Né,´¿\›\—| D•îe∏\ÎµY=\rVb\’%gâÖ6∑Ÿ∫Q\ZkˆNÉıÛÛ™\Õ6&e\Á≈∞|,lfqTÚ¯M	îπ5)\Î=Pv&\≈Cû˝àzµ\„\ZΩ¸aM{öM\«|´ö\ﬁ˝[tøÖéÅ(T*\ÊΩ+\€o8´Aõ|\„‘ëo\r\Íø]à†C|5€≥÷®±˜,\Ã,y3eÒ1\“wñ–ê\Ãrr¢∫ˆ9õöªs\ŸL.±ıZu∞QﬂÑká\\I\œ\≈i\nY´L_êV	j\«eBm)\Ìsî\ÿ5\…+Ö\rHl,ePJr\∆ﬂÇº, ∫\"1µøˇR^£\‚˚Vq-\Êp_\È?}E9ó$IüêÇ$\ÏR(≠\ﬁu»∏≠^ï}É9ˇ∫¢A,x¡∫eÄ-éZJ\0Ú&¥ñ$ß≥\ƒK\ÂIMe3óªI˜)â˙,Y´P\ﬂ˜¯´wts/ ∫F\\\Î≥ìFß•1©£®8rz¢E\“ÙÉ™∂\Ô6w´6h!ÿêŸ∏\Ô@ì\Ê\∆ô©\rZ0¯a\¬Íäì∑ \‚e|ùº|á\‹xE\—\»2¯k9ùô¸`të\n∞S‹ñM\Ìj\'\‘¿™\€\œóıyîØ\‰\"\À>]Ö*§Ä\Ã\Z`êQ:nW≠ä\‹lD\«\œzêelª\Í\“\ËFDv*\Ê\r4ë]ˆ.¡z\Ó [«ë∏\Îjzœ≤\€G;∏\'*{C\ÎΩD?èy˘\»~ùîJ¨^$\ \Ó|VqR\’4\ËnK&˜	\“\‹AK\r\√&\‰\ÍˇKC3ë\Ó06ˆ\Í\ÁïP¸íLr™e\ﬂ_’®;^õyN(˛◊å¨å[D\÷\–\Ã!£§\Ã\ƒ√±^Ö°ôUi∞B˙\‡hq\…#\Ëï\… ß\≈—â)\Á°5\ÌÒXëQ¡dk\ËÉ0±Æ\Ào]\Óñ\∆:pxòKÒ5”Ö\‰O5	ù=Ω+ëQ9\Ó<HˆQ9*\ <tV¬Æ.4&D*∂.	\Ô\”\≈\n\Âî}ª‘ég[UW\Œ\ÂÄI\–\ﬂY\–0S>æ\ﬂ\≈\¬Y\Á\‚ëwQ∫≤_f\‡±\Èçvj$S\ÿ4É)H[ä\0?¥ÉV\‡˘9¿\ƒq<$ßé¸lF@7˜whM\Z¡6ì9F])«≤XVn≤≈§¬åm!\n¥˙Üªßëµc£¨im\·\ÍAu¡\“7h \–›Å\n\Á®8Aé\…hëfºi©`òÄXk\Ó\⁄Eâ{ˆ¨∂∫≠\Ÿ{\Î±_∑,\√¡\Z-.Çz∫±3{¥Üm ¶ıS-‚ßú&å ›≠\œ=XÚìöP?uñ:1gñ¶[ß∂\È¡\€>Ü3Ò\Ë@\"úv6∞ÇOñë∂Òl=\⁄hIB$	\‘Ãß˙z˙ık\Œ\Ìïˇe\Âø¿\”j\„¡2k\—\ ˇ\Ìj≥Yª|ï\–ÅÅö¸ß?æ8\œz†ñ§Há@Í°¢D∫ˇ≤ÚZy?Ç`\–l ª®5G&eµÚ\\m^\‡\Ôvªπ7\ﬂ-0Ωl†ŸÇj æ2z˚M˘™ß¡éz\Î5~\Ì4áäAgjG“±\Ëhkeå≤D	\Ë˛¸/hK4ó\Èl-#eú\Î±\’\∆O”¥_™(\œt†+có§è5U,º+ã\ÿ	\Z-∞#˝~\Ì\Óº#Æ\ }\ﬁÔ≤µ\Áè◊É{\\3GΩº+ˆóVïjRf\ ®±#j€É∂\Ál\Á∑˛u\ÎΩmÊ®óèµAñl^NCdªP©◊ØOÀØ,∞\‰áCJ<Ú¯+˝é\Í//5¥.5\Â4ñ\Zj˙\÷r>ê\◊s\‚î\–\¬QN√òÜØ∏Éˆ˜ÒŸæjb\ﬂ\¬\Ê\Ï=†˝<oê\ﬁ\\\»\Ôæa\“7L˙ÜIˇULZ\Íó?ÄU\‘¸c\\@(òúAF†Ä]\œL\∆@ÖÇrL#ˇ,¸ˇ¡\¬\nu=¿Çc\‚¬ø÷õ,8&.¸è\¬\¬\¬qüPO√Ç:¿ç¨˙(i≠\’MØ:u\\\Ê±S1©¡éö\0¸)+é(‘°y%\ﬂ •Å\·m8˚®ñöïé®¨8\’›îqIåw}1wpö\Õ\Ó˜Ç\÷\¬\·\–\√O\ÎÇ\Î\‰\œ\n¡àπ:?w≠zzØã∫G7I\›u(xgßü&W\“x\Á\‚bèó”∫Vß◊π\Í4¶áhAuöíù\ÁÖ\∆Ò∑\È¡¶ø™\r\ÕkUEX˛ı\Áå˙C	#¥©Jx¡A9¡ﬂûN\Â\√\r\Ïúe	\Ôféó\nïâãMô®\Â\Ô(Iå+\„~>¥\∆GÒ\Õ¸ß\»1e\ﬂ/óhúGΩ\‰\ƒ¿)»µ±åtpÙë~¨M\ÁÙC∑1Å0\€x6zÜ3ˇ\‹(\„^ß+\0\Ã9ã\›?\∆\ÌIµ[∏ı%™∞\Z\«\'ˇˆª\Ô','2017-03-31 12:29:04'),('global:resourceloader:filter:minify-js:7:6895d0583b1c8796e739e87abafce5bf','MåA\nÉ0E\Ô2∏àB≈çƒçW\ËÇN!íLtíQZ\È›õÓÑøy\ﬁœ∂\ÎÒ4!π\Ÿ¯∏åHEÅ\‰\ i+>Qûk>˝˙%4ˇïjÙ˙\‰∑f\‹\≈3\Íò	\ÿ^ıÏûöåE]p8ˆé\nX@Ço;\÷¡¯','2017-03-31 12:29:03'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:06ec79a439b40715f102aca5644e3097c2de5b69','+∂24±R220470643¥4660T≤\0','2017-04-13 19:33:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:1123b8dad5370f3614b6c11616d4d9d07484fcc3','+∂24±R2204706224316±T≤\0','2017-04-19 16:43:49'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:33a0653971619b16549515a751f430f82a131383','+∂24±R22047062447B%k\0','2017-04-18 17:27:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:345de260378e89193df41aa3fbbd5a3faf1fd852','+∂24±R220470643¥4660T≤\0','2017-04-13 19:33:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:36755b7002a369c7779b8f4cf9dfc0c01dfd22d1','+∂24±R22047062247±04R≤\0','2017-04-19 17:48:12'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:403afadb1a2601cc32940455d0fa2fd24709ea2a','+∂24±R22047062247±05S≤\0','2017-04-19 17:48:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:40fb7750f95f1aef609561dd947530e194aec6ba','+∂24±R22047062243145S≤\0','2017-04-19 16:41:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:48c1af55acf042c73166869ad65e5cb7a944f730','+∂24±R22047062247±46R≤\0','2017-04-19 17:49:32'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:4be34bf463882d06001731838583af9c90fe77ff','+∂24±R22047062247172S≤\0','2017-04-19 17:47:26'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:546aeabf94c83df873746e0ea92e28163395f22c','+∂24±R22047062022110T≤\0','2017-04-17 22:44:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:5edeb354f59d01d65b2387d9f9e14f5aa5bf397b','+∂24±R22047062146µ0¥T≤\0','2017-04-21 13:58:19'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:605276d2d8e2b4a422f9491abfab5c7fc1146abb','+∂24±R2204706224312±T≤\0','2017-04-19 16:42:50'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:61154b31abc156d241ac5d1f2696af9e8c542ee8','+∂24±R22047062243145S≤\0','2017-04-19 16:41:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:83df1717e1a9610f4605e74890598906c4def4ba','+∂24±R22047062247±0≤P≤\0','2017-04-19 17:48:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:85dfe3dfd3700b16c8d03cd4f58d93fb947c40e6','+∂24±R22047062247172S≤\0','2017-04-19 17:47:26'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:88d9ed493a41fb742e5af6da601dae59448caa2e','+∂24±R22047062247±05S≤\0','2017-04-19 17:48:56'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:9e8516261a7d79e715e449459203aea3f9b6439f','+∂24±R22047062247±0≤P≤\0','2017-04-19 17:48:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:a811964c565f6912f3b62ec74911d71a3846f39d','+∂24±R22047062022110T≤\0','2017-04-17 22:44:01'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:bc6371e66511ba9962fa41dced81a97c09c34fc6','+∂24±R2204706214102∂P≤\0','2017-04-21 14:02:38'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:c0d42d2fefee1ffd5789b8ce87d0d6ebaab40261','+∂24±R22047062247±04T≤\0','2017-04-19 17:48:12'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:c98decd8ac52a17d0db86ac23d8441f4e1937041','+∂24±R22047062700146R≤\0','2017-04-24 00:41:32'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:cf4adaf6d8568600745e2dba2745116a2c91b161','+∂24±R22047062243166W≤\0','2017-04-19 16:43:37'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:d44849d4397bcf0d6bc1398657275a8150713d44','+∂24±R22047062146µ00P≤\0','2017-04-21 13:58:00'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:e608cc14bbf623401ecc57070ef0d7cea38a3a2f','+∂24±R22047062447B%k\0','2017-04-18 17:27:28'),('goctalab_wiki:jobqueue:htmlCacheUpdate:rootjob:f38e0ffbadd4dbfabefe834085c27dbc0b745910','+∂24±R22047062700146R≤\0','2017-04-24 00:41:32'),('goctalab_wiki:jobqueue:refreshLinks:rootjob:311eca3f9d832e6f5d3a928220cbaa63853830f2','+∂24±R22047062247±02W≤\0','2017-04-19 17:48:28'),('goctalab_wiki:messages:en','å±\n\√0ˇE_ À≤ûßÅdiC•]cAÁå°ˇ\ﬁdªÉ\„*\"ézé\Î6?\ÓTæê≤CA\”mõ\Ë\ƒ( \œM\›$\’\ÃˆÒ>x\Â\Ê\‹8ıÆÆ\∆WóA\„kô\◊˜%\·\„Cµî®¸˛','2038-01-19 03:14:07'),('goctalab_wiki:messages:es','å±\nÉ@ˇeø`\›[o\„ª\ B\–&äB0\Â\Â∏kÀêèv30LF¿˜ÑÅ^√∫MÛì\“I\'4ˆ\€Hy,\Í&mélØ\œ\\ú∑µ™´Ò\›E–∞/\”˙æ•π¬çqaïé\“\Ô','2038-01-19 03:14:07'),('goctalab_wiki:pcache:idhash:11-0!*!*!!*!*!*','≠X\ÎN\„Hû\ﬂyä\ZK#\Ìé ±ì4\–Nà\‘4∞\‚¶&=˝3*€ï∏\€eπ\ ∂\’\“>\¬>\„>\…~ßl\'Å—ìVCß\Œ˝\‘w.\’◊æ\◊˜ù^hQ\\ó&/ç\„˚˛w\Ìùt*å3\“˛¿\Ó˘\Œ8ü©\\\n\Õ‘úôX∞PEÇ\ÕUaø|SEtS≠ôñF0ûEˆ¯RDíìwíâiò\ÃÿÄ\Â	Öˆ;\„^>\Èå\Àd2N\‰Ñ]gV Q!OX$\ÓE¢ÚTdÜ•<åeVQåà7\ÏTÖÜ_†;\ÓA¥\”\»s∂Ä\rÑr/\nbsVà\‰\–\…\‘\\%âZ:,L∏÷á\‚E;Ü\"dq!\ÊáŒô1π\ﬂ\Î-ó\À.\‘\ƒe\–\rU\⁄[ê©Ñ\Œ\‰Tö≥2˜¯§\ÀZv\œ3ñ**C#Uˆ6´ÛBà\∆j‹≤Zõ\Í™b\—ÕÖ3yôF^X\∆=‰ØÉ´9ô(xí<\Ó¨%Oj)$OΩí\›\"#íR\«H±QñªïÕöö$† ¨¶∑\‚Æÿ∫\ÏL-°º\ÿar\Œ¬òg¿%ï\ @Tæ\"UFêßVk¿µ\…s´SÂπ≤\")Mb*\À\¬@\Z\…\Í2ïŸÇ-Uq˜jT]v,tX\»\0 .áéø°∑(+ib\»\rL≈∏º\\∞ìA\≈68\›e´\»Úß$Yì!u\r._s\ÿY/V©xUOS≤fµ∂^ceLéØ\Ÿ\’ıîïYDP\ŒY(ã∞Lµ\·j*\Ô\ƒS~a8P&∂÷üµ[\◊\‚\÷u±%pÆJC©\»(©´\–PY¡§Æ–∏?\Îúg\ré\”\Ân,xî@∑\√dt\Ë\‹\05≥œÖJg¸\Ïx\Â\ƒ\Ï≤rb6U≥õ\'˚≥[kﬂôê$#If%YKí’íl™\ÿJíUí\„94ßK\r\∆hQsæá\Œ7Xµï°=\›\Õm1÷ºáé˜3\Ê\◊\r£ë$*\√i,\0	ÇÖ\Ã\"y/£j¥PØ\\ıI∫ñßˆ\ÿ%;T}h*}Ò*_*º∂\ÍÚÙb∂¨r0Éí^,í\‹U\≈cÖà\Ì\n\‡\‰\"µ¨∫9©\…O†|∏œõ\Ëç{ñ]Zóëbà¨€£\0gÀº´\„71R^∂YÉ\…\⁄GUÆ|éñjÛFUÖmQ\rí\◊G\“{T%KKm®âcY\ﬁ-\nÖ2c2x\–%B^\Íj¨iD^Æëfi[i H7	îD\∆≠í\Œ\‰\‹ƒ´í±8\0˚R¢]¢æ2@\Íó5ªÄí®õR3CÚC\'ÖAr\"\‰öpp\≈Zt\ﬂ^èIR\’\„V\…QæX§T\ÿ\ƒ\Ê	†/V\…_Qè˝ü1ˇR=˛£æœ™ü7@∑CE†\—˛ö\rî\Ôà(\‹z.=≤ò\ﬂ\”\—‹£ÖÖ\ÍÜ.ÉU\—\ÿÅ@◊î@˜ùï\”\÷ÒzÅ˜meDå\€e\‘ˇ∫ª\À:Wbys\√ôJ™â\\¶sÑÑ“¥ñ©Y\ﬂıˆ\›¡¿ı˙\√˝{\r{\\.ãGü\Ï\r]∑s¸òÒTÜ@mfp!>õÛDã\Œ\—\ÕW´i|\Êv]˜ÄÆZeë\Ó|¥zmê˜û»®Y48å9ç∫∏óî™àe¥lÜ®T\ÿ\ÿ\ÔyÆ˝¨≥.\Ï\n¥\…\ÏıW\‹Jõˇ˝ÁøàÄ\Ó^faRÇO\ÀìΩæ˚q\ﬂ˚\–Gi°;Së\‚\⁄iì-•\≈\⁄Û|grhfïj\¬k$r#yΩ°\€9y\»N\Ô©C–é\Õ\ÊeV°∫ˆ\Œ%\Á:ªªìN}\'\”j\‡òUµRj≥U\›˚\€o;©\ﬁ!\Ï\ÈSª˘˜Ù ãø1|\Ë.≥è\Ì≤]£\0Ωñë[ \€¬πv*¥K\À\0ª®Z\‰¯π•˙2äπé}\œ\€u˝\Ïèﬂ´Iﬂ∞ò§˘`,ΩK\⁄dƒÜ;åº†7Ö7\ƒ\„L	\\\»\ÏN;#\Óª˛˜†y†!™Ö*\ﬁ\ÿ úc∞b\„REõ\‡\“sEöD4oñ˛Åˇ\Áç<{\‰¬Üi´®Nj˚º\ﬂ:?èZî}râfGõ\∆\”\œ2∑Ça|ù\€5≤Eß\‡O\Í\Á¿ìˆ\›5ÄØºDF\“˜(B∏ˇ\'Ø\ÀE∂>ÿú¡]\ÁsôF∏≠˙¶3\n|wTÀú\…H<C¢]©S\Í|\≈\„\⁄\ÈÜ\–9\0\Ÿ\“Oy∏D\'O\ƒfÙ\’\Èm\’Z¥¡äf\◊≈àÙO}§≤π\\¸¡ã\Õ€©ﬁØgJµ¸\¬7^\–vªqZ\«\’d^\"ø[ßç\nMìk\‰£˛c>F~#\n;râå´x\Ô.Y1+”†˙˝ûS\Ÿ\ƒ)\⁄gpúˆCCH\ﬂ@˘\⁄@o£ú\ÓÜzïöœ±πPD˝É\ (±*\⁄ºkç˝†,˝dˆ\ﬁ7˘ü\À^ˇô\Ïıˇ∫\Ïy√Ω˝\Á\”˜Œ≠kÙ£i\'Xaj\\N’ù p\÷ıEu\nµxûöµéHR\”Î£≥\È\Â˘gß\—\Î∂‹¥€™;˜˜]w\Ë\r,ú¨Zàüd<¿\"C÷º\Ê∏:ªæ˛z\ﬁ8A\r\Áóˆˇ˝BΩX<‹®DÜè-Û\‘\√6?Ö4§E\‘jÖ°Ö¸™.èVÿ™JÉ™q\—\Ìlh°ñi\Á\·17|ïÑg\Ï]\–RÛ\≈\ŒÀÜ◊¢\”˚H∏≠ö•ª!∏ëß\Z1vM±\»p\◊Ÿñhw|{Nùí6_û\◊˚\nm \Ì\÷\"˝}[¯[-#MÑ\Î\“O+Ã∂º\◊\ﬂV0l(¿ÇSm7ırC;Àö∑VR/1VI]I≥R4ã\œ[tl\Ê\·iq±\À–öt∆∞ä`∏%X-LÕ¢d˜§g\Õ{îÉZ\≈\∆\Ì\ﬂ–ã)3G¿\Â›ø\ƒÆû@ºçï\œ	oáÅ∑\≈qõã∞DN\‡\◊qéBπ\ZUâ\€`º\‰ü\"û\„â›ìùQ\‰ü_}\’3\ÍkªH\’\Ôx\‹\Ÿ	k±\Âu˜∫√ß\"∂;˜¥Fﬁ™àõ\Ài[æ\∆$)ˆˆö\”/ıFn#\ÌG?˛','2017-03-31 12:47:56'),('goctalab_wiki:pcache:idoptions:11','EçAÇ0E\Ô2 m)~ó∆Ö+£\ÓQ&:êP5\Z\¬\›-D\‚n2\ÔÕº\n%hS_n|êñ	\∆\0m@\Ì1pSıπwÅ|\rçQ†|Ñ\‘=\€37Æ\ÈÆOE<9Ò¢O\—\ @:qâùg≠\"˚7~?å“πJS•ç\Õ3∑l\Õ\ÍmﬂΩÚÇ\¬YµT\›\ ˆ¸íπ≤kfnK?}','2017-03-31 12:47:56');
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
INSERT INTO `page` VALUES (1,0,'P√°gina_principal','',0,1,0.271019149039,'20170301225917',NULL,1,774,'wikitext',NULL),(11,0,'Website_Development_Workflow','',0,0,0.7527912664,'20170327004131','20170327005728',49,1785,'wikitext',NULL),(12,0,'MediaWiki_Extensions','',0,1,0.296611219999,'20170324140238','20170324140313',46,255,'wikitext',NULL);
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
INSERT INTO `text` VALUES (1,'<strong>MediaWiki se ha instalado.</strong>\n\nConsulta la [https://meta.wikimedia.org/wiki/Help:Contents/es gu√≠a del usuario] para obtener informaci√≥n sobre el uso del software wiki.\n\n== Primeros pasos ==\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Configuration_settings Lista de ajustes de configuraci√≥n]\n* [https://www.mediawiki.org/wiki/Manual:FAQ/es Preguntas frecuentes sobre MediaWiki]\n* [https://lists.wikimedia.org/mailman/listinfo/mediawiki-announce Lista de correo de anuncios de publicaci√≥n de MediaWiki]\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Localisation#Translation_resources Traducir MediaWiki en tu idioma]\n* [https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Combating_spam Aprende c√≥mo combatir el spam en tu wiki]','utf-8'),(2,'== Push to Server ==\n\n=== Backup Database ===','utf-8'),(3,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\ncd /var/www/html/wp/\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql','utf-8'),(4,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\n\ncd /var/www/html/wp/\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql','utf-8'),(5,'== Push to Server ==\n\n=== WP Site ===\n=== Backup Database ===\n\nsudo -i\n\ncd /var/www/html/wp/\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql\n\ngit add -A && git commit -m \"Your Message\"','utf-8'),(6,'== Push to Server ==\n\n=== WP Site ===\n=== Root Access and CD ===\n\n<code> sudo -i </code>\n\ncd /var/www/html/wp/\n\n=== Backup Database ===\n\nsudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql\n\ngit add -A && git commit -m \"[your commit message]\"','utf-8'),(7,'== Push to Server ==\n\n=== WP Site ===\n=== Root Access and Change Directory ===\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n=== Backup Database ===\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n=== Stage and Commit ===\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n=== Push to Github ===','utf-8'),(8,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to Github =====\n\n<code> git push origin master </code>','utf-8'),(9,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n* Root access and change directory\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n* Backup database \n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n* Stage and commit\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n* Push to github \n\n<code> git push origin master </code>','utf-8'),(10,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n# Root access and change directory\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n# Backup database \n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n# Stage and commit\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n# Push to github \n\n<code> git push origin master </code>','utf-8'),(11,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to github =====\n\n<code> git push origin master </code>','utf-8'),(12,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n===== Root access and change directory =====\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n===== Backup database =====\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n===== Stage and commit =====\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n===== Push to github =====\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n===== SSH into server and change directory=====\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(13,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(14,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n; 1) Root access and change directory : <code> sudo -i </code>\n; name 2 : value 2\n; name 3 : value 3\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(15,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n== Title of list ==\n; # Root access : <code> sudo -i </code>\n; # change directory : <code> cd /var/www/html/wp/ </code>\n; 3) Backup database : value 3\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(16,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n== Title of list ==\n# <code> sudo -i </code> //gain root access\n# <code> cd /var/www/html/wp/ </code> //change directory\n# <code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code> //backup database\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(17,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(18,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(19,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(20,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n# item 1\n** indent\n\n\n====== Root access and change directory ======\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n====== Backup database ======\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n====== Stage and commit ======\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n====== Push to github ======\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(21,'== Push to server ==\n\n=== WordPress site ===\n\n\'\'\' Root access and change directory \'\'\'\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n====== SSH into server and change directory ======\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(22,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\'\'\' Root access and change directory \'\'\'\n\n<code> sudo -i </code>\n\n<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n\'\'\' SSH into server and change directory \'\'\'\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(23,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n\'\'\' Root access and change directory \'\'\'\n\n:<code> sudo -i </code>\n\n:<code> cd /var/www/html/wp/ </code>\n\n\'\'\' Backup database \'\'\'\n\n<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n\'\'\' Stage and commit \'\'\'\n\n<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n\'\'\' Push to github \'\'\'\n\n<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n\'\'\' SSH into server and change directory \'\'\'\n\n<code> ssh goctalab@goctalab.org.pe </code>\n\n<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(24,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>','utf-8'),(25,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>','utf-8'),(26,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p[password] goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < db_backup.dump </code>','utf-8'),(27,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < db_backup.dump </code>','utf-8'),(28,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctlab_wo < goctalab_wp_db_bak.sql </code>','utf-8'),(29,'== Push to server ==\n\n=== WordPress site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>','utf-8'),(30,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wk/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(31,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(32,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore Database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(33,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(34,'Logo de GoctaWiki pe','utf-8'),(35,'[[File:wwwGoctaWikiLOGOFF.jpg|options|caption]]','utf-8'),(36,'','utf-8'),(37,'[[File:Organizaci√≥n,_Acci√≥n,_Autodefensa_-13A.mp4]]','utf-8'),(38,'','utf-8'),(39,'[[File:TestVideo.mp4]]','utf-8'),(40,'[[File:Test_vid.mp4]]','utf-8'),(41,'test parsoid','utf-8'),(42,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(43,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(44,'== Push to server ==\n\n=== WordPress ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wp/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wp > goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wp/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wp < goctalab_wp_db_bak.sql </code>\n\n:\'\'\' Restore background image \'\'\'\n\n:: For some reason the background image gets set by a absolute path, so it needs to be reset by:\n:: Settings -> Background\n:: and then resetting the image\n\n=== Wiki site ===\n\n==== Steps on the local machine ====\n\n:\'\'\' Root access and change directory \'\'\'\n\n::<code> sudo -i </code>\n\n::<code> cd /var/www/html/wiki/ </code>\n\n:\'\'\' Backup database \'\'\'\n\n::<code> sudo mysqldump -u goctalab_admin -p goctalab_wiki > goctalab_wiki_db_bak.sql </code>\n\n:\'\'\' Stage and commit \'\'\'\n\n::<code> git add -A && git commit -m \"[your commit message]\" </code>\n\n:\'\'\' Push to github \'\'\'\n\n::<code> git push origin master </code>\n\n==== Steps on the remote machine ====\n\n:\'\'\' SSH into server and change directory \'\'\'\n\n::<code> ssh goctalab@goctalab.org.pe </code>\n\n::<code> cd /home/goctalab/www/wiki/ </code>\n\n:\'\'\' Pull changes from GitHub \'\'\'\n\n::<code> git pull origin master </code>\n\n:\'\'\' Restore database \'\'\'\n\n::<code> mysql -u goctalab_admin -p goctalab_wiki < goctalab_wiki_db_bak.sql </code>','utf-8'),(45,'test','utf-8'),(46,'test again','utf-8'),(47,'test','utf-8'),(48,'','utf-8'),(49,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\nDO NOT under any circumstances make changes on both the development machine and the production server without running the script.\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the server_script directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Push From Local Development Machine To Production Server ==\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(50,'The following extensions are installed in the goctalab wiki. Refer to the documentation for how to use.\n* https://www.mediawiki.org/wiki/Extension:PDFEmbed\n* https://www.mediawiki.org/wiki/Extension:EmbedVideo\n* https://www.mediawiki.org/wiki/VisualEditor','utf-8'),(51,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the server_script directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Push From Local Development Machine To Production Server ==\n<code>cd /home/goctalab/server_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(52,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the GL_website_dev_scripts directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/GL_website_dev_scripts/</code>\n\n<code>sh ./push_wp.sh</code>\n\n<code>sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Pull From Production Server To Local Development Machine ==\nBecause these scripts will and should be used rarely, they have been placed in a subdirectory called pull_scripts.\n\n<code>cd /home/goctalab/GL_website_dev_scripts/pull_scripts/</code>\n\n<code>sh ./pull_wp.sh</code>\n\n<code>sh ./pull_wiki.sh</code>','utf-8'),(53,'Copies of the code for the WordPress site and the MediaWiki exit in 3 places:\n* On the local development machine located at GoctaLab.\n* On a git server at [Http://www.github.com/goctalab GitHub]. \n* In production at http://www.goctalab.org.pe\nGenerally, development is done on the local development machine, then pushed to the git server then pulled into the production server. However, if changes need to be done remotely, then basically the opposite needs to occur before resuming work on the local development machine. Described below are how to run the scripts that perform these actions. \n\nAll the scripts are located on the local development machine at: /home/goctalab/sever_scripts/\n\n\'\'\'DO NOT under any circumstances make changes on both the development machine and the production server without running the script.\'\'\'\n\n== Push From Local Development Machine To Production Server ==\nThere are individual scripts for WordPress and MediaWiki. To push from the development machine to the production server, cd into the GL_website_dev_scripts directory and to run the scripts as follows:\n\n<code>cd /home/goctalab/GL_website_dev_scripts/</code>\n\n<code>sudo sh ./push_wp.sh</code>\n\n<code>sudo sh ./push_wiki.sh</code>\n\n\'\'\'Note that after pushing or pulling the WordPress site, you must reset the background image because for some reason it is being set by an absolute path.\'\'\'\n\nThis will be the primary workflow. See below for the less common use case in reverse.\n\n== Pull From Production Server To Local Development Machine ==\nBecause these scripts will and should be used rarely, they have been placed in a subdirectory called pull_scripts.\n\n<code>cd /home/goctalab/GL_website_dev_scripts/pull_scripts/</code>\n\n<code>sudo sh ./pull_wp.sh</code>\n\n<code>sudo sh ./pull_wiki.sh</code>','utf-8');
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
