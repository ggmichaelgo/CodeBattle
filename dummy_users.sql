-- MySQL dump 10.13  Distrib 5.5.29, for osx10.6 (i386)
--
-- Host: localhost    Database: CodeBattle
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (115,'admin@gmail.com','$2a$10$9ES6oRQByyY1iDZXpd.IPur0z5TVo1fhUYh.PGsA/xG95pXpeTaou',NULL,NULL,NULL,1,'2013-03-22 03:33:34','2013-03-22 03:33:34','127.0.0.1','127.0.0.1','admin'),(116,'foo@gmail.com','$2a$10$90e/t24Tv2KUmpyoTtNhIuutiR.62il..WCQYdMXtPb0OpR6j0v2.',NULL,NULL,NULL,1,'2013-03-22 03:33:52','2013-03-22 03:33:52','127.0.0.1','127.0.0.1','foo'),(117,'lol@gmail.com','$2a$10$gwjlXQF3vvjIYW0tEW6FbO9tEVoP6MIcb6a4Dq/efoO0L.ZBnkLse',NULL,NULL,NULL,1,'2013-03-22 03:34:08','2013-03-22 03:34:08','127.0.0.1','127.0.0.1','lol'),(118,'guest@gmail.com','$2a$10$r6wTibtha426q8l1pNw0RetMLbLal5evhnVDT03/6yO7A1c7GL9..',NULL,NULL,NULL,1,'2013-03-22 03:38:19','2013-03-22 03:38:19','127.0.0.1','127.0.0.1','guest');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_infos`
--

DROP TABLE IF EXISTS `user_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `points` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `coder_id` int(11) DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctf_id` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_infos`
--

