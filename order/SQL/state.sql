-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-04-30 05:10:00
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `order`
--

-- --------------------------------------------------------

--
-- 資料表結構 `state`
--

CREATE TABLE `state` (
  `stateid` tinyint(10) NOT NULL COMMENT '明細編號',
  `orderid` int(10) NOT NULL COMMENT '訂單編號',
  `PId` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品編號',
  `PName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `quantity` int(5) NOT NULL COMMENT '商品數量',
  `category` enum('樂器','影片','課程') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品類別',
  `companyId` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '廠商編號',
  `money` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品價格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `state`
--

INSERT INTO `state` (`stateid`, `orderid`, `PId`, `PName`, `quantity`, `category`, `companyId`, `money`) VALUES
(1, 1, 'P0146', 'YAMAHA RYDEEN 傳統爵士鼓組 黑色款', 1, '樂器', 'F050', '27000'),
(2, 1, 'P0147', 'YAMAHA RYDEEN 傳統爵士鼓組 酒紅色款', 2, '樂器', 'F050', '27000'),
(3, 1, 'P0148', 'YAMAHA RYDEEN 傳統爵士鼓組 雅痞黃色款', 3, '樂器', 'F050', '27000'),
(4, 2, 'P0149', 'YAMAHA RYDEEN 傳統爵士鼓組 絢麗銀色款', 2, '樂器', 'F050', '27000'),
(5, 3, 'P0150', 'YAMAHA Stage Custom 爵士鼓組 典雅白色款', 1, '樂器', 'F050', '46000'),
(6, 4, 'P0151', 'YAMAHA Stage Custom 爵士鼓組 蜂蜜琥珀色款', 2, '樂器', 'F050', '46000'),
(7, 5, 'P0152', 'YAMAHA Stage Custom 爵士鼓組 酒紅木紋色款', 3, '樂器', 'F050', '46000'),
(8, 6, 'P0153', 'YAMAHA Stage Custom 爵士鼓組 自然原木色款', 1, '樂器', 'F050', '46000'),
(9, 7, 'P0154', 'DIXON 台灣製 兒童爵士鼓 BK黑色', 3, '樂器', 'F048', '14000'),
(10, 7, 'P0155', 'DIXON 台灣製 兒童爵士鼓 F22銅刷線', 2, '樂器', 'F048', '14000'),
(11, 8, 'P0156', 'DIXON 台灣製 兒童爵士鼓 F25藍刷線', 1, '樂器', 'F048', '14000'),
(12, 8, 'P0157', 'DIXON 台灣製 兒童爵士鼓 SL銀色', 2, '樂器', 'F048', '14000'),
(13, 8, 'P0158', 'DIXON 台灣製 兒童爵士鼓 WR酒紅', 3, '樂器', 'F048', '14000'),
(14, 9, 'P0159', '標準加厚88鍵 鋰電池充電式 手捲電子琴', 1, '樂器', 'F047', '2799'),
(15, 10, 'P0160', '『YAMAHA NP12』全新機種 61鍵電子琴『黑色款』', 2, '樂器', 'F046', '8500'),
(16, 11, 'P0161', '『YAMAHA NP12』全新機種 61鍵電子琴『白色款』', 1, '樂器', 'F046', '8500'),
(17, 11, 'P0162', 'YAMAHA PSR-E463 61鍵自動伴奏電子琴', 3, '樂器', 'F046', '13500'),
(18, 12, 'P0111', '【美美老師長笛小學堂】第五課', 1, '影片', 'F001', '1000'),
(19, 13, 'P0112', '【美美老師長笛小學堂】第六課', 1, '影片', 'F001', '1000'),
(20, 14, 'P0113', '【美美老師長笛小學堂】第七課', 1, '影片', 'F001', '1000'),
(21, 14, 'P0114', '【薩克斯風】01', 1, '影片', 'F022', '1000'),
(22, 15, 'P0115', '【薩克斯風】02', 1, '影片', 'F022', '1000'),
(23, 16, 'P0116', '【薩克斯風】03', 1, '影片', 'F022', '1000'),
(24, 16, 'P0117', '【薩克斯風】04', 1, '影片', 'F022', '1000'),
(25, 17, 'P0118', '【薩克斯風】05', 1, '影片', 'F022', '1000'),
(26, 17, 'P0119', '【薩克斯風】06', 1, '影片', 'F022', '1000'),
(27, 17, 'P0120', '【爵士鼓教學】01', 1, '影片', 'F017', '500'),
(28, 18, 'P0121', '【爵士鼓教學】02', 1, '影片', 'F017', '500'),
(29, 19, 'P0174', '『PUKA 烏克麗麗』PK-DPS 21吋口輪系列 / 小海豚款', 1, '樂器', 'F027', '1980'),
(30, 20, 'P0175', '『PUKA 烏克麗麗』PK-HBC 23吋口輪系列 / 扶桑花款', 2, '樂器', 'F027', '2500'),
(31, 21, 'P0176', '『PUKA 烏克麗麗』PU-PEACE-S 21吋口輪系列 / 和平', 3, '樂器', 'F027', '2100'),
(32, 22, 'P0177', '『PUKA 烏克麗麗』PU-LOVE-S 21吋口輪系列 / 愛心款', 2, '樂器', 'F027', '2100'),
(33, 23, 'P0178', '『PUKA 烏克麗麗』PK-TFC 23吋口輪系列 / 熱帶魚款', 1, '樂器', 'F027', '2500'),
(34, 23, 'P0179', 'Sebrew 希伯萊 MC-1  入門小提琴', 2, '樂器', 'F028', '1600'),
(35, 24, 'P0180', 'Sebrew 希伯萊 MC-2 考級小提琴', 3, '樂器', 'F028', '2280'),
(36, 25, 'P0181', 'Jazzy 台灣品牌 小提琴', 2, '樂器', 'F028', '3280'),
(37, 26, 'P0182', '專業級 Elegant 605 手工虎背紋小提琴', 1, '樂器', 'F029', '18000'),
(38, 27, 'P0183', '★SEKWANG★SVN-400雲杉實木小提琴', 2, '樂器', 'F029', '7000'),
(39, 28, 'P0184', '德國 Conrad Götz 小提琴 CG-123', 3, '樂器', 'F029', '76500'),
(40, 28, 'P0185', 'Abbott SN-300 小提琴', 2, '樂器', 'F029', '26000'),
(41, 29, 'P0186', '★嚴選JYC JV-17 亮面虎紋小提琴', 1, '樂器', 'F029', '16500'),
(42, 29, 'P0187', '小提琴 BEAUTE ETERNA小提琴', 2, '樂器', 'F030', '7890'),
(43, 30, 'P0188', 'BEAUTE ETERNA 雲杉木單板 小提琴 FL34', 3, '樂器', 'F030', '9200'),
(44, 31, 'P0189', 'BEAUTE ETERNA小提琴【FD12染黑配件】', 2, '樂器', 'F030', '6590'),
(45, 32, 'P0190', 'BEAUTE ETERNA 雲杉木單板 小提琴 FL12', 1, '樂器', 'F030', '9230'),
(46, 33, 'P0191', 'YAMAHA YFL-222 長笛', 2, '樂器', 'F034', '24710'),
(47, 34, 'P0192', 'YAMAHA YFL-372 長笛', 3, '樂器', 'F034', '54600'),
(48, 35, 'P0193', 'YAMAHA YFL-272 長笛', 2, '樂器', 'F034', '41600'),
(49, 36, 'P0194', '★JYC JV-402A中提琴★雲杉實木頂級音色', 1, '樂器', 'F036', '16400'),
(50, 37, 'P0195', '★JYC JV-404中提琴★嚴選手工清鑲邊漆琴', 2, '樂器', 'F036', '18900'),
(51, 37, 'P0196', 'YAMAHA 山葉 YTS-62 專業級 次中音薩克斯風 ', 3, '樂器', 'F039', '130500'),
(52, 38, 'P0197', 'Zeus Alto 中音薩克斯風/黑金色　Z-A580BG', 2, '樂器', 'F039', '37570'),
(53, 38, 'P0198', 'JUPITER JTS-500Q 次中音 薩克斯風', 1, '樂器', 'F039', '38350'),
(54, 38, 'P0199', 'Zeus Alto 中音薩克斯風　Z-A580L', 2, '樂器', 'F039', '35100'),
(55, 39, 'P0200', 'JUPITER JTS-700Q 次中音 薩克斯風', 3, '樂器', 'F039', '46800'),
(56, 39, 'P0049', '【七月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(57, 40, 'P0050', '【八月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(58, 41, 'P0051', '【九月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(59, 42, 'P0052', '【十月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(60, 42, 'P0053', '【十一月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(61, 43, 'P0054', '【十二月】鋼琴 - 假日班', 1, '課程', '無', '4000'),
(62, 44, 'P0055', '【七月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(63, 45, 'P0056', '【八月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(64, 45, 'P0057', '【九月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(65, 46, 'P0058', '【十月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(66, 47, 'P0059', '【十一月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(67, 48, 'P0060', '【十二月】電子琴 - 假日班', 1, '課程', '無', '2500'),
(68, 48, 'P0061', '【七月】小提琴 - 假日班', 1, '課程', '無', '4000'),
(69, 49, 'P0062', '【八月】小提琴 - 假日班', 1, '課程', '無', '4000'),
(70, 50, 'P0063', '【九月】小提琴 - 假日班', 1, '課程', '無', '4000');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `state`
--
ALTER TABLE `state`
  MODIFY `stateid` tinyint(10) NOT NULL AUTO_INCREMENT COMMENT '明細編號', AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;