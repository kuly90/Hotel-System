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

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `HOTEL_ID` CHAR(6) NOT NULL PRIMARY KEY,
  `HOTEL_NAME` NVARCHAR(100) NOT NULL,
  `HOTEL_ADRESS` NVARCHAR(225) NOT NULL,
  `HOTEL_DESCRIPTION` NVARCHAR(500),
  `HOTEL_PHONE` NVARCHAR(20) NOT NULL,
  `HOTEL_STATUS` CHAR(1) NOT NULL,
  `HOTEL_STAR` CHAR(1) NOT NULL,
  `LANGUAGE` CHAR(2) NOT NULL,
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
  `IMAGE_BANNER_TYPE` CHAR(1),
  `CITY_ID` CHAR(3),
  `HOTEL_ID` CHAR(6),
  `LANGUAGE` CHAR(2),
  UNIQUE KEY `IMAGE_BANNER_ID_UNIQUE` (`IMAGE_BANNER_ID`),
  CONSTRAINT ima_cit_fk FOREIGN KEY (CITY_ID) REFERENCES city(CITY_ID),
  CONSTRAINT ima_hot_fk FOREIGN KEY (HOTEL_ID) REFERENCES hotel(HOTEL_ID)
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
  `DATA_TAB` CHAR(4) ,
  `CLASS_CSS` NVARCHAR(100),
  `CLASS_CSS2` NVARCHAR(100),
  `IMAGE` NVARCHAR(225),
  `CONTENT` NVARCHAR(500),
  UNIQUE KEY `TYPE_ID_UNIQUE` (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

DROP TABLE IF EXISTS `tour_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_category` (
  `CATEGORY_ID` CHAR(1) NOT NULL PRIMARY KEY,
  `CATEGORY_NAME` NVARCHAR(100) NOT NULL,
  UNIQUE KEY `CATEGORY_ID_UNIQUE` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `TOUR_ID` CHAR(6) NOT NULL PRIMARY KEY,
  `TOUR_NAME` NVARCHAR(225) NOT NULL,
  `CATEGORY_ID` CHAR(1) NOT NULL,
  UNIQUE KEY `TOUR_ID_UNIQUE` (`TOUR_ID`),
  CONSTRAINT tou_tou_fk FOREIGN KEY (CATEGORY_ID) REFERENCES tour_category(CATEGORY_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;

DROP TABLE IF EXISTS `tour_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_image` (
  `TOUR_IMAGE_ID` CHAR(6) NOT NULL PRIMARY KEY,
  `TOUR_IMAGE_URL` NVARCHAR(225) NOT NULL,
  `TOUR_ID` CHAR(6) NOT NULL,
  UNIQUE KEY `TOUR_ID_UNIQUE` (`TOUR_IMAGE_ID`),
  CONSTRAINT tou_IMG_fk FOREIGN KEY (TOUR_ID) REFERENCES tour(TOUR_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
