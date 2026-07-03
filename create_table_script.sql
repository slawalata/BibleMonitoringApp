-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2024 at 08:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
use bibleapp;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details_table`
--

CREATE TABLE `admin_details_table` (
  `id_admin_details` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_details_table`
--

INSERT INTO `admin_details_table` (`id_admin_details`, `id_admin`, `id_group`) VALUES
(1, 1, 36);

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id_admin` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

-- username = dessywaiman password = password
INSERT INTO `admin_table` (`id_admin`, `admin_name`, `username`, `password`, `phone`) VALUES
(1, 'Dessy Waiman', 'dessywaiman', '5f4dcc3b5aa765d61d8327deb882cf99', '08123456789');

-- --------------------------------------------------------

--
-- Table structure for table `chapter_table`
--

CREATE TABLE `chapter_table` (
  `id_chapter` int(11) NOT NULL,
  `chapter_name` text NOT NULL,
  `book_name` text NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter_table`
--

INSERT INTO `chapter_table` (`id_chapter`, `chapter_name`, `book_name`, `number`) VALUES
(1, 'kejadian 1', 'kejadian', 1),
(2, 'kejadian 2', 'kejadian', 2),
(3, 'kejadian 3', 'kejadian', 3),
(4, 'kejadian 4', 'kejadian', 4),
(5, 'kejadian 5', 'kejadian', 5),
(6, 'kejadian 6', 'kejadian', 6),
(7, 'kejadian 7', 'kejadian', 7),
(8, 'kejadian 8', 'kejadian', 8),
(9, 'kejadian 9', 'kejadian', 9),
(10, 'kejadian 10', 'kejadian', 10),
(11, 'kejadian 11', 'kejadian', 11),
(12, 'kejadian 12', 'kejadian', 12),
(13, 'kejadian 13', 'kejadian', 13),
(14, 'kejadian 14', 'kejadian', 14),
(15, 'kejadian 15', 'kejadian', 15),
(16, 'kejadian 16', 'kejadian', 16),
(17, 'kejadian 17', 'kejadian', 17),
(18, 'kejadian 18', 'kejadian', 18),
(19, 'kejadian 19', 'kejadian', 19),
(20, 'kejadian 20', 'kejadian', 20),
(21, 'kejadian 21', 'kejadian', 21),
(22, 'kejadian 22', 'kejadian', 22),
(23, 'kejadian 23', 'kejadian', 23),
(24, 'kejadian 24', 'kejadian', 24),
(25, 'kejadian 25', 'kejadian', 25),
(26, 'kejadian 26', 'kejadian', 26),
(27, 'kejadian 27', 'kejadian', 27),
(28, 'kejadian 28', 'kejadian', 28),
(29, 'kejadian 29', 'kejadian', 29),
(30, 'kejadian 30', 'kejadian', 30),
(31, 'kejadian 31', 'kejadian', 31),
(32, 'kejadian 32', 'kejadian', 32),
(33, 'kejadian 33', 'kejadian', 33),
(34, 'kejadian 34', 'kejadian', 34),
(35, 'kejadian 35', 'kejadian', 35),
(36, 'kejadian 36', 'kejadian', 36),
(37, 'kejadian 37', 'kejadian', 37),
(38, 'kejadian 38', 'kejadian', 38),
(39, 'kejadian 39', 'kejadian', 39),
(40, 'kejadian 40', 'kejadian', 40),
(41, 'kejadian 41', 'kejadian', 41),
(42, 'kejadian 42', 'kejadian', 42),
(43, 'kejadian 43', 'kejadian', 43),
(44, 'kejadian 44', 'kejadian', 44),
(45, 'kejadian 45', 'kejadian', 45),
(46, 'kejadian 46', 'kejadian', 46),
(47, 'kejadian 47', 'kejadian', 47),
(48, 'kejadian 48', 'kejadian', 48),
(49, 'kejadian 49', 'kejadian', 49),
(50, 'kejadian 50', 'kejadian', 50),
(51, 'keluaran 1', 'keluaran', 1),
(52, 'keluaran 2', 'keluaran', 2),
(53, 'keluaran 3', 'keluaran', 3),
(54, 'keluaran 4', 'keluaran', 4),
(55, 'keluaran 5', 'keluaran', 5),
(56, 'keluaran 6', 'keluaran', 6),
(57, 'keluaran 7', 'keluaran', 7),
(58, 'keluaran 8', 'keluaran', 8),
(59, 'keluaran 9', 'keluaran', 9),
(60, 'keluaran 10', 'keluaran', 10),
(61, 'keluaran 11', 'keluaran', 11),
(62, 'keluaran 12', 'keluaran', 12),
(63, 'keluaran 13', 'keluaran', 13),
(64, 'keluaran 14', 'keluaran', 14),
(65, 'keluaran 15', 'keluaran', 15),
(66, 'keluaran 16', 'keluaran', 16),
(67, 'keluaran 17', 'keluaran', 17),
(68, 'keluaran 18', 'keluaran', 18),
(69, 'keluaran 19', 'keluaran', 19),
(70, 'keluaran 20', 'keluaran', 20),
(71, 'keluaran 21', 'keluaran', 21),
(72, 'keluaran 22', 'keluaran', 22),
(73, 'keluaran 23', 'keluaran', 23),
(74, 'keluaran 24', 'keluaran', 24),
(75, 'keluaran 25', 'keluaran', 25),
(76, 'keluaran 26', 'keluaran', 26),
(77, 'keluaran 27', 'keluaran', 27),
(78, 'keluaran 28', 'keluaran', 28),
(79, 'keluaran 29', 'keluaran', 29),
(80, 'keluaran 30', 'keluaran', 30),
(81, 'keluaran 31', 'keluaran', 31),
(82, 'keluaran 32', 'keluaran', 32),
(83, 'keluaran 33', 'keluaran', 33),
(84, 'keluaran 34', 'keluaran', 34),
(85, 'keluaran 35', 'keluaran', 35),
(86, 'keluaran 36', 'keluaran', 36),
(87, 'keluaran 37', 'keluaran', 37),
(88, 'keluaran 38', 'keluaran', 38),
(89, 'keluaran 39', 'keluaran', 39),
(90, 'keluaran 40', 'keluaran', 40),
(91, 'imamat 1', 'imamat', 1),
(92, 'imamat 2', 'imamat', 2),
(93, 'imamat 3', 'imamat', 3),
(94, 'imamat 4', 'imamat', 4),
(95, 'imamat 5', 'imamat', 5),
(96, 'imamat 6', 'imamat', 6),
(97, 'imamat 7', 'imamat', 7),
(98, 'imamat 8', 'imamat', 8),
(99, 'imamat 9', 'imamat', 9),
(100, 'imamat 10', 'imamat', 10),
(101, 'imamat 11', 'imamat', 11),
(102, 'imamat 12', 'imamat', 12),
(103, 'imamat 13', 'imamat', 13),
(104, 'imamat 14', 'imamat', 14),
(105, 'imamat 15', 'imamat', 15),
(106, 'imamat 16', 'imamat', 16),
(107, 'imamat 17', 'imamat', 17),
(108, 'imamat 18', 'imamat', 18),
(109, 'imamat 19', 'imamat', 19),
(110, 'imamat 20', 'imamat', 20),
(111, 'imamat 21', 'imamat', 21),
(112, 'imamat 22', 'imamat', 22),
(113, 'imamat 23', 'imamat', 23),
(114, 'imamat 24', 'imamat', 24),
(115, 'imamat 25', 'imamat', 25),
(116, 'imamat 26', 'imamat', 26),
(117, 'imamat 27', 'imamat', 27),
(118, 'bilangan 1', 'bilangan', 1),
(119, 'bilangan 2', 'bilangan', 2),
(120, 'bilangan 3', 'bilangan', 3),
(121, 'bilangan 4', 'bilangan', 4),
(122, 'bilangan 5', 'bilangan', 5),
(123, 'bilangan 6', 'bilangan', 6),
(124, 'bilangan 7', 'bilangan', 7),
(125, 'bilangan 8', 'bilangan', 8),
(126, 'bilangan 9', 'bilangan', 9),
(127, 'bilangan 10', 'bilangan', 10),
(128, 'bilangan 11', 'bilangan', 11),
(129, 'bilangan 12', 'bilangan', 12),
(130, 'bilangan 13', 'bilangan', 13),
(131, 'bilangan 14', 'bilangan', 14),
(132, 'bilangan 15', 'bilangan', 15),
(133, 'bilangan 16', 'bilangan', 16),
(134, 'bilangan 17', 'bilangan', 17),
(135, 'bilangan 18', 'bilangan', 18),
(136, 'bilangan 19', 'bilangan', 19),
(137, 'bilangan 20', 'bilangan', 20),
(138, 'bilangan 21', 'bilangan', 21),
(139, 'bilangan 22', 'bilangan', 22),
(140, 'bilangan 23', 'bilangan', 23),
(141, 'bilangan 24', 'bilangan', 24),
(142, 'bilangan 25', 'bilangan', 25),
(143, 'bilangan 26', 'bilangan', 26),
(144, 'bilangan 27', 'bilangan', 27),
(145, 'bilangan 28', 'bilangan', 28),
(146, 'bilangan 29', 'bilangan', 29),
(147, 'bilangan 30', 'bilangan', 30),
(148, 'bilangan 31', 'bilangan', 31),
(149, 'bilangan 32', 'bilangan', 32),
(150, 'bilangan 33', 'bilangan', 33),
(151, 'bilangan 34', 'bilangan', 34),
(152, 'bilangan 35', 'bilangan', 35),
(153, 'bilangan 36', 'bilangan', 36),
(154, 'ulangan 1', 'ulangan', 1),
(155, 'ulangan 2', 'ulangan', 2),
(156, 'ulangan 3', 'ulangan', 3),
(157, 'ulangan 4', 'ulangan', 4),
(158, 'ulangan 5', 'ulangan', 5),
(159, 'ulangan 6', 'ulangan', 6),
(160, 'ulangan 7', 'ulangan', 7),
(161, 'ulangan 8', 'ulangan', 8),
(162, 'ulangan 9', 'ulangan', 9),
(163, 'ulangan 10', 'ulangan', 10),
(164, 'ulangan 11', 'ulangan', 11),
(165, 'ulangan 12', 'ulangan', 12),
(166, 'ulangan 13', 'ulangan', 13),
(167, 'ulangan 14', 'ulangan', 14),
(168, 'ulangan 15', 'ulangan', 15),
(169, 'ulangan 16', 'ulangan', 16),
(170, 'ulangan 17', 'ulangan', 17),
(171, 'ulangan 18', 'ulangan', 18),
(172, 'ulangan 19', 'ulangan', 19),
(173, 'ulangan 20', 'ulangan', 20),
(174, 'ulangan 21', 'ulangan', 21),
(175, 'ulangan 22', 'ulangan', 22),
(176, 'ulangan 23', 'ulangan', 23),
(177, 'ulangan 24', 'ulangan', 24),
(178, 'ulangan 25', 'ulangan', 25),
(179, 'ulangan 26', 'ulangan', 26),
(180, 'ulangan 27', 'ulangan', 27),
(181, 'ulangan 28', 'ulangan', 28),
(182, 'ulangan 29', 'ulangan', 29),
(183, 'ulangan 30', 'ulangan', 30),
(184, 'ulangan 31', 'ulangan', 31),
(185, 'ulangan 32', 'ulangan', 32),
(186, 'ulangan 33', 'ulangan', 33),
(187, 'ulangan 34', 'ulangan', 34),
(188, 'yosua 1', 'yosua', 1),
(189, 'yosua 2', 'yosua', 2),
(190, 'yosua 3', 'yosua', 3),
(191, 'yosua 4', 'yosua', 4),
(192, 'yosua 5', 'yosua', 5),
(193, 'yosua 6', 'yosua', 6),
(194, 'yosua 7', 'yosua', 7),
(195, 'yosua 8', 'yosua', 8),
(196, 'yosua 9', 'yosua', 9),
(197, 'yosua 10', 'yosua', 10),
(198, 'yosua 11', 'yosua', 11),
(199, 'yosua 12', 'yosua', 12),
(200, 'yosua 13', 'yosua', 13),
(201, 'yosua 14', 'yosua', 14),
(202, 'yosua 15', 'yosua', 15),
(203, 'yosua 16', 'yosua', 16),
(204, 'yosua 17', 'yosua', 17),
(205, 'yosua 18', 'yosua', 18),
(206, 'yosua 19', 'yosua', 19),
(207, 'yosua 20', 'yosua', 20),
(208, 'yosua 21', 'yosua', 21),
(209, 'yosua 22', 'yosua', 22),
(210, 'yosua 23', 'yosua', 23),
(211, 'yosua 24', 'yosua', 24),
(212, 'hakim-hakim 1', 'hakim-hakim', 1),
(213, 'hakim-hakim 2', 'hakim-hakim', 2),
(214, 'hakim-hakim 3', 'hakim-hakim', 3),
(215, 'hakim-hakim 4', 'hakim-hakim', 4),
(216, 'hakim-hakim 5', 'hakim-hakim', 5),
(217, 'hakim-hakim 6', 'hakim-hakim', 6),
(218, 'hakim-hakim 7', 'hakim-hakim', 7),
(219, 'hakim-hakim 8', 'hakim-hakim', 8),
(220, 'hakim-hakim 9', 'hakim-hakim', 9),
(221, 'hakim-hakim 10', 'hakim-hakim', 10),
(222, 'hakim-hakim 11', 'hakim-hakim', 11),
(223, 'hakim-hakim 12', 'hakim-hakim', 12),
(224, 'hakim-hakim 13', 'hakim-hakim', 13),
(225, 'hakim-hakim 14', 'hakim-hakim', 14),
(226, 'hakim-hakim 15', 'hakim-hakim', 15),
(227, 'hakim-hakim 16', 'hakim-hakim', 16),
(228, 'hakim-hakim 17', 'hakim-hakim', 17),
(229, 'hakim-hakim 18', 'hakim-hakim', 18),
(230, 'hakim-hakim 19', 'hakim-hakim', 19),
(231, 'hakim-hakim 20', 'hakim-hakim', 20),
(232, 'hakim-hakim 21', 'hakim-hakim', 21),
(233, 'rut 1', 'rut', 1),
(234, 'rut 2', 'rut', 2),
(235, 'rut 3', 'rut', 3),
(236, 'rut 4', 'rut', 4),
(237, '1 samuel 1', '1 samuel', 1),
(238, '1 samuel 2', '1 samuel', 2),
(239, '1 samuel 3', '1 samuel', 3),
(240, '1 samuel 4', '1 samuel', 4),
(241, '1 samuel 5', '1 samuel', 5),
(242, '1 samuel 6', '1 samuel', 6),
(243, '1 samuel 7', '1 samuel', 7),
(244, '1 samuel 8', '1 samuel', 8),
(245, '1 samuel 9', '1 samuel', 9),
(246, '1 samuel 10', '1 samuel', 10),
(247, '1 samuel 11', '1 samuel', 11),
(248, '1 samuel 12', '1 samuel', 12),
(249, '1 samuel 13', '1 samuel', 13),
(250, '1 samuel 14', '1 samuel', 14),
(251, '1 samuel 15', '1 samuel', 15),
(252, '1 samuel 16', '1 samuel', 16),
(253, '1 samuel 17', '1 samuel', 17),
(254, '1 samuel 18', '1 samuel', 18),
(255, '1 samuel 19', '1 samuel', 19),
(256, '1 samuel 20', '1 samuel', 20),
(257, '1 samuel 21', '1 samuel', 21),
(258, '1 samuel 22', '1 samuel', 22),
(259, '1 samuel 23', '1 samuel', 23),
(260, '1 samuel 24', '1 samuel', 24),
(261, '1 samuel 25', '1 samuel', 25),
(262, '1 samuel 26', '1 samuel', 26),
(263, '1 samuel 27', '1 samuel', 27),
(264, '1 samuel 28', '1 samuel', 28),
(265, '1 samuel 29', '1 samuel', 29),
(266, '1 samuel 30', '1 samuel', 30),
(267, '1 samuel 31', '1 samuel', 31),
(268, '2 samuel 1', '2 samuel', 1),
(269, '2 samuel 2', '2 samuel', 2),
(270, '2 samuel 3', '2 samuel', 3),
(271, '2 samuel 4', '2 samuel', 4),
(272, '2 samuel 5', '2 samuel', 5),
(273, '2 samuel 6', '2 samuel', 6),
(274, '2 samuel 7', '2 samuel', 7),
(275, '2 samuel 8', '2 samuel', 8),
(276, '2 samuel 9', '2 samuel', 9),
(277, '2 samuel 10', '2 samuel', 10),
(278, '2 samuel 11', '2 samuel', 11),
(279, '2 samuel 12', '2 samuel', 12),
(280, '2 samuel 13', '2 samuel', 13),
(281, '2 samuel 14', '2 samuel', 14),
(282, '2 samuel 15', '2 samuel', 15),
(283, '2 samuel 16', '2 samuel', 16),
(284, '2 samuel 17', '2 samuel', 17),
(285, '2 samuel 18', '2 samuel', 18),
(286, '2 samuel 19', '2 samuel', 19),
(287, '2 samuel 20', '2 samuel', 20),
(288, '2 samuel 21', '2 samuel', 21),
(289, '2 samuel 22', '2 samuel', 22),
(290, '2 samuel 23', '2 samuel', 23),
(291, '2 samuel 24', '2 samuel', 24),
(292, '1 raja-raja 1', '1 raja-raja', 1),
(293, '1 raja-raja 2', '1 raja-raja', 2),
(294, '1 raja-raja 3', '1 raja-raja', 3),
(295, '1 raja-raja 4', '1 raja-raja', 4),
(296, '1 raja-raja 5', '1 raja-raja', 5),
(297, '1 raja-raja 6', '1 raja-raja', 6),
(298, '1 raja-raja 7', '1 raja-raja', 7),
(299, '1 raja-raja 8', '1 raja-raja', 8),
(300, '1 raja-raja 9', '1 raja-raja', 9),
(301, '1 raja-raja 10', '1 raja-raja', 10),
(302, '1 raja-raja 11', '1 raja-raja', 11),
(303, '1 raja-raja 12', '1 raja-raja', 12),
(304, '1 raja-raja 13', '1 raja-raja', 13),
(305, '1 raja-raja 14', '1 raja-raja', 14),
(306, '1 raja-raja 15', '1 raja-raja', 15),
(307, '1 raja-raja 16', '1 raja-raja', 16),
(308, '1 raja-raja 17', '1 raja-raja', 17),
(309, '1 raja-raja 18', '1 raja-raja', 18),
(310, '1 raja-raja 19', '1 raja-raja', 19),
(311, '1 raja-raja 20', '1 raja-raja', 20),
(312, '1 raja-raja 21', '1 raja-raja', 21),
(313, '1 raja-raja 22', '1 raja-raja', 22),
(314, '2 raja-raja 1', '2 raja-raja', 1),
(315, '2 raja-raja 2', '2 raja-raja', 2),
(316, '2 raja-raja 3', '2 raja-raja', 3),
(317, '2 raja-raja 4', '2 raja-raja', 4),
(318, '2 raja-raja 5', '2 raja-raja', 5),
(319, '2 raja-raja 6', '2 raja-raja', 6),
(320, '2 raja-raja 7', '2 raja-raja', 7),
(321, '2 raja-raja 8', '2 raja-raja', 8),
(322, '2 raja-raja 9', '2 raja-raja', 9),
(323, '2 raja-raja 10', '2 raja-raja', 10),
(324, '2 raja-raja 11', '2 raja-raja', 11),
(325, '2 raja-raja 12', '2 raja-raja', 12),
(326, '2 raja-raja 13', '2 raja-raja', 13),
(327, '2 raja-raja 14', '2 raja-raja', 14),
(328, '2 raja-raja 15', '2 raja-raja', 15),
(329, '2 raja-raja 16', '2 raja-raja', 16),
(330, '2 raja-raja 17', '2 raja-raja', 17),
(331, '2 raja-raja 18', '2 raja-raja', 18),
(332, '2 raja-raja 19', '2 raja-raja', 19),
(333, '2 raja-raja 20', '2 raja-raja', 20),
(334, '2 raja-raja 21', '2 raja-raja', 21),
(335, '2 raja-raja 22', '2 raja-raja', 22),
(336, '2 raja-raja 23', '2 raja-raja', 23),
(337, '2 raja-raja 24', '2 raja-raja', 24),
(338, '2 raja-raja 25', '2 raja-raja', 25),
(339, '1 tawarikh 1', '1 tawarikh', 1),
(340, '1 tawarikh 2', '1 tawarikh', 2),
(341, '1 tawarikh 3', '1 tawarikh', 3),
(342, '1 tawarikh 4', '1 tawarikh', 4),
(343, '1 tawarikh 5', '1 tawarikh', 5),
(344, '1 tawarikh 6', '1 tawarikh', 6),
(345, '1 tawarikh 7', '1 tawarikh', 7),
(346, '1 tawarikh 8', '1 tawarikh', 8),
(347, '1 tawarikh 9', '1 tawarikh', 9),
(348, '1 tawarikh 10', '1 tawarikh', 10),
(349, '1 tawarikh 11', '1 tawarikh', 11),
(350, '1 tawarikh 12', '1 tawarikh', 12),
(351, '1 tawarikh 13', '1 tawarikh', 13),
(352, '1 tawarikh 14', '1 tawarikh', 14),
(353, '1 tawarikh 15', '1 tawarikh', 15),
(354, '1 tawarikh 16', '1 tawarikh', 16),
(355, '1 tawarikh 17', '1 tawarikh', 17),
(356, '1 tawarikh 18', '1 tawarikh', 18),
(357, '1 tawarikh 19', '1 tawarikh', 19),
(358, '1 tawarikh 20', '1 tawarikh', 20),
(359, '1 tawarikh 21', '1 tawarikh', 21),
(360, '1 tawarikh 22', '1 tawarikh', 22),
(361, '1 tawarikh 23', '1 tawarikh', 23),
(362, '1 tawarikh 24', '1 tawarikh', 24),
(363, '1 tawarikh 25', '1 tawarikh', 25),
(364, '1 tawarikh 26', '1 tawarikh', 26),
(365, '1 tawarikh 27', '1 tawarikh', 27),
(366, '1 tawarikh 28', '1 tawarikh', 28),
(367, '1 tawarikh 29', '1 tawarikh', 29),
(368, '2 tawarikh 1', '2 tawarikh', 1),
(369, '2 tawarikh 2', '2 tawarikh', 2),
(370, '2 tawarikh 3', '2 tawarikh', 3),
(371, '2 tawarikh 4', '2 tawarikh', 4),
(372, '2 tawarikh 5', '2 tawarikh', 5),
(373, '2 tawarikh 6', '2 tawarikh', 6),
(374, '2 tawarikh 7', '2 tawarikh', 7),
(375, '2 tawarikh 8', '2 tawarikh', 8),
(376, '2 tawarikh 9', '2 tawarikh', 9),
(377, '2 tawarikh 10', '2 tawarikh', 10),
(378, '2 tawarikh 11', '2 tawarikh', 11),
(379, '2 tawarikh 12', '2 tawarikh', 12),
(380, '2 tawarikh 13', '2 tawarikh', 13),
(381, '2 tawarikh 14', '2 tawarikh', 14),
(382, '2 tawarikh 15', '2 tawarikh', 15),
(383, '2 tawarikh 16', '2 tawarikh', 16),
(384, '2 tawarikh 17', '2 tawarikh', 17),
(385, '2 tawarikh 18', '2 tawarikh', 18),
(386, '2 tawarikh 19', '2 tawarikh', 19),
(387, '2 tawarikh 20', '2 tawarikh', 20),
(388, '2 tawarikh 21', '2 tawarikh', 21),
(389, '2 tawarikh 22', '2 tawarikh', 22),
(390, '2 tawarikh 23', '2 tawarikh', 23),
(391, '2 tawarikh 24', '2 tawarikh', 24),
(392, '2 tawarikh 25', '2 tawarikh', 25),
(393, '2 tawarikh 26', '2 tawarikh', 26),
(394, '2 tawarikh 27', '2 tawarikh', 27),
(395, '2 tawarikh 28', '2 tawarikh', 28),
(396, '2 tawarikh 29', '2 tawarikh', 29),
(397, '2 tawarikh 30', '2 tawarikh', 30),
(398, '2 tawarikh 31', '2 tawarikh', 31),
(399, '2 tawarikh 32', '2 tawarikh', 32),
(400, '2 tawarikh 33', '2 tawarikh', 33),
(401, '2 tawarikh 34', '2 tawarikh', 34),
(402, '2 tawarikh 35', '2 tawarikh', 35),
(403, '2 tawarikh 36', '2 tawarikh', 36),
(404, 'ezra 1', 'ezra', 1),
(405, 'ezra 2', 'ezra', 2),
(406, 'ezra 3', 'ezra', 3),
(407, 'ezra 4', 'ezra', 4),
(408, 'ezra 5', 'ezra', 5),
(409, 'ezra 6', 'ezra', 6),
(410, 'ezra 7', 'ezra', 7),
(411, 'ezra 8', 'ezra', 8),
(412, 'ezra 9', 'ezra', 9),
(413, 'ezra 10', 'ezra', 10),
(414, 'nehemia 1', 'nehemia', 1),
(415, 'nehemia 2', 'nehemia', 2),
(416, 'nehemia 3', 'nehemia', 3),
(417, 'nehemia 4', 'nehemia', 4),
(418, 'nehemia 5', 'nehemia', 5),
(419, 'nehemia 6', 'nehemia', 6),
(420, 'nehemia 7', 'nehemia', 7),
(421, 'nehemia 8', 'nehemia', 8),
(422, 'nehemia 9', 'nehemia', 9),
(423, 'nehemia 10', 'nehemia', 10),
(424, 'nehemia 11', 'nehemia', 11),
(425, 'nehemia 12', 'nehemia', 12),
(426, 'nehemia 13', 'nehemia', 13),
(427, 'ester 1', 'ester', 1),
(428, 'ester 2', 'ester', 2),
(429, 'ester 3', 'ester', 3),
(430, 'ester 4', 'ester', 4),
(431, 'ester 5', 'ester', 5),
(432, 'ester 6', 'ester', 6),
(433, 'ester 7', 'ester', 7),
(434, 'ester 8', 'ester', 8),
(435, 'ester 9', 'ester', 9),
(436, 'ester 10', 'ester', 10),
(437, 'ayub 1', 'ayub', 1),
(438, 'ayub 2', 'ayub', 2),
(439, 'ayub 3', 'ayub', 3),
(440, 'ayub 4', 'ayub', 4),
(441, 'ayub 5', 'ayub', 5),
(442, 'ayub 6', 'ayub', 6),
(443, 'ayub 7', 'ayub', 7),
(444, 'ayub 8', 'ayub', 8),
(445, 'ayub 9', 'ayub', 9),
(446, 'ayub 10', 'ayub', 10),
(447, 'ayub 11', 'ayub', 11),
(448, 'ayub 12', 'ayub', 12),
(449, 'ayub 13', 'ayub', 13),
(450, 'ayub 14', 'ayub', 14),
(451, 'ayub 15', 'ayub', 15),
(452, 'ayub 16', 'ayub', 16),
(453, 'ayub 17', 'ayub', 17),
(454, 'ayub 18', 'ayub', 18),
(455, 'ayub 19', 'ayub', 19),
(456, 'ayub 20', 'ayub', 20),
(457, 'ayub 21', 'ayub', 21),
(458, 'ayub 22', 'ayub', 22),
(459, 'ayub 23', 'ayub', 23),
(460, 'ayub 24', 'ayub', 24),
(461, 'ayub 25', 'ayub', 25),
(462, 'ayub 26', 'ayub', 26),
(463, 'ayub 27', 'ayub', 27),
(464, 'ayub 28', 'ayub', 28),
(465, 'ayub 29', 'ayub', 29),
(466, 'ayub 30', 'ayub', 30),
(467, 'ayub 31', 'ayub', 31),
(468, 'ayub 32', 'ayub', 32),
(469, 'ayub 33', 'ayub', 33),
(470, 'ayub 34', 'ayub', 34),
(471, 'ayub 35', 'ayub', 35),
(472, 'ayub 36', 'ayub', 36),
(473, 'ayub 37', 'ayub', 37),
(474, 'ayub 38', 'ayub', 38),
(475, 'ayub 39', 'ayub', 39),
(476, 'ayub 40', 'ayub', 40),
(477, 'ayub 41', 'ayub', 41),
(478, 'ayub 42', 'ayub', 42),
(479, 'mazmur 1', 'mazmur', 1),
(480, 'mazmur 2', 'mazmur', 2),
(481, 'mazmur 3', 'mazmur', 3),
(482, 'mazmur 4', 'mazmur', 4),
(483, 'mazmur 5', 'mazmur', 5),
(484, 'mazmur 6', 'mazmur', 6),
(485, 'mazmur 7', 'mazmur', 7),
(486, 'mazmur 8', 'mazmur', 8),
(487, 'mazmur 9', 'mazmur', 9),
(488, 'mazmur 10', 'mazmur', 10),
(489, 'mazmur 11', 'mazmur', 11),
(490, 'mazmur 12', 'mazmur', 12),
(491, 'mazmur 13', 'mazmur', 13),
(492, 'mazmur 14', 'mazmur', 14),
(493, 'mazmur 15', 'mazmur', 15),
(494, 'mazmur 16', 'mazmur', 16),
(495, 'mazmur 17', 'mazmur', 17),
(496, 'mazmur 18', 'mazmur', 18),
(497, 'mazmur 19', 'mazmur', 19),
(498, 'mazmur 20', 'mazmur', 20),
(499, 'mazmur 21', 'mazmur', 21),
(500, 'mazmur 22', 'mazmur', 22),
(501, 'mazmur 23', 'mazmur', 23),
(502, 'mazmur 24', 'mazmur', 24),
(503, 'mazmur 25', 'mazmur', 25),
(504, 'mazmur 26', 'mazmur', 26),
(505, 'mazmur 27', 'mazmur', 27),
(506, 'mazmur 28', 'mazmur', 28),
(507, 'mazmur 29', 'mazmur', 29),
(508, 'mazmur 30', 'mazmur', 30),
(509, 'mazmur 31', 'mazmur', 31),
(510, 'mazmur 32', 'mazmur', 32),
(511, 'mazmur 33', 'mazmur', 33),
(512, 'mazmur 34', 'mazmur', 34),
(513, 'mazmur 35', 'mazmur', 35),
(514, 'mazmur 36', 'mazmur', 36),
(515, 'mazmur 37', 'mazmur', 37),
(516, 'mazmur 38', 'mazmur', 38),
(517, 'mazmur 39', 'mazmur', 39),
(518, 'mazmur 40', 'mazmur', 40),
(519, 'mazmur 41', 'mazmur', 41),
(520, 'mazmur 42', 'mazmur', 42),
(521, 'mazmur 43', 'mazmur', 43),
(522, 'mazmur 44', 'mazmur', 44),
(523, 'mazmur 45', 'mazmur', 45),
(524, 'mazmur 46', 'mazmur', 46),
(525, 'mazmur 47', 'mazmur', 47),
(526, 'mazmur 48', 'mazmur', 48),
(527, 'mazmur 49', 'mazmur', 49),
(528, 'mazmur 50', 'mazmur', 50),
(529, 'mazmur 51', 'mazmur', 51),
(530, 'mazmur 52', 'mazmur', 52),
(531, 'mazmur 53', 'mazmur', 53),
(532, 'mazmur 54', 'mazmur', 54),
(533, 'mazmur 55', 'mazmur', 55),
(534, 'mazmur 56', 'mazmur', 56),
(535, 'mazmur 57', 'mazmur', 57),
(536, 'mazmur 58', 'mazmur', 58),
(537, 'mazmur 59', 'mazmur', 59),
(538, 'mazmur 60', 'mazmur', 60),
(539, 'mazmur 61', 'mazmur', 61),
(540, 'mazmur 62', 'mazmur', 62),
(541, 'mazmur 63', 'mazmur', 63),
(542, 'mazmur 64', 'mazmur', 64),
(543, 'mazmur 65', 'mazmur', 65),
(544, 'mazmur 66', 'mazmur', 66),
(545, 'mazmur 67', 'mazmur', 67),
(546, 'mazmur 68', 'mazmur', 68),
(547, 'mazmur 69', 'mazmur', 69),
(548, 'mazmur 70', 'mazmur', 70),
(549, 'mazmur 71', 'mazmur', 71),
(550, 'mazmur 72', 'mazmur', 72),
(551, 'mazmur 73', 'mazmur', 73),
(552, 'mazmur 74', 'mazmur', 74),
(553, 'mazmur 75', 'mazmur', 75),
(554, 'mazmur 76', 'mazmur', 76),
(555, 'mazmur 77', 'mazmur', 77),
(556, 'mazmur 78', 'mazmur', 78),
(557, 'mazmur 79', 'mazmur', 79),
(558, 'mazmur 80', 'mazmur', 80),
(559, 'mazmur 81', 'mazmur', 81),
(560, 'mazmur 82', 'mazmur', 82),
(561, 'mazmur 83', 'mazmur', 83),
(562, 'mazmur 84', 'mazmur', 84),
(563, 'mazmur 85', 'mazmur', 85),
(564, 'mazmur 86', 'mazmur', 86),
(565, 'mazmur 87', 'mazmur', 87),
(566, 'mazmur 88', 'mazmur', 88),
(567, 'mazmur 89', 'mazmur', 89),
(568, 'mazmur 90', 'mazmur', 90),
(569, 'mazmur 91', 'mazmur', 91),
(570, 'mazmur 92', 'mazmur', 92),
(571, 'mazmur 93', 'mazmur', 93),
(572, 'mazmur 94', 'mazmur', 94),
(573, 'mazmur 95', 'mazmur', 95),
(574, 'mazmur 96', 'mazmur', 96),
(575, 'mazmur 97', 'mazmur', 97),
(576, 'mazmur 98', 'mazmur', 98),
(577, 'mazmur 99', 'mazmur', 99),
(578, 'mazmur 100', 'mazmur', 100),
(579, 'mazmur 101', 'mazmur', 101),
(580, 'mazmur 102', 'mazmur', 102),
(581, 'mazmur 103', 'mazmur', 103),
(582, 'mazmur 104', 'mazmur', 104),
(583, 'mazmur 105', 'mazmur', 105),
(584, 'mazmur 106', 'mazmur', 106),
(585, 'mazmur 107', 'mazmur', 107),
(586, 'mazmur 108', 'mazmur', 108),
(587, 'mazmur 109', 'mazmur', 109),
(588, 'mazmur 110', 'mazmur', 110),
(589, 'mazmur 111', 'mazmur', 111),
(590, 'mazmur 112', 'mazmur', 112),
(591, 'mazmur 113', 'mazmur', 113),
(592, 'mazmur 114', 'mazmur', 114),
(593, 'mazmur 115', 'mazmur', 115),
(594, 'mazmur 116', 'mazmur', 116),
(595, 'mazmur 117', 'mazmur', 117),
(596, 'mazmur 118', 'mazmur', 118),
(597, 'mazmur 119', 'mazmur', 119),
(598, 'mazmur 120', 'mazmur', 120),
(599, 'mazmur 121', 'mazmur', 121),
(600, 'mazmur 122', 'mazmur', 122),
(601, 'mazmur 123', 'mazmur', 123),
(602, 'mazmur 124', 'mazmur', 124),
(603, 'mazmur 125', 'mazmur', 125),
(604, 'mazmur 126', 'mazmur', 126),
(605, 'mazmur 127', 'mazmur', 127),
(606, 'mazmur 128', 'mazmur', 128),
(607, 'mazmur 129', 'mazmur', 129),
(608, 'mazmur 130', 'mazmur', 130),
(609, 'mazmur 131', 'mazmur', 131),
(610, 'mazmur 132', 'mazmur', 132),
(611, 'mazmur 133', 'mazmur', 133),
(612, 'mazmur 134', 'mazmur', 134),
(613, 'mazmur 135', 'mazmur', 135),
(614, 'mazmur 136', 'mazmur', 136),
(615, 'mazmur 137', 'mazmur', 137),
(616, 'mazmur 138', 'mazmur', 138),
(617, 'mazmur 139', 'mazmur', 139),
(618, 'mazmur 140', 'mazmur', 140),
(619, 'mazmur 141', 'mazmur', 141),
(620, 'mazmur 142', 'mazmur', 142),
(621, 'mazmur 143', 'mazmur', 143),
(622, 'mazmur 144', 'mazmur', 144),
(623, 'mazmur 145', 'mazmur', 145),
(624, 'mazmur 146', 'mazmur', 146),
(625, 'mazmur 147', 'mazmur', 147),
(626, 'mazmur 148', 'mazmur', 148),
(627, 'mazmur 149', 'mazmur', 149),
(628, 'mazmur 150', 'mazmur', 150),
(629, 'amsal 1', 'amsal', 1),
(630, 'amsal 2', 'amsal', 2),
(631, 'amsal 3', 'amsal', 3),
(632, 'amsal 4', 'amsal', 4),
(633, 'amsal 5', 'amsal', 5),
(634, 'amsal 6', 'amsal', 6),
(635, 'amsal 7', 'amsal', 7),
(636, 'amsal 8', 'amsal', 8),
(637, 'amsal 9', 'amsal', 9),
(638, 'amsal 10', 'amsal', 10),
(639, 'amsal 11', 'amsal', 11),
(640, 'amsal 12', 'amsal', 12),
(641, 'amsal 13', 'amsal', 13),
(642, 'amsal 14', 'amsal', 14),
(643, 'amsal 15', 'amsal', 15),
(644, 'amsal 16', 'amsal', 16),
(645, 'amsal 17', 'amsal', 17),
(646, 'amsal 18', 'amsal', 18),
(647, 'amsal 19', 'amsal', 19),
(648, 'amsal 20', 'amsal', 20),
(649, 'amsal 21', 'amsal', 21),
(650, 'amsal 22', 'amsal', 22),
(651, 'amsal 23', 'amsal', 23),
(652, 'amsal 24', 'amsal', 24),
(653, 'amsal 25', 'amsal', 25),
(654, 'amsal 26', 'amsal', 26),
(655, 'amsal 27', 'amsal', 27),
(656, 'amsal 28', 'amsal', 28),
(657, 'amsal 29', 'amsal', 29),
(658, 'amsal 30', 'amsal', 30),
(659, 'amsal 31', 'amsal', 31),
(660, 'pengkhotbah 1', 'pengkhotbah', 1),
(661, 'pengkhotbah 2', 'pengkhotbah', 2),
(662, 'pengkhotbah 3', 'pengkhotbah', 3),
(663, 'pengkhotbah 4', 'pengkhotbah', 4),
(664, 'pengkhotbah 5', 'pengkhotbah', 5),
(665, 'pengkhotbah 6', 'pengkhotbah', 6),
(666, 'pengkhotbah 7', 'pengkhotbah', 7),
(667, 'pengkhotbah 8', 'pengkhotbah', 8),
(668, 'pengkhotbah 9', 'pengkhotbah', 9),
(669, 'pengkhotbah 10', 'pengkhotbah', 10),
(670, 'pengkhotbah 11', 'pengkhotbah', 11),
(671, 'pengkhotbah 12', 'pengkhotbah', 12),
(672, 'kidung agung 1', 'kidung agung', 1),
(673, 'kidung agung 2', 'kidung agung', 2),
(674, 'kidung agung 3', 'kidung agung', 3),
(675, 'kidung agung 4', 'kidung agung', 4),
(676, 'kidung agung 5', 'kidung agung', 5),
(677, 'kidung agung 6', 'kidung agung', 6),
(678, 'kidung agung 7', 'kidung agung', 7),
(679, 'kidung agung 8', 'kidung agung', 8),
(680, 'yesaya 1', 'yesaya', 1),
(681, 'yesaya 2', 'yesaya', 2),
(682, 'yesaya 3', 'yesaya', 3),
(683, 'yesaya 4', 'yesaya', 4),
(684, 'yesaya 5', 'yesaya', 5),
(685, 'yesaya 6', 'yesaya', 6),
(686, 'yesaya 7', 'yesaya', 7),
(687, 'yesaya 8', 'yesaya', 8),
(688, 'yesaya 9', 'yesaya', 9),
(689, 'yesaya 10', 'yesaya', 10),
(690, 'yesaya 11', 'yesaya', 11),
(691, 'yesaya 12', 'yesaya', 12),
(692, 'yesaya 13', 'yesaya', 13),
(693, 'yesaya 14', 'yesaya', 14),
(694, 'yesaya 15', 'yesaya', 15),
(695, 'yesaya 16', 'yesaya', 16),
(696, 'yesaya 17', 'yesaya', 17),
(697, 'yesaya 18', 'yesaya', 18),
(698, 'yesaya 19', 'yesaya', 19),
(699, 'yesaya 20', 'yesaya', 20),
(700, 'yesaya 21', 'yesaya', 21),
(701, 'yesaya 22', 'yesaya', 22),
(702, 'yesaya 23', 'yesaya', 23),
(703, 'yesaya 24', 'yesaya', 24),
(704, 'yesaya 25', 'yesaya', 25),
(705, 'yesaya 26', 'yesaya', 26),
(706, 'yesaya 27', 'yesaya', 27),
(707, 'yesaya 28', 'yesaya', 28),
(708, 'yesaya 29', 'yesaya', 29),
(709, 'yesaya 30', 'yesaya', 30),
(710, 'yesaya 31', 'yesaya', 31),
(711, 'yesaya 32', 'yesaya', 32),
(712, 'yesaya 33', 'yesaya', 33),
(713, 'yesaya 34', 'yesaya', 34),
(714, 'yesaya 35', 'yesaya', 35),
(715, 'yesaya 36', 'yesaya', 36),
(716, 'yesaya 37', 'yesaya', 37),
(717, 'yesaya 38', 'yesaya', 38),
(718, 'yesaya 39', 'yesaya', 39),
(719, 'yesaya 40', 'yesaya', 40),
(720, 'yesaya 41', 'yesaya', 41),
(721, 'yesaya 42', 'yesaya', 42),
(722, 'yesaya 43', 'yesaya', 43),
(723, 'yesaya 44', 'yesaya', 44),
(724, 'yesaya 45', 'yesaya', 45),
(725, 'yesaya 46', 'yesaya', 46),
(726, 'yesaya 47', 'yesaya', 47),
(727, 'yesaya 48', 'yesaya', 48),
(728, 'yesaya 49', 'yesaya', 49),
(729, 'yesaya 50', 'yesaya', 50),
(730, 'yesaya 51', 'yesaya', 51),
(731, 'yesaya 52', 'yesaya', 52),
(732, 'yesaya 53', 'yesaya', 53),
(733, 'yesaya 54', 'yesaya', 54),
(734, 'yesaya 55', 'yesaya', 55),
(735, 'yesaya 56', 'yesaya', 56),
(736, 'yesaya 57', 'yesaya', 57),
(737, 'yesaya 58', 'yesaya', 58),
(738, 'yesaya 59', 'yesaya', 59),
(739, 'yesaya 60', 'yesaya', 60),
(740, 'yesaya 61', 'yesaya', 61),
(741, 'yesaya 62', 'yesaya', 62),
(742, 'yesaya 63', 'yesaya', 63),
(743, 'yesaya 64', 'yesaya', 64),
(744, 'yesaya 65', 'yesaya', 65),
(745, 'yesaya 66', 'yesaya', 66),
(746, 'yeremia 1', 'yeremia', 1),
(747, 'yeremia 2', 'yeremia', 2),
(748, 'yeremia 3', 'yeremia', 3),
(749, 'yeremia 4', 'yeremia', 4),
(750, 'yeremia 5', 'yeremia', 5),
(751, 'yeremia 6', 'yeremia', 6),
(752, 'yeremia 7', 'yeremia', 7),
(753, 'yeremia 8', 'yeremia', 8),
(754, 'yeremia 9', 'yeremia', 9),
(755, 'yeremia 10', 'yeremia', 10),
(756, 'yeremia 11', 'yeremia', 11),
(757, 'yeremia 12', 'yeremia', 12),
(758, 'yeremia 13', 'yeremia', 13),
(759, 'yeremia 14', 'yeremia', 14),
(760, 'yeremia 15', 'yeremia', 15),
(761, 'yeremia 16', 'yeremia', 16),
(762, 'yeremia 17', 'yeremia', 17),
(763, 'yeremia 18', 'yeremia', 18),
(764, 'yeremia 19', 'yeremia', 19),
(765, 'yeremia 20', 'yeremia', 20),
(766, 'yeremia 21', 'yeremia', 21),
(767, 'yeremia 22', 'yeremia', 22),
(768, 'yeremia 23', 'yeremia', 23),
(769, 'yeremia 24', 'yeremia', 24),
(770, 'yeremia 25', 'yeremia', 25),
(771, 'yeremia 26', 'yeremia', 26),
(772, 'yeremia 27', 'yeremia', 27),
(773, 'yeremia 28', 'yeremia', 28),
(774, 'yeremia 29', 'yeremia', 29),
(775, 'yeremia 30', 'yeremia', 30),
(776, 'yeremia 31', 'yeremia', 31),
(777, 'yeremia 32', 'yeremia', 32),
(778, 'yeremia 33', 'yeremia', 33),
(779, 'yeremia 34', 'yeremia', 34),
(780, 'yeremia 35', 'yeremia', 35),
(781, 'yeremia 36', 'yeremia', 36),
(782, 'yeremia 37', 'yeremia', 37),
(783, 'yeremia 38', 'yeremia', 38),
(784, 'yeremia 39', 'yeremia', 39),
(785, 'yeremia 40', 'yeremia', 40),
(786, 'yeremia 41', 'yeremia', 41),
(787, 'yeremia 42', 'yeremia', 42),
(788, 'yeremia 43', 'yeremia', 43),
(789, 'yeremia 44', 'yeremia', 44),
(790, 'yeremia 45', 'yeremia', 45),
(791, 'yeremia 46', 'yeremia', 46),
(792, 'yeremia 47', 'yeremia', 47),
(793, 'yeremia 48', 'yeremia', 48),
(794, 'yeremia 49', 'yeremia', 49),
(795, 'yeremia 50', 'yeremia', 50),
(796, 'yeremia 51', 'yeremia', 51),
(797, 'yeremia 52', 'yeremia', 52),
(798, 'ratapan 1', 'ratapan', 1),
(799, 'ratapan 2', 'ratapan', 2),
(800, 'ratapan 3', 'ratapan', 3),
(801, 'ratapan 4', 'ratapan', 4),
(802, 'ratapan 5', 'ratapan', 5),
(803, 'yehezkiel 1', 'yehezkiel', 1),
(804, 'yehezkiel 2', 'yehezkiel', 2),
(805, 'yehezkiel 3', 'yehezkiel', 3),
(806, 'yehezkiel 4', 'yehezkiel', 4),
(807, 'yehezkiel 5', 'yehezkiel', 5),
(808, 'yehezkiel 6', 'yehezkiel', 6),
(809, 'yehezkiel 7', 'yehezkiel', 7),
(810, 'yehezkiel 8', 'yehezkiel', 8),
(811, 'yehezkiel 9', 'yehezkiel', 9),
(812, 'yehezkiel 10', 'yehezkiel', 10),
(813, 'yehezkiel 11', 'yehezkiel', 11),
(814, 'yehezkiel 12', 'yehezkiel', 12),
(815, 'yehezkiel 13', 'yehezkiel', 13),
(816, 'yehezkiel 14', 'yehezkiel', 14),
(817, 'yehezkiel 15', 'yehezkiel', 15),
(818, 'yehezkiel 16', 'yehezkiel', 16),
(819, 'yehezkiel 17', 'yehezkiel', 17),
(820, 'yehezkiel 18', 'yehezkiel', 18),
(821, 'yehezkiel 19', 'yehezkiel', 19),
(822, 'yehezkiel 20', 'yehezkiel', 20),
(823, 'yehezkiel 21', 'yehezkiel', 21),
(824, 'yehezkiel 22', 'yehezkiel', 22),
(825, 'yehezkiel 23', 'yehezkiel', 23),
(826, 'yehezkiel 24', 'yehezkiel', 24),
(827, 'yehezkiel 25', 'yehezkiel', 25),
(828, 'yehezkiel 26', 'yehezkiel', 26),
(829, 'yehezkiel 27', 'yehezkiel', 27),
(830, 'yehezkiel 28', 'yehezkiel', 28),
(831, 'yehezkiel 29', 'yehezkiel', 29),
(832, 'yehezkiel 30', 'yehezkiel', 30),
(833, 'yehezkiel 31', 'yehezkiel', 31),
(834, 'yehezkiel 32', 'yehezkiel', 32),
(835, 'yehezkiel 33', 'yehezkiel', 33),
(836, 'yehezkiel 34', 'yehezkiel', 34),
(837, 'yehezkiel 35', 'yehezkiel', 35),
(838, 'yehezkiel 36', 'yehezkiel', 36),
(839, 'yehezkiel 37', 'yehezkiel', 37),
(840, 'yehezkiel 38', 'yehezkiel', 38),
(841, 'yehezkiel 39', 'yehezkiel', 39),
(842, 'yehezkiel 40', 'yehezkiel', 40),
(843, 'yehezkiel 41', 'yehezkiel', 41),
(844, 'yehezkiel 42', 'yehezkiel', 42),
(845, 'yehezkiel 43', 'yehezkiel', 43),
(846, 'yehezkiel 44', 'yehezkiel', 44),
(847, 'yehezkiel 45', 'yehezkiel', 45),
(848, 'yehezkiel 46', 'yehezkiel', 46),
(849, 'yehezkiel 47', 'yehezkiel', 47),
(850, 'yehezkiel 48', 'yehezkiel', 48),
(851, 'daniel 1', 'daniel', 1),
(852, 'daniel 2', 'daniel', 2),
(853, 'daniel 3', 'daniel', 3),
(854, 'daniel 4', 'daniel', 4),
(855, 'daniel 5', 'daniel', 5),
(856, 'daniel 6', 'daniel', 6),
(857, 'daniel 7', 'daniel', 7),
(858, 'daniel 8', 'daniel', 8),
(859, 'daniel 9', 'daniel', 9),
(860, 'daniel 10', 'daniel', 10),
(861, 'daniel 11', 'daniel', 11),
(862, 'daniel 12', 'daniel', 12),
(863, 'hosea 1', 'hosea', 1),
(864, 'hosea 2', 'hosea', 2),
(865, 'hosea 3', 'hosea', 3),
(866, 'hosea 4', 'hosea', 4),
(867, 'hosea 5', 'hosea', 5),
(868, 'hosea 6', 'hosea', 6),
(869, 'hosea 7', 'hosea', 7),
(870, 'hosea 8', 'hosea', 8),
(871, 'hosea 9', 'hosea', 9),
(872, 'hosea 10', 'hosea', 10),
(873, 'hosea 11', 'hosea', 11),
(874, 'hosea 12', 'hosea', 12),
(875, 'hosea 13', 'hosea', 13),
(876, 'hosea 14', 'hosea', 14),
(877, 'yoel 1', 'yoel', 1),
(878, 'yoel 2', 'yoel', 2),
(879, 'yoel 3', 'yoel', 3),
(880, 'amos 1', 'amos', 1),
(881, 'amos 2', 'amos', 2),
(882, 'amos 3', 'amos', 3),
(883, 'amos 4', 'amos', 4),
(884, 'amos 5', 'amos', 5),
(885, 'amos 6', 'amos', 6),
(886, 'amos 7', 'amos', 7),
(887, 'amos 8', 'amos', 8),
(888, 'amos 9', 'amos', 9),
(889, 'obaja 1', 'obaja', 1),
(890, 'yunus 1', 'yunus', 1),
(891, 'yunus 2', 'yunus', 2),
(892, 'yunus 3', 'yunus', 3),
(893, 'yunus 4', 'yunus', 4),
(894, 'mikha 1', 'mikha', 1),
(895, 'mikha 2', 'mikha', 2),
(896, 'mikha 3', 'mikha', 3),
(897, 'mikha 4', 'mikha', 4),
(898, 'mikha 5', 'mikha', 5),
(899, 'mikha 6', 'mikha', 6),
(900, 'mikha 7', 'mikha', 7),
(901, 'nahum 1', 'nahum', 1),
(902, 'nahum 2', 'nahum', 2),
(903, 'nahum 3', 'nahum', 3),
(904, 'habakuk 1', 'habakuk', 1),
(905, 'habakuk 2', 'habakuk', 2),
(906, 'habakuk 3', 'habakuk', 3),
(907, 'zefanya 1', 'zefanya', 1),
(908, 'zefanya 2', 'zefanya', 2),
(909, 'zefanya 3', 'zefanya', 3),
(910, 'hagai 1', 'hagai', 1),
(911, 'hagai 2', 'hagai', 2),
(912, 'zakharia 1', 'zakharia', 1),
(913, 'zakharia 2', 'zakharia', 2),
(914, 'zakharia 3', 'zakharia', 3),
(915, 'zakharia 4', 'zakharia', 4),
(916, 'zakharia 5', 'zakharia', 5),
(917, 'zakharia 6', 'zakharia', 6),
(918, 'zakharia 7', 'zakharia', 7),
(919, 'zakharia 8', 'zakharia', 8),
(920, 'zakharia 9', 'zakharia', 9),
(921, 'zakharia 10', 'zakharia', 10),
(922, 'zakharia 11', 'zakharia', 11),
(923, 'zakharia 12', 'zakharia', 12),
(924, 'zakharia 13', 'zakharia', 13),
(925, 'zakharia 14', 'zakharia', 14),
(926, 'maleakhi 1', 'maleakhi', 1),
(927, 'maleakhi 2', 'maleakhi', 2),
(928, 'maleakhi 3', 'maleakhi', 3),
(929, 'maleakhi 4', 'maleakhi', 4),
(930, 'matius 1', 'matius', 1),
(931, 'matius 2', 'matius', 2),
(932, 'matius 3', 'matius', 3),
(933, 'matius 4', 'matius', 4),
(934, 'matius 5', 'matius', 5),
(935, 'matius 6', 'matius', 6),
(936, 'matius 7', 'matius', 7),
(937, 'matius 8', 'matius', 8),
(938, 'matius 9', 'matius', 9),
(939, 'matius 10', 'matius', 10),
(940, 'matius 11', 'matius', 11),
(941, 'matius 12', 'matius', 12),
(942, 'matius 13', 'matius', 13),
(943, 'matius 14', 'matius', 14),
(944, 'matius 15', 'matius', 15),
(945, 'matius 16', 'matius', 16),
(946, 'matius 17', 'matius', 17),
(947, 'matius 18', 'matius', 18),
(948, 'matius 19', 'matius', 19),
(949, 'matius 20', 'matius', 20),
(950, 'matius 21', 'matius', 21),
(951, 'matius 22', 'matius', 22),
(952, 'matius 23', 'matius', 23),
(953, 'matius 24', 'matius', 24),
(954, 'matius 25', 'matius', 25),
(955, 'matius 26', 'matius', 26),
(956, 'matius 27', 'matius', 27),
(957, 'matius 28', 'matius', 28),
(958, 'markus 1', 'markus', 1),
(959, 'markus 2', 'markus', 2),
(960, 'markus 3', 'markus', 3),
(961, 'markus 4', 'markus', 4),
(962, 'markus 5', 'markus', 5),
(963, 'markus 6', 'markus', 6),
(964, 'markus 7', 'markus', 7),
(965, 'markus 8', 'markus', 8),
(966, 'markus 9', 'markus', 9),
(967, 'markus 10', 'markus', 10),
(968, 'markus 11', 'markus', 11),
(969, 'markus 12', 'markus', 12),
(970, 'markus 13', 'markus', 13),
(971, 'markus 14', 'markus', 14),
(972, 'markus 15', 'markus', 15),
(973, 'markus 16', 'markus', 16),
(974, 'lukas 1', 'lukas', 1),
(975, 'lukas 2', 'lukas', 2),
(976, 'lukas 3', 'lukas', 3),
(977, 'lukas 4', 'lukas', 4),
(978, 'lukas 5', 'lukas', 5),
(979, 'lukas 6', 'lukas', 6),
(980, 'lukas 7', 'lukas', 7),
(981, 'lukas 8', 'lukas', 8),
(982, 'lukas 9', 'lukas', 9),
(983, 'lukas 10', 'lukas', 10),
(984, 'lukas 11', 'lukas', 11),
(985, 'lukas 12', 'lukas', 12),
(986, 'lukas 13', 'lukas', 13),
(987, 'lukas 14', 'lukas', 14),
(988, 'lukas 15', 'lukas', 15),
(989, 'lukas 16', 'lukas', 16),
(990, 'lukas 17', 'lukas', 17),
(991, 'lukas 18', 'lukas', 18),
(992, 'lukas 19', 'lukas', 19),
(993, 'lukas 20', 'lukas', 20),
(994, 'lukas 21', 'lukas', 21),
(995, 'lukas 22', 'lukas', 22),
(996, 'lukas 23', 'lukas', 23),
(997, 'lukas 24', 'lukas', 24),
(998, 'yohanes 1', 'yohanes', 1),
(999, 'yohanes 2', 'yohanes', 2),
(1000, 'yohanes 3', 'yohanes', 3),
(1001, 'yohanes 4', 'yohanes', 4),
(1002, 'yohanes 5', 'yohanes', 5),
(1003, 'yohanes 6', 'yohanes', 6),
(1004, 'yohanes 7', 'yohanes', 7),
(1005, 'yohanes 8', 'yohanes', 8),
(1006, 'yohanes 9', 'yohanes', 9),
(1007, 'yohanes 10', 'yohanes', 10),
(1008, 'yohanes 11', 'yohanes', 11),
(1009, 'yohanes 12', 'yohanes', 12),
(1010, 'yohanes 13', 'yohanes', 13),
(1011, 'yohanes 14', 'yohanes', 14),
(1012, 'yohanes 15', 'yohanes', 15),
(1013, 'yohanes 16', 'yohanes', 16),
(1014, 'yohanes 17', 'yohanes', 17),
(1015, 'yohanes 18', 'yohanes', 18),
(1016, 'yohanes 19', 'yohanes', 19),
(1017, 'yohanes 20', 'yohanes', 20),
(1018, 'yohanes 21', 'yohanes', 21),
(1019, 'kisah para rasul 1', 'kisah para rasul', 1),
(1020, 'kisah para rasul 2', 'kisah para rasul', 2),
(1021, 'kisah para rasul 3', 'kisah para rasul', 3),
(1022, 'kisah para rasul 4', 'kisah para rasul', 4),
(1023, 'kisah para rasul 5', 'kisah para rasul', 5),
(1024, 'kisah para rasul 6', 'kisah para rasul', 6),
(1025, 'kisah para rasul 7', 'kisah para rasul', 7),
(1026, 'kisah para rasul 8', 'kisah para rasul', 8),
(1027, 'kisah para rasul 9', 'kisah para rasul', 9),
(1028, 'kisah para rasul 10', 'kisah para rasul', 10),
(1029, 'kisah para rasul 11', 'kisah para rasul', 11),
(1030, 'kisah para rasul 12', 'kisah para rasul', 12),
(1031, 'kisah para rasul 13', 'kisah para rasul', 13),
(1032, 'kisah para rasul 14', 'kisah para rasul', 14),
(1033, 'kisah para rasul 15', 'kisah para rasul', 15),
(1034, 'kisah para rasul 16', 'kisah para rasul', 16),
(1035, 'kisah para rasul 17', 'kisah para rasul', 17),
(1036, 'kisah para rasul 18', 'kisah para rasul', 18),
(1037, 'kisah para rasul 19', 'kisah para rasul', 19),
(1038, 'kisah para rasul 20', 'kisah para rasul', 20),
(1039, 'kisah para rasul 21', 'kisah para rasul', 21),
(1040, 'kisah para rasul 22', 'kisah para rasul', 22),
(1041, 'kisah para rasul 23', 'kisah para rasul', 23),
(1042, 'kisah para rasul 24', 'kisah para rasul', 24),
(1043, 'kisah para rasul 25', 'kisah para rasul', 25),
(1044, 'kisah para rasul 26', 'kisah para rasul', 26),
(1045, 'kisah para rasul 27', 'kisah para rasul', 27),
(1046, 'kisah para rasul 28', 'kisah para rasul', 28),
(1047, 'roma 1', 'roma', 1),
(1048, 'roma 2', 'roma', 2),
(1049, 'roma 3', 'roma', 3),
(1050, 'roma 4', 'roma', 4),
(1051, 'roma 5', 'roma', 5),
(1052, 'roma 6', 'roma', 6),
(1053, 'roma 7', 'roma', 7),
(1054, 'roma 8', 'roma', 8),
(1055, 'roma 9', 'roma', 9),
(1056, 'roma 10', 'roma', 10),
(1057, 'roma 11', 'roma', 11),
(1058, 'roma 12', 'roma', 12),
(1059, 'roma 13', 'roma', 13),
(1060, 'roma 14', 'roma', 14),
(1061, 'roma 15', 'roma', 15),
(1062, 'roma 16', 'roma', 16),
(1063, '1 korintus 1', '1 korintus', 1),
(1064, '1 korintus 2', '1 korintus', 2),
(1065, '1 korintus 3', '1 korintus', 3),
(1066, '1 korintus 4', '1 korintus', 4),
(1067, '1 korintus 5', '1 korintus', 5),
(1068, '1 korintus 6', '1 korintus', 6),
(1069, '1 korintus 7', '1 korintus', 7),
(1070, '1 korintus 8', '1 korintus', 8),
(1071, '1 korintus 9', '1 korintus', 9),
(1072, '1 korintus 10', '1 korintus', 10),
(1073, '1 korintus 11', '1 korintus', 11),
(1074, '1 korintus 12', '1 korintus', 12),
(1075, '1 korintus 13', '1 korintus', 13),
(1076, '1 korintus 14', '1 korintus', 14),
(1077, '1 korintus 15', '1 korintus', 15),
(1078, '1 korintus 16', '1 korintus', 16),
(1079, '2 korintus 1', '2 korintus', 1),
(1080, '2 korintus 2', '2 korintus', 2),
(1081, '2 korintus 3', '2 korintus', 3),
(1082, '2 korintus 4', '2 korintus', 4),
(1083, '2 korintus 5', '2 korintus', 5),
(1084, '2 korintus 6', '2 korintus', 6),
(1085, '2 korintus 7', '2 korintus', 7),
(1086, '2 korintus 8', '2 korintus', 8),
(1087, '2 korintus 9', '2 korintus', 9),
(1088, '2 korintus 10', '2 korintus', 10),
(1089, '2 korintus 11', '2 korintus', 11),
(1090, '2 korintus 12', '2 korintus', 12),
(1091, '2 korintus 13', '2 korintus', 13),
(1092, 'galatia 1', 'galatia', 1),
(1093, 'galatia 2', 'galatia', 2),
(1094, 'galatia 3', 'galatia', 3),
(1095, 'galatia 4', 'galatia', 4),
(1096, 'galatia 5', 'galatia', 5),
(1097, 'galatia 6', 'galatia', 6),
(1098, 'efesus 1', 'efesus', 1),
(1099, 'efesus 2', 'efesus', 2),
(1100, 'efesus 3', 'efesus', 3),
(1101, 'efesus 4', 'efesus', 4),
(1102, 'efesus 5', 'efesus', 5),
(1103, 'efesus 6', 'efesus', 6),
(1104, 'filipi 1', 'filipi', 1),
(1105, 'filipi 2', 'filipi', 2),
(1106, 'filipi 3', 'filipi', 3),
(1107, 'filipi 4', 'filipi', 4),
(1108, 'kolose 1', 'kolose', 1),
(1109, 'kolose 2', 'kolose', 2),
(1110, 'kolose 3', 'kolose', 3),
(1111, 'kolose 4', 'kolose', 4),
(1112, '1 tesalonika 1', '1 tesalonika', 1),
(1113, '1 tesalonika 2', '1 tesalonika', 2),
(1114, '1 tesalonika 3', '1 tesalonika', 3),
(1115, '1 tesalonika 4', '1 tesalonika', 4),
(1116, '1 tesalonika 5', '1 tesalonika', 5),
(1117, '2 tesalonika 1', '2 tesalonika', 1),
(1118, '2 tesalonika 2', '2 tesalonika', 2),
(1119, '2 tesalonika 3', '2 tesalonika', 3),
(1120, '1 timotius 1', '1 timotius', 1),
(1121, '1 timotius 2', '1 timotius', 2),
(1122, '1 timotius 3', '1 timotius', 3),
(1123, '1 timotius 4', '1 timotius', 4),
(1124, '1 timotius 5', '1 timotius', 5),
(1125, '1 timotius 6', '1 timotius', 6),
(1126, '2 timotius 1', '2 timotius', 1),
(1127, '2 timotius 2', '2 timotius', 2),
(1128, '2 timotius 3', '2 timotius', 3),
(1129, '2 timotius 4', '2 timotius', 4),
(1130, 'titus 1', 'titus', 1),
(1131, 'titus 2', 'titus', 2),
(1132, 'titus 3', 'titus', 3),
(1133, 'filemon 1', 'filemon', 1),
(1134, 'ibrani 1', 'ibrani', 1),
(1135, 'ibrani 2', 'ibrani', 2),
(1136, 'ibrani 3', 'ibrani', 3),
(1137, 'ibrani 4', 'ibrani', 4),
(1138, 'ibrani 5', 'ibrani', 5),
(1139, 'ibrani 6', 'ibrani', 6),
(1140, 'ibrani 7', 'ibrani', 7),
(1141, 'ibrani 8', 'ibrani', 8),
(1142, 'ibrani 9', 'ibrani', 9),
(1143, 'ibrani 10', 'ibrani', 10),
(1144, 'ibrani 11', 'ibrani', 11),
(1145, 'ibrani 12', 'ibrani', 12),
(1146, 'ibrani 13', 'ibrani', 13),
(1147, 'yakobus 1', 'yakobus', 1),
(1148, 'yakobus 2', 'yakobus', 2),
(1149, 'yakobus 3', 'yakobus', 3),
(1150, 'yakobus 4', 'yakobus', 4),
(1151, 'yakobus 5', 'yakobus', 5),
(1152, '1 petrus 1', '1 petrus', 1),
(1153, '1 petrus 2', '1 petrus', 2),
(1154, '1 petrus 3', '1 petrus', 3),
(1155, '1 petrus 4', '1 petrus', 4),
(1156, '1 petrus 5', '1 petrus', 5),
(1157, '2 petrus 1', '2 petrus', 1),
(1158, '2 petrus 2', '2 petrus', 2),
(1159, '2 petrus 3', '2 petrus', 3),
(1160, '1 yohanes 1', '1 yohanes', 1),
(1161, '1 yohanes 2', '1 yohanes', 2),
(1162, '1 yohanes 3', '1 yohanes', 3),
(1163, '1 yohanes 4', '1 yohanes', 4),
(1164, '1 yohanes 5', '1 yohanes', 5),
(1165, '2 yohanes 1', '2 yohanes', 1),
(1166, '3 yohanes 1', '3 yohanes', 1),
(1167, 'yudas 1', 'yudas', 1),
(1168, 'wahyu 1', 'wahyu', 1),
(1169, 'wahyu 2', 'wahyu', 2),
(1170, 'wahyu 3', 'wahyu', 3),
(1171, 'wahyu 4', 'wahyu', 4),
(1172, 'wahyu 5', 'wahyu', 5),
(1173, 'wahyu 6', 'wahyu', 6),
(1174, 'wahyu 7', 'wahyu', 7),
(1175, 'wahyu 8', 'wahyu', 8),
(1176, 'wahyu 9', 'wahyu', 9),
(1177, 'wahyu 10', 'wahyu', 10),
(1178, 'wahyu 11', 'wahyu', 11),
(1179, 'wahyu 12', 'wahyu', 12),
(1180, 'wahyu 13', 'wahyu', 13),
(1181, 'wahyu 14', 'wahyu', 14),
(1182, 'wahyu 15', 'wahyu', 15),
(1183, 'wahyu 16', 'wahyu', 16),
(1184, 'wahyu 17', 'wahyu', 17),
(1185, 'wahyu 18', 'wahyu', 18),
(1186, 'wahyu 19', 'wahyu', 19),
(1187, 'wahyu 20', 'wahyu', 20),
(1188, 'wahyu 21', 'wahyu', 21),
(1189, 'wahyu 22', 'wahyu', 22);

