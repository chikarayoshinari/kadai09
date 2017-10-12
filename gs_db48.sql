-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 10 朁E12 日 17:36
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db48`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `indate`) VALUES
(3, 'yamada', '1974', '希少なジーンズビートルです。', '2017-09-28 21:49:39'),
(5, 'KARMANN GHIA', '1955', '角テール最高！', '2017-09-28 21:53:11'),
(7, 'TYPE-1', '1978', 'ドイツ最終年式です。', '2017-09-28 22:24:07'),
(12, 'afeg', 'zegzeg', 'zgzsge', '2017-09-30 16:53:09');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `naiyou`, `indate`) VALUES
(3, 'ＣＳＳ入門', 'http://www.aaaa.ikeike.co.jp', 'もう忘れそうかな？', '2017-09-30 20:25:46'),
(4, 'ふしぎの図鑑', 'http://www.ei', '次だよ。どーだね。', '2017-10-01 00:31:13'),
(5, '大統領の料理人', 'http://www.aaa.aaa.jp', 'ミッテラン大統領の心を虜にした', '2017-10-05 19:24:42'),
(6, '梅ロック', 'https://ume.jp', '梅酒もいいのあるよ', '2017-10-05 19:25:52'),
(7, '隠居宗五郎', 'http://ddd.co.jp', '佐伯さん最高ですね。どうかな？\r\n', '2017-10-05 19:26:40'),
(13, 'グレープフルーツ', 'https://www', '黄色', '2017-10-13 00:24:29'),
(14, 'クルーズ', 'https://www.co.jp', 'クルーズ最高です。', '2017-10-13 00:33:57');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(3, '佐藤', 'sato34', 'sato0161', 1, 0),
(4, 'スズキサトシ', 'suzu', '$2y$10$SUphJaQmYv9CL8PNKj9zrePlr7Ly53MLlZkdoeuJC95M0/7BVFdQW', 1, 1),
(5, '吉成', 'yoshi', '$2y$10$wu6Qfhn7yxEeb8CZHmvYh.Xpjb6.U.KpALEohnxxqIj.nycXDpbka', 1, 0),
(6, '小池', 'koike', '$2y$10$w9PAFY9Dr99xfP4k2WuXie.Pp9cFuTPFO3t.zur00etfVaHzXMyBi', 1, 0),
(7, '古谷', 'furuya', 'furufuru', 0, 1),
(8, '阿部', 'abe', 'abeabe', 1, 0),
(9, '3 3', 's', 's0161', 1, 0),
(10, '近藤', 'kondo', '$2y$10$SC8c7J3k0Z1sS2hamRtd6.2v4DLRYiUbXk27XzozlyysgRF43yU6W', 1, 0),
(11, '山崎', 'yama', '$2y$10$UUJ3A6DH93Lcf8r5WYqYPeg05lWUrPL9JejXlY55xbKkIFsUlQwfK', 0, 0),
(12, 'ka', 'ka', '$2y$10$hphQcxaHMHEKXJ0FAwzlX.phRE10xprXA3zkWO44pNEST06rrMc1m', 0, 0),
(13, 'd', 'd', '$2y$10$jsLxqVMzDs9snSQlefbtAeMkBJ.sjaqYiniUsvr/8oyEsDGQWYFXG', 0, 0),
(14, 'c', 'c', '$2y$10$pVsi5u5W8upLnfJr1jNxROVAi5WkiWAjSg2NUAiwj0.l./VDjCDeu', 0, 0),
(15, 'a', 'a', '$2y$10$.ms69TiVX.CKfvAAbaXIVuaSgeX6HpjKwV3ITjtdHn9fhNGbgqv.e', 1, 0),
(17, 'z', 'z', '$2y$10$TgN1cVxiHLPgIWknMJIbT.ROhEhF.wCpGr/JcW2.DHz40/qda4vQW', 0, 0),
(18, 'kari', 'kari', '$2y$10$yvD5S5dbf0OPG3NL0KiAhet.d5KLZmWlY4bWM.seVQc1MrEdNYafG', 0, 1),
(19, 'gs', 'gs', '$2y$10$AVH2R5JMRCDw6Lij5qfsaep99Kw1gxkxnnenBRFSNhINinXioDf1K', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
