-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: examportal
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'javascript','basic javascript'),(2,'java','basic javascript'),(3,'Django','Web development'),(4,'python','programing'),(6,'HTML','HTML stands for HyperText Markup Language. It is the standard markup language used to create web pages. HTML is a combination of Hypertext and Markup language. Hypertext defines the link between web pages. A markup language is used to define the text document within the tag to define the structure of web pages.'),(7,'Java Servlet','Servlet technology is used to create a web application (resides at server side and generates a dynamic web page).'),(8,'Java Multithreading','Multithreading in Java is a process of executing multiple threads simultaneously.\n\nA thread is a lightweight sub-process, the smallest unit of processing. Multiprocessing and multithreading, both are used to achieve multitasking.\n'),(9,'Collections Framework','The Java platform includes a collections framework. A collection is an object that represents a group of objects (such as the classic Vector class). A collections framework is a unified architecture for representing and manipulating collections, enabling collections to be manipulated independently of implementation details.'),(10,'Concurrent Collection in Java ','Concurrent collection in Java refers to a set of classes that allow multiple threads to access and modify a collection concurrently, without the need for explicit synchronization. These collections are part of the java.util.concurrent package and provide thread-safe implementations of the traditional collection interfaces like List, Set, and Map.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `problem` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `questionId` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `option_1` varchar(40) DEFAULT NULL,
  `option_2` varchar(40) DEFAULT NULL,
  `option_3` varchar(40) DEFAULT NULL,
  `option_4` varchar(40) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (5,11,'what is jdango','','a','v','c','c','c'),(6,11,'what is pyhon','','a','v','c','c','a'),(7,10,'Django is a Python-based ____.','','web framework','video creating tool','analysis tool','analysis tool','web framework'),(11,10,'Which command is used to create the first project in Django?','','py admin.py startapp-c app_name','py manage.py startapp app_name','py manage.py djangoapp app_name','py manage.py djangoapp app_name','py manage.py startapp app_name'),(13,10,'<p><strong>Which is the correct command to start the Django development server on your system?</strong></p>','','py manage.py localhost','py manage.py runatserver','py manage.py createserver','py manage.py createserver','py manage.py runserver'),(15,10,'<p><strong>Django is written in which language?</strong></p>','','C++','Python','AngularJS','AngularJS','Python'),(19,10,'<p><strong>Which is the correct statement to import models in the Django project?</strong></p>','','from django import models','from django.models import models','from django.db import models','from django.db import models','from django.db import models'),(22,10,'<p><strong>Which is the correct statement to import models in the Django project?</strong></p>','','from django import models','from django.models import models','from django.db import models','from django.db import models','from django.db import models'),(23,10,'<p><strong>Which is the correct statement to run migrate command in Django?</strong></p>','','run manage.py migrate','py migrate','py manage.py pymigrate','py manage.py pymigrate','py manage.py migrate'),(24,10,'<p><strong>Which command is used to create a Python shell?</strong></p>','','run shell','py manage.py shell','run py manage.py shell','run py manage.py shell','py manage.py shell'),(25,18,'<p><strong>HTML stands for_______.</strong></p>','','Hyperactive Text Markup Language','Hyper Text Markup Language','Hyper Text Machine Language','Hyper Text Machine Language','Hyper Text Markup Language'),(26,18,'<p><strong>Which is the correct syntax to include comment in an HTML document?</strong></p>','','//','/* Comment */','// Comment //','// Comment //','<!-- Comment -->'),(27,18,'<p><strong>Can we hide content using the comment?</strong></p>','','Yes','No','','','Yes'),(28,18,'<p><strong>Which element/tag defines a paragraph?</strong></p>','','<p>','<pre>','<panel>','<panel>','<p>'),(29,18,'<p><strong>Which tag/element defines the HTML document\'s body?</strong></p>','','<HTML>','<HTMLbody>','<bdy>','<bdy>','<body>'),(30,18,'<p><strong>Which tag contains the meta information about the HTML page?</strong></p>','','<html>','<title>','<head>','<body>\n','<head>'),(31,18,'<p><strong>Which tag is the root element of an HTML page?</strong></p>','','<html>','<head>','<title>','<body> ','<html>'),(32,18,'<p><strong>Who invented HTML?</strong></p>','','Dave Raggett','Tim Berners-Lee','Denis Ritchie','Denis Ritchie','Tim Berners-Lee'),(33,10,'<p>ghfg</p>','','ref','ugh','hj','hj','hj'),(34,10,'','','gh','bjhb','ugh','ugh','ugh'),(35,17,'<p>Which of the following is not a Java features?</p>','','Dynamic','Architecture Neutral','Use of pointers','Use of pointers','Use of pointers'),(36,17,'<p>The \\u0021 article referred to as a</p>','','Unicode escape sequence','Unicode escape sequence','Hexadecimal','Hexadecimal','Unicode escape sequence'),(37,17,'<p>_____ is used to find and fix bugs in the Java programs.</p>','','JVM','JRE','JDK','JDK','JDB'),(38,17,'<p>Which of the following is a valid declaration of a char?</p>','','char ch = \'\\utea\';','char ca = \'tea\';','char cr = \\u0223;','char cr = \\u0223;','char ch = \'\\utea\';'),(39,17,'<p>What is the return type of the hashCode() method in the Object class?</p>','','Object','int','long','long','int'),(40,17,'<p>Which of the following is a valid long literal?</p>','','ABH8097','L990023','904423','904423','0xnf029L'),(41,17,'<p>What does the expression float a = 35 / 0 return?</p>','','0','Not a Number','Infinity','Infinity','Infinity'),(42,17,'<p>Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?</p>','','javap tool','javaw command','Javadoc tool','Javadoc tool','Javadoc tool'),(43,17,'<p>Which of the following creates a List of 3 visible items and multiple selections abled?</p>','','new List(false, 3)','new List(3, true)','new List(true, 3)','new List(true, 3)','new List(3, true)'),(44,17,'<p>Which of the following for loop declaration is not valid?</p>','','for ( int i = 99; i >= 0; i / 9 )','for ( int i = 7; i <= 77; i += 7 )','for ( int i = 20; i >= 2; - -i )','for ( int i = 20; i >= 2; - -i )','for ( int i = 99; i >= 0; i / 9 )'),(45,17,'<p>&nbsp;Which method of the Class.class is used to determine the name of a class represented by the class object as a String?</p>','','getClass()','intern()','getName()','getName()','getName()'),(46,17,'<p>In which process, a local variable has the same name as one of the instance variables?</p>','','Serialization','Variable Shadowing','Abstraction','Abstraction','Variable Shadowing'),(47,17,'<p>Which of the following is true about the anonymous inner class?</p>','','It has only methods','Objects can\'t be created','Objects can\'t be created','Objects can\'t be created','It has no class name'),(48,17,'<p>Which package contains the Random class?</p>','','java.util package','java.lang package','java.awt package','java.awt package','java.util package'),(49,17,'<p>&nbsp;An interface with no fields or methods is known as a ______.</p>','','Runnable Interface','Marker Interface','Abstract Interface','Abstract Interface','Marker Interface'),(50,19,'<p>&nbsp;Which are HTTP method:</p>','','HEAD','TRACE','HEAD','All are httpp methods','All are http methods'),(51,19,'<p>How constructor can be used for a servlet?</p>','','Initialization','Constructor function','Initialization and Constructor function','Initialization and Constructor function','Initialization and Constructor function'),(52,19,'<p>The Java __________ specification defines an application programming interface for communication between the Web server and the application program.<br>&nbsp;</p>','','Servlet','Server','Program','Program','Servlet'),(53,19,'<p><strong>The _______ specification defines an application programming interface for communication between the server and the application program</strong><br>&nbsp;</p>','','Java Servlet','JDBC','Java Applet','Java Applet','Java Servlet'),(54,19,'<p><strong>State true or false: Servlets are used to generate dynamic responses to HTTP requests.</strong><br>&nbsp;</p>','','True','False','','','True');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `max_marks` int DEFAULT NULL,
  `no_of_question` int DEFAULT NULL,
  `is_publish` tinyint(1) DEFAULT NULL,
  `category_id_fk` int DEFAULT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (10,'DJango','no comment',55,77,1,0),(17,'Java ','basic question of java ',20,30,1,0),(18,'HTML basic quiz','HTML stands for HyperText Markup Language. It is the standard markup language used to create web pages. HTML is a combination of Hypertext and Markup language.',50,25,1,6),(19,'Servlet Basic','Servlet technology is robust and scalable because of java language. Before Servlet, CGI (Common Gateway Interface) scripting language was common as a server-side programming language. However, there were many disadvantages to this technology. We have discussed these disadvantages below.\n\nThere are many interfaces and classes in the Servlet API such as Servlet, GenericServlet, HttpServlet, ServletRequest, ServletResponse, etc.',50,25,1,7);
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `registration_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`registration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'java core','later','55','76','1','9'),(3,'fda','sda','dsaf','ahamed','af','7979000'),(4,'jisan','98989','jihad','jidandssd','ajdk@','999990'),(12,'fda','dsfds','a','dsf','dsafsd','019994'),(13,'sir','siraj01','siraj','shah','shah@gmail.com','01889'),(14,'shamim','111','shamim','ahamed','shamim@gmail.com','01799832253'),(15,'Ahamed','shamed01','ali ahamed','hasan','hasan@gmail.com','017998332253');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16  6:46:49