-- --------------------------------------------------------

--
-- Table structure for table `church_table`
--

CREATE TABLE `church_table` (
  `id_church` int(11) NOT NULL,
  `church_name` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `church_table`
--

INSERT INTO `church_table` (`id_church`, `church_name`, `phone`, `address`) VALUES
(1, 'anonymous', '-', '-'),
(2, 'GRII Yogyakarta', '012345', 'Malioboro'),
(3, 'GRII Solo', '012345', 'Solo Baru'),
(12, 'GRII Pusat', '081234', 'Kemayoran');

-- --------------------------------------------------------

--
-- Table structure for table `devotion_table`
--

CREATE TABLE `devotion_table` (
  `id_devotion` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `id_chapter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------
--
-- Table structure for table `group_table`
--

CREATE TABLE `group_table` (
  `id_group` int(11) NOT NULL,
  `group_name` text NOT NULL,
  `id_church` int(11) NOT NULL,
  `start_date` text NOT NULL,
  `target_date` text NOT NULL,
  `num_of_chapter` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_table`
--

INSERT INTO `group_table` (`id_group`, `group_name`, `id_church`, `start_date`, `target_date`, `num_of_chapter`, `status`) VALUES
(1, 'anonymous', 1, '-', '-', 0, 1),
(36, 'CIT - Bible Reading', 12, '2024-04-01', '2026-02-23', 2, 1),
(40, 'BIBLE READING', 3, '2024-06-03', '2025-03-06', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_table`
--

CREATE TABLE `member_table` (
  `id_member` int(11) NOT NULL,
  `member_name` text NOT NULL,
  `phone` text NOT NULL,
  `id_group` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_table`
--

INSERT INTO `member_table` (`id_member`, `member_name`, `phone`, `id_group`, `status`) VALUES
(1, 'anonymous', '-', 1, 1),
(418, 'Lenny Pandjidharma', '', 36, 1),
(419, 'Dicky Andrian', '', 36, 1),
(420, '~ Endang Surati', '', 36, 1),
(421, '~ Eliana (Solo)', '', 36, 1),
(422, 'Ko Martin', '', 36, 1),
(423, 'Darius Handoko', '', 36, 1),
(424, '~ Adeline/Vivian', '', 36, 1),
(425, '~ Otniel Otniel K.H. K.H.', '', 36, 1),
(426, '~ piccer', '', 36, 1),
(427, '~ Lindawati Haryanto', '', 36, 1),
(428, '~ Oma Lisa', '', 36, 1),
(429, '~ Dewi Pratiwi', '', 36, 1),
(430, '~ yiskavisia', '', 36, 1),
(431, 'Yozef Tjandra', '', 36, 1),
(432, '~ Helen Fransiska Margarita', '', 36, 1),
(433, 'Sim Ay Tjan', '', 36, 1),
(434, '~ Listya', '', 36, 1),
(435, '~ Michael Joshua', '', 36, 1),
(436, '~ Veronica', '', 36, 1),
(437, '~ dr. Andreas C.N., Sp.B.', '', 36, 1),
(438, 'Melanie Chandra', '', 36, 1),
(439, '~ Tejo Jayadi', '', 36, 1),
(440, '~ Jordan Clevan Christopher', '', 36, 1),
(441, '~ Hearts', '', 36, 1),
(442, 'Yan Mulia', '', 36, 1),
(443, '~ Angel', '', 36, 1),
(444, '~ Andrie HG', '', 36, 1),
(445, '~ aurelia', '', 36, 1),
(446, '~ Villas/Hepihippo', '', 36, 1),
(447, 'Ibu Kartika', '', 36, 1),
(448, '~ Sandy', '', 36, 1),
(449, '~ 🪸Martha 🍁', '', 36, 1),
(450, 'Ibu Lisa Choir', '', 36, 1),
(451, '~ Nat Vw', '', 36, 1),
(452, '~ Bento', '', 36, 1),
(453, '~ Stephen', '', 36, 1),
(454, '~ susianawati309', '', 36, 1),
(455, '~ E🌷', '', 36, 1),
(456, '~ Bintang Mahenda', '', 36, 1),
(457, '~ Kenneth Tan', '', 36, 1),
(458, 'Ruri Handoko', '', 36, 1),
(459, '~ BL katering', '', 36, 1),
(460, '~ Kristin Wijaya', '', 36, 1),
(461, '~ Haryanto H.S.', '', 36, 1),
(462, '~ Gracia', '', 36, 1),
(463, '~ no vi3ika', '', 36, 1),
(464, '~ Mfitri', '', 36, 1),
(465, '~ Jeffry', '', 36, 1),
(466, '~ scarlet', '', 36, 1),
(467, '~ Tjunfebelyana', '', 36, 1),
(468, '~ Joanne Sutanto', '', 36, 1),
(469, '~ Ikan Gabus Solo', '', 36, 1),
(470, '~ James Sutanto', '', 36, 1),
(471, 'Bu Mariawati Ibrahim', '', 36, 1),
(472, 'Ci Ina Paperku', '', 36, 1),
(473, '~ Wesley and Mom😇🥰', '', 36, 1),
(474, '~ Lidia', '', 36, 1),
(475, '~ Tan Giok Sioe', '', 36, 1),
(476, '~ Toni', '', 36, 1),
(477, '~ Ivan teguh', '', 36, 1),
(478, '~ Agnes', '', 36, 1),
(479, '~ Grace', '', 36, 1),
(490, 'Jennifer Atalya', '', 40, 1),
(491, 'Renata Valencia', '', 40, 1),
(492, 'Victor Chendra', '', 40, 1),
(493, 'Evan Christopher', '', 40, 1),
(494, 'Elsa Nove', '', 40, 1),
(495, 'Audrey Josephine', '', 40, 1),
(496, 'Jason Caleb', '', 40, 1),
(497, 'Stefannus Christian', '', 40, 1),
(498, 'Jessica Ong', '', 40, 1),
(499, 'James Patrick', '', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_details_table`
--

CREATE TABLE `report_details_table` (
  `id_report_details` int(11) NOT NULL,
  `id_report` int(11) NOT NULL,
  `id_chapter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_table`
--

CREATE TABLE `report_table` (
  `id_report` int(11) NOT NULL,
  `date` text NOT NULL,
  `id_member` int(11) NOT NULL,
  `report` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_details_table`
--

CREATE TABLE `schedule_details_table` (
  `id_schedule_details` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `id_chapter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `schedule_table`
--

CREATE TABLE `schedule_table` (
  `id_schedule` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Indexes for table `admin_details_table`
--
ALTER TABLE `admin_details_table`
  ADD PRIMARY KEY (`id_admin_details`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chapter_table`
--
ALTER TABLE `chapter_table`
  ADD PRIMARY KEY (`id_chapter`);

--
-- Indexes for table `church_table`
--
ALTER TABLE `church_table`
  ADD PRIMARY KEY (`id_church`);

--
-- Indexes for table `devotion_table`
--
ALTER TABLE `devotion_table`
  ADD PRIMARY KEY (`id_devotion`),
  ADD KEY `id_chapter` (`id_chapter`);

--
-- Indexes for table `group_table`
--
ALTER TABLE `group_table`
  ADD PRIMARY KEY (`id_group`),
  ADD KEY `id_church` (`id_church`);

--
-- Indexes for table `member_table`
--
ALTER TABLE `member_table`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `report_details_table`
--
ALTER TABLE `report_details_table`
  ADD PRIMARY KEY (`id_report_details`),
  ADD KEY `id_chapter` (`id_chapter`),
  ADD KEY `fk_report_details_report` (`id_report`);

--
-- Indexes for table `report_table`
--
ALTER TABLE `report_table`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `fk_report_member` (`id_member`);

--
-- Indexes for table `schedule_details_table`
--
ALTER TABLE `schedule_details_table`
  ADD PRIMARY KEY (`id_schedule_details`),
  ADD KEY `id_chapter` (`id_chapter`),
  ADD KEY `fk_schedule_details_schedule` (`id_schedule`);

--
-- Indexes for table `schedule_table`
--
ALTER TABLE `schedule_table`
  ADD PRIMARY KEY (`id_schedule`),
  ADD KEY `fk_schedule_group` (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details_table`
--
ALTER TABLE `admin_details_table`
  MODIFY `id_admin_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chapter_table`
--
ALTER TABLE `chapter_table`
  MODIFY `id_chapter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1190;

--
-- AUTO_INCREMENT for table `church_table`
--
ALTER TABLE `church_table`
  MODIFY `id_church` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `devotion_table`
--
ALTER TABLE `devotion_table`
  MODIFY `id_devotion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `group_table`
--
ALTER TABLE `group_table`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `member_table`
--
ALTER TABLE `member_table`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `report_details_table`
--
ALTER TABLE `report_details_table`
  MODIFY `id_report_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16048;

--
-- AUTO_INCREMENT for table `report_table`
--
ALTER TABLE `report_table`
  MODIFY `id_report` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5337;

--
-- AUTO_INCREMENT for table `schedule_details_table`
--
ALTER TABLE `schedule_details_table`
  MODIFY `id_schedule_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27438;

--
-- AUTO_INCREMENT for table `schedule_table`
--
ALTER TABLE `schedule_table`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9368;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_details_table`
--
ALTER TABLE `admin_details_table`
  ADD CONSTRAINT `admin_details_table_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin_table` (`id_admin`),
  ADD CONSTRAINT `admin_details_table_ibfk_2` FOREIGN KEY (`id_group`) REFERENCES `group_table` (`id_group`);

--
-- Constraints for table `devotion_table`
--
ALTER TABLE `devotion_table`
  ADD CONSTRAINT `devotion_table_ibfk_1` FOREIGN KEY (`id_chapter`) REFERENCES `chapter_table` (`id_chapter`);

--
-- Constraints for table `group_table`
--
ALTER TABLE `group_table`
  ADD CONSTRAINT `group_table_ibfk_1` FOREIGN KEY (`id_church`) REFERENCES `church_table` (`id_church`);

--
-- Constraints for table `member_table`
--
ALTER TABLE `member_table`
  ADD CONSTRAINT `member_table_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `group_table` (`id_group`);

--
-- Constraints for table `report_details_table`
--
ALTER TABLE `report_details_table`
  ADD CONSTRAINT `fk_report_details_report` FOREIGN KEY (`id_report`) REFERENCES `report_table` (`id_report`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_report_details_table_id_report` FOREIGN KEY (`id_report`) REFERENCES `report_table` (`id_report`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_details_table_ibfk_1` FOREIGN KEY (`id_report`) REFERENCES `report_table` (`id_report`),
  ADD CONSTRAINT `report_details_table_ibfk_2` FOREIGN KEY (`id_chapter`) REFERENCES `chapter_table` (`id_chapter`);

--
-- Constraints for table `report_table`
--
ALTER TABLE `report_table`
  ADD CONSTRAINT `fk_report_member` FOREIGN KEY (`id_member`) REFERENCES `member_table` (`id_member`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_table_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member_table` (`id_member`);

--
-- Constraints for table `schedule_details_table`
--
ALTER TABLE `schedule_details_table`
  ADD CONSTRAINT `fk_schedule_details_schedule` FOREIGN KEY (`id_schedule`) REFERENCES `schedule_table` (`id_schedule`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_details_table_ibfk_1` FOREIGN KEY (`id_schedule`) REFERENCES `schedule_table` (`id_schedule`),
  ADD CONSTRAINT `schedule_details_table_ibfk_2` FOREIGN KEY (`id_chapter`) REFERENCES `chapter_table` (`id_chapter`);

--
-- Constraints for table `schedule_table`
--
ALTER TABLE `schedule_table`
  ADD CONSTRAINT `fk_schedule_group` FOREIGN KEY (`id_group`) REFERENCES `group_table` (`id_group`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_table_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `group_table` (`id_group`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
