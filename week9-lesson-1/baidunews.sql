-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-01-05 04:19:22
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--

-- --------------------------------------------------------

--
-- 表的结构 `newsinfo`
--

CREATE TABLE `newsinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `classfy` enum('recom','baijia','local','img','fun','society') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newsinfo`
--

INSERT INTO `newsinfo` (`id`, `title`, `img`, `content`, `time`, `classfy`) VALUES
(1, '当政府具备了互联网思维', './images/manage/1.jpg', '如今，网民数量越来越多，很多人的日常吃穿住用行，都通过互联网来解决', '2015-12-31', 'recom'),
(2, '当政府具备了互联网思维', './images/manage/1.jpg', '如今，网民数量越来越多，很多人的日常吃穿住用行，都通过互联网来解决', '2015-12-31', 'recom'),
(3, '当政府具备了互联网思维', './images/manage/1.jpg', '如今，网民数量越来越多，很多人的日常吃穿住用行，都通过互联网来解决', '2015-12-31', 'recom'),
(4, '当政府具备了互联网思维', './images/manage/1.jpg', '如今，网民数量越来越多，很多人的日常吃穿住用行，都通过互联网来解决', '2015-12-31', 'recom'),
(5, '特斯拉想学苹果，但马斯克不想学乔布斯', './images/manage/2.jpg', '学得会的商业模式，学不会的乔布斯。', '2015-12-31', 'baijia'),
(6, '特斯拉想学苹果，但马斯克不想学乔布斯', './images/manage/2.jpg', '学得会的商业模式，学不会的乔布斯。', '2015-12-31', 'baijia'),
(7, '特斯拉想学苹果，但马斯克不想学乔布斯', './images/manage/2.jpg', '学得会的商业模式，学不会的乔布斯。', '2015-12-31', 'baijia'),
(8, '特斯拉想学苹果，但马斯克不想学乔布斯', './images/manage/2.jpg', '学得会的商业模式，学不会的乔布斯。', '2015-12-31', 'baijia'),
(9, '六大黑科技，或将改变2016年智能手机竞争态势', './images/manage/3.jpg', '在2016年，靠忽悠玄虚的科技概念将越来越难以奏效。当用户不再被表象打动，智能手机必须拥有更佳的内涵和体验创新。', '2015-12-31', 'local'),
(10, '六大黑科技，或将改变2016年智能手机竞争态势', './images/manage/3.jpg', '在2016年，靠忽悠玄虚的科技概念将越来越难以奏效。当用户不再被表象打动，智能手机必须拥有更佳的内涵和体验创新。', '2015-12-31', 'local'),
(11, '六大黑科技，或将改变2016年智能手机竞争态势', './images/manage/3.jpg', '在2016年，靠忽悠玄虚的科技概念将越来越难以奏效。当用户不再被表象打动，智能手机必须拥有更佳的内涵和体验创新。', '2015-12-31', 'local'),
(12, '六大黑科技，或将改变2016年智能手机竞争态势', './images/manage/3.jpg', '在2016年，靠忽悠玄虚的科技概念将越来越难以奏效。当用户不再被表象打动，智能手机必须拥有更佳的内涵和体验创新。', '2015-12-31', 'local'),
(13, '苹果的坎坷2015：股价下跌 iPhone销量受阻', './images/manage/4.jpg', '国民经济和社会发展第十三个五年规划也正式公布。', '2015-12-31', 'img'),
(14, '苹果的坎坷2015：股价下跌 iPhone销量受阻', './images/manage/4.jpg', '国民经济和社会发展第十三个五年规划也正式公布。', '2015-12-31', 'img'),
(15, '苹果的坎坷2015：股价下跌 iPhone销量受阻', './images/manage/4.jpg', '国民经济和社会发展第十三个五年规划也正式公布。', '2015-12-31', 'img'),
(16, '苹果的坎坷2015：股价下跌 iPhone销量受阻', './images/manage/4.jpg', '国民经济和社会发展第十三个五年规划也正式公布。', '2015-12-31', 'img'),
(17, 'AR/VR，要跨过不止一道坎才能走进大众消费现实', './images/manage/5.jpg', '当下AR/VR的发展热火朝天，其在彰显企业创新能力、增进公司估值、提振公司股价、变革自救重生上拥有神奇魔力', '2015-12-31', 'fun'),
(18, 'AR/VR，要跨过不止一道坎才能走进大众消费现实', './images/manage/5.jpg', '当下AR/VR的发展热火朝天，其在彰显企业创新能力、增进公司估值、提振公司股价、变革自救重生上拥有神奇魔力', '2015-12-31', 'fun'),
(19, 'AR/VR，要跨过不止一道坎才能走进大众消费现实', './images/manage/5.jpg', '当下AR/VR的发展热火朝天，其在彰显企业创新能力、增进公司估值、提振公司股价、变革自救重生上拥有神奇魔力', '2015-12-31', 'fun'),
(20, 'AR/VR，要跨过不止一道坎才能走进大众消费现实', './images/manage/5.jpg', '当下AR/VR的发展热火朝天，其在彰显企业创新能力、增进公司估值、提振公司股价、变革自救重生上拥有神奇魔力', '2015-12-31', 'fun'),
(21, '关于魅族裁员，你所不知道的真相', './images/manage/6.jpg', '2016年开始，手机圈似乎是一如既往的火热，昨日，魅族裁员5%、乐视首发晓龙820、黎万强回归小米，瞬间刷爆了微博和朋友圈', '2015-12-31', 'society'),
(22, '关于魅族裁员，你所不知道的真相', './images/manage/6.jpg', '2016年开始，手机圈似乎是一如既往的火热，昨日，魅族裁员5%、乐视首发晓龙820、黎万强回归小米，瞬间刷爆了微博和朋友圈', '2015-12-31', 'society'),
(23, '关于魅族裁员，你所不知道的真相', './images/manage/6.jpg', '2016年开始，手机圈似乎是一如既往的火热，昨日，魅族裁员5%、乐视首发晓龙820、黎万强回归小米，瞬间刷爆了微博和朋友圈', '2015-12-31', 'society'),
(24, '关于魅族裁员，你所不知道的真相', './images/manage/6.jpg', '2016年开始，手机圈似乎是一如既往的火热，昨日，魅族裁员5%、乐视首发晓龙820、黎万强回归小米，瞬间刷爆了微博和朋友圈', '2015-12-31', 'society');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newsinfo`
--
ALTER TABLE `newsinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `newsinfo`
--
ALTER TABLE `newsinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