LOCK TABLES `user_infos` WRITE;
/*!40000 ALTER TABLE `user_infos` DISABLE KEYS */;
INSERT INTO `user_infos` VALUES (131,0,115,NULL,'admin',NULL,NULL),(132,0,116,NULL,'foo',NULL,NULL),(133,0,117,NULL,'lol',NULL,NULL),(134,0,118,NULL,'guest',NULL,NULL);
/*!40000 ALTER TABLE `user_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solved_questions`
--

DROP TABLE IF EXISTS `solved_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solved_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_index` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `started_time` datetime DEFAULT NULL,
  `solved_time` datetime DEFAULT NULL,
  `user_info_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solved_questions`
--

LOCK TABLES `solved_questions` WRITE;
/*!40000 ALTER TABLE `solved_questions` DISABLE KEYS */;
INSERT INTO `solved_questions` VALUES (1,'BootCamp',1,'','2013-03-15 14:17:17',NULL,34),(2,'BootCamp',0,' \r\n// <- This is a comment\r\npublic class Program\r\n{\r\n    // This is the main function of the program\r\n	public static void main(String[] args)\r\n	{\r\n		//This is how to print a message\r\n		System.out.println(\"1225\");\r\n	}\r\n}','2013-03-15 14:22:42','2013-03-15 14:23:11',23),(3,'BootCamp',1,'import java.util.Scanner;\r\n\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);\r\n	}\r\n}\r\n','2013-03-15 14:23:27','2013-03-15 14:23:42',23),(4,'BootCamp',2,'','2013-03-15 14:23:54',NULL,23),(5,'Bank',0,'','2013-03-15 14:24:29',NULL,23),(6,'Bank',1,'','2013-03-15 14:24:34',NULL,23),(7,'Bank',0,'','2013-03-15 14:27:15',NULL,95),(8,'Bank',1,'import java.util.Scanner;\r\n\r\npublic class Decrypter\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		for(int y=0 ; y<6 ; y++)\r\n        {\r\n            String line = input.nextLine();\r\n            for(int x=0 ; x<y+1 ; x++)\r\n                System.out.print(line.charAt(x));\r\n        }\r\n		System.out.println();\r\n	}\r\n}\r\n  ','2013-03-15 14:27:17','2013-03-15 14:28:41',95),(9,'BootCamp',1,'','2013-03-15 14:27:28',NULL,95),(10,'Bank',2,'','2013-03-15 14:28:58',NULL,95),(11,'BootCamp',0,' \r\n// <- This is a comment\r\npublic class Program\r\n{\r\n    // This is the main function of the program\r\n	public static void main()\r\n	{\r\n		//This is how to print a message\r\n		// Put your message in \"  \"\r\n		System.out.println(\"I love CodeBattle!\");\r\n	}\r\n}','2013-03-15 16:45:07',NULL,95),(12,'BootCamp',2,'','2013-03-15 19:01:04',NULL,95),(13,'BootCamp',0,'\r\npublic class Program\r\n{\r\n	public static void main(String[] args)\r\n	{\r\n        long number = 9223372036854775808L;\r\n		System.out.println(number);\r\n	}\r\n}','2013-03-18 16:23:40',NULL,19),(14,'BootCamp',1,' import java.util.Scanner;\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);\r\n	}\r\n}\r\n     ','2013-03-18 16:30:17','2013-03-19 17:08:53',19),(15,'BootCamp',2,'public class Foo\r\n{\r\n    public static void main(String[] args)\r\n    {\r\n        System.out.println(\"pass\");\r\n    }\r\n}','2013-03-18 16:30:47','2013-03-19 17:11:55',19),(16,'BootCamp',3,' \r\nimport java.util.Scanner;\r\n\r\npublic class Calculator\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		// This will take inputs\r\n		Scanner input = new Scanner(System.in);\r\n		// variable a and b will store integers, numbers with no decimal\r\n		int a,b,c;\r\n		a = input.nextInt();\r\n		b = input.nextInt();\r\n        c = input.nextInt();\r\n		System.out.println(a+b+c);\r\n	}\r\n}\r\n','2013-03-18 16:38:15','2013-03-19 17:12:19',19),(17,'Bank',0,'','2013-03-18 17:13:10',NULL,19),(18,'BootCamp',9,'','2013-03-19 16:29:27',NULL,19),(19,'BootCamp',10,'','2013-03-19 16:38:00',NULL,19),(20,'BootCamp',4,'import java.util.Scanner;\r\n\r\npublic class BigSmall\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int a,b,c;\r\n		a = input.nextInt();\r\n		b = input.nextInt();\r\n		// if \"a\" is smaller than \"b\" \r\n		// swap \"a\" and \"b\"\r\n		if( a > b )\r\n		{\r\n			c = a;\r\n			a = b;\r\n			b = c;\r\n		}\r\n		System.out.println(a);\r\n		System.out.println(b);\r\n	}\r\n}\r\n','2013-03-19 16:38:06','2013-03-19 17:13:21',19),(21,'BootCamp',5,'import java.util.Scanner;\r\n\r\npublic class BruteForce\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int i=0;\r\n		// for( start ; range ; increment )\r\n		for(i=0 ; i<10000 ; i++)\r\n		{\r\n			System.out.println(i);\r\n		}\r\n	}\r\n}\r\n  ','2013-03-19 16:38:09','2013-03-19 17:13:48',19),(22,'BootCamp',6,' import java.util.Scanner;\r\n\r\npublic class Square\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		// I wrote this for you :)\r\n		Scanner input = new Scanner(System.in); \r\n		int height = input.nextInt();\r\n		for(int y=1 ; y<=height ; y++)\r\n		{\r\n			for(int x=0 ; x<y ; x++)\r\n			{\r\n				//it is not println			\r\n				System.out.print(\"*\");\r\n			}\r\n			System.out.println();\r\n		}\r\n	}\r\n} ','2013-03-19 16:38:11','2013-03-19 16:55:12',19),(23,'BootCamp',7,'','2013-03-19 16:38:13',NULL,19),(24,'BootCamp',8,'','2013-03-19 16:38:15',NULL,19),(25,'BootCamp',55,'','2013-03-19 16:46:30',NULL,19),(26,'BootCamp',56,'','2013-03-19 16:46:33',NULL,19),(27,'BootCamp',57,'','2013-03-19 16:46:35',NULL,19),(28,'BootCamp',58,'','2013-03-19 16:46:40',NULL,19),(29,'BootCamp',53,'','2013-03-19 16:48:48',NULL,19),(30,'BootCamp',54,'','2013-03-19 16:49:10',NULL,19),(31,'BootCamp',59,'','2013-03-19 16:49:43',NULL,19),(32,'BootCamp',2,'','2013-03-21 15:35:04',NULL,54),(33,'BootCamp',1,'','2013-03-21 15:35:06',NULL,54),(34,'BootCamp',0,'\r\npublic class Program\r\n{    \r\n	public static void main(String[] args)\r\n	{\r\n        int h = 10;\r\n		for(int y=1 ; y<=h ; y++)\r\n        {\r\n            for(int x=0 ; x<h-y ; x++)\r\n            {\r\n                System.out.print(\" \");\r\n            }\r\n            for(int x=0 ; x < y ; x++)\r\n            {\r\n                System.out.print(\'*\');\r\n            }\r\n            System.out.println();\r\n        }		\r\n	}\r\n} ','2013-03-21 18:51:57','2013-03-21 18:52:08',100),(35,'BootCamp',1,' import java.util.Scanner;\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);\r\n	}\r\n}\r\n','2013-03-21 18:52:13','2013-03-21 18:52:57',100),(36,'BootCamp',2,'','2013-03-21 18:53:03',NULL,100),(37,'BootCamp',10,'import java.util.Scanner;\r\n\r\npublic class Program\r\n{    \r\n    public static void main(String[] args)\r\n	{\r\n        Scanner input = new Scanner(System.in);\r\n        int h = input.nextInt();\r\n		for(int y=1 ; y<=h ; y++)\r\n        {\r\n            for(int x=0 ; x<h-y ; x++)\r\n            {\r\n                System.out.print(\" \");\r\n            }\r\n            for(int x=0 ; x < y ; x++)\r\n            {\r\n                System.out.print(\'*\');\r\n            }\r\n            System.out.println();\r\n        }		\r\n	}\r\n}   ','2013-03-21 22:54:34','2013-03-21 22:55:08',100),(38,'BootCamp',5,'import java.util.Scanner;\r\n\r\npublic class BruteForce\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int i=0;\r\n		// for( start ; range ; increment )\r\n		for(i=0 ; i<10000 ; i++)\r\n		{\r\n			//The value of \"i\" will be 0~99\r\n			//check the output \r\n			System.out.println(i);\r\n		}\r\n	}\r\n}\r\n ','2013-03-21 23:02:23','2013-03-22 02:06:22',100),(39,'BootCamp',7,'','2013-03-21 23:02:27',NULL,100),(40,'BootCamp',8,'import java.util.Scanner;\r\n\r\npublic class Program\r\n{    \r\n    public static void main(String[] args)\r\n    {\r\n        Scanner input = new Scanner(System.in);\r\n        int h = input.nextInt();\r\n		for(int y=h ; y>0 ; y--)\r\n        {\r\n            for(int x=0 ; x < y ; x++)\r\n            {\r\n                System.out.print(\'*\');\r\n            }\r\n            System.out.println();\r\n        }		\r\n	}\r\n}    ','2013-03-21 23:03:34',NULL,100),(41,'BootCamp',9,' import java.util.Scanner;\r\n\r\npublic class Program\r\n{    \r\n    public static void main(String[] args)\r\n    {\r\n        Scanner input = new Scanner(System.in);\r\n        int h = input.nextInt();\r\n    	for(int y=1 ; y<=h ; y++)\r\n        {\r\n            for(int x=0 ; x < h-y ; x++)\r\n            {\r\n                System.out.print(\' \');\r\n            }\r\n            if(y>0)\r\n            {\r\n                for(int x=0 ; x < y-1 ; x++)\r\n                {\r\n                    System.out.print(\"* \");\r\n                }\r\n                System.out.print(\"*\");\r\n            }\r\n            System.out.println();\r\n        }		\r\n	}\r\n}     ','2013-03-22 00:44:49',NULL,100),(42,'BootCamp',11,'','2013-03-22 01:04:43',NULL,100),(43,'BootCamp',3,'','2013-03-22 02:01:29',NULL,100),(44,'BootCamp',4,'','2013-03-22 02:04:00',NULL,100),(45,'BootCamp',12,'import java.util.Scanner;\r\n\r\npublic class BubbleSort\r\n{\r\n    public static void main(String[] args)\r\n    {\r\n    	Scanner input = new Scanner(System.in);\r\n		int[] list = new int[5];\r\n		for(int i=0 ; i<5 ; i++)\r\n		{\r\n			list[i] = input.nextInt();\r\n		}\r\n        \r\n        //compare current # with the next #\r\n        //the loops ends at 3 because list[4]\r\n        //do not have the next #\r\n		for(int i=0 ; i<4 ; i++)\r\n		{\r\n            for(int k=0 ; k<4 ; k++)\r\n            {\r\n    			if(list[k] < list[k+1])\r\n                {\r\n                    int temp = list[k];\r\n                    list[k] = list[k+1];\r\n                    list[k+1] = temp;\r\n                }                \r\n            }\r\n		}\r\n        \r\n        for(int i=0 ; i<5 ; i++)\r\n        	System.out.println(list[i]);\r\n	}\r\n}\r\n\r\n\r\n','2013-03-22 02:13:24','2013-03-22 02:19:17',100),(46,'Bank',0,'','2013-03-22 02:22:22',NULL,100),(47,'Bank',1,'','2013-03-22 02:22:25',NULL,100),(48,'Bank',2,'','2013-03-22 02:22:29',NULL,100);
/*!40000 ALTER TABLE `solved_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-25 23:28:35
