-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: senda
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','12345678','Huỳnh Loan'),(2,'manager','123','Loan');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardnew`
--

DROP TABLE IF EXISTS `boardnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boardnew` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_link` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardnew`
--

LOCK TABLES `boardnew` WRITE;
/*!40000 ALTER TABLE `boardnew` DISABLE KEYS */;
INSERT INTO `boardnew` VALUES (1,'Cách chăm sóc cây sen đá','Tùy vào môi trường trường trồng (nhiệt độ trong phòng hoặc ngoài ban công đầy nắng) mà lượng nước tưới sẽ khác nhau, nếu để cây ở nơi khuất nắng thì không nên cho nước đọng lại trên lá sen đá. Cách 2 – 5 ngày thì tưới 1 lần (tùy vào độ thấm hút của đất) <br> <br>Nếu cây đã lớn tuổi thì nên giâm cây mới. Giâm bằng lá. Chỉ cần cấm lá nghiêng (hoặc đặt ngang) lên hỗn hợp đất pha sẵn là trồng được. Lưu ý: giữ đất ẩm vừa phải để dễ dàng ra rễ hơn. Việc tách cây con tiến hành khi đảo chậu, chọn cắt lấy chồi con bên cạnh rồi trồng vào chậu khác.','senda_xanh.jpg','Lê Thạch','2020-06-05'),(2,'Ý nghĩa cây sen đá','Sen đá mang ý nghĩa như loài hoa tình yêu về một tình yêu bền vững, một tình yêu trọn đời, mãi mãi, không thay đổi theo thời gian. Đúng như sức sống mãnh liệt của cây, không đòi hỏi chăm sóc nhiều, cây vẫn sống khoẻ mạnh<br><br>Từ sức sống của  sen đá, người ta còn quan niêm rằng: Mọi việc trong cuộc sống đều có cách giải quyết miễn là con người ta biết dũng cảm, mạnh mẽ đối diện với nó như chính  sen đá đối diện với mọi điều kiện sống của nó. Chuyện gì cũng có thể xảy ra, chuyện gì cũng có thể biến không thành có được. Vì thế, hãy tin vào cuộc sống này và hãy luôn sống mạnh mẽ như  sen đá!','senda_xanh.jpg','Lan Ngọc','2020-05-22'),(4,'Top 10 cây phong thủy thường trồng','Cây phong thủy có tác dụng tốt trong việc vượng vận không chỉ cải thiện tài lộc, tăng cường tình duyên, thu hút quý nhân, hanh thông sức khỏe… trăm đường lợi. Sau đây là top 10 cây phong thủy có nhiều công dụng, có thể đặt được ở nhiều vị trí mà bạn nên sở hữu để may mắn và nhiều tài lộc.','senda_xanh.jpg','Kim Vy','2020-05-22');
/*!40000 ALTER TABLE `boardnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Xương rồng',NULL),(2,'Sen đá',NULL),(3,'Chậu cây',1),(4,'Phụ kiện trang trí',1),(5,'Sản Phẩm Mới',NULL),(6,'Sản Phẩm Bán Chạy',NULL),(7,'Sản Phẩm Giảm Giá',NULL);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exchange_id` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exchange_id` (`exchange_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`exchange_id`) REFERENCES `exchange` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'Kim Vy','kimvy@gmail.com','ok','2021-04-10'),(2,2,'Loan Huỳnh','loan@gmail.com','j z tr','2021-05-11'),(4,2,'one piece','htploan.19it2@vku.udn.vn','Ừm','2021-08-02');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange`
--

DROP TABLE IF EXISTS `exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_link` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange`
--

LOCK TABLES `exchange` WRITE;
/*!40000 ALTER TABLE `exchange` DISABLE KEYS */;
INSERT INTO `exchange` VALUES (1,'Kim Vy','kimvy@gmail.com','Kinh nghiệm trồng sen đá','Cũng không có kinh nghiệm gì hihi','section6.jpg','2021-04-10'),(2,'Loan Huỳnh','loan@gmail.com','Kinh nghiệm trồng xương rồng','Cũng không có kinh nghiệm gì hihi','section2.jpg','2021-05-11');
/*!40000 ALTER TABLE `exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered`
--

DROP TABLE IF EXISTS `ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `ordered_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `ordered_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered`
--

LOCK TABLES `ordered` WRITE;
/*!40000 ALTER TABLE `ordered` DISABLE KEYS */;
INSERT INTO `ordered` VALUES (1,1,4,3),(2,1,6,2),(3,2,5,2),(4,2,2,1),(5,2,8,1);
/*!40000 ALTER TABLE `ordered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` int DEFAULT NULL,
  `image_link` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Xương rồng lê gai','40.000',1,'Xương rồng mini','Cây xương rồng Aster là một trong những loài thuộc họ xương rồng không gai. Xương rồng Aster dạng hình cầu nhỏ, đường kính dao động trong khoảng 3cm – 10 cm. Toàn thân cây có màu xanh thẫm được chia thành nhiều múi nhỏ nên được nhiều người gọi vui là xương rồng múi khế. Trên thân cây tròn của xương rồng Aster các gai nhọn đã được tiêu biến hoàn toàn trở thành các lông nhỏ xíu, mềm mịn, chạm vào rất thích.',0,'xuong_rong_le_gai.jpg','2020-05-22'),(2,7,'Sen đá lá thơm','50.000',1,'Đây là rau sạch','Rau muống là loại rau có giá rất rẻ so với các loại rau khác nhưng lại đem lại lượng khoáng chất và vitamin dồi dào như protein, sắt, canxin, chất xơ, vitamin A... Những chất này là những dưỡng chất cần thiết cho cơ thể.',10,'senda_la_thom.jpg','2020-05-22'),(3,2,'Sen đá móng rồng','50.000',1,'Đậu Nhật','Ðậu nành Nhật hay còn gọi là Đậu nành rau hay Đậu nành lông có nguồn gốc từ Nhật Bản, rất ngon và có giá trị dinh dưỡng cao, là loại thực phẩm rất tốt cho sức khỏe và bổ dưỡng vì hàm lượng của nó giàu chất khoáng, vitamin, protein, chất béo, chất xơ, rất tốt cho đường ruột, làm mịn da mặt và còn có tác dụng ngăn ngừa một số bệnh về ung thư',0,'senda_mong_rong.jpg','2020-05-22'),(4,1,'Xương rồng Giáng sinh','80.000',1,'Xà lách','Xà lách Mỹ có nguồn gốc từ vùng nhiệt đới và đến ngày nay nó đã  trở thành cây của toàn thế giới. Ở nước ta, Rau xà lách ưa khí hậu mát, đặc biệt là khí hậu ở Đà Lạt ',10,'xuong_rong_giang_sinh.jpg','2020-05-22'),(5,1,'Xương rông cây Sữa','200.000',1,'Ô Mai','Ô Mai còn có tên gọi khác là mơ đen, từ xưa ô mai là tên một vị thuốc làm từ quả mơ phơi khô cho đên khi đen và quắt lại. Trong y học cổ truyền, ô mai là vị thuộc rất phổ biến ở các nước châu á như Việt Nam, Trung Quốc. Ngày nay thì ô mai thường được dùng như một loại đồ ăn vặt được làm từ các loại quả khác nhau như: mận, me, sấu mơ, sử dụng ăn vặt nhiều hơn là làm thuốc. Những loại quả để làm mở cần phải được chọn lựa kỹ càng và chế biến với nhiều hương liệu, nguyên liệu khác nhau thì mới làm ra được món ô mai ngon nhất.',20,'xuong_rong_cay_sua.jpg','2020-05-22'),(6,1,'Xương rồng lông','150.000',1,'Sa Nhân','Sa Nhân còn có tên gọi khác trong tiếng Tày là mác nẻng, trong tiếng là co nénh, sa nhân là loại cây mọc hoang rất nhiều ở các vùng rừng núi, dưới tán cây sa nhân râm mát. Bọ phận thường dùng làm thuốc của sa nhân là hạt quả. Quả thường được hát vào mùa hè, bóc vỏ rồi lấy hạt ở phía trong, sây khô sử dụng dần.',20,'xuong_rong_long.jpg','2020-05-22'),(7,7,'Xương rồng phục sinh','125.000',1,'Thảo Quả','Tên tiếng Việt khác: Thảo quả đỏ / Thảo quả đen Tên danh pháp hai phần: Amomum tsao-ko Thuộc họ: Gừng(Zingiberaceae) Hoa thảo quả thường nở vào mùa hè ( khoảng từ tháng 5 đến tháng 7) và ra quả vào mùa đông Ở Việt Nam, thảo quả mọc chủ yếu ở vùng Tây Bắc và dãy núi Hoàng Liên Sơn, nó mọc nhiều nhất ở các tỉnh Lào Cai, Yên Bái, Hà Giang, Lai Châu Thảo quả là một loại cây thảo mộc có vị cay nóng, mùi thơm đặc trưng, chúng thường được sử dụng trong ẩm thực và làm thuốc chữa bệnh. Nó còn được mệnh danh là “nữ hoàng gia vị” trong chế biến các món ăn ngon và nổi tiếng của Việt Nam.',0,'xuong_rong_phuc_sinh.jpg','2020-05-22'),(8,2,'Sen đá nâu','150.000',1,'Hạt Điều','Điều hay còn gọi là đào lộn hột, là một cây công nghiệp thuộc họ xoài. Nó được trồng ở khí hậu nhiệt đới để lấy nhân hạt chế biến làm thực phẩm.Hạt điều ăn rất giòn và có hương thơm đặc trưng. Thường mọi người hay tìm mua hạt điều rang muối. Đây là đặc sản của Việt Nam nên thị trường hạt điều xuất khẩu luôn dẫn đầu cao.',10,'senda_nau.jpg','2020-05-22'),(9,7,'Sen đá xanh','115.000',1,'Xoài Tượng Bình Định ','Sen đẹp lắm mọi người',10,'senda_xanh.jpg','2020-05-22'),(10,3,'Chậu hình chữ nhật','50.000',1,'Chậu cây mini','Chậu trồng sen đá, xương rồng tốt hay không, chất liệu là yếu tố quyết định một phần nào đó. Nhựa có thể bị phân hủy nếu như môi trường đó ẩm ướt thường xuyên hoặc nắng nóng kéo dài. Những chất này vừa gây nguy hiểm đến cây vừa gây hại đến sức khỏe bầu không khí người sử dụng.',0,'chau_hcn.jpg','2020-05-22'),(11,3,'Chậu gốm sứ','50.000',1,'Chậu cây mini','Các bạn quên mất một điều, giữa thị trường gốm sứ sôi nổi như hiện nay thì việc mua nhầm sản phẩm kém chất lượng là việc rất thường xuyên xảy ra. Nhìn có thể khá giống nhau, tuy nhiên thì nếu không có kinh nghiệm chắc chắn các bạn sẽ không thể nhận ra được đâu là sản phẩm chất lượng. Tốt nhất vẫn là lựa chọn một cửa hàng một thương hiệu uy tín để mua sản phẩm sẽ tốt hơn.',10,'chau_gom_su.jpg','2021-02-22'),(12,7,'Chậu tròn','40.000',1,'Chậu cây mini','Những chậu cây tuy nhỏ nhưng có thể phá tan những bầu không khí căng thẳng trong phòng làm việc của bạn. Áp lực công việc đã quá nhiều hãy để những chậu cây xanh này xua tan bầu không khó đó nhé! Ngoài việc xua tan đi những phiền muộn trong cuộc sống khiến bạn vui vẻ mỗi ngày chậu trồng sen đá, xương rồng còn giúp không gian của bạn trở nên xanh, đẹp hơn bao giờ hết!',15,'chau1.jpg','2020-05-22'),(13,4,'Sỏi 5 - 10 mm','12.000',1,'Sỏi','Kích thước sỏi từ 2-3mm\r\nThích hợp trang trí các chậu cây ',0,'soi_10mm.jpg','2021-05-22'),(14,4,'Bình tưới nước vòi cong','50.000',1,'Bình tưới cây','Sử dụng sản phẩm: bình tưới nước voi cong  là dụng cụ làm vườn không thể thiếu của những người trồng cây, sản phẩm tiện lợi, độ thẩm mỹ cao thích hợp cho các bạn sử dụng chăm sóc các chậu cây nhỏ trồng trong văn phòng, bàn làm việc.\r\nChất liệu: nhựa dẻo.\r\nThể tích :250 ml và 500ml - 1000ml',0,'binh_tuoi.jpg','2021-05-22'),(15,4,'Mèo trong hộp','50.000',1,'Mèo trang trí',' Thiết kế hình chú mèo trong hộp giống như đang tìm người nuôi trông rất dễ thương\r\n Đây là đồ trang trí mini thích hợp cho cây cảnh, bể cá, cây mọng nước, lọ rêu, nhà búp bê, v.v.\r\n Được làm bằng chất liệu nhựa với tay nghề cao, sản phẩm này đảm bảo sẽ không bị phai màu.\r\n Trang trí cảnh quan mini hoàn hảo và giúp thêm phần thú vị cho tiểu cảnh của bạn.',5,'meo_trong_hop.jpg','2020-05-22'),(16,4,'Heo mini','50.000',1,'Mèo trang trí','Những vật liệu nhỏ xinh góp phần khiến cho mô hình nhà trang trí/ chậu cây cảnh (nghệ thuật terrarium)/ bể cá/ hủ marimo/ tiểu cảnh trở lên sinh động và hấp dẫn. Các bạn xem thêm các sản phẩm khác trong shop mình liên quan đến chủ đề này bằng cách gõ vào ô tiểu cảnh hoặc bấm chọn xem theo danh mục sản phẩm nhé.',5,'heo_mini.jpg','2020-05-22'),(30,6,'Xương Rồng Aster 3-4cm (Chậu Nhựa)','40.000',1,'Xương rồng mini','Cây xương rồng Aster là một trong những loài thuộc họ xương rồng không gai. Xương rồng Aster dạng hình cầu nhỏ, đường kính dao động trong khoảng 3cm – 10 cm. Toàn thân cây có màu xanh thẫm được chia thành nhiều múi nhỏ nên được nhiều người gọi vui là xương rồng múi khế. Trên thân cây tròn của xương rồng Aster các gai nhọn đã được tiêu biến hoàn toàn trở thành các lông nhỏ xíu, mềm mịn, chạm vào rất thích.',0,'xuong_rong_long.jpg','2021-05-22'),(31,5,'Xương Rồng Lostus','14.000',1,'Xương rồng mini','Cây xương rồng Lotus là một trong những loài thuộc họ xương rồng không gai.',10,'xuong_rong_long.jpg','2021-05-22'),(32,5,'Xương Rồng Harry','14.000',1,'Xương rồng lớn','Cây xương rồng Harry là một trong những loài thuộc họ xương rồng không gai.',10,'xuong_rong_phuc_sinh.jpg','2021-05-22'),(33,5,'Sen đá SNSD','40.000',1,'Sen đá','Sen đẹp, dễ trồng, dễ chăm',0,'senda_xanh.jpg','2021-05-22'),(34,5,'Sen đá lá thơm','40.000',1,'Sen đá','Sen đẹp, dễ trồng, dễ chăm',0,'senda_la_thom.jpg','2021-05-22'),(35,7,'Sen đá lá thơm','40.000',1,'Sen đá','Sen đẹp, dễ trồng, dễ chăm',0,'senda_la_thom.jpg','2021-05-22'),(36,5,'Sen đá Twice','14.000',1,'Sen đá','Sen đẹp, dễ trồng, dễ chăm',10,'senda_la_thom.jpg','2020-05-22'),(37,6,'Sen đá lá thơm','40.000',1,'Sen đá','Sen đẹp, dễ trồng, dễ chăm',0,'senda_la_thom.jpg','2021-05-22');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,3,'Kim Vy','kimvy@gmail.com','An toàn, sạch sẽ!','2020-10-10'),(2,4,'Loan Huỳnh','loan@gmail.com','Sản phẩm chất lượng','2020-10-11'),(3,5,'Kim Hiền','kimhien@gmail111.com','Ngon, lần sau tôi sẽ mua tiếp','2020-10-12'),(4,1,'phuongloan','hloan4266@gmail.com','Cây đẹp lắm','2021-07-30'),(5,1,'phuongloan','hloan4266@gmail.com','Cam on a','2021-08-02');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_session` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payment` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'phuong loan','Huynh Loan','hloan4266@gmail.com','880870','XYZ','Hàng dễ vỡ - xin nhẹ tay','456.000','0','Chưa thanh toán','2021-07-29'),(2,'Loan','Loan Huỳnh','abc@gmail.com','0123456789','KTX Việt Hàn','Call me','500.000','0',NULL,'2021-09-19');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Huỳnh Loan','hloan4266@gmail.com','00000','phuong loan','12345678','2021-07-29'),(2,'Loan Huỳnh','abc@gmail.com','0123456789','Loan','123','2021-09-19');
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

-- Dump completed on 2021-09-19  9:21:47
