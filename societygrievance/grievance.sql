# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             grievance
# Server version:       5.4.3-beta-community
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.1 RC1 Revision: 1064
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'grievance'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "grievance" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "grievance";


#
# Table structure for table 'authority'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "authority" (
  "aid" varchar(50) DEFAULT NULL,
  "age" varchar(50) DEFAULT NULL,
  "aname" varchar(50) DEFAULT NULL,
  "gender" varchar(50) DEFAULT NULL,
  "contact" varchar(50) DEFAULT NULL,
  "area" varchar(50) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "department" varchar(50) DEFAULT NULL,
  "designation" varchar(50) DEFAULT NULL,
  "alevel" varchar(50) DEFAULT NULL,
  "username" varchar(50) DEFAULT NULL,
  "password" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'authority'
#

/*!40000 ALTER TABLE "authority" DISABLE KEYS;*/
LOCK TABLES "authority" WRITE;
REPLACE INTO "authority" ("aid", "age", "aname", "gender", "contact", "area", "email", "department", "designation", "alevel", "username", "password") VALUES
	('1','25','priya','Female','5698563256','priya@gmail.com','dhnajay15@gmail.com','gandhipuram','erterter','Level-2','dfd','dfg');
REPLACE INTO "authority" ("aid", "age", "aname", "gender", "contact", "area", "email", "department", "designation", "alevel", "username", "password") VALUES
	('1','sdsdsds','ds','Female','dsd','sds','dsdsd','dsdsd','sds','Level-2','sdsdsdsd','dsdsd');
UNLOCK TABLES;
/*!40000 ALTER TABLE "authority" ENABLE KEYS;*/


#
# Table structure for table 'complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "complaint" (
  "cid" varchar(50) DEFAULT NULL,
  "uid" varchar(50) DEFAULT NULL,
  "uname" varchar(50) DEFAULT NULL,
  "file" varchar(50) DEFAULT NULL,
  "date" varchar(50) DEFAULT NULL,
  "priority" varchar(50) DEFAULT NULL,
  "area" varchar(50) DEFAULT NULL,
  "description" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'complaint'
#

/*!40000 ALTER TABLE "complaint" DISABLE KEYS;*/
LOCK TABLES "complaint" WRITE;
REPLACE INTO "complaint" ("cid", "uid", "uname", "file", "date", "priority", "area", "description") VALUES
	('773','1','fd','c2.jpg','r','sfsdf','rg','dsa');
REPLACE INTO "complaint" ("cid", "uid", "uname", "file", "date", "priority", "area", "description") VALUES
	('2','1','dd','c6.jpg','dsd','dsdsds','dsds','dsds');
UNLOCK TABLES;
/*!40000 ALTER TABLE "complaint" ENABLE KEYS;*/


#
# Table structure for table 'register'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "register" (
  "cid" varchar(50) DEFAULT NULL,
  "age" varchar(50) DEFAULT NULL,
  "cname" varchar(50) DEFAULT NULL,
  "gender" varchar(50) DEFAULT NULL,
  "contact" varchar(50) DEFAULT NULL,
  "area" varchar(50) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "uname" varchar(50) DEFAULT NULL,
  "pass" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'register'
#

/*!40000 ALTER TABLE "register" DISABLE KEYS;*/
LOCK TABLES "register" WRITE;
REPLACE INTO "register" ("cid", "age", "cname", "gender", "contact", "area", "email", "uname", "pass") VALUES
	('1','25','priya','Female','5698563256','gandhipuram','priya@gmail.com','123','tre');
REPLACE INTO "register" ("cid", "age", "cname", "gender", "contact", "area", "email", "uname", "pass") VALUES
	('fghfgh','fghfg','ghfgh','Female','fghfgh','hf','ghfghfg','hfghfg','fhgh');
REPLACE INTO "register" ("cid", "age", "cname", "gender", "contact", "area", "email", "uname", "pass") VALUES
	('1','25','priya','Female','5698563256','gandhipuram','priya@gmail.com','123','123');
UNLOCK TABLES;
/*!40000 ALTER TABLE "register" ENABLE KEYS;*/


#
# Table structure for table 'status'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "status" (
  "cid" varchar(50) DEFAULT NULL,
  "uid" varchar(50) DEFAULT NULL,
  "area" varchar(50) DEFAULT NULL,
  "status" varchar(50) DEFAULT NULL,
  "description" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'status'
#

/*!40000 ALTER TABLE "status" DISABLE KEYS;*/
LOCK TABLES "status" WRITE;
REPLACE INTO "status" ("cid", "uid", "area", "status", "description") VALUES
	('1','w','tert','peding','sdfsdgfdgdfghh');
REPLACE INTO "status" ("cid", "uid", "area", "status", "description") VALUES
	('2','ds','dsdssd','Completed','dsd');
UNLOCK TABLES;
/*!40000 ALTER TABLE "status" ENABLE KEYS;*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
