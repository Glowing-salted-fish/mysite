-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog type',7,'add_blogtype'),(20,'Can change blog type',7,'change_blogtype'),(21,'Can delete blog type',7,'delete_blogtype'),(22,'Can add blog',8,'add_blog'),(23,'Can change blog',8,'change_blog'),(24,'Can delete blog',8,'delete_blog'),(25,'Can add read num',9,'add_readnum'),(26,'Can change read num',9,'change_readnum'),(27,'Can delete read num',9,'delete_readnum'),(28,'Can add read num',10,'add_readnum'),(29,'Can change read num',10,'change_readnum'),(30,'Can delete read num',10,'delete_readnum'),(31,'Can add read detail',11,'add_readdetail'),(32,'Can change read detail',11,'change_readdetail'),(33,'Can delete read detail',11,'delete_readdetail'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add reply',13,'add_reply'),(38,'Can change reply',13,'change_reply'),(39,'Can delete reply',13,'delete_reply'),(40,'Can add like count',14,'add_likecount'),(41,'Can change like count',14,'change_likecount'),(42,'Can delete like count',14,'delete_likecount'),(43,'Can add like record',15,'add_likerecord'),(44,'Can change like record',15,'change_likerecord'),(45,'Can delete like record',15,'delete_likerecord'),(46,'Can add profile',16,'add_profile'),(47,'Can change profile',16,'change_profile'),(48,'Can delete profile',16,'delete_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$nx13Tsr1aJAG$sjqyLDkKr3uXN+W4rc119w1rql6D1iaKuGf8NpC4wPI=','2022-03-07 14:41:34.302020',1,'salefish','','','1055132129@qq.com',1,1,'2022-01-26 13:08:00.000000'),(2,'pbkdf2_sha256$100000$dWkLFhmxae2R$cBA65EbyI76K9KGuNj2IC9TWDBw6JVugyZldpu6jsVY=','2022-03-03 14:15:26.052000',0,'saltfish','','','1@qq.com',0,1,'2022-02-23 14:49:06.796000'),(3,'pbkdf2_sha256$100000$xkozMwhAIOq6$z40ZK6WH1c6Z69SFqo9kjKLiDwU10fMU6Py8PQRoY3A=','2022-03-07 14:39:13.215789',0,'007','','','2801870377@qq.com',0,1,'2022-03-05 13:19:39.779000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'长内容的博客','<p><img alt=\"\" src=\"/media/upload/2022/02/15/photo2.png\" style=\"height:836px; width:1254px\" />大法师所ddsa<strong>fdsafadsfs</strong><br />\r\nfdsafsd</p>\r\n\r\n<p><span style=\"color:#27ae60\">dasfads</span></p>','2022-02-07 14:00:32.355000','2022-02-07 14:00:32.355000',1,2),(4,'随笔2','大蒜嘟','2022-02-07 14:22:29.159000','2022-02-07 14:22:29.159000',1,2),(5,'Django1','fdsaf','2022-02-07 14:22:47.174000','2022-02-07 14:22:47.174000',1,1),(6,'shell模式下第1篇','xxxxx','2022-02-12 13:29:57.264000','2022-02-12 13:29:57.264000',1,1),(7,'for 1','xxxx:1','2022-02-12 13:59:38.976000','2022-02-12 13:59:38.976000',1,1),(8,'for 2','xxxx:2','2022-02-12 13:59:38.979000','2022-02-12 13:59:38.979000',1,1),(9,'for 3','xxxx:3','2022-02-12 13:59:38.982000','2022-02-12 13:59:38.982000',1,1),(10,'for 4','xxxx:4','2022-02-12 13:59:38.985000','2022-02-12 13:59:38.985000',1,1),(11,'for 5','xxxx:5','2022-02-12 13:59:38.988000','2022-02-12 13:59:38.988000',1,1),(12,'for 6','xxxx:6','2022-02-12 13:59:38.990000','2022-02-12 13:59:38.990000',1,1),(13,'for 7','xxxx:7','2022-02-12 13:59:38.993000','2022-02-12 13:59:38.993000',1,1),(14,'for 8','xxxx:8','2022-02-12 13:59:38.996000','2022-02-12 13:59:38.996000',1,1),(15,'for 9','xxxx:9','2022-02-12 13:59:38.999000','2022-02-12 13:59:38.999000',1,1),(16,'for 10','xxxx:10','2022-02-12 13:59:39.002000','2022-02-12 13:59:39.002000',1,1),(17,'for 11','xxxx:11','2022-02-12 13:59:39.004000','2022-02-12 13:59:39.004000',1,1),(18,'for 12','xxxx:12','2022-02-12 13:59:39.007000','2022-02-12 13:59:39.007000',1,1),(19,'for 13','xxxx:13','2022-02-12 13:59:39.009000','2022-02-12 13:59:39.009000',1,1),(20,'for 14','xxxx:14','2022-02-12 13:59:39.012000','2022-02-12 13:59:39.012000',1,1),(21,'for 15','xxxx:15','2022-02-12 13:59:39.015000','2022-02-12 13:59:39.015000',1,1),(22,'for 16','xxxx:16','2022-02-12 13:59:39.017000','2022-02-12 13:59:39.017000',1,1),(23,'for 17','xxxx:17','2022-02-12 13:59:39.020000','2022-02-12 13:59:39.020000',1,1),(24,'for 18','xxxx:18','2022-02-12 13:59:39.022000','2022-02-12 13:59:39.022000',1,1),(25,'for 19','xxxx:19','2022-02-12 13:59:39.025000','2022-02-12 13:59:39.025000',1,1),(26,'for 20','xxxx:20','2022-02-12 13:59:39.028000','2022-02-12 13:59:39.028000',1,1),(27,'for 21','xxxx:21','2022-02-12 13:59:39.031000','2022-02-12 13:59:39.031000',1,1),(28,'for 22','xxxx:22','2022-02-12 13:59:39.034000','2022-02-12 13:59:39.034000',1,1),(29,'for 23','xxxx:23','2022-02-12 13:59:39.036000','2022-02-12 13:59:39.036000',1,1),(30,'for 24','xxxx:24','2022-02-12 13:59:39.039000','2022-02-12 13:59:39.039000',1,1),(31,'for 25','xxxx:25','2022-02-12 13:59:39.042000','2022-02-12 13:59:39.042000',1,1),(32,'for 26','xxxx:26','2022-02-12 13:59:39.044000','2022-02-12 13:59:39.044000',1,1),(33,'for 27','xxxx:27','2022-02-12 13:59:39.047000','2022-02-12 13:59:39.047000',1,1),(34,'for 28','xxxx:28','2022-02-12 13:59:39.050000','2022-02-12 13:59:39.050000',1,1),(35,'for 29','xxxx:29','2022-02-12 13:59:39.053000','2022-02-12 13:59:39.053000',1,1),(36,'for 30','<p>xxxx:30</p>','2022-02-12 13:59:39.056000','2022-02-12 13:59:39.056000',1,1),(37,'叻叻猪','<p>今天我是这条街最叻的<strong>猪猪</strong></p>','2022-02-22 14:35:15.136000','2022-02-22 14:35:15.136000',1,3),(38,'3月','<p>三月啦啦啦</p>','2022-03-07 14:41:53.987625','2022-03-07 14:41:53.987625',1,2);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,36,'sad','2022-02-22 14:06:27.560000',8,1,NULL,NULL,NULL),(2,36,'fdsafdsafds','2022-02-22 14:15:45.375000',8,1,NULL,NULL,NULL),(3,37,'哇，你的好叻叻啊','2022-02-22 14:35:35.151000',8,1,NULL,NULL,NULL),(4,37,'规范点','2022-02-24 12:48:19.076000',8,1,NULL,NULL,NULL),(5,37,'阿萨德','2022-02-24 13:23:50.902000',8,1,NULL,NULL,NULL),(6,37,'<p>fds&nbsp;</p>','2022-02-24 13:39:49.149000',8,1,NULL,NULL,NULL),(7,37,'<p>你真系叻叻猪<img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></p>','2022-02-24 13:43:07.051000',8,1,NULL,NULL,NULL),(8,37,'<p>fdsf sdfdsfdsfdsfdsdfs</p>','2022-02-24 14:05:01.503000',8,1,NULL,NULL,NULL),(9,37,'<p>tdsft</p>','2022-02-24 14:06:19.246000',8,1,NULL,NULL,NULL),(10,37,'<p>99696</p>','2022-02-24 14:09:41.645000',8,1,NULL,NULL,NULL),(11,37,'<p>fdsfsd</p>','2022-02-24 14:10:31.069000',8,1,NULL,NULL,NULL),(12,37,'<p>fasfas</p>','2022-02-24 14:11:57.622000',8,1,NULL,NULL,NULL),(13,37,'<p>这是大沙地好说的我阿斯顿号hi爱是滴啊上<img alt=\"enlightened\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/lightbulb.png\" title=\"enlightened\" width=\"23\" /></p>','2022-02-24 14:18:33.271000',8,1,NULL,NULL,NULL),(14,37,'<p>这是大沙地好说的我阿斯顿号hi爱是滴啊上<img alt=\"enlightened\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/lightbulb.png\" title=\"enlightened\" width=\"23\" /></p>','2022-02-24 14:20:28.683000',8,1,NULL,NULL,NULL),(15,37,'<p>这是大沙地好说的我阿斯顿号hi爱是滴啊上<img alt=\"enlightened\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/lightbulb.png\" title=\"enlightened\" width=\"23\" /></p>','2022-02-24 14:20:31.706000',8,1,NULL,NULL,NULL),(16,37,'<p>788</p>','2022-02-24 14:21:49.711000',8,1,NULL,NULL,NULL),(17,37,'<p>工人房</p>','2022-02-24 14:22:14.478000',8,1,NULL,NULL,NULL),(18,37,'<p>发递四方速递</p>','2022-02-24 14:22:52.308000',8,1,NULL,NULL,NULL),(19,37,'<p>发递四方速递</p>','2022-02-24 14:22:54.674000',8,1,NULL,NULL,NULL),(20,37,'<p>浮点数</p>','2022-02-24 14:23:17.237000',8,1,NULL,NULL,NULL),(21,37,'<p>test</p>','2022-02-24 14:23:49.446000',8,1,NULL,NULL,NULL),(22,37,'<p>FDSFDS</p>','2022-02-24 14:25:22.340000',8,1,NULL,NULL,NULL),(23,37,'<p>FDSFDS个梵蒂冈</p>','2022-02-24 14:28:37.446000',8,1,NULL,NULL,NULL),(24,37,'<p>谷歌</p>','2022-02-24 14:44:19.795000',8,1,NULL,NULL,NULL),(25,37,'<p>fdsf</p>','2022-02-24 14:57:16.827000',8,1,NULL,NULL,NULL),(26,37,'<p>浮点数&nbsp; 第三方</p>','2022-02-24 14:57:50.978000',8,1,NULL,NULL,NULL),(27,34,'<p>浮点数</p>','2022-02-24 14:58:22.443000',8,1,NULL,NULL,NULL),(28,33,'<p>fdsf&nbsp;</p>','2022-02-24 15:04:45.730000',8,1,NULL,NULL,NULL),(29,35,'<p>dsaf&nbsp;</p>','2022-02-24 15:05:00.036000',8,1,NULL,NULL,NULL),(30,35,'<p>df&nbsp;</p>','2022-02-24 15:05:22.586000',8,1,NULL,NULL,NULL),(31,35,'<p>fdsfdsf</p>','2022-02-24 15:06:09.994000',8,1,NULL,NULL,NULL),(32,32,'<p>fdsffdsf</p>','2022-02-24 15:06:48.508000',8,1,NULL,NULL,NULL),(33,32,'<p><img alt=\"blush\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/embarrassed_smile.png\" title=\"blush\" width=\"23\" /></p>','2022-02-24 15:08:10.090000',8,1,NULL,NULL,NULL),(34,37,'<p><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></p>','2022-02-24 15:08:36.651000',8,1,NULL,NULL,NULL),(36,37,'子评论','2022-02-25 13:13:15.526000',8,1,32,1,34),(37,37,'<p>个梵蒂冈</p>','2022-02-25 14:00:36.590000',8,1,NULL,NULL,NULL),(38,37,'<p>多撒多啊</p>','2022-02-25 15:12:11.453000',8,1,34,1,NULL),(39,37,'<p>jhbhjjk</p>','2022-02-25 15:12:26.641000',8,1,37,1,NULL),(40,37,'<p>出现在</p>','2022-02-25 15:12:49.427000',8,1,37,1,NULL),(41,37,'<p>hjgjh</p>','2022-02-25 15:15:11.204000',8,1,NULL,NULL,NULL),(42,37,'<p>阿斯顿撒</p>','2022-02-25 15:19:59.418000',8,1,34,1,34),(43,37,'<p>啊实打实</p>','2022-02-25 15:20:13.943000',8,1,36,1,34),(44,31,'<p>厉害厉害<img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></p>','2022-02-26 13:13:01.752000',8,1,NULL,NULL,NULL),(45,31,'<p>人工费的</p>','2022-02-26 13:13:27.572000',8,1,NULL,NULL,NULL),(46,35,'<p>范德萨范德萨发</p>','2022-02-26 13:22:38.640000',8,1,31,1,31),(47,35,'<p>第三方第三方</p>','2022-02-26 13:42:37.663000',8,1,46,1,31),(48,35,'<p>第三方第三方</p>','2022-02-26 13:42:45.702000',8,1,46,1,31),(49,35,'<p>第三方第三方</p>','2022-02-26 13:42:49.350000',8,1,46,1,31),(50,35,'<p>fdsf</p>','2022-02-26 13:44:05.848000',8,1,49,1,31),(51,37,'<p>的分手费</p>','2022-02-26 13:54:34.625000',8,1,41,1,41),(52,37,'<p>吃香菜</p>','2022-02-26 13:54:39.101000',8,1,NULL,NULL,NULL),(53,37,'<p>csdfdf</p>','2022-02-26 14:15:43.530000',8,1,52,1,52),(54,37,'<p>gfdgfdg</p>','2022-02-26 14:15:48.036000',8,1,NULL,NULL,NULL),(55,37,'<p>fdsfsdfsd</p>','2022-02-26 14:16:05.997000',8,1,NULL,NULL,NULL),(56,37,'<p>dsadas</p>','2022-02-26 14:17:44.504000',8,1,NULL,NULL,NULL),(57,37,'<p>hghh</p>','2022-02-26 14:18:29.311000',8,1,NULL,NULL,NULL),(58,37,'<p>ffff</p>','2022-02-26 14:19:00.503000',8,1,NULL,NULL,NULL),(59,37,'<p>dsaf</p>','2022-02-28 15:08:53.263000',8,1,58,1,58),(60,37,'<p>gghh</p>','2022-03-01 13:40:06.682000',8,1,NULL,NULL,NULL),(61,37,'<p>dsadasdsa</p>','2022-03-01 13:40:20.632000',8,1,60,1,60),(62,37,'<p>asdasd</p>','2022-03-01 13:41:05.299000',8,1,60,1,60),(63,37,'<p>sadasd</p>','2022-03-01 13:44:04.041000',8,1,NULL,NULL,NULL),(64,37,'<p>asddas</p>','2022-03-01 13:44:06.442000',8,1,63,1,63),(65,37,'<p>fdsfds</p>','2022-03-01 13:49:56.162000',8,1,64,1,63),(66,37,'<p>asaaaaghhh</p>','2022-03-01 13:50:27.898000',8,1,64,1,63),(67,37,'<p>asdasd</p>','2022-03-01 13:51:00.073000',8,1,66,1,63),(68,37,'<p>32432423</p>','2022-03-01 13:51:45.129000',8,1,63,1,63),(69,37,'<p>6654645546</p>','2022-03-01 13:53:19.713000',8,1,64,1,63),(70,37,'<p>34242343</p>','2022-03-01 13:54:41.569000',8,1,64,1,63),(71,37,'<p>hy767576nb5</p>','2022-03-01 13:54:50.822000',8,1,70,1,63),(72,37,'<p>哈哈</p>','2022-03-04 14:59:16.239000',8,2,NULL,NULL,NULL),(73,37,'<p>厉害</p>','2022-03-04 14:59:21.948000',8,2,72,2,72),(74,37,'<p>啦啦啦啦</p>','2022-03-06 09:01:05.777000',8,1,NULL,NULL,NULL),(75,37,'<p>厉害</p>','2022-03-06 09:06:06.737000',8,3,74,1,74),(76,37,'<p>多线程发送邮件</p>','2022-03-06 09:15:36.684000',8,3,74,1,74),(77,37,'<p>厉害厉害</p>','2022-03-06 09:15:48.551000',8,3,NULL,NULL,NULL),(78,37,'<p>html邮件测试</p>','2022-03-06 09:19:58.394000',8,3,NULL,NULL,NULL),(79,37,'<p>html模板发送邮编测试</p>','2022-03-06 09:26:57.203000',8,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-26 13:49:53.829000','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),(2,'2022-01-26 13:50:06.302000','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),(3,'2022-01-26 13:50:10.918000','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),(4,'2022-01-26 13:52:54.983000','1','<Blog: 第一篇博客>',1,'[{\"added\": {}}]',8,1),(5,'2022-02-07 13:55:34.732000','2','<Blog: 第二篇博客>',1,'[{\"added\": {}}]',8,1),(6,'2022-02-07 13:59:07.172000','2','<Blog: 第二篇博客>',3,'',8,1),(7,'2022-02-07 13:59:07.175000','1','<Blog: 第一篇博客>',3,'',8,1),(8,'2022-02-07 14:00:32.356000','3','<Blog: 长内容的博客>',1,'[{\"added\": {}}]',8,1),(9,'2022-02-07 14:22:29.159000','4','<Blog: 随笔2>',1,'[{\"added\": {}}]',8,1),(10,'2022-02-07 14:22:47.175000','5','<Blog: Django1>',1,'[{\"added\": {}}]',8,1),(11,'2022-02-15 14:46:58.541000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(12,'2022-02-15 15:10:29.133000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(13,'2022-02-15 15:27:07.338000','3','<Blog: 长内容的博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(14,'2022-02-16 13:31:21.314000','36','<Blog: for 30>',2,'[{\"changed\": {\"fields\": [\"content\", \"read_num\"]}}]',8,1),(15,'2022-02-17 13:11:45.655000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(16,'2022-02-17 13:26:54.733000','2','ReadNum object (2)',1,'[{\"added\": {}}]',9,1),(17,'2022-02-17 14:27:27.288000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(18,'2022-02-18 12:46:29.697000','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),(19,'2022-02-22 14:35:15.137000','37','<Blog: 叻叻猪>',1,'[{\"added\": {}}]',8,1),(20,'2022-02-25 13:09:30.794000','35','Comment object (35)',1,'[{\"added\": {}}]',12,1),(21,'2022-02-25 13:12:44.230000','35','231312',3,'',12,1),(22,'2022-02-25 13:13:15.527000','36','子评论',1,'[{\"added\": {}}]',12,1),(23,'2022-02-25 13:27:21.746000','36','子评论',2,'[{\"changed\": {\"fields\": [\"root\", \"reply_to\"]}}]',12,1),(24,'2022-03-03 13:47:58.014000','1','<Profile: 咸鱼 for saltfish>',1,'[{\"added\": {}}]',16,1),(25,'2022-03-03 14:15:00.759000','2','saltfish',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(26,'2022-03-04 17:17:54.114000','1','salefish',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(27,'2022-03-04 17:25:59.491000','1','salefish',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',4,1),(28,'2022-03-05 14:05:30.079000','3','007',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(29,'2022-03-07 14:41:53.988608','38','<Blog: 3月>',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(13,'comment','reply'),(5,'contenttypes','contenttype'),(14,'likes','likecount'),(15,'likes','likerecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(16,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-07 14:29:42.322556'),(2,'auth','0001_initial','2022-03-07 14:29:42.654166'),(3,'admin','0001_initial','2022-03-07 14:29:42.806174'),(4,'admin','0002_logentry_remove_auto_add','2022-03-07 14:29:42.813756'),(5,'contenttypes','0002_remove_content_type_name','2022-03-07 14:29:42.878144'),(6,'auth','0002_alter_permission_name_max_length','2022-03-07 14:29:42.915800'),(7,'auth','0003_alter_user_email_max_length','2022-03-07 14:29:42.933255'),(8,'auth','0004_alter_user_username_opts','2022-03-07 14:29:42.940088'),(9,'auth','0005_alter_user_last_login_null','2022-03-07 14:29:42.973834'),(10,'auth','0006_require_contenttypes_0002','2022-03-07 14:29:42.975838'),(11,'auth','0007_alter_validators_add_error_messages','2022-03-07 14:29:42.981833'),(12,'auth','0008_alter_user_username_max_length','2022-03-07 14:29:43.121812'),(13,'auth','0009_alter_user_last_name_max_length','2022-03-07 14:29:43.160846'),(14,'blog','0001_initial','2022-03-07 14:29:43.319053'),(15,'blog','0002_auto_20220212_2221','2022-03-07 14:29:43.426698'),(16,'blog','0003_auto_20220215_2307','2022-03-07 14:29:43.433518'),(17,'blog','0004_auto_20220215_2323','2022-03-07 14:29:43.440506'),(18,'blog','0005_blog_read_num','2022-03-07 14:29:43.465773'),(19,'blog','0006_auto_20220217_2106','2022-03-07 14:29:43.567694'),(20,'blog','0007_auto_20220217_2223','2022-03-07 14:29:43.611158'),(21,'blog','0008_auto_20220228_2051','2022-03-07 14:29:43.703974'),(22,'comment','0001_initial','2022-03-07 14:29:43.844702'),(23,'comment','0002_auto_20220225_2106','2022-03-07 14:29:43.926824'),(24,'comment','0003_auto_20220225_2111','2022-03-07 14:29:44.009756'),(25,'comment','0004_auto_20220225_2112','2022-03-07 14:29:44.056957'),(26,'comment','0005_auto_20220225_2118','2022-03-07 14:29:44.165730'),(27,'comment','0006_auto_20220225_2121','2022-03-07 14:29:44.367343'),(28,'comment','0007_auto_20220228_2051','2022-03-07 14:29:44.685021'),(29,'likes','0001_initial','2022-03-07 14:29:44.818783'),(30,'read_statistics','0001_initial','2022-03-07 14:29:44.868887'),(31,'read_statistics','0002_readdetail','2022-03-07 14:29:44.987266'),(32,'read_statistics','0003_auto_20220218_2045','2022-03-07 14:29:45.036137'),(33,'read_statistics','0004_auto_20220228_2051','2022-03-07 14:29:45.126315'),(34,'sessions','0001_initial','2022-03-07 14:29:45.151259'),(35,'user','0001_initial','2022-03-07 14:29:45.199709');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('18tzmpvrwdpve4jqnvkctfhdja5dtvz5','YjhlZGM2ZDc0NWVlNjc1YzMwM2NiODIyMmQzZDM4N2VkZTM0YjhlOTp7ImZvcmdvdF9wYXNzd29yZCI6IlJLck4iLCJzZW5kX2NvZGVfdGltZSI6MTY0NjQ5MTIzNCwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImUwZjY3ZmQ0YzNmYWI5ZmNhYjNjMzFlNjBiN2U0M2E1MDU1MjJhNTQifQ==','2022-03-19 14:41:07.253000'),('2rucdv4wopni6c3scdwt4eujp7tgtms7','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-01 14:43:14.636000'),('3ilxyk06vx5isalkk8snaehjcgpafio5','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-08 14:35:24.580000'),('3wtsz1chil93rbqn249bqnaytoayj7yk','NTU4NmIwZTM0ZTczNjNiMDI3OTFiMTdiMTk5MjE4NjlkYTZmNTRmNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMGY2N2ZkNGMzZmFiOWZjYWIzYzMxZTYwYjdlNDNhNTA1NTIyYTU0In0=','2022-03-21 14:39:13.218785'),('asepqfvt7jlscj1w5vc9chlg775tf67b','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-16 13:17:06.352000'),('e7m76bebhk24bywc5ymu9w6a7fw79wm2','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-15 14:33:50.777000'),('el9xjag3phanykgvz7laji7gq08wsprx','YWJmN2U0OTEzNTEyNDZjZDA0Y2MyZGMyNDI3N2ZhMTBhYmJhZTVlMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDgwMjE0NDM0ZDNhN2UwOTNiYzBmZjhmNGZlYjg4NjI3MjRkNGIyIn0=','2022-03-09 14:49:06.883000'),('eov20qfftk8qfvp6jvekhv93mh0aiajx','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-15 14:30:14.382000'),('hckzqo441jawo69rtl4qp6oftxrk9ao3','NDM3MmZmNTU0NWQ1YTE5ZmIyYzVjYmYwNzk4YjQ3NzZmZjAyZjBkNDp7fQ==','2022-03-15 14:27:30.638000'),('i4lchf7culfwyj2feszmj5hdptv2o33j','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-19 14:05:30.088000'),('j7ndn02pn8k4mslx55635bgln6bvwamn','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-08 13:43:57.474000'),('kgmlw1rq9k3crxd0wj2ywm82px4hweyj','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-07 14:41:20.180000'),('l4p3cgpx37vrvcysq25oodwoldid26er','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-02-09 13:31:58.515000'),('nwjqxuduqzpc1x3esd2zyztiprra2tx1','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-21 14:41:34.303891'),('rt394urvk2xmp2j5mhzngq8q48elwi97','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-08 13:31:36.188000'),('tvfp33uz331e1lf5mwpd7ynnhv2azxmh','OTgzMDgzZGVlNDZhZjJmM2Q4YWQyNDJjZmMzYmY2NDZhMDZjMjAxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIn0=','2022-03-15 14:29:12.962000'),('x7be04cwokl8aqt79djhlvamkbghp5ns','YzNiMzNmMzNhZjEwNzhkY2E1OGRkODRjYzNiNGVkMzVjMmJjYzA0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWRkMzY2MjdkN2Q0MDU2MDhiZDA2NWVmMjRlYTlkNjEzM2RhZWZlIiwiYmluZF9lbWFpbF9jb2RlIjoiSGZKcCJ9','2022-03-18 17:27:01.191000'),('zgkcamb5z86jvkh5jyw0qksvv1i4x04p','NTU4NmIwZTM0ZTczNjNiMDI3OTFiMTdiMTk5MjE4NjlkYTZmNTRmNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMGY2N2ZkNGMzZmFiOWZjYWIzYzMxZTYwYjdlNDNhNTA1NTIyYTU0In0=','2022-03-20 09:05:55.856000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likecount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,37,1,8),(2,36,0,8),(3,35,0,8),(4,34,0,8),(5,33,0,8),(6,32,0,8),(7,31,0,8),(8,58,0,12),(9,57,0,12),(10,56,0,12),(11,55,0,12),(12,54,0,12),(13,52,0,12),(14,53,0,12),(15,41,0,12),(16,51,0,12),(17,37,0,12),(18,34,0,12),(19,36,0,12),(20,42,0,12),(21,43,0,12),(22,26,0,12),(23,25,0,12),(24,24,0,12),(25,23,0,12),(26,22,0,12),(27,21,0,12),(28,20,0,12),(29,19,0,12),(30,18,0,12),(31,17,0,12),(32,16,0,12),(33,15,0,12),(34,14,0,12),(35,13,0,12),(36,12,0,12),(37,11,0,12),(38,10,0,12),(39,9,0,12),(40,8,0,12),(41,7,0,12),(42,6,0,12),(43,5,0,12),(44,4,0,12),(45,3,0,12),(46,59,0,12),(47,60,0,12),(48,61,0,12),(49,62,0,12),(50,63,1,12),(51,64,0,12),(52,65,0,12),(53,66,0,12),(54,67,0,12),(55,68,0,12),(56,69,0,12),(57,71,0,12),(58,70,0,12),(59,72,0,12),(60,73,0,12),(61,74,0,12),(62,75,0,12),(63,78,0,12),(64,77,0,12),(65,76,0,12),(66,79,0,12),(67,38,0,8);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likerecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (37,63,'2022-03-01 14:29:37.298000',12,1);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVRgoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwITGVzc1RoYW6Uk5QpgZR9lCiMA2xoc5RoXSmBlH2UKGhgaBVoN4wPcmVhZF9zdGF0aXN0aWNzlGg9jARkYXRllIeUUpSGlH2UhpRoZmiFaGdoFWhoaIWMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWKMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+YDCJSFlFKUjBRiaWxhdGVyYWxfdHJhbnNmb3Jtc5RdlGiJiXViaHqMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKGh/aIBoimiNQwQH5gMBlIWUUpRokV2UaImJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloiYl1YowLd2hlcmVfY2xhc3OUaHWMCGdyb3VwX2J5lGheaGmGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhrhpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdogmg9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoiYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZR9lChoKkslaGuMCeWPu+WPu+eMqpRosksMdWGMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGuGlIwPX2RqYW5nb192ZXJzaW9ulIwDMi4wlHViLg==','2022-03-08 13:47:54.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2022-02-17',4,36,8),(2,'2022-02-18',1,35,8),(3,'2022-02-18',1,36,8),(4,'2022-02-19',1,36,8),(5,'2022-02-21',2,36,8),(6,'2022-02-21',1,35,8),(7,'2022-02-22',3,36,8),(8,'2022-02-22',1,37,8),(9,'2022-02-23',2,37,8),(10,'2022-02-24',1,37,8),(11,'2022-02-24',1,36,8),(12,'2022-02-24',1,34,8),(13,'2022-02-24',1,33,8),(14,'2022-02-24',1,35,8),(15,'2022-02-24',1,32,8),(16,'2022-02-25',1,37,8),(17,'2022-02-26',2,37,8),(18,'2022-02-26',1,32,8),(19,'2022-02-26',1,31,8),(20,'2022-02-26',1,35,8),(21,'2022-02-28',2,37,8),(22,'2022-03-01',4,37,8),(23,'2022-03-02',2,37,8),(24,'2022-03-03',1,37,8),(25,'2022-03-04',2,37,8),(26,'2022-03-06',2,37,8),(27,'2022-03-07',1,37,8);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,22,36,8),(2,2,33,8),(3,4,32,8),(4,3,31,8),(5,1,30,8),(6,1,4,8),(7,4,35,8),(8,2,34,8),(9,21,37,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'多撒多',2),(2,'咸鱼不粘锅',1),(3,'多撒多',3);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-10 22:36:16
