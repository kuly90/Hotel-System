drop database if exists hotelSystem;
create database hotelSystem;
use hotelSystem;

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `CITY_ID` char(3) NOT NULL,
  `CITY_NAME` varchar(100) NOT NULL,
  `CITY_IMAGE` varchar(200) NOT NULL,
  `CITY_DESCRIPTION` varchar(500) NOT NULL,
  PRIMARY KEY (`CITY_ID`),
  UNIQUE KEY `CITY_ID_UNIQUE` (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `city` VALUES ('DLA','Đà Lạt','dalat.jpg','abc'),('DNA','Đà Nẵng','danang.jpg','abc'),('GLA','Gia Lai','gialai.jpg','abc'),('HAN','Hà Nội','hanoi.jpg','abc'),('HCM','Hồ Chí Minh','saigon.jpg','abc'),('HGI','Hà Giang','hagiang.jpg','abc'),('HLO','Hạ Long','halong.jpg','abc'),('HOI','Hội An','hoian.jpg','abc'),('HUE','Huế','hue.jpg','abc'),('NBI','Ninh Bình','ninhbinh.jpg','abc'),('NTR','Nha Trang','nhatrang.jpg','abc'),('PHQ','Phú Quốc','phuquoc.jpg','abc');


DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `HOTEL_ID` char(6) NOT NULL,
  `HOTEL_NAME` varchar(100) NOT NULL,
  `HOTEL_STAR` char(1) DEFAULT NULL,
  `HOTEL_ADRESS` varchar(225) NOT NULL,
  `HOTEL_PHONE` varchar(20) NOT NULL,
  `HOTEL_DESCRIPTION` varchar(1000) DEFAULT NULL,
  `HOTEL_STATUS` char(1) NOT NULL,
  `LANGUAGE` char(2) NOT NULL,
  `IMAGE_URL` varchar(255) DEFAULT NULL,
  `AVERAGE_OLD_PRICE` int(11) DEFAULT NULL,
  `AVERAGE_NEW_PRICE` int(11) DEFAULT NULL,
  `CATEGORY` char(1) DEFAULT NULL,
  `CITY_ID` char(3) NOT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID_UNIQUE` (`HOTEL_ID`),
  KEY `hot_cit_fk` (`CITY_ID`),
  CONSTRAINT `hot_cit_fk` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `hotel` VALUES ('ARIY01','Ariyana Beach Resort & Suites','5','107 Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng, Ngũ Hành Sơn Đà Nẵng',' 1900.6116','Sở hữu vị trí vàng tại bãi biển Bắc Mỹ An, Đà Nẵng – một trong những bãi biển đẹp nhất hành tinh, Khu căn hộ khách sạn Ariyana Beach Resort & Suites Đà Nẵng mang đến một phong cách sống hiện đại với những tiêu chuẩn quốc tế về thiết kế và dịch vụ. Khu căn hộ khách sạn Ariyana Beach Resort & Suites Đà Nẵng là một điểm nhấn quan trọng trong qui hoạch kiến trúc của thành phố Đà Nẵng – một thành phố đáng sống nhất tại Việt Nam. Dự án khu căn hộ khách sạn Ariyana Beach Resort & Suites Đà Nẵng được phát triển bởi Công ty Cổ phần Ariyana. Uy tín của Chủ đầu tư đã được khẳng định trong việc quản lý và phát triển nhiều dự án khách sạn và khu căn hộ cao cấp tại Việt Nam. Với dự án Khu căn hộ khách sạn Ariyana Beach Resort & Suites Đà Nẵng, Chủ đầu tư sẽ đảm bảo mang đến cho khách hàng sự an tâm và bình yên để tận hưởng cuộc sống!','1','vi','ariyana.jpg',3000000,1500000,'2','DNA'),('ARIY02','Ariyana Beach Resort & Suites','5','107 Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng, Ngũ Hành Sơn Đà Nẵng',' 1900.6116','dsgdfgfgh','1','en','ariyana.jpg',130,65,'2','DNA'),('AVAR01','AVARTAR','4','104 Hoàng Kế Viêm, Phường Mỹ An, Quận Ngũ Hành Sơn, Thành phố Đà Nẵng','0236 3939888','Tọa lạc tại thành phố Đà Nẵng, cách Sân bay Quốc tế Đà Nẵng chỉ 5 km, Avatar Hotel có hồ bơi ngoài trời, trung tâm thể dục và spa. Quý khách có thể dùng bữa tại nhà hàng trong khuôn viên khách sạn.','1','vi','avatar.jpg',1500000,750000,'1','DNA'),('AVAR02','AVARTAR','4','104 Hoang Ke Viem, My An ward, Ngu Hanh Son District, Da Nang city, Vietnam','+84 236 3939888','AVATAR','1','en','avatar.jpg',60,30,'1','DNA'),('BALC01','BALCONA','4','288 Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng','02366 29 92 92','Dù chỉ mới “nên duyên” với thành phố biển xinh đẹp nhưng Baconal đã nhanh chóng trở thành một địa chỉ tin cậy trong sổ tay của khách du lịch mỗi khi đến với Đà Nẵng.','1','vi','balcona.jpg',1000000,600000,'1','DNA'),('BALC02','BALCONA','4','288 Vo Nguyen Giap Street, My An Ward, Ngu Hanh Son District, Da Nang','+84 2366 29 92 92','dfgfdgfhgfh','1','en','balcona.jpg',50,30,'1','DNA'),('FIVI01','FIVITEL','3','388  Trần Hưng Đạo, An Hải Tây, Sơn Trà, Đà Nẵng','0236 3555 688','Fivitel là khách sạn đạt chuẩn 4 sao, tọa lạc bên cạnh cây cầu Trần Thị Lý xinh đẹp, khách sạn Fivitel với lối thiết kế đẳng cấp vừa mang nét truyền thống Á Đông vừa mang dáng dấp cổ điển của kiến trúc Châu Âu, có tổng cộng 157 phòng có ban công, đầy đủ tiện nghi và sang trọng. Tất cả các phòng có hướng nhìn trực diện ra sông với những cây cầu nổi tiếng và toàn cảnh thành phố. Phòng được trải thảm với tông màu nhẹ nhàng, giường ngủ bằng gỗ nguyên khối cùng trang trí hoa văn tinh tế sẽ mang đến cho quý khách một giấc ngủ ngon và những giấc mơ thật đẹp.','1','vi','fivitel.jpg',1000000,500000,'1','DNA'),('FIVI02','FIVITEL','3','388  Tran Hung Dao Street, Son Tra  District, Danang City','+84 236 3555 688','FIVITEL','1','en','fivitel.jpg',50,25,'1','DNA'),('GODE01','GOLDEN BAY','5','01 Lê Văn Duyệt, Nại Hiên Đông, Sơn Trà, Đà Nẵng','0236 3 878 999','Chỉ nghe qua cái tên, chắc hẳn các bạn hình dung được sự sang trọng của Danang Golden Bay – khách sạn dát vàng duy nhất của Đà Nẵng. Với trang nội thất, thiết bị cùng tường dát vàng, Danang Golden Bay mang đến cho Quý khách sự sang trọng, thanh lịch và những trải nghiệm dịch vụ hoàn hảo.','1','vi','goldenbay.jpg',2000000,1500000,'1','DNA'),('GODE02','GOLDEN BAY','5','01 Le Van Duyet Street, Nai Hien Dong, Son Tra , Da Nang.','+84 236 3 878 999','PLACE TO ENJOY YOUR LIFE','1','en','goldenbay.jpg',100,75,'1','DNA'),('GRAN01','GRAND CITYTEL','3','532, đường 2 tháng 9, Phường Hòa Cường Nam, Quận Hải Châu, TP. Đà Nẵng','023 6353 9279','Với niềm tự hào là hệ thống khách sạn uy tín được xây dựng và thiết kế hướng đến khách hàng là các du khách trẻ, đam mê du lịch và khám phá, hệ thống khách sạn Cititel tập trung vào trải nghiệm kỳ nghỉ của khách sạn với không gian phòng khách hiện đại và phong cách, dịch vụ khách sạn chuyên nghiệp và nổi bật cũng như tận dụng ưu điểm vị trí ngay tại trung tâm của trung tâm thành phố.','1','vi','grandcitytel.jpg',2000000,1000000,'1','DNA'),('GRAN02','GRAND CITYTEL','3','532 2/9  Street, Hai Chau  District, Danang City','+84 023 6353 9279','fdghfhfghj','1','en','grandcitytel.jpg',90,45,'1','DNA'),('GREE01','KHÁCH SẠN XANH','4','238 Bạch Đằng, Phước Ninh, Hải Châu, Đà Nẵng','0236 3223 399','Green Plaza Hotel là một khách sạn 4-sao và một trong những khách sạn thành phố cao cấp đầu tiên tại Đà Nẵng, nằm ở bờ sông Hàn quyến rũ. Hơn 173 phòng và dãy phòng sang trọng có thể được tìm thấy bên trong tòa nhà 22 tầng này, đi kèm với một hệ thống các văn phòng cho thuê, trung tâm mua sắm và dịch vụ đa dạng.','1','vi','greenplaza.png',1600000,1000000,'1','DNA'),('GREE02','GREEN PLAZA HOTEL','4','238 Bach Dang Street, Phuoc Ninh ward, Hai Chau District, Da Nang city, Vietnam','+84 236 3223 399','GREEn PLAZA','1','en','greenplaza.png',80,50,'1','DNA'),('MAXI01','MAXIMILIAN','4','222 Võ Nguyên Giáp, Ngu Hanh Son, Đà Nẵng','0236 3 798 799','Khách sạn MAXIMILAN biển Đà Nẵng, một trong những khách sạn với cơ sở vật chất cùng dịch vụ tương đương 5 sao được tọa lạc ngay vị trí đắc địa biển Đà Nẵng, trên con đường tỷ đô Võ Nguyên Giáp, tòa nhà 22 tầng được thiết kế công phu, tinh xảo và độc đáo, hoàn hảo đến từng chi tiết với cơ sở vật chất hiện đại, đẳng cấp bậc nhất dành cho du khách đi công vụ hay nghĩ dưỡng khi đến Đà Nẵng.','1','vi','maximilian.jpg',1900000,1000000,'1','DNA'),('MAXI02','MAXIMILIAN','4','222 Võ Nguyên Giáp, Ngu Hanh Son, Đà Nẵng','+84 236 3 798 799','dsgdffghgf','1','en','maximilian.jpg',90,50,'1','DNA'),('MITO01','MINH TOÀN','3','306 2/9, Hải Châu, Đà Nẵng','0236 3662288','Tọa lạc tại vị trí lý tưởng ngay tại trung tâm thành phố Đà Nẵng, Khách sạn Minh Toàn Galaxy với đẳng cấp 4 sao hân hạnh chào đón tất cả quý khách đến với dịch vụ lưu trú hoàn hảo, với cơ sở vật chất hiện đại và các dịch vụ chuyên nghiệp.','1','vi','minhtoan.jpg',2000000,900000,'1','DNA'),('MITO02','MINH TOAN','3','306 2/9  Street, Hai Chau  District, Danang City','+84 236 3662288','Minh toan','1','en','minhtoan.jpg',90,40,'1','DNA'),('MUON01','MƯỜNG THANH','5','270 Võ Nguyên Giáp, Mỹ An, Đà Nẵng','0236 222 33 44','Được xây dựng theo tiêu chuẩn 5 sao, Khách sạn Mường Thanh Luxury Đà Nẵng nằm bên bờ biển Mỹ Khê xinh đẹp, sẽ mang đến cho du khách một không gian sang trọng, quý phái khi đển thăm thành phố Đà Nẵng.','1','vi','muongthanh.jpg',2000000,1000000,'1','DNA'),('MUON02','MUONG THANH','5','270 Vo Nguyen Giap Street, My An ward, Ngu Hanh Son District, Da Nang city, Vietnam','+84 236 222 33 44','MUONG THANH','1','en','muongthanh.jpg',100,50,'1','DNA'),('NOVO01','NOVOTEL','5','36 Bạch Đằng, Street, Hải Châu, Đà Nẵng','0236 392 9999','Tọa lạc trên bờ phía Tây của Sông Hàn tại trung tâm thành phố Đà Nẵng, khách sạn 37 tầng này cung cấp các phòng nghỉ hiện đại chỉ cách Ga Đà Nẵng 1 km và cách Sân bay Quốc tế Đà Nẵng 2 km. Wi-Fi được cung cấp miễn phí cho khách.','1','vi','novotel.jpg',2300000,1300000,'1','DNA'),('NOVO02','NOVOTEL','5','36 Bach Dang Street, Hai Chau District, Danang City','+84 236 392 9999','PREMIER HAN RIVER','1','en','novotel.jpg',110,60,'1','DNA'),('SAIG01','SAIGON MORIN ','4','hfgh','7898','dgdfg','1','vi','saigonmorin.jpg',0,0,'1','HUE'),('VIPE01','VINPEARL','5','7 Trường Sa, Hải Hoà, Ngũ Hành Sơn, Đà Nẵng','0236 396 8888','Tọa lạc “tựa sơn hướng thủy” bên bờ biển Non Nước thơ mộng và thắng cảnh kiệt tác thiên nhiên núi Ngũ Hành Sơn, Vinpearl Luxury Đà Nẵng mang nét hài ','1','vi','vinpearl.png',3500000,2300000,'1','DNA'),('VIPE02','VINPEARL','5','7 Truong Sa Street, Ngu Hanh Son District, Danang City','+84 236 396 8888','VINPEARL','1','en','vinpearl.png',150,100,'1','DNA');


DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `ROOM_ID` char(6) NOT NULL,
  `ROOM_LOCATION` varchar(100) NOT NULL,
  `ROOM_DESCRIPTION` varchar(500) DEFAULT NULL,
  `ROOM_STATUS` char(1) NOT NULL,
  `LANGUAGE` char(2) NOT NULL,
  `IMAGE_URL` varchar(500) DEFAULT NULL,
  `OLD_PRICE` int(11) DEFAULT NULL,
  `NEW_PRICE` int(11) DEFAULT NULL,
  `CATEGORY` char(1) DEFAULT NULL,
  `HOTEL_ID` char(3) NOT NULL,
  PRIMARY KEY (`ROOM_ID`),
  UNIQUE KEY `ROOM_ID_UNIQUE` (`ROOM_ID`),
  KEY `rom_hol_fk` (`HOTEL_ID`),
  CONSTRAINT `rom_hol_fk` FOREIGN KEY (`HOTEL_ID`) REFERENCES `hotel` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `image_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_banner` (
  `IMAGE_BANNER_ID` char(9) NOT NULL,
  `IMAGE_BANNER_URL` varchar(250) DEFAULT NULL,
  `IMAGE_BANNER_CONTENT` varchar(250) DEFAULT NULL,
  `IMAGE_BANNER_TYPE` char(1) DEFAULT NULL,
  `CITY_ID` char(3) DEFAULT NULL,
  `HOTEL_ID` char(6) DEFAULT NULL,
  `LANGUAGE` char(2) DEFAULT NULL,
  PRIMARY KEY (`IMAGE_BANNER_ID`),
  UNIQUE KEY `IMAGE_BANNER_ID_UNIQUE` (`IMAGE_BANNER_ID`),
  KEY `ima_cit_fk` (`CITY_ID`),
  KEY `ima_hot_fk` (`HOTEL_ID`),
  CONSTRAINT `ima_cit_fk` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`),
  CONSTRAINT `ima_hot_fk` FOREIGN KEY (`HOTEL_ID`) REFERENCES `hotel` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `image_banner` VALUES ('BANARI01','ariyanabanner.jpg','Tuyệt Tác Hoàn Hảo','2','DNA','ARIY01','vi'),('BANARI02','ariyanabanner.jpg','Perfect Of Gif','2','DNA','ARIY02','en'),('BANDLA01','dalatbanner.jpg','Thành Phố Sương Mù, Thành Phố Của Tình yêu','1','DLA',NULL,'vi'),('BANDLA02','dalatbanner.jpg','City Of Fog, City Of Love','1','DLA',NULL,'en'),('BANDNA01','cauvang.png','Thành Phố Của Những Chiếc Cầu','1','DNA',NULL,'vi'),('BANDNA02','cauvang.png','City Of Bridge','1','DNA',NULL,'en'),('BANGOL01','godenbaybanner.jpg','Sang trọng Quý Phái','2','DNA','GODE01','vi'),('BANGOL02','godenbaybanner.jpg','Luxury And Noble','2','DNA','GODE02','en'),('BANHAN01','vhhanoi.jpg','Nơi Hội Tụ Văn Hóa Việt Nam','1','HAN',NULL,'vi'),('BANHAN02','vhhanoi.jpg','Cappital Of Cultural','1','HAN',NULL,'en'),('BANHOI01','hoianbanner.jpg','Phố Cổ, Vẻ Đẹp Thời Gian Ngưng Đọng','1','HOI',NULL,'vi'),('BANHOI02','hoianbanner.jpg','Ancient City. The Beauty Of time Stopped','1','HOI',NULL,'en'),('BANHUE01','huebanner.jpg','Kinh Đô Cổ Kính, Thành Phố Di Sản','1','HUE',NULL,'vi'),('BANHUE02','huebanner.jpg','The City Of Festyval','1','HUE',NULL,'en'),('BANMUO01','muongthanhbanner.jpg','Hãy Sống Theo Cách Của Bạn','2','DNA','MUON01','vi'),('BANMUO02','muongthanhbanner.jpg','Make Life Your Way','2','DNA','MUON02','en'),('BANNVO01','novotelbanner.jpg','Đẳng Cấp Thượng Hạng','2','DNA','NOVO01','vi'),('BANNVO02','novotelbanner.jpg','Premium Class Hotel','2','DNA','NOVO01','en'),('BANVIN01','vinpearlbanner.jpg','Nghỉ Dưỡng Cao Cấp Hàng Đầu','2','DNA','VIPE01','vi'),('BANVIN02','vinpearlbanner.jpg','Leading luxury resort','2','DNA','VIPE02','en');


