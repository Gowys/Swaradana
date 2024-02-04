-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for swaradana
CREATE DATABASE IF NOT EXISTS `swaradana` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `swaradana`;

-- Dumping structure for table swaradana.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) unsigned NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(15) DEFAULT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_photo` varchar(255) NOT NULL,
  `admin_photo2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table swaradana.admins: ~0 rows (approximately)
INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_password`, `admin_photo`, `admin_photo2`) VALUES
	(1, 'Khaleed', 'admin@gmail.com', '62897765432', '0287040c474dbf44cdeb17eebb99d828', 'admin_profile.jpg', 'admin_profile2.jpg');

-- Dumping structure for table swaradana.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_cost` decimal(10,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table swaradana.orders: ~9 rows (approximately)
INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
	(5, 33.50, 'delivered', 8, '', '', '', '2023-06-07 12:32:59'),
	(6, 20.00, 'not paid', 8, '1', 'a', 'a', '2023-06-07 12:33:22'),
	(7, 13.50, 'paid', 8, '1', 'a', 'a', '2023-06-07 01:06:42'),
	(8, 310.00, 'not paid', 8, '879', 'a', 'Bnaundg', '2023-06-08 11:55:07'),
	(9, 300.00, 'paid', 8, '54624263', 'Bandung', 'Bandung City View', '2023-06-08 12:00:47'),
	(10, 300.00, 'not paid', 8, '085559794535', 'Bandung', 'Bandung City View', '2023-06-08 01:00:03'),
	(11, 300.00, 'not paid', 8, '123', 'Bandung', 'Bandung', '2023-06-08 01:38:11'),
	(12, 1100.00, 'not paid', 8, '', '', '', '2023-06-11 04:05:00'),
	(13, 1400.00, 'paid', 10, '081312312', 'Bandung', 'Bandung', '2023-06-11 04:56:06'),
	(14, 300.00, 'paid', 11, '082131213', 'BuyerTown', 'AddressBuyer', '2023-06-11 05:22:10');

-- Dumping structure for table swaradana.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table swaradana.order_items: ~13 rows (approximately)
INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
	(7, 5, '3', 'Jaket pria kantor formal casual TRENDY', 'shop_02.jpg', 13.50, 1, 8, '2023-06-07 12:32:59'),
	(8, 5, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'shop_01.jpg', 20.00, 1, 8, '2023-06-07 12:32:59'),
	(9, 6, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'shop_01.jpg', 20.00, 1, 8, '2023-06-07 12:33:22'),
	(10, 7, '3', 'Jaket pria kantor formal casual TRENDY', 'shop_02.jpg', 13.50, 1, 8, '2023-06-07 01:06:42'),
	(11, 8, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 8, '2023-06-08 11:55:07'),
	(12, 8, '16', 'a', 'a1.jpg', 10.00, 1, 8, '2023-06-08 11:55:07'),
	(13, 9, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 8, '2023-06-08 12:00:47'),
	(14, 10, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 8, '2023-06-08 01:00:03'),
	(15, 11, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 8, '2023-06-08 01:38:11'),
	(16, 12, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 8, '2023-06-11 04:05:00'),
	(17, 12, '3', 'Fender Precision Bass', 'Fender_Precision_Bass1.jpg', 800.00, 1, 8, '2023-06-11 04:05:00'),
	(18, 13, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 2, 10, '2023-06-11 04:56:06'),
	(19, 13, '3', 'Fender Precision Bass', 'Fender_Precision_Bass1.jpg', 800.00, 1, 10, '2023-06-11 04:56:06'),
	(20, 14, '1', 'Yamaha Pacifica 112V', 'Yamaha_Pacifica_112V1.jpg', 300.00, 1, 11, '2023-06-11 05:22:10');

-- Dumping structure for table swaradana.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table swaradana.payments: ~4 rows (approximately)
INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
	(NULL, 7, 8, '05170600SA192474S', '2023-06-07 13:22:09'),
	(NULL, 9, 8, '27391999DU899612F', '2023-06-08 12:01:38'),
	(NULL, 13, 10, '6MV30315MN4463636', '2023-06-11 16:58:07'),
	(NULL, 14, 11, '91W08186D39894535', '2023-06-11 17:22:54');

-- Dumping structure for table swaradana.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_criteria` varchar(50) DEFAULT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `product_image4` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `special_offer` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table swaradana.products: ~9 rows (approximately)
INSERT INTO `products` (`product_id`, `product_name`, `product_brand`, `product_category`, `product_description`, `product_criteria`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `special_offer`, `product_color`) VALUES
	(3, 'Fender Precision Bass', 'Fender', 'Gitar', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat.', NULL, 'Fender_Precision_Bass1.jpg', 'Fender_Precision_Bass2.jpg', 'Fender_Precision_Bass3.jpg', 'Fender_Precision_Bass4.jpg', 800.00, 0.00, 'Red'),
	(4, 'Gibson J-45 Standard', 'Gibson', 'Gitar', 'Gibson J-45 Standard ini termasuk kategori gitar akustik mempunyai desain klasik, dengan kombinasi material kulit imitasi dan kulit suede imitasi, sepatu ini menggunakan outsole full memberikan kekuatan ekstra.', NULL, 'Gibson_J-45_Standard1.jpg', 'Gibson_J-45_Standard2.jpg', 'Gibson_J-45_Standard3.jpg', 'Gibson_J-45_Standard4.jpg', 2000.00, 0.00, 'Yellow'),
	(5, 'Yamaha Stage Custom Birch', 'Yamaha', 'Drum', 'Produk ini too much perfect, ga perlu pake foto lah ya, itu foto produk udah menggambarkan semuanya', NULL, 'Yamaha_Stage_Custom_Birch1.jpg', 'Yamaha_Stage_Custom_Birch2.jpg', 'Yamaha_Stage_Custom_Birch3.jpg', 'Yamaha_Stage_Custom_Birch4.jpg', 800.00, 0.00, 'White'),
	(6, 'Yamaha PSR-E363', 'Yamaha', 'Keyboard dan Piano', 'Yamaha PSR-E363 suaranya makjoss', NULL, 'Yamaha_PSR-E3631.jpg', 'Yamaha_PSR-E3632.jpg', 'Yamaha_PSR-E3633.jpg', 'Yamaha_PSR-E3634.jpg', 200.00, 0.00, 'Red'),
	(12, 'Amplifier Gitar: Fender Mustang GT 40 ', 'Fender', 'Alat Tiup', 'Amplifier Gitar: Fender Mustang GT 40 speaker ter ajip', NULL, 'Biola1.jpg', 'Biola2.jpg', 'Biola3.jpg', 'Biola4.jpg', 250.00, 12.00, 'Black'),
	(13, 'Cajon: Pearl PBC507JC', 'Pearl', 'Drum', 'Cajon: Pearl PBC507JC wadidawlah pokoknya musiknya', NULL, 'Cajon:_Pearl_PBC507JC1.jpg', 'Cajon:_Pearl_PBC507JC2.jpg', 'Cajon:_Pearl_PBC507JC3.jpg', 'Cajon:_Pearl_PBC507JC4.jpg', 700.00, 10.00, 'Yellow'),
	(14, 'Synthesizer: Korg Minilogue XD', 'Korg', 'Keyboard dan Piano', 'Synthesizer: Korg Minilogue XD aduhai dah suaranya', NULL, 's1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 600.00, 1.00, 'Black'),
	(18, 'Alat Musik', 'Yamaha', 'Gitar', 'Gitar Hebat', NULL, 'Alat_Musik1.jpg', 'Alat_Musik2.jpg', 'Alat_Musik3.jpg', 'Alat_Musik4.jpg', 500.00, 50.00, 'Red'),
	(19, 'Gitar Merah', 'Yamaha', 'Gitar', 'Gitar Merah Meriah', NULL, 'Gitar_Merah1.jpg', 'Gitar_Merah2.jpg', 'Gitar_Merah3.jpg', 'Gitar_Merah4.jpg', 800.00, 50.00, 'Red');

-- Dumping structure for table swaradana.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_city` varchar(100) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table swaradana.users: ~3 rows (approximately)
INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`, `user_city`, `user_photo`) VALUES
	(8, 'Davit', 'Davit@mail.com', '123', '213', 'ada', 'bdg', 'photo.jpg'),
	(9, 'd', 'davitra.eka@mhs.itenas.ac.id', 'e10adc3949ba59abbe56e057f20f883e', '21354678', 's', 'b', 'd.jpg'),
	(10, 'Davit', 'Davit03@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '081231231', 'Bandung', 'Bandung', 'Davit.jpg'),
	(11, 'Buyer', 'Buyer@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '081231241', 'AddressBuyer', 'BuyerTown', 'Buyer.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
