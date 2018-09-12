-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: doufu
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('c9d1ec0bce60');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debug`
--

DROP TABLE IF EXISTS `debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debug_content` text,
  `confirmed` tinyint(1) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debug`
--

LOCK TABLES `debug` WRITE;
/*!40000 ALTER TABLE `debug` DISABLE KEYS */;
INSERT INTO `debug` VALUES (1,'fdfdfd',0,'2017-10-23 01:45:54');
/*!40000 ALTER TABLE `debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_number` int(11) DEFAULT NULL,
  `name` tinytext,
  `recipe_id` int(11) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (62,1,'豆腐',25,'3块'),(63,2,'白菜',25,'适量'),(64,3,'葱',25,'3段'),(65,4,'姜',25,'3块'),(66,1,'豆腐',26,'2块'),(67,2,'木耳',26,'3个（发泡切丝）'),(68,3,'胡萝卜',26,'1个'),(69,4,'香葱',26,'3段'),(70,5,'番茄酱',26,'适量'),(71,1,'豆腐',27,'2块'),(72,2,'小白蘑菇',27,'5个'),(73,3,'大蒜',27,'2根'),(74,1,'嫩豆腐',29,'1块'),(75,2,'咸鸭蛋黄',29,'4个'),(76,3,'盐',29,'适量'),(77,4,'葱',29,'3段'),(78,5,'橄榄油',29,'20ml'),(79,6,'淀粉',29,'40ml'),(81,1,'豆腐',32,'3块'),(82,2,'鸡蛋',32,'2个'),(83,3,'青椒',32,'1个'),(84,4,'红椒',32,'1个'),(85,5,'木耳',32,'少许（泡发切丝）'),(86,6,'老干妈豆豉',32,'1大勺'),(87,7,'泡椒',32,'1大勺'),(88,8,'生抽',32,'1小勺'),(89,9,'老抽',32,'1小勺'),(90,10,'水淀粉',32,'少许'),(100,1,'豆腐',38,'3块'),(101,2,'葱',38,'3段'),(102,3,'姜',38,'3块'),(103,4,'蒜',38,'4瓣'),(104,5,'盐',38,'适量'),(105,6,'草菇老抽',38,'适量'),(106,7,'蚝油',38,'适量'),(107,8,'淀粉',38,'适量'),(108,9,'花椒面',38,'适量'),(109,1,'豆腐',39,'3块'),(110,2,'鸡蛋',39,'2个'),(111,3,'青椒',39,'1个'),(112,4,'红椒',39,'1个'),(113,5,'木耳',39,'少许（泡发切丝）'),(114,6,'老干妈豆豉',39,'1大勺'),(115,7,'泡椒',39,'1大勺'),(116,8,'生抽',39,'1小勺'),(117,9,'老抽',39,'1小勺'),(118,10,'水淀粉',39,'适量');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `recipe_id` int(11) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (16,'发的都是',NULL,'user','2017-01-12 05:47:14'),(17,'爱的方式的',NULL,'user','2017-01-12 05:47:19'),(18,'adminhaha发放',NULL,'admin','2017-01-13 09:08:27'),(19,'The error message is absolutely correct. From the code that you posted there are three possibilities for joining the two tables:\r\nAnd this is exactly what sqlalchemy is compaining about, as it does not know on which relationship/oncluause would you like to perform a join.',NULL,'admin','2017-01-13 09:11:04'),(21,'好吃',25,'user','2017-01-19 06:06:34'),(22,'大家可以试一试',25,'user','2017-01-19 06:06:53'),(23,'最爱鱼香肉丝（哦不豆腐）',26,'user','2017-01-19 06:15:50'),(24,'饭前喝口汤，简直完美',27,'白切鸡','2017-01-19 06:17:00');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `introduce` text,
  `pictures` varchar(50) DEFAULT NULL,
  `tips` text,
  `create_time` varchar(20) DEFAULT NULL,
  `author` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (25,'豆腐炖白菜','白菜豆腐，普通平常却实实在在，人生也大多如此吧。\r\n\r\n炖一锅热乎乎的豆腐白菜，来温暖整个冬季吧！ ','static/images/recipe_25_bcddf.jpg','','2017-01-18 08:07:33','白切鸡'),(26,'鱼香豆腐','','static/images/recipe_26_jpg','','2017-01-18 08:29:59','叉烧包'),(27,'豆腐蘑菇汤','','static/images/recipe_27_jzgdft.jpg','蒜花一定要多，最后撒在汤上，逼出大蒜香气。豆腐大火煮得泡起，下蘑菇片。','2017-01-18 08:44:37','user'),(29,'蟹黄豆腐','这道菜美其名曰：蟹黄豆腐，但是大部分饭店里用的都不会是真正的蟹黄，而是用咸鸭蛋的蛋黄代替，咱老百姓在家也可以做上媲美星级酒店里的味道。 ','static/images/recipe_29_xhdf.jpg','','2017-01-18 09:03:51','user'),(32,'家常豆腐','关于这道菜：\r\n我发现最近很多厨友很喜欢这道菜！但提的问题也相对于多...所以我综合一下大家的提问回答一下！\r\n水淀粉：就是水＋淀粉（玉米淀粉，或者任何淀粉），比例大概是2:1\r\n豆腐：我用的是老豆腐\r\n有人说煎不成金黄色...请大家有点耐心,每一面煎的时候不要翻动,多煎一点时间！\r\n这道菜我没有放盐,因为放了老抽哦生抽..对于我来说味道够了！如果有的人觉得淡在临出锅之前放点盐也是可以的！','static/images/recipe_32_jcdf.jpg','','2017-01-19 03:34:39','user'),(38,'红烧豆腐','豆腐作为食药兼备的食品，具有益气、补虚等多方面的功能。据测定，一般100克豆腐含钙量为140毫克-160毫克，豆腐又是植物食品中含蛋白质比较高的，含有8种人体必需的氨基酸，还含有动物性事物缺乏的不饱和脂肪酸，卵磷脂等。因此，常吃豆腐可以保护肝脏，促进机体代谢，增加免疫力并且有解毒作用。','static/images/recipe_38_hsdf.jpg','1.豆腐焯水后口感会更加细腻，在接下来的炒至中不易碎。\r\n2.因豆腐中含嘌呤较多，对嘌呤代谢失常的痛风病人和血尿酸浓度增高的患者，忌食豆腐；脾胃虚寒，经常腹泻便溏者忌食。','2017-01-19 06:02:10','user'),(39,'家常豆腐','关于这道菜：\r\n我发现最近很多厨友很喜欢这道菜！但提的问题也相对于多...所以我综合一下大家的提问回答一下！\r\n水淀粉：就是水＋淀粉（玉米淀粉，或者任何淀粉），比例大概是2:1\r\n豆腐：我用的是老豆腐\r\n有人说煎不成金黄色...请大家有点耐心,每一面煎的时候不要翻动,多煎一点时间！\r\n这道菜我没有放盐,因为放了老抽哦生抽..对于我来说味道够了！如果有的人觉得淡在临出锅之前放点盐也是可以的！ ','static/images/recipe_39_jcdf.jpg','','2017-01-19 06:06:07','user');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step_number` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `pictures` varchar(100) DEFAULT NULL,
  `technique` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_id` (`recipe_id`),
  CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
INSERT INTO `steps` VALUES (62,1,25,'static/images/recipe_25_step_1_bcddf1.jpg','豆腐切成片，大白菜洗净切块，葱姜切丝。'),(63,2,25,'static/images/recipe_25_step_2_bcddf2.jpg','炒锅放油，油可以多放些，先放入豆腐煎一下。'),(64,3,25,'static/images/recipe_25_step_3_bcddf3.jpg','翻面，煎到两面金黄就可以。'),(65,4,25,'static/images/recipe_25_step_4_bcddf4.jpg','放入葱姜翻炒。\r\n喜欢吃辣的这时可以放几个干辣椒。或者放几颗花椒和八角。再或者这几样都加味道也蛮好。喜欢白菜清甜口味的就只加葱姜好了'),(66,5,25,'static/images/recipe_25_step_5_bcddf5.jpg','放入切好的白菜。'),(67,6,25,'static/images/recipe_25_step_6_bcddf6.jpg','翻炒几下，加入盐和少许生抽。\r\n生抽的量根据个人喜欢。想要奶白汤的不要放生抽。'),(68,7,25,'static/images/recipe_25_step_7_bcddf7.jpg','看到白菜萎缩变少时加入清水或骨头汤，先大火后改小火炖到白菜软烂。\r\n白菜不怕煮，尽量炖时间长一点，这样菜汤浓白菜烂才好吃。'),(69,1,26,NULL,'先把豆腐切成2厘米见方的小块，用淡盐水浸泡10分钟（防止一会儿炒碎）'),(70,2,26,NULL,'木耳泡发切丝，胡萝卜切丝，小香葱切末，大蒜剁碎'),(71,3,26,NULL,'2勺糖1勺醋2勺番茄酱2勺水1勺酱油调成汁待用'),(72,4,26,NULL,'豆腐从盐水中捞出沥干水分，热锅凉油，放入蒜末爆香，放胡萝卜木耳翻炒，听到木耳爆出响声，放豆腐翻炒，至金黄色，放调好的汁小火咕嘟一下，放一勺盐，待汤汁浓稠后关火，出锅装盘撒上小香葱即可'),(73,1,27,'static/images/recipe_27_step_1_jzgdft1.jpg','豆腐切块，蘑菇切片，入水煮沸'),(74,1,29,'static/images/recipe_29_step_1_xhdf1.jpg','主要原料集合'),(75,2,29,'static/images/recipe_29_step_2_xhdf2.jpg','嫩豆腐切小块，锅中放入适量水，烧开后，加入切小块的豆腐丁，撒1g盐，煮至冒泡'),(76,3,29,'static/images/recipe_29_step_3_xhdf3.jpg','捞出豆腐丁，控干水分'),(77,4,29,'static/images/recipe_29_step_4_xhdf4.jpg','咸鸭蛋蛋黄放入蒸锅中，蒸熟透'),(78,5,29,'static/images/recipe_29_step_5_xhdf5.jpg','晾凉后的咸鸭蛋黄，用勺背压碎，尽可能的压细碎'),(79,6,29,'static/images/recipe_29_step_6_xhdf6.jpg','锅中放入适量橄榄油，放入咸蛋黄碎，用中小火炒均匀，炒出香味。（尽可能的炒细腻均匀）'),(80,7,29,'static/images/recipe_29_step_7_xhdf7.jpg','之后加入豆腐丁，轻轻的翻拌均匀'),(81,8,29,'static/images/recipe_29_step_8_xhdf8.jpg','加入湿淀粉勾芡，翻炒均匀至浓稠'),(82,9,29,'static/images/recipe_29_step_9_xhdf9.jpg','最后撒适量盐，拌匀即可盛出'),(84,1,32,'static/images/recipe_32_step_1_jcdf_step1.jpg','将豆腐切成方块'),(85,2,32,'static/images/recipe_32_step_2_jcdf_step2.jpg','放入打散的鸡蛋里使之沾均匀'),(86,3,32,'static/images/recipe_32_step_3_jcdf_step3.jpg','锅内少许油放入沾好鸡蛋液的豆腐'),(87,4,32,'static/images/recipe_32_step_4_jcdf_step4.jpg','两边煎成金黄色捞出备用'),(88,5,32,'static/images/recipe_32_step_5_jcdf_step5.jpg','另起油锅,放入老干妈豆豉和泡椒炒香'),(89,6,32,'static/images/recipe_32_step_6_jcdf_step6.jpg','放入青红椒和木耳煸炒'),(90,7,32,'static/images/recipe_32_step_7_jcdf_step7.jpg','放入煎好的豆腐块,翻炒一下，放入生抽，老抽，鸡精，糖，加入少许水'),(91,8,32,'static/images/recipe_32_step_8_jcdf_step8.jpg','大火快速翻炒一下,转中火2分钟后淋如水淀粉快速翻炒即可~'),(130,1,38,'static/images/recipe_38_step_1_hsdf_step1.jpg','豆腐切块，用开水焯半分钟左右'),(131,2,38,'static/images/recipe_38_step_2_hsdf_step2.jpg','准备好葱姜蒜'),(132,3,38,'static/images/recipe_38_step_3_hsdf_step3.jpg','草菇老抽，鸡精，盐，蚝油，花椒面，清水调汁'),(133,4,38,'static/images/recipe_38_step_4_hsdf_step4.jpg','葱姜蒜炝锅，炒出香味'),(134,5,38,'static/images/recipe_38_step_5_hsdf_step5.jpg','倒入豆腐，翻炒几下'),(135,6,38,'static/images/recipe_38_step_6_hsdf_step6.jpg','加入酱汁，略炖一下后，勾芡出锅'),(136,7,38,'static/images/recipe_38_step_7_hsdf.jpg','我上边撒的是香菜，也可以撒些葱花'),(137,1,39,'static/images/recipe_39_step_1_jcdf_step1.jpg','将豆腐切成方块'),(138,2,39,'static/images/recipe_39_step_2_jcdf_step2.jpg','放入打散的鸡蛋里使之沾均匀'),(139,3,39,'static/images/recipe_39_step_3_jcdf_step3.jpg','锅内少许油放入沾好鸡蛋液的豆腐'),(140,4,39,'static/images/recipe_39_step_4_jcdf_step4.jpg','锅内少许油放入沾好鸡蛋液的豆腐'),(141,5,39,'static/images/recipe_39_step_5_jcdf_step5.jpg','另起油锅,放入老干妈豆豉和泡椒炒香'),(142,6,39,'static/images/recipe_39_step_6_jcdf_step6.jpg','放入青红椒和木耳煸炒'),(143,7,39,'static/images/recipe_39_step_7_jcdf_step7.jpg','放入煎好的豆腐块,翻炒一下，放入生抽，老抽，鸡精，糖，加入少许水'),(144,8,39,'static/images/recipe_39_step_8_jcdf_step8.jpg','大火快速翻炒一下,转中火2分钟后淋如水淀粉快速翻炒即可~');
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` text,
  `email` varchar(30) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_time` varchar(30) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','pbkdf2:sha1:1000$QIA2764s$bb8bd1c124863170fba665bb3632599391647557','sguzch@163.com',NULL,'2017-01-09 07:40:38','static/images/users_pictures/admin_picture_index.jpg'),(3,'user','pbkdf2:sha1:1000$I1hvVexT$adcdea93aff2d1de6daf8cfbdfa4fe82520a02f0','u@u.com',NULL,'2017-01-17 05:59:33','static/images/users_pictures/user_picture_jpg'),(4,'叉烧包','pbkdf2:sha1:1000$nPrSXMuR$c885b4efa580ab86d64e31a1bc08577e4d1f42a4','c@c.com',NULL,'2017-01-18 03:50:11','static/images/users_pictures/叉烧包_picture_jpg'),(5,'白切鸡','pbkdf2:sha1:1000$FWeS5oxf$e9575b5bcf17bda21f5acd903952f5e0f696878e','b@b.com',NULL,'2017-01-18 05:54:13','static/images/users_pictures/白切鸡_picture_jpg'),(6,'gua','pbkdf2:sha1:1000$ycFhnwYL$4228a65930fce208f5c96571a33b335fa2d3ecde','gua@gua.gua',NULL,'2017-01-18 10:00:44','static/images/users_pictures/user_default.jpg'),(7,'1','pbkdf2:sha1:1000$KXqA9PE4$537cfb811d6552034178af8faa9e13006d6e9822','1',NULL,'2017-01-18 10:08:04','static/images/users_pictures/user_default.jpg'),(8,'caigua','pbkdf2:sha1:1000$x7OY0NB2$3f691da835d384d945c11fd1ddcf388db694e40f','junctionzc@163.com',NULL,'2017-01-18 10:10:13','static/images/users_pictures/user_default.jpg'),(9,'ElfenSterben','pbkdf2:sha1:1000$suDCpBt3$c186c5324c2df7d8fb4be41303a2074264e57045','362051950@qq.com',NULL,'2017-01-18 10:15:45','static/images/users_pictures/ElfenSterben_picture_jpg'),(10,'123456','pbkdf2:sha1:1000$6XNhnMGt$1f9213e725ae6b6fe702b567cc8973a6e561461c','123456@qq.com',NULL,'2017-01-18 10:18:44','static/images/users_pictures/user_default.jpg'),(11,'sawhigh','pbkdf2:sha1:1000$JAZtwvuF$39825e646824d5e6ab447d83e11e68b22f76a664','p4322458p@sina.com',NULL,'2017-01-19 09:46:12','static/images/users_pictures/user_default.jpg'),(12,'qiang','pbkdf2:sha1:1000$wxeQu8i9$ff89b1cce34a997732b8a779eb792b7cdc521b3b','1185165192@qq.com',NULL,'2017-01-26 08:46:21','static/images/users_pictures/user_default.jpg'),(13,'ttt','pbkdf2:sha1:1000$et3DHPDJ$ded7798d339377c786b4c8e0680cc49e6031b84a','t@t.com',NULL,'2017-02-08 03:41:09','static/images/users_pictures/user_default.jpg'),(14,'terryso','pbkdf2:sha1:1000$ZnVTH3Cv$176d3a5c14c94c5e2bffdc23e915ad42d988c87b','terryso@sina.com',NULL,'2017-03-31 09:01:35','static/images/users_pictures/user_default.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-23  8:58:02