DROP TABLE IF EXISTS `type_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_hotel` (
  `TYPE_ID` char(5) NOT NULL,
  `TYPE_NAME` varchar(100) NOT NULL,
  `CATEGORY` char(1) NOT NULL,
  `LANGUAGE` char(2) NOT NULL,
  `DATA_TAB` char(4) DEFAULT NULL,
  `CLASS_CSS` varchar(100) DEFAULT NULL,
  `CLASS_CSS2` varchar(45) DEFAULT NULL,
  `IMAGE` varchar(225) DEFAULT NULL,
  `CONTENT` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`),
  UNIQUE KEY `TYPE_ID_UNIQUE` (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `type_hotel` VALUES ('1RES0','NHÀ HÀNG','3','vi','tab1','flaticon-restaurant icon','tab-content active show','restaurant.jpg','Có bằng chứng cho thấy trong một số điều kiện nhất định, những người mắc COVID-19 dường như có thể lây nhiễm bệnh sang người khác với khoảng cách xa hơn 6 feet.'),('1RES1','RESTAURANT','3','en','tab1','flaticon-restaurant icon','tab-content active show','restaurant.jpg','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('2BAR0','BAR-CLUB','3','vi','tab2','flaticon-cup icon','tab-content','sky36.jpg',NULL),('2BAR1','BAR-CLUB','3','en','tab2','flaticon-cup icon','tab-content','sky36.jpg','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('3PIC0','ĐẶT XE','3','vi','tab3','flaticon-car icon','tab-content','taxi.png',NULL),('3PIC1','PICK-UP','3','en','tab3','flaticon-car icon','tab-content','taxi.png','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('4SWI0','BỂ BƠI','3','vi','tab4','flaticon-swimming icon','tab-content','sky36.jpg',NULL),('4SWI1','SWIMMING-POOL','3','en','tab4','flaticon-swimming icon','tab-content','sky36.jpg','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('5SPA0','SPA','3','vi','tab5','flaticon-massage icon','tab-content','sky36.jpg',NULL),('5SPA1','SPA','3','en','tab5','flaticon-massage icon','tab-content','sky36.jpg','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('6GYM0','PHÒNG GYM','3','vi','tab6','flaticon-bicycle icon','tab-content','sky36.jpg',NULL),('6GYM1','GYM','3','en','tab6','flaticon-bicycle icon','tab-content','sky36.jpg','There is evidence that under certain conditions, people with COVID-19 seem to be able to infect others more than 6 feet away.'),('HO1S0','Khách Sạn 1 Sao','1','vi',NULL,NULL,NULL,NULL,NULL),('HO1S1','One Star Hotel','1','en',NULL,NULL,NULL,NULL,NULL),('HO2S0','Khách Sạn 2 Sao','1','vi',NULL,NULL,NULL,NULL,NULL),('HO3S0','Khách Sạn 3 Sao','1','vi',NULL,NULL,NULL,NULL,NULL),('HO4S0','Khách Sạn 4 Sao','1','vi',NULL,NULL,NULL,NULL,NULL),('HO5S0','Khách Sạn 5 Sao','1','vi',NULL,NULL,NULL,NULL,NULL),('RE1S0','Resort 1 Sao','2','vi',NULL,NULL,NULL,NULL,NULL),('RE2S0','Resort 2 Sao','2','vi',NULL,NULL,NULL,NULL,NULL),('RE3S0','Resort 3 Sao','2','vi',NULL,NULL,NULL,NULL,NULL),('RE4S0','Resort 4 Sao','2','vi',NULL,NULL,NULL,NULL,NULL);


DROP TABLE IF EXISTS `tour_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_category` (
  `CATEGORY_ID` char(1) NOT NULL,
  `CATEGORY_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  UNIQUE KEY `CATEGORY_ID_UNIQUE` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `tour_category` VALUES ('A','DU LỊCH MIỀN BẮC'),('B','DU LỊCH MIỀN TRUNG'),('C','DU LỊCH MIỀN NAM'),('D','DU LỊCH NƯỚC NGOÀI');


DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `TOUR_ID` char(6) NOT NULL,
  `TOUR_NAME` varchar(225) NOT NULL,
  `CATEGORY_ID` char(1) NOT NULL,
  PRIMARY KEY (`TOUR_ID`),
  UNIQUE KEY `TOUR_ID_UNIQUE` (`TOUR_ID`),
  KEY `tou_tou_fk` (`CATEGORY_ID`),
  CONSTRAINT `tou_tou_fk` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `tour_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

NSERT INTO `tour` VALUES ('TOU001','HÀ GIANG - CAO BẰNG - BẮC CẠN - THÁI NGUYÊN Thời gian: 5 ngày 4 đêm / Phương tiện: Ô tô / Khởi hành: thứ 4 hàng tuần','A'),('TOU002','Tour Hà Nội - Tràng An – Đảo KONG – Chùa Bái Đính - Hạ Long – KDL Yên Tử 3N2Đ','A'),('TOU003','Tour du lịch Hà Nội - Hồ Ba Bể - Thác Bản Giốc (3N/2Đ). Phương Tiện xe Buýt','A'),('TOU004','Tour Đà Nẵng- Huế : thiên nhiên tuyệt vời, thơ mộng cùng dòng lịch sử lâu đời.','B'),('TOU005','Tour du lịch 4N3Đ- Đà Nẵng - Hội An - Cù Lao Chàm - Bà Nà. Phương tiện xe máy và Thuyền Cano','B'),('TOU006','ĐÀ NẴNG – THIỀN VIỆN TRÚC LÂM - CẢNH DƯƠNG - LĂNG CÔ. Tour du lịch trọn gói trong ngày','B'),('TOU007','Tour Miền Tây 4N3Đ - Về với sông nước hữu tình! Phương tiện chủ yếu bằng cano và thuyền','C'),('TOU008','Tour Nha Trang 4N3Đ - Khám phá phong cảnh nên thơ tuyệt vời. Phương tiện xe Buýt và cano','C'),('TOU009','Du lịch Đà Lạt 4N3Đ - Ghé thăm Paris thu nhỏ của Việt Nam! Thàng phố ngàn hoa, nơi tình yêu bắt đầu','C'),('TOU010','Tour Thái Lan 4N3D: Bangkok - Pattaya. Sức sống ở Đông Nam Á.','D'),('TOU011','Tour Malaysia 4N3D: Hành Trình Singapore - Malaysia. Du ngoạn đảo quốc sư tử','D'),('TOU012','Tour Nhật Bản 6N5D: Osaka - Nara - Kyoto - Toyohashi - Yamanashi - Tokyo','D');


DROP TABLE IF EXISTS `tour_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_image` (
  `TOUR_IMAGE_ID` char(6) NOT NULL,
  `TOUR_IMAGE_URL` varchar(225) NOT NULL,
  `TOUR_ID` char(6) NOT NULL,
  PRIMARY KEY (`TOUR_IMAGE_ID`),
  UNIQUE KEY `TOUR_ID_UNIQUE` (`TOUR_IMAGE_ID`),
  KEY `tou_IMG_fk` (`TOUR_ID`),
  CONSTRAINT `tou_IMG_fk` FOREIGN KEY (`TOUR_ID`) REFERENCES `tour` (`TOUR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `tour_image` VALUES ('000001','tour001.jpg','TOU001'),('000002','tour002.jpg','TOU002'),('000003','tour003.jpg','TOU003'),('000004','tour004.png','TOU004'),('000005','tour005.jpg','TOU005'),('000006','tour006.jpg','TOU006'),('000007','tour007.jpg','TOU007'),('000008','tour008.jpg','TOU008'),('000009','tour009.jpg','TOU009'),('000010','tour010.jpg','TOU010'),('000011','tour011.jpg','TOU011'),('000012','tour012.jpg','TOU012');

