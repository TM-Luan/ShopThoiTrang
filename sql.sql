-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: php3
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_order` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (20,'DH20211','Phương Mai','dtpmai25@gmail.com','0918720134','cạnh shop trà Bí Đao, đường Nguyễn Văn Linh','test','3','16720','Chưa thanh toán','Đang giao hàng','','2021-08-10 08:41:12','2021-08-10 19:53:46','2021-08-10 19:53:46'),(22,'DH20211','Hân Hân','hanhan@gmail.com','0918720134','cạnh shop trà Bí Đao, đường Nguyễn Văn Linh','test','2','13200','Đã thanh toán','Chưa giao hàng','','2021-08-10 20:10:18','2021-08-10 20:10:18',NULL),(23,'DH202123','Phương','dtpmai25@gmail.com','0918720134','288 Đường Nguyễn Văn Linh, An Khánh, Ninh Kiều, Cần Thơ','test','2','42475','Chưa thanh toán','Chưa giao hàng','','2021-08-10 20:11:00','2021-08-10 20:11:00',NULL),(24,'DH202524','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','12','5660','Chưa thanh toán','Chưa giao hàng','4','2025-11-18 05:31:08','2025-11-18 05:31:08',NULL),(25,'DH202525','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','2','300','Chưa thanh toán','Chưa giao hàng','4','2025-11-18 05:56:01','2025-11-18 05:56:01',NULL),(26,'DH202526','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','2','300','Chưa thanh toán','Chưa giao hàng','4','2025-11-18 05:56:37','2025-11-18 05:56:37',NULL),(27,'DH202527','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','2','300','Đã thanh toán','Đã giao hàng','4','2025-11-18 06:00:21','2025-11-18 06:13:33',NULL),(28,'DH202528','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','2','300','Chưa thanh toán','Chưa giao hàng','4','2025-11-18 06:02:04','2025-11-18 06:02:04',NULL),(29,'DH202529','Hân Hân','hanhan@gmail.com','0389137204','VN','kkk','2','300','Chưa thanh toán','Chưa giao hàng','4','2025-11-18 06:03:28','2025-11-18 06:03:28',NULL),(30,'DH202530','trần văn tí','hakachi101@gmail.com','0987653931','162.210.102.231','kkk','1','450','Chưa thanh toán','Chưa giao hàng','10','2025-11-18 06:05:06','2025-11-18 06:05:06',NULL);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (5,'blog-1.jpg','3 CÁCH MẶC ÁO THUN POLO ĐƠN GIẢN MÀ LUÔN ĐẸP','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Có rất nhiều cách để kết hợp áo Polo với quần áo trong tủ đồ của bạn như phối cùng quần kaki, chinos hay thậm chí là áo denim jacket. Hãy cùng chúng tôi tham khảo 3 cách mặc Polo đơn giản mà vẫn phong cách.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>1. Phong cáchCasual: Áo Polo, quần joggers và giày vans/plimsolls</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Do được làm bằng chất liệu thun nên cách phối áo Polo theo phong cách casual luôn dễ dàng và đẹp nhất. Rất đơn giản nhưng dễ ứng dụng, bạn có thể kết hợp áo Polo với tông trắng cơ bản mặc cùng một chiếc quần joggers màu trung tính.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Không chỉ có vai trò như một lớp áo lót, ngược lại, áo thun Polo tay dài còn có tác dụng thay thế như một chiếc áo len để thêm phần ấm áp cho mùa lạnh mà vẫn đảm bảo được yếu tố thẩm mỹ của bộ trang phục cũng như không ảnh hưởng đến phong cách của bạn.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Và item để tạo ấn tượng cho toàn bộ đồ nhưng theo một phong cách “sành” hơn, đó là một chiếc denim jacket khéo léo mặc theo tông màu tương phản giữa áo khoác và áo Polo dài tay. Ngoài ra, để “bộ cánh” có thêm điểm nhấn, bạn cũng nên chọn những đôi giày loafers bằng vải canvas sáng màu.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>2. Phong cáchSmart – casual: Áo Polo, quần chinos và giày loafers</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Combo này rất được ưa chuộng đến mức đã tạo nên sự nổi tiếng cho áo Polo trên toàn thế giới với sự phối hợp tự nhiên giữa những item thời thượng và thường ngày. Đây là một phong cách ấn tượng nhưng lại vô cùng an toàn cho những quý ông trang nhã mà không quá cứng nhắc.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Tất cả những gì bạn cần là kết hợp chiếc áo thun Polo với một chiếc quần chinos màu sáng tương tự như xanh navy, một đôi giày loafers bằng da và một cặp kính Rayban, vậy là vẻ ngoài của bạn đã gần như trở nên hoàn hảo. Như thường lệ, sự vừa vặn là chìa khóa quyết định, một trong những yếu tố quan trọng nhất của áo Polo chính là đường bo ở cuối ống tay áo có độ ôm sát “quấn” lấy bắp tay một cách vừa vặn.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Và mặc dù áo Polo chính xác là một item đậm phong cách casual, nhưng bạn có thể thay thế quần chinos bằng cách phối áo cùng shorts kaki và một đôi trainers màu trắng trang nhã, trong hoàn cảnh phù hợp.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3. Phong cách Smart-casual: Áo polo, quần tây và giày loafers</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đơn giản chính là chìa khóa đối với phong cách Smart-casual. Với áo thun Polo, càng đơn giản càng tốt. Nó không chỉ giúp người mặc thêm phần lịch lãm mà còn giúp bạn trông bảnh bao và chững chạc trong mọi hoàn cảnh. Chính điều này tạo nên một chuẩn mực của áo Polo.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Để tô điểm thêm cho bộ trang phục, một đôi&nbsp;giày loafers chất liệu bằng da&nbsp;được đánh bóng chỉn chu và một chiếc ví vuông sẽ khiến bạn đặc biệt hơn với những chàng trai khác. Tuy nhiên, việc lựa chọn màu sắc cũng khá quan trọng. Bên cạnh những tông màu làm tăng lên vẻ nam tính thì các chàng cũng đừng bỏ qua yếu tố làm sáng da.</p>','2021-08-06 03:02:08','2025-11-18 08:08:19',NULL),(6,'blog-2.jpg','3 CÁCH ĐỂ CHỌN VÀ PHỐI ÁO THUN POLO NAM CHUẨN, ĐẸP','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun&nbsp;polo nam&nbsp;là một loại áo ra đời từ rất lâu trước đây và không bao giờ lỗi mốt. Chiếc áo thần thánh này xuất hiện ở mọi tủ đồ của đấng mày râu, anh chàng nào cũng sở hữu cho mình ít nhất một chiếc. Lý do kiểu áo này được yêu thích chính là ở tính phổ biến, phù hợp với mọi lứa tuổi, giới tính. Tuy nhiên vẫn có không ít người thắc mắc về cách chọn và phối áo thun polo nam, vì vậy chúng tôi dành tặng bài viết dưới đây cho các tín đồ polo nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>1. Cách chọn chất liệu áo thun polo nam chất lượng</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo polo xuất hiện ở mọi nơi mọi hoàn cảnh, chính vì vậy, chất liệu chính là yếu tố để người mặc lựa chọn cho phù hợp với từng dịp diện áo. Quan trọng hơn nữa là áo thun polo phải mang lại cảm giác thoải mái, dễ chịu. Bởi vì thế mà chất liệu co giãn, thoáng khí là lựa chọn số một.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo nam&nbsp;phổ biến mà các chàng nên lựa chọn nhất là thun cá sấu, cotton, polyester và poly performance. Trong đó thun cá sấu có công nghệ dệt phức tạp hơn, có chất liệu của nó dày và cứng hơn nên phong cách có phần trang trọng hơn so với thun bình thường. Tuy nhiên nói về độ phủ và tỉ lệ yêu thích của người mặc thì polo thun cotton lại được ưa chuộng hơn. Áo thun polo nam chất liệu cotton mang lại cảm giác nhẹ nhàng, thoải mái, thấm hút mồ hôi. Chất liệu cotton là loại vải khá bình dân và giá thành cũng rẻ hơn so với chất liệu cá sấu, vì vậy&nbsp; áo polo cotton phù hợp mặc hàng ngày hơn so với những dịp quan trọng.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Bên cạnh đó, ngày nay cotton được pha trộn với những chất liệu vải khác để tạo nên chiếc áo thun polo nam. Chất vải điển hình thường được phối với cotton để tạo ra một kiểu dáng polo mới mẻ chính là Polyester. Polyester là một loại vải tổng hợp được tạo ra bằng cách liên kết các este với sợi thông qua phản ứng với rượu. Đây là loại vải có đặc tính bền, nhanh khô và chống nhăn. Chất liệu vải Polyester cũng là một loại vải phổ biến cho áo thun polo được sử dụng ngày nay nhất là áo thun polo thể thao. Không ai có thể phủ nhận được độ thấm hút mồ hôi siêu nhanh và tạo cảm giác thoải mái tối đa cho người chơi thể thao hay thường xuyên vận động ngoài trời. Tuy nhiên,&nbsp;chúng tôi&nbsp;nhận thấy điểm trừ của chất liệu này là kém tự nhiên hơn những loại vải cotton sợi bông. Loại áo polo với chất liệu này cũng phù hợp cho phong cách hàng ngày và&nbsp; những ngày vận động ngoài trời.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>2. Cách chọn áo thun polo nam theo kích cỡ&nbsp;</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Dù là áo thun polo nam hay tất cả loại trang phục nào thì bạn cũng cần lựa chọn kích cỡ phù hợp với cơ thể. Màu sắc, phong cách của chiếc polo là những yếu tố đầu tiên gây ấn tượng với bạn nhưng bạn không thể phủ nhận độ vừa vặn với cơ thể vẫn là điều quan trọng nhất. Vậy làm thế nào để chọn kích cỡ áo thun polo nam đẹp và vừa vặn nhất? Darnell xin gợi ý cho bạn những tip lựa áo sau.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đầu tiên là độ dài và rộng tiêu chuẩn để có cách mặc áo thun polo đẹp nhất:</p><ul style=\"list-style-position: inside; list-style-image: initial; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><li>Độ dài áo: Dài áo nên qua đai quần hoặc che hết dây thắt lưng của bạn, vừa đủ để chạm đến túi quần sau. Độ dài này giúp bạn khi sơ vin không bị lòi áo ra ngoài và khi mặc buông không bị quá ngắn lúc ngồi hoặc giơ tay lên.</li><li>Tay áo: chiều dài tay áo nên ở khoảng giữa bắp tay, và không dài quá 2/3 phần tay trên của bạn.</li></ul><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo nên mặc hơi sát với cơ thể một chút không không nên bó chặt. Chiếc áo polo đẹp nhất khi mặc là hơi bó phần ngực và cánh tay để tạo lên nét nam tính. Phần thân giữa nên thon và suôn để tránh lộ bụng. Áo nên cách người 1,5 đến 2cm, chiều dài tay áo không quá ⅔ bắp tay và độ dài áo phải qua thắt lưng. Đó là cách để các anh có thể lựa chọn cho mình một chiếc áo thun polo vừa khít và phù hợp với mình.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3. Chọn áo polo nam theo kiểu dáng</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ngoài lựa chọn chất liệu và kích cỡ thì kiểu dáng áo thun polo cũng làm các anh phải đắn đo suy nghĩ. Về cơ bản áo thun polo nam có 3 kiểu dáng phổ biến là polo suông phổ thông, polo suông vừa và dáng áo polo slim-fit.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.1. Áo polo suông phổ thông</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đây là dáng áo có thể nói là chân ái của mọi dáng áo polo đối với các anh chàng yêu thể thao. Với form suông rộng rãi, áo polo dáng suông phổ thông này mang lại cảm giác thoải mái tối đa cho người mặc. Không những thế dáng áo này còn phù hợp với mọi vóc dáng nam giới. Phần tay và bụng rộng rãi giúp các anh thoải mái che đi những khuyết điểm.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.2. Áo polo nam suông vừa&nbsp;</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Cũng là một kiểu áo thun polo dáng suông nhưng điểm khác biệt giữa polo suông phổ thông và dáng suông vừa là phần eo của kiểu dáng này được bóp vào một chút. Phần vai và tay áo của dáng polo này vẫn được thiết kế rộng rãi đảm bảo sự thoải mái cho người mặc. Mục đích của việc bóp phần thân áo nhỏ hơn là để làm trọn vẹn cả tính chất thoải mái và đảm bảo cả tính thời trang cho chiếc áo. Phần eo ôm nhẹ làm chiếc áo gọn gàng hơn vừa giúp các anh khoe được phần eo thon gọn lý tưởng. Với kiểu dáng áo này các anh có thể thoải mái phối với nhiều style khác nhau không lo nhàm chán.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.3&nbsp; Dáng áo thun polo nam slim-fit</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nghe tên thôi chắc chắn bạn cũng hình dung ra dáng áo này rồi đúng không? Đó chính xác là dáng áo ôm sát với cơ thể người mặc. Kiểu dáng áo này kén người mặc hơn vì nó phù hợp với những anh chàng có body chuẩn hoặc thon gọn một chút. Vì dáng áo ôm sát nên ưu điểm của nó là giúp người mặc khoe được tối đa vóc dáng cơ thể. Vì vậy các anh chàng có body chuẩn đét nên lựa chọn kiểu dáng áo thun polo này để ghi điểm ngay với người ấy nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4. Cách phối đồ với áo thun polo nam đẹp nhất</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Khi đã có thể chọn được những chiếc áo polo phù hợp, vậy việc tiếp theo của các chàng là tìm hiểu cách phối đồ với chúng. Hãy để Darnell lên ý tưởng phối đồ với áo thun polo theo từng phong cách giúp các anh nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4.1 Phong cách công sở với áo thun polo</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo là lựa chọn số 1 cho các chàng công sở trong mùa hè này rồi đúng không? Bạn có thể mặc áo thun polo với quần tây, Kaki hoặc thậm chí là quần jean và vẫn phù hợp với môi trường công sở.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nếu bạn là một người nghiêm túc, theo đuổi phong cách chững chạc quý ông thì phối chiếc áo thun polo với quần kaki trơn màu là số 1. Kèm theo style này là giày tây trơn đen phong cách quý ông sẽ giúp bạn trông sang trọng, lịch lãm.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Phối áo thun polo với quần jean và giày thể thao chính là phong cách dành cho các anh chàng năng động, trẻ trung mà không kém phần trang trọng trong văn phòng. Cách phối áo polo này giúp bạn hack tuổi tối đa và thu hút mọi ánh nhìn xung quanh đấy!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4.2 Phối áo thun&nbsp;polo nam phong cách thể thao, phong cách ngày thường</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nếu bạn là một người thích sự năng động và phong cách thể thao thì set đồ áo polo kết hợp quần jogger chính xác là những gì bạn cần. Nhưng bạn cần lưu ý chọn chất liệu quần jogger phù hợp với thời tiết. Những chiếc quần jogger nỉ mỏng sẽ thích hợp trong mùa thu, còn mùa hè sẽ là những jogger cotton hoặc lanh mát và phóng khoáng.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Cách phối phổ biến nhất cho mùa hè phù hợp với mùa hè cho các chàng đó chính là áo thun polo phối với quần short. Bạn có thể phối áo polo với quần short kaki hoặc short jean tùy ý. Điểm đặc biệt của cách phối đồ này là tạo cảm giác thoải mái, tự tin, phù hợp với nhiều hoàn cảnh. Cánh mày râu có thể phối áo polo theo phong cách này để dạo phố, đi cafe hoặc thậm chí là hẹn hò vào những ngày hè nóng bức.</p>','2021-08-06 03:06:07','2025-11-18 08:29:11',NULL),(7,'blog-3.jpg','ÁO THUN POLO NAM: VẺ ĐẸP THỜI TRANG BẤT HỦ CHO PHÁI MẠNH!','<div class=\"col-md-12 evo-article\" style=\"padding-right: 10px; padding-left: 10px; width: 1170px; margin-top: 30px; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><div class=\"article-details\" style=\"margin-top: 50px;\"><p style=\"overflow-wrap: break-word;\">Áo polo là một kiểu áo thun&nbsp; có cổ áo dạng bẻ xuống, thường có từ 2-3 cúc ở dưới cổ áo . Tay áo có 2 kiểu ngắn tay và dài tay với thiết kế bo gấu.<br>Chất liệu cấu tạo thì cực kỳ đa dạng từ cotton, polyeste đến cotton pha poly, lụa (silk) hay linen ( vải lanh ). Chúng còn được gọi là áo thun có cổ.</p><p style=\"overflow-wrap: break-word;\"><strong>Cách chọn mua áo thun polo nam (áo thun có cổ)</strong></p><p style=\"overflow-wrap: break-word;\">Những chiếc áo polo nam hiện đại ngày nay được thiết kế với rất nhiều kiểu dáng và chất liệu khác nhau để đáp ứng nhu cầu người sử dụng trong từng hoàn cảnh. Để có thể chọn và mặc đẹp được những chiếc áo này, chúng ta sẽ cần tìm hiểu kĩ về chất liệu, kiểu dáng của chúng.</p><p style=\"overflow-wrap: break-word;\"><strong>Chất liệu</strong></p><p style=\"overflow-wrap: break-word;\">Có rất nhiều chất liệu cấu tạo nên chiếc áo polo từ tự nhiên cho đến những sợi nhân tạo. Tuy nhiên, có 2 loại phổ biến nhất là&nbsp;Pique cotton và Jersey cotton</p><p style=\"overflow-wrap: break-word;\"><strong>Pique cotton:</strong></p><p style=\"overflow-wrap: break-word;\">Đây là loại vải nguyên bản để tạo nên chiếc áo thun polo thời kỳ ban đầu. Vải pique cotton được dệt với cấu trúc lỗ thoáng, mắt vải to giúp người mặc được cảm giác thoáng mát trong mùa xuân hè.</p><p style=\"overflow-wrap: break-word;\">Nhược điểm của loại vải này là rất dễ xù lông và nhanh dão ( đặc biệt khi cho vào máy giặt và quay mạnh ). Vì vậy, khuyến khích các bạn nam nên giặt tay hoặc giặt máy chế độ nhẹ nhàng</p><p style=\"overflow-wrap: break-word;\"></p><p style=\"overflow-wrap: break-word;\"><strong>Jersey cotton</strong></p><p style=\"overflow-wrap: break-word;\">Loại vải dùng làm áo polo thường là Single Jersey. Đây là một loại vải được dệt theo kiểu dệt đơn, với 2 mặt trái phải khác nhau rất dễ phân biệt ( một bên phẳng 1 bên mịn ).</p><p style=\"overflow-wrap: break-word;\">Ưu điểm của loại vải này là chúng có trọng lượng nhẹ, co dãn tốt 2 chiều nên tạo cảm giác thoải mái cho người mặc. Vải Jersey thường được dùng trong các loại áo polo thể thao.</p><p style=\"overflow-wrap: break-word;\">Nhược điểm của loại vải này là chúng dễ quăn mép vải và bị tuột sợi.&nbsp; Giặt cũng nên để chế độ nhẹ nhàng.</p><p style=\"overflow-wrap: break-word;\"></p><p style=\"overflow-wrap: break-word;\"><strong>Các loại vải khác</strong></p><p style=\"overflow-wrap: break-word;\">Về cơ bản, các nhà sản xuất sẽ pha thêm các sợi nhân tạo ( poly, nylon hay spandex ) với&nbsp; 2 loại vải cotton cơ bản pique và jersey ở trên. Mục đích để tăng độ bền cơ học và độ bền màu cho áo polo.</p><p style=\"overflow-wrap: break-word;\">Cá biệt thì các dòng áo polo thể thao thường được cấu tạo hoàn toàn bằng các sợ polyester biến tính ( với từng nhà sản xuất sẽ có tính chất khác nhau) với khả năng thấm hút mồ hôi siêu nhanh để tạo sự thoải mái tối đa cho vận động viên hoặc người chơi thể thao.</p><p style=\"overflow-wrap: break-word;\">Ngoài ra, ở các nơi có mùa đông thì những chiếc áo polo dài tay ( áo thun có cổ dài tay) sẽ thường được làm bằng vải len (wool) hoặc len pha sợi cotton, sợi nhân tạo.</p><p style=\"overflow-wrap: break-word;\">CHÚ Ý:&nbsp;Ngoài dòng áo polo thể thao được thiết kế chuyên dụng cho các hoạt động mạnh thì bạn nên tránh các kiểu áo polo mặc casual hàng ngày cấu tạo phần lớn bằng sợi nhân tạo ( &gt;90% polyester , nylon ) vì chúng thấm hút mồ hôi cực kém và&nbsp; gây nên cảm giác bí bách khó chịu cả ngày cho bạn.</p><div><br></div></div></div>','2021-08-06 03:08:07','2025-11-18 08:29:25',NULL),(8,'blog-4.jpg','TẠI SAO ÁO THUN POLO LUÔN “CÓ CHỖ ĐỨNG” TRONG TỦ ĐỒ NAM GIỚI?','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Lịch sử chiếc áo Polo</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Không chỉ là trang phục được phái mạnh ưa chuộng nhờ vào kiểu dáng thời trang, năng động, chỉn chu,... mà áo thun Polo (hay còn gọi là áo thun có cổ, áo cổ gập) còn có tuổi đời đáng nể. Chiếc áo có lịch sử gần 100 năm, xóa bỏ sự phân biệt giàu nghèo, mở ra một phong cách hoàn toàn mới cho cánh mày râu.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ở thời kỳ mới hình thành, áo Polo có thiết kế tay dài và dành cho những thủ môn chơi bóng khúc côn cầu trên lưng ngựa. Dần dần, chiếc áo đã chinh phục được phái mạnh, được thay đổi và có chỗ đứng vững chắc trong làng thời trang. Mặc cho các xu hướng có thay đổi như thế nào thì chiếc áo Polo vẫn luôn ở đó và là trang phục mà chàng trai nào cũng có ít nhất vài chiếc trong tủ đồ.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Cách chọn áo Polo để luôn năng động và chỉn chu</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Phải làm sao để trở nên thật phong cách và lịch lãm khi mặc áo Polo? Tuy áo Polo rất dễ mặc, dễ phối nhưng không phải ai cũng biết cách để mình trở nên thật “ngầu” khi diện chiếc áo dễ tính này. Để lịch lãm hơn, năng động hơn hãy tuân thủ 3 quy tắc dưới đây:</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Về chiều dài&nbsp;</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Tuyệt đối không mặc áo Polo có độ dài qua mông vì nó sẽ khiến bạn trông thật luộm thuộm trong một chiếc áo quá khổ. Áo quá ngắn càng không nên mặc, vì nó sẽ khiến bạn trông thiếu chỉn chu, mất điểm nghiêm trọng trong mắt mọi người. Các chàng có thể đo lường chiều dài bằng cách với tay lấy vật dụng trên cao hoặc ngồi xuống, nếu không bị lộ phần thắt lưng chính thì đó là độ dài chuẩn.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Về tay áo, thân áo</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Tay áo nên nằm ở đoạn ⅔ bắp tay và khuỷu tay, không nên ngắn hơn hoặc dài hơn. Chiếc áo Polo sẽ đẹp nhất khi vừa vặn với cơ thể, có thể hơi khít ở phần ngực, bắp tay và xuôi dần xuống phần eo.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Cách mặc áo</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Theo bạn, để trở nên lịch lãm hơn khi mặc áo Polo thì nên gài nút hay mở nút? Không gài nút sẽ khiến bạn trở nên luộm thuộm. Gài hết nút sẽ tạo nên vẻ trịnh trọng không cần thiết. Vì thế, gài một đến hai nút áo khi mặc áo Polo chính là lựa chọn hoàn hảo nhất.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ngày nay, áo Polo đã thật sự trở thành biểu tượng của thời trang, chiếm được cảm tình của đại đa số nam giới, không chỉ là trang phục để mặc mà góp phần kiến tạo nên phong cách. Còn bạn thì sao? Hãy chọn ngay cho mình một chiếc áo Polo ưng ý nhé!</p>','2021-08-06 03:09:01','2025-11-18 09:04:29',NULL),(9,'blog-5.jpg','5 Điều cần biết về bảng vẽ Wacom','<p>► Wacom là gì?</p><p>Giống như ví dụ được Tuyencongnhan.vn dẫn ra ở phần đặt vấn đề, Honda thực chất là một hãng xe máy của Nhật. Nhưng chính vì sự phổ biến rộng rãi các dòng xe của hãng này tại Việt Nam mà mặc nhiên nhiều người gọi và hiểu Honda chính là danh từ chung chỉ “xe gắn máy”.</p><p>Với trường hợp “wacom” cũng vậy.</p><p>Wacom là một dòng bảng vẽ cảm ứng có xuất xứ từ Nhật Bản. Đây là thương hiệu bảng vẽ được giới thiết kế đồ họa ưa chuộng nhất hiện nay bởi những ưu thế vượt trội về chất lượng. Ngoài wacom, trên thị thường còn có những thương hiệu bảng vẽ khác như: Huion, Ugee, Monoprice, VT, Turcom…</p><p>► 5 Dòng bảng vẽ wacom thông dụng</p><p>- Wacom BambooPad</p><p>Đây là dòng bảng vẽ cơ bản dạng PAD (bàn rê chuột) với lực nhấn 512 mức cảm ứng lực – thường được ứng dụng để vẽ cơ bản, vẽ bản đồ - ký họa, viết note hoặc sử dụng như 1 trackpad.</p><p>- Wacom Intuous</p><p>Wacom Intuous là dòng bảng vẽ thông dụng dành cho những bạn mới bắt đầu học thiết kế với 1024 mức cảm ứng lực và 4 phím Express Key. Ưu điểm của dòng Intuous là có đầy đủ các chức năng cơ bản – hỗ trợ tốt việc tạo nên những bản vẽ tay từ cơ bản đến chuyên nghiệp và có mức giá phải chăng.</p><p>bảng vẽ Wacom</p><p>Mức giá bán Wacom Intuous trên thị trường hiện từ 1,75 triệu đồng trở lên (tùy phiên bản)</p><p>- Wacom Intuous Pro</p><p>Wacom Intuous Pro là dòng bảng vẽ cảm ứng cao cấp hơn Wacom Intuous – dành cho những Designer có nhu cầu làm việc chuyên nghiệp hơn. Dòng này có 2048 mức cảm ứng lực với từ 6 phím Express Key trở lên dùng để gán các phím chức năng: Ctrl, Shift, Alt…</p><p>- Wacom Cintiq</p><p>Đây là dòng sản phẩm “khủng” của wacom với màn hình cảm ứng. Mặc dù có tính năng tương tự như Wacom Intuous Pro nhưng việc hỗ trợ người dùng vẽ trực tiếp trên màn hình chính là yếu tố khác biệt của dòng bảng vẽ này – cho người dùng cảm giác như đang phác thảo trên giấy thật. Wacom Cintiq thường được các Designer làm việc trong lĩnh vực thiết kế hoạt hình, game… sử dụng.</p><p>- Wacom Cintiq Pro</p><p>Wacom Cintiq Pro có tính năng tương tự như Wacom Cintiq nhưng được tích hợp tính năng như một máy tính bảng chạy hệ điều hành Android và Win8 với cấu hình khủng - cùng tính năng scan 3D độc đáo. Vì là dòng sản phẩm cao cấp nên mức giá bán Cintiq Pro trên thị trường hiện nay khá cao, hơn 27 triệu đồng/ chiếc.</p><p>bảng vẽ Wacom</p><p>Wacom Cintiq Pro</p><p>► Vì sao bảng vẽ wacom lại được ưa chuộng?</p><p>Có nhiều dòng sản phẩm phù hợp với nhiều đối tượng người dùng khác nhau.</p><p>Chất lượng bảng vẽ wacom cực kỳ ổn định, nếu gặp lỗi hầu hết chỉ là xung đột phần mềm – chỉ cần gỡ driver và cài đặt lại bản mới.</p><p>Dòng bản vẽ wacom ít khi cần phải đi bảo hành.</p><p>Tuổi thọ sản phẩm lâu.</p><p>Hiện chưa có hàng nhái nên hầu hết bảng vẽ wacom mua trên thị trường đều là hàng wacom thật.</p><p>► Các loại bút wacom – stylus pen</p><p>Bút bamboo – 512 lực nhấn, không tẩy.</p><p>Bút phổ thông – 1024 lực nhấn, có đầu tẩy hoặc không.</p><p>Bút Pro – 2048 lực nhấn, có đầy tẩy, cảm ứng xoay, cảm ứng độ nghiêng.</p><p>► Có nên dán bề mặt bảng vẽ wacom không?</p><p>Lời khuyên cho bạn là nên dán bề mặt bảng vẽ wacom lại để tăng độ bền của bề mặt bảng vẽ và ngòi bút. Bạn có thể sử dụng loại miếng dán chuyên dùng cho wacom hoặc dùng miếng dán dành cho tablet.</p><p>Những thông tin được Tuyencongnhan.vn chia sẻ trên đây phần nào đã lý giải vì sao dòng bảng vẽ wacom lại được cộng đồng nhân sự nghề thiết kế ưa chuộng. Mong rằng khi đọc xong bài viết này, bạn đã có thể tự tin giải thích rõ ràng “Wacom là gì” cũng như những điều cần biết liên quan đến dòng bảng vẽ cảm ứng này.</p>','2021-08-06 03:10:15','2025-11-18 08:27:09','2025-11-18 08:27:09');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (16,23,'',1,'','',1,'2021-08-09 07:58:09','2021-08-09 07:58:09',NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Áo Thun (T-Shirt)','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(2,'Áo Sơ Mi (Shirt)','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(3,'Quần Jeans','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(4,'Quần Tây & Kaki','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(5,'Áo Khoác & Blazer','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(6,'Váy & Đầm Nữ','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(7,'Giày Dép','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(8,'Phụ Kiện Thời Trang','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(9,'Hàng Mới Về','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(10,'Giảm Giá Sốc','2025-11-18 11:06:21','2025-11-18 11:06:21',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_bill`
--

