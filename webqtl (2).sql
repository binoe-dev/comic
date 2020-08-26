-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 04:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webqtl`
--

-- --------------------------------------------------------

--
-- Table structure for table `accadmin`
--

CREATE TABLE `accadmin` (
  `id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accadmin`
--

INSERT INTO `accadmin` (`id`, `Email`, `Password`, `Name`) VALUES
(1, 'admin@gmail.com', 'admin@123', 'Admin'),
(2, 'admin3@gmail.com', '123456', 'Admin3'),
(3, 'admin2@gmail.com', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `accountgg`
--

CREATE TABLE `accountgg` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `linkimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountgg`
--

INSERT INTO `accountgg` (`id`, `name`, `email`, `linkimage`) VALUES
('102116647183714898101', '', 'bmt2000gg@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14Ggmr5SzgRLS4E8EcLzskAMZL1_zi-EvrV3b2Qob-A');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id_author`, `id_member`, `description`) VALUES
(1, 1, 'mèo méo meo mèo meo');

-- --------------------------------------------------------

--
-- Table structure for table `authors-comics`
--

CREATE TABLE `authors-comics` (
  `id_author` int(11) NOT NULL,
  `id_comic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors-comics`
--

INSERT INTO `authors-comics` (`id_author`, `id_comic`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories-comics`
--

CREATE TABLE `categories-comics` (
  `id_comic` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories-comics`
--

INSERT INTO `categories-comics` (`id_comic`, `id_category`) VALUES
(1, 2),
(2, 2),
(2, 3),
(2, 5),
(2, 8),
(3, 8),
(4, 1),
(4, 9),
(1, 1),
(1, 4),
(6, 1),
(7, 1),
(7, 2),
(7, 3),
(7, 5),
(8, 1),
(8, 2),
(8, 3),
(8, 5),
(8, 9),
(9, 1),
(9, 2),
(9, 3),
(9, 5),
(9, 8),
(10, 1),
(10, 2),
(10, 3),
(10, 9),
(11, 1),
(11, 2),
(11, 3),
(12, 8),
(13, 1),
(13, 3),
(13, 5),
(13, 8),
(13, 9),
(14, 1),
(14, 2),
(14, 3),
(14, 9),
(15, 1),
(16, 1),
(16, 4),
(17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID_Category` int(11) NOT NULL,
  `Name_Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID_Category`, `Name_Category`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Fantasy'),
(4, 'Detective'),
(5, 'Harem'),
(6, 'Drama'),
(7, 'Horror'),
(8, 'Romance'),
(9, 'Ishekai');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id_chapter` int(11) NOT NULL,
  `name_chapter` varchar(50) NOT NULL,
  `day_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_comic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id_chapter`, `name_chapter`, `day_update`, `id_comic`) VALUES
(1, 'chap 1', '2020-07-23 03:37:56', 1),
(2, 'chap 2', '2020-07-23 03:37:56', 1),
(1, 'chap 1', '2020-07-23 14:21:17', 2),
(1, 'chap 1', '2020-07-24 12:13:43', 3),
(2, 'chap 2', '2020-07-24 12:13:43', 3),
(3, 'chap 3', '2020-07-24 12:16:02', 3),
(4, 'chap 4', '2020-07-24 12:16:02', 3),
(1, 'chap 1', '2020-07-24 12:29:06', 4),
(2, 'chap 2', '2020-07-24 12:29:06', 4),
(3, 'chap 3', '2020-07-24 12:30:40', 4),
(1, 'chap 1', '2020-07-24 12:30:47', 5),
(2, 'chap 2', '2020-07-24 12:30:47', 5),
(1, 'chap 1', '2020-07-24 12:31:12', 6),
(2, 'chap 2', '2020-07-24 12:31:12', 6),
(1, 'chap 1', '2020-07-24 12:32:38', 7),
(2, 'chap 2', '2020-07-24 12:32:38', 7),
(3, 'chap 3', '2020-07-24 12:33:08', 7),
(1, 'chap 1', '2020-07-24 12:33:16', 8),
(2, 'chap 2', '2020-07-24 12:33:16', 8),
(3, 'chap 3', '2020-07-24 14:14:44', 8),
(1, 'chap 1', '2020-07-24 14:14:57', 9),
(2, 'chap 2', '2020-07-24 14:14:57', 9),
(3, 'chap 3', '2020-07-24 14:17:27', 9),
(1, 'chap 1', '2020-07-24 14:17:41', 10),
(1, 'chap 1', '2020-07-24 22:59:23', 11),
(2, 'chap 2', '2020-07-24 22:59:23', 11),
(3, 'chap 3', '2020-07-24 22:59:43', 11),
(4, 'chap 4', '2020-07-24 22:59:43', 11),
(5, 'chap 5', '2020-07-24 23:00:03', 11),
(1, 'chap 0', '2020-07-24 23:00:13', 12),
(2, 'chap 1', '2020-07-24 23:00:13', 12),
(3, 'chap 2', '2020-07-24 23:01:02', 12),
(4, 'chap 3', '2020-07-24 23:01:02', 12),
(5, 'chap 4', '2020-07-24 23:02:00', 12),
(1, 'chap 1', '2020-07-24 23:02:16', 13),
(2, 'chap 2', '2020-07-24 23:02:16', 13),
(1, 'chap 1', '2020-07-24 23:02:55', 14),
(2, 'chap 2', '2020-07-24 23:02:55', 14),
(1, 'chap 1', '2020-07-24 23:03:35', 15),
(2, 'chap 2', '2020-07-24 23:03:35', 15),
(1, 'chap 1', '2020-07-24 23:04:11', 16),
(2, 'chap 2', '2020-07-24 23:04:11', 16),
(1, 'chap 1', '2020-07-24 23:04:29', 17),
(2, 'chap 2', '2020-07-24 23:04:29', 17);

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `id_comic` int(11) NOT NULL,
  `name_comic` varchar(50) NOT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `static` tinyint(1) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`id_comic`, `name_comic`, `date_update`, `image`, `description`, `static`, `count`) VALUES
(1, 'Doraemon học tập', '2020-07-22 03:52:20', 'Comic/Doraemon học tập/chap 1/001-fix.jpg', 'Cùng rèn luyện khả năng quan sát và trí tưởng tượng\r\nNếu có thể vẽ lại đúng với những gì chúng ta tưởng tượng thì thú vị biết bao !', 0, 0),
(2, 'Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu', '2020-07-22 03:52:20', 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/001-fix (1).jpg', 'Đọc đi rồi biết!!!', 0, 0),
(3, 'Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực', '2020-07-22 14:02:25', 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/001-fix.jpg', 'Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực', 0, 0),
(4, 'Mạt Thế Vi Vương', '2020-07-22 14:08:39', 'Comic/Mạt Thế Vi Vương/chap 1/001-fix.jpg', 'Đang cập nhật...', 0, 0),
(5, 'Hitman', '2020-07-22 14:14:51', 'Comic/Hitman/chap 1/001-fix.jpg', 'Kenzaki Ryuunosuke có niềm đam mê mãnh liệt với manga, anh quyết định tham gia và làm một biên tập viên, anh bắt gặp nữ chính của chúng ta cũng trong buổi phỏng vấn đó. Anh được nhận vào làm và anh nhận ra trong này khá là khác biệt, tổng biên tập thì cứ nói cty sắp phá sản, lúc anh vào thì người hướng dẫn đi du lịch nên họ nói anh cứ thoải mãi, có người gọi điện đến hỏi về việc in ấn thì lại nói xấu họ, anh quyết định bỏ qua những lời nói đó và đi gặp khách hàng, bất ngờ thay đó lại là nữ chính người đã gặp cậu ở buổi thử việc. Một câu truyện nói về giới biên tập viên và các mangaka chứa đầy những cung bậc cảm xúc,những cuộc chiến gay cấn giữ anh với những nhà xuất bản khác, hãy cũng đọc và khám phá nó nào~ Và bộ này chung tác giả với bộ Fuuka đóa nha :3', 0, 0),
(6, 'GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN', '2020-07-22 14:17:17', 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/001-fix.jpg', 'Truyện nằm trong series getter robo - Câu chuyện về những cổ máy đánh nhau chí choé v.v...', 0, 0),
(7, 'GOOD DEEDS OF KANE OF OLD GUY', '2020-07-22 14:21:28', 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/001-fix.jpg', 'Kein, một nhà thám hiểm trung niên, trong khi đang thu thập thảo mộc đã tìm được một vật phẩm quý hiếm (Trái cây phục sinh). Anh đang nghĩ về việc bán nó kiếm tiền thì gặp một cô gái đang kiếm thuốc để cứu mạng người bạn đồng hành của mình. Cô ấy giống Altena- người bạn thời ấu thơ đã chết của anh. Anh và cô gái đó đã có một giao dịch nhỏ..... Cô gái đó là ai?!? Chuyện gì đã xảy ra sau đó....!??\r\nMuốn biết thì đi mà đọc ai rảnh mà kể....', 0, 0),
(8, 'ANH HÙNG THẬN TRỌNG', '2020-07-24 03:56:50', 'Comic/ANH HÙNG THẬN TRỌNG/anh-hung-than-trong.jpg', 'Câu chuyện về một anh hùng thận trọng trong mọi tình huống với một con nữ thần vô dụng ', 0, 0),
(9, 'CHARLOTTE', '2020-07-25 14:18:32', 'Comic/CHARLOTTE/charlotte.jpg', 'Phim chỉ dành cho đối tượng trên 16 tuổi. Charlotte được hãng P.A Works ra mắt vào mùa hè 2015. Câu chuyện xoay quanh một khả năng đặc biệt chỉ xuất hiện ...', 0, 4),
(10, 'CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC', '2020-07-24 04:06:04', 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chuyen-sinh-thanh-duoc-si-o-the-gioi-kha-4472.jpg', 'Theo yêu cầu của Chúa trời , Toudo Yuuki đã được đưa đến một thế giới khác để thực hành triệu tập Anh hùng thực sự. Và bây giờ, anh ấy sống như một nhà thảo dược học, Shin. Tận dụng kiến ​​thức trong quá khứ của mình, anh ta chế ra những bình thuốc vô cùng mạnh mẽ và đi khắp thế giới bán chúng. Tuy nhiên,  thực tế anh ta đã nắm giữ sức mạnh để giết cả một con rồng.', 0, 0),
(11, 'ĐẢO HẢI TẶC', '2020-07-24 04:06:04', 'Comic/ĐẢO HẢI TẶC/dao-hai-tac.jpg', 'One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shōnen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997', 0, 0),
(12, 'DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU', '2020-07-24 04:10:50', 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/dioti-manual-kamisamatachi-no-renai-daik-2407.jpg', 'Hãy cùng dõi theo Shishibara Miko, Atou Mutsuki, và bạn bè của họ khi họ tận hưởng cuộc sống hàng ngày của họ bằng cách cố gắng hiểu ý nghĩa thực sự của cuộc sống con người.', 0, 0),
(13, 'NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA', '2020-07-26 04:11:12', 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/naze-boku-no-sekai-wo-daremo-oboeteinai-9197.jpg', 'Truyện về một thanh niên nghiêm túc biến hoang tưởng thành sự thật', 0, 2),
(14, 'TSUKI GA MICHIBIKU ISEKAI DOUCHUU', '2020-07-26 03:24:44', 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/fZZnFjv.jpg', 'Học sinh trung học Misumi Makoto bị gọi vào thế giới khác bởi vị thần Tsukuyomi để làm anh hùng. Tuy nhiên xấu trai cũng là một cái tội, vị thần ngứa mắt nên đá chàng trai xuống nhân gian với một chút sức mạnh được ban cho. Giờ đây, Makoto đang tự quyết định vận mệnh của mình...', 0, 6),
(15, 'Naruto', '2020-07-24 22:32:07', 'Comic/Naruto/605592.png', 'Bối cảnh Naruto xảy ra vào mười hai năm trước khi câu chuyện chính thức bắt đầu, một con hồ ly chín đuôi đã tấn công Konohagakure. Nó là một con quái vật có sức mạnh khủng khiếp, chỉ một cái vẫy từ một trong chín cái đuôi của nó có thể tạo ra những cơn sóng thần và san bằng nhiều ngọn núi. Nó gây ra sự hỗn loạn và giết chết rất nhiều người cho đến khi người đứng đầu làng Lá – Hokage đệ tứ – đã đánh bại nó bằng cách đổi lấy mạng sống của mình để phong ấn nó vào trong người một đứa trẻ mới sinh. Đứa trẻ đó tên là Uzumaki Naruto. B', 0, 0),
(16, 'Gintama', '2020-07-24 22:32:07', 'Comic/Gintama/gintama_c356_1920x1080.jpg', 'Gintama là câu chuyện xoay xung quanh cuộc sống hằng ngày của 3 nhân vật chính: Sakata Gintoki, một Samurai hết thời, bị bệnh tiểu đường nặng; Shinpachi Shimura, kẻ kế thừa của một võ đường xập xệ do chẳng còn ai đến luyện võ trong thời đại này và Kagura, một Amanto với sức mạnh phi thường, tham ăn trong thân hình nhỏ bé của 1 cô bé 14 tuổi. Cả 3 phải làm đủ mọi việc (hầu hết là phá hoại chứ chẳng làm gì nghiêm túc) để trả tiền nhà hằng tháng. ', 0, 0),
(17, 'MADE IN ABYSS', '2020-07-24 22:34:36', 'Comic/MADE IN ABYSS/873844.jpg', 'Hệ thống hang động khổng lồ, nơi duy nhất trên thế giới còn chưa được khám phá hay còn được biết đến với cái tên, Abyss. Không ai biết được mê cung bí ẩn này sâu xuống bao nhiêu, có những quái vật cũng như di tích nào. Rất nhiều nhà thám hiểm đã dấn thân vào công cuộc thám hiểm nơi đâu. Qua thờii gian, những ai có đủ can đảm để bước xuống mê cung này thường được gọi bằng cái tên Thám hiểm gia hang động. Ở Oosu, thị trấn bên rìa Abyss, có một cô bé mồ côi tên là Rico, nuôi ước trở thành một thám hiểm gia hang động như mẹ cô mà giải được bí ẩn cả Abyss. Một ngày nọ khi đang khám phá những bí ẩn bên dưới Abyss, cô đã gặp được một cậu bé robot…', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id_member` int(11) NOT NULL,
  `id_comic` int(11) NOT NULL,
  `day_follow` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_follow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id_member`, `id_comic`, `day_follow`, `id_follow`) VALUES
(1, 9, '2020-07-26 03:42:24', 3);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_member` int(11) NOT NULL,
  `id_comic` int(11) NOT NULL,
  `day_views` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_member`, `id_comic`, `day_views`, `id_history`) VALUES
(1, 1, '2020-07-26 14:21:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_chapter` int(11) NOT NULL,
  `id_comic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `image`, `id_chapter`, `id_comic`) VALUES
(1, 'Comic/Doraemon học tập/chap 1/001-fix.jpg', 1, 1),
(2, 'Comic/Doraemon học tập/chap 1/002-fix.jpg', 1, 1),
(3, 'Comic/Doraemon học tập/chap 1/003-fix.jpg', 1, 1),
(4, 'Comic/Doraemon học tập/chap 1/004-fix.jpg', 1, 1),
(5, 'Comic/Doraemon học tập/chap 1/005-fix.jpg', 1, 1),
(6, 'Comic/Doraemon học tập/chap 1/006-fix.jpg', 1, 1),
(7, 'Comic/Doraemon học tập/chap 1/007-fix.jpg', 1, 1),
(8, 'Comic/Doraemon học tập/chap 1/008-fix.jpg', 1, 1),
(8, 'Comic/Doraemon học tập/chap 1/008-fix.jpg', 1, 1),
(9, 'Comic/Doraemon học tập/chap 1/009-fix.jpg', 1, 1),
(10, 'Comic/Doraemon học tập/chap 1/010-fix.jpg', 1, 1),
(11, 'Comic/Doraemon học tập/chap 1/011-fix.jpg', 1, 1),
(12, 'Comic/Doraemon học tập/chap 1/012-fix.jpg', 1, 1),
(13, 'Comic/Doraemon học tập/chap 1/013-fix.jpg', 1, 1),
(14, 'Comic/Doraemon học tập/chap 1/014-fix.jpg', 1, 1),
(15, 'Comic/Doraemon học tập/chap 1/015-fix.jpg', 1, 1),
(16, 'Comic/Doraemon học tập/chap 1/016-fix.jpg', 1, 1),
(17, 'Comic/Doraemon học tập/chap 1/017-fix.jpg', 1, 1),
(18, 'Comic/Doraemon học tập/chap 1/018-fix.jpg', 1, 1),
(19, 'Comic/Doraemon học tập/chap 1/019-fix.jpg', 1, 1),
(20, 'Comic/Doraemon học tập/chap 1/020-fix.jpg', 1, 1),
(21, 'Comic/Doraemon học tập/chap 1/021-fix.jpg', 1, 1),
(22, 'Comic/Doraemon học tập/chap 1/022-fix.jpg', 1, 1),
(23, 'Comic/Doraemon học tập/chap 1/023-fix.jpg', 1, 1),
(24, 'Comic/Doraemon học tập/chap 1/024-fix.jpg', 1, 1),
(1, 'Comic/Doraemon học tập/chap 2/001-fix.jpg', 2, 1),
(2, 'Comic/Doraemon học tập/chap 2/002-fix.jpg', 2, 1),
(3, 'Comic/Doraemon học tập/chap 2/003-fix.jpg', 2, 1),
(4, 'Comic/Doraemon học tập/chap 2/004-fix.jpg', 2, 1),
(5, 'Comic/Doraemon học tập/chap 2/005-fix.jpg', 2, 1),
(6, 'Comic/Doraemon học tập/chap 2/006-fix.jpg', 2, 1),
(7, 'Comic/Doraemon học tập/chap 2/007-fix.jpg', 2, 1),
(8, 'Comic/Doraemon học tập/chap 2/008-fix.jpg', 2, 1),
(9, 'Comic/Doraemon học tập/chap 2/009-fix.jpg', 2, 1),
(10, 'Comic/Doraemon học tập/chap 2/010-fix.jpg', 2, 1),
(11, 'Comic/Doraemon học tập/chap 2/011-fix.jpg', 2, 1),
(12, 'Comic/Doraemon học tập/chap 2/012-fix.jpg', 2, 1),
(13, 'Comic/Doraemon học tập/chap 2/013-fix.jpg', 2, 1),
(14, 'Comic/Doraemon học tập/chap 2/014-fix.jpg', 2, 1),
(15, 'Comic/Doraemon học tập/chap 2/015-fix.jpg', 2, 1),
(16, 'Comic/Doraemon học tập/chap 2/016-fix.jpg', 2, 1),
(17, 'Comic/Doraemon học tập/chap 2/017-fix.jpg', 2, 1),
(18, 'Comic/Doraemon học tập/chap 2/018-fix.jpg', 2, 1),
(19, 'Comic/Doraemon học tập/chap 2/019-fix.jpg', 2, 1),
(20, 'Comic/Doraemon học tập/chap 2/020-fix.jpg', 2, 1),
(21, 'Comic/Doraemon học tập/chap 2/021-fix.jpg', 2, 1),
(22, 'Comic/Doraemon học tập/chap 2/022-fix.jpg', 2, 1),
(23, 'Comic/Doraemon học tập/chap 2/023-fix.jpg', 2, 1),
(24, 'Comic/Doraemon học tập/chap 2/024-fix.jpg', 2, 1),
(25, 'Comic/Doraemon học tập/chap 2/025-fix.jpg', 2, 1),
(26, 'Comic/Doraemon học tập/chap 2/026-fix.jpg', 2, 1),
(27, 'Comic/Doraemon học tập/chap 2/027-fix.jpg', 2, 1),
(28, 'Comic/Doraemon học tập/chap 2/028-fix.jpg', 2, 1),
(29, 'Comic/Doraemon học tập/chap 2/029-fix.jpg', 2, 1),
(30, 'Comic/Doraemon học tập/chap 2/030-fix.jpg', 2, 1),
(31, 'Comic/Doraemon học tập/chap 2/031-fix.jpg', 2, 1),
(32, 'Comic/Doraemon học tập/chap 2/032-fix.jpg', 2, 1),
(33, 'Comic/Doraemon học tập/chap 2/033-fix.jpg', 2, 1),
(34, 'Comic/Doraemon học tập/chap 2/034-fix.jpg', 2, 1),
(1, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/001-fix (1).jpg', 1, 2),
(2, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/002-fix.jpg', 1, 2),
(3, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/003-fix.jpg', 1, 2),
(4, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/004-fix.jpg', 1, 2),
(5, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/005-fix.jpg', 1, 2),
(6, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/006-fix.jpg', 1, 2),
(7, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/007-fix.jpg', 1, 2),
(8, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/008-fix.jpg', 1, 2),
(9, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/009-fix.jpg', 1, 2),
(10, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/010-fix.jpg', 1, 2),
(11, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/011-fix.jpg', 1, 2),
(12, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/012-fix.jpg', 1, 2),
(13, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/013-fix.jpg', 1, 2),
(14, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/014-fix.jpg', 1, 2),
(15, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/015-fix.jpg', 1, 2),
(16, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/016-fix.jpg', 1, 2),
(17, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/017-fix.jpg', 1, 2),
(18, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/018-fix.jpg', 1, 2),
(19, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/019-fix.jpg', 1, 2),
(20, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/020-fix.jpg', 1, 2),
(21, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/021-fix.jpg', 1, 2),
(22, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/022-fix.jpg', 1, 2),
(23, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/023-fix.jpg', 1, 2),
(24, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/024-fix.jpg', 1, 2),
(25, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/025-fix.jpg', 1, 2),
(26, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/026-fix.jpg', 1, 2),
(27, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/027-fix.jpg', 1, 2),
(28, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/028-fix.jpg', 1, 2),
(29, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/029-fix.jpg', 1, 2),
(30, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/030-fix.jpg', 1, 2),
(31, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/031-fix.jpg', 1, 2),
(32, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/032-fix.jpg', 1, 2),
(33, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/033-fix.jpg', 1, 2),
(34, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/034-fix.jpg', 1, 2),
(35, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/035-fix.jpg', 1, 2),
(36, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/036-fix.jpg', 1, 2),
(37, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/037-fix.jpg', 1, 2),
(38, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/038-fix.jpg', 1, 2),
(39, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/039-fix.jpg', 1, 2),
(40, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/040-fix.jpg', 1, 2),
(41, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/041-fix.jpg', 1, 2),
(42, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/042-fix.jpg', 1, 2),
(43, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/043-fix.jpg', 1, 2),
(44, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/044-fix.jpg', 1, 2),
(45, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/045-fix.jpg', 1, 2),
(46, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/046-fix.jpg', 1, 2),
(47, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/047-fix.jpg', 1, 2),
(48, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/048-fix.jpg', 1, 2),
(49, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/049-fix.jpg', 1, 2),
(50, 'Comic/Otome Game Sekai Wa Mob Ni Kibishii Sekai Desu/chap 1/050-fix.jpg', 1, 2),
(1, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/001-fix.jpg', 1, 3),
(2, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/002-fix.jpg', 1, 3),
(3, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/003-fix.jpg', 1, 3),
(4, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/004-fix.jpg', 1, 3),
(5, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/005-fix.jpg', 1, 3),
(6, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/006-fix.jpg', 1, 3),
(7, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/007-fix.jpg', 1, 3),
(8, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/008-fix.jpg', 1, 3),
(9, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/009-fix.jpg', 1, 3),
(10, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/010-fix.jpg', 1, 3),
(11, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/011-fix.jpg', 1, 3),
(12, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/012-fix.jpg', 1, 3),
(13, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/013-fix.jpg', 1, 3),
(14, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/014-fix.jpg', 1, 3),
(15, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/015-fix.jpg', 1, 3),
(16, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/016-fix.jpg', 1, 3),
(17, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/017-fix.jpg', 1, 3),
(18, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/018-fix.jpg', 1, 3),
(19, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/019-fix.jpg', 1, 3),
(20, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/020-fix.jpg', 1, 3),
(21, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/021-fix.jpg', 1, 3),
(22, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/022-fix.jpg', 1, 3),
(23, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/023-fix.jpg', 1, 3),
(24, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/024-fix.jpg', 1, 3),
(25, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/025-fix.jpg', 1, 3),
(26, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 1/026-fix.jpg', 1, 3),
(1, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/001-fix (1).jpg', 2, 3),
(2, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/002-fix.jpg', 2, 3),
(3, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/003-fix.jpg', 2, 3),
(4, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/004-fix.jpg', 2, 3),
(5, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/005-fix.jpg', 2, 3),
(6, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/006-fix.jpg', 2, 3),
(7, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/007-fix.jpg', 2, 3),
(8, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/008-fix.jpg', 2, 3),
(9, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/009-fix.jpg', 2, 3),
(10, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/010-fix.jpg', 2, 3),
(11, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/011-fix.jpg', 2, 3),
(12, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/012-fix.jpg', 2, 3),
(13, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/013-fix (1).jpg', 2, 3),
(14, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 2/014-fix.jpg', 2, 3),
(15, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/015-fix.jpg', 2, 3),
(16, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/016-fix.jpg', 2, 3),
(17, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/017-fix.jpg', 2, 3),
(18, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/018-fix.jpg', 2, 3),
(19, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/019-fix.jpg', 2, 3),
(20, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/020-fix.jpg', 2, 3),
(21, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/021-fix.jpg', 2, 3),
(22, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/022-fix.jpg', 2, 3),
(23, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/023-fix.jpg', 2, 3),
(24, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/024-fix.jpg', 2, 3),
(25, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/025-fix.jpg', 2, 3),
(26, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/026-fix.jpg', 2, 3),
(27, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/027-fix.jpg', 2, 3),
(28, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/028-fix.jpg', 2, 3),
(29, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/029-fix.jpg', 2, 3),
(30, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/030-fix.jpg', 2, 3),
(1, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/001-fix.jpg', 3, 3),
(2, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/002-fix.jpg', 3, 3),
(3, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/003-fix.jpg', 3, 3),
(4, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/004-fix.jpg', 3, 3),
(5, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/005-fix.jpg', 3, 3),
(6, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/006-fix.jpg', 3, 3),
(7, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/007-fix.jpg', 3, 3),
(8, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/008-fix.jpg', 3, 3),
(9, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/009-fix.jpg', 3, 3),
(10, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/010-fix.jpg', 3, 3),
(11, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/011-fix.jpg', 3, 3),
(12, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/012-fix.jpg', 3, 3),
(13, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/013-fix.jpg', 3, 3),
(14, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/014-fix.jpg', 3, 3),
(15, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/015-fix.jpg', 3, 3),
(16, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/016-fix.jpg', 3, 3),
(17, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/017-fix.jpg', 3, 3),
(18, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/018-fix.jpg', 3, 3),
(19, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/019-fix.jpg', 3, 3),
(20, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/020-fix.jpg', 3, 3),
(21, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/021-fix.jpg', 3, 3),
(22, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/022-fix.jpg', 3, 3),
(23, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/023-fix.jpg', 3, 3),
(24, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/024-fix.jpg', 3, 3),
(25, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/025-fix.jpg', 3, 3),
(26, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/026-fix.jpg', 3, 3),
(27, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/027-fix.jpg', 3, 3),
(28, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/028-fix.jpg', 3, 3),
(29, 'Comic/Nữ Phụ Phản Diện Sẽ Tìm Được Tình Yêu Đích Thực/chap 3/029-fix.jpg', 3, 3),
(1, 'Comic/Mạt Thế Vi Vương/chap 1/001-fix.jpg', 1, 4),
(2, 'Comic/Mạt Thế Vi Vương/chap 1/002-fix.jpg', 1, 4),
(3, 'Comic/Mạt Thế Vi Vương/chap 1/003-fix.jpg', 1, 4),
(4, 'Comic/Mạt Thế Vi Vương/chap 1/004-fix.jpg', 1, 4),
(5, 'Comic/Mạt Thế Vi Vương/chap 1/005-fix.jpg', 1, 4),
(6, 'Comic/Mạt Thế Vi Vương/chap 1/006-fix.jpg', 1, 4),
(7, 'Comic/Mạt Thế Vi Vương/chap 1/007-fix.jpg', 1, 4),
(8, 'Comic/Mạt Thế Vi Vương/chap 1/008-fix.jpg', 1, 4),
(9, 'Comic/Mạt Thế Vi Vương/chap 1/009-fix.jpg', 1, 4),
(10, 'Comic/Mạt Thế Vi Vương/chap 1/010-fix.jpg', 1, 4),
(11, 'Comic/Mạt Thế Vi Vương/chap 1/011-fix.jpg', 1, 4),
(12, 'Comic/Mạt Thế Vi Vương/chap 1/012-fix.jpg', 1, 4),
(13, 'Comic/Mạt Thế Vi Vương/chap 1/013-fix.jpg', 1, 4),
(14, 'Comic/Mạt Thế Vi Vương/chap 1/014-fix.jpg', 1, 4),
(15, 'Comic/Mạt Thế Vi Vương/chap 1/015-fix.jpg', 1, 4),
(16, 'Comic/Mạt Thế Vi Vương/chap 1/016-fix.jpg', 1, 4),
(17, 'Comic/Mạt Thế Vi Vương/chap 1/017-fix.jpg', 1, 4),
(18, 'Comic/Mạt Thế Vi Vương/chap 1/018-fix.jpg', 1, 4),
(19, 'Comic/Mạt Thế Vi Vương/chap 1/019-fix.jpg', 1, 4),
(20, 'Comic/Mạt Thế Vi Vương/chap 1/020-fix.jpg', 1, 4),
(21, 'Comic/Mạt Thế Vi Vương/chap 1/021-fix.jpg', 1, 4),
(22, 'Comic/Mạt Thế Vi Vương/chap 1/022-fix.jpg', 1, 4),
(1, 'Comic/Mạt Thế Vi Vương/chap 2/001-fix.jpg', 2, 4),
(2, 'Comic/Mạt Thế Vi Vương/chap 2/002-fix.jpg', 2, 4),
(3, 'Comic/Mạt Thế Vi Vương/chap 2/003-fix.jpg', 2, 4),
(4, 'Comic/Mạt Thế Vi Vương/chap 2/004-fix.jpg', 2, 4),
(5, 'Comic/Mạt Thế Vi Vương/chap 2/005-fix.jpg', 2, 4),
(6, 'Comic/Mạt Thế Vi Vương/chap 2/006-fix.jpg', 2, 4),
(7, 'Comic/Mạt Thế Vi Vương/chap 2/007-fix.jpg', 2, 4),
(8, 'Comic/Mạt Thế Vi Vương/chap 2/008-fix.jpg', 2, 4),
(9, 'Comic/Mạt Thế Vi Vương/chap 2/009-fix.jpg', 2, 4),
(10, 'Comic/Mạt Thế Vi Vương/chap 2/010-fix.jpg', 2, 4),
(11, 'Comic/Mạt Thế Vi Vương/chap 2/011-fix.jpg', 2, 4),
(12, 'Comic/Mạt Thế Vi Vương/chap 2/012-fix.jpg', 2, 4),
(13, 'Comic/Mạt Thế Vi Vương/chap 2/013-fix.jpg', 2, 4),
(14, 'Comic/Mạt Thế Vi Vương/chap 2/014-fix.jpg', 2, 4),
(15, 'Comic/Mạt Thế Vi Vương/chap 2/015-fix.jpg', 2, 4),
(16, 'Comic/Mạt Thế Vi Vương/chap 2/016-fix.jpg', 2, 4),
(17, 'Comic/Mạt Thế Vi Vương/chap 2/017-fix.jpg', 2, 4),
(18, 'Comic/Mạt Thế Vi Vương/chap 2/018-fix.jpg', 2, 4),
(19, 'Comic/Mạt Thế Vi Vương/chap 2/019-fix.jpg', 2, 4),
(20, 'Comic/Mạt Thế Vi Vương/chap 2/020-fix.jpg', 2, 4),
(21, 'Comic/Mạt Thế Vi Vương/chap 2/021-fix.jpg', 2, 4),
(22, 'Comic/Mạt Thế Vi Vương/chap 2/022-fix.jpg', 2, 4),
(22, 'Comic/Mạt Thế Vi Vương/chap 2/022-fix.jpg', 2, 4),
(23, 'Comic/Mạt Thế Vi Vương/chap 2/023-fix.jpg', 2, 4),
(24, 'Comic/Mạt Thế Vi Vương/chap 2/024-fix.jpg', 2, 4),
(25, 'Comic/Mạt Thế Vi Vương/chap 2/025-fix.jpg', 2, 4),
(26, 'Comic/Mạt Thế Vi Vương/chap 2/026-fix.jpg', 2, 4),
(27, 'Comic/Mạt Thế Vi Vương/chap 2/027-fix.jpg', 2, 4),
(28, 'Comic/Mạt Thế Vi Vương/chap 2/028-fix.jpg', 2, 4),
(29, 'Comic/Mạt Thế Vi Vương/chap 2/029-fix.jpg', 2, 4),
(30, 'Comic/Mạt Thế Vi Vương/chap 2/030-fix.jpg', 2, 4),
(1, 'Comic/Mạt Thế Vi Vương/chap 3/001-fix.jpg', 3, 4),
(2, 'Comic/Mạt Thế Vi Vương/chap 3/002-fix.jpg', 3, 4),
(3, 'Comic/Mạt Thế Vi Vương/chap 3/003-fix.jpg', 3, 4),
(4, 'Comic/Mạt Thế Vi Vương/chap 3/004-fix.jpg', 3, 4),
(5, 'Comic/Mạt Thế Vi Vương/chap 3/005-fix.jpg', 3, 4),
(6, 'Comic/Mạt Thế Vi Vương/chap 3/006-fix.jpg', 3, 4),
(7, 'Comic/Mạt Thế Vi Vương/chap 3/007-fix.jpg', 3, 4),
(8, 'Comic/Mạt Thế Vi Vương/chap 3/008-fix.jpg', 3, 4),
(9, 'Comic/Mạt Thế Vi Vương/chap 3/009-fix.jpg', 3, 4),
(10, 'Comic/Mạt Thế Vi Vương/chap 3/010-fix.jpg', 3, 4),
(11, 'Comic/Mạt Thế Vi Vương/chap 3/011-fix.jpg', 3, 4),
(12, 'Comic/Mạt Thế Vi Vương/chap 3/012-fix.jpg', 3, 4),
(13, 'Comic/Mạt Thế Vi Vương/chap 3/013-fix.jpg', 3, 4),
(14, 'Comic/Mạt Thế Vi Vương/chap 3/014-fix.jpg', 3, 4),
(15, 'Comic/Mạt Thế Vi Vương/chap 3/015-fix.jpg', 3, 4),
(16, 'Comic/Mạt Thế Vi Vương/chap 3/016-fix.jpg', 3, 4),
(17, 'Comic/Mạt Thế Vi Vương/chap 3/017-fix.jpg', 3, 4),
(18, 'Comic/Mạt Thế Vi Vương/chap 3/018-fix.jpg', 3, 4),
(19, 'Comic/Mạt Thế Vi Vương/chap 3/019-fix.jpg', 3, 4),
(20, 'Comic/Mạt Thế Vi Vương/chap 3/020-fix.jpg', 3, 4),
(21, 'Comic/Mạt Thế Vi Vương/chap 3/021-fix.jpg', 3, 4),
(22, 'Comic/Mạt Thế Vi Vương/chap 3/022-fix.jpg', 3, 4),
(23, 'Comic/Mạt Thế Vi Vương/chap 3/023-fix.jpg', 3, 4),
(24, 'Comic/Mạt Thế Vi Vương/chap 3/024-fix.jpg', 3, 4),
(1, 'Comic/Hitman/chap 1/001-fix.jpg', 1, 5),
(2, 'Comic/Hitman/chap 1/002-fix.jpg', 1, 5),
(3, 'Comic/Hitman/chap 1/003-fix.jpg', 1, 5),
(4, 'Comic/Hitman/chap 1/004-fix.jpg', 1, 5),
(5, 'Comic/Hitman/chap 1/005-fix.jpg', 1, 5),
(6, 'Comic/Hitman/chap 1/006-fix.jpg', 1, 5),
(7, 'Comic/Hitman/chap 1/007-fix.jpg', 1, 5),
(8, 'Comic/Hitman/chap 1/008-fix.jpg', 1, 5),
(9, 'Comic/Hitman/chap 1/009-fix.jpg', 1, 5),
(10, 'Comic/Hitman/chap 1/010-fix.jpg', 1, 5),
(11, 'Comic/Hitman/chap 1/011-fix.jpg', 1, 5),
(12, 'Comic/Hitman/chap 1/012-fix.jpg', 1, 5),
(13, 'Comic/Hitman/chap 1/013-fix.jpg', 1, 5),
(14, 'Comic/Hitman/chap 1/014-fix.jpg', 1, 5),
(15, 'Comic/Hitman/chap 1/015-fix.jpg', 1, 5),
(16, 'Comic/Hitman/chap 1/016-fix.jpg', 1, 5),
(17, 'Comic/Hitman/chap 1/017-fix.jpg', 1, 5),
(18, 'Comic/Hitman/chap 1/018-fix.jpg', 1, 5),
(19, 'Comic/Hitman/chap 1/019-fix.jpg', 1, 5),
(20, 'Comic/Hitman/chap 1/020-fix.jpg', 1, 5),
(21, 'Comic/Hitman/chap 1/021-fix.jpg', 1, 5),
(22, 'Comic/Hitman/chap 1/022-fix.jpg', 1, 5),
(23, 'Comic/Hitman/chap 1/023-fix.jpg', 1, 5),
(24, 'Comic/Hitman/chap 1/024-fix.jpg', 1, 5),
(25, 'Comic/Hitman/chap 1/025-fix.jpg', 1, 5),
(26, 'Comic/Hitman/chap 1/026-fix.jpg', 1, 5),
(27, 'Comic/Hitman/chap 1/027-fix.jpg', 1, 5),
(28, 'Comic/Hitman/chap 1/028-fix.jpg', 1, 5),
(29, 'Comic/Hitman/chap 1/029-fix.jpg', 1, 5),
(30, 'Comic/Hitman/chap 1/030-fix.jpg', 1, 5),
(31, 'Comic/Hitman/chap 1/031-fix.jpg', 1, 5),
(32, 'Comic/Hitman/chap 1/032-fix.jpg', 1, 5),
(33, 'Comic/Hitman/chap 1/033-fix.jpg', 1, 5),
(34, 'Comic/Hitman/chap 1/034-fix.jpg', 1, 5),
(35, 'Comic/Hitman/chap 1/035-fix.jpg', 1, 5),
(36, 'Comic/Hitman/chap 1/036-fix.jpg', 1, 5),
(37, 'Comic/Hitman/chap 1/037-fix.jpg', 1, 5),
(38, 'Comic/Hitman/chap 1/038-fix.jpg', 1, 5),
(39, 'Comic/Hitman/chap 1/039-fix.jpg', 1, 5),
(40, 'Comic/Hitman/chap 1/040-fix.jpg', 1, 5),
(1, 'Comic/Hitman/chap 2/001-fix (1).jpg', 2, 5),
(2, 'Comic/Hitman/chap 2/002-fix.jpg', 2, 5),
(3, 'Comic/Hitman/chap 2/003-fix.jpg', 2, 5),
(4, 'Comic/Hitman/chap 2/004-fix.jpg', 2, 5),
(5, 'Comic/Hitman/chap 2/005-fix.jpg', 2, 5),
(6, 'Comic/Hitman/chap 2/006-fix.jpg', 2, 5),
(7, 'Comic/Hitman/chap 2/007-fix.jpg', 2, 5),
(8, 'Comic/Hitman/chap 2/008-fix.jpg', 2, 5),
(9, 'Comic/Hitman/chap 2/009-fix.jpg', 2, 5),
(10, 'Comic/Hitman/chap 2/010-fix.jpg', 2, 5),
(11, 'Comic/Hitman/chap 2/011-fix.jpg', 2, 5),
(12, 'Comic/Hitman/chap 2/012-fix.jpg', 2, 5),
(13, 'Comic/Hitman/chap 2/013-fix.jpg', 2, 5),
(14, 'Comic/Hitman/chap 2/014-fix.jpg', 2, 5),
(15, 'Comic/Hitman/chap 2/015-fix.jpg', 2, 5),
(16, 'Comic/Hitman/chap 2/016-fix.jpg', 2, 5),
(17, 'Comic/Hitman/chap 2/017-fix.jpg', 2, 5),
(18, 'Comic/Hitman/chap 2/018-fix.jpg', 2, 5),
(19, 'Comic/Hitman/chap 2/019-fix.jpg', 2, 5),
(20, 'Comic/Hitman/chap 2/020-fix.jpg', 2, 5),
(21, 'Comic/Hitman/chap 2/021-fix.jpg', 2, 5),
(22, 'Comic/Hitman/chap 2/022-fix.jpg', 2, 5),
(23, 'Comic/Hitman/chap 2/023-fix.jpg', 2, 5),
(24, 'Comic/Hitman/chap 2/024-fix.jpg', 2, 5),
(25, 'Comic/Hitman/chap 2/025-fix.jpg', 2, 5),
(26, 'Comic/Hitman/chap 2/026-fix.jpg', 2, 5),
(1, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/001-fix.jpg', 1, 6),
(2, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/002-fix.jpg', 1, 6),
(3, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/003-fix.jpg', 1, 6),
(4, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/004-fix.jpg', 1, 6),
(5, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/005-fix.jpg', 1, 6),
(6, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/006-fix.jpg', 1, 6),
(7, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/007-fix.jpg', 1, 6),
(8, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/008-fix.jpg', 1, 6),
(9, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/009-fix.jpg', 1, 6),
(10, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/010-fix.jpg', 1, 6),
(11, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 1/011-fix.jpg', 1, 6),
(1, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/001-fix (1).jpg', 2, 6),
(2, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/002-fix.jpg', 2, 6),
(3, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/003-fix.jpg', 2, 6),
(4, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/004-fix.jpg', 2, 6),
(5, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/005-fix.jpg', 2, 6),
(6, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/006-fix.jpg', 2, 6),
(7, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/007-fix.jpg', 2, 6),
(8, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/008-fix.jpg', 2, 6),
(9, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/009-fix.jpg', 2, 6),
(10, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/010-fix.jpg', 2, 6),
(11, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/011-fix.jpg', 2, 6),
(12, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/012-fix.jpg', 2, 6),
(13, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/013-fix.jpg', 2, 6),
(14, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/014-fix.jpg', 2, 6),
(15, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/015-fix.jpg', 2, 6),
(16, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/016-fix.jpg', 2, 6),
(17, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/017-fix.jpg', 2, 6),
(18, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/018-fix.jpg', 2, 6),
(19, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/019-fix.jpg', 2, 6),
(20, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/020-fix.jpg', 2, 6),
(21, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/021-fix.jpg', 2, 6),
(22, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/022-fix.jpg', 2, 6),
(23, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/023-fix.jpg', 2, 6),
(24, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/024-fix.jpg', 2, 6),
(25, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/025-fix.jpg', 2, 6),
(26, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/026-fix.jpg', 2, 6),
(27, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/027-fix.jpg', 2, 6),
(28, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/028-fix.jpg', 2, 6),
(29, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/029-fix.jpg', 2, 6),
(30, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/030-fix.jpg', 2, 6),
(31, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/031-fix.jpg', 2, 6),
(32, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/032-fix.jpg', 2, 6),
(33, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/033-fix.jpg', 2, 6),
(34, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/034-fix.jpg', 2, 6),
(35, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/035-fix.jpg', 2, 6),
(36, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/036-fix.jpg', 2, 6),
(37, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/037-fix.jpg', 2, 6),
(38, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/038-fix.jpg', 2, 6),
(39, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/039-fix.jpg', 2, 6),
(40, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/040-fix.jpg', 2, 6),
(41, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/041-fix.jpg', 2, 6),
(42, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/042-fix.jpg', 2, 6),
(43, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/043-fix.jpg', 2, 6),
(44, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/044-fix.jpg', 2, 6),
(45, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/044-fix.jpg', 2, 6),
(46, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/045-fix.jpg', 2, 6),
(47, 'Comic/GETTER ROBO DEVOLUTION UCHUU SAIGO NO 3-PUNKAN/chap 2/047-fix.jpg', 2, 6),
(1, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/001-fix.jpg', 1, 7),
(2, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/002-fix.jpg', 1, 7),
(3, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/003-fix.jpg', 1, 7),
(4, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/004-fix.jpg', 1, 7),
(5, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/005-fix.jpg', 1, 7),
(6, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/006-fix.jpg', 1, 7),
(7, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/007-fix.jpg', 1, 7),
(8, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/008-fix.jpg', 1, 7),
(9, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/009-fix.jpg', 1, 7),
(10, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/010-fix.jpg', 1, 7),
(11, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/011-fix.jpg', 1, 7),
(12, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/012-fix.jpg', 1, 7),
(13, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/013-fix.jpg', 1, 7),
(14, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/014-fix.jpg', 1, 7),
(15, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/015-fix.jpg', 1, 7),
(16, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/016-fix.jpg', 1, 7),
(17, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/017-fix.jpg', 1, 7),
(18, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/018-fix.jpg', 1, 7),
(19, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/019-fix.jpg', 1, 7),
(20, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/020-fix.jpg', 1, 7),
(21, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/021-fix.jpg', 1, 7),
(22, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/022-fix.jpg', 1, 7),
(23, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/023-fix.jpg', 1, 7),
(24, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/024-fix.jpg', 1, 7),
(25, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/025-fix.jpg', 1, 7),
(26, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/026-fix.jpg', 1, 7),
(27, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/027-fix.jpg', 1, 7),
(28, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/028-fix.jpg', 1, 7),
(29, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/029-fix.jpg', 1, 7),
(30, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/030-fix.jpg', 1, 7),
(31, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/031-fix.jpg', 1, 7),
(32, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/032-fix.jpg', 1, 7),
(33, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/033-fix.jpg', 1, 7),
(34, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/034-fix.jpg', 1, 7),
(35, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/035-fix.jpg', 1, 7),
(36, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/036-fix.jpg', 1, 7),
(37, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/037-fix.jpg', 1, 7),
(38, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/038-fix.jpg', 1, 7),
(39, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/039-fix.jpg', 1, 7),
(40, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/040-fix.jpg', 1, 7),
(41, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/041-fix.jpg', 1, 7),
(42, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/042-fix.jpg', 1, 7),
(43, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/043-fix.jpg', 1, 7),
(44, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/044-fix.jpg', 1, 7),
(45, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/045-fix.jpg', 1, 7),
(46, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/046-fix.jpg', 1, 7),
(47, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 1/047-fix.jpg', 1, 7),
(1, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/001-fix.jpg', 2, 7),
(2, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/002-fix.jpg', 2, 7),
(3, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/003-fix.jpg', 2, 7),
(4, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/004-fix.jpg', 2, 7),
(5, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/005-fix.jpg', 2, 7),
(6, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/006-fix.jpg', 2, 7),
(7, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/007-fix.jpg', 2, 7),
(8, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/008-fix.jpg', 2, 7),
(9, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/009-fix.jpg', 2, 7),
(10, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/010-fix.jpg', 2, 7),
(11, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/011-fix.jpg', 2, 7),
(12, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/012-fix.jpg', 2, 7),
(13, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/013-fix.jpg', 2, 7),
(14, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/014-fix.jpg', 2, 7),
(15, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/015-fix.jpg', 2, 7),
(16, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/016-fix.jpg', 2, 7),
(17, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/017-fix.jpg', 2, 7),
(18, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/018-fix.jpg', 2, 7),
(19, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/019-fix.jpg', 2, 7),
(20, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/020-fix.jpg', 2, 7),
(21, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/021-fix.jpg', 2, 7),
(22, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/022-fix.jpg', 2, 7),
(23, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/023-fix.jpg', 2, 7),
(24, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/024-fix.jpg', 2, 7),
(25, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/025-fix.jpg', 2, 7),
(26, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/026-fix.jpg', 2, 7),
(27, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/027-fix.jpg', 2, 7),
(28, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/028-fix.jpg', 2, 7),
(25, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/025-fix.jpg', 2, 7),
(26, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/026-fix.jpg', 2, 7),
(27, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/027-fix.jpg', 2, 7),
(28, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/028-fix.jpg', 2, 7),
(29, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/029-fix.jpg', 2, 7),
(30, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/030-fix.jpg', 2, 7),
(31, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/031-fix.jpg', 2, 7),
(32, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/032-fix.jpg', 2, 7),
(33, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/033-fix.jpg', 2, 7),
(34, 'Comic/GOOD DEEDS OF KANE OF OLD GUY/chap 2/034-fix.jpg', 2, 7),
(1, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/001.jpg', 1, 8),
(2, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/002.jpg', 1, 8),
(3, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/003.jpg', 1, 8),
(4, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/004.jpg', 1, 8),
(5, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/005-fix.jpg', 1, 8),
(6, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/006-fix.jpg', 1, 8),
(7, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/007-fix.jpg', 1, 8),
(8, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/008-fix.jpg', 1, 8),
(9, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/009-fix.jpg', 1, 8),
(10, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/010-fix.jpg', 1, 8),
(11, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/011-fix.jpg', 1, 8),
(12, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/012-fix.jpg', 1, 8),
(13, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/013-fix.jpg', 1, 8),
(14, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/014-fix.jpg', 1, 8),
(15, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/015-fix.jpg', 1, 8),
(16, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/016-fix.jpg', 1, 8),
(17, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/017-fix.jpg', 1, 8),
(18, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/018-fix.jpg', 1, 8),
(19, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/019-fix.jpg', 1, 8),
(20, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/020-fix.jpg', 1, 8),
(21, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/021-fix.jpg', 1, 8),
(22, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/022-fix.jpg', 1, 8),
(23, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/023-fix.jpg', 1, 8),
(24, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/024-fix.jpg', 1, 8),
(25, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/025-fix.jpg', 1, 8),
(26, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/026-fix.jpg', 1, 8),
(27, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/027-fix.jpg', 1, 8),
(28, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/028-fix.jpg', 1, 8),
(29, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/029-fix.jpg', 1, 8),
(30, 'Comic/ANH HÙNG THẬN TRỌNG/chap 1/030-fix.jpg', 1, 8),
(1, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/001-fix (1).jpg', 2, 8),
(2, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/002-fix.jpg', 2, 8),
(3, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/003-fix.jpg\r\n', 2, 8),
(4, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/004-fix.jpg\r\n', 2, 8),
(5, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/005-fix.jpg\r\n', 2, 8),
(6, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/006-fix.jpg\r\n', 2, 8),
(7, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/007-fix.jpg\r\n', 2, 8),
(8, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/008-fix.jpg\r\n', 2, 8),
(9, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/009-fix.jpg\r\n', 2, 8),
(10, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/010-fix.jpg\r\n', 2, 8),
(11, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/011-fix.jpg\r\n', 2, 8),
(12, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/012-fix.jpg\r\n', 2, 8),
(13, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/013-fix.jpg\r\n', 2, 8),
(14, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/014-fix.jpg\r\n', 2, 8),
(15, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/015-fix.jpg\r\n', 2, 8),
(16, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/016-fix.jpg\r\n', 2, 8),
(17, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/017-fix.jpg\r\n', 2, 8),
(18, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/018-fix.jpg\r\n', 2, 8),
(19, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/019-fix.jpg\r\n', 2, 8),
(20, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/020-fix.jpg\r\n', 2, 8),
(21, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/021-fix.jpg\r\n', 2, 8),
(22, 'Comic/ANH HÙNG THẬN TRỌNG/chap 2/022-fix.jpg\r\n', 2, 8),
(1, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/001-fix.jpg\r\n', 3, 8),
(2, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/002-fix.jpg', 3, 8),
(3, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/003-fix.jpg', 3, 8),
(4, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/004-fix.jpg', 3, 8),
(5, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/005-fix.jpg', 3, 8),
(6, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/006-fix.jpg', 3, 8),
(7, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/007-fix.jpg', 3, 8),
(8, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/008-fix.jpg', 3, 8),
(9, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/009-fix.jpg', 3, 8),
(10, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/010-fix.jpg', 3, 8),
(11, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/011-fix.jpg', 3, 8),
(12, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/012-fix.jpg', 3, 8),
(13, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/013-fix.jpg', 3, 8),
(14, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/014-fix.jpg', 3, 8),
(15, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/015-fix.jpg', 3, 8),
(16, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/016-fix.jpg', 3, 8),
(17, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/017-fix.jpg', 3, 8),
(18, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/018-fix.jpg', 3, 8),
(19, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/019-fix.jpg', 3, 8),
(20, 'Comic/ANH HÙNG THẬN TRỌNG/chap 3/020-fix.jpg', 3, 8),
(1, 'Comic/CHARLOTTE/chap 1/001.jpg', 1, 9),
(2, 'Comic/CHARLOTTE/chap 1/002.jpg', 1, 9),
(3, 'Comic/CHARLOTTE/chap 1/003.jpg', 1, 9),
(4, 'Comic/CHARLOTTE/chap 1/004.jpg', 1, 9),
(5, 'Comic/CHARLOTTE/chap 1/005.jpg', 1, 9),
(6, 'Comic/CHARLOTTE/chap 1/006.jpg', 1, 9),
(7, 'Comic/CHARLOTTE/chap 1/007.jpg', 1, 9),
(8, 'Comic/CHARLOTTE/chap 1/008.jpg', 1, 9),
(9, 'Comic/CHARLOTTE/chap 1/009.jpg', 1, 9),
(10, 'Comic/CHARLOTTE/chap 1/010.jpg', 1, 9),
(11, 'Comic/CHARLOTTE/chap 1/011.jpg', 1, 9),
(12, 'Comic/CHARLOTTE/chap 1/012.jpg', 1, 9),
(13, 'Comic/CHARLOTTE/chap 1/013.jpg', 1, 9),
(14, 'Comic/CHARLOTTE/chap 1/014.jpg', 1, 9),
(15, 'Comic/CHARLOTTE/chap 1/015.jpg', 1, 9),
(16, 'Comic/CHARLOTTE/chap 1/016.jpg', 1, 9),
(17, 'Comic/CHARLOTTE/chap 1/017.jpg', 1, 9),
(18, 'Comic/CHARLOTTE/chap 1/018.jpg', 1, 9),
(19, 'Comic/CHARLOTTE/chap 1/019.jpg', 1, 9),
(20, 'Comic/CHARLOTTE/chap 1/020.jpg', 1, 9),
(1, 'Comic/CHARLOTTE/chap 2/001.jpg', 2, 9),
(2, 'Comic/CHARLOTTE/chap 2/002.jpg', 2, 9),
(3, 'Comic/CHARLOTTE/chap 2/003.jpg', 2, 9),
(4, 'Comic/CHARLOTTE/chap 2/004.jpg', 2, 9),
(5, 'Comic/CHARLOTTE/chap 2/005.jpg', 2, 9),
(6, 'Comic/CHARLOTTE/chap 2/006.jpg', 2, 9),
(7, 'Comic/CHARLOTTE/chap 2/007.jpg', 2, 9),
(8, 'Comic/CHARLOTTE/chap 2/008.jpg', 2, 9),
(9, 'Comic/CHARLOTTE/chap 2/009.jpg', 2, 9),
(10, 'Comic/CHARLOTTE/chap 2/010.jpg', 2, 9),
(11, 'Comic/CHARLOTTE/chap 2/011.jpg', 2, 9),
(12, 'Comic/CHARLOTTE/chap 2/012.jpg', 2, 9),
(13, 'Comic/CHARLOTTE/chap 2/013.jpg', 2, 9),
(14, 'Comic/CHARLOTTE/chap 2/014.jpg', 2, 9),
(15, 'Comic/CHARLOTTE/chap 2/015.jpg', 2, 9),
(16, 'Comic/CHARLOTTE/chap 2/016.jpg', 2, 9),
(17, 'Comic/CHARLOTTE/chap 2/017.jpg', 2, 9),
(18, 'Comic/CHARLOTTE/chap 2/018.jpg', 2, 9),
(19, 'Comic/CHARLOTTE/chap 2/019.jpg', 2, 9),
(20, 'Comic/CHARLOTTE/chap 2/020.jpg', 2, 9),
(1, 'Comic/CHARLOTTE/chap 3/001.jpg', 3, 9),
(2, 'Comic/CHARLOTTE/chap 3/002.jpg', 3, 9),
(3, 'Comic/CHARLOTTE/chap 3/003.jpg', 3, 9),
(4, 'Comic/CHARLOTTE/chap 3/004.jpg', 3, 9),
(5, 'Comic/CHARLOTTE/chap 3/005.jpg', 3, 9),
(6, 'Comic/CHARLOTTE/chap 3/006.jpg', 3, 9),
(7, 'Comic/CHARLOTTE/chap 3/007.jpg', 3, 9),
(8, 'Comic/CHARLOTTE/chap 3/008.jpg', 3, 9),
(9, 'Comic/CHARLOTTE/chap 3/009.jpg', 3, 9),
(10, 'Comic/CHARLOTTE/chap 3/010.jpg', 3, 9),
(11, 'Comic/CHARLOTTE/chap 3/011.jpg', 3, 9),
(12, 'Comic/CHARLOTTE/chap 3/012.jpg', 3, 9),
(13, 'Comic/CHARLOTTE/chap 3/013.jpg', 3, 9),
(14, 'Comic/CHARLOTTE/chap 3/014.jpg', 3, 9),
(15, 'Comic/CHARLOTTE/chap 3/015.jpg', 3, 9),
(16, 'Comic/CHARLOTTE/chap 3/016.jpg', 3, 9),
(17, 'Comic/CHARLOTTE/chap 3/017.jpg', 3, 9),
(18, 'Comic/CHARLOTTE/chap 3/018.jpg', 3, 9),
(19, 'Comic/CHARLOTTE/chap 3/019.jpg', 3, 9),
(1, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/001-fix.jpg', 1, 10),
(2, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/002-fix.jpg', 1, 10),
(3, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/003-fix.jpg', 1, 10),
(4, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/004-fix.jpg', 1, 10),
(5, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/005-fix.jpg', 1, 10),
(6, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/006-fix.jpg', 1, 10),
(7, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/007-fix.jpg', 1, 10),
(8, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/008-fix.jpg', 1, 10),
(9, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/009-fix.jpg', 1, 10),
(10, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/010-fix.jpg', 1, 10),
(11, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/011-fix.jpg', 1, 10),
(12, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/012-fix.jpg', 1, 10),
(13, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/013-fix.jpg', 1, 10),
(14, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/014-fix.jpg', 1, 10),
(15, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/015-fix.jpg', 1, 10),
(16, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/016-fix.jpg', 1, 10),
(17, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/017-fix.jpg', 1, 10),
(18, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/018-fix.jpg', 1, 10),
(19, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/019-fix.jpg', 1, 10),
(20, 'Comic/CHUYỂN SINH THÀNH DƯỢC SĨ Ở THẾ GIỚI KHÁC/chap 1/020-fix.jpg', 1, 10),
(1, 'Comic/ĐẢO HẢI TẶC/chap 1/001-fix.jpg', 1, 11),
(2, 'Comic/ĐẢO HẢI TẶC/chap 1/002-fix.jpg', 1, 11),
(3, 'Comic/ĐẢO HẢI TẶC/chap 1/003-fix.jpg', 1, 11),
(4, 'Comic/ĐẢO HẢI TẶC/chap 1/004-fix.jpg', 1, 11),
(5, 'Comic/ĐẢO HẢI TẶC/chap 1/005-fix.jpg', 1, 11),
(6, 'Comic/ĐẢO HẢI TẶC/chap 1/006-fix.jpg', 1, 11),
(7, 'Comic/ĐẢO HẢI TẶC/chap 1/007-fix.jpg', 1, 11),
(8, 'Comic/ĐẢO HẢI TẶC/chap 1/008-fix.jpg', 1, 11),
(9, 'Comic/ĐẢO HẢI TẶC/chap 1/009-fix.jpg', 1, 11),
(10, 'Comic/ĐẢO HẢI TẶC/chap 1/010-fix.jpg', 1, 11),
(11, 'Comic/ĐẢO HẢI TẶC/chap 1/011-fix.jpg', 1, 11),
(12, 'Comic/ĐẢO HẢI TẶC/chap 1/012-fix.jpg', 1, 11),
(13, 'Comic/ĐẢO HẢI TẶC/chap 1/013-fix.jpg', 1, 11),
(14, 'Comic/ĐẢO HẢI TẶC/chap 1/014-fix.jpg', 1, 11),
(15, 'Comic/ĐẢO HẢI TẶC/chap 1/015-fix.jpg', 1, 11),
(16, 'Comic/ĐẢO HẢI TẶC/chap 1/016-fix.jpg', 1, 11),
(17, 'Comic/ĐẢO HẢI TẶC/chap 1/017-fix.jpg', 1, 11),
(18, 'Comic/ĐẢO HẢI TẶC/chap 1/018-fix.jpg', 1, 11),
(19, 'Comic/ĐẢO HẢI TẶC/chap 1/019-fix.jpg', 1, 11),
(20, 'Comic/ĐẢO HẢI TẶC/chap 1/020-fix.jpg', 1, 11),
(1, 'Comic/ĐẢO HẢI TẶC/chap 1/001.jpg', 2, 11),
(2, 'Comic/ĐẢO HẢI TẶC/chap 1/002.jpg', 2, 11),
(3, 'Comic/ĐẢO HẢI TẶC/chap 2/003.jpg', 2, 11),
(4, 'Comic/ĐẢO HẢI TẶC/chap 2/004.jpg', 2, 11),
(5, 'Comic/ĐẢO HẢI TẶC/chap 2/005.jpg', 2, 11),
(6, 'Comic/ĐẢO HẢI TẶC/chap 2/006.jpg', 2, 11),
(7, 'Comic/ĐẢO HẢI TẶC/chap 2/007.jpg', 2, 11),
(8, 'Comic/ĐẢO HẢI TẶC/chap 2/008.jpg', 2, 11),
(9, 'Comic/ĐẢO HẢI TẶC/chap 2/009.jpg', 2, 11),
(10, 'Comic/ĐẢO HẢI TẶC/chap 2/010.jpg', 2, 11),
(11, 'Comic/ĐẢO HẢI TẶC/chap 2/011.jpg', 2, 11),
(12, 'Comic/ĐẢO HẢI TẶC/chap 2/012.jpg', 2, 11),
(13, 'Comic/ĐẢO HẢI TẶC/chap 2/013.jpg', 2, 11),
(14, 'Comic/ĐẢO HẢI TẶC/chap 2/014.jpg', 2, 11),
(15, 'Comic/ĐẢO HẢI TẶC/chap 2/015.jpg', 2, 11),
(16, 'Comic/ĐẢO HẢI TẶC/chap 2/016.jpg', 2, 11),
(17, 'Comic/ĐẢO HẢI TẶC/chap 2/0017.jpg', 2, 11),
(18, 'Comic/ĐẢO HẢI TẶC/chap 2/018.jpg', 2, 11),
(19, 'Comic/ĐẢO HẢI TẶC/chap 2/019.jpg', 2, 11),
(20, 'Comic/ĐẢO HẢI TẶC/chap 2/020.jpg', 2, 11),
(1, 'Comic/ĐẢO HẢI TẶC/chap 3/001-fix.jpg', 3, 11),
(2, 'Comic/ĐẢO HẢI TẶC/chap 3/002-fix.jpg', 3, 11),
(3, 'Comic/ĐẢO HẢI TẶC/chap 3/003-fix.jpg', 3, 11),
(4, 'Comic/ĐẢO HẢI TẶC/chap 3/004-fix.jpg', 3, 11),
(5, 'Comic/ĐẢO HẢI TẶC/chap 3/005-fix.jpg', 3, 11),
(6, 'Comic/ĐẢO HẢI TẶC/chap 3/006-fix.jpg', 3, 11),
(7, 'Comic/ĐẢO HẢI TẶC/chap 3/007-fix.jpg', 3, 11),
(8, 'Comic/ĐẢO HẢI TẶC/chap 3/008-fix.jpg', 3, 11),
(9, 'Comic/ĐẢO HẢI TẶC/chap 3/009-fix.jpg', 3, 11),
(10, 'Comic/ĐẢO HẢI TẶC/chap 3/010-fix.jpg', 3, 11),
(1, 'Comic/ĐẢO HẢI TẶC/chap 4/001.jpg', 4, 11),
(2, 'Comic/ĐẢO HẢI TẶC/chap 4/002.jpg', 4, 11),
(3, 'Comic/ĐẢO HẢI TẶC/chap 4/003.jpg', 4, 11),
(4, 'Comic/ĐẢO HẢI TẶC/chap 4/004.jpg', 4, 11),
(5, 'Comic/ĐẢO HẢI TẶC/chap 4/005.jpg', 4, 11),
(6, 'Comic/ĐẢO HẢI TẶC/chap 4/006.jpg', 4, 11),
(7, 'Comic/ĐẢO HẢI TẶC/chap 4/007.jpg', 4, 11),
(8, 'Comic/ĐẢO HẢI TẶC/chap 4/008.jpg', 4, 11),
(9, 'Comic/ĐẢO HẢI TẶC/chap 4/009.jpg', 4, 11),
(10, 'Comic/ĐẢO HẢI TẶC/chap 4/010.jpg', 4, 11),
(1, 'Comic/ĐẢO HẢI TẶC/chap 5/001.jpg', 5, 11),
(2, 'Comic/ĐẢO HẢI TẶC/chap 5/002.jpg', 5, 11),
(3, 'Comic/ĐẢO HẢI TẶC/chap 5/003.jpg', 5, 11),
(4, 'Comic/ĐẢO HẢI TẶC/chap 5/004.jpg', 5, 11),
(5, 'Comic/ĐẢO HẢI TẶC/chap 5/005.jpg', 5, 11),
(6, 'Comic/ĐẢO HẢI TẶC/chap 5/006.jpg', 5, 11),
(7, 'Comic/ĐẢO HẢI TẶC/chap 5/007.jpg', 5, 11),
(8, 'Comic/ĐẢO HẢI TẶC/chap 5/008.jpg', 5, 11),
(9, 'Comic/ĐẢO HẢI TẶC/chap 5/009.jpg', 5, 11),
(10, 'Comic/ĐẢO HẢI TẶC/chap 5/010.jpg', 5, 11),
(1, 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/chap 1/001-fix-fix-fix.jpg', 1, 12),
(2, 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/chap 1/002-fix-fix-fix.jpg', 1, 12),
(3, 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/chap 1/003-fix-fix-fix.jpg', 1, 12),
(4, 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/chap 1/004-fix-fix-fix.jpg', 1, 12),
(5, 'Comic/DIOTI MANUAL ~ KAMISAMATACHI NO REN\'AI DAIKOU/chap 1/005-fix-fix-fix.jpg', 1, 12),
(1, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 1/001-fix.jpg', 1, 13),
(2, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 1/002-fix.jpg', 1, 13),
(3, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 1/003-fix.jpg', 1, 13),
(4, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 1/004-fix.jpg', 1, 13),
(5, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 1/005-fix.jpg', 1, 13),
(1, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 2/002-fix.jpg', 2, 13),
(2, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 2/003-fix.jpg', 2, 13),
(3, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 2/003-fix.jpg', 2, 13),
(4, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 2/004-fix.jpg', 2, 13),
(5, 'Comic/NAZE BOKU NO SEKAI WO DAREMO OBOETEINAI NO KA/chap 2/005-fix.jpg', 2, 13),
(1, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 1/001-fix.jpg', 1, 14),
(2, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 1/002-fix.jpg', 1, 14),
(3, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 1/003-fix.jpg', 1, 14),
(4, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 1/004-fix.jpg', 1, 14),
(5, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 1/005-fix.jpg', 1, 14),
(1, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 2/001-fix.jpg', 2, 14),
(2, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 2/002-fix.jpg', 2, 14),
(3, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 2/003-fix.jpg', 2, 14),
(4, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 2/004-fix.jpg', 2, 14),
(5, 'Comic/TSUKI GA MICHIBIKU ISEKAI DOUCHUU/chap 2/005-fix.jpg', 2, 14),
(1, 'Comic/Naruto/chap 1/0.png', 1, 15),
(2, 'Comic/Naruto/chap 1/1.png', 1, 15),
(3, 'Comic/Naruto/chap 1/2.png', 1, 15),
(1, 'Comic/Naruto/chap 2/0.jpg', 2, 15),
(2, 'Comic/Naruto/chap 2/1.jpg', 2, 15),
(3, 'Comic/Naruto/chap 2/2.jpg', 2, 15),
(1, 'Comic/Gintama/chap 1/0.jpg', 1, 16),
(2, 'Comic/Gintama/chap 1/1.jpg', 1, 16),
(3, 'Comic/Gintama/chap 1/2.jpg', 1, 16),
(4, 'Comic/Gintama/chap 1/3.jpg', 1, 16),
(1, 'Comic/Gintama/chap 2/0.jpg', 2, 16),
(2, 'Comic/Gintama/chap 2/1.jpg', 2, 16),
(3, 'Comic/Gintama/chap 2/2.jpg', 2, 16),
(4, 'Comic/Gintama/chap 2/3.jpg', 2, 16),
(1, 'Comic/MADE IN ABYSS/chap 1/001-fix.jpg', 1, 17),
(2, 'Comic/MADE IN ABYSS/chap 1/002-fix.jpg', 1, 17),
(3, 'Comic/MADE IN ABYSS/chap 1/003-fix.jpg', 1, 17),
(4, 'Comic/MADE IN ABYSS/chap 1/004-fix.jpg', 1, 17),
(5, 'Comic/MADE IN ABYSS/chap 1/005-fix.jpg', 1, 17),
(6, 'Comic/MADE IN ABYSS/chap 1/006-fix.jpg', 1, 17),
(1, 'Comic/MADE IN ABYSS/chap 2/001-fix.jpg', 2, 17),
(2, 'Comic/MADE IN ABYSS/chap 2/002-fix.jpg', 2, 17),
(3, 'Comic/MADE IN ABYSS/chap 2/003-fix.jpg', 2, 17),
(4, 'Comic/MADE IN ABYSS/chap 2/004-fix.jpg', 2, 17),
(5, 'Comic/MADE IN ABYSS/chap 2/005-fix.jpg', 2, 17),
(6, 'Comic/MADE IN ABYSS/chap 2/006-fix.jpg', 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `username`, `password`, `email`, `birthday`, `phone`, `role`) VALUES
(1, 'liempt', 'ce1405', 'liemptce140563@fpt.edu.vn', '2000-03-03', '0925945974', 0),
(2, 'admin', 'admin', 'admin@fpt.edu.vn', '2000-05-03', '0123456741', 1),
(3, 'quangnm', 'ce140508', 'quangnmce140508@fpt.edu.vn', '2000-01-01', '0112002222', 0),
(4, 'trietbm', 'ce140202', 'trietbmce140505@fpt.edu.vn', '2000-05-03', '0147852369', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
