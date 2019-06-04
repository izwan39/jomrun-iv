CREATE DATABASE  IF NOT EXISTS `jomrun_iv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jomrun_iv`;
-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: jomrun_iv
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,'2019-06-03 20:04:04','2019-06-03 20:04:04'),(1,4,'2019-06-03 20:04:06','2019-06-03 20:04:06'),(2,3,'2019-06-03 20:04:35','2019-06-03 20:04:35'),(2,13,'2019-06-03 20:04:42','2019-06-03 20:04:42'),(2,1,'2019-06-03 20:25:05','2019-06-03 20:25:05'),(2,2,'2019-06-03 21:01:42','2019-06-03 21:01:42');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_06_03_042112_create_movies_table',1),(4,'2019_06_03_042221_create_favorites_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Avatar','18 Dec 2009','https://images-na.ssl-images-amazon.com/images/I/61OUGpUfAyL._SY879_.jpg',NULL,NULL),(2,'I Am Legend','14 Dec 2007','https://images-na.ssl-images-amazon.com/images/I/51rEXKCgVOL.jpg',NULL,NULL),(3,'300','09 Mar 2007','https://images-na.ssl-images-amazon.com/images/I/51MtJBws9ZL.jpg',NULL,NULL),(4,'The Avengers','04 May 2012','https://images-na.ssl-images-amazon.com/images/I/719SFBdxRtL._SL1000_.jpg',NULL,NULL),(5,'The Wolf of Wall Street','25 Dec 2013','https://images-na.ssl-images-amazon.com/images/I/51MAuTMt%2BgL.jpg',NULL,NULL),(6,'Interstellar','07 Nov 2014','https://images-na.ssl-images-amazon.com/images/I/716P1xCmnPL._SL1020_.jpg',NULL,NULL),(7,'Game of Thrones','17 Apr 2011','https://img.moviepostershop.com/game-of-thrones-tv-movie-poster-2011-1020697745.jpg',NULL,NULL),(8,'Vikings','03 Mar 2013','https://images-na.ssl-images-amazon.com/images/I/51VP7qnSjWL.jpg',NULL,NULL),(9,'Gotham','01 Aug 2014','https://i.ebayimg.com/images/g/BgQAAOSwYYpZeihG/s-l1600.jpg',NULL,NULL),(10,'Narcos','28 Aug 2015','https://i.pinimg.com/originals/a6/ba/7d/a6ba7d893b959986bff224c5163c145a.jpg',NULL,NULL),(11,'Breaking Bad','20 Jan 2008','https://images-na.ssl-images-amazon.com/images/I/51fWOBx3agL.jpg',NULL,NULL),(12,'Doctor Strange','04 Nov 2016','https://images-na.ssl-images-amazon.com/images/I/61yHlaxjkgL.jpg',NULL,NULL),(13,'Rogue One: A Star Wars Story','16 Dec 2016','https://images-na.ssl-images-amazon.com/images/I/91cHWS%2BXaoL._SL1500_.jpg',NULL,NULL),(14,'Assassin\'s Creed','21 Dec 2016','https://m.media-amazon.com/images/M/MV5BNzE1OTczNTc1OF5BMl5BanBnXkFtZTgwMzgyMDI3MDI@._V1_.jpg',NULL,NULL),(15,'Luke Cage','30 Sep 2016','https://images-na.ssl-images-amazon.com/images/I/71xby-zAr7L._SL1024_.jpg',NULL,NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'first test','first.test@yahoo.com',NULL,'$2y$10$AzL5uXtMQqlrCDDoGbYFlO60BHVvhhl5uDimcNFsDoXTR5DzIwPTS',NULL,'2019-06-02 23:56:18','2019-06-02 23:56:18'),(2,'second test','second.test@yahoo.com',NULL,'$2y$10$cIXVXloZtSWlYXxLbwBNTekBnKoQp44Ph2oQq9E8w5tJ2bUzS0kdi',NULL,'2019-06-03 20:04:29','2019-06-03 20:04:29');
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

-- Dump completed on 2019-06-04 13:29:06
