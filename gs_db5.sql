-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2023 at 04:28 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_db5`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_content_table`
--

CREATE TABLE `gs_content_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT '記事のタイトル',
  `content` varchar(256) NOT NULL COMMENT '記事の内容',
  `img` varchar(256) DEFAULT NULL COMMENT '画像のPATH',
  `date` datetime NOT NULL COMMENT '登録日',
  `update_time` datetime DEFAULT NULL COMMENT '更新日（NULL許容）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='記事のテーブル';

--
-- Dumping data for table `gs_content_table`
--

INSERT INTO `gs_content_table` (`id`, `title`, `content`, `img`, `date`, `update_time`) VALUES
(36, 'いしだ', '給食を残さずたのしく食べました', '20230119152027_', '2022-06-17 00:38:50', '2023-01-20 00:45:47'),
(37, 'やまだ', '楽しそうでした', '20230118143333_', '2022-06-17 00:38:55', '2023-01-18 23:33:33'),
(38, 'いはら', '早起きできました', '20230118143527_', '2022-06-17 21:26:35', '2023-01-18 23:35:27'),
(39, 'つかもと', 'うれしそうでした', '20230118143701_happy.jpg', '2023-01-16 00:06:48', '2023-01-18 23:37:01'),
(40, 'おだね', '楽しくお話されていました', '20230118143800_', '2023-01-16 23:43:41', '2023-01-18 23:38:00'),
(41, 'こたに', '今日から仲間入りです', '20230119140629_', '2023-01-19 23:06:29', NULL),
(44, 'たろう', 'ああああ', '20230119152046_', '2023-01-20 00:20:46', NULL),
(45, 'isida', 'aaa', '20230119153511_', '2023-01-20 00:35:11', NULL),
(46, 'はなこ', 'あああ', '20230119155312_', '2023-01-20 00:53:12', NULL),
(47, 'はなこ', 'あああ', '20230119155428_', '2023-01-20 00:54:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gs_old_table`
--

CREATE TABLE `gs_old_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `content` varchar(256) CHARACTER SET utf8 NOT NULL,
  `img` varchar(256) CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'test1', '$2y$10$amJsJbnjco8Gyz9bytkawOgWcKDu2PC/hf6daAkGYFZ35nmoq1ETu', 1, 0),
(2, 'テスト2一般', 'test2', '$2y$10$Jrod7Xts/VPa0ThZhT33AedMO7D2rHLA.qqDLqYGvimBqsP5Xliia', 0, 0),
(3, 'テスト３', 'test3', '$2y$10$hT8NciYWQ3.lO0QLfz1UHOySxqHYFVN3f3p2tTLQKiIgw0kBvO6g.', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_content_table`
--
ALTER TABLE `gs_content_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_old_table`
--
ALTER TABLE `gs_old_table`
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
-- AUTO_INCREMENT for table `gs_content_table`
--
ALTER TABLE `gs_content_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `gs_old_table`
--
ALTER TABLE `gs_old_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
