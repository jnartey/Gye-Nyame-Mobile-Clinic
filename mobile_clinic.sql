-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 31, 2018 at 06:10 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(180, NULL, NULL, NULL, 'controllers', 1, 546),
(181, 180, NULL, NULL, 'Pages', 2, 55),
(183, 181, NULL, NULL, 'index', 3, 4),
(184, 181, NULL, NULL, 'getRole', 5, 6),
(185, 181, NULL, NULL, 'countRows', 7, 8),
(186, 180, NULL, NULL, 'Roles', 56, 91),
(187, 186, NULL, NULL, 'admin_index', 57, 58),
(188, 186, NULL, NULL, 'admin_view', 59, 60),
(189, 186, NULL, NULL, 'admin_add', 61, 62),
(190, 186, NULL, NULL, 'admin_edit', 63, 64),
(191, 186, NULL, NULL, 'admin_delete', 65, 66),
(192, 186, NULL, NULL, 'getRole', 67, 68),
(193, 186, NULL, NULL, 'countRows', 69, 70),
(194, 180, NULL, NULL, 'Users', 92, 137),
(195, 194, NULL, NULL, 'isAuthorized', 93, 94),
(196, 194, NULL, NULL, 'admin_index', 95, 96),
(197, 194, NULL, NULL, 'admin_login', 97, 98),
(198, 194, NULL, NULL, 'admin_logout', 99, 100),
(199, 194, NULL, NULL, 'admin_view', 101, 102),
(200, 194, NULL, NULL, 'admin_add', 103, 104),
(201, 194, NULL, NULL, 'admin_edit', 105, 106),
(202, 194, NULL, NULL, 'admin_delete', 107, 108),
(203, 194, NULL, NULL, 'getRole', 109, 110),
(204, 194, NULL, NULL, 'countRows', 111, 112),
(205, 180, NULL, NULL, 'Acl', 138, 265),
(206, 205, NULL, NULL, 'Acl', 139, 168),
(207, 206, NULL, NULL, 'index', 140, 141),
(208, 206, NULL, NULL, 'admin_index', 142, 143),
(209, 206, NULL, NULL, 'getRole', 144, 145),
(210, 206, NULL, NULL, 'countRows', 146, 147),
(211, 205, NULL, NULL, 'Acos', 169, 204),
(212, 211, NULL, NULL, 'admin_index', 170, 171),
(213, 211, NULL, NULL, 'admin_empty_acos', 172, 173),
(214, 211, NULL, NULL, 'admin_build_acl', 174, 175),
(215, 211, NULL, NULL, 'admin_prune_acos', 176, 177),
(216, 211, NULL, NULL, 'admin_synchronize', 178, 179),
(217, 211, NULL, NULL, 'getRole', 180, 181),
(218, 211, NULL, NULL, 'countRows', 182, 183),
(219, 205, NULL, NULL, 'Aros', 205, 264),
(220, 219, NULL, NULL, 'admin_index', 206, 207),
(221, 219, NULL, NULL, 'admin_check', 208, 209),
(222, 219, NULL, NULL, 'admin_users', 210, 211),
(223, 219, NULL, NULL, 'admin_update_user_role', 212, 213),
(224, 219, NULL, NULL, 'admin_ajax_role_permissions', 214, 215),
(225, 219, NULL, NULL, 'admin_role_permissions', 216, 217),
(226, 219, NULL, NULL, 'admin_user_permissions', 218, 219),
(227, 219, NULL, NULL, 'admin_empty_permissions', 220, 221),
(228, 219, NULL, NULL, 'admin_clear_user_specific_permissions', 222, 223),
(229, 219, NULL, NULL, 'admin_grant_all_controllers', 224, 225),
(230, 219, NULL, NULL, 'admin_deny_all_controllers', 226, 227),
(231, 219, NULL, NULL, 'admin_get_role_controller_permission', 228, 229),
(232, 219, NULL, NULL, 'admin_grant_role_permission', 230, 231),
(233, 219, NULL, NULL, 'admin_deny_role_permission', 232, 233),
(234, 219, NULL, NULL, 'admin_get_user_controller_permission', 234, 235),
(235, 219, NULL, NULL, 'admin_grant_user_permission', 236, 237),
(236, 219, NULL, NULL, 'admin_deny_user_permission', 238, 239),
(237, 219, NULL, NULL, 'getRole', 240, 241),
(238, 219, NULL, NULL, 'countRows', 242, 243),
(239, 180, NULL, NULL, 'Galleries', 266, 301),
(240, 239, NULL, NULL, 'admin_index', 267, 268),
(241, 239, NULL, NULL, 'admin_view', 269, 270),
(242, 239, NULL, NULL, 'admin_add', 271, 272),
(243, 239, NULL, NULL, 'admin_edit', 273, 274),
(244, 239, NULL, NULL, 'admin_delete', 275, 276),
(245, 239, NULL, NULL, 'getRole', 277, 278),
(246, 239, NULL, NULL, 'countRows', 279, 280),
(247, 180, NULL, NULL, 'Images', 302, 339),
(248, 247, NULL, NULL, 'getRole', 303, 304),
(249, 247, NULL, NULL, 'countRows', 305, 306),
(250, 247, NULL, NULL, 'admin_add', 307, 308),
(258, 247, NULL, NULL, 'admin_edit', 309, 310),
(259, 247, NULL, NULL, 'admin_ajax_edit', 311, 312),
(260, 247, NULL, NULL, 'admin_delete', 313, 314),
(261, 247, NULL, NULL, 'admin_view', 315, 316),
(262, 180, NULL, NULL, 'PageContents', 340, 377),
(263, 262, NULL, NULL, 'admin_index', 341, 342),
(264, 262, NULL, NULL, 'admin_view', 343, 344),
(265, 262, NULL, NULL, 'admin_add', 345, 346),
(266, 262, NULL, NULL, 'admin_edit', 347, 348),
(267, 262, NULL, NULL, 'admin_delete', 349, 350),
(268, 262, NULL, NULL, 'getRole', 351, 352),
(269, 262, NULL, NULL, 'countRows', 353, 354),
(270, 180, NULL, NULL, 'Banners', 378, 413),
(271, 270, NULL, NULL, 'admin_index', 379, 380),
(272, 270, NULL, NULL, 'admin_view', 381, 382),
(273, 270, NULL, NULL, 'admin_add', 383, 384),
(274, 270, NULL, NULL, 'admin_edit', 385, 386),
(275, 270, NULL, NULL, 'admin_delete', 387, 388),
(276, 270, NULL, NULL, 'getRole', 389, 390),
(277, 270, NULL, NULL, 'countRows', 391, 392),
(278, 270, NULL, NULL, 'getChildren', 393, 394),
(279, 239, NULL, NULL, 'getChildren', 281, 282),
(280, 247, NULL, NULL, 'getChildren', 317, 318),
(281, 262, NULL, NULL, 'getChildren', 355, 356),
(282, 181, NULL, NULL, 'getChildren', 9, 10),
(283, 186, NULL, NULL, 'getChildren', 71, 72),
(284, 194, NULL, NULL, 'getChildren', 113, 114),
(285, 206, NULL, NULL, 'getChildren', 148, 149),
(286, 211, NULL, NULL, 'getChildren', 184, 185),
(287, 219, NULL, NULL, 'getChildren', 244, 245),
(299, 180, NULL, NULL, 'Events', 414, 449),
(300, 299, NULL, NULL, 'admin_index', 415, 416),
(301, 299, NULL, NULL, 'admin_view', 417, 418),
(302, 299, NULL, NULL, 'admin_add', 419, 420),
(303, 299, NULL, NULL, 'admin_edit', 421, 422),
(304, 299, NULL, NULL, 'admin_delete', 423, 424),
(305, 299, NULL, NULL, 'getRole', 425, 426),
(306, 299, NULL, NULL, 'countRows', 427, 428),
(307, 299, NULL, NULL, 'getChildren', 429, 430),
(311, 270, NULL, NULL, 'checkGallery', 395, 396),
(312, 299, NULL, NULL, 'checkGallery', 431, 432),
(313, 239, NULL, NULL, 'checkGallery', 283, 284),
(314, 247, NULL, NULL, 'checkGallery', 319, 320),
(330, 262, NULL, NULL, 'checkGallery', 357, 358),
(337, 181, NULL, NULL, 'checkGallery', 11, 12),
(338, 186, NULL, NULL, 'checkGallery', 73, 74),
(339, 194, NULL, NULL, 'checkGallery', 115, 116),
(340, 206, NULL, NULL, 'checkGallery', 150, 151),
(341, 211, NULL, NULL, 'checkGallery', 186, 187),
(342, 219, NULL, NULL, 'checkGallery', 246, 247),
(343, 270, NULL, NULL, 'getChildrenId', 397, 398),
(344, 180, NULL, NULL, 'Dashboard', 450, 477),
(345, 344, NULL, NULL, 'admin_index', 451, 452),
(346, 344, NULL, NULL, 'getRole', 453, 454),
(347, 344, NULL, NULL, 'countRows', 455, 456),
(348, 344, NULL, NULL, 'getChildren', 457, 458),
(349, 344, NULL, NULL, 'getChildrenId', 459, 460),
(350, 344, NULL, NULL, 'checkGallery', 461, 462),
(351, 299, NULL, NULL, 'getChildrenId', 433, 434),
(352, 239, NULL, NULL, 'getChildrenId', 285, 286),
(353, 247, NULL, NULL, 'getChildrenId', 321, 322),
(355, 262, NULL, NULL, 'getChildrenId', 359, 360),
(356, 181, NULL, NULL, 'getChildrenId', 13, 14),
(357, 186, NULL, NULL, 'getChildrenId', 75, 76),
(358, 194, NULL, NULL, 'getChildrenId', 117, 118),
(359, 206, NULL, NULL, 'getChildrenId', 152, 153),
(360, 211, NULL, NULL, 'getChildrenId', 188, 189),
(361, 219, NULL, NULL, 'getChildrenId', 248, 249),
(399, 270, NULL, NULL, 'getFirstChild', 399, 400),
(400, 270, NULL, NULL, 'checkForGrandChildren', 401, 402),
(401, 344, NULL, NULL, 'getFirstChild', 463, 464),
(402, 344, NULL, NULL, 'checkForGrandChildren', 465, 466),
(403, 299, NULL, NULL, 'getFirstChild', 435, 436),
(404, 299, NULL, NULL, 'checkForGrandChildren', 437, 438),
(405, 239, NULL, NULL, 'getFirstChild', 287, 288),
(406, 239, NULL, NULL, 'checkForGrandChildren', 289, 290),
(407, 247, NULL, NULL, 'getFirstChild', 323, 324),
(408, 247, NULL, NULL, 'checkForGrandChildren', 325, 326),
(413, 262, NULL, NULL, 'getFirstChild', 361, 362),
(414, 262, NULL, NULL, 'checkForGrandChildren', 363, 364),
(427, 181, NULL, NULL, 'getFirstChild', 15, 16),
(428, 181, NULL, NULL, 'checkForGrandChildren', 17, 18),
(429, 186, NULL, NULL, 'getFirstChild', 77, 78),
(430, 186, NULL, NULL, 'checkForGrandChildren', 79, 80),
(444, 194, NULL, NULL, 'getFirstChild', 119, 120),
(445, 194, NULL, NULL, 'checkForGrandChildren', 121, 122),
(446, 206, NULL, NULL, 'getFirstChild', 154, 155),
(447, 206, NULL, NULL, 'checkForGrandChildren', 156, 157),
(448, 211, NULL, NULL, 'getFirstChild', 190, 191),
(449, 211, NULL, NULL, 'checkForGrandChildren', 192, 193),
(450, 219, NULL, NULL, 'getFirstChild', 250, 251),
(451, 219, NULL, NULL, 'checkForGrandChildren', 252, 253),
(470, 247, NULL, NULL, 'admin_set_default', 327, 328),
(474, 270, NULL, NULL, 'getFirstChildImage', 403, 404),
(476, 344, NULL, NULL, 'getFirstChildImage', 467, 468),
(477, 299, NULL, NULL, 'getFirstChildImage', 439, 440),
(492, 239, NULL, NULL, 'getFirstChildImage', 291, 292),
(493, 247, NULL, NULL, 'getFirstChildImage', 329, 330),
(495, 262, NULL, NULL, 'getFirstChildImage', 365, 366),
(505, 181, NULL, NULL, 'getFirstChildImage', 19, 20),
(506, 186, NULL, NULL, 'getFirstChildImage', 81, 82),
(507, 194, NULL, NULL, 'getFirstChildImage', 123, 124),
(508, 206, NULL, NULL, 'getFirstChildImage', 158, 159),
(509, 211, NULL, NULL, 'getFirstChildImage', 194, 195),
(510, 219, NULL, NULL, 'getFirstChildImage', 254, 255),
(511, 270, NULL, NULL, 'getCurrentChild', 405, 406),
(512, 270, NULL, NULL, 'getParent', 407, 408),
(513, 270, NULL, NULL, 'getData', 409, 410),
(517, 344, NULL, NULL, 'getCurrentChild', 469, 470),
(518, 344, NULL, NULL, 'getParent', 471, 472),
(519, 344, NULL, NULL, 'getData', 473, 474),
(520, 299, NULL, NULL, 'getCurrentChild', 441, 442),
(521, 299, NULL, NULL, 'getParent', 443, 444),
(522, 299, NULL, NULL, 'getData', 445, 446),
(526, 239, NULL, NULL, 'getCurrentChild', 293, 294),
(527, 239, NULL, NULL, 'getParent', 295, 296),
(528, 239, NULL, NULL, 'getData', 297, 298),
(529, 247, NULL, NULL, 'getCurrentChild', 331, 332),
(530, 247, NULL, NULL, 'getParent', 333, 334),
(531, 247, NULL, NULL, 'getData', 335, 336),
(535, 262, NULL, NULL, 'getCurrentChild', 367, 368),
(536, 262, NULL, NULL, 'getParent', 369, 370),
(537, 262, NULL, NULL, 'getData', 371, 372),
(540, 181, NULL, NULL, 'getCurrentChild', 21, 22),
(541, 181, NULL, NULL, 'getParent', 23, 24),
(542, 181, NULL, NULL, 'getData', 25, 26),
(543, 186, NULL, NULL, 'getCurrentChild', 83, 84),
(544, 186, NULL, NULL, 'getParent', 85, 86),
(545, 186, NULL, NULL, 'getData', 87, 88),
(546, 194, NULL, NULL, 'getCurrentChild', 125, 126),
(547, 194, NULL, NULL, 'getParent', 127, 128),
(548, 194, NULL, NULL, 'getData', 129, 130),
(549, 206, NULL, NULL, 'getCurrentChild', 160, 161),
(550, 206, NULL, NULL, 'getParent', 162, 163),
(551, 206, NULL, NULL, 'getData', 164, 165),
(552, 211, NULL, NULL, 'getCurrentChild', 196, 197),
(553, 211, NULL, NULL, 'getParent', 198, 199),
(554, 211, NULL, NULL, 'getData', 200, 201),
(555, 219, NULL, NULL, 'getCurrentChild', 256, 257),
(556, 219, NULL, NULL, 'getParent', 258, 259),
(557, 219, NULL, NULL, 'getData', 260, 261),
(569, 270, NULL, NULL, 'getSymbols', 411, 412),
(571, 344, NULL, NULL, 'getSymbols', 475, 476),
(572, 299, NULL, NULL, 'getSymbols', 447, 448),
(574, 239, NULL, NULL, 'getSymbols', 299, 300),
(575, 247, NULL, NULL, 'getSymbols', 337, 338),
(577, 262, NULL, NULL, 'getSymbols', 373, 374),
(579, 181, NULL, NULL, 'getSymbols', 27, 28),
(580, 186, NULL, NULL, 'getSymbols', 89, 90),
(581, 194, NULL, NULL, 'getSymbols', 131, 132),
(582, 206, NULL, NULL, 'getSymbols', 166, 167),
(583, 211, NULL, NULL, 'getSymbols', 202, 203),
(584, 219, NULL, NULL, 'getSymbols', 262, 263),
(719, 180, NULL, NULL, 'Videos', 478, 515),
(720, 719, NULL, NULL, 'admin_index', 479, 480),
(721, 719, NULL, NULL, 'admin_view', 481, 482),
(722, 719, NULL, NULL, 'admin_add', 483, 484),
(723, 719, NULL, NULL, 'admin_edit', 485, 486),
(724, 719, NULL, NULL, 'admin_delete', 487, 488),
(725, 719, NULL, NULL, 'getRole', 489, 490),
(726, 719, NULL, NULL, 'countRows', 491, 492),
(727, 719, NULL, NULL, 'getChildren', 493, 494),
(728, 719, NULL, NULL, 'getSymbols', 495, 496),
(729, 719, NULL, NULL, 'getFirstChild', 497, 498),
(730, 719, NULL, NULL, 'getCurrentChild', 499, 500),
(731, 719, NULL, NULL, 'getParent', 501, 502),
(732, 719, NULL, NULL, 'getFirstChildImage', 503, 504),
(733, 719, NULL, NULL, 'checkForGrandChildren', 505, 506),
(734, 719, NULL, NULL, 'getChildrenId', 507, 508),
(735, 719, NULL, NULL, 'checkGallery', 509, 510),
(736, 719, NULL, NULL, 'getData', 511, 512),
(741, 180, NULL, NULL, 'Sitemap', 516, 545),
(742, 741, NULL, NULL, 'Sitemaps', 517, 544),
(743, 742, NULL, NULL, 'display', 518, 519),
(744, 742, NULL, NULL, 'getRole', 520, 521),
(745, 742, NULL, NULL, 'countRows', 522, 523),
(746, 742, NULL, NULL, 'getChildren', 524, 525),
(747, 742, NULL, NULL, 'getSymbols', 526, 527),
(748, 742, NULL, NULL, 'getFirstChild', 528, 529),
(749, 742, NULL, NULL, 'getCurrentChild', 530, 531),
(750, 742, NULL, NULL, 'getParent', 532, 533),
(751, 742, NULL, NULL, 'getFirstChildImage', 534, 535),
(752, 742, NULL, NULL, 'checkForGrandChildren', 536, 537),
(753, 742, NULL, NULL, 'getChildrenId', 538, 539),
(754, 742, NULL, NULL, 'checkGallery', 540, 541),
(755, 742, NULL, NULL, 'getData', 542, 543),
(804, 719, NULL, NULL, 'admin_get_location', 513, 514),
(874, 262, NULL, NULL, 'admin_set_default', 375, 376),
(875, 181, NULL, NULL, 'about_us', 29, 30),
(877, 181, NULL, NULL, 'partners', 31, 32),
(878, 181, NULL, NULL, 'projects', 33, 34),
(879, 181, NULL, NULL, 'project_gallery', 35, 36),
(880, 181, NULL, NULL, 'csr', 37, 38),
(881, 181, NULL, NULL, 'contact_us', 39, 40),
(882, 181, NULL, NULL, 'careers', 41, 42),
(883, 181, NULL, NULL, 'videos', 43, 44),
(884, 181, NULL, NULL, 'process', 45, 46),
(885, 181, NULL, NULL, 'search', 47, 48),
(888, 181, NULL, NULL, 'solutions', 49, 50),
(889, 194, NULL, NULL, 'client_login', 133, 134),
(890, 194, NULL, NULL, 'client_logout', 135, 136),
(891, 181, NULL, NULL, 'more_search', 51, 52),
(892, 181, NULL, NULL, 'ajax_search', 53, 54);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, '', 1, 12),
(2, 1, 'User', 1, '', 2, 3),
(4, NULL, 'Role', 2, '', 13, 16),
(5, 4, 'User', 3, '', 14, 15),
(6, 1, 'User', 2, '', 4, 5),
(7, 1, 'User', 2, '', 6, 7),
(8, NULL, 'Role', 3, '', 17, 20),
(9, 8, 'User', 2, '', 18, 19),
(10, 1, 'User', 3, '', 8, 9),
(11, 1, 'User', 2, '', 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `aro_id` int(10) UNSIGNED NOT NULL,
  `aco_id` int(10) UNSIGNED NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(13, 1, 180, '1', '1', '1', '1'),
(15, 4, 197, '1', '1', '1', '1'),
(16, 4, 198, '1', '1', '1', '1'),
(17, 4, 274, '1', '1', '1', '1'),
(18, 4, 272, '1', '1', '1', '1'),
(19, 4, 271, '1', '1', '1', '1'),
(20, 4, 278, '1', '1', '1', '1'),
(21, 4, 277, '1', '1', '1', '1'),
(22, 4, 276, '1', '1', '1', '1'),
(23, 4, 242, '1', '1', '1', '1'),
(24, 4, 244, '1', '1', '1', '1'),
(25, 4, 243, '1', '1', '1', '1'),
(26, 4, 240, '1', '1', '1', '1'),
(27, 4, 241, '1', '1', '1', '1'),
(28, 4, 246, '1', '1', '1', '1'),
(29, 4, 279, '1', '1', '1', '1'),
(30, 4, 245, '1', '1', '1', '1'),
(31, 4, 250, '1', '1', '1', '1'),
(32, 4, 259, '1', '1', '1', '1'),
(33, 4, 260, '1', '1', '1', '1'),
(34, 4, 258, '1', '1', '1', '1'),
(35, 4, 261, '1', '1', '1', '1'),
(36, 4, 249, '1', '1', '1', '1'),
(37, 4, 280, '1', '1', '1', '1'),
(38, 4, 248, '1', '1', '1', '1'),
(40, 4, 266, '1', '1', '1', '1'),
(41, 4, 263, '1', '1', '1', '1'),
(42, 4, 264, '1', '1', '1', '1'),
(43, 4, 269, '1', '1', '1', '1'),
(44, 4, 281, '1', '1', '1', '1'),
(45, 4, 268, '1', '1', '1', '1'),
(46, 4, 185, '1', '1', '1', '1'),
(48, 4, 282, '1', '1', '1', '1'),
(49, 4, 184, '1', '1', '1', '1'),
(50, 4, 183, '1', '1', '1', '1'),
(51, 4, 187, '1', '1', '1', '1'),
(52, 4, 188, '1', '1', '1', '1'),
(53, 4, 193, '1', '1', '1', '1'),
(54, 4, 283, '1', '1', '1', '1'),
(55, 4, 192, '1', '1', '1', '1'),
(56, 4, 201, '1', '1', '1', '1'),
(57, 4, 196, '1', '1', '1', '1'),
(58, 4, 199, '1', '1', '1', '1'),
(59, 4, 204, '1', '1', '1', '1'),
(60, 4, 284, '1', '1', '1', '1'),
(61, 4, 203, '1', '1', '1', '1'),
(62, 4, 195, '1', '1', '1', '1'),
(63, 4, 209, '1', '1', '1', '1'),
(64, 4, 217, '1', '1', '1', '1'),
(65, 4, 237, '1', '1', '1', '1'),
(66, 4, 222, '1', '1', '1', '1'),
(67, 8, 875, '1', '1', '1', '1'),
(68, 8, 882, '1', '1', '1', '1'),
(69, 8, 881, '1', '1', '1', '1'),
(70, 8, 185, '1', '1', '1', '1'),
(71, 8, 880, '1', '1', '1', '1'),
(72, 8, 183, '1', '1', '1', '1'),
(73, 8, 877, '1', '1', '1', '1'),
(74, 8, 884, '1', '1', '1', '1'),
(75, 8, 879, '1', '1', '1', '1'),
(76, 8, 885, '1', '1', '1', '1'),
(77, 8, 888, '1', '1', '1', '1'),
(78, 8, 883, '1', '1', '1', '1'),
(79, 8, 878, '1', '1', '1', '1'),
(80, 8, 889, '1', '1', '1', '1'),
(81, 8, 890, '1', '1', '1', '1'),
(82, 8, 579, '1', '1', '1', '1'),
(83, 8, 184, '1', '1', '1', '1'),
(84, 8, 541, '1', '1', '1', '1'),
(85, 8, 505, '1', '1', '1', '1'),
(86, 8, 427, '1', '1', '1', '1'),
(87, 8, 542, '1', '1', '1', '1'),
(88, 8, 540, '1', '1', '1', '1'),
(89, 8, 356, '1', '1', '1', '1'),
(90, 8, 282, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `banner_image` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `description` text NOT NULL,
  `page_meta_description` varchar(150) NOT NULL,
  `page_meta_keywords` mediumtext NOT NULL,
  `url_title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `add_banner` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category`, `banner_image`, `title`, `description`, `page_meta_description`, `page_meta_keywords`, `url_title`, `url`, `add_banner`, `created`, `modified`) VALUES
(1, NULL, 'gye_nyame_bg.jpg', 'surgical and mental services to children and adults in Ghana', 'We use our strength to stand up for the most vulnerable in the community.', '', '', 'Read more', 'about-us', '0', '2016-06-16 15:08:43', '2016-06-16 15:08:43'),
(2, NULL, 'about_us_banner.jpg', 'about us', '', '', '', '', '', '0', '2016-06-16 16:12:13', '2016-06-16 16:12:13'),
(3, NULL, 'projects_banner.jpg', 'Projects', '', '', '', '', '', '0', '2016-06-17 01:07:49', '2016-06-17 01:07:49'),
(4, NULL, 'about_us_banner-0.jpg', 'Sponsorship', '', '', '', '', '', '0', '2016-06-17 08:51:27', '2016-06-17 08:51:27'),
(5, NULL, 'donate_banner.jpg', 'get involved', '', '', '', '', '', '0', '2016-06-17 09:11:21', '2016-06-17 09:11:21'),
(6, NULL, 'news_banner.jpg', 'News', '', '', '', '', '', '0', '2016-06-17 10:00:25', '2016-06-17 10:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_image` varchar(140) DEFAULT NULL,
  `file` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `content` longtext NOT NULL,
  `event_date` date DEFAULT NULL,
  `time` time NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `slug`, `link_id`, `name`, `description`, `img_thumb`, `created`, `modified`) VALUES
(11, 'mother-baby-unit', 0, 'Mother & Baby Unit', '', '', '2015-10-16 06:42:12', '2015-10-28 12:07:46'),
(10, 'in-theatre', 0, 'In Theatre', '', '', '2015-10-16 06:39:46', '2015-10-28 12:07:52'),
(9, 'way-to-the-health-posts', 0, 'Way To The Health Posts', '', '', '2015-10-16 06:37:58', '2015-10-28 12:07:58'),
(8, 'patients', 0, 'Patients', '', '', '2015-10-16 06:33:59', '2015-10-28 12:08:02'),
(6, 'mobile-clinic', 23, 'Mobile Clinic', '', '', '2015-10-05 09:37:04', '2015-10-28 12:08:07'),
(12, 'contact', 4, 'Contact', '', '', '2016-06-16 14:20:06', '2016-06-16 14:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_file` varchar(255) NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `default_img` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `name`, `img_file`, `img_thumb`, `default_img`, `created`, `modified`, `slug`) VALUES
(1, 3, '', 'Gye_Nyame_Mobile_Clinic_1.JPG', '', 0, '2015-10-08 13:04:52', '2015-10-08 13:04:52', ''),
(2, 3, '', 'Gye_Nyame_Mobile_Clinic_2.JPG', '', 0, '2015-10-08 13:04:55', '2015-10-08 13:04:55', ''),
(3, 3, '', 'Gye_Nyame_Mobile_Clinic_3.JPG', '', 0, '2015-10-08 13:04:57', '2015-10-08 13:04:57', ''),
(4, 1, '', 'mobile_clinic_day_1_1_of_114.jpg', '', 0, '2015-10-16 06:22:08', '2015-10-16 06:22:08', ''),
(5, 1, '', 'mobile_clinic_day_1_3_of_114.jpg', '', 0, '2015-10-16 06:22:09', '2015-10-16 06:22:09', ''),
(6, 1, '', 'mobile_clinic_day_1_4_of_114.jpg', '', 0, '2015-10-16 06:22:09', '2015-10-16 06:22:09', ''),
(7, 1, '', 'mobile_clinic_day_1_7_of_114.jpg', '', 0, '2015-10-16 06:22:10', '2015-10-16 06:22:10', ''),
(8, 1, '', 'mobile_clinic_day_1_9_of_114.jpg', '', 0, '2015-10-16 06:22:10', '2015-10-16 06:22:10', ''),
(9, 1, '', 'mobile_clinic_day_1_11_of_114.jpg', '', 0, '2015-10-16 06:22:10', '2015-10-16 06:22:10', ''),
(10, 1, '', 'mobile_clinic_day_1_15_of_114.jpg', '', 0, '2015-10-16 06:22:11', '2015-10-16 06:22:11', ''),
(11, 1, '', 'mobile_clinic_day_1_30_of_114.jpg', '', 0, '2015-10-16 06:22:11', '2015-10-16 06:22:11', ''),
(12, 1, '', 'mobile_clinic_day_1_31_of_114.jpg', '', 0, '2015-10-16 06:22:12', '2015-10-16 06:22:12', ''),
(13, 1, '', 'mobile_clinic_day_1_35_of_114.jpg', '', 0, '2015-10-16 06:22:12', '2015-10-16 06:22:12', ''),
(14, 1, '', 'mobile_clinic_day_1_36_of_114.jpg', '', 0, '2015-10-16 06:22:12', '2015-10-16 06:22:12', ''),
(15, 1, '', 'mobile_clinic_day_1_37_of_114.jpg', '', 0, '2015-10-16 06:22:12', '2015-10-16 06:22:12', ''),
(16, 1, '', 'mobile_clinic_day_1_39_of_114.jpg', '', 0, '2015-10-16 06:22:13', '2015-10-16 06:22:13', ''),
(17, 1, '', 'mobile_clinic_day_1_41_of_114.jpg', '', 0, '2015-10-16 06:22:13', '2015-10-16 06:22:13', ''),
(18, 1, '', 'mobile_clinic_day_1_58_of_114.jpg', '', 0, '2015-10-16 06:23:14', '2015-10-16 06:23:14', ''),
(19, 1, '', 'mobile_clinic_day_1_60_of_114.jpg', '', 0, '2015-10-16 06:23:15', '2015-10-16 06:23:15', ''),
(20, 1, '', 'mobile_clinic_day_1_82_of_114.jpg', '', 0, '2015-10-16 06:23:15', '2015-10-16 06:23:15', ''),
(21, 6, '', 'mobile_clinic_day_2_1_of_144.jpg', '', 0, '2015-10-16 06:32:56', '2015-10-16 06:32:56', ''),
(22, 6, '', 'mobile_clinic_day_2_3_of_144.jpg', '', 0, '2015-10-16 06:32:57', '2015-10-16 06:32:57', ''),
(23, 6, '', 'mobile_clinic_day_2_4_of_144.jpg', '', 0, '2015-10-16 06:32:57', '2015-10-16 06:32:57', ''),
(24, 6, '', 'mobile_clinic_day_2_7_of_144.jpg', '', 0, '2015-10-16 06:32:58', '2015-10-16 06:32:58', ''),
(25, 6, '', 'mobile_clinic_day_2_9_of_144.jpg', '', 0, '2015-10-16 06:32:58', '2015-10-16 06:32:58', ''),
(26, 6, '', 'mobile_clinic_day_2_11_of_144.jpg', '', 0, '2015-10-16 06:32:59', '2015-10-16 06:32:59', ''),
(27, 6, '', 'mobile_clinic_day_2_15_of_144.jpg', '', 0, '2015-10-16 06:32:59', '2015-10-16 06:32:59', ''),
(28, 6, '', 'mobile_clinic_day_2_30_of_144.jpg', '', 0, '2015-10-16 06:32:59', '2015-10-16 06:32:59', ''),
(29, 6, '', 'mobile_clinic_day_2_31_of_144.jpg', '', 0, '2015-10-16 06:33:00', '2015-10-16 06:33:00', ''),
(30, 6, '', 'mobile_clinic_day_2_35_of_144.jpg', '', 0, '2015-10-16 06:33:00', '2015-10-16 06:33:00', ''),
(31, 6, '', 'mobile_clinic_day_2_36_of_144.jpg', '', 0, '2015-10-16 06:33:00', '2015-10-16 06:33:00', ''),
(32, 6, '', 'mobile_clinic_day_2_37_of_144.jpg', '', 0, '2015-10-16 06:33:01', '2015-10-16 06:33:01', ''),
(33, 6, '', 'mobile_clinic_day_2_39_of_144.jpg', '', 0, '2015-10-16 06:33:01', '2015-10-16 06:33:01', ''),
(34, 6, '', 'mobile_clinic_day_2_41_of_144.jpg', '', 0, '2015-10-16 06:33:06', '2015-10-16 06:33:06', ''),
(35, 6, '', 'mobile_clinic_day_2_58_of_144.jpg', '', 0, '2015-10-16 06:33:07', '2015-10-16 06:33:07', ''),
(36, 6, '', 'mobile_clinic_day_2_60_of_144.jpg', '', 0, '2015-10-16 06:33:07', '2015-10-16 06:33:07', ''),
(37, 6, '', 'mobile_clinic_day_2_82_of_144.jpg', '', 0, '2015-10-16 06:33:07', '2015-10-16 06:33:07', ''),
(38, 6, '', 'mobile_clinic_day_2_118_of_144.jpg', '', 0, '2015-10-16 06:33:08', '2015-10-16 06:33:08', ''),
(39, 6, '', 'mobile_clinic_day_2_133_of_144.jpg', '', 0, '2015-10-16 06:33:08', '2015-10-16 06:33:08', ''),
(40, 6, '', 'mobile_clinic_day_2_135_of_144.jpg', '', 0, '2015-10-16 06:33:08', '2015-10-16 06:33:08', ''),
(41, 8, '', 'mobile_clinic_day_1_5_of_114.jpg', '', 0, '2015-10-16 06:37:01', '2015-10-16 06:37:01', ''),
(42, 8, '', 'mobile_clinic_day_1_9_of_114-0.jpg', '', 0, '2015-10-16 06:37:01', '2015-10-16 06:37:01', ''),
(43, 8, '', 'mobile_clinic_day_1_18_of_114.jpg', '', 0, '2015-10-16 06:37:01', '2015-10-16 06:37:01', ''),
(44, 8, '', 'mobile_clinic_day_1_24_of_114.jpg', '', 0, '2015-10-16 06:37:02', '2015-10-16 06:37:02', ''),
(45, 9, '', 'mobile_clinic_day_2_136_of_144.jpg', '', 0, '2015-10-16 06:39:24', '2015-10-16 06:39:24', ''),
(46, 9, '', 'mobile_clinic_day_2_142_of_144.jpg', '', 0, '2015-10-16 06:39:24', '2015-10-16 06:39:24', ''),
(47, 9, '', 'mobile_clinic_day_2_144_of_144.jpg', '', 0, '2015-10-16 06:39:25', '2015-10-16 06:39:25', ''),
(48, 10, '', 'mobile_clinic_day_1_33_of_114.jpg', '', 0, '2015-10-16 06:41:38', '2015-10-16 06:41:38', ''),
(49, 10, '', 'mobile_clinic_day_1_38_of_114.jpg', '', 0, '2015-10-16 06:41:38', '2015-10-16 06:41:38', ''),
(50, 10, '', 'mobile_clinic_day_1_47_of_114.jpg', '', 0, '2015-10-16 06:41:39', '2015-10-16 06:41:39', ''),
(51, 10, '', 'mobile_clinic_day_1_49_of_114.jpg', '', 0, '2015-10-16 06:41:39', '2015-10-16 06:41:39', ''),
(52, 10, '', 'mobile_clinic_day_1_62_of_114.jpg', '', 0, '2015-10-16 06:41:39', '2015-10-16 06:41:39', ''),
(53, 10, '', 'mobile_clinic_day_1_70_of_114.jpg', '', 0, '2015-10-16 06:41:40', '2015-10-16 06:41:40', ''),
(54, 10, '', 'mobile_clinic_day_1_86_of_114.jpg', '', 0, '2015-10-16 06:41:40', '2015-10-16 06:41:40', ''),
(55, 10, '', 'mobile_clinic_day_1_88_of_114.jpg', '', 0, '2015-10-16 06:41:41', '2015-10-16 06:41:41', ''),
(56, 11, '', 'mobile_clinic_day_1_91_of_114.jpg', '', 0, '2015-10-16 06:44:31', '2015-10-16 06:44:31', ''),
(57, 11, '', 'mobile_clinic_day_1_92_of_114.jpg', '', 0, '2015-10-16 06:44:31', '2015-10-16 06:44:31', ''),
(58, 11, '', 'mobile_clinic_day_1_96_of_114.jpg', '', 0, '2015-10-16 06:44:32', '2015-10-16 06:44:32', ''),
(59, 11, '', 'mobile_clinic_day_1_100_of_114.jpg', '', 0, '2015-10-16 06:44:32', '2015-10-16 06:44:32', ''),
(60, 11, '', 'mobile_clinic_day_1_102_of_114.jpg', '', 0, '2015-10-16 06:44:32', '2015-10-16 06:44:32', ''),
(61, 11, '', 'mobile_clinic_day_1_104_of_114.jpg', '', 0, '2015-10-16 06:44:33', '2015-10-16 06:44:33', ''),
(62, 11, '', 'mobile_clinic_day_1_105_of_114.jpg', '', 0, '2015-10-16 06:44:33', '2015-10-16 06:44:33', ''),
(63, 11, '', 'mobile_clinic_day_1_106_of_114.jpg', '', 0, '2015-10-16 06:44:33', '2015-10-16 06:44:33', ''),
(64, 11, '', 'mobile_clinic_day_1_110_of_114.jpg', '', 0, '2015-10-16 06:44:34', '2015-10-16 06:44:34', ''),
(65, 11, '', 'mobile_clinic_day_1_112_of_114.jpg', '', 0, '2015-10-16 06:44:34', '2015-10-16 06:44:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `title` varchar(255) DEFAULT NULL,
  `story` text,
  `summary` text,
  `publish` int(11) NOT NULL DEFAULT '1',
  `archive` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `file` varchar(160) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `news_date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `timestamp` varchar(160) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `summary` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `page_layout` varchar(1) NOT NULL DEFAULT '0',
  `website` varchar(200) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `page_image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `url_title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `page_type` varchar(1) NOT NULL DEFAULT '0',
  `page_style` varchar(1) NOT NULL DEFAULT '0',
  `add_content` varchar(1) NOT NULL DEFAULT '0',
  `overview` varchar(1) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL,
  `secure` varchar(1) NOT NULL DEFAULT '0',
  `hide` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `slug`, `category`, `summary`, `title`, `content`, `page_layout`, `website`, `icon`, `logo`, `page_image`, `file`, `url_title`, `url`, `page_type`, `page_style`, `add_content`, `overview`, `action`, `secure`, `hide`, `created`, `modified`) VALUES
(1, 'about-us', NULL, '', 'About Us', '', '0', NULL, '', '', '', '', '', NULL, '1', '0', '1', '0', NULL, '0', '0', '2016-06-16 14:18:26', '2016-06-16 14:18:26'),
(2, 'projects', NULL, '', 'Projects', '', '0', NULL, '', '', '', '', '', NULL, '2', '0', '1', '0', NULL, '0', '0', '2016-06-16 14:19:40', '2016-06-16 14:19:40'),
(3, 'sponsorship', NULL, 'We thank the following organizations for their unwavering support of the Gye Nyame mobile clinic and its associated projects. Without your help, we could accomplish none of the things we do.', 'Sponsorship', '', '0', NULL, 'sponsorship_icon.png', '', '', '', '', NULL, '3', '0', '1', '0', NULL, '0', '0', '2016-06-16 14:19:54', '2016-06-17 09:17:03'),
(4, 'get-involved', NULL, '', 'get involved', '', '0', NULL, 'get_involved_icon.png', '', '', '', '', NULL, '5', '0', '1', '0', NULL, '0', '0', '2016-06-16 14:20:06', '2016-06-17 09:13:07'),
(5, 'overview', '1', 'For over eight years, the Gye Nyame mobile clinic has been delivering professional <br />psychiatric services and providing surgical treatments to children and adults in the <br />Western and Ashanti regions of Ghana.', 'overview', '<p>\r\n						Ghana, which is located in sub-Saharan West Africa where the climate is tropical, is a developing country with more than 25 million inhabitants. The country is democratic and the political situation is stable. Seventy per cent of the population lives in rural areas where access to medical care is limited. \r\n						<br /><br />\r\n						Managed on a wholly voluntary basis, Gye Nyame mobile clinic â€“ which is the brainchild of two committed medical doctors, Dr. Ori Shwarzman and Dr. Britta Budde-Schwartzman â€“ has (at the time of writing) treated over 40,000 Ghanaians.\r\n						<br /><br />\r\n						Good news travels fast. Over a relatively short time, the success of the mobile clinic has developed into other, equally life changing, medical projects aimed at improving the health and quality of life for Ghanaâ€™s people.\r\n						<br /><br />\r\n						A communication center has been established to provide virtual access to medical resources and professionals globally in a range of medical disciplines. In 2014, work started on the establishment of a psychiatric unit and a pediatric surgery unit in a new teaching hospital near Kumasi in the Ashanti. This hospital is due to open in January 2016. \r\n						<br /><br />\r\n						In April 2014, a neonatal unit â€“ one of the first of its kind â€“ opened in Saint Patrickâ€™s Missionary Hospital in Maase-Offinso. Already, the unit has cared for over 400 infants and premature babies, to give them a good start to life in the Ghanaian forests.\r\n						<br /><br />\r\n						Our associated pediatric surgery and psychiatry teaching unit has been passing on knowledge and experience to all levels of mobile clinic staff since it opened in 2009. \r\n					</p>', '0', NULL, 'about_us_icon.png', '', '', '', '', NULL, '1', '1', '0', '0', NULL, '0', '0', '2016-06-16 17:00:44', '2016-06-16 20:08:30'),
(6, 'ori-and-britta', '1', 'Psychiatrist Dr. Ori Shwarzman and his wife, pediatric surgeon Dr. Britta Budde-Schwartzman, met at Korle Bu University in Accra, Ghana, in 1991.', 'ori and britta', '<p>\r\n							Ori was a young, graduate Israeli doctor working in the bush and Britta was a German third-year medical student. Ori stayed in Ghana for one year and Britta for two semesters before returning to their respective countries. Five years later, after getting married in Germany, they went to live in Tel Aviv, Israel. \r\n							<br /><br />\r\n							The coupleâ€™s love for Ghana never left them, and in 1999 they returned with their two-year-old daughter, Amarell, to work voluntarily for two years as general practitioners in the Ghanaian rain forests. From their base at St. John of God Hospital, which is located in the bush in the western region of Ghana, Ori and Britta realized that, although primary care was given to patients, there were no specialists to deal with specific ailments. This led them to the idea of establishing a professional mobile clinic. \r\n							<br /><br />\r\n							For those who live in the developed world, it is hard to grasp the significance and the scale of this ambition. To put it into context: when Ori and Britta started the mobile clinic, there were still only four practicing psychiatrists and one pediatric surgeon in Ghana to support a country of 25 million inhabitants.\r\n							<br /><br />\r\n							Working as general practitioners between 1999 and 2001 gave Ori and Britta a good insight into the types of diseases that existed in the Ashanti region and suitable treatment methods. They were able to treat countless infants and children with anemia, malaria, typhoid fever, diphtheria, cholera or AIDS.\r\n							<br /><br />\r\n							Tragically, they also watched helplessly as babies died in their motherâ€™s arms from curable diseases, such as incarcerated inguinal hernia, due to lack of surgeons and medical equipment. These babies might have been saved if surgery had been possible.\r\n							<br /><br />\r\n							Ori and Britta witnessed the misery of the children and adults suffering from neurological and mental disorders caused by tropical infections and AIDS. These people not only suffered from their illnesses, but were also segregated by their social group, giving them no option but to flee into the rainforest, where many of them starved.\r\n							<br /><br />\r\n							Motivated by their desire to make a difference, Ori and Britta returned to Israel in 2001 to allow Britta to complete her training in pediatric surgery. When they arrived back in Ghana in 2007, they felt ready to fulfill their now longstanding ambition to improve access to pediatric surgery and psychiatry services. After a lot of hard work and determination, the Gye Nyame specialist mobile clinic was born. \r\n							<br /><br />\r\n							By this time, Ori and Britta had three children, with whom they lived in one of the small villages in the forest without running water or electricity. In every way, these pioneering medics had become part of their local community in Ghana.\r\n							<br /><br />\r\n							Four years on, Gye Nyame mobile clinic had become self-sufficient enough to function on a daily basis without Ori and Britta. Therefore, the management was handed over to the now experienced local team and the pair returned to Israel. Since then, both doctors have returned every month to renew medicines and equipment, supervise the clinic and perform surgical operations, run seminars and workshops, and manage fundraising. \r\n							<br /><br />\r\n							Ori and Brittaâ€™s involvement with improving healthcare in Ghana is by no means complete. These days they concentrate their efforts on training and equipping others with the right knowledge, leaving them more time to achieve their ambition of extending medical provision to improve the lives of an increasing number of Ghanaians. \r\n							<br /><br />\r\n							Ori and Britta were granted the SID award for sustainability and good governance in February 2015.\r\n						</p>', '0', NULL, 'ori_britta_icon.png', '', '', '', '', NULL, '1', '1', '1', '0', NULL, '0', '0', '2016-06-16 17:04:38', '2016-06-16 20:09:31'),
(7, 'britta', '6', '', 'Britta', '<p>&quot;When we walked together for the first time, it was evening and we strolled through the market at the Korle Bu Campus of Accra University. I remember the small fire lanterns illuminating the vendors&#39; smiling faces and it was clear at that moment that we had found our soul mate.&quot;<br />\r\n<strong>Britta talking about meeting Ori for the first time.</strong></p>\r\n', '0', NULL, 'ori_britta.png', '', '', '', '', NULL, '1', '4', '0', '0', NULL, '0', '0', '2016-06-16 17:06:55', '2016-06-16 20:09:51'),
(8, 'vision-mission', '1', 'By 2020, we intend to train every doctor and nurse in the Ashanti region to treat and operate on babies and children with surgical conditions, and to manage psychiatric patients.', 'vision / mission', '', '0', NULL, 'vision_and_mission_icon.png', '', '', '', '', NULL, '1', '1', '1', '0', NULL, '0', '0', '2016-06-16 17:11:00', '2016-06-16 20:10:35'),
(9, 'vision', '8', '', 'vision', '<ol>\r\n							<li>We envisage a society where no child or infant will suffer and die from curable surgical conditions, and where no child or adult with a mental disorder is stigmatized and isolated from society.</li>\r\n							<li>We start from the premise that healthcare is a basic human right in any community. Our work is based on the belief that medical services in Ghana need to be mobile and flexible in order to reach the entire population and serve our rich variety of cultures. At the same time, every activity should be integrated, as far as possible, with the established medical infrastructure.</li>\r\n							<li>We want a future for Ghana, and Africa generally, where pediatric surgery and psychiatry, which are among the most undeveloped and unsupported medical practices here, are brought up to an effective standard. Patients who present with these often live in poverty.</li>\r\n							<li>We foresee a healthcare service, staffed by professionally trained care providers, where the affects of poverty, including malnutrition and stigmatization, are eradicated.</li>\r\n						</ol>', '0', NULL, 'vision.png', '', '', '', '', NULL, '1', '1', '0', '0', NULL, '0', '0', '2016-06-16 17:12:28', '2016-06-16 20:11:59'),
(10, 'mission', '8', '\'Gye Nyame\' means strength. We use our strength to stand up for the most vulnerable in the community, and give them the respect and support they deserve. We strive to:', 'Mission', '<ol>\r\n							<li>Give sick children the chance to realize their potential by restoring them to balanced health.</li>\r\n							<li>Ensure that every psychiatric patient has the most fitting treatment for his/her condition in order to lead a fulfilling and meaningful live.</li>\r\n							<li>Reduce by 50 per cent mortality and morbidity in the under-fives from treatable diseases by 2020.</li>\r\n							<li>Allow our patients the chance to escape their isolation by involving family and community members in their treatment and aftercare.</li>\r\n							<li>Close the gap between the vulnerable and the poor in the community and the rest of society.</li>\r\n							<li>Help people to help themselves.</li>\r\n						</ol>', '0', NULL, 'mission.png', '', '', '', '', NULL, '1', '1', '0', '0', NULL, '0', '0', '2016-06-16 17:13:44', '2016-06-16 20:12:59'),
(11, 'ori', '8', '', 'Ori', '<p>&quot;We chose to live and work in Ghana because it is a peace-loving, democratic and stable country, with generous people. And also because Britta and I met there&hellip;&quot;<br />\r\n<strong>Ori speaking about his love of Ghana</strong></p>\r\n', '0', NULL, 'ori_britta-0.png', '', '', '', '', NULL, '1', '4', '0', '0', NULL, '0', '0', '2016-06-16 17:16:06', '2016-06-16 19:00:51'),
(12, 'gye-nyame-mobile-clinic', '2', 'We use our strength to stand up for the most vulnerable in the community', 'Gye Nyame mobile clinic', '<p>\r\n						From its base at Saint Patrick\'s Missionary Hospital in Maase-Offinso, Gye Nyame mobile clinic, which is the result of Ori and Brittaâ€™s ambition, provides specialist medical care to impoverished people living in Ghanaâ€™s rural areas.\r\n						<br /><br />\r\n						Each year the clinic treats more than 5000 patients â€“ most on regular basis â€“ and performs around 500 operations on (mainly) children under five years of age. It serves a population of approximately 600,000 Ghanaian inhabitants who either cannot afford to travel to hospital, or whose transportation is inadequate during the rainy season when the paths to villages become flooded.\r\n						<br /><br />\r\n						The aim is to relieve the strain on mental health and pediatric services in Ghanaâ€™s overcrowded and under resourced hospitals. Where possible, patients are treated on an outpatient basis and only referred to hospital if they require extended medical treatment. There is a special fund for families who can\'t afford urgent operations for their child.\r\n						<br /><br />\r\n						Setting out from Saint Patrick\'s, the mobile clinic drives every day to a health post in a remote area â€“ there are 11 health posts in total â€“ to treat local people. The mobile clinic has a fixed three-month schedule prepared in advance so that the staff at the health posts know when it is returning to their area. \r\n						<br /><br />\r\n						The pediatric surgical team treats malformed babies, children with infected tropical wounds, burns and fractures, and adolescents with various tumors. Minor operations are performed in the villages, sometimes on a simple bench, and major surgery cases are taken to Saint Patrickâ€™s. The psychiatric team treats patients with epilepsy (many due to infectious diseases, including malaria), children with autism, mental disability caused by abuse as well as psychosis, depression or drug-abuse. \r\n						<br /><br />\r\n						Emotional support and education are offered to the families of patients, to help with the reintegration and rehabilitation of their love ones.\r\n					</p>', '0', NULL, 'projects_icon.png', '', '', '', '', NULL, '2', '1', '1', '0', NULL, '0', '0', '2016-06-17 00:38:48', '2016-06-17 00:38:48'),
(13, 'hopexchange-hospital', '2', 'Missionary hospital with a specialist center for academic teaching', 'HopeXchange Hospital', '<p>\r\n						We are looking forward to the forthcoming HopeXchange teaching hospital, which is due to open its gates on January 2016. This fantastic new facility, based at Fankyenebra in Kumasi, will also be home to Ori and Brittaâ€™s much anticipated psychiatric and pediatric surgery units. \r\n						<br /><br />\r\n						Whereas previously severe cases for pediatric surgery or psychiatric patients with difficult problems were hospitalized in St. Patrick\'s and followed up in the mobile clinic later, they will now have access to this new globally connected center of excellence in pediatric surgery, training and research.\r\n						<br /><br />\r\n						In addition, there will be connection with the international psychiatry community to provide continuous psychiatric education, therapy and research. This will serve as a model for other centers of competence in developing countries. \r\n						<br /><br />\r\n						Whereas Saint Patrick\'s missionary hospital is in the north of the Ashanti region, the new HopeXchange hospital is in the bush over 30 km away in the south-west. It will serve a catchment area of over half a million people, principally in disadvantaged areas of the forests of the Ashanti and neighboring Western region. It is almost entirely organized by the Catholic health services, but employs staff on a government salary. After the pediatric surgery units and the psychiatry are established, other specialties are planned to follow. \r\n						<br /><br />\r\n						This new state-of-the-art child-oriented medical facility will house the infrastructure and equipment needed to perform pediatric surgeries, including all pre- and post-operative care. It will ensure that Gye Nyame can continue with its medical mission for at least the next 20 years of serving the local catchment population. \r\n						<br /><br />\r\n						HopeXchange will have an outpatient department and an emergency department, with eight consultation rooms equipped for small procedures and comprehensive IT access. A modern laboratory and a radiology department, together with a pharmacy, will serve three operating theaters, and female, male and children\'s wards.\r\n						<br /><br />\r\n						Ori and Brittaâ€™s teaching seminars and workshops, which have previously been held in St. Patrick\'s missionary hospital, will also move across to the new hospital. Teaching of junior residents, medical assistants, nurses and nurse assistants is a combination of practical bedside and hands-on training. The new teaching facility will provide workshops for medical and paramedical professionals, including general practitioners, pediatricians, nurses, students and health workers for the villages. \r\n						<br /><br />\r\n						A neonatal unit is planned and we will keep you informed of its progress on this website â€“ so please be sure to visit again to keep updated on all our exciting developments!\r\n						<br /><br />\r\n						The last seminar in psychiatry was held in April 2015 with 80 psychiatric nurses from the Ashanti region in collaboration with Ghanaâ€™s Ministry of Health.\r\n					</p>', '0', NULL, 'projects_hopexchange_icon.png', '', '', '', '', NULL, '2', '1', '0', '0', NULL, '0', '0', '2016-06-17 00:40:48', '2016-06-17 00:40:48'),
(14, 'communication-center', '2', 'Bringing medical expertise to Ghana virtually from across the globe', 'Communication center', '<p>\r\n						People heard about the success of the mobile clinic and started bringing ailing family members from all over Ghana, as well as the neighboring Ivory Coast and Mali. Many of the patients did not even require pediatric surgery or psychiatry, but they brought them nonetheless. \r\n						<br /><br />\r\n						These afflicted people needed specialist medical care, such as the one-year-old boy with a horn-shaped forehead, and the nine-month-old baby girl whose leg deformity required her to be sent to Florida in the USA for treatment.\r\n						<br /><br />\r\n						In an effort to help, Britta started to consult online with specialists across the globe, including Israel, the USA, the UK, Belgium, Germany and Spain. The response was fantastic and over time a body of knowledge was gathered in a wide area of medical disciplines. \r\n						<br /><br />\r\n						This virtual center is now well established and has strong links to overseas medical specialists who provide expert knowledge from their locations.\r\n					</p>', '0', NULL, 'projects_communication_icon.png', '', '', '', '', NULL, '2', '1', '0', '0', NULL, '0', '0', '2016-06-17 00:42:09', '2016-06-17 00:42:09'),
(15, 'patient-stories', '2', 'We have met and treated so many wonderful people over the years that we could fill volumes with their personal stories. Here are just a few of them to give you a little insight into our world at Gye Nyame.', 'Patient stories', '', '0', NULL, 'projects_patient_icon.png', '', '', '', '', NULL, '2', '5', '1', '0', NULL, '0', '0', '2016-06-17 00:50:17', '2016-06-17 00:50:17'),
(16, 'meet-the-gye-nyame-team', '12', '', 'Meet the Gye Nyame team', '', '0', NULL, 'team_icon.png', '', '', '', '', NULL, '2', '2', '1', '0', NULL, '0', '0', '2016-06-17 00:56:35', '2016-06-17 00:56:35'),
(17, 'nana-mensah-driver', '16', '', 'Nana Mensah, driver', '', '0', NULL, '', '', 'nana_mensah.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 00:57:57', '2016-06-17 00:57:57'),
(18, 'lydia-signye-nurse-assistant', '16', '', 'Lydia Signye, nurse assistant', '', '0', NULL, '', '', 'lydia.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 00:58:31', '2016-06-17 00:58:31'),
(19, 'gideon-oduro-amankwah-psychiatric-nurse', '16', '', 'Gideon Oduro-Amankwah, psychiatric nurse', '', '0', NULL, '', '', 'gideon.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 00:59:01', '2016-06-17 00:59:01'),
(20, 'alexander-annor-boafo-psychiatric-nurse', '16', '', 'Alexander Annor Boafo, psychiatric nurse', '', '0', NULL, '', '', 'alex.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 00:59:36', '2016-06-17 00:59:36'),
(21, 'dr-britta-budde-schwartzman-pediatric-surgeon', '16', '', 'Dr. Britta Budde-Schwartzman, pediatric surgeon', '', '0', NULL, '', '', 'dr_britta.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 01:00:21', '2016-06-17 01:00:21'),
(22, 'dr-ori-shwarzman-psychiatrist', '16', '', 'Dr. Ori Shwarzman, psychiatrist', '', '0', NULL, '', '', 'dr_ori.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 01:00:57', '2016-06-17 01:00:57'),
(23, 'mr-zaglegpou-ngmentiru-medical-assistant', '16', '', 'Mr. Zaglegpou Ngmentiru, medical assistant', '', '0', NULL, '', '', 'dr_zaglegpou.jpg', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 01:01:48', '2016-06-17 01:01:48'),
(24, 'dr-felicia-okyere-pediatrician', '16', '', 'Dr. Felicia Okyere, pediatrician', '', '0', NULL, '', '', '', '', '', NULL, '2', '0', '0', '0', NULL, '0', '0', '2016-06-17 01:02:09', '2016-06-17 01:02:09'),
(25, 'risen-from-the-ashes', '15', '', 'Risen from the ashes', '<p>\r\n						      		A young woman brought her shy 15-year-old son, Evans, who glanced at the Obronis (white people) with mistrust. Evan showed me his open wound, which stretched down the entire outer side of his dirty and infected right leg. His mother explained that he had fallen into a fire two months ago and that the wound would not heal. I thought to myself: it is a wonder that he survived the burn let alone the blood poisoning that is now plaguing him! We immediately began to clean the wound and prescribed him several medications. By the time he left, the truth of Evanâ€™s case had surfaced; he has epilepsy and during one of his attacks he fell into the fire. And so began his anti-epilepsy treatment as well.\r\n									<br /><br />\r\n									Evan, who had been thrown out of school due to his apparent strange behavior long before he was burnt, is now in his twenties. He still attends the mobile clinic every month and, having completed his education, helps his father on their farm.\r\n						      	</p>', '0', NULL, '', '', 'Evans_epilepsy_and_his_wounds.jpg', '', '', NULL, '2', '5', '0', '0', NULL, '0', '0', '2016-06-17 01:05:11', '2016-06-17 01:05:11'),
(26, 'a-love-like-no-other', '15', '', 'A love like no other', '<p>\r\n							      	A grandmother brought her seven-year-old grandchild. I love these small and muscular (from the hard field work) grandmothers who are usually no more than 50 years old. They bring up at least eight grandchildren at a time, with who knows how few Ghana cedis, and still smile even after seeing all the miseries of life and death. This womanâ€™s granddaughter, Adjoa, had a huge tumor at the opening of her urethra and so I scheduled an appointment for surgery. When I mentioned to her that a parent must sign the papers to consent to the surgery, she looked at me sadly and told me that Adjoaâ€™s mother had died the previous year from AIDS and that her father had disappeared. I asked myself: what will happen to all these children when the grandmother leaves our world? On a happier note, however, thanks to her incredible grandmother, little Adjoa  had surgery and is now healthy.\r\n							      </p>', '0', NULL, '', '', 'mobile_clinic_day_2.jpg', '', '', NULL, '2', '5', '0', '0', NULL, '0', '0', '2016-06-17 01:06:02', '2016-06-17 01:06:02'),
(27, 'a-fair-exchange', '15', '', 'A fair exchange', '<p>\r\n							      	Nana is one of the oldest people in his village and he comes to our mobile clinic every two weeks. He has arthritis in his knees and back, and has been prescribed several medications. We watch him as he walks slowly with his back bent from his hut to our health post and think he could well be the 105 years he insists he is. One day Nana explained he had no money, so we agreed on a bunch of plantains (big bananas you have to fry or to cook in order to eat them) in exchange for the medicine. Satisfied, Nana crept back to his hut. Later that day, we were moving the mobile clinic car to the exit of the village when suddenly we saw something big jumping from the bush into the road. At first, we thought it was an animal, maybe a monkey, and then we realized it was Nana with the promised bunch of plantains on his back, which was not bent and he was not walking slowly. He was smilingâ€¦\r\n							      </p>', '0', NULL, '', '', 'our_constant_patient_Papa_Issa.jpg', '', '', NULL, '2', '5', '0', '0', NULL, '0', '0', '2016-06-17 01:07:07', '2016-06-17 01:07:07'),
(28, 'supertech', '3', '', 'Supertech', '<p>Supertech, the information and communications technology (ICT) solutions provider based in Ghana, provides 50 per cent of the funding for the Gye Nyame mobile clinic. We owe a debt of gratitude to the continuous support we have received from STL since 2007, including the unfailing interest of its senior management.</p>', '0', NULL, '', 'supertech_logo.png', '', '', '', 'http://www.supertechghana.com/', '3', '0', '0', '0', NULL, '0', '0', '2016-06-17 08:41:30', '2016-06-17 08:41:30'),
(29, 'amandi', '3', '', 'Amandi', '<p>\r\n							Amandiâ€™s construction expertise is unrivalled in Ghana, where we are a leading civil and marine engineering solutions provider with the capabilities to design, build and manage large-scale infrastructure projects and so meet the requirements of major organizations.</p>', '0', NULL, '', 'amandi_logo.png', '', '', '', 'http://www.amandi.com', '3', '0', '0', '0', NULL, '0', '0', '2016-06-17 08:42:43', '2016-06-17 08:42:43'),
(30, 'help-alliance', '3', '', 'help alliance', '<p>\r\n							help alliance is a charitable foundation, which was set up in 1999 by 13 employees of the German airline, Lufthansa. Its pilots, cabin crew and other employees have raised funds to buy much needed surgical equipment for Gye Nyame. \r\n							<br /><br />\r\n							Special thanks go to Iris for visiting us in Offinso. She had responsibility for ensuring that the donated funds were used appropriately.</p>', '0', NULL, '', 'help_alliance.png', '', '', '', 'http://www.helpalliance.org', '3', '0', '0', '0', NULL, '0', '0', '2016-06-17 08:44:00', '2016-06-17 08:44:00'),
(31, 'african-rainbow-foundation', '3', '', 'African-rainbow foundation', '<p>This German non-governmental organization (NGO) is dedicated to development aid for Africa and its children, and supports several educational and health projects throughout the continent. It has raised funds for our new infant and preterm units, as well as for our new vehicle. What a great start to life you have given the most vulnerable of all and we thank you for your generosity.</p>', '0', NULL, '', 'arf_logo.png', '', '', '', 'http://www.african-rainbow.org', '3', '0', '0', '0', NULL, '0', '0', '2016-06-17 08:45:24', '2016-06-17 08:45:24'),
(32, 'rotary-international', '3', '', 'Rotary International', '<p>German and Israeli Rotary Club branches are longstanding supporters of Gye Nyame. Our first mobile clinic vehicle was bought using donations from these wonderful clubs. With additional support from clubs in Ghana and the US, they are now raising funds to buy new equipment for childrenâ€™s surgical operations.</p>', '0', NULL, '', 'rotary_logo.png', '', '', '', 'http://www.rotary.org', '3', '0', '0', '0', NULL, '0', '0', '2016-06-17 08:46:45', '2016-06-17 08:46:45'),
(33, 'fundraising', '4', '', 'fundraising', '<p>\r\n									Patient numbers and surgery requirements are increasing all the time. Gye Nyame mobile clinic and the associated projects rely on donations from generous supporters to ensure that our essential work continues.\r\n									<br /><br />\r\n									We also need to raise funds for the new pediatric and psychiatry units that are being set up at HopeXchange Hospital. As well as paying for the construction and installation of the units, we need to buy surgical instruments and medications.\r\n									<br /><br />\r\n									The interminable problem we face is poverty. This especially affects the children who require pediatric surgery, where the parentsâ€™ lack of money means they cannot afford the health insurance needed to buy medications or pay for an operation. \r\n									<br /><br />\r\n									While we continue to seek a lasting solution, we have, meanwhile, set up a special fund to ensure that as many children as possible get the surgical care they deserve. In 2014, we were delighted to inform our readers that 53 children underwent successful surgery thanks to those who kindly donated to this fund.\r\n								</p><br /><br />', '0', NULL, '', '', '', '', '', NULL, '5', '1', '0', '0', NULL, '0', '0', '2016-06-17 09:19:41', '2016-06-17 09:19:41'),
(34, 'how-to-make-a-donation', '4', '', 'How to make a donation', '<p><strong>The foundation for child health and mental health research in Israel and in Ghana</strong>\r\n						<br /><br />\r\n						<strong>Bank Leumi, Branch Ahad ha\'am</strong><br />\r\n						<strong>IBAN:</strong> IL 890 10 811 00000<br />\r\n						<strong>SWIFT:</strong> LUMIILILXXX\r\n						</p><br />\r\n						<h4>Where would you like your donation to be sent?</h4>\r\n						<div class=\"large-12 donation-types text-center\">\r\n							<span class=\"donation-type\"><span class=\"fa fa-square\"></span> Mobile clinic</span>\r\n							<span class=\"donation-type\"><span class=\"fa fa-square\"></span> Hospital equipment</span>\r\n							<span class=\"donation-type\"><span class=\"fa fa-square\"></span> Children\'s fund</span>\r\n						</div>', '0', NULL, 'make_donation.png', '', '', '', '', NULL, '5', '4', '0', '0', NULL, '0', '0', '2016-06-17 09:22:16', '2016-06-17 09:22:16'),
(35, 'newsletter', NULL, '', 'Newsletter', '', '0', NULL, '', '', '', '', '', NULL, '6', '0', '1', '0', NULL, '0', '0', '2016-06-17 09:54:50', '2016-06-17 09:54:50'),
(36, 'links-to-books', NULL, '', 'Links to books', '', '0', NULL, '', '', '', '', '', NULL, '7', '0', '1', '0', NULL, '0', '0', '2016-06-17 09:55:05', '2016-06-17 09:55:05'),
(37, 'hebrew-isha-shel-or-jareah-arie-nir-publishers-ltd', '36', '', 'Hebrew: Isha shel or jareah. Arie Nir Publishers Ltd', '', '0', NULL, '', '', '', '', 'A Woman of Moonlight, Ori Shwarzman, 2002,', '#', '7', '0', '0', '0', NULL, '0', '0', '2016-06-17 09:56:53', '2016-06-17 09:56:53'),
(38, 'german-serie-pieper', '36', '', 'German, Serie Pieper', '', '0', NULL, '', '', '', '', 'Mondscheinmaedchen, Ori Shwarzman, 2002,', '#', '7', '0', '0', '0', NULL, '0', '0', '2016-06-17 09:57:20', '2016-06-17 09:57:20'),
(39, 'hebrew-rofe-lavan-elim-shchorim-arie-nir-publishers-ltd', '36', '', 'Hebrew: Rofe lavan, elim shchorim, Arie Nir Publishers Ltd.', '', '0', NULL, '', '', '', '', 'White doctor, black gods , Ori Shwarzman, 2007,', '#', '7', '0', '0', '0', NULL, '0', '0', '2016-06-17 09:57:43', '2016-06-17 09:57:43'),
(40, 'hebrew-kfar-ha-machshefot-babel-publishers', '36', '', 'Hebrew: Kfar ha machshefot, Babel publishers', '', '0', NULL, '', '', '', '', 'The witches village, Ori Shwarzman, 2012,', '#', '7', '0', '0', '0', NULL, '0', '0', '2016-06-17 09:58:10', '2016-06-17 09:58:10'),
(41, 'contact', NULL, '', 'Contact', '', '0', NULL, '', '', '', '', '', NULL, '4', '0', '0', '0', NULL, '0', '0', '2016-06-17 10:07:10', '2016-06-17 10:07:10'),
(42, 'contact-info', '41', '', 'contact info', '<p>\r\n						<strong>Gye Nyame Project on Pediatric Surgery and Psychiatry</strong><br />\r\n						Dr. Ori Shwarzman and Dr. Britta Budde-Schwartzman<br /><br />\r\n						St. Patrick\'s Hospital<br />\r\n						Maase-Offinso<br />\r\n						P.O. Box 17<br />\r\n						Ashanti Region<br />\r\n						Ghana<br /><br />\r\n						<strong>Dr. Ori Shwarzman, Psychiatrist</strong><br />\r\n						(+233) 245 138359 or (+972) 502603763<br /><br />\r\n						<strong>Dr. Britta Budde-Schwartzman, Pediatric Surgeon</strong><br />\r\n						(+233) 543434521 or (+972) 502603768<br />\r\n						\r\n						<br />\r\n						<strong>Email:</strong> <a href=\"mailto:oribritta@gmail.com\">oribritta@gmail.com</a>\r\n					</p>', '0', NULL, '', '', '', '', '', NULL, '4', '0', '0', '0', NULL, '0', '0', '2016-06-17 10:09:14', '2016-06-17 10:09:14'),
(43, 'test', '35', '', 'test', '<p>test&nbsp;</p>\r\n', '0', NULL, '', '', 'bayport_1-0.jpg', 'empty_locations.pdf', '', NULL, '6', '0', '0', '0', NULL, '0', '0', '2016-07-09 12:04:55', '2016-07-09 12:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `slug`, `name`, `created`, `modified`) VALUES
(1, 'education', 'Education', '2015-10-05 00:00:00', '2015-10-05 00:00:00'),
(2, 'medical', 'Medical', '2015-10-05 00:00:00', '2015-10-05 00:00:00'),
(3, 'local-support', 'Local Support', '2015-10-05 00:00:00', '2015-10-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2012-07-03 20:15:14', '2012-07-03 20:15:14'),
(2, 'User', '2012-07-11 18:38:46', '2012-07-11 18:38:46'),
(3, 'Clients', '2015-06-17 10:58:29', '2015-06-17 10:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(160) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role_id`, `created`, `modified`) VALUES
(1, 'Administrator', 'admin', '45f54f46144393e5be431a9092857b7f49782128', 1, '2012-07-03 20:20:22', '2015-01-09 03:08:34'),
(2, 'Gye Nyame', 'GN_admin', '8edaa8dbf2fa68e1b9ec6c8a64d5222e90e9cf8c', 1, '2016-02-02 07:50:36', '2016-02-02 07:50:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=893;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
