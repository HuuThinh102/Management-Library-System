-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: qlthuvien
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `khosach`
--

DROP TABLE IF EXISTS `khosach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khosach` (
  `IDS` varchar(10) NOT NULL,
  `tenSach` varchar(145) NOT NULL,
  `tacGia` varchar(45) NOT NULL,
  `soLuong` int NOT NULL,
  PRIMARY KEY (`IDS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khosach`
--

LOCK TABLES `khosach` WRITE;
/*!40000 ALTER TABLE `khosach` DISABLE KEYS */;
INSERT INTO `khosach` VALUES ('S0001','Thực hành Javascript (cho Web)','Nguyễn, Trường Sinh',20),('S0002','Thực hành javascript Dành cho sinh viên','Nguyễn Trường Sinh',10),('S0003','Lập trình hướng đối tượng Java','Đoàn Văn Ban',20),('S0004','Java programming for Android developers','Burd, Barry A',15),('S0005','Small Java : How to program','Deitel, H. M',5),('S0006','Lập trình game 3D với Java','Nguyễn Thanh Tuấn',10),('S0007','Data structures & problem solving using Java','Weiss, Mark Allen',10),('S0008','Understanding C++ for MFC','Raposa, Richard F.',7),('S0009','Văn nghệ Cần Thơ','Hội Văn học nghệ thuật, 2018',5),('S0010','Journal of medical research.','Trường Đại học Y Hà Nội, 2018',5),('S0011','Thủy sản Việt Nam. Số 21','Trung ương Hội Nghề cá Việt Nam, 2018',3),('S0012','Womens health. Vol. 15, No. 6','New York: Hearst Magazine, 2018',2),('S0013','Chemical industry magazine.','Tổng công ty hóa chất Việt Nam',5),('S0014','The business of hospitality and travel','Cook, Roy A.',1),('S0015','Implementation with C and Python','Ünsalan, Cem',1),('S0016','Engineering applications of pneumatics and hydraulics','Turner, Euring Ian C.',1),('S0017','Essentials of management information systems','Laudon, Kenneth C.',16),('S0018','A handbook of agile software craftsmanship','Upper Saddle River, NJ: Prentice Hall, 2009',15),('S0019','Foundations of Python network programming','Rhodes, Brandon',3),('S0020','Python for kids for dummies','Scott, Brendan',2),('S0022','Hãy can đảm và tốt bụng','Thành phố Hồ Chí Minh: Trẻ, 2010',2),('S0023','Bảy sắc màu hạnh phúc = Blessing of the rainbow','Cha, Norbert D. Y.',10),('S0024','Cõi vọng : Thơ','Phạm Thị Kim Khánh',1),('S0025','Ngược dòng sông Lô : Thơ','Nguyễn, Long',10),('S0026','Hẹn với hoa hồng : Tập thơ','Trần, Thị Nương',2),('S0027','Giáo trình lịch sử khẩn hoang Nam Bộ','Trần Minh Thuận',4),('S0028','Pháp luật về phát triển quỹ đất : Luận văn Thạc sĩ. Chuyên ngành Luật kinh tế','Nguyễn Vĩnh Thịnh',5),('S0029','Công nghệ vi sinh ứng dụng','Trần Minh Tâm',6),('S0030','Văn hóa Việt nhìn từ tiếng Việt : Dích dắc dặt dìu dư dí dỏm','Lê, Minh Quốc',7),('S0040','Doraemon','Fuji',1);
/*!40000 ALTER TABLE `khosach` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_numbook` BEFORE UPDATE ON `khosach` FOR EACH ROW begin
	declare errorM varchar(255);
    set errorM = concat("Sách trong kho đã hết");
    if new.soLuong < 0 then
		signal sqlstate '45000'
			set message_text = errorM;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `muonsach`
--

DROP TABLE IF EXISTS `muonsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muonsach` (
  `IDM` int NOT NULL AUTO_INCREMENT,
  `ID` varchar(10) NOT NULL,
  `IDS` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `dateReturn` date NOT NULL,
  PRIMARY KEY (`IDM`),
  KEY `IDS_idx` (`IDS`),
  KEY `ID_idx` (`ID`),
  CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`),
  CONSTRAINT `IDS` FOREIGN KEY (`IDS`) REFERENCES `khosach` (`IDS`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muonsach`
--

LOCK TABLES `muonsach` WRITE;
/*!40000 ALTER TABLE `muonsach` DISABLE KEYS */;
INSERT INTO `muonsach` VALUES (8,'B2017082','S0015','2023-04-20','2023-04-23'),(9,'B2017082','S0008','2023-04-22','2023-04-22');
/*!40000 ALTER TABLE `muonsach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` varchar(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('B1800004','0905633674','Quân','user'),('B1800016','0949342344','Ly','user'),('B1800024','0995632384','Lâm','user'),('B1802393','0984773631','Tri','user'),('B1893377','0902134564','Hoa','user'),('B1900033','0918647584','Ngọc','user'),('B1900034','0913467584','Trân','user'),('B1917424','0912492384','Phát','user'),('B1932492','0923471236','Long','user'),('B1947604','0923047350','Hải ','user'),('B2012324','0914567345','Khoa','user'),('B2016034','0919674564','Như','user'),('B2017014','0994852384','Anh','user'),('B2017034','1234','Nam','user'),('B2017054','0912358384','Tuấn','user'),('B2017082','1234','Thinh','user'),('B2017234','0912412384','Hồng','user'),('B2023443','0912312346','Thi','user'),('tt01','123','Admin','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'qlthuvien'
--

--
-- Dumping routines for database 'qlthuvien'
--
/*!50003 DROP FUNCTION IF EXISTS `searchBook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `searchBook`(tensach varchar(45)) RETURNS int
    DETERMINISTIC
begin
	if (tensach in (select tenSach from qlthuvien.khosach))
    then return 1;
    else return 0;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `searchUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `searchUser`(id varchar(45)) RETURNS int
    DETERMINISTIC
begin
	if (id in (select ID from qlthuvien.users))
    then return 1;
    else return 0;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHANGE_PASS_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHANGE_PASS_USER`(in id varchar(45), old_pass varchar(45), new_pass varchar(45))
begin
    update qlthuvien.users set users.password=new_pass where users.ID=id and users.password=old_pass;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `THEM_BOOK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `THEM_BOOK`(in ids varchar(45), tensach varchar(45),tacgia varchar(45),numbook int)
begin
	insert into qlthuvien.khosach values(ids,tensach,tacgia,numbook);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `THEM_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `THEM_USER`(in id varchar(45), password varchar(45),ten varchar(45))
begin
	Insert into qlthuvien.users(`ID`,`password`,`name`) values(id,password,ten);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UPDATE_BOOK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_BOOK`(in ids varchar(45),tensach varchar(45),tacgia varchar(45),soluong int)
begin
	update qlthuvien.khosach set khosach.tenSach = tensach, khosach.tacGia = tacgia, khosach.soLuong = soluong  where khosach.IDS = ids;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XOA_BOOK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XOA_BOOK`(in ids varchar(45))
begin
	delete from qlthuvien.khosach where khosach.IDS = ids;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XOA_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XOA_USER`(in id varchar(45))
begin
    delete from qlthuvien.users where users.ID = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 21:02:43
