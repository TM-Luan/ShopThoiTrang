-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
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
  `id_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (9,'DH20251','Minh Luân','admin@gmail.com','0389137204','Trường Đại học Công Thương TPHCM','giao 12h đêm','2','524000','Chưa thanh toán','Chưa giao hàng','2','2025-11-26 21:19:05','2025-11-26 21:19:05',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'blog-1.jpg','3 CÁCH MẶC ÁO THUN POLO ĐƠN GIẢN MÀ LUÔN ĐẸP','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Giữa những loại trang phục nổi bật trong xã hội hiện đại, áo thun Polo mang lại vẻ chỉn chu, lịch sự nhưng không kém phần trẻ trung, có thể “ứng biến” theo nhiều phong cách, xu hướng khác nhau tuỳ vào cách bạn phối đồ.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><img data-thumb=\"original\" original-height=\"317\" original-width=\"475\" src=\"https://bizweb.dktcdn.net/100/442/302/files/polo-shirt-for-men-4-475x317.jpg?v=1637388644578\" style=\"border-style: none; max-width: 600px; margin: 0px auto; display: block;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Polo là phép lai hoàn hảo giữa áo phông và&nbsp;áo sơ mi, là lựa chọn đầu bảng khi cần đến vẻ ngoài thoải mái nhưng vẫn có sự đứng đắn cần thiết. Ra đời vào những năm 60, áo thun Polo nhanh chóng trở thành loại trang phục không thể thiếu trong tủ đồ của mọi chàng trai bởi sự thuận tiện của chúng khi kết hợp dễ dàng với những trang phục khác, đặc biệt là vào mùa Xuân-Hè.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><img data-thumb=\"original\" original-height=\"362\" original-width=\"599\" src=\"https://bizweb.dktcdn.net/100/442/302/files/street-style-men-polo-shirt-copy.jpg?v=1637388667358\" style=\"border-style: none; max-width: 600px; margin: 0px auto; display: block;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Sau nhiều năm trôi qua, áo Polo luôn giữ vững vị trí của nó trong làn sóng thời trang, trở thành một trong những loại áo “phải có” của phái mạnh.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Có rất nhiều cách để kết hợp áo Polo với quần áo trong tủ đồ của bạn như phối cùng quần kaki, chinos hay thậm chí là áo denim jacket. Hãy cùng chúng tôi tham khảo 3 cách mặc Polo đơn giản mà vẫn phong cách.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>1. Phong cáchCasual: Áo Polo, quần joggers và giày vans/plimsolls</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Do được làm bằng chất liệu thun nên cách phối áo Polo theo phong cách casual luôn dễ dàng và đẹp nhất. Rất đơn giản nhưng dễ ứng dụng, bạn có thể kết hợp áo Polo với tông trắng cơ bản mặc cùng một chiếc quần joggers màu trung tính.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Không chỉ có vai trò như một lớp áo lót, ngược lại, áo thun Polo tay dài còn có tác dụng thay thế như một chiếc áo len để thêm phần ấm áp cho mùa lạnh mà vẫn đảm bảo được yếu tố thẩm mỹ của bộ trang phục cũng như không ảnh hưởng đến phong cách của bạn.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Và item để tạo ấn tượng cho toàn bộ đồ nhưng theo một phong cách “sành” hơn, đó là một chiếc denim jacket khéo léo mặc theo tông màu tương phản giữa áo khoác và áo Polo dài tay. Ngoài ra, để “bộ cánh” có thêm điểm nhấn, bạn cũng nên chọn những đôi giày loafers bằng vải canvas sáng màu.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>2. Phong cáchSmart – casual: Áo Polo, quần chinos và giày loafers</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Combo này rất được ưa chuộng đến mức đã tạo nên sự nổi tiếng cho áo Polo trên toàn thế giới với sự phối hợp tự nhiên giữa những item thời thượng và thường ngày. Đây là một phong cách ấn tượng nhưng lại vô cùng an toàn cho những quý ông trang nhã mà không quá cứng nhắc.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Tất cả những gì bạn cần là kết hợp chiếc áo thun Polo với một chiếc quần chinos màu sáng tương tự như xanh navy, một đôi giày loafers bằng da và một cặp kính Rayban, vậy là vẻ ngoài của bạn đã gần như trở nên hoàn hảo. Như thường lệ, sự vừa vặn là chìa khóa quyết định, một trong những yếu tố quan trọng nhất của áo Polo chính là đường bo ở cuối ống tay áo có độ ôm sát “quấn” lấy bắp tay một cách vừa vặn.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Và mặc dù áo Polo chính xác là một item đậm phong cách casual, nhưng bạn có thể thay thế quần chinos bằng cách phối áo cùng shorts kaki và một đôi trainers màu trắng trang nhã, trong hoàn cảnh phù hợp.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3. Phong cách Smart-casual: Áo polo, quần tây và giày loafers</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đơn giản chính là chìa khóa đối với phong cách Smart-casual. Với áo thun Polo, càng đơn giản càng tốt. Nó không chỉ giúp người mặc thêm phần lịch lãm mà còn giúp bạn trông bảnh bao và chững chạc trong mọi hoàn cảnh. Chính điều này tạo nên một chuẩn mực của áo Polo.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Để tô điểm thêm cho bộ trang phục, một đôi&nbsp;giày loafers chất liệu bằng da&nbsp;được đánh bóng chỉn chu và một chiếc ví vuông sẽ khiến bạn đặc biệt hơn với những chàng trai khác. Tuy nhiên, việc lựa chọn màu sắc cũng khá quan trọng. Bên cạnh những tông màu làm tăng lên vẻ nam tính thì các chàng cũng đừng bỏ qua yếu tố làm sáng da.</p>','2025-11-24 11:35:16','2025-11-27 03:16:51',NULL),(2,'blog-2.jpg','CÁCH CHỌN VÀ PHỐI ÁO THUN POLO NAM CHUẨN','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun&nbsp;polo nam&nbsp;là một loại áo ra đời từ rất lâu trước đây và không bao giờ lỗi mốt. Chiếc áo thần thánh này xuất hiện ở mọi tủ đồ của đấng mày râu, anh chàng nào cũng sở hữu cho mình ít nhất một chiếc. Lý do kiểu áo này được yêu thích chính là ở tính phổ biến, phù hợp với mọi lứa tuổi, giới tính. Tuy nhiên vẫn có không ít người thắc mắc về cách chọn và phối áo thun polo nam, vì vậy chúng tôi dành tặng bài viết dưới đây cho các tín đồ polo nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>1. Cách chọn chất liệu áo thun polo nam chất lượng</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo polo xuất hiện ở mọi nơi mọi hoàn cảnh, chính vì vậy, chất liệu chính là yếu tố để người mặc lựa chọn cho phù hợp với từng dịp diện áo. Quan trọng hơn nữa là áo thun polo phải mang lại cảm giác thoải mái, dễ chịu. Bởi vì thế mà chất liệu co giãn, thoáng khí là lựa chọn số một.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo nam&nbsp;phổ biến mà các chàng nên lựa chọn nhất là thun cá sấu, cotton, polyester và poly performance. Trong đó thun cá sấu có công nghệ dệt phức tạp hơn, có chất liệu của nó dày và cứng hơn nên phong cách có phần trang trọng hơn so với thun bình thường. Tuy nhiên nói về độ phủ và tỉ lệ yêu thích của người mặc thì polo thun cotton lại được ưa chuộng hơn. Áo thun polo nam chất liệu cotton mang lại cảm giác nhẹ nhàng, thoải mái, thấm hút mồ hôi. Chất liệu cotton là loại vải khá bình dân và giá thành cũng rẻ hơn so với chất liệu cá sấu, vì vậy&nbsp; áo polo cotton phù hợp mặc hàng ngày hơn so với những dịp quan trọng.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Bên cạnh đó, ngày nay cotton được pha trộn với những chất liệu vải khác để tạo nên chiếc áo thun polo nam. Chất vải điển hình thường được phối với cotton để tạo ra một kiểu dáng polo mới mẻ chính là Polyester. Polyester là một loại vải tổng hợp được tạo ra bằng cách liên kết các este với sợi thông qua phản ứng với rượu. Đây là loại vải có đặc tính bền, nhanh khô và chống nhăn. Chất liệu vải Polyester cũng là một loại vải phổ biến cho áo thun polo được sử dụng ngày nay nhất là áo thun polo thể thao. Không ai có thể phủ nhận được độ thấm hút mồ hôi siêu nhanh và tạo cảm giác thoải mái tối đa cho người chơi thể thao hay thường xuyên vận động ngoài trời. Tuy nhiên,&nbsp;chúng tôi&nbsp;nhận thấy điểm trừ của chất liệu này là kém tự nhiên hơn những loại vải cotton sợi bông. Loại áo polo với chất liệu này cũng phù hợp cho phong cách hàng ngày và&nbsp; những ngày vận động ngoài trời.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>2. Cách chọn áo thun polo nam theo kích cỡ&nbsp;</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Dù là áo thun polo nam hay tất cả loại trang phục nào thì bạn cũng cần lựa chọn kích cỡ phù hợp với cơ thể. Màu sắc, phong cách của chiếc polo là những yếu tố đầu tiên gây ấn tượng với bạn nhưng bạn không thể phủ nhận độ vừa vặn với cơ thể vẫn là điều quan trọng nhất. Vậy làm thế nào để chọn kích cỡ áo thun polo nam đẹp và vừa vặn nhất? Darnell xin gợi ý cho bạn những tip lựa áo sau.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đầu tiên là độ dài và rộng tiêu chuẩn để có cách mặc áo thun polo đẹp nhất:</p><ul style=\"list-style-position: inside; list-style-image: initial; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><li>Độ dài áo: Dài áo nên qua đai quần hoặc che hết dây thắt lưng của bạn, vừa đủ để chạm đến túi quần sau. Độ dài này giúp bạn khi sơ vin không bị lòi áo ra ngoài và khi mặc buông không bị quá ngắn lúc ngồi hoặc giơ tay lên.</li><li>Tay áo: chiều dài tay áo nên ở khoảng giữa bắp tay, và không dài quá 2/3 phần tay trên của bạn.</li></ul><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo nên mặc hơi sát với cơ thể một chút không không nên bó chặt. Chiếc áo polo đẹp nhất khi mặc là hơi bó phần ngực và cánh tay để tạo lên nét nam tính. Phần thân giữa nên thon và suôn để tránh lộ bụng. Áo nên cách người 1,5 đến 2cm, chiều dài tay áo không quá ⅔ bắp tay và độ dài áo phải qua thắt lưng. Đó là cách để các anh có thể lựa chọn cho mình một chiếc áo thun polo vừa khít và phù hợp với mình.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3. Chọn áo polo nam theo kiểu dáng</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ngoài lựa chọn chất liệu và kích cỡ thì kiểu dáng áo thun polo cũng làm các anh phải đắn đo suy nghĩ. Về cơ bản áo thun polo nam có 3 kiểu dáng phổ biến là polo suông phổ thông, polo suông vừa và dáng áo polo slim-fit.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.1. Áo polo suông phổ thông</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đây là dáng áo có thể nói là chân ái của mọi dáng áo polo đối với các anh chàng yêu thể thao. Với form suông rộng rãi, áo polo dáng suông phổ thông này mang lại cảm giác thoải mái tối đa cho người mặc. Không những thế dáng áo này còn phù hợp với mọi vóc dáng nam giới. Phần tay và bụng rộng rãi giúp các anh thoải mái che đi những khuyết điểm.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.2. Áo polo nam suông vừa&nbsp;</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Cũng là một kiểu áo thun polo dáng suông nhưng điểm khác biệt giữa polo suông phổ thông và dáng suông vừa là phần eo của kiểu dáng này được bóp vào một chút. Phần vai và tay áo của dáng polo này vẫn được thiết kế rộng rãi đảm bảo sự thoải mái cho người mặc. Mục đích của việc bóp phần thân áo nhỏ hơn là để làm trọn vẹn cả tính chất thoải mái và đảm bảo cả tính thời trang cho chiếc áo. Phần eo ôm nhẹ làm chiếc áo gọn gàng hơn vừa giúp các anh khoe được phần eo thon gọn lý tưởng. Với kiểu dáng áo này các anh có thể thoải mái phối với nhiều style khác nhau không lo nhàm chán.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>3.3&nbsp; Dáng áo thun polo nam slim-fit</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nghe tên thôi chắc chắn bạn cũng hình dung ra dáng áo này rồi đúng không? Đó chính xác là dáng áo ôm sát với cơ thể người mặc. Kiểu dáng áo này kén người mặc hơn vì nó phù hợp với những anh chàng có body chuẩn hoặc thon gọn một chút. Vì dáng áo ôm sát nên ưu điểm của nó là giúp người mặc khoe được tối đa vóc dáng cơ thể. Vì vậy các anh chàng có body chuẩn đét nên lựa chọn kiểu dáng áo thun polo này để ghi điểm ngay với người ấy nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4. Cách phối đồ với áo thun polo nam đẹp nhất</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Khi đã có thể chọn được những chiếc áo polo phù hợp, vậy việc tiếp theo của các chàng là tìm hiểu cách phối đồ với chúng. Hãy để Darnell lên ý tưởng phối đồ với áo thun polo theo từng phong cách giúp các anh nhé!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4.1 Phong cách công sở với áo thun polo</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo thun polo là lựa chọn số 1 cho các chàng công sở trong mùa hè này rồi đúng không? Bạn có thể mặc áo thun polo với quần tây, Kaki hoặc thậm chí là quần jean và vẫn phù hợp với môi trường công sở.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nếu bạn là một người nghiêm túc, theo đuổi phong cách chững chạc quý ông thì phối chiếc áo thun polo với quần kaki trơn màu là số 1. Kèm theo style này là giày tây trơn đen phong cách quý ông sẽ giúp bạn trông sang trọng, lịch lãm.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><img data-thumb=\"original\" original-height=\"800\" original-width=\"602\" src=\"https://bizweb.dktcdn.net/100/442/302/files/3-chon-va-phoi-ao-polo-3-f96b0f70193240baa29b39850791abfc.png?v=1637388353426\" style=\"border-style: none; max-width: 600px; margin: 0px auto; display: block;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Phối áo thun polo với quần jean và giày thể thao chính là phong cách dành cho các anh chàng năng động, trẻ trung mà không kém phần trang trọng trong văn phòng. Cách phối áo polo này giúp bạn hack tuổi tối đa và thu hút mọi ánh nhìn xung quanh đấy!</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>4.2 Phối áo thun&nbsp;polo nam phong cách thể thao, phong cách ngày thường</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nếu bạn là một người thích sự năng động và phong cách thể thao thì set đồ áo polo kết hợp quần jogger chính xác là những gì bạn cần. Nhưng bạn cần lưu ý chọn chất liệu quần jogger phù hợp với thời tiết. Những chiếc quần jogger nỉ mỏng sẽ thích hợp trong mùa thu, còn mùa hè sẽ là những jogger cotton hoặc lanh mát và phóng khoáng.&nbsp;</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Cách phối phổ biến nhất cho mùa hè phù hợp với mùa hè cho các chàng đó chính là áo thun polo phối với quần short. Bạn có thể phối áo polo với quần short kaki hoặc short jean tùy ý. Điểm đặc biệt của cách phối đồ này là tạo cảm giác thoải mái, tự tin, phù hợp với nhiều hoàn cảnh. Cánh mày râu có thể phối áo polo theo phong cách này để dạo phố, đi cafe hoặc thậm chí là hẹn hò vào những ngày hè nóng bức.</p>','2025-11-24 11:35:16','2025-11-27 03:17:11',NULL),(3,'blog-3.jpg','ÁO THUN POLO NAM: VẺ ĐẸP THỜI TRANG BẤT HỦ CHO PHÁI MẠNH!','<p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Áo polo là một kiểu áo thun&nbsp; có cổ áo dạng bẻ xuống, thường có từ 2-3 cúc ở dưới cổ áo . Tay áo có 2 kiểu ngắn tay và dài tay với thiết kế bo gấu.<br>Chất liệu cấu tạo thì cực kỳ đa dạng từ cotton, polyeste đến cotton pha poly, lụa (silk) hay linen ( vải lanh ). Chúng còn được gọi là áo thun có cổ.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Cách chọn mua áo thun polo nam (áo thun có cổ)</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Những chiếc áo polo nam hiện đại ngày nay được thiết kế với rất nhiều kiểu dáng và chất liệu khác nhau để đáp ứng nhu cầu người sử dụng trong từng hoàn cảnh. Để có thể chọn và mặc đẹp được những chiếc áo này, chúng ta sẽ cần tìm hiểu kĩ về chất liệu, kiểu dáng của chúng.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Chất liệu</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Có rất nhiều chất liệu cấu tạo nên chiếc áo polo từ tự nhiên cho đến những sợi nhân tạo. Tuy nhiên, có 2 loại phổ biến nhất là&nbsp;Pique cotton và Jersey cotton</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Pique cotton:</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Đây là loại vải nguyên bản để tạo nên chiếc áo thun polo thời kỳ ban đầu. Vải pique cotton được dệt với cấu trúc lỗ thoáng, mắt vải to giúp người mặc được cảm giác thoáng mát trong mùa xuân hè.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nhược điểm của loại vải này là rất dễ xù lông và nhanh dão ( đặc biệt khi cho vào máy giặt và quay mạnh ). Vì vậy, khuyến khích các bạn nam nên giặt tay hoặc giặt máy chế độ nhẹ nhàng</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><img data-thumb=\"original\" original-height=\"500\" original-width=\"500\" src=\"https://bizweb.dktcdn.net/100/442/302/files/pique-cotton-1.jpg?v=1637388173164\" style=\"border-style: none; max-width: 600px; margin: 0px auto; display: block;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Jersey cotton</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Loại vải dùng làm áo polo thường là Single Jersey. Đây là một loại vải được dệt theo kiểu dệt đơn, với 2 mặt trái phải khác nhau rất dễ phân biệt ( một bên phẳng 1 bên mịn ).</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ưu điểm của loại vải này là chúng có trọng lượng nhẹ, co dãn tốt 2 chiều nên tạo cảm giác thoải mái cho người mặc. Vải Jersey thường được dùng trong các loại áo polo thể thao.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Nhược điểm của loại vải này là chúng dễ quăn mép vải và bị tuột sợi.&nbsp; Giặt cũng nên để chế độ nhẹ nhàng.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><img data-thumb=\"original\" original-height=\"480\" original-width=\"640\" src=\"https://bizweb.dktcdn.net/100/442/302/files/jersey-cotton.jpg?v=1637388195753\" style=\"border-style: none; max-width: 600px; margin: 0px auto; display: block;\"></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\"><strong>Các loại vải khác</strong></p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Về cơ bản, các nhà sản xuất sẽ pha thêm các sợi nhân tạo ( poly, nylon hay spandex ) với&nbsp; 2 loại vải cotton cơ bản pique và jersey ở trên. Mục đích để tăng độ bền cơ học và độ bền màu cho áo polo.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Cá biệt thì các dòng áo polo thể thao thường được cấu tạo hoàn toàn bằng các sợ polyester biến tính ( với từng nhà sản xuất sẽ có tính chất khác nhau) với khả năng thấm hút mồ hôi siêu nhanh để tạo sự thoải mái tối đa cho vận động viên hoặc người chơi thể thao.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">Ngoài ra, ở các nơi có mùa đông thì những chiếc áo polo dài tay ( áo thun có cổ dài tay) sẽ thường được làm bằng vải len (wool) hoặc len pha sợi cotton, sợi nhân tạo.</p><p style=\"overflow-wrap: break-word; color: rgb(54, 63, 77); font-family: SVN-Gotham; letter-spacing: 0.25px;\">CHÚ Ý:&nbsp;Ngoài dòng áo polo thể thao được thiết kế chuyên dụng cho các hoạt động mạnh thì bạn nên tránh các kiểu áo polo mặc casual hàng ngày cấu tạo phần lớn bằng sợi nhân tạo ( &gt;90% polyester , nylon ) vì chúng thấm hút mồ hôi cực kém và&nbsp; gây nên cảm giác bí bách khó chịu cả ngày cho bạn.</p>','2025-11-27 03:17:50','2025-11-27 03:17:50',NULL);
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'ÁO POLO','2025-11-24 11:35:16','2025-11-24 11:35:16',NULL),(2,'ÁO THUN','2025-11-24 11:35:16','2025-11-24 11:35:16',NULL),(3,'QUẦN NAM','2025-11-24 11:35:16','2025-11-24 11:35:16',NULL),(4,'PHỤ KIỆN','2025-11-24 11:35:16','2025-11-24 11:35:16',NULL),(5,'ÁO KHOÁC','2025-11-24 11:35:16','2025-11-24 11:35:16',NULL);
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
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_bill`
--

