drop database if exists hotelSystem;
create database hotelSystem;
use hotelSystem;

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `CITY_ID` CHAR(3) NOT NULL PRIMARY KEY,
  `CITY_NAME` NVARCHAR(100) NOT NULL,
  `CITY_IMAGE` NVARCHAR(200) NOT NULL,
  `CITY_DESCRIPTION` NVARCHAR(500) NOT NULL,
  UNIQUE KEY `CITY_ID_UNIQUE` (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

CREATE TABLE `hotel` (
  `HOTEL_ID` CHAR(6) NOT NULL PRIMARY KEY,
  `HOTEL_NAME` NVARCHAR(100) NOT NULL,
  `HOTEL_ADRESS` NVARCHAR(225) NOT NULL,
  `HOTEL_PHONE` NVARCHAR(20) NOT NULL,
  `HOTEL_STATUS` CHAR(1) NOT NULL,
  `CITY_ID` CHAR(3) NOT NULL,
  UNIQUE KEY `HOTEL_ID_UNIQUE` (`HOTEL_ID`),
  CONSTRAINT hot_cit_fk FOREIGN KEY (CITY_ID) REFERENCES city(CITY_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

DROP TABLE IF EXISTS `image_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_banner` (
  `IMAGE_BANNER_ID` CHAR(9) NOT NULL PRIMARY KEY,
  `IMAGE_BANNER_URL` NVARCHAR(250),
  `IMAGE_BANNER_CONTENT` NVARCHAR(250),
  `CITY_ID` CHAR(3),
  UNIQUE KEY `IMAGE_BANNER_ID_UNIQUE` (`IMAGE_BANNER_ID`),
  CONSTRAINT ima_cit_fk FOREIGN KEY (CITY_ID) REFERENCES city(CITY_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

DROP TABLE IF EXISTS `type_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_hotel` (
  `TYPE_ID` CHAR(5) NOT NULL PRIMARY KEY,
  `TYPE_NAME` NVARCHAR(100) NOT NULL,
  `CATEGORY` CHAR(1) NOT NULL,
  `LANGUAGE` CHAR(2) NOT NULL,
  UNIQUE KEY `TYPE_ID_UNIQUE` (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;


