-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-12-24 02:52:15
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- 表的结构 `baidunewsdb`
--

CREATE TABLE `baidunewsdb` (
  `newsid` int(10) UNSIGNED NOT NULL,
  `newsclass` varchar(20) NOT NULL,
  `newsimg` varchar(1000) NOT NULL,
  `newstitle` varchar(200) NOT NULL,
  `newscontent` varchar(400) NOT NULL,
  `newslink` varchar(1000) NOT NULL,
  `newsdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `baidunewsdb`
--

INSERT INTO `baidunewsdb` (`newsid`, `newsclass`, `newsimg`, `newstitle`, `newscontent`, `newslink`, `newsdate`) VALUES
(1, 'baijia', 'http://a.hiphotos.baidu.com/news/crop%3D0%2C1%2C565%2C339%3Bw%3D638/sign=77e8ca9e80d6277ffd5d687815083301/342ac65c103853430b1bd9049413b07eca80883b.jpg', '私有化过程充满风险 奇虎还有几关要过 ', '奇虎360终于还是按照93亿美元的价格执行私有化计划，宣布私有化仅仅是第一步，从分众传媒私有化到回归A股借壳上市的过程可以看到并非坦途，奇虎...', 'http://wengengmiao.baijia.baidu.com/article/274609', '2015-12-22'),
(2, 'baijia', 'http://a.hiphotos.baidu.com/news/crop%3D0%2C1%2C565%2C339%3Bw%3D638/sign=77e8ca9e80d6277ffd5d687815083301/342ac65c103853430b1bd9049413b07eca80883b.jpg', '私有化过程充满风险 奇虎还有几关要过 ', '奇虎360终于还是按照93亿美元的价格执行私有化计划，宣布私有化仅仅是第一步，从分众传媒私有化到回归A股借壳上市的过程可以看到并非坦途，奇虎...', 'http://wengengmiao.baijia.baidu.com/article/274609', '2015-12-22'),
(3, 'baijia', 'http://a.hiphotos.baidu.com/news/crop%3D0%2C1%2C565%2C339%3Bw%3D638/sign=77e8ca9e80d6277ffd5d687815083301/342ac65c103853430b1bd9049413b07eca80883b.jpg', '私有化过程充满风险 奇虎还有几关要过 ', '奇虎360终于还是按照93亿美元的价格执行私有化计划，宣布私有化仅仅是第一步，从分众传媒私有化到回归A股借壳上市的过程可以看到并非坦途，奇虎...', 'http://wengengmiao.baijia.baidu.com/article/274609', '2015-12-22'),
(4, 'baijia', 'http://a.hiphotos.baidu.com/news/crop%3D0%2C1%2C565%2C339%3Bw%3D638/sign=77e8ca9e80d6277ffd5d687815083301/342ac65c103853430b1bd9049413b07eca80883b.jpg', '私有化过程充满风险 奇虎还有几关要过 ', '奇虎360终于还是按照93亿美元的价格执行私有化计划，宣布私有化仅仅是第一步，从分众传媒私有化到回归A股借壳上市的过程可以看到并非坦途，奇虎...', 'http://wengengmiao.baijia.baidu.com/article/274609', '2015-12-22'),
(5, 'baijia', 'http://a.hiphotos.baidu.com/news/crop%3D0%2C1%2C565%2C339%3Bw%3D638/sign=77e8ca9e80d6277ffd5d687815083301/342ac65c103853430b1bd9049413b07eca80883b.jpg', '私有化过程充满风险 奇虎还有几关要过 ', '奇虎360终于还是按照93亿美元的价格执行私有化计划，宣布私有化仅仅是第一步，从分众传媒私有化到回归A股借壳上市的过程可以看到并非坦途，奇虎...', 'http://wengengmiao.baijia.baidu.com/article/274609', '2015-12-22'),
(6, 'keji', 'http://img03.imgcdc.com/grab/img/20151223/83911450825615.jpg', '苹果公司的10个秘密：走进苹果产品设计工作室(1)', ' 如果要给苹果公司加一个定语的话，可以有很多，比如全球最知名的手机公司、全球市值最高的公司，以及全球人们最想了解但除了产品之外对其知之甚少的公司。', 'http://tech.china.com/news/11146418/20151223/20993844.html', '2015-12-22'),
(7, 'keji', 'http://img03.imgcdc.com/grab/img/20151223/83911450825615.jpg', '苹果公司的10个秘密：走进苹果产品设计工作室(1)', ' 如果要给苹果公司加一个定语的话，可以有很多，比如全球最知名的手机公司、全球市值最高的公司，以及全球人们最想了解但除了产品之外对其知之甚少的公司。', 'http://tech.china.com/news/11146418/20151223/20993844.html', '2015-12-22'),
(8, 'keji', 'http://img03.imgcdc.com/grab/img/20151223/83911450825615.jpg', '苹果公司的10个秘密：走进苹果产品设计工作室(1)', ' 如果要给苹果公司加一个定语的话，可以有很多，比如全球最知名的手机公司、全球市值最高的公司，以及全球人们最想了解但除了产品之外对其知之甚少的公司。', 'http://tech.china.com/news/11146418/20151223/20993844.html', '2015-12-22'),
(9, 'keji', 'http://img03.imgcdc.com/grab/img/20151223/83911450825615.jpg', '苹果公司的10个秘密：走进苹果产品设计工作室(1)', ' 如果要给苹果公司加一个定语的话，可以有很多，比如全球最知名的手机公司、全球市值最高的公司，以及全球人们最想了解但除了产品之外对其知之甚少的公司。', 'http://tech.china.com/news/11146418/20151223/20993844.html', '2015-12-22'),
(10, 'keji', 'http://img03.imgcdc.com/grab/img/20151223/83911450825615.jpg', '苹果公司的10个秘密：走进苹果产品设计工作室(1)', ' 如果要给苹果公司加一个定语的话，可以有很多，比如全球最知名的手机公司、全球市值最高的公司，以及全球人们最想了解但除了产品之外对其知之甚少的公司。', 'http://tech.china.com/news/11146418/20151223/20993844.html', '2015-12-22'),
(11, 'tiyu', 'http://www.cnr.cn/newscenter/tyxw/pictures/phonto/20151223/W020151223330218204933.jpg', 'C罗女友又是模特 细数足坛男神那些新欢旧爱\r\n', '　　在与俄罗斯超模伊莲娜分手近一年后，C罗终于成功脱单！近日，西班牙《世界体育报》曝光了皇马巨星的新恋情。一位名叫梅兰妮-马丁斯的葡萄牙女孩儿已经悄然走进了总裁父子的生活。', 'http://sports.cnr.cn/pictures/phonto/20151223/t20151223_520890948.shtml', '2015-12-22'),
(12, 'tiyu', 'http://www.cnr.cn/newscenter/tyxw/pictures/phonto/20151223/W020151223330218204933.jpg', 'C罗女友又是模特 细数足坛男神那些新欢旧爱\r\n', '　　在与俄罗斯超模伊莲娜分手近一年后，C罗终于成功脱单！近日，西班牙《世界体育报》曝光了皇马巨星的新恋情。一位名叫梅兰妮-马丁斯的葡萄牙女孩儿已经悄然走进了总裁父子的生活。', 'http://sports.cnr.cn/pictures/phonto/20151223/t20151223_520890948.shtml', '2015-12-22'),
(13, 'tiyu', 'http://www.cnr.cn/newscenter/tyxw/pictures/phonto/20151223/W020151223330218204933.jpg', 'C罗女友又是模特 细数足坛男神那些新欢旧爱\r\n', '　　在与俄罗斯超模伊莲娜分手近一年后，C罗终于成功脱单！近日，西班牙《世界体育报》曝光了皇马巨星的新恋情。一位名叫梅兰妮-马丁斯的葡萄牙女孩儿已经悄然走进了总裁父子的生活。', 'http://sports.cnr.cn/pictures/phonto/20151223/t20151223_520890948.shtml', '2015-12-22'),
(14, 'tiyu', 'http://www.cnr.cn/newscenter/tyxw/pictures/phonto/20151223/W020151223330218204933.jpg', 'C罗女友又是模特 细数足坛男神那些新欢旧爱\r\n', '　　在与俄罗斯超模伊莲娜分手近一年后，C罗终于成功脱单！近日，西班牙《世界体育报》曝光了皇马巨星的新恋情。一位名叫梅兰妮-马丁斯的葡萄牙女孩儿已经悄然走进了总裁父子的生活。', 'http://sports.cnr.cn/pictures/phonto/20151223/t20151223_520890948.shtml', '2015-12-22'),
(15, 'tiyu', 'http://www.cnr.cn/newscenter/tyxw/pictures/phonto/20151223/W020151223330218204933.jpg', 'C罗女友又是模特 细数足坛男神那些新欢旧爱\r\n', '　　在与俄罗斯超模伊莲娜分手近一年后，C罗终于成功脱单！近日，西班牙《世界体育报》曝光了皇马巨星的新恋情。一位名叫梅兰妮-马丁斯的葡萄牙女孩儿已经悄然走进了总裁父子的生活。', 'http://sports.cnr.cn/pictures/phonto/20151223/t20151223_520890948.shtml', '2015-12-22'),
(16, 'tuijian', 'http://img4.cache.netease.com/photo/0008/2015-12-22/BBF71K142DH00008.550x.0.jpg', '增压惹的祸?直六与V6到底谁好\r\n', '网易汽车12月22日报道 宝马新7系引入以后，很多人都把目光放在它与S级的对比上，或者关注遥控或者手势操作这些“黑科技”。', 'http://auto.163.com/15/1222/18/BBF7IO7B00084TUP.html', '2015-12-22'),
(17, 'tuijian', 'http://img4.cache.netease.com/photo/0008/2015-12-22/BBF71K142DH00008.550x.0.jpg', '增压惹的祸?直六与V6到底谁好\r\n', '网易汽车12月22日报道 宝马新7系引入以后，很多人都把目光放在它与S级的对比上，或者关注遥控或者手势操作这些“黑科技”。', 'http://auto.163.com/15/1222/18/BBF7IO7B00084TUP.html', '2015-12-22'),
(18, 'tuijian', 'http://img4.cache.netease.com/photo/0008/2015-12-22/BBF71K142DH00008.550x.0.jpg', '增压惹的祸?直六与V6到底谁好\r\n', '网易汽车12月22日报道 宝马新7系引入以后，很多人都把目光放在它与S级的对比上，或者关注遥控或者手势操作这些“黑科技”。', 'http://auto.163.com/15/1222/18/BBF7IO7B00084TUP.html', '2015-12-22'),
(19, 'tuijian', 'http://img4.cache.netease.com/photo/0008/2015-12-22/BBF71K142DH00008.550x.0.jpg', '增压惹的祸?直六与V6到底谁好\r\n', '网易汽车12月22日报道 宝马新7系引入以后，很多人都把目光放在它与S级的对比上，或者关注遥控或者手势操作这些“黑科技”。', 'http://auto.163.com/15/1222/18/BBF7IO7B00084TUP.html', '2015-12-22'),
(20, 'tuijian', 'http://img4.cache.netease.com/photo/0008/2015-12-22/BBF71K142DH00008.550x.0.jpg', '增压惹的祸?直六与V6到底谁好\r\n', '网易汽车12月22日报道 宝马新7系引入以后，很多人都把目光放在它与S级的对比上，或者关注遥控或者手势操作这些“黑科技”。', 'http://auto.163.com/15/1222/18/BBF7IO7B00084TUP.html', '2015-12-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baidunewsdb`
--
ALTER TABLE `baidunewsdb`
  ADD PRIMARY KEY (`newsid`),
  ADD UNIQUE KEY `newsid` (`newsid`),
  ADD KEY `newscontent` (`newscontent`(255)),
  ADD KEY `newsclass` (`newsclass`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baidunewsdb`
--
ALTER TABLE `baidunewsdb`
  MODIFY `newsid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