LOCK TABLES `detail_bill` WRITE;
/*!40000 ALTER TABLE `detail_bill` DISABLE KEYS */;
INSERT INTO `detail_bill` VALUES (12,'ÁO THUN TRƠN HAFOS','M','Mặc định','1','225000','9.webp','DH20251','2025-11-26 21:19:05','2025-11-26 21:19:05',NULL),(13,'ÁO POLO DAILY WAFFLE HAFOS','M','Mặc định','1','299000','2.webp','DH20251','2025-11-26 21:19:05','2025-11-26 21:19:05',NULL);
/*!40000 ALTER TABLE `detail_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variants`
--

DROP TABLE IF EXISTS `product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã quản lý kho',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_product_id_foreign` (`product_id`),
  CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variants`
--

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;
INSERT INTO `product_variants` VALUES (64,41,'L','Đen',10,'41-L-0','2025-11-24 05:03:10','2025-11-24 05:03:10'),(65,41,'S','Đen',10,'41-S-1','2025-11-24 05:03:10','2025-11-24 05:03:10'),(66,41,'L','Trắng',10,'41-L-2','2025-11-24 05:03:10','2025-11-24 05:03:10'),(67,41,'S','Trắng',10,'41-S-3','2025-11-24 05:03:10','2025-11-24 05:03:10');
/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
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
  `price` decimal(15,0) NOT NULL,
  `discount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` int NOT NULL DEFAULT '100',
  `information` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int NOT NULL DEFAULT '0',
  `outstanding` int NOT NULL DEFAULT '0',
  `catalog_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ÁO POLO TRƠN HAFOS',279000,'0','1.webp','','Áo polo trơn basic, vải cá sấu cotton co giãn 4 chiều.','<p>Áo Polo Trơn Hafos là sự lựa chọn hoàn hảo cho phong cách tối giản. Chất liệu vải cá sấu cotton cao cấp.</p>',100,'Cá sấu Cotton|Regular Fit|Việt Nam|Co giãn 4 chiều',150,1,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(2,'ÁO POLO DAILY WAFFLE HAFOS',299000,'0','2.webp','','Áo polo vải Waffle bề mặt tổ ong độc đáo, thoáng mát.','<p>Điểm nhấn của dòng Polo Daily Waffle chính là bề mặt vải dệt kiểu tổ ong.</p>',100,'Vải Waffle|Regular|Việt Nam|Thoáng khí, 8 màu',200,1,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(3,'ÁO POLO FALCON BASIC',300000,'0','3.webp','','Thiết kế nam tính với logo Falcon thêu tinh tế.','<p>Polo Falcon Basic mang đến vẻ ngoài mạnh mẽ với logo đại bàng thêu tỉ mỉ.</p>',100,'Cotton Poly|Slim Fit|Việt Nam|Logo thêu, Size M-XXL',120,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(4,'ÁO POLO PLAIN',300000,'0','4.webp','','Phong cách Minimalist, dễ dàng phối với mọi trang phục.','<p>Dòng Polo Plain đề cao sự đơn giản, cổ áo chống quăn mép.</p>',100,'100% Cotton|Regular Fit|Việt Nam|Cổ chống quăn, Bảo hành 1 đổi 1',100,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(5,'ÁO POLO HAVEN',300000,'0','5.webp','','Phối màu cổ và tay áo tạo điểm nhấn trẻ trung.','<p>Áo Polo Haven nổi bật với các đường viền phối màu ở cổ và tay áo.</p>',100,'CVC|Regular Fit|Việt Nam|Phối viền, Độ bền màu cao',100,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(6,'ÁO POLO WOODLINE',289000,'0','6.webp','','Họa tiết kẻ ngang Woodline cổ điển và thanh lịch.','<p>Polo Woodline với các sọc ngang nhỏ tinh tế giúp người mặc trông khỏe khoắn hơn.</p>',100,'Cotton|Regular Fit|Việt Nam|Họa tiết kẻ ngang, Đủ size',100,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(7,'ÁO POLO REDDY',300000,'0','7.webp','','Gam màu nóng ấm, nổi bật cá tính.','<p>Bộ sưu tập Polo Reddy tập trung vào các gam màu ấm như đỏ đô, cam đất.</p>',100,'Coolmate|Regular Fit|Việt Nam|Gam màu nóng, Thấm hút tốt',100,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(8,'ÁO POLO TIMBER WAFFLE',199000,'10','8.webp','','Phiên bản Waffle tiết kiệm hơn với thiết kế tối giản.','<p>Vẫn giữ chất liệu Waffle xốp nhẹ nhưng mức giá mềm hơn.</p>',100,'Waffle|Regular Fit|Việt Nam|Giá tiết kiệm, Mùa Hè/Thu',100,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(9,'ÁO THUN TRƠN HAFOS',250000,'10','9.webp','','Áo thun basic 100% Cotton, mềm mịn, thấm hút tốt.','<p>Chiếc áo thun quốc dân của HAFOS. Sử dụng 100% sợi bông tự nhiên.</p>',100,'100% Cotton|Regular Fit|Việt Nam|Định lượng 250gsm, Cổ tròn tay ngắn',150,1,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(10,'ÁO THUN ROOKEE',250000,'0','10.webp','','Phong cách Streetwear với form áo rộng rãi.','<p>Áo thun Rookee hướng đến các bạn trẻ yêu thích sự năng động, form Oversize.</p>',100,'Cotton 2 chiều|Oversize|Việt Nam|Hình in decal nhiệt, Phong cách Streetwear',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(11,'ÁO THUN TANKTOP HAFOS',250000,'0','11.webp','','Áo ba lỗ khoe trọn cơ bắp, thích hợp tập Gym.','<p>Thiết kế Tanktop khoét nách vừa phải, tôn dáng thể thao.</p>',100,'Spandex|Tanktop|Việt Nam|Dành cho Gym, Thoáng khí cao',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(12,'ÁO THUN TAY DÀI CHARM',250000,'0','12.webp','','Áo thun tay dài giữ ấm nhẹ, phong cách Hàn Quốc.','<p>Item không thể thiếu cho mùa thu đông. Dễ dàng layer cùng áo khoác.</p>',100,'Cotton nỉ|Regular Fit|Việt Nam|Tay dài, Giữ ấm trung bình',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(13,'ÁO THUN BLUTE',99000,'0','13.webp','','Áo thun giá rẻ chất lượng cao, nhiều màu sắc.','<p>Dòng áo thun cơ bản với mức giá cực tốt. Phù hợp mặc nhà.</p>',100,'Poly Cotton|Regular Fit|Việt Nam|Giá rẻ, 10 màu, Size S-XL',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(14,'ÁO THUN RAPLANG HAFOS',99000,'0','14.webp','','Thiết kế tay Raglan phối màu vai lạ mắt.','<p>Kiểu dáng tay Raglan không đường may vai giúp cử động cánh tay linh hoạt.</p>',100,'Cotton pha|Regular Fit|Việt Nam|Tay Raglan, Phối màu tương phản',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(15,'ÁO THUN RELAX TEE HAFOS',99000,'0','15.webp','','Form áo Relax Fit, thoải mái tuyệt đối.','<p>Đúng như tên gọi, Relax Tee mang lại cảm giác thư giãn nhất khi mặc.</p>',100,'Cotton|Relax Fit|Việt Nam|Cổ tròn bo zip, Ứng dụng hàng ngày',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(16,'ÁO THUN COVERSTITCH HAFOS',99000,'0','16.webp','','Đường may nổi trang trí (Coverstitch) độc đáo.','<p>Điểm đặc biệt là các đường chỉ trần nổi chạy dọc thân áo.</p>',100,'Cotton pha|Regular Fit|Việt Nam|Đường chỉ nổi, Phong cách bụi bặm',100,0,2,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(17,'QUẦN SOFT SHORT KAKI HAFOS',280000,'0','17.webp','','Quần short Kaki mềm mại, lưng thun co giãn.','<p>Công nghệ Soft-touch giúp bề mặt kaki mềm như nhung.</p>',100,'Kaki mềm|Regular|Việt Nam|Lưng thun dây rút, 2 túi sâu',200,1,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(18,'QUẦN SHORT BASIC HAFOS',279000,'0','18.webp','','Quần đùi cơ bản, form đứng, vải bền bỉ.','<p>Thiết kế basic dễ mặc. Vải kaki dày dặn đứng form.</p>',100,'Kaki tĩnh|Regular|Việt Nam|Màu Be/Đen/Xanh, Khóa kéo',100,1,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(19,'QUẦN KAKI SMART BASIC HAFOS',379000,'0','19.webp','','Quần dài Kaki phong cách Smart Casual lịch lãm.','<p>Chiếc quần đa năng có thể mặc đi làm công sở hoặc đi chơi.</p>',100,'Kaki co giãn|Smart Casual|Việt Nam|Ống côn vừa, Co giãn nhẹ',100,0,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(20,'QUẦN DÀI TÂY EZ CLASSIC HAFOS',400000,'0','20.webp','','Quần tây âu không cần ủi, chống nhăn hoàn hảo.','<p>Dòng EZ Classic sử dụng vải tuyết mưa cao cấp, chống nhăn tuyệt đối.</p>',100,'Tuyết mưa|Classic|Việt Nam|Chống nhăn, Xếp ly 1 ly',150,0,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(21,'QUẦN SHORT TÂY EZ CLASSIC HAFOS',280000,'0','21.webp','','Phiên bản ngắn của dòng quần tây EZ, sành điệu.','<p>Mang vẻ lịch sự của quần tây nhưng thoải mái của quần short.</p>',100,'Tuyết mưa|Classic|Việt Nam|Gấu lơ vê, Phong cách lịch sự',100,0,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(22,'QUẦN DÀI JEAN STRAIGHT',150000,'0','22.webp','','Quần Jean ống suông cổ điển, vải denim dày dặn.','<p>Form Straight (ống suông) thoải mái, che khuyết điểm chân cong.</p>',100,'|||',100,0,3,'2025-11-24 12:00:43','2025-11-27 03:10:59',NULL),(23,'QUẦN SHORT NỈ POCKY',280000,'0','23.webp','','Quần nỉ da cá thoáng mát, mặc nhà cực êm.','<p>Sử dụng vải nỉ da cá (French Terry) thấm hút tốt.</p>',100,'Nỉ da cá|Relax|Việt Nam|Lưng thun, Mặc nhà/dạo phố',100,0,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(24,'QUẦN JEANS SLIM-FIT',450000,'0','24.webp','','Quần Jean ôm vừa vặn, co giãn tốt.','<p>Dáng Slim-fit ôm nhẹ dọc theo chân giúp hack chiều cao.</p>',100,'Denim pha Spandex|Slim-fit|Việt Nam|Co giãn tốt, Màu đen/xanh đậm',100,0,3,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(25,'TÚI ĐEO CHÉO BASIC HAFOS',179000,'0','25.webp','','Túi đeo chéo nhỏ gọn, chống nước nhẹ.','<p>Kích thước vừa đủ đựng điện thoại, ví và chìa khóa.</p>',100,'Canvas/Dù|Regular|Việt Nam|Kích thước 20x15cm, 2 ngăn',80,1,4,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(26,'DÉP RAINESS HAFOS',489000,'0','26.webp','','Dép đúc nguyên khối, êm ái, chống trơn trượt.','<p>Công nghệ đúc EVA nguyên khối siêu nhẹ. Đế thiết kế rãnh sâu.</p>',100,'EVA đúc|Universal|Việt Nam|Siêu nhẹ, Chống trượt',100,0,4,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(27,'NÓN FALCON ICON CAP',159000,'0','27.webp','','Nón kết lưỡi trai form cứng cáp, logo kim loại.','<p>Nón kết vải Kaki Cotton dày dặn. Logo Falcon bằng kim loại sang trọng.</p>',100,'Kaki Cotton|Snapback|Việt Nam|Logo kim loại, Size freesize',100,0,4,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(28,'BOXER LỤA TRƠN',99000,'0','28.webp','','Quần lót nam lụa băng mát lạnh, kháng khuẩn.','<p>Trải nghiệm cảm giác mặc như không mặc với chất liệu lụa băng.</p>',100,'Ice Silk|Regular|Việt Nam|Mát lạnh, Đáy kháng khuẩn',100,0,4,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(40,'ÁO THUN TAY DÀI HENLEY',300000,'10','29.webp','','Áo thun Henley cổ trụ cài nút lãng tử.','<p>Áo Henley là sự kết hợp giữa áo thun và áo polo, mang lại vẻ phong trần.</p>',50,'Cotton Waffle|Regular|Việt Nam|Cổ trụ cài nút, Phong cách Vintage',50,0,1,'2025-11-24 12:00:43','2025-11-24 12:00:43',NULL),(41,'QUẦN SHORT POCKY',300000,'50','23.webp','','Quần ngắn thoáng mát','<p>thoáng mát</p>',40,'Nỉ|Regular|VIệt Nam|',0,1,3,'2025-11-24 05:03:10','2025-11-24 05:03:10',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'tải xuống.jpg','Minh Luân','admin',NULL,NULL,'admin@gmail.com',NULL,'$2y$10$H127uXEphjS56Yogm5uCUuIbpc59rsJAbHRSAYfcQhvGrBy02rE/a',NULL,'1','2025-11-24 04:38:24','2025-11-27 03:20:21',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
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

-- Dump completed on 2025-11-27 17:21:58