DROP TABLE IF EXISTS `detail_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_bill` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_bill`
--

LOCK TABLES `detail_bill` WRITE;
/*!40000 ALTER TABLE `detail_bill` DISABLE KEYS */;
INSERT INTO `detail_bill` VALUES (35,'Wacom Intuos M (Bluetooth, Pink)','2','5060.000','product-8.png','DH20211','2021-08-10 08:41:12','2021-08-10 19:53:46','2021-08-10 19:53:46'),(36,'Wacom Intuos Pro S','1','6600.000','product-9.png','DH20211','2021-08-10 08:41:12','2021-08-10 19:53:46','2021-08-10 19:53:46'),(39,'Wacom Intuos Pro S','2','6600.000','product-9.png','DH20211','2021-08-10 20:10:18','2021-08-10 20:10:18',NULL),(40,'Wacom Cintiq Pro 16','1','40450.000','product-18.png','DH202123','2021-08-10 20:11:00','2021-08-10 20:11:00',NULL),(41,'Wacom Intuos S (Black)','1','2025.000','product-1.png','DH202123','2021-08-10 20:11:00','2021-08-10 20:11:00',NULL),(42,'Áo Thun Basic Cotton Trắng','2','150.000','product-1.png','DH202528','2025-11-18 06:02:04','2025-11-18 06:02:04',NULL),(43,'Áo Sơ Mi Trắng Oxford','1','450.000','product-9.png','DH202530','2025-11-18 06:05:06','2025-11-18 06:05:06',NULL);
/*!40000 ALTER TABLE `detail_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2021_08_02_140235_create_users_table',1),(4,'2021_08_02_145234_create_categories_table',2),(5,'2021_08_02_150054_create_categories_table',3),(6,'2021_08_02_153613_create_blogs_table',4),(7,'2021_08_03_023240_add_role_in_users',5),(8,'2021_08_03_083118_add_soft_delete_in_users',6),(9,'2021_08_03_093245_add_avatar__in_users',7),(10,'2021_08_03_103857_create_products_table',8),(11,'2021_08_06_085749_add_outstanding_in_products',9),(12,'2021_08_08_021940_add_first_name_in_users',10),(13,'2021_08_08_022053_add_last_name_in_users',10),(14,'2021_08_08_022104_add_phone_in_users',10),(15,'2021_08_08_022115_add_address_in_users',10),(16,'2021_08_08_022256_add_last_name_in_users',11),(17,'2021_08_08_022432_add_phone_in_users',12),(18,'2021_08_08_022549_add_address_in_users',13),(19,'2021_08_08_100946_create_wishlist_table',14),(20,'2021_08_09_085338_created_cart_table',15),(21,'2021_08_10_095922_create_bills_table',16),(22,'2021_08_10_103332_create_detail_bill_table',17),(23,'2021_08_10_105825_add_id_order_in_bills',18),(24,'2021_08_10_111242_add_id_order_in_detail_bill',19),(25,'2021_08_15_085511_add_price_in_cart',20),(26,'2021_08_15_093631_add_image_in_cart',20),(27,'2021_08_15_142417_add_id_user_in_bills',20),(28,'2021_08_15_153152_add_name_in_cart',20);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,3) NOT NULL,
  `discount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` int NOT NULL,
  `information` varchar(228) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int NOT NULL,
  `outstanding` int NOT NULL,
  `catalog_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'Áo Thun Basic Cotton Trắng',150.000,'0','product-1.png','','Chất liệu 100% Cotton thấm hút mồ hôi, form rộng thoải mái.','<p>Áo thun trơn basic là món đồ không thể thiếu trong tủ đồ. Dễ dàng phối với quần Jean, quần short.</p>',100,'Size: S, M, L, XL|Màu: Trắng|Chất liệu: Cotton',50,1,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(7,'Áo Thun Basic Đen Cool',150.000,'10','product-2.png','','Phong cách tối giản, chất vải mát lạnh.','<p>Thiết kế đơn giản nhưng cá tính. Công nghệ vải làm mát giúp bạn thoải mái cả ngày dài.</p>',80,'Size: S, M, L|Màu: Đen|Chất liệu: Cotton lạnh',20,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(8,'Áo Thun In Hình Graphic Street',220.000,'0','product-3.png','','Họa tiết in độc đáo, phong cách đường phố bụi bặm.','<p>Dành cho các bạn trẻ yêu thích sự năng động. Hình in sắc nét, không bong tróc khi giặt.</p>',50,'Size: Freesize|Màu: Xanh rêu|Chất liệu: Thun co giãn',15,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(9,'Áo Thun Polo Nam Cao Cấp',350.000,'0','product-4.png','','Lịch lãm, sang trọng, phù hợp đi làm và đi chơi.','<p>Áo Polo với cổ bẻ cứng cáp, bo tay tinh tế. Vải cá sấu mắt nhỏ cao cấp.</p>',30,'Size: M, L, XL, XXL|Màu: Xám chuột|Chất liệu: Vải cá sấu',10,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(10,'Áo Thun Tay Dài Thu Đông',280.000,'0','product-5.png','','Giữ ấm tốt, phong cách Hàn Quốc.','<p>Thích hợp cho tiết trời se lạnh. Dễ dàng phối layer với áo khoác ngoài.</p>',80,'Size: L, XL|Màu: Nâu be|Chất liệu: Thun gân',45,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(11,'Áo Croptop Nữ Cá Tính',180.000,'0','product-6.png','','Khoe trọn vòng eo thon gọn, năng động.','<p>Thiết kế cắt gấu táo bạo, phù hợp với các bạn nữ cá tính.</p>',80,'Size: S, M|Màu: Hồng Pastel|Chất liệu: Thun borip',100,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(12,'Áo Thun Unisex Oversize',200.000,'0','product-7.png','','Form rộng giấu quần, phong cách trẻ trung.','<p>Dành cho cả nam và nữ. Chất vải dày dặn, đứng form.</p>',100,'Size: Freesize|Màu: Tím than|Chất liệu: Cotton 100%',60,0,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(13,'Áo Ba Lỗ Thể Thao',120.000,'5','product-8.png','','Thoáng mát, hỗ trợ vận động tối đa.','<p>Thích hợp mặc đi tập Gym, chạy bộ hoặc mặc nhà.</p>',100,'Size: M, L|Màu: Trắng/Đen|Chất liệu: Thun lạnh',12,1,1,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(14,'Áo Sơ Mi Trắng Oxford',450.000,'0','product-9.png','','Chuẩn soái ca, chất vải chống nhăn nhẹ.','<p>Áo sơ mi trắng là vũ khí của phái mạnh. Form Slimfit tôn dáng người mặc.</p>',80,'Size: 38, 39, 40, 41|Màu: Trắng|Chất liệu: Oxford',200,1,2,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(15,'Áo Sơ Mi Caro Flannel',380.000,'10','product-10.png','','Phong cách Vintage, bụi bặm và ấm áp.','<p>Chất vải nỉ bông mềm mại, họa tiết kẻ caro không bao giờ lỗi mốt.</p>',100,'Size: M, L, XL|Màu: Đỏ đen|Chất liệu: Flannel',50,0,2,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(16,'Áo Sơ Mi Lụa Nữ Công Sở',550.000,'0','product-11.png','','Mềm mại, quý phái, nhẹ nhàng cho phái đẹp.','<p>Chất lụa cao cấp, trượt nước nhẹ, không bám bụi. Thiết kế cổ nơ điệu đà.</p>',100,'Size: S, M, L|Màu: Kem|Chất liệu: Lụa tơ tằm',80,0,2,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(17,'Áo Sơ Mi Denim Bụi Bặm',480.000,'0','product-12.png','','Nam tính, mạnh mẽ, bền bỉ với thời gian.','<p>Vải Jean giấy mỏng nhẹ nhưng bền chắc. Màu Wash loang cực chất.</p>',100,'Size: L, XL|Màu: Xanh Jean|Chất liệu: Denim',30,1,2,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(18,'Áo Kiểu Nữ Bèo Nhún',320.000,'15','product-13.png','','Dễ thương, bánh bèo, phù hợp dạo phố.','<p>Chi tiết bèo nhún ở tay và cổ tạo điểm nhấn nữ tính.</p>',100,'Size: Freesize|Màu: Vàng chanh|Chất liệu: Voan',40,0,2,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(19,'Quần Jean Nam Slimfit',650.000,'0','product-14.png','','Ôm vừa vặn, co giãn 4 chiều thoải mái.','<p>Màu xanh đá basic dễ phối đồ. Chất jean cotton co giãn tốt.</p>',100,'Size: 29-34|Màu: Xanh đá|Kiểu: Slimfit',150,0,3,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(20,'Quần Jean Nữ Rách Gối',550.000,'0','product-15.png','','Cá tính, năng động, hack dáng cực đỉnh.','<p>Lưng cao giúp chân trông dài hơn. Vết rách gối tạo điểm nhấn phong cách.</p>',80,'Size: 26-30|Màu: Xanh nhạt|Kiểu: Baggy',90,1,3,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(21,'Quần Short Jean Mùa Hè',350.000,'0','product-16.png','','Mát mẻ, trẻ trung cho những chuyến du lịch.','<p>Thiết kế gấu tưa bụi bặm. Thích hợp mặc đi biển, dạo phố.</p>',100,'Size: 28-32|Màu: Đen khói|Kiểu: Short',70,0,3,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(22,'Quần Tây Âu Nam Cao Cấp',750.000,'0','product-17.png','','Lịch lãm chuẩn quý ông, form dáng Hàn Quốc.','<p>Vải tuyết mưa dày dặn, đứng form, không nhăn, không xù lông.</p>',50,'Size: 29-36|Màu: Đen/Xám|Chất liệu: Tuyết mưa',120,0,4,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(23,'Quần Kaki Chinos Be',500.000,'10','product-18.png','','Trẻ trung, dễ phối với áo thun và sơ mi.','<p>Màu be trung tính thời thượng. Dáng quần ống đứng (Regular fit).</p>',100,'Size: 29-34|Màu: Be (Cream)|Chất liệu: Kaki thun',65,1,4,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(24,'Quần Baggy Vải Nữ',420.000,'0','product-19.png','','Thoải mái, che khuyết điểm chân hoàn hảo.','<p>Phù hợp cho các bạn nữ đi học, đi làm. Lưng thun sau dễ mặc.</p>',80,'Size: S, M, L|Màu: Nâu tây|Chất liệu: Vitex',200,0,4,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(25,'Quần Jogger Kaki Túi Hộp',580.000,'0','product-20.png','','Phong cách Cargo mạnh mẽ, tiện lợi.','<p>Thiết kế nhiều túi hộp tiện dụng. Bo gấu gọn gàng, năng động.</p>',100,'Size: M, L, XL|Màu: Rêu lính|Chất liệu: Kaki',88,1,4,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(26,'Quần Culottes Ống Rộng',450.000,'20','product-21.png','','Thời thượng, sang chảnh, tôn dáng.','<p>Ống quần rộng che khuyết điểm. Chất vải mềm rũ tạo độ bay khi di chuyển.</p>',80,'Size: S, M|Màu: Trắng kem|Chất liệu: Lụa cát',130,0,4,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(27,'Áo Khoác Da Biker Jacket',1.200,'0','product-22.png','','Ngầu, chất chơi, đẳng cấp phái mạnh.','<p>Da PU cao cấp không nổ, lót lụa bên trong. Khóa kéo kim loại chắc chắn.</p>',80,'Size: L, XL, XXL|Màu: Đen bóng|Chất liệu: Da PU',300,1,5,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(28,'Áo Khoác Bomber Gió',650.000,'0','product-23.png','','Nhẹ, chống nước nhẹ, cản gió tốt.','<p>Thiết kế trẻ trung, bo tay và gấu áo phối màu. Thích hợp mặc khoác nhẹ.</p>',100,'Size: Freesize|Màu: Xanh Navy|Chất liệu: Dù 2 lớp',150,1,5,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(29,'Áo Blazer Nữ Hàn Quốc',850.000,'0','product-24.png','','Thanh lịch, hiện đại, chuẩn style công sở.','<p>Form áo rộng rãi, đệm vai mỏng tạo dáng đứng. Màu sắc Pastel nhẹ nhàng.</p>',100,'Size: S, M|Màu: Hồng ruốc|Chất liệu: Kaki mềm',95,0,5,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(30,'Đầm Body Dự Tiệc',950.000,'0','product-25.png','','Quyến rũ, tôn đường cong cơ thể.','<p>Thiết kế ôm sát, xẻ tà quyến rũ. Chất liệu co giãn tốt, không lộ khuyết điểm.</p>',50,'Size: S, M|Màu: Đỏ đô|Chất liệu: Thun Umi',200,0,6,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(31,'Váy Xếp Ly Tennis',320.000,'0','product-26.png','','Năng động, trẻ trung, hack tuổi.','<p>Chân váy ngắn xếp ly, có quần bảo hộ bên trong an toàn.</p>',100,'Size: S, M, L|Màu: Trắng/Đen|Chất liệu: Kate Nhật',300,0,6,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(32,'Đầm Maxi Đi Biển',550.000,'5','product-27.png','','Thướt tha, nhẹ nhàng, lên hình cực đẹp.','<p>Họa tiết hoa lá nhiệt đới. Dáng váy dài che nắng tốt, lưng trần gợi cảm.</p>',80,'Size: Freesize|Màu: Họa tiết hoa|Chất liệu: Voan tơ',120,0,6,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(33,'Chân Váy Bút Chì Công Sở',400.000,'0','product-28.png','','Chuyên nghiệp, lịch sự, tôn dáng.','<p>Thiết kế xẻ sau giúp dễ di chuyển. Dễ phối với áo sơ mi.</p>',80,'Size: S, M, L|Màu: Đen|Chất liệu: Tuyết mưa',60,0,6,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(34,'Giày Sneaker Trắng Basic',550.000,'0','product-29.png','','Đôi giày quốc dân, cân mọi set đồ.','<p>Thiết kế đơn giản, đế cao su êm ái. Da PU dễ vệ sinh.</p>',100,'Size: 36-43|Màu: Trắng|Loại: Cổ thấp',500,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(35,'Giày Cao Gót Mũi Nhọn',480.000,'0','product-30.png','','Sang chảnh, tôn dáng, cao 7cm.','<p>Gót nhọn thanh mảnh nhưng chắc chắn. Lớp lót êm chân.</p>',100,'Size: 35-39|Màu: Nude|Cao: 7cm',250,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(36,'Sandal Chiến Binh',350.000,'0','product-31.png','','Cá tính, thoáng mát mùa hè.','<p>Dây đan chéo độc đáo, đế bằng dễ đi lại.</p>',80,'Size: 36-39|Màu: Nâu da bò|Chất liệu: Da tổng hợp',100,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(37,'Giày Tây Nam Oxford',1.500,'0','product-32.png','','Đẳng cấp quý ông, da thật 100%.','<p>Đế phíp gỗ sang trọng. Da bò nguyên tấm được đánh bóng thủ công.</p>',50,'Size: 39-43|Màu: Đen/Nâu|Chất liệu: Da bò',80,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(38,'Dép Slide Unisex',250.000,'0','product-33.png','','Tiện lợi, êm ái, chống nước.','<p>Dép đúc nguyên khối, đế chống trơn trượt. Họa tiết Logo nổi bật.</p>',150,'Size: 36-44|Màu: Đen/Trắng|Chất liệu: Cao su đúc',400,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(39,'Boot Cổ Cao Martin',850.000,'0','product-34.png','','Phong cách lính, bụi bặm, siêu bền.','<p>Đế Doctor đúc đặc trưng. Da lì chống thấm nước.</p>',80,'Size: 39-43|Màu: Đỏ Cherry|Chất liệu: Da PU cao cấp',110,0,7,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(40,'Thắt Lưng Da Nam',350.000,'0','product-35.png','','Mặt khóa tự động, da bò thật.','<p>Phụ kiện không thể thiếu của phái mạnh khi mặc quần âu/kaki.</p>',80,'Dài: 110cm|Màu: Đen|Chất liệu: Da bò',200,0,8,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(41,'Túi Xách Nữ Đeo Chéo',450.000,'0','product-36.png','','Nhỏ gọn, thời trang, đựng vừa điện thoại.','<p>Khóa bấm kim loại mạ vàng. Dây đeo xích pha da sành điệu.</p>',50,'Kích thước: 20x15cm|Màu: Trắng|Chất liệu: Da PU',300,0,8,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(42,'Mũ Lưỡi Trai Snapback',150.000,'0','product-37.png','','Che nắng, tạo điểm nhấn phong cách.','<p>Form nón cứng cáp, logo thêu nổi 3D.</p>',100,'Size: Freesize|Màu: Đen|Chất liệu: Kaki',150,0,8,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(43,'Vớ/Tất Cổ Cao (Set 5 đôi)',100.000,'0','product-38.png','','Thấm hút mồ hôi, co giãn tốt.','<p>Set 5 đôi 5 màu cơ bản. Chất liệu cotton kháng khuẩn khử mùi.</p>',200,'Size: Freesize|Màu: Mix màu|Chất liệu: Cotton',500,0,8,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL),(44,'Kính Mát Thời Trang',250.000,'0','product-39.png','','Chống tia UV, bảo vệ mắt.','<p>Gọng nhựa dẻo chịu lực. Tròng kính phân cực chống chói.</p>',100,'Kiểu dáng: Wayfarer|Màu: Đen khói|Chất liệu: Nhựa',120,0,8,'2025-11-18 11:06:21','2025-11-18 11:06:21',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nugiacat.jpg','Phương Mai','phuongmai','0918720134','cạnh shop trà Bí Đao, đường Nguyễn Văn Linh','dtpmai25@gmail.com',NULL,'$2y$10$bsjb0xPI/Inj0.7W.ey4huFovMONoSg636Dm8m3MqdKnw1js96u1m','gQAdoh0ZguGDZVGMknSg27af8MmtzH4HayxJkFodieEyoiSRgJmdOJfg29D9','1','2021-08-02 07:12:27','2021-08-08 02:48:40',NULL),(4,'idol.jpg','Hân Hân','hanhan','','','hanhan@gmail.com',NULL,'$2y$10$bsjb0xPI/Inj0.7W.ey4huFovMONoSg636Dm8m3MqdKnw1js96u1m',NULL,'0','2021-08-02 19:29:16','2021-08-03 03:24:34',NULL),(5,'avatar.png','Phương','phuong','','','phuong@gmail.com',NULL,'$2y$10$WKW0/HSjGFNi0Ucfk.4FOeOeVAK0y19TaD62vZ2o8ipsg5KrBmCx2',NULL,'0','2021-08-03 02:58:09','2021-08-03 02:58:09',NULL),(6,'avartar-new.jpg','Do Mai','qgznvgzh','','','domai@gmail.com',NULL,'12345678',NULL,'0','2021-08-03 03:08:37','2021-08-03 03:35:04','2021-08-03 03:35:04'),(10,'avatar.png','trần văn tí','trần văn tí',NULL,NULL,'hakachi101@gmail.com',NULL,'$2y$10$2CpJ7bdVdvYnVHb3.2l9Ze/1EwhOcGjsRe58hJd1AEkCqPz0.O2je',NULL,'0','2025-11-18 06:04:32','2025-11-18 06:04:32',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (7,23,1,'2021-08-08 04:10:32','2021-08-08 04:10:32',NULL),(8,27,1,'2021-08-08 04:13:15','2021-08-08 04:13:15',NULL),(11,13,1,'2025-11-18 06:23:21','2025-11-18 06:23:21',NULL);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-18 23:10:18
