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
-- Table structure for table `battles`
--

DROP TABLE IF EXISTS `battles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `coders_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battles`
--

LOCK TABLES `battles` WRITE;
/*!40000 ALTER TABLE `battles` DISABLE KEYS */;
/*!40000 ALTER TABLE `battles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coders`
--

DROP TABLE IF EXISTS `coders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `battle_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coders`
--

LOCK TABLES `coders` WRITE;
/*!40000 ALTER TABLE `coders` DISABLE KEYS */;
INSERT INTO `coders` VALUES (1,'not_ready',35,NULL,'2013-03-02 23:17:55','2013-03-02 23:17:55'),(2,'not_ready',35,NULL,'2013-03-02 23:20:11','2013-03-02 23:20:11'),(3,'not_ready',36,NULL,'2013-03-02 23:22:21','2013-03-02 23:22:21'),(4,'not_ready',36,NULL,'2013-03-02 23:24:45','2013-03-02 23:24:45'),(5,'not_ready',37,NULL,'2013-03-03 15:49:44','2013-03-03 15:49:44'),(6,'not_ready',38,NULL,'2013-03-03 15:49:46','2013-03-03 15:49:46'),(7,'not_ready',37,NULL,'2013-03-03 15:49:55','2013-03-03 15:49:55'),(8,'not_ready',39,NULL,'2013-03-03 16:00:11','2013-03-03 16:00:11'),(9,'finished',39,NULL,'2013-03-03 16:00:14','2013-03-03 16:01:38'),(10,'not_ready',40,NULL,'2013-03-03 22:14:14','2013-03-03 22:14:14'),(11,'finished',40,NULL,'2013-03-03 22:14:18','2013-03-03 22:14:41'),(12,'not_ready',41,NULL,'2013-03-03 22:20:38','2013-03-03 22:20:38'),(13,'finished',41,NULL,'2013-03-03 22:20:46','2013-03-03 22:21:00'),(14,'not_ready',42,NULL,'2013-03-03 22:24:26','2013-03-03 22:24:26'),(15,'finished',42,NULL,'2013-03-03 22:24:30','2013-03-03 22:24:39'),(16,'not_ready',43,NULL,'2013-03-03 22:52:58','2013-03-03 22:52:58'),(17,'finished',43,NULL,'2013-03-03 23:44:34','2013-03-03 23:44:51'),(18,'finished',44,NULL,'2013-03-04 00:50:14','2013-03-04 00:54:44'),(19,'not_ready',44,NULL,'2013-03-04 00:51:52','2013-03-04 00:51:52'),(20,'not_ready',45,NULL,'2013-03-06 22:52:37','2013-03-06 22:52:37'),(21,'finished',45,NULL,'2013-03-09 20:13:15','2013-03-09 20:31:35'),(22,'not_ready',46,NULL,'2013-03-09 20:32:01','2013-03-09 20:32:01'),(23,'not_ready',47,NULL,'2013-03-09 20:32:07','2013-03-09 20:32:07'),(24,'not_ready',46,NULL,'2013-03-09 20:32:29','2013-03-09 20:32:29'),(25,'finished',48,NULL,'2013-03-09 20:34:39','2013-03-09 20:38:15'),(26,'not_ready',48,NULL,'2013-03-09 20:34:58','2013-03-09 20:34:58'),(27,'not_ready',49,NULL,'2013-03-09 20:40:25','2013-03-09 20:40:25'),(28,'finished',49,NULL,'2013-03-09 20:40:30','2013-03-09 20:40:50'),(29,'not_ready',50,NULL,'2013-03-09 21:05:43','2013-03-09 21:05:43'),(30,'not_ready',50,NULL,'2013-03-09 21:05:46','2013-03-09 21:05:46'),(32,'not_ready',51,NULL,'2013-03-09 21:06:27','2013-03-09 21:06:27'),(33,'finished',52,NULL,'2013-03-09 21:08:14','2013-03-09 21:22:53'),(34,'not_ready',52,NULL,'2013-03-09 21:13:30','2013-03-09 21:13:30'),(35,'not_ready',53,NULL,'2013-03-09 21:29:47','2013-03-09 21:29:47'),(36,'finished',53,NULL,'2013-03-09 21:29:51','2013-03-09 21:30:11');
/*!40000 ALTER TABLE `coders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codes`
--

DROP TABLE IF EXISTS `codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `q_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coder_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codes`
--

LOCK TABLES `codes` WRITE;
/*!40000 ALTER TABLE `codes` DISABLE KEYS */;
INSERT INTO `codes` VALUES (1,'Java',NULL,'2013-03-02 22:51:25','2013-03-09 20:32:30','-1',24,''),(2,'Java',NULL,'2013-03-02 22:53:05','2013-03-09 20:40:46','-1',28,'\nimport java.util.Scanner;\n\nclass Calculator\n{\n    public static void main(String[] args)\n	{\n		// This will take inputs\n		Scanner input = new Scanner(System.in);\n		// variable a and b will store integers, numbers with no decimal\n		int a,b,c;\n		a = input.nextInt();\n		b = input.nextInt();\n        c = input.nextInt();\n		System.out.println(a+b+c);\n	}\n}\n'),(3,'Java',NULL,'2013-03-02 22:53:07','2013-03-09 21:05:56','-1',29,'\nimport java.util.Scanner;\n\nclass Calculator\n{\n    public static void main(String[] args)\n	{\n		// This will take inputs\n		Scanner input = new Scanner(System.in);\n		// variable a and b will store integers, numbers with no decimal\n		int a,b,c;\n		a = input.nextInt();\n		b = input.nextInt();\n        \n		System.out.println(a*b);\n	}\n}\n'),(4,'Java',NULL,'2013-03-02 22:53:11','2013-03-09 21:05:48','-1',30,''),(5,NULL,NULL,'2013-03-02 23:17:55','2013-03-02 23:17:55',NULL,1,NULL),(6,'Java',NULL,'2013-03-02 23:20:11','2013-03-02 23:20:12','0',2,NULL),(7,'Java',NULL,'2013-03-02 23:22:21','2013-03-02 23:22:22','0',3,NULL),(8,'Java',NULL,'2013-03-02 23:24:45','2013-03-02 23:24:46','0',4,NULL),(9,'Java',NULL,'2013-03-03 15:49:44','2013-03-03 15:55:54','-1',5,'\nimport java.util.Scanner;\n\nclass Calculator\n{\n    public static void main(String[] args)\n	{\n		// This will take inputs\n		Scanner input = new Scanner(System.in);\n		// variable a and b will store integers, numbers with no decimal\n		int a,b,c;\n		a = input.nextInt();\n		b = input.nextInt();\n        c = input.nextInt();\n		System.out.println(a+b+c);\n	}\n}\n'),(10,'Java',NULL,'2013-03-03 15:49:46','2013-03-03 15:49:46','0',6,NULL),(11,'Java',NULL,'2013-03-03 15:49:55','2013-03-03 15:52:37','-1',7,''),(12,'Java',NULL,'2013-03-03 16:00:11','2013-03-03 22:14:03','0',8,''),(13,'Java',NULL,'2013-03-03 16:00:14','2013-03-03 22:13:50','0',9,'import java.util.Scanner;\n\nclass BruteForce\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i<10000 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n'),(14,'Java',NULL,'2013-03-03 22:14:14','2013-03-03 22:15:03','-1',10,'import java.util.Scanner;\n\nclass Foo\n{\n    public static void main(String[] args)\n    {\n		Scanner input = new Scanner(System.in); \n		String foo = input.nextLine();\n		while(foo.indexOf(\"FOO\") > -1)\n		{\n			foo = foo.replace(\"FOO\", \"OOF\");\n		}\n		System.out.println(foo);\n	}\n}'),(15,'Java',NULL,'2013-03-03 22:14:18','2013-03-03 22:14:37','-1',11,'import java.util.Scanner;\n\nclass Foo\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in); \n		String foo = input.nextLine();\n		while(foo.indexOf(\"FOO\") > -1)\n		{\n			foo = foo.replace(\"FOO\", \"OOF\");\n		}\n		System.out.println(foo);\n	}\n}'),(16,'Java',NULL,'2013-03-03 22:20:38','2013-03-03 22:24:07','0',12,'import java.util.Scanner;\n\nclass BruteForce\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i<10000 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n'),(17,'Java',NULL,'2013-03-03 22:20:46','2013-03-03 22:20:56','-1',13,'import java.util.Scanner;\n\nclass BruteForce\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i<10000 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n'),(18,'Java',NULL,'2013-03-03 22:24:26','2013-03-03 22:24:31','-1',14,''),(19,'Java',NULL,'2013-03-03 22:24:30','2013-03-03 22:39:39','0',15,'import java.util.Scanner;\n\nclass BruteForce\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i<10000 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n'),(20,'Java',NULL,'2013-03-03 22:52:58','2013-03-03 23:50:06','0',16,''),(21,'Java',NULL,'2013-03-03 23:44:34','2013-03-04 00:04:12','0',17,'import java.util.Scanner;\n\nclass BruteForce\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i<10000 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n'),(22,'Java',NULL,'2013-03-04 00:50:14','2013-03-04 00:54:39','-1',18,'import java.util.Scanner;\n\nclass Foo\n{\n    public static void main(String[] args)\n    {\n    	Scanner input = new Scanner(System.in); \n		String foo = input.nextLine();\n		while(foo.indexOf(\"FOO\") > -1)\n		{\n			foo = foo.replace(\"FOO\", \"OOF\");\n		}\n		System.out.println(foo);\n	}\n}\n'),(23,'Java',NULL,'2013-03-04 00:51:52','2013-03-04 00:53:49','-1',19,''),(24,'Java',NULL,'2013-03-06 22:52:37','2013-03-09 20:30:16','-1',20,'\nThe Battle will start when the oppopnent joins.\n\nQuestion will appear as the battle starts.'),(25,'Java',NULL,'2013-03-09 20:13:15','2013-03-09 20:31:29','-1',21,'import java.util.Scanner;\n\nclass BigSmall\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int a,b,c;\n		a = input.nextInt();\n		b = input.nextInt();\n		//if \"a\" is bigger than \"b\", swap \"a\" and \"b\"\n		if( a > b )\n		{\n			c = a;\n			a = b;\n			b = c;\n		}\n		System.out.println(a);\n		System.out.println(b);\n	}\n}\n'),(26,'Java',NULL,'2013-03-09 20:32:01','2013-03-09 20:32:30','-1',22,''),(27,'Java',NULL,'2013-03-09 20:32:07','2013-03-09 20:32:08','0',23,''),(28,NULL,NULL,'2013-03-09 20:32:29','2013-03-09 20:32:29',NULL,24,NULL),(29,'Java',NULL,'2013-03-09 20:34:39','2013-03-09 20:38:12','-1',25,'import java.util.Scanner;\n\nclass Foo\n{\n    public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in); \n		String foo = input.nextLine();\n		while(foo.indexOf(\"FOO\") > -1)\n		{\n			foo = foo.replace(\"FOO\", \"OOF\");\n		}\n		System.out.println(foo);\n	}\n}'),(30,'Java',NULL,'2013-03-09 20:34:58','2013-03-09 20:38:18','0',26,'\nThe Battle will start when the oppopnent joins.\n\nQuestion will appear as the battle starts.\n'),(31,'Java',NULL,'2013-03-09 20:40:25','2013-03-09 20:40:31','-1',27,''),(32,NULL,NULL,'2013-03-09 20:40:30','2013-03-09 20:40:30',NULL,28,NULL),(33,NULL,NULL,'2013-03-09 21:05:43','2013-03-09 21:05:43',NULL,29,NULL),(34,NULL,NULL,'2013-03-09 21:05:46','2013-03-09 21:05:46',NULL,30,NULL),(35,NULL,NULL,'2013-03-09 21:06:22','2013-03-09 21:06:22',NULL,31,NULL),(36,'Java',NULL,'2013-03-09 21:06:27','2013-03-09 21:06:27','0',32,''),(37,'Java',NULL,'2013-03-09 21:08:14','2013-03-09 21:22:50','-1',33,'import java.util.Scanner;\nclass BruteForce\n{\n    public static void main(String[] args)\n    {\n        Scanner input = new Scanner(System.in);\n        for(int i = 0; i < 10; i++)\n        {\n            for(int j = 0; j < 10; j++)\n            {\n                for(int k = 0; k < 10; k++)\n                {\n                    for(int l = 0; l < 10; l++)\n                    {\n                        System.out.println(i + \"\" +j+\"\" + k +\"\"+ l);\n                        input.nextLine();\n                    }\n                }\n            }\n        }\n            \n    }\n}'),(38,'Java',NULL,'2013-03-09 21:13:30','2013-03-09 21:22:48','-1',34,'import java.util.Scanner;\nclass BruteForce\n{\n    public static void main(String[] args)\n    {\n        Scanner input = new Scanner(System.in);\n        String answer = \"\";\n        for(int i = 0; i < 10; i++)\n        {\n            for(int j = 0; j < 10; j++)\n            {\n                for(int k = 0; k < 10; k++)\n                {\n                    for(int l = 0; l < 10; l++)\n                    {\n                        answer += i;\n                        answer += j;\n                        answer += k;\n                        answer += l;\n                        System.out.println(answer);\n                        input.nextLine();\n                    }\n                    answer = \"\";\n\n                }\n            }\n        }\n            \n    }'),(39,'Java',NULL,'2013-03-09 21:29:47','2013-03-09 21:29:53','-1',35,''),(40,'Java',NULL,'2013-03-09 21:29:51','2013-03-09 21:30:04','-1',36,'import java.util.Scanner;\n\nclass Square\n{\n    public static void main(String[] args)\n	{\n		// I wrote this for you :)\n		Scanner input = new Scanner(System.in); \n		int width = input.nextInt();\n		int height = width;\n		for(int y=0 ; y<height ; y++)\n		{\n			for(int x=0 ; x<width ; x++)\n			{\n				//it is not println			\n				System.out.print(\"*\");\n			}\n			System.out.println();\n		}\n	}\n}');
/*!40000 ALTER TABLE `codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctfs`
--

DROP TABLE IF EXISTS `ctfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctfs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capturer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `questions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctfs`
--

LOCK TABLES `ctfs` WRITE;
/*!40000 ALTER TABLE `ctfs` DISABLE KEYS */;
INSERT INTO `ctfs` VALUES (3,NULL,NULL,'2013-03-04 05:28:43','2013-03-04 05:29:34','---\n- 2\n- 3\n- 4\n- 5\n- 6\n');
/*!40000 ALTER TABLE `ctfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `io_questions`
--

DROP TABLE IF EXISTS `io_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `io_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `point` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_index` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `inputs` text COLLATE utf8_unicode_ci,
  `outputs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `io_questions`
--

LOCK TABLES `io_questions` WRITE;
/*!40000 ALTER TABLE `io_questions` DISABLE KEYS */;
INSERT INTO `io_questions` VALUES (1,'no name',NULL,'<style>\np{ text-align: left; padding-left: 15px; font-size: 15px; }\n</style>\n<h2 style=\"\">Welcome To CodeBattle</h2>\n<p>This is how you Code!</p>\n<div id=\"question_code\" style=\"height: 200px\">\n// &lt;- This is a comment\nclass Program\n{\n	// This is the main function of the program\n	public static void main(String[] args)\n	{\n		//This is how to print a message\n		System.out.println(\"I love CodeBattle!\");\n	}\n}</div>\n<p>\n<b>Copy and Paste</b> the code, and click run and see what happens!\n</p>\n<p> To open the next level, print the secret code, <b>1225</b></p>',1,'BootCamp',0,'2013-02-11 17:25:58','2013-02-24 22:29:07','---\n- ! \'\n\n\'\n','---\n- \'1225\'\n'),(2,'no name',NULL,'<style>\np{ text-align: left; padding-left: 20px; font-size: 15px; }\n</style>\n<h2 style=\"\">How to store \"things\"</h2>\n<p>This is how you take inputs, and store things</p>\n<div id=\"question_code\" style=\"height: 290px;\">\nimport java.util.Scanner;\n\nclass Calculator\n{\n	public static void main(String[] args)\n	{\n		// This will take inputs\n		Scanner input = new Scanner(System.in);\n		// variable a and b will store integers, numbers with no decimal\n		int a,b;\n		a = input.nextInt();\n		b = input.nextInt();\n		System.out.println(a*b);\n	}\n}\n</div>\n<p>\n<b>Copy and Paste</b> the code, and click run and see what happens!\n</p>\n<p>Make a program that will take <b>3 integers </b>, and print out the <b>sum</b> of total numbers</p>',1,'BootCamp',2,'2013-02-20 16:38:38','2013-02-24 22:33:05','---\n- ! \'1\n\n  1\n\n  1\n\n\'\n- ! \'-10\n\n  -10\n\n  -10\n\n\'\n','---\n- \'3\n\n\'\n- \'-30\n\n\'\n'),(3,'no name',NULL,'<h2>What if....</h2>\n<p style=\"text-align: left;\">\n</p><table border=\"1\" style=\"padding-left: 10px; color: white\">\n	<tbody><tr>\n		<td> &lt; </td><td> less than </td>\n		<td> &gt; </td><td> bigger than</td>\n	</tr>\n	<tr> \n		<td>&lt;=</td><td>less or equal to</td>\n		<td>&gt;=</td><td>bigger or equal to</td>\n	</tr>\n	<tr>\n		<td>==</td><td>equal to</td>\n		<td>!=</td><td>does not equal to</td>\n	</tr>\n	<tr>\n		<td> &amp;&amp; </td><td>AND</td>\n		<td> || </td><td>OR</td>\n	</tr>\n</tbody></table>\n<p></p>\n<div id=\"question_code\" style=\"height: 237px;\">import java.util.Scanner;\n\nclass BigSmall\n{\n	public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int a,b,c;\n		a = input.nextInt();\n		b = input.nextInt();\n		//if \"a\" is smaller than \"b\", swap \"a\" and \"b\"\n		if( a &lt; b )\n		{\n			c = a;\n			a = b;\n			b = c;\n		}\n		System.out.println(a);\n		System.out.println(b);\n	}\n}\n</div>\n<p style=\"font-size: 17px\">Make a program that will take <b>two numbers</b> and print the numbers in <b>increasing</b> order</p>',1,'BootCamp',3,'2013-02-21 17:56:36','2013-03-09 21:44:32','---\n- ! \'99\n\n  9\n\n\'\n- ! \'-10\n\n  -200\n\n\'\n','---\n- ! \'9\n\n  99\n\n\'\n- ! \'-200\n\n  -10\n\n\'\n'),(6,'no name',NULL,'<h2>Group of Variables: Array</h2>\n<p style=\"text-align: left; padding-left: 10px\">\n	Array is a group of variables.<br>\n<br>\n</p>\n<div id=\"question_code\" style=\"height: 300px;\">import java.util.Scanner;\n\nclass BiggestNumber\n{\n	public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		// variable_type[] = new variable_type[SIZE]\n		int[] numbers = new int[5];\n		for(int i=0 ; i&lt;5 ; i++)\n		{\n			//store 5 numbers\n			numbers[i] = input.nextInt();\n		}\n		//Print the numbers in reverse order\n		//4 - 3 - 2 - 1 - 0\n		for(int i=4 ; i&gt;0 ; i--)\n		{\n			System.out.println( numbers[i] );\n		}\n	}\n}\n</div>\n<b style=\"padding-left: 10px; font-size:16px\">\nMake a program that will take 10 integers,<br> and print the biggest number\n</b>\n<p></p>',1,'BootCamp',5,'2013-02-21 20:07:17','2013-03-09 22:03:35','---\n- ! \'1\n\n  1\n\n  1\n\n  1\n\n  1\n\n  2\n\n  2\n\n  2\n\n  2\n\n  2\n\n\'\n- ! \'1\n\n  2\n\n  3\n\n  4\n\n  5\n\n  6\n\n  7\n\n  8\n\n  9\n\n  10\n\n\'\n','---\n- \'2\n\n\'\n- \'10\n\n\'\n'),(8,'no name',NULL,'<style>\np{ text-align: left; padding-left: 15px; font-size: 15px; }\n</style>\n<h2 style=\"\">Double Loops and Shapes!</h2>\n<p>Learn how to draw shapes with Loops</p>\n<div id=\"question_code\" style=\"height: 360px\">import java.util.Scanner;\n\nclass Square\n{\n	public static void main(String[] args)\n	{\n		// I wrote this for you :)\n		Scanner input = new Scanner(System.in); \n		int width = 3;\n		int height = width;\n		for(int y=0 ; y&lt;height ; y++)\n		{\n			for(int x=0 ; x&lt;width ; x++)\n			{\n				//it is not println			\n				System.out.print(\"*\");\n			}\n			System.out.println();\n		}\n	}\n}</div>\n<b>Make a program that will take a number,<br> and draw a square with the width and height of the number</b>',1,'BootCamp',8,'2013-02-24 22:51:31','2013-03-10 00:52:57','---\n- \'5\n\n\'\n- \'3\n\n\'\n- \'10\n\n\'\n','---\n- ! \'*****\n\n  *****\n\n  *****\n\n  *****\n\n  *****\n\n\'\n- ! \'***\n\n  ***\n\n  ***\n\n\'\n- ! \'**********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n  **********\n\n\'\n'),(10,'no name',NULL,'<style>\np{ text-align: left; padding-left: 15px; font-size: 15px; }\n</style>\n<h2 style=\"\">String</h2>\n<p>String is a text/array of characters</p>\n<div id=\"question_code\" style=\"height: 360px\">import java.util.Scanner;\n\nclass Foo\n{\n	public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in); \n		String foo = input.nextLine();\n		System.out.println(\"Original: \" + foo);\n		System.out.println(\"Length: \" + foo.length() );\n		System.out.println(\"1st FOO: \" + foo.indexOf(\"FOO\"));\n		if(foo.indexOf(\"FOO\") &gt; -1)\n		{\n			foo = foo.replace(\"FOO\", \"OOF\");\n		}\n		System.out.println(foo);\n	}\n}</div>\n<b>Make a program that will take a String, <br>and replace ALL the FOO to OOF</b>',1,'BootCamp',7,'2013-02-24 23:55:41','2013-03-10 00:55:36','---\n- ! \'FOOOOOOO\n\n\'\n- ! \'FOOOOOODFOOOOODFOOOODXPOOOFOFOOYZ\n\n\'\n','---\n- ! \'OOOOOOFO\n\n\'\n- ! \'OOOOOOFDOOOOFODOOOOFDXPOOOOOFOFYZ\n\n\'\n'),(11,'no name',NULL,'<h2>Bubble Sort</h2>\n<p style=\"text-align: left; padding-left: 10px; color: black;\">\n<a href=\"http://en.wikipedia.org/wiki/File:Bubble-sort-example-300px.gif\" style=\"color:black\">Cool Bubble Sort GIF #1</a>\n<br>\n<a href=\"http://en.wikipedia.org/wiki/File:Bubble_sort_animation.gif\" style=\"color:black\">Cool Bubble Sort GIF #2</a>\n<br>\n</p>\n<div id=\"question_code\" style=\"height: 350px;\">import java.util.Scanner;\n\n//This code is not completed\nclass BubbleSort\n{\n	public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int[] list = new int[5];\n		for(int i=0 ; i&lt;5 ; i++)\n		{\n			list[i] = input.nextInt();\n		}\n        //compare current # with the next #\n        //the loops ends at 3 because list[4]\n        //do not have the next #\n		for(int i=0 ; i&lt;4 ; i+=0)\n		{\n			if(list[i] &gt; list[i+1])\n            {\n                \n                i = 0;\n            }\n            else\n            {\n                i++;\n            }\n		}\n	}\n}\n</div>\n<b style=\"padding-left: 10px; font-size:16px\">\nMake a program that will take 5 integers,<br> and print the integers in increasing order</b>\n<p></p>',1,'BootCamp',6,'2013-03-10 00:34:58','2013-03-10 00:53:28','---\n- ! \'5\n\n  4\n\n  3\n\n  2\n\n  1\n\n\'\n- ! \'1\n\n  1\n\n  1\n\n  1\n\n  1\n\n\'\n- ! \'0\n\n  0\n\n  0\n\n  0\n\n  0\n\n\'\n','---\n- ! \'1\n\n  2\n\n  3\n\n  4\n\n  5\n\n\'\n- ! \'1\n\n  1\n\n  1\n\n  1\n\n  1\n\n\'\n- ! \'0\n\n  0\n\n  0\n\n  0\n\n  0\n\n\'\n');
/*!40000 ALTER TABLE `io_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_properties`
--

DROP TABLE IF EXISTS `question_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `point` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_index` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_properties`
--

LOCK TABLES `question_properties` WRITE;
/*!40000 ALTER TABLE `question_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robot_questions`
--

DROP TABLE IF EXISTS `robot_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `robot_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `point` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_index` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `robot_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robot_questions`
--

LOCK TABLES `robot_questions` WRITE;
/*!40000 ALTER TABLE `robot_questions` DISABLE KEYS */;
INSERT INTO `robot_questions` VALUES (4,'no name',NULL,'<h2>How To Pick a Lock!</h2>\n<style type=\"text/css\">\n.scroller\n{\n	height: 108px;\n	width: 247px;\n	overflow-y: hidden;\n}\n.digit\n{\n	display: inline-block;\n	position: relative;	\n}\n.number\n{\n	font-size: 100px;\n	font-family: \"Arial Rounded MT\", Arial, Helvetica, sans-serif;\n	font-weight: bold;\n	color: lightgrey;\n	margin: 0px 0px 90px 0px;\n	border: 0px solid white;\n	padding: 0px;\n}\n</style>\n\n<script type=\"text/javascript\">\n	var number = \"0000\"\n	function change_number(i , num)\n	{\n		$($(\'.digit\')[i]).animate({\n		 top: -108*num\n		}, 80);\n	}\n	function scroll(target)\n	{\n		target = target.toString();\n		for(i=0 ; i<4-target.length ; i++)\n			change_number(i, 0);\n		for(i=target.length-1 ; i>=0 ; i--)\n		{\n			num = parseInt(number[i]);\n			while(num != parseInt(target[i]))\n			{				\n				num++;\n				if(num == 10)\n					num = 0;\n				change_number((4-target.length)+i, num);\n			}\n			number[i] = number.toString();\n		}\n	}\n</script>\n\n<center>\n<div class=\"scroller\">\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n</div>\n</center>\n<div id=\"question_code\" style=\"height: 237px;\">import java.util.Scanner;\nclass LockOpener\n{	\n	public static void main(String[] args) \n	{\n		Scanner input = new Scanner(System.in);\n		int password = 4567;\n		System.out.println(password);\n		// the lock will return \n		// a number that you entered\n		input.nextInt();\n	}\n}\n</div>\n<p style=\"font-size: 15px\">\n<b>Copy and Paste</b> the code, and click run and see what happens!<br>\nTo open the next level, print the secret code, <b>6789</b>\n</p>',1,'BootCamp',1,'2013-02-14 17:40:47','2013-02-24 22:31:30','lib/Robots/BootCamp1.rb','6789'),(14,'no name',NULL,'<h2>Trying All Possible Passwords</h2>\n<style type=\"text/css\">\n.scroller\n{\n	height: 108px;\n	width: 247px;\n	overflow-y: hidden;\n}\n.digit\n{\n	display: inline-block;\n	position: relative;	\n}\n.number\n{\n	font-size: 100px;\n	font-family: \"Arial Rounded MT\", Arial, Helvetica, sans-serif;\n	font-weight: bold;\n	color: lightgrey;\n	margin: 0px 0px 90px 0px;\n	border: 0px solid white;\n	padding: 0px;\n}\n</style>\n\n<script type=\"text/javascript\">\n	var number = \"0000\"\n	function change_number(i , num)\n	{\n		$($(\'.digit\')[i]).animate({\n		 top: -108*num\n		}, 80);\n	}\n	function scroll(target)\n	{\n		target = target.toString();\n		for(i=0 ; i<4-target.length ; i++)\n			change_number(i, 0);\n		for(i=target.length-1 ; i>=0 ; i--)\n		{\n			num = parseInt(number[i]);\n			while(num != parseInt(target[i]))\n			{				\n				num++;\n				if(num == 10)\n					num = 0;\n				change_number((4-target.length)+i, num);\n			}\n			number[i] = number.toString();\n		}\n	}\n</script>\n\n<center>\n<div class=\"scroller\">\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n	<div class=\"digit\">\n		<p>#</p>\n		<p class=\"number\">0</p>\n		<p class=\"number\">1</p>\n		<p class=\"number\">2</p>\n		<p class=\"number\">3</p>\n		<p class=\"number\">4</p>\n		<p class=\"number\">5</p>\n		<p class=\"number\">6</p>\n		<p class=\"number\">7</p>\n		<p class=\"number\">8</p>\n		<p class=\"number\">9</p>\n	</div>\n</div>\n</center>\n<div id=\"question_code\" style=\"height: 290px;\">import java.util.Scanner;\n\nclass BruteForce\n{\n	public static void main(String[] args)\n	{\n		Scanner input = new Scanner(System.in);\n		int i=0;\n		// for( start ; range ; increment )\n		for(i=0 ; i&lt;100 ; i++)\n		{\n			System.out.println(i);\n			//Make sure to read the lock\'s response\n			input.nextLine();\n		}\n	}\n}\n</div>\n<p style=\"text-align: center; font-size: 18px\">\nTry all possible password and CRACK this lock!\n</p>',1,'BootCamp',4,'2013-02-21 18:16:34','2013-02-24 22:39:05','lib/Robots/BootCamp4.rb','2468');
/*!40000 ALTER TABLE `robot_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130125054404'),('20130128223700'),('20130128223701'),('20130128223702'),('20130201043910'),('20130201172741'),('20130202215036'),('20130202215220'),('20130226180051'),('20130226180119'),('20130304003102');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solved_questions`
--

LOCK TABLES `solved_questions` WRITE;
/*!40000 ALTER TABLE `solved_questions` DISABLE KEYS */;
INSERT INTO `solved_questions` VALUES (1,'BootCamp',1,'import java.util.Scanner;\r\n\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);	\r\n	}\r\n}\r\n','2013-03-01 22:05:17',NULL,32),(2,'BootCamp',0,' \r\n// <- This is a comment\r\npublic class Program\r\n{\r\n    // This is the main function of the program\r\n	public static void main(String[] args)\r\n	{\r\n		//This is how to print a message\r\n		System.out.println(\"1225\");\r\n	}\r\n}  ','2013-03-03 21:58:36','2013-03-03 22:13:17',12),(3,'BootCamp',6,'','2013-03-04 00:21:19',NULL,12),(4,'BootCamp',1,'','2013-03-04 04:13:44',NULL,12),(5,'BootCamp',0,' \r\n// <- This is a comment\r\npublic class Program\r\n{\r\n    // This is the main function of the program\r\n	public static void main(String[] args)\r\n	{\r\n		//This is how to print a message\r\n		System.out.println(\"1225\");\r\n	}\r\n}','2013-03-07 03:42:53','2013-03-07 03:43:20',95),(6,'BootCamp',1,' import java.util.Scanner;\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);\r\n		// the lock will return \r\n		// a number that you entered\r\n		input.nextInt();\r\n	}\r\n}\r\n','2013-03-07 03:56:43','2013-03-07 03:58:56',95),(7,'BootCamp',0,' \r\n// <- This is a comment\r\npublic class Program\r\n{\r\n    // This is the main function of the program\r\n	public static void main(String[] args)\r\n	{\r\n		//This is how to print a message\r\n		System.out.println(\"1225\");\r\n	}\r\n}','2013-03-09 21:42:36','2013-03-09 21:42:49',102),(8,'BootCamp',1,' import java.util.Scanner;\r\npublic class LockOpener\r\n{    \r\n	public static void main(String[] args) \r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int password = 6789;\r\n		System.out.println(password);		\r\n		input.nextInt();\r\n	}\r\n}\r\n','2013-03-09 21:42:58','2013-03-09 21:43:19',102),(9,'BootCamp',2,' \r\nimport java.util.Scanner;\r\n\r\npublic class Calculator\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		// This will take inputs\r\n		Scanner input = new Scanner(System.in);\r\n		// variable a and b will store integers, numbers with no decimal\r\n		int a,b,c;\r\n		a = input.nextInt();\r\n		b = input.nextInt();\r\n        c = input.nextInt();\r\n		System.out.println(a+b+c);\r\n	}\r\n}\r\n','2013-03-09 21:43:25','2013-03-09 21:43:44',102),(10,'BootCamp',3,' import java.util.Scanner;\r\n\r\npublic class BigSmall\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int a,b,c;\r\n		a = input.nextInt();\r\n		b = input.nextInt();\r\n		//if \"a\" is smaller than \"b\", swap \"a\" and \"b\"\r\n		if( a > b )\r\n		{\r\n			c = a;\r\n			a = b;\r\n			b = c;\r\n		}\r\n		System.out.println(a);\r\n		System.out.println(b);\r\n	}\r\n}\r\n','2013-03-09 21:43:52','2013-03-09 21:44:50',102),(11,'BootCamp',4,'import java.util.Scanner;\r\n\r\npublic class BruteForce\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int i=0;\r\n		// for( start ; range ; increment )\r\n		for(i=0 ; i<10000 ; i++)\r\n		{\r\n			System.out.println(i);\r\n			//Make sure to read the lock\'s response\r\n			input.nextLine();\r\n		}\r\n	}\r\n}\r\n','2013-03-09 21:44:57','2013-03-09 21:45:23',102),(12,'BootCamp',5,'import java.util.Scanner;\r\n\r\npublic class BubbleSort\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		// variable_type[] = new variable_type[SIZE]\r\n		int[] numbers = new int[5];\r\n		for(int i=0 ; i<5 ; i++)\r\n		{\r\n			//store 5 numbers\r\n			numbers[i] = input.nextInt();\r\n		}\r\n		//Print the numbers in reverse order\r\n		for(int i=5 ; i>0 ; i--)\r\n		{\r\n			System.out.println( numbers[i] );\r\n		}\r\n	}\r\n}\r\n','2013-03-09 21:45:29','2013-03-09 21:59:30',102),(13,'BootCamp',6,'','2013-03-09 22:01:46',NULL,102),(14,'BootCamp',7,' import java.util.Scanner;\r\n\r\npublic class Foo\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in); \r\n		String foo = input.nextLine();\r\n		System.out.println(\"Original: \" + foo);\r\n		System.out.println(\"Length: \" + foo.length() );\r\n		System.out.println(\"1st FOO: \" + foo.indexOf(\"FOO\"));\r\n		if(foo.indexOf(\"FOO\") > -1)\r\n		{\r\n			foo = foo.replace(\"FOO\", \"OOF\");\r\n		}\r\n		System.out.println(foo);\r\n	}\r\n}','2013-03-09 22:01:49',NULL,102),(15,'BootCamp',8,'import java.util.Scanner;\r\n\r\n//This code is not completed\r\npublic class BubbleSort\r\n{\r\n    public static void main(String[] args)\r\n	{\r\n		Scanner input = new Scanner(System.in);\r\n		int[] list = new int[5];\r\n		for(int i=0 ; i<5 ; i++)\r\n		{\r\n			list[i] = input.nextInt();\r\n		}\r\n        //compare current # with the next #\r\n        //the loops ends at 3 because list[4]\r\n        //do not have the next #\r\n		for(int i=0 ; i<4 ; i+=0)\r\n		{\r\n			if(list[i] > list[i+1])\r\n            {\r\n                list[i+1] = list[i] + list[i+1];\r\n                list[i] = list[i+1] - list[i];\r\n                list[i+1] = list[i+1] - list[i];\r\n                i = 0;\r\n            }\r\n            else\r\n            {\r\n                i++;\r\n            }\r\n		}\r\n        \r\n        for(int i=0 ; i<5 ; i++)\r\n    	{\r\n			System.out.println(list[i]);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n\r\n','2013-03-10 00:35:59','2013-03-10 00:51:00',102);
/*!40000 ALTER TABLE `solved_questions` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_infos`
--

LOCK TABLES `user_infos` WRITE;
/*!40000 ALTER TABLE `user_infos` DISABLE KEYS */;
INSERT INTO `user_infos` VALUES (1,31,1,34,'dummy1',NULL),(2,96,2,17,'dummy2',NULL),(3,48,3,NULL,'dummy3',NULL),(4,23,4,NULL,'dummy4',NULL),(5,10,5,NULL,'dummy5',NULL),(6,59,6,NULL,'dummy6',NULL),(7,65,7,NULL,'dummy7',NULL),(8,53,8,NULL,'dummy8',NULL),(9,46,9,NULL,'dummy9',NULL),(10,61,10,NULL,'dummy10',NULL),(11,10,11,NULL,'dummy11',NULL),(12,29,12,29,'dummy12',NULL),(13,94,13,NULL,'dummy13',NULL),(14,62,14,NULL,'dummy14',NULL),(15,48,15,NULL,'dummy15',NULL),(16,50,16,NULL,'dummy16',NULL),(17,5,17,NULL,'dummy17',NULL),(18,33,18,NULL,'dummy18',NULL),(19,32,19,NULL,'dummy19',NULL),(20,74,20,NULL,'dummy20',NULL),(21,92,21,NULL,'dummy21',NULL),(22,60,22,NULL,'dummy22',NULL),(23,2,23,19,'dummy23',NULL),(24,10,24,NULL,'dummy24',NULL),(25,54,25,NULL,'dummy25',NULL),(26,78,26,NULL,'dummy26',NULL),(27,77,27,NULL,'dummy27',NULL),(28,9,28,NULL,'dummy28',NULL),(29,85,29,NULL,'dummy29',NULL),(30,22,30,NULL,'dummy30',NULL),(31,16,31,NULL,'dummy31',NULL),(32,69,32,NULL,'dummy32',NULL),(33,91,33,NULL,'dummy33',NULL),(34,50,34,NULL,'dummy34',NULL),(35,59,35,NULL,'dummy35',NULL),(36,12,36,NULL,'dummy36',NULL),(37,69,37,NULL,'dummy37',NULL),(38,62,38,NULL,'dummy38',NULL),(39,74,39,NULL,'dummy39',NULL),(40,35,40,NULL,'dummy40',NULL),(41,31,41,NULL,'dummy41',NULL),(42,31,42,NULL,'dummy42',NULL),(43,79,43,NULL,'dummy43',NULL),(44,61,44,NULL,'dummy44',NULL),(45,80,45,36,'dummy45',NULL),(46,33,46,NULL,'dummy46',NULL),(47,97,47,NULL,'dummy47',NULL),(48,60,48,NULL,'dummy48',NULL),(49,59,49,NULL,'dummy49',NULL),(50,64,50,NULL,'dummy50',NULL),(51,85,51,NULL,'dummy51',NULL),(52,4,52,NULL,'dummy52',NULL),(53,25,53,NULL,'dummy53',NULL),(54,54,54,NULL,'dummy54',NULL),(55,26,55,NULL,'dummy55',NULL),(56,0,56,NULL,'dummy56',NULL),(57,97,57,NULL,'dummy57',NULL),(58,13,58,NULL,'dummy58',NULL),(59,62,59,NULL,'dummy59',NULL),(60,86,60,NULL,'dummy60',NULL),(61,39,61,NULL,'dummy61',NULL),(62,78,62,NULL,'dummy62',NULL),(63,78,63,NULL,'dummy63',NULL),(64,68,64,NULL,'dummy64',NULL),(65,9,65,NULL,'dummy65',NULL),(66,51,66,NULL,'dummy66',NULL),(67,47,67,NULL,'dummy67',NULL),(68,28,68,NULL,'dummy68',NULL),(69,52,69,NULL,'dummy69',NULL),(70,67,70,NULL,'dummy70',NULL),(71,19,71,NULL,'dummy71',NULL),(72,62,72,NULL,'dummy72',NULL),(73,98,73,NULL,'dummy73',NULL),(74,89,74,NULL,'dummy74',NULL),(75,70,75,NULL,'dummy75',NULL),(76,86,76,NULL,'dummy76',NULL),(77,38,77,NULL,'dummy77',NULL),(78,1,78,NULL,'dummy78',NULL),(79,26,79,NULL,'dummy79',NULL),(80,41,80,NULL,'dummy80',NULL),(81,34,81,NULL,'dummy81',NULL),(82,72,82,NULL,'dummy82',NULL),(83,23,83,NULL,'dummy83',NULL),(84,58,84,NULL,'dummy84',NULL),(85,9,85,NULL,'dummy85',NULL),(86,83,86,NULL,'dummy86',NULL),(87,94,87,NULL,'dummy87',NULL),(88,17,88,NULL,'dummy88',NULL),(89,75,89,NULL,'dummy89',NULL),(90,5,90,NULL,'dummy90',NULL),(91,72,91,32,'dummy91',NULL),(92,79,92,NULL,'dummy92',NULL),(93,81,93,NULL,'dummy93',NULL),(94,30,94,NULL,'dummy94',NULL),(95,78,95,NULL,'dummy95',NULL),(96,49,96,NULL,'dummy96',NULL),(97,79,97,NULL,'dummy97',NULL),(98,22,98,NULL,'dummy98',NULL),(99,56,99,NULL,'dummy99',NULL),(100,0,NULL,NULL,'<script>window.locat',NULL),(101,0,NULL,NULL,'asd',NULL),(102,0,100,35,'ggmichaelgo',NULL);
/*!40000 ALTER TABLE `user_infos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dummy1@gmail.com','$2a$10$LGxPbgqZOpnsDg50Wey9/O49A4JGRrzpx8Ts0hYhN5qnsPRsJx5Ba',NULL,NULL,'2013-03-09 21:13:18',8,'2013-03-09 21:13:18','2013-02-24 02:18:09','142.166.219.209','127.0.0.1','dummy1'),(2,'dummy2@gmail.com','$2a$10$GX0Yi983ErLYOpgkN122nObAcnm7xF8OT4noRTmdqPG/qn4FzlEle',NULL,NULL,NULL,11,'2013-03-04 00:51:11','2013-03-03 22:14:03','127.0.0.1','127.0.0.1','dummy2'),(3,'dummy3@gmail.com','$2a$10$bsHRkDArIP5mr8fzNIFomuhsHNNAc8soDiZK/vFgHhWo/BpRoOtL6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy3'),(4,'dummy4@gmail.com','$2a$10$.7QkTtSQGn9zuRJ.E73nUO5UK7b3vukZv.GVUGy0bfeM3dGd4wfEq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy4'),(5,'dummy5@gmail.com','$2a$10$7xQV32zz0DhoqQTvwSArW.W6w4dAJThMoZZXGPr/eDItrutbT0Xlu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy5'),(6,'dummy6@gmail.com','$2a$10$GlzqZGtalUIFJ3U9SN4TguudcFpFwGU7NXXWGHPXoRf/sYDSh16sy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy6'),(7,'dummy7@gmail.com','$2a$10$KVvmpj2f5laxXd7AqDCIaOgW78lU7kLeE/tqd1Eo7DQ2N8hQ7ggb.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy7'),(8,'dummy8@gmail.com','$2a$10$U0AYEslNLYIWlKAAnLtAde7v5JQIWqA2s.GamIW.wlsyE3Kvuejiq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy8'),(9,'dummy9@gmail.com','$2a$10$e96oAzR9/8s.JqY8LhUaF.j15t85Aav01IIow/elu6jiTiWwTD0Hi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy9'),(10,'dummy10@gmail.com','$2a$10$YXaADYpDJ4BnpgLRLMFsdejL9.HiJDgAbjvClGWxK13cl1fGPbKUq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy10'),(11,'dummy11@gmail.com','$2a$10$JnkNkEjQXweFDyFKaaAz7ucJ2g7z2wmqNz6zopA/mvZuvYbdT9yzG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy11'),(12,'dummy12@gmail.com','$2a$10$kyk36j9CzcgWvfkhaPvTk.6sezVgfQ/zCMlfV4z7oeHM9LR5MmypG',NULL,NULL,NULL,23,'2013-03-09 18:54:43','2013-03-06 22:16:14','127.0.0.1','127.0.0.1','dummy12'),(13,'dummy13@gmail.com','$2a$10$9QhmQgv3Kl9.7yJSoXtZJe/jGVG2NSKhQ46IeXjHWRM05X04bidmG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy13'),(14,'dummy14@gmail.com','$2a$10$WRvtkK.1pQe0I.yf6Fcrn.muRx9z/6zaQbZO1MitFq10BaLCBlEuy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy14'),(15,'dummy15@gmail.com','$2a$10$rt.SCSWxBqB3FpF49sfoLORT3dSsXuxZg5fxWOgGc/4rH9hS/pC0q',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy15'),(16,'dummy16@gmail.com','$2a$10$CmGAjGcFLYdxl1b5xSgZQeQ.Eqi0WJxirlk04HFNucaG54.Fy/Qyi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy16'),(17,'dummy17@gmail.com','$2a$10$mTRbR7GXe/V4isQqy2QKSut82ixB4QND3vg9IEN93TE/0RwmCI1D.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy17'),(18,'dummy18@gmail.com','$2a$10$W4lG.1DGrcuhcgT96m17s.9A/DW6AQqJ9qgH3cFt95nBVRkBNTlfq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy18'),(19,'dummy19@gmail.com','$2a$10$NqAxkKAUmwziqxsvLCrdSev7bcocMVZchiHhYazoOXa.SyF/zMxru',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy19'),(20,'dummy20@gmail.com','$2a$10$qj408FZdNmQucv4sA/lyKedSPbrih89pR7eVAnQBhtvyEypFEp0X.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy20'),(21,'dummy21@gmail.com','$2a$10$vYKaWQDm.gAkRn5ZYHkQq.ph/SAANG82aPgBZxRMSJYyAm5maKhGC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy21'),(22,'dummy22@gmail.com','$2a$10$U5twhiMooj5H2XCdpdz8Z.7OP2nUkSi2nmAFc7ydfcZRjEZTn1Ka2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy22'),(23,'dummy23@gmail.com','$2a$10$swfj42nBzAfVYu8zsyFTCe4aLcy.qOU2ZD7JkM0pVorYxMUi3DTtS',NULL,NULL,'2013-03-04 00:51:34',9,'2013-03-04 00:51:34','2013-03-02 22:43:43','156.34.15.80','127.0.0.1','dummy23'),(24,'dummy24@gmail.com','$2a$10$22KM9hM3I2x6PjcKtwnvfOnuDveuhcO5pgWNEzikDzx0uWeJ0XP8G',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy24'),(25,'dummy25@gmail.com','$2a$10$oPNrQvZEI1dUiMSMmGibQeYnltcd8mSwpW6Jv9sWSbpE08Z2/JlSS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy25'),(26,'dummy26@gmail.com','$2a$10$F1wH59Is77Ijv0PT0tLdWudkGyk9Lc1ykIV3Sc74T1dlnfv3DUskG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy26'),(27,'dummy27@gmail.com','$2a$10$2949IAzM8PtcpQ3dLb5AwO2AT.YI.VPEd2a36867.RUSmPJ5Itov6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy27'),(28,'dummy28@gmail.com','$2a$10$gPMZFdaqB23zrwDyn1RBY.ZZ56A1NDlQWRy0.StuVSUid686jmlwe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy28'),(29,'dummy29@gmail.com','$2a$10$ax365wBWuOE3mZcAmebev.HgWFBIhn.5xaOPhXob.c5NBqHZJWWTy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy29'),(30,'dummy30@gmail.com','$2a$10$WV5ry/hIohHelH/EPyf/eObleNuD4y3mYQUVbQNfYWmgx41L1knyi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy30'),(31,'dummy31@gmail.com','$2a$10$ZT.v5qHnrkWyMxD388Rcb.L9srfDTRGsyskXYtAQJP.UKx3hlk7Yi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy31'),(32,'dummy32@gmail.com','$2a$10$FUXy3RhakquRbJLIJYeYtuLB0ZCh.S66WJkkzACRKb62dlQILlmjS',NULL,NULL,'2013-03-01 22:04:58',3,'2013-03-02 22:40:26','2013-03-02 18:31:18','127.0.0.1','127.0.0.1','dummy32'),(33,'dummy33@gmail.com','$2a$10$AVAjfuMAvutmO0unp4LD3.Eqds1WJR07/jHWUotel8xKtwhzvQlum',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy33'),(34,'dummy34@gmail.com','$2a$10$TdWT4iY91J/zxwBJ/qfaOuO6JU2pEchW8IQLM1HMABvjukp3THSqy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy34'),(35,'dummy35@gmail.com','$2a$10$biC4KcWoJjfTzP11uYfESeWMKo5iHBtksKRn0sj2hnp1LFyngHBu.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy35'),(36,'dummy36@gmail.com','$2a$10$GCgz4IUcQ7hS9zLhUYYtgeCewuKo7fHMgpLc.2tpf7OkaDBq3WLES',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy36'),(37,'dummy37@gmail.com','$2a$10$vG2fPoYn7L1SGr9ilPje0uoxetl0Z3OG0DLojw6H8N4oNdSiJb8JW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy37'),(38,'dummy38@gmail.com','$2a$10$OfNi/8WYba9KonYErWHe/u0SSqvweWiFiVpMA4dxLAjoJxmjgFxn2',NULL,NULL,'2013-02-17 18:21:06',1,'2013-02-17 18:21:06','2013-02-17 18:21:06','156.34.22.71','156.34.22.71','dummy38'),(39,'dummy39@gmail.com','$2a$10$UXofZTl2yuxJDyPqCI5RDOJbNBkBw6DuNyTWXaFuC7esOSz8cvoWO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy39'),(40,'dummy40@gmail.com','$2a$10$SIqWh0eey1DycfX/hVW5ru/L4OIJJVHSKqe3jM5rxT14Iv95dqIUC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy40'),(41,'dummy41@gmail.com','$2a$10$T79Q7sUWkPGG4hyGGLoeZektd2ShxKaDmwXjFcvDCNOkIIqW9p.ue',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy41'),(42,'dummy42@gmail.com','$2a$10$gACyhbuQZ5JsMBpVTdlT3O9u0qfE3JvwR7qLdEnbCjkEmG9ep5WJK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy42'),(43,'dummy43@gmail.com','$2a$10$6iaqL2q2l6jpH/edt4SfGu1VvqntRSOnvrbK6PlWWo0VCavoPbLoi',NULL,NULL,'2013-02-17 02:52:53',6,'2013-02-18 23:05:22','2013-02-18 03:16:29','192.168.2.10','192.168.2.13','dummy43'),(44,'dummy44@gmail.com','$2a$10$qiQQlWVSQujLR8AEcZT7k.vbUjnuY0xtbDetJfbLZwXfy0LSK5uc6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy44'),(45,'dummy45@gmail.com','$2a$10$j41Wba2iDVasG3Ksd5oUoebdHB0cifEElpg5jKo2zqP2jaDDlrcaG',NULL,NULL,'2013-03-06 22:32:36',5,'2013-03-09 21:29:50','2013-03-09 20:13:08','127.0.0.1','127.0.0.1','dummy45'),(46,'dummy46@gmail.com','$2a$10$GQXqND78nubKgEBa7jky9e6E7oFyCgSmNsJKQuKFhTKUqA/3C0GiS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy46'),(47,'dummy47@gmail.com','$2a$10$kdTvvxG7bYgfV4jZU2/Z1.fiYnRECCEkmMJytKopCfwwqQv.fHdAC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy47'),(48,'dummy48@gmail.com','$2a$10$u2PFzcpim1b0BvjT6Lyu2.t65pTR2g93u.Ln0qd7zEaOJfoXw7R9i',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy48'),(49,'dummy49@gmail.com','$2a$10$5Ou2.NwXiLueJxOrjw6E5u3w/.RISp7V3dqchQFlfc1ff88oyDZEO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy49'),(50,'dummy50@gmail.com','$2a$10$99hffkCMkSiWxEjhfTE.HOSKDMb6PQc8qIxvyILeuRKLcICATtL36',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy50'),(51,'dummy51@gmail.com','$2a$10$r6xIREIgc9Il4sieXCmOLuOs8niXccQsgRRyr8YGKOyBgiWuwTQ2S',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy51'),(52,'dummy52@gmail.com','$2a$10$SuCLQ6CHMXcRHT/Ik1Vylu2BO9ihIE9NjYadvF43IdgF/mnCDrWgO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy52'),(53,'dummy53@gmail.com','$2a$10$SAtdkrkP8cmEytXKwLChd.6AsGq43ptdjaL1syIpYHMDsVaX96MN.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy53'),(54,'dummy54@gmail.com','$2a$10$EzJeJ6nabG4/FZUfGGa.LO6pi4XWuONU0L5BCMRVadOcb33/w.ecy',NULL,NULL,NULL,2,'2013-02-24 20:50:28','2013-02-24 02:25:41','127.0.0.1','127.0.0.1','dummy54'),(55,'dummy55@gmail.com','$2a$10$Kcm2/gDwE6LCxkU3xkjYjuqrgeh7mxK50kMnMShreyPJaECu9mAfW',NULL,NULL,'2013-02-24 02:26:28',1,'2013-02-24 02:26:28','2013-02-24 02:26:28','142.167.215.200','142.167.215.200','dummy55'),(56,'dummy56@gmail.com','$2a$10$aIACWLaHOUmKSJ9uZYFtrexGrVCG/sSNzevajwUIUq6zNTSSczthS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy56'),(57,'dummy57@gmail.com','$2a$10$qsBdPqe9fwfbxwIYq.H2F.2jNqZYZMog1F3LkiOglRA50pRzBC5U2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy57'),(58,'dummy58@gmail.com','$2a$10$fYdLEUbXqZ55gZwhrKF9MO5QFotxr0u2CaKOfYaD/aoVhEyk.X6dK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy58'),(59,'dummy59@gmail.com','$2a$10$mCEXQ1bNQkgIega2TeDhNeU5wJZwsoaujnSIi.HjkJ1OdwweXfVum',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy59'),(60,'dummy60@gmail.com','$2a$10$AuYrqguR3xEohLobOEzCm.N9eK2kyuMRQPxcEgwncyEP2bFHCkOCC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy60'),(61,'dummy61@gmail.com','$2a$10$bH6JTZOv.cuCyj/yho8sD.a4FQ7uPVHJS5gWPdgsOQeB0dZcFEQAO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy61'),(62,'dummy62@gmail.com','$2a$10$u41ehBiOERRF3Sf99OMuk.aZsAIVPG3rDYzrb90RGDgYRTGQZb0rC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy62'),(63,'dummy63@gmail.com','$2a$10$b39ZooppmStOmap6duei2u1TwjE49AGqT.OPlCL5rDKx/.Q7mpBUi',NULL,NULL,NULL,4,'2013-02-22 03:43:15','2013-02-21 20:12:06','127.0.0.1','127.0.0.1','dummy63'),(64,'dummy64@gmail.com','$2a$10$NFMw7P8IXYKy7PWVONrR0O5bQ.AeP6fB0ryxzsFbLEDuco3Wxhrnm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy64'),(65,'dummy65@gmail.com','$2a$10$McVuUS.fTB0yty4KSxsKgu/a.rSIr1/xu5wPqo/niB8xDHdJf63Pu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy65'),(66,'dummy66@gmail.com','$2a$10$K.EA2oDw1XsBSI/8GxBJ.uxfo9d1I9J2UyWZGeaajqx157qVqGyWe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy66'),(67,'dummy67@gmail.com','$2a$10$0eMTDh3OUVPITLt5j5Yv9OFGzdabWytZTsHBtTM7dlLsQ8ecgGLIi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy67'),(68,'dummy68@gmail.com','$2a$10$HqdmBscOZMc/SaogodNhNOKkaA62AE09EYUrAT8BmLMm.Ti3zH92O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy68'),(69,'dummy69@gmail.com','$2a$10$9DA6OKXE93jLvlS0WGYGke5cN/rbdmCdL9c.Qbh/4pitjXWgGglVu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy69'),(70,'dummy70@gmail.com','$2a$10$88XNit7JJy5gWB9rQMmC1.eq./7E0Ae2Cmt0WQSr/B1OCW.qghSo6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy70'),(71,'dummy71@gmail.com','$2a$10$1eRI.6uf2F6D/gEl1WJbnuXOe9r7.1TKxe9WNQC0R.DxhMgdav1uy',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy71'),(72,'dummy72@gmail.com','$2a$10$YpfxjO1myfr3y/nDV04x8erT5vJh3LNAuyKh5pS32MRqZ.Tm6RxDi',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy72'),(73,'dummy73@gmail.com','$2a$10$WNaj20j6Juo5GMo7KxJK7OAYLuoc51nWRq.Y9FxTr/ETijN3MUgae',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy73'),(74,'dummy74@gmail.com','$2a$10$weFADkeXCbhITmxwgGeIfectXDpSLMhmUC1IKLIufqMg.48AHBNWe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy74'),(75,'dummy75@gmail.com','$2a$10$X9SdBYAT78XJ.HeD9Y.hT.mgox.VAbgNFBwL9pIv96jeNe2eSMj.K',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy75'),(76,'dummy76@gmail.com','$2a$10$oVe9G9FAM/lvpNosGjjZyOARrIAJI9G3cob3f1N2mlwPhxexuUrVK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy76'),(77,'dummy77@gmail.com','$2a$10$4RYOEqbY1Ou97LzLH.hUQe.OJjpqBwSHoQyOsRdeUm8wejaHFg0fK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy77'),(78,'dummy78@gmail.com','$2a$10$NsQvJKnkiHW3eA3Hw91rLeT3s3wZdYQ/uSthVpQpfsZNDfr6p/F/2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy78'),(79,'dummy79@gmail.com','$2a$10$UEgwD59Qk02JOVWI2kNXTOwsV6nKci/XxaUUW4RPvIraOkBr0W/he',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy79'),(80,'dummy80@gmail.com','$2a$10$/74bO7MiNLIhwQ4N2m/1bOLymxDYEPFfV0.V/zw99gV0sJZMXHWNu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy80'),(81,'dummy81@gmail.com','$2a$10$4w6S6D93/eLwbE4mH7.MsefMMq8DlqmZC.5otxbgg4NsPWpoQNZQ.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy81'),(82,'dummy82@gmail.com','$2a$10$iGFFKFUka.Qql1GhfmtQj./TMlWbLdIL3fPeEP8wRYSzI24KsZwUe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy82'),(83,'dummy83@gmail.com','$2a$10$pbNVs3dWsk2qcNDh/AqxTOJ0TttbI4SGY9YMq/awtqhEvse/mYWn2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy83'),(84,'dummy84@gmail.com','$2a$10$dXvE.Zfx2j7B4lC/nF4aMurx9FFq.TzbQq76Zkng7VpHcR0r6K0Eq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy84'),(85,'dummy85@gmail.com','$2a$10$xmW6QQh8WRQDO1ALfVujuuZYi/TgxwdYvzauDrIyCSoUZiBXxqiYS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy85'),(86,'dummy86@gmail.com','$2a$10$5mI76/jWubnn4Lm2frHBZeD7pLNtBHxyBpGRPupek0HrUU74bNISa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy86'),(87,'dummy87@gmail.com','$2a$10$Q7ZYuonSrNjWPAg1IHmieOSjBY9DMi0ANx.txv4ldZ6aKpPZqkv7.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy87'),(88,'dummy88@gmail.com','$2a$10$hi8XVVHerjQCXfPOZEGdu.ojy86mWzyDF4al55OOs5v4v7qctHU6W',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy88'),(89,'dummy89@gmail.com','$2a$10$a3oXop4u90NrpHtjIlwoOOT26cP.wOa77ng3e1hgomc.QU3OaEf32',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy89'),(90,'dummy90@gmail.com','$2a$10$LlQo/KEypoR279JTSN5ozOmxNcjqC2o.aME457ufb8xWtN3NM0gLa',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy90'),(91,'dummy91@gmail.com','$2a$10$MNe3cFLv5uUH.5TtJAT7A.JMWYJf4ZPI4z4igJ0LwncsUGcXkWUcu',NULL,NULL,'2013-03-09 21:06:15',1,'2013-03-09 21:06:15','2013-03-09 21:06:15','127.0.0.1','127.0.0.1','dummy91'),(92,'dummy92@gmail.com','$2a$10$hb.MTbmmP0xEwFxrqki/ROSD1SnLWIDqpIU8OvjqZjE6rIXWpXAZm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy92'),(93,'dummy93@gmail.com','$2a$10$CnwK6ETK2QFeoRlWdYljTOEGsWJwNgiaOYRzBgYpmGrx4PY9PKYR.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy93'),(94,'dummy94@gmail.com','$2a$10$jP1wftM5Bf5LeWb5bM725eb0vt1oe/uSgPFRgnUD/fKPZ0w8v0Pj6',NULL,NULL,'2013-02-17 03:28:08',1,'2013-02-17 03:28:08','2013-02-17 03:28:08','142.167.190.226','142.167.190.226','dummy94'),(95,'dummy95@gmail.com','$2a$10$ryhuZCftLzc/eJDFWNBPbenNvPyg7JwSRo/rZfHBNYFZeyodFuY6i',NULL,NULL,'2013-03-07 03:41:59',1,'2013-03-07 03:41:59','2013-03-07 03:41:59','192.168.2.12','192.168.2.12','dummy95'),(96,'dummy96@gmail.com','$2a$10$/.jJgBEHsGMmWKxzYF8wG.m3SJO4mO8q3xwUoaCMPyU8Q2OLWydxu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy96'),(97,'dummy97@gmail.com','$2a$10$p2m33Sd7Injk336Ku9qjlu687PrPDPJI00s3mfxFz445uFKxYI4K6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy97'),(98,'dummy98@gmail.com','$2a$10$B/DGoUqPZq5vEM3zeb.M9OEknfgo2mTfn9cPLMK6O1hQi9Sw.lwHe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy98'),(99,'dummy99@gmail.com','$2a$10$MI/PXxWPWC68Kg0NVTva7./icQjmKfXFZL8cZAXjwmJVOOJoFy0iW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'dummy99'),(100,'ggmichaelgo@gmail.com','$2a$10$258dR1dFpWn6kK4/M82MKuMmK5ADcNuw7iK8ifyG.zgMxoFkOm6f.',NULL,NULL,'2013-03-09 21:08:07',1,'2013-03-09 21:08:07','2013-03-09 21:08:07','127.0.0.1','127.0.0.1','ggmichaelgo');
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

-- Dump completed on 2013-03-09 20:57:29
