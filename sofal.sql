-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: sofal
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'دسته اول','2017-11-23 20:30:00','2017-11-23 20:30:00'),(2,'دسته دوم','2017-11-26 20:30:00','2017-11-26 20:30:00'),(3,'دسته سوم','2017-11-26 20:30:00','2017-11-26 20:30:00'),(4,'دسته چهارم','2017-11-26 20:30:00','2017-11-26 20:30:00'),(5,'دسته پنجم','2017-11-27 18:20:01','2017-11-27 18:20:01'),(6,'دسته ششم','2017-11-27 18:20:01','2017-11-27 18:20:01');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relatedEntity_id` int(11) NOT NULL,
  `relatedEntity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'img/category/1.jpg',1,'App\\Category','2017-11-23 20:30:00','2017-11-23 20:30:00'),(2,'img/category/2.jpg',2,'App\\Category',NULL,NULL),(3,'img/category/3.jpg',3,'App\\Category',NULL,NULL),(4,'img/category/4.jpg',4,'App\\Category',NULL,NULL),(5,'img/category/5.jpg',5,'App\\Category',NULL,NULL),(6,'img/category/6.jpg',6,'App\\Category',NULL,NULL),(7,'img/product/1.jpg',1,'App\\Product',NULL,NULL),(8,'img/product/2.jpg',1,'App\\Product',NULL,NULL),(9,'img/product/3.jpg',1,'App\\Product',NULL,NULL),(10,'img/product/4.jpg',1,'App\\Product',NULL,NULL),(11,'img/product/ZWO8F9N0MnjekN99HzWFBFXJ8VHHox2p5ptjKlZC.png',7,'App\\Product','2017-12-04 17:12:26','2017-12-04 17:12:26'),(12,'img/product/aXfBFxZf8W04LtpOt4EkFOTwqXbAOZYKBA2bmuRt.png',8,'App\\Product','2017-12-04 17:13:19','2017-12-04 17:13:19'),(13,'img/product/UJW1kTR6j8DQaGaNLoQ9toCcVc4okU85cb2JP8In.png',9,'App\\Product','2017-12-04 17:13:27','2017-12-04 17:13:27'),(14,'img/product/WJn9DDMXNgEwWA1phwfj72w1hOvl4jF65mUF2NJr.jpeg',10,'App\\Product','2017-12-04 17:17:56','2017-12-04 17:17:56'),(15,'img/product/YbQYuvo7XfUNBcf5eLYvI7vfOgPTV2Yd4Vk3sGsg.jpeg',11,'App\\Product','2017-12-04 17:20:04','2017-12-04 17:20:04'),(16,'img/product/5.jpg',2,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(17,'img/product/6.jpg',2,'App\\Product','2018-02-19 14:14:56','2018-02-19 14:14:58'),(18,'img/product/7.jpg',13,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(19,'img/product/9.jpg',14,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(20,'img/product/8.jpg',14,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(21,'img/product/10.jpg',14,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(22,'img/product/3.jpg',15,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(23,'img/product/12.jpg',15,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(24,'img/product/1.jpg',15,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(25,'img/product/2.jpg',15,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(26,'img/product/13.jpg',16,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(27,'img/product/14.jpg',16,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(28,'img/product/15.jpg',16,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(29,'img/product/11.jpg',16,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(30,'img/product/3.jpg',17,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(31,'img/product/4.jpg',17,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(32,'img/product/5.jpg',17,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(33,'img/product/15.jpg',18,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(34,'img/product/6.jpg',18,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(35,'img/product/16.jpg',19,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(36,'img/product/17.jpg',19,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(37,'img/product/2.jpg',19,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(38,'img/product/18.jpg',19,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(39,'img/product/19.jpg',20,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(40,'img/product/20.jpg',20,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(41,'img/product/21.jpg',21,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(42,'img/product/4.jpg',21,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(43,'img/product/1.jpg',21,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(44,'img/product/20.jpg',22,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(45,'img/product/2.jpg',22,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(46,'img/product/5.jpg',22,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(47,'img/product/19.jpg',23,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(48,'img/product/6.jpg',23,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(49,'img/product/14.jpg',24,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(50,'img/product/19.jpg',24,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(51,'img/product/15.jpg',25,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21'),(52,'img/product/17.jpg',25,'App\\Product','2018-02-19 14:14:17','2018-02-19 14:14:21');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_11_23_130445_create_categories_table',1),(4,'2017_11_23_130456_create_images_table',1),(8,'2017_11_26_210632_create_products_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `washable` int(11) NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `colors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'سفال اول','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-123','15*48','دسته اول',1,'سرامیک',15000,'blue,red','4.3','1','2018-02-19 14:15:49','2018-02-19 14:15:51'),(2,'سفال دوم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-12','15*12','دسته اول',1,'سرامیک',15000,'blue,red','4.3','1','2018-02-19 14:15:53','2018-02-19 14:15:56'),(13,'سفال سوم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-45','4*13','دسته اول',1,'سرامیک',15000,'blue,red','4.3','1','2018-02-19 14:15:53','2018-02-19 14:15:56'),(14,'سفال چهارم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-91','4*13','دسته دوم',0,'سرامیک',15000,'blue,red','4.3','2','2018-02-19 14:15:53','2018-02-19 14:15:56'),(15,'سفال پنجم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-45','4*13','دسته دوم',0,'سرامیک',98000,'blue,red','4.3','2','2018-02-19 14:15:53','2018-02-19 14:15:56'),(16,'سفال ششم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-145','4*13','دسته سوم',1,'سرامیک',98000,'blue,red','4.3','3','2018-02-19 14:15:53','2018-02-19 14:15:56'),(17,'سفال هفتم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-105','4*13','دسته سوم',1,'سرامیک',98000,'blue,red','4.3','3','2018-02-19 14:15:53','2018-02-19 14:15:56'),(18,'سفال هشتم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-203','4*13','دسته چهارم',1,'سرامیک',918000,'blue,red','4.3','4','2018-02-19 14:15:53','2018-02-19 14:15:56'),(19,'سفال نهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-205','41*91','دسته چهارم',1,'سرامیک',123400,'blue,red','4.3','4','2018-02-19 14:15:53','2018-02-19 14:15:56'),(20,'سفال دهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-208','41*91','دسته چهارم',0,'سرامیک',123400,'blue,red','4.3','4','2018-02-19 14:15:53','2018-02-19 14:15:56'),(21,'سفال یازدهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-212','41*145','دسته پنجم',0,'سرامیک',123400,'blue,red','4.3','5','2018-02-19 14:15:53','2018-02-19 14:15:56'),(22,'سفال دوازدهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-215','41*145','دسته پنجم',0,'سرامیک',123400,'blue,red','4.3','5','2018-02-19 14:15:53','2018-02-19 14:15:56'),(23,'سفال سیزدهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-214','41*145','دسته پنجم',0,'سرامیک',123400,'blue,red,green','4.3','5','2018-02-19 14:15:53','2018-02-19 14:15:56'),(24,'سفال چهاردهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-256','41*145','دسته ششم',0,'سرامیک',614400,'orange,gray','4.3','6','2018-02-19 14:15:53','2018-02-19 14:15:56'),(25,'سفال پانزدهم','لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد.','DKC-271','41*145','دسته ششم',0,'سرامیک',614400,'orange,blue','4.3','6','2018-02-19 14:15:53','2018-02-19 14:15:56');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('regular','admin','editor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'admin','admin@admin.com','$2y$10$NNN3hP8YmNxEvZOzgSmACOqS34wtXh5kBuuxXtg8yuNJC2bHMrLB.','admin','fIj2cwnVWV6lvgTegtrWtyBTOSl6lOIQR5REVZ9hGhSPAtlGkrAuW0KW7zwm','2017-12-04 14:09:02','2017-12-04 14:09:02'),(6,'user','user@user.com','$2y$10$NNN3hP8YmNxEvZOzgSmACOqS34wtXh5kBuuxXtg8yuNJC2bHMrLB.','regular','ae9Dj7lLbULQlgfgWII5P4LD0OCeXylO0RankKY0tClcYdgyhB21rYYZ0bZ5','2017-12-04 14:09:23','2017-12-04 14:09:23');
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

-- Dump completed on 2018-02-19 21:51:55
