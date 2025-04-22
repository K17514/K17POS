-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 02:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `point_of_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `icon`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Makanan', '1744378920_1744378920_e9b4f73cb85637dfeaca.png', '2025-04-08 10:07:28', NULL, '2025-04-11 08:42:00', 1, NULL, NULL),
(2, 'Minuman', '169965.png', '2025-04-08 18:19:06', NULL, '2025-04-11 11:02:09', 1, NULL, NULL),
(7, 'Dessert', '1745122375_c11a01bc1d68a6d680ae8a9168bdcf4b.png', '2025-04-20 11:12:55', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE `log_activity` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `what_happens` text NOT NULL,
  `happens_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`id_log`, `id_user`, `what_happens`, `happens_at`, `ip_address`) VALUES
(377, 1, 'User accessed home page.', '2025-04-16 11:39:32', '36.68.182.54'),
(378, 1, 'User accessed home page.', '2025-04-16 11:39:39', '36.68.182.54'),
(379, 1, 'User logged out', '2025-04-16 11:41:50', '36.68.182.54'),
(380, 1, 'User logged in', '2025-04-16 11:42:02', '36.68.182.54'),
(381, 1, 'User accessed home page.', '2025-04-16 11:42:05', '36.68.182.54'),
(382, 1, 'User accessed home page.', '2025-04-16 11:42:32', '36.68.182.54'),
(383, 1, 'User accessed home page.', '2025-04-16 11:42:34', '36.68.182.54'),
(384, 1, 'User accessed home page.', '2025-04-16 11:54:41', '36.68.182.54'),
(385, 1, 'User accessed home page.', '2025-04-16 12:14:09', '36.68.182.54'),
(386, 1, 'User accessed home page.', '2025-04-16 12:17:23', '36.68.182.54'),
(387, 1, 'User accessed home page.', '2025-04-16 12:17:40', '36.68.182.54'),
(388, 1, 'User accessed home page.', '2025-04-16 12:20:19', '36.68.182.54'),
(389, 1, 'User accessed home page.', '2025-04-16 12:20:38', '36.68.182.54'),
(390, 1, 'User logged out', '2025-04-16 12:20:42', '36.68.182.54'),
(391, 1, 'User logged in', '2025-04-16 17:07:10', '139.194.224.160'),
(392, 1, 'User accessed home page.', '2025-04-16 17:07:11', '139.194.224.160'),
(393, 1, 'User accessed home page.', '2025-04-16 17:56:07', '139.194.224.160'),
(394, 1, 'User accessed home page.', '2025-04-16 18:07:21', '139.194.224.160'),
(395, 1, 'User accessed home page.', '2025-04-16 20:40:49', '139.194.224.160'),
(396, 1, 'User logged out', '2025-04-16 20:40:56', '139.194.224.160'),
(397, 12, 'User accessed home page.', '2025-04-16 20:41:37', '139.194.224.160'),
(398, 12, 'User logged out', '2025-04-16 20:42:09', '139.194.224.160'),
(399, 1, 'User logged in', '2025-04-16 20:42:21', '139.194.224.160'),
(400, 1, 'User accessed home page.', '2025-04-16 20:42:22', '139.194.224.160'),
(401, 1, 'User accessed home page.', '2025-04-16 20:45:14', '139.194.224.160'),
(402, 1, 'User accessed home page.', '2025-04-16 20:45:35', '139.194.224.160'),
(403, 1, 'User accessed home page.', '2025-04-16 20:58:57', '139.194.224.160'),
(404, 1, 'User accessed home page.', '2025-04-16 21:15:02', '139.194.224.160'),
(405, 1, 'User accessed home page.', '2025-04-16 21:30:51', '139.194.224.160'),
(406, 1, 'User accessed home page.', '2025-04-16 22:14:55', '139.194.224.160'),
(407, 1, 'User accessed home page.', '2025-04-16 22:29:36', '139.194.224.160'),
(408, 1, 'User accessed home page.', '2025-04-16 22:36:51', '139.194.224.160'),
(409, 1, 'User accessed home page.', '2025-04-16 22:36:55', '139.194.224.160'),
(410, 1, 'User accessed home page.', '2025-04-16 22:37:03', '139.194.224.160'),
(411, 1, 'User accessed home page.', '2025-04-16 23:22:22', '139.194.224.160'),
(412, 1, 'User logged in', '2025-04-17 09:01:26', '36.68.182.54'),
(413, 1, 'User accessed home page.', '2025-04-17 09:01:29', '36.68.182.54'),
(414, 13, 'User accessed home page.', '2025-04-17 09:05:13', '36.68.182.54'),
(415, 13, 'User accessed home page.', '2025-04-17 09:06:26', NULL),
(416, 13, 'User accessed home page.', '2025-04-17 09:07:12', NULL),
(417, 13, 'User logged out', '2025-04-17 09:07:45', NULL),
(418, 14, 'User accessed home page.', '2025-04-17 09:07:59', NULL),
(419, 14, 'User logged out', '2025-04-17 09:11:14', NULL),
(420, 1, 'User logged in', '2025-04-17 09:11:24', NULL),
(421, 1, 'User accessed home page.', '2025-04-17 09:11:24', NULL),
(422, 1, 'User accessed home page.', '2025-04-17 09:13:31', NULL),
(423, 1, 'User logged out', '2025-04-17 09:13:35', NULL),
(424, 1, 'User logged in', '2025-04-17 09:20:35', NULL),
(425, 1, 'User accessed home page.', '2025-04-17 09:20:35', NULL),
(426, 1, 'User accessed home page.', '2025-04-17 09:21:05', NULL),
(427, 1, 'User accessed home page.', '2025-04-17 09:29:57', NULL),
(428, 1, 'User accessed home page.', '2025-04-17 09:38:47', NULL),
(429, 1, 'User logged out', '2025-04-17 09:38:59', NULL),
(430, 16, 'User accessed home page.', '2025-04-17 09:39:38', NULL),
(431, 16, 'User accessed home page.', '2025-04-17 09:53:08', '36.68.182.54'),
(432, 16, 'User logged out', '2025-04-17 09:53:23', '36.68.182.54'),
(433, 15, 'User logged in', '2025-04-17 09:53:38', '36.68.182.54'),
(434, 15, 'User accessed home page.', '2025-04-17 09:53:41', '36.68.182.54'),
(435, 15, 'User accessed home page.', '2025-04-17 09:55:28', '36.68.182.54'),
(436, 15, 'User accessed home page.', '2025-04-17 09:56:10', '36.68.182.54'),
(437, 15, 'User accessed home page.', '2025-04-17 09:57:32', NULL),
(438, 15, 'User logged out', '2025-04-17 09:57:57', NULL),
(439, 1, 'User logged in', '2025-04-17 09:58:05', NULL),
(440, 1, 'User accessed home page.', '2025-04-17 09:58:05', NULL),
(441, 1, 'User logged out', '2025-04-17 09:58:45', '36.68.182.54'),
(442, 15, 'User logged in', '2025-04-17 09:59:38', NULL),
(443, 15, 'User accessed home page.', '2025-04-17 09:59:38', NULL),
(444, 15, 'User accessed home page.', '2025-04-17 10:00:50', NULL),
(445, 15, 'User accessed home page.', '2025-04-17 10:01:51', NULL),
(446, 15, 'User logged out', '2025-04-17 10:02:13', NULL),
(447, 17, 'User accessed home page.', '2025-04-17 10:02:29', NULL),
(448, 17, 'User accessed home page.', '2025-04-17 10:02:43', '36.68.182.54'),
(449, 17, 'User accessed home page.', '2025-04-17 10:15:52', '36.68.182.54'),
(450, 17, 'User accessed home page.', '2025-04-17 10:19:14', '36.68.182.54'),
(451, 1, 'User logged in', '2025-04-17 20:27:08', '139.194.224.160'),
(452, 1, 'User accessed home page.', '2025-04-17 20:27:09', '139.194.224.160'),
(453, 1, 'User accessed home page.', '2025-04-17 20:27:49', '139.194.224.160'),
(454, 1, 'User logged out', '2025-04-17 20:27:54', '139.194.224.160'),
(455, 18, 'User accessed home page.', '2025-04-17 20:28:14', '139.194.224.160'),
(456, 18, 'User accessed home page.', '2025-04-17 20:31:07', '139.194.224.160'),
(457, 18, 'User accessed home page.', '2025-04-17 20:31:31', '139.194.224.160'),
(458, 18, 'User logged out', '2025-04-17 20:36:16', '139.194.224.160'),
(459, 19, 'User accessed home page.', '2025-04-17 20:39:55', '139.194.224.160'),
(460, 19, 'User accessed home page.', '2025-04-17 20:55:42', '139.194.224.160'),
(461, 19, 'User accessed home page.', '2025-04-17 21:06:34', '139.194.224.160'),
(462, 19, 'User accessed home page.', '2025-04-17 21:06:50', '139.194.224.160'),
(463, 20, 'User accessed home page.', '2025-04-17 23:11:24', '139.194.224.160'),
(464, 21, 'User accessed home page.', '2025-04-17 23:12:45', '139.194.224.160'),
(465, 21, 'User accessed home page.', '2025-04-17 23:15:21', '139.194.224.160'),
(466, 20, 'User accessed home page.', '2025-04-17 23:16:17', '139.194.224.160'),
(467, 20, 'User accessed home page.', '2025-04-17 23:20:17', '139.194.224.160'),
(468, 20, 'User accessed home page.', '2025-04-17 23:22:20', '139.194.224.160'),
(469, 21, 'User logged out', '2025-04-17 23:23:11', '139.194.224.160'),
(470, 15, 'User logged in', '2025-04-17 23:23:22', '139.194.224.160'),
(471, 15, 'User accessed home page.', '2025-04-17 23:23:23', '139.194.224.160'),
(472, 15, 'User logged out', '2025-04-17 23:23:45', '139.194.224.160'),
(473, 1, 'User logged in', '2025-04-17 23:23:58', '139.194.224.160'),
(474, 1, 'User accessed home page.', '2025-04-17 23:23:58', '139.194.224.160'),
(475, 20, 'User accessed home page.', '2025-04-17 23:26:37', '139.194.224.160'),
(476, 20, 'User accessed home page.', '2025-04-17 23:27:42', '139.194.224.160'),
(477, 20, 'User accessed home page.', '2025-04-17 23:30:39', '139.194.224.160'),
(478, 20, 'User accessed home page.', '2025-04-17 23:30:44', '139.194.224.160'),
(479, 20, 'User accessed home page.', '2025-04-17 23:33:05', '139.194.224.160'),
(480, 20, 'User accessed home page.', '2025-04-17 23:35:59', '139.194.224.160'),
(481, 20, 'User accessed home page.', '2025-04-17 23:36:38', '139.194.224.160'),
(482, 20, 'User accessed home page.', '2025-04-17 23:39:05', '139.194.224.160'),
(483, 20, 'User accessed home page.', '2025-04-17 23:43:46', '139.194.224.160'),
(484, 20, 'User accessed home page.', '2025-04-17 23:43:56', '139.194.224.160'),
(485, 1, 'User accessed home page.', '2025-04-18 00:00:48', '139.194.224.160'),
(486, 20, 'User logged out', '2025-04-18 00:02:28', '139.194.224.160'),
(487, 1, 'User logged out', '2025-04-18 00:02:35', '139.194.224.160'),
(488, 15, 'User logged in', '2025-04-18 00:38:23', '139.194.224.160'),
(489, 15, 'User accessed home page.', '2025-04-18 00:38:23', '139.194.224.160'),
(490, 15, 'User accessed home page.', '2025-04-18 00:46:24', '139.194.224.160'),
(491, 15, 'User accessed home page.', '2025-04-18 00:58:43', '139.194.224.160'),
(492, 15, 'User accessed home page.', '2025-04-18 00:59:01', '139.194.224.160'),
(493, 15, 'User accessed home page.', '2025-04-18 00:59:46', '139.194.224.160'),
(494, 15, 'User accessed home page.', '2025-04-18 00:59:49', '139.194.224.160'),
(495, 15, 'User logged in', '2025-04-18 11:25:11', '139.194.179.148'),
(496, 15, 'User accessed home page.', '2025-04-18 11:25:12', '139.194.179.148'),
(497, 15, 'User logged in', '2025-04-18 14:22:19', '139.194.179.148'),
(498, 15, 'User accessed home page.', '2025-04-18 14:22:20', '139.194.179.148'),
(499, 22, 'User accessed home page.', '2025-04-18 15:02:52', '139.194.179.148'),
(500, 22, 'User accessed home page.', '2025-04-18 15:03:15', '139.194.179.148'),
(501, 15, 'User accessed home page.', '2025-04-18 15:04:19', '139.194.179.148'),
(502, 15, 'User accessed home page.', '2025-04-18 15:04:32', '139.194.179.148'),
(503, 15, 'User accessed home page.', '2025-04-18 15:04:39', '139.194.179.148'),
(504, 15, 'User accessed home page.', '2025-04-18 15:05:07', '139.194.179.148'),
(505, 15, 'User logged out', '2025-04-18 15:06:17', '139.194.179.148'),
(506, 1, 'User logged in', '2025-04-18 15:06:58', '139.194.179.148'),
(507, 1, 'User accessed home page.', '2025-04-18 15:06:58', '139.194.179.148'),
(508, 1, 'User logged out', '2025-04-18 15:07:14', '139.194.179.148'),
(509, 2, 'User logged in', '2025-04-18 15:07:22', '139.194.179.148'),
(510, 2, 'User accessed home page.', '2025-04-18 15:07:23', '139.194.179.148'),
(511, 2, 'User logged out', '2025-04-18 15:07:36', '139.194.179.148'),
(512, 1, 'User logged in', '2025-04-18 15:08:05', '139.194.179.148'),
(513, 1, 'User accessed home page.', '2025-04-18 15:08:06', '139.194.179.148'),
(514, 1, 'User logged out', '2025-04-18 15:08:31', '139.194.179.148'),
(515, 3, 'User logged in', '2025-04-18 15:08:44', '139.194.179.148'),
(516, 3, 'User accessed home page.', '2025-04-18 15:08:45', '139.194.179.148'),
(517, 3, 'User accessed home page.', '2025-04-18 15:11:11', '139.194.179.148'),
(518, 3, 'User accessed home page.', '2025-04-18 15:12:50', '139.194.179.148'),
(519, 3, 'User accessed home page.', '2025-04-18 15:14:49', '139.194.179.148'),
(520, 3, 'User accessed home page.', '2025-04-18 15:16:29', '139.194.179.148'),
(521, 3, 'User accessed home page.', '2025-04-18 15:17:50', '139.194.179.148'),
(522, 3, 'User accessed home page.', '2025-04-18 15:18:05', '139.194.179.148'),
(523, 3, 'User accessed home page.', '2025-04-18 15:23:04', '139.194.179.148'),
(524, 3, 'User accessed home page.', '2025-04-18 15:24:02', '139.194.179.148'),
(525, 3, 'User accessed home page.', '2025-04-18 15:24:24', '139.194.179.148'),
(526, 3, 'User accessed home page.', '2025-04-18 15:26:55', '139.194.179.148'),
(527, 3, 'User accessed home page.', '2025-04-18 15:28:00', '139.194.179.148'),
(528, 3, 'User accessed home page.', '2025-04-18 15:28:17', '139.194.179.148'),
(529, 3, 'User accessed home page.', '2025-04-18 15:45:37', '139.194.179.148'),
(530, 22, 'User accessed home page.', '2025-04-18 15:45:44', '139.194.179.148'),
(531, 22, 'User accessed home page.', '2025-04-18 15:48:31', '139.194.179.148'),
(532, 3, 'User logged out', '2025-04-18 15:48:41', '139.194.179.148'),
(533, 15, 'User logged in', '2025-04-18 15:48:50', '139.194.179.148'),
(534, 15, 'User accessed home page.', '2025-04-18 15:48:51', '139.194.179.148'),
(535, 22, 'User accessed home page.', '2025-04-18 15:51:20', '139.194.179.148'),
(536, 15, 'User accessed home page.', '2025-04-18 15:52:22', '139.194.179.148'),
(537, 15, 'User logged out', '2025-04-18 15:53:39', '139.194.179.148'),
(538, 15, 'User logged in', '2025-04-18 15:53:47', '139.194.179.148'),
(539, 15, 'User accessed home page.', '2025-04-18 15:53:48', '139.194.179.148'),
(540, 15, 'User logged out', '2025-04-18 15:56:55', '139.194.179.148'),
(541, 15, 'User logged in', '2025-04-18 15:57:04', '139.194.179.148'),
(542, 22, 'User accessed home page.', '2025-04-18 16:00:11', '139.194.179.148'),
(543, 15, 'User logged out', '2025-04-18 16:01:14', '139.194.179.148'),
(544, 22, 'User logged out', '2025-04-18 16:01:16', '139.194.179.148'),
(545, 2, 'User logged in', '2025-04-18 16:01:51', '139.194.179.148'),
(546, 2, 'User accessed home page.', '2025-04-18 16:01:52', '139.194.179.148'),
(547, 2, 'User logged in', '2025-04-18 16:01:58', '139.194.179.148'),
(548, 2, 'User accessed home page.', '2025-04-18 16:01:59', '139.194.179.148'),
(549, 2, 'User accessed home page.', '2025-04-18 16:02:39', '139.194.179.148'),
(550, 2, 'User accessed home page.', '2025-04-18 16:02:56', '139.194.179.148'),
(551, 2, 'User logged out', '2025-04-18 16:03:29', '139.194.179.148'),
(552, 1, 'User logged in', '2025-04-18 16:03:44', '139.194.179.148'),
(553, 1, 'User accessed home page.', '2025-04-18 16:03:45', '139.194.179.148'),
(554, 1, 'You have massacred the courses', '2025-04-18 17:08:00', '139.194.179.148'),
(555, 1, 'You have massacred the users', '2025-04-18 17:08:31', '139.194.179.148'),
(556, 1, 'You have massacred the courses', '2025-04-18 17:08:42', '139.194.179.148'),
(557, 1, 'You have massacred the products', '2025-04-18 17:08:50', '139.194.179.148'),
(558, 1, 'User accessed home page.', '2025-04-18 17:14:29', '139.194.179.148'),
(559, 1, 'User accessed home page.', '2025-04-18 17:24:34', '139.194.179.148'),
(560, 1, 'You have restored an/a paket', '2025-04-18 17:27:20', '139.194.179.148'),
(561, 1, 'You have restored all paket', '2025-04-18 17:29:41', '139.194.179.148'),
(562, 1, 'You have massacred the courses', '2025-04-18 17:29:58', '139.194.179.148'),
(563, 1, 'User accessed home page.', '2025-04-18 17:30:12', '139.194.179.148'),
(564, 1, 'User accessed home page.', '2025-04-18 17:35:12', '139.194.179.148'),
(565, 1, 'User accessed home page.', '2025-04-18 17:36:43', '139.194.179.148'),
(566, 1, 'You have restored all produk', '2025-04-18 17:41:24', '139.194.179.148'),
(567, 1, 'User accessed home page.', '2025-04-18 17:51:12', '139.194.179.148'),
(568, 1, 'User accessed home page.', '2025-04-18 17:59:26', '139.194.179.148'),
(569, 1, 'User accessed home page.', '2025-04-18 17:59:46', '139.194.179.148'),
(570, 1, 'User accessed home page.', '2025-04-18 18:00:06', '139.194.179.148'),
(571, 1, 'User accessed home page.', '2025-04-18 18:00:21', '139.194.179.148'),
(572, 1, 'User accessed home page.', '2025-04-18 18:00:25', '139.194.179.148'),
(573, 1, 'User accessed settings', '2025-04-18 18:00:39', '139.194.179.148'),
(574, 1, 'User accessed home page.', '2025-04-18 18:00:44', '139.194.179.148'),
(575, 23, 'User accessed home page.', '2025-04-20 10:55:08', NULL),
(576, 23, 'User accessed home page.', '2025-04-20 10:55:17', NULL),
(577, 23, 'User logged out', '2025-04-20 10:55:19', NULL),
(578, 2, 'User logged in', '2025-04-20 10:56:05', NULL),
(579, 2, 'User accessed home page.', '2025-04-20 10:56:06', NULL),
(580, 2, 'User accessed home page.', '2025-04-20 11:02:09', '149.113.190.123'),
(581, 2, 'User accessed home page.', '2025-04-20 11:02:17', '149.113.190.123'),
(582, 2, 'User accessed home page.', '2025-04-20 11:02:36', '149.113.190.123'),
(583, 2, 'User accessed home page.', '2025-04-20 11:03:32', '149.113.190.123'),
(584, 2, 'User accessed home page.', '2025-04-20 11:04:33', '149.113.190.123'),
(585, 2, 'User accessed home page.', '2025-04-20 11:05:08', '149.113.190.123'),
(586, 2, 'User accessed home page.', '2025-04-20 11:05:24', '149.113.190.123'),
(587, 2, 'User accessed home page.', '2025-04-20 11:05:32', '149.113.190.123'),
(588, 2, 'User accessed home page.', '2025-04-20 11:05:56', '149.113.190.123'),
(589, 2, 'User accessed home page.', '2025-04-20 11:07:10', '149.113.190.123'),
(590, 2, 'User accessed home page.', '2025-04-20 11:07:31', '149.113.190.123'),
(591, 2, 'User accessed home page.', '2025-04-20 11:08:36', '149.113.190.123'),
(592, 2, 'User accessed home page.', '2025-04-20 11:11:09', '149.113.190.123'),
(593, 2, 'User logged out', '2025-04-20 11:11:10', '149.113.190.123'),
(594, 2, 'User logged in', '2025-04-20 11:12:32', '149.113.190.123'),
(595, 2, 'User accessed home page.', '2025-04-20 11:12:33', '149.113.190.123'),
(596, 2, 'User accessed home page.', '2025-04-20 11:12:57', '149.113.190.123'),
(597, 2, 'User accessed home page.', '2025-04-20 11:14:15', '149.113.190.123'),
(598, 2, 'User accessed home page.', '2025-04-20 11:14:19', '149.113.190.123'),
(599, 2, 'User accessed home page.', '2025-04-20 11:15:22', '149.113.190.123'),
(600, 2, 'User accessed home page.', '2025-04-20 11:16:17', '149.113.190.123'),
(601, 2, 'User accessed home page.', '2025-04-20 11:17:13', '149.113.190.123'),
(602, 2, 'User accessed home page.', '2025-04-20 11:18:11', '149.113.190.123'),
(603, 2, 'User accessed home page.', '2025-04-20 11:19:36', '149.113.190.123'),
(604, 2, 'User accessed home page.', '2025-04-20 11:20:15', '149.113.190.123'),
(605, 2, 'User accessed home page.', '2025-04-20 11:20:56', '149.113.190.123'),
(606, 2, 'User accessed home page.', '2025-04-20 11:21:33', '149.113.190.123'),
(607, 2, 'User accessed home page.', '2025-04-20 11:22:22', '149.113.190.123'),
(608, 2, 'User accessed home page.', '2025-04-20 11:23:04', '149.113.190.123'),
(609, 2, 'User accessed home page.', '2025-04-20 11:23:52', '149.113.190.123'),
(610, 2, 'User accessed home page.', '2025-04-20 11:24:31', '149.113.190.123'),
(611, 2, 'User accessed home page.', '2025-04-20 11:25:00', '149.113.190.123'),
(612, 2, 'User accessed home page.', '2025-04-20 11:25:40', '149.113.190.123'),
(613, 2, 'User accessed home page.', '2025-04-20 11:26:17', '149.113.190.123'),
(614, 2, 'User accessed home page.', '2025-04-20 11:27:57', '149.113.190.123'),
(615, 2, 'User accessed home page.', '2025-04-20 11:28:37', '149.113.190.123'),
(616, 2, 'User accessed home page.', '2025-04-20 11:29:03', '149.113.190.123'),
(617, 2, 'User accessed home page.', '2025-04-20 11:29:48', '149.113.190.123'),
(618, 2, 'User accessed home page.', '2025-04-20 11:30:20', '149.113.190.123'),
(619, 2, 'User accessed home page.', '2025-04-20 11:31:01', '149.113.190.123'),
(620, 2, 'User accessed home page.', '2025-04-20 11:31:39', '149.113.190.123'),
(621, 2, 'User accessed home page.', '2025-04-20 11:32:37', '149.113.190.123'),
(622, 2, 'User logged out', '2025-04-20 11:33:26', '149.113.190.123'),
(623, 24, 'User accessed home page.', '2025-04-20 11:33:48', '149.113.190.123'),
(624, 24, 'User accessed home page.', '2025-04-20 11:35:36', '149.113.190.123'),
(625, 24, 'User accessed home page.', '2025-04-20 11:35:52', '149.113.190.123'),
(626, 24, 'User accessed home page.', '2025-04-20 11:36:03', '149.113.190.123'),
(627, 24, 'User accessed log activity', '2025-04-20 11:36:21', '149.113.190.123'),
(628, 24, 'User accessed home page.', '2025-04-20 11:36:25', '149.113.190.123'),
(629, 24, 'User logged out', '2025-04-20 11:36:38', '149.113.190.123'),
(630, 25, 'User accessed home page.', '2025-04-20 22:09:06', '149.113.142.144'),
(631, 25, 'User accessed home page.', '2025-04-20 22:10:28', '149.113.142.144'),
(632, 25, 'User accessed home page.', '2025-04-20 22:11:24', '149.113.142.144'),
(633, 25, 'User accessed home page.', '2025-04-20 22:12:09', '149.113.142.144'),
(634, 3, 'User logged in', '2025-04-20 22:12:28', '149.113.142.144'),
(635, 3, 'User accessed home page.', '2025-04-20 22:14:49', '149.113.142.144'),
(636, 3, 'User logged out', '2025-04-20 22:15:12', '149.113.142.144'),
(637, 15, 'User logged in', '2025-04-20 22:15:41', NULL),
(638, 15, 'User logged out', '2025-04-20 22:18:18', NULL),
(639, 2, 'User logged in', '2025-04-20 22:18:27', NULL),
(640, 2, 'User accessed home page.', '2025-04-20 22:18:27', NULL),
(641, 2, 'User logged in', '2025-04-20 22:22:22', NULL),
(642, 2, 'User accessed home page.', '2025-04-20 22:22:22', NULL),
(643, 2, 'User logged out', '2025-04-20 22:22:40', NULL),
(644, 1, 'User logged in', '2025-04-20 22:22:49', NULL),
(645, 1, 'User accessed home page.', '2025-04-20 22:22:49', NULL),
(646, 1, 'You have restored an/a produk', '2025-04-20 22:24:17', NULL),
(647, 1, 'You have restored an/a paket', '2025-04-20 22:24:29', NULL),
(648, 1, 'User accessed home page.', '2025-04-20 22:24:33', NULL),
(649, 1, 'User accessed settings', '2025-04-20 22:25:41', NULL),
(650, 1, 'Updated website settings', '2025-04-20 22:26:03', NULL),
(651, 1, 'User accessed settings', '2025-04-20 22:26:03', NULL),
(652, 1, 'Updated website settings', '2025-04-20 22:26:18', NULL),
(653, 1, 'User accessed settings', '2025-04-20 22:26:18', NULL),
(654, 1, 'User logged out', '2025-04-20 22:26:22', NULL),
(655, 25, 'User logged out', '2025-04-20 22:27:04', '149.113.142.144'),
(656, 26, 'User accessed home page.', '2025-04-20 23:00:11', '149.113.142.144'),
(657, 26, 'User accessed home page.', '2025-04-20 23:02:29', '149.113.142.144'),
(658, 26, 'User accessed home page.', '2025-04-20 23:04:39', '149.113.142.144'),
(659, 26, 'User accessed home page.', '2025-04-20 23:05:06', '149.113.142.144'),
(660, 3, 'User logged in', '2025-04-20 23:06:08', '149.113.142.144'),
(661, 3, 'User logged out', '2025-04-20 23:06:13', '149.113.142.144'),
(662, 3, 'User logged in', '2025-04-20 23:07:36', '149.113.142.144'),
(663, 3, 'User logged out', '2025-04-20 23:21:49', '149.113.142.144'),
(664, 15, 'User logged in', '2025-04-20 23:22:25', '149.113.142.144'),
(665, 15, 'User logged out', '2025-04-20 23:29:10', '149.113.142.144'),
(666, 2, 'User logged in', '2025-04-20 23:29:33', '149.113.142.144'),
(667, 2, 'User accessed home page.', '2025-04-20 23:29:33', '149.113.142.144'),
(668, 2, 'User logged out', '2025-04-20 23:33:04', '149.113.142.144'),
(669, 1, 'User logged in', '2025-04-20 23:33:39', '149.113.142.144'),
(670, 1, 'User accessed home page.', '2025-04-20 23:33:40', '149.113.142.144'),
(671, 1, 'User accessed home page.', '2025-04-20 23:36:02', '149.113.142.144'),
(672, 1, 'User accessed settings', '2025-04-20 23:36:57', '149.113.142.144'),
(673, 1, 'Updated website settings', '2025-04-20 23:37:37', '149.113.142.144'),
(674, 1, 'User accessed settings', '2025-04-20 23:37:38', '149.113.142.144'),
(675, 1, 'User accessed home page.', '2025-04-20 23:37:56', '149.113.142.144'),
(676, 1, 'User accessed home page.', '2025-04-20 23:38:05', '149.113.142.144'),
(677, 1, 'User logged out', '2025-04-20 23:39:22', '149.113.142.144');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(11) NOT NULL,
  `nama_metode` varchar(255) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_metode`, `kode`, `icon`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Sakuku', '085668499103', NULL, '2025-04-18 17:55:28', 1, NULL, NULL),
(2, 'Cash', '', NULL, '2025-04-18 17:55:28', 1, NULL, NULL),
(3, 'Gopay', '085668499103', NULL, '2025-04-18 17:55:28', 1, '2025-04-18 17:57:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `id_metode` int(11) NOT NULL,
  `due` datetime DEFAULT NULL,
  `status` enum('menunggu pembayaran','konfirmasi','selesai','proses','gagal') NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `total`, `bayar`, `kembalian`, `id_metode`, `due`, `status`, `bukti_pembayaran`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(19, 60000, 60000, 0, 2, '2025-04-15 23:36:06', 'selesai', NULL, '2025-04-15 23:36:06', 1, NULL, NULL, NULL, NULL),
(20, 25000, NULL, NULL, 3, '2025-04-16 09:37:39', 'selesai', NULL, '2025-04-16 09:37:39', 1, NULL, NULL, NULL, NULL),
(21, 20000, 50000, 30000, 2, '2025-04-16 09:38:59', 'selesai', NULL, '2025-04-16 09:38:59', 1, NULL, NULL, NULL, NULL),
(22, 20000, NULL, NULL, 1, '2025-04-16 12:14:15', 'selesai', NULL, '2025-04-16 12:14:15', 1, NULL, NULL, NULL, NULL),
(23, 20000, NULL, NULL, 1, '2025-04-16 12:17:37', 'gagal', NULL, '2025-04-16 12:17:37', 1, NULL, NULL, NULL, NULL),
(24, 45000, NULL, 0, 3, '2025-04-16 20:42:04', 'selesai', NULL, '2025-04-16 20:42:04', 12, NULL, NULL, NULL, NULL),
(25, 65000, NULL, NULL, 0, '2025-04-16 20:45:23', '', NULL, '2025-04-16 20:45:23', 1, NULL, NULL, NULL, NULL),
(26, 65000, NULL, NULL, 2, '2025-04-16 20:45:41', 'proses', NULL, '2025-04-16 20:45:41', 1, NULL, NULL, NULL, NULL),
(27, 50000, NULL, NULL, 2, '2025-04-16 20:59:03', 'proses', NULL, '2025-04-16 20:59:03', 1, NULL, NULL, NULL, NULL),
(28, 25000, 25000, 0, 3, '2025-04-16 21:15:08', 'selesai', NULL, '2025-04-16 21:15:08', 1, NULL, NULL, NULL, NULL),
(29, 25000, NULL, NULL, 2, '2025-04-16 22:15:04', 'proses', NULL, '2025-04-16 22:15:04', 1, NULL, NULL, NULL, NULL),
(30, 110000, 0, 0, 3, '2025-04-16 22:29:52', 'gagal', NULL, '2025-04-16 22:29:52', 1, NULL, NULL, NULL, NULL),
(31, 45000, 50000, 5000, 2, '2025-04-17 09:10:54', 'selesai', NULL, '2025-04-17 09:10:54', 14, NULL, NULL, NULL, NULL),
(32, 25000, NULL, NULL, 2, '2025-04-17 09:30:35', 'proses', NULL, '2025-04-17 09:30:35', 1, NULL, NULL, NULL, NULL),
(33, 20000, NULL, NULL, 3, '2025-04-17 09:38:54', 'konfirmasi', NULL, '2025-04-17 09:38:54', 1, NULL, NULL, NULL, NULL),
(34, 15000, 15000, 0, 3, '2025-04-17 09:39:45', 'selesai', NULL, '2025-04-17 09:39:45', 16, '2025-04-18 17:50:57', 1, NULL, NULL),
(35, 15000, NULL, NULL, 3, '2025-04-17 09:40:18', 'konfirmasi', NULL, '2025-04-17 09:40:18', 16, NULL, NULL, NULL, NULL),
(36, 20000, 20000, 0, 3, '2025-04-17 10:02:04', 'selesai', NULL, '2025-04-17 10:02:04', 15, NULL, NULL, NULL, NULL),
(37, 25000, NULL, NULL, 1, '2025-04-17 10:02:58', 'konfirmasi', NULL, '2025-04-17 10:02:58', 17, NULL, NULL, NULL, NULL),
(38, 20000, NULL, NULL, 1, '2025-04-17 10:15:59', 'konfirmasi', NULL, '2025-04-17 10:15:59', 17, NULL, NULL, NULL, NULL),
(39, 20000, NULL, NULL, 2, '2025-04-17 10:19:21', 'proses', NULL, '2025-04-17 10:19:21', 17, NULL, NULL, NULL, NULL),
(40, 15000, NULL, NULL, 1, '2025-04-17 20:29:24', 'konfirmasi', NULL, '2025-04-17 20:29:24', 18, NULL, NULL, NULL, NULL),
(41, 35000, NULL, NULL, 3, '2025-04-17 20:40:08', 'konfirmasi', NULL, '2025-04-17 20:40:08', 19, NULL, NULL, NULL, NULL),
(42, 25000, 0, 0, 3, '2025-04-17 20:55:52', 'gagal', NULL, '2025-04-17 20:55:52', 19, NULL, NULL, NULL, NULL),
(43, 20000, 20000, 0, 3, '2025-04-17 23:11:30', 'selesai', '1744906972_162348bad8c12a5398c1.jfif', '2025-04-17 23:11:30', 20, NULL, NULL, NULL, NULL),
(44, 15000, 50000, 35000, 2, '2025-04-17 23:12:53', 'selesai', NULL, '2025-04-17 23:12:53', 21, NULL, NULL, NULL, NULL),
(45, 20000, 0, 0, 3, '2025-04-17 23:30:52', 'gagal', '1744907571_6e035ac01ab9c6e00f2e.jpg', '2025-04-17 23:30:52', 20, NULL, NULL, NULL, NULL),
(46, 15000, 15000, 0, 1, '2025-04-17 23:36:44', 'selesai', '1744907810_07b1c20ec0d2c7094474.png', '2025-04-17 23:36:44', 20, NULL, NULL, NULL, NULL),
(47, 25000, 25000, 0, 3, '2025-04-17 23:39:12', 'selesai', '1744907960_d9742f9b69f6a812ff7f.png', '2025-04-17 23:39:12', 20, NULL, NULL, NULL, NULL),
(48, 25000, 25000, 0, 2, '2025-04-17 23:43:51', 'selesai', NULL, '2025-04-17 23:43:51', 20, NULL, NULL, NULL, NULL),
(49, 60000, 100000, 40000, 2, '2025-04-18 15:03:06', 'selesai', NULL, '2025-04-18 15:03:06', 22, NULL, NULL, NULL, NULL),
(50, 20000, 20000, 0, 3, '2025-04-18 15:46:35', 'selesai', '1744966048_070eef6df458f1ee1d13.png', '2025-04-18 15:46:35', 22, NULL, NULL, NULL, NULL),
(51, 80000, 80000, 0, 2, '2025-04-20 22:10:04', 'selesai', NULL, '2025-04-20 22:10:04', 25, '2025-04-20 22:16:27', 15, NULL, NULL),
(52, 109000, 0, 0, 3, '2025-04-20 22:11:00', 'gagal', '1745161914_f54b623edf7795ff44d4.png', '2025-04-20 22:11:00', 25, '2025-04-20 22:17:15', 15, NULL, NULL),
(53, 80000, 100000, 20000, 2, '2025-04-20 23:02:15', 'selesai', NULL, '2025-04-20 23:02:15', 26, '2025-04-20 23:24:06', 15, NULL, NULL),
(54, 62000, 62000, 0, 3, '2025-04-20 23:03:23', 'selesai', '1745165061_07ad5db07ca098f70f8a.png', '2025-04-20 23:03:23', 26, '2025-04-20 23:27:56', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `uuid` varchar(8) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga_paket`, `deskripsi`, `uuid`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(11, 'Paket Bukber', 25000, '<p>Lebih Hemat!</p>', 'I0HAXN06', '2025-04-15 09:49:35', 1, NULL, NULL, NULL, NULL),
(13, 'delete this later', 100000000, '<p><br></p>', 'I0L506LF', '2025-04-18 17:26:42', 1, NULL, NULL, NULL, NULL),
(17, 'Breakfast Date', 40000, '<p>American style breakfast</p>', 'I0NOQLZ2', '2025-04-20 22:20:37', 2, '2025-04-20 23:20:28', 3, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `paket_detail`
--

CREATE TABLE `paket_detail` (
  `id_paketdetail` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_detail`
--

INSERT INTO `paket_detail` (`id_paketdetail`, `id_paket`, `id_produk`, `qty`) VALUES
(14, 11, 1, 3),
(15, 11, 3, 2),
(27, 17, 27, 2),
(28, 17, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal_pesan` datetime NOT NULL DEFAULT current_timestamp(),
  `id_nota` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_user`, `id_produk`, `id_paket`, `jumlah`, `pesan`, `tanggal_pesan`, `id_nota`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(19, 1, NULL, 11, 1, '', '2025-04-15 23:36:06', 19, '2025-04-15 23:36:06', 1, NULL, NULL, NULL, NULL),
(20, 1, 3, NULL, 1, 'tidak usah pakai coklat', '2025-04-15 23:36:06', 19, '2025-04-15 23:36:06', 1, NULL, NULL, NULL, NULL),
(21, 1, 1, NULL, 1, 'tidak pakai toge', '2025-04-15 23:36:06', 19, '2025-04-15 23:36:06', 1, NULL, NULL, NULL, NULL),
(22, 1, NULL, 11, 1, '', '2025-04-16 09:37:39', 20, '2025-04-16 09:37:39', 1, NULL, NULL, NULL, NULL),
(23, 1, 3, NULL, 1, '', '2025-04-16 09:38:59', 21, '2025-04-16 09:38:59', 1, NULL, NULL, NULL, NULL),
(24, 1, 3, NULL, 1, '', '2025-04-16 12:14:15', 22, '2025-04-16 12:14:15', 1, NULL, NULL, NULL, NULL),
(25, 1, 3, NULL, 1, '', '2025-04-16 12:17:37', 23, '2025-04-16 12:17:37', 1, NULL, NULL, NULL, NULL),
(26, 12, NULL, 11, 1, '', '2025-04-16 20:42:04', 24, '2025-04-16 20:42:04', 12, NULL, NULL, NULL, NULL),
(27, 12, 3, NULL, 1, 'tanpa susu.', '2025-04-16 20:42:04', 24, '2025-04-16 20:42:04', 12, NULL, NULL, NULL, NULL),
(28, 1, 3, NULL, 2, '', '2025-04-16 20:45:41', 26, '2025-04-16 20:45:41', 1, NULL, NULL, NULL, NULL),
(29, 1, NULL, 11, 1, '', '2025-04-16 20:45:41', 26, '2025-04-16 20:45:41', 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, 11, 2, '', '2025-04-16 20:59:03', 27, '2025-04-16 20:59:03', 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, 11, 1, '', '2025-04-16 21:15:08', 28, '2025-04-16 21:15:08', 1, NULL, NULL, NULL, NULL),
(32, 1, NULL, 11, 1, 'mantap.', '2025-04-16 22:15:04', 29, '2025-04-16 22:15:04', 1, NULL, NULL, NULL, NULL),
(33, 1, 3, NULL, 2, '', '2025-04-16 22:29:52', 30, '2025-04-16 22:29:52', 1, NULL, NULL, NULL, NULL),
(34, 1, 1, NULL, 3, '', '2025-04-16 22:29:52', 30, '2025-04-16 22:29:52', 1, NULL, NULL, NULL, NULL),
(35, 1, NULL, 11, 1, '', '2025-04-16 22:29:52', 30, '2025-04-16 22:29:52', 1, NULL, NULL, NULL, NULL),
(36, 14, NULL, 11, 1, '', '2025-04-17 09:10:55', 31, '2025-04-17 09:10:55', 14, NULL, NULL, NULL, NULL),
(37, 14, 3, NULL, 1, 'Banyakin Air', '2025-04-17 09:11:02', 31, '2025-04-17 09:11:02', 14, NULL, NULL, NULL, NULL),
(38, 1, NULL, 11, 1, '', '2025-04-17 09:30:35', 32, '2025-04-17 09:30:35', 1, NULL, NULL, NULL, NULL),
(39, 1, 3, NULL, 1, '', '2025-04-17 09:38:54', 33, '2025-04-17 09:38:54', 1, NULL, NULL, NULL, NULL),
(40, 16, 1, NULL, 1, '', '2025-04-17 09:39:45', 34, '2025-04-17 09:39:45', 16, NULL, NULL, NULL, NULL),
(41, 16, 1, NULL, 1, '', '2025-04-17 09:40:18', 35, '2025-04-17 09:40:18', 16, NULL, NULL, NULL, NULL),
(42, 15, 3, NULL, 1, 'f', '2025-04-17 10:02:04', 36, '2025-04-17 10:02:04', 15, NULL, NULL, NULL, NULL),
(43, 17, NULL, 11, 1, '', '2025-04-17 10:02:58', 37, '2025-04-17 10:02:58', 17, NULL, NULL, NULL, NULL),
(44, 17, 3, NULL, 1, '', '2025-04-17 10:15:59', 38, '2025-04-17 10:15:59', 17, NULL, NULL, NULL, NULL),
(45, 17, 3, NULL, 1, '', '2025-04-17 10:19:21', 39, '2025-04-17 10:19:21', 17, NULL, NULL, NULL, NULL),
(46, 18, 1, NULL, 1, '', '2025-04-17 20:29:24', 40, '2025-04-17 20:29:24', 18, NULL, NULL, NULL, NULL),
(47, 19, 3, NULL, 1, 'send help', '2025-04-17 20:40:08', 41, '2025-04-17 20:40:08', 19, NULL, NULL, NULL, NULL),
(48, 19, 1, NULL, 1, '', '2025-04-17 20:40:08', 41, '2025-04-17 20:40:08', 19, NULL, NULL, NULL, NULL),
(49, 19, NULL, 11, 1, '', '2025-04-17 20:55:52', 42, '2025-04-17 20:55:52', 19, NULL, NULL, NULL, NULL),
(50, 20, 3, NULL, 1, 'yum', '2025-04-17 23:11:30', 43, '2025-04-17 23:11:30', 20, NULL, NULL, NULL, NULL),
(51, 21, 1, NULL, 1, 'yam', '2025-04-17 23:12:53', 44, '2025-04-17 23:12:53', 21, NULL, NULL, NULL, NULL),
(52, 20, 3, NULL, 1, '', '2025-04-17 23:30:52', 45, '2025-04-17 23:30:52', 20, NULL, NULL, NULL, NULL),
(53, 20, 1, NULL, 1, '', '2025-04-17 23:36:44', 46, '2025-04-17 23:36:44', 20, NULL, NULL, NULL, NULL),
(54, 20, NULL, 11, 1, 'paket', '2025-04-17 23:39:12', 47, '2025-04-17 23:39:12', 20, NULL, NULL, NULL, NULL),
(55, 20, NULL, 11, 1, '', '2025-04-17 23:43:52', 48, '2025-04-17 23:43:52', 20, NULL, NULL, NULL, NULL),
(56, 22, 3, NULL, 1, '', '2025-04-18 15:03:06', 49, '2025-04-18 15:03:06', 22, NULL, NULL, NULL, NULL),
(57, 22, 1, NULL, 1, '', '2025-04-18 15:03:06', 49, '2025-04-18 15:03:06', 22, NULL, NULL, NULL, NULL),
(58, 22, NULL, 11, 1, 'hehe boi', '2025-04-18 15:03:06', 49, '2025-04-18 15:03:06', 22, NULL, NULL, NULL, NULL),
(59, 22, 3, NULL, 1, '', '2025-04-18 15:46:35', 50, '2025-04-18 15:46:35', 22, NULL, NULL, NULL, NULL),
(60, 25, 29, NULL, 1, '', '2025-04-20 22:10:04', 51, '2025-04-20 22:10:04', 25, NULL, NULL, NULL, NULL),
(61, 25, 22, NULL, 1, 'kurang manis', '2025-04-20 22:10:04', 51, '2025-04-20 22:10:04', 25, NULL, NULL, NULL, NULL),
(62, 25, 27, NULL, 1, '', '2025-04-20 22:10:04', 51, '2025-04-20 22:10:04', 25, NULL, NULL, NULL, NULL),
(63, 25, NULL, 11, 1, '', '2025-04-20 22:11:00', 52, '2025-04-20 22:11:00', 25, NULL, NULL, NULL, NULL),
(64, 25, 35, NULL, 1, '', '2025-04-20 22:11:00', 52, '2025-04-20 22:11:00', 25, NULL, NULL, NULL, NULL),
(65, 25, 14, NULL, 1, '', '2025-04-20 22:11:00', 52, '2025-04-20 22:11:00', 25, NULL, NULL, NULL, NULL),
(66, 26, 22, NULL, 1, '', '2025-04-20 23:02:15', 53, '2025-04-20 23:02:15', 26, NULL, NULL, NULL, NULL),
(67, 26, NULL, 17, 1, '', '2025-04-20 23:02:15', 53, '2025-04-20 23:02:15', 26, NULL, NULL, NULL, NULL),
(68, 26, 36, NULL, 2, '', '2025-04-20 23:03:23', 54, '2025-04-20 23:03:23', 26, NULL, NULL, NULL, NULL),
(69, 26, 33, NULL, 1, '', '2025-04-20 23:03:23', 54, '2025-04-20 23:03:23', 26, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `status` enum('tersedia','kosong') NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_modal` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `status`, `harga`, `harga_modal`, `description`, `foto`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'Mi Ayam', 1, 'tersedia', 15000, 10000, 'mi ayam.', '1744377146_1744377146_135aeb83e84a5fb11dde.jpeg', '2025-04-08 05:07:40', NULL, '2025-04-11 08:12:26', 1, NULL, 0),
(3, 'Avocado milk', 2, 'tersedia', 20000, 10000, 'Oishii!', '1744377010_1744377010_9818155489e3f4fba1fc.jpg', '2025-04-08 18:19:49', NULL, '2025-04-18 15:24:22', 3, NULL, 1),
(13, 'Salmon Rice Bowl ', 1, 'tersedia', 40000, 25000, '<p>Nyam!</p>', '1745121728_Advertisement The combination of tender, marinated….jfif', '2025-04-20 11:02:08', 2, NULL, NULL, NULL, NULL),
(14, 'Blood Rose Cheesecake ', 7, 'tersedia', 42000, 30000, '<p><span style=\"color: rgb(113, 114, 117);\">strawberry red velvet cheesecake, with a bit of </span>NEVER LET YOU GO!-  </p>', '1745122454_Red Velvet Strawberry Cheesecake.jfif', '2025-04-20 11:14:14', 2, NULL, NULL, NULL, NULL),
(15, 'Blueberry Cupcake ', 7, 'tersedia', 20000, 10000, '<p>Sleepy Teri Zzz</p>', '1745122576_White Chocolate Blueberry Cupcakes - MmmRecipes….jfif', '2025-04-20 11:16:16', 2, NULL, NULL, NULL, NULL),
(16, 'Cord Nog ', 1, 'tersedia', 35000, 20000, '<p>Corn Dog. Mozarella.</p>', '1745122632_02ec043d-c984-43b4-9cf5-5cbaf6776f71.jfif', '2025-04-20 11:17:12', 2, NULL, NULL, NULL, NULL),
(17, 'Shrimp Tempura Roll ', 1, 'tersedia', 50000, 35000, '<p>uhh English or Spanish?</p>', '1745122690_How to Make the Perfect Shrimp Tempura Roll at….jfif', '2025-04-20 11:18:10', 2, NULL, NULL, NULL, NULL),
(18, 'Nutella Pancake ', 7, 'tersedia', 30000, 15000, '<p>VREY DELISH!</p>', '1745122775_d6df9c70-5d2b-43f3-9f64-267a6fb51db3.jfif', '2025-04-20 11:19:35', 2, NULL, NULL, NULL, NULL),
(19, 'Air Mineral (Dingin)', 2, 'tersedia', 5000, 1000, '<p>air mineral.</p>', '1745122814_otros.jfif', '2025-04-20 11:20:14', 2, NULL, NULL, NULL, NULL),
(20, 'Milo (Dingin)', 2, 'tersedia', 6000, 3000, '<p>biar tinggi mungkin</p>', '1745122855_bb23680a-7b2b-4197-bee2-e72259d586a7.jfif', '2025-04-20 11:20:55', 2, NULL, NULL, NULL, NULL),
(21, 'Banana Milkshake ', 2, 'tersedia', 25000, 12000, '<p>Potassium.</p>', '1745122892_Ultimate Banana Split Milkshakes Recipe Guide….jfif', '2025-04-20 11:21:32', 2, NULL, NULL, NULL, NULL),
(22, 'Chocolate Milkshake ', 2, 'tersedia', 30000, 20000, '<p>UWHO!</p>', '1745122941_dc16114e-203c-4875-8e69-f78ec775224f.jfif', '2025-04-20 11:22:21', 2, NULL, NULL, NULL, NULL),
(23, 'Strawberry Soda (Dingin)', 2, 'tersedia', 15000, 7000, '<p>REFERSHIN!</p>', '1745122983_ce3cb614-d7f0-4758-8fe2-fd44207079aa.jfif', '2025-04-20 11:23:03', 2, NULL, NULL, NULL, NULL),
(24, 'Chicken Alfredo ', 1, 'tersedia', 42000, 30000, '<p>Spoghetti</p>', '1745123031_Creamy and rich Olive Garden-style chicken alfredo….jfif', '2025-04-20 11:23:51', 2, NULL, NULL, NULL, NULL),
(25, 'Egg Sandwich ', 1, 'tersedia', 20000, 10000, '<p>nostalgic feeling</p>', '1745123070_448e1a46-85b1-43a6-b0eb-ed365466f74b.jfif', '2025-04-20 11:24:30', 2, NULL, NULL, NULL, NULL),
(26, 'Gyudon ', 1, 'tersedia', 35000, 20000, '<p>Beef rice bowl</p>', '1745123099_7b6365bb-fd59-4236-9a7a-d933f5053948.jfif', '2025-04-20 11:24:59', 2, NULL, NULL, NULL, NULL),
(27, 'Bacon and Eggs ', 1, 'tersedia', 25000, 15000, '<p>very american</p>', '1745123139_The best bacon you’ll ever eat is sweet, smoky….jfif', '2025-04-20 11:25:39', 2, NULL, NULL, NULL, NULL),
(28, 'French Fries ', 1, 'tersedia', 20000, 5000, '<p>Cronch</p>', '1745123177_Savory Seasoned French Fries Recipe_ A Flavorful….jfif', '2025-04-20 11:26:17', 2, NULL, NULL, NULL, NULL),
(29, 'TOAST!! ', 7, 'tersedia', 25000, 10000, '<p>sorry, TOP FAVORITE!</p>', '1745123276_a4052828-126d-49bc-8336-6e5fa99cbd53.jfif', '2025-04-20 11:27:56', 2, NULL, NULL, NULL, NULL),
(30, 'Chicken nuggets ', 1, 'tersedia', 35000, 15000, '<p>with cheese filling!</p>', '1745123316_bc81d294-0f7a-462a-a6c8-160c143c6005.jfif', '2025-04-20 11:28:36', 2, NULL, NULL, NULL, NULL),
(31, 'Oreo Milkshake ', 2, 'tersedia', 32000, 15000, '<p><br></p>', '1745123342_007c2dfb-3ef9-4147-9cd1-7450bc55905c.jfif', '2025-04-20 11:29:02', 2, NULL, NULL, NULL, NULL),
(32, 'Strawberry Sando ', 7, 'tersedia', 20000, 10000, '<p>Very creamy!</p>', '1745123387_This Japanese fruit sandwich, also called fruit….jfif', '2025-04-20 11:29:47', 2, NULL, NULL, NULL, NULL),
(33, 'Tiramisu ', 7, 'tersedia', 32000, 20000, '<p>coffee..</p>', '1745123419_This decadent chocolate tiramisu features….jfif', '2025-04-20 11:30:19', 2, NULL, NULL, NULL, NULL),
(34, 'Caramel Purin ', 7, 'tersedia', 15000, 5000, '<p>Milk pudding with caramel sauce</p>', '1745123460_18d27f84-9c52-4b4c-ada6-515d0467b101.jfif', '2025-04-20 11:31:00', 2, NULL, NULL, NULL, NULL),
(35, 'Blueberry Cheesecake ', 7, 'tersedia', 42000, 25000, '<p>bit of sour but sweet!</p>', '1745123498_A quick and delicious homemade blueberry sauce….jfif', '2025-04-20 11:31:38', 2, NULL, NULL, NULL, NULL),
(36, 'Mini Strawberry Cheesecake ', 7, 'tersedia', 15000, 7000, '<p>one bite sweetness</p>', '1745123556_Mini Strawberry Cheesecakes are the perfect….jfif', '2025-04-20 11:32:36', 2, '2025-04-20 22:12:51', 3, NULL, NULL),
(37, 'Crunchy Honkai ', 1, 'tersedia', 35000, 1000, '<p>edible.</p>', '1745162088_honkai.jpg', '2025-04-20 22:14:48', 3, '2025-04-20 23:18:42', 3, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `no_meja` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `level`, `no_meja`, `foto`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`, `token`, `expiry`) VALUES
(1, 'KF', 'KF@gmail.com', 'f457c545a9ded88f18ecee47145a72c0', 1, NULL, NULL, '2025-04-07 18:44:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'admin', 'kurumidafox@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, NULL, NULL, '2025-04-07 18:46:50', NULL, '2025-04-18 15:07:08', 1, NULL, NULL, NULL, NULL),
(3, 'Barista', '', 'ada9c74be4e5a45106d0b9ae3b31b7ce', 3, NULL, NULL, '2025-04-07 18:46:50', NULL, '2025-04-18 15:08:15', 1, NULL, NULL, NULL, NULL),
(4, 'Hkitchen', '', '6df65d06a778101408d57ffba7f1eafd', 4, NULL, NULL, '2025-04-07 18:47:26', NULL, '2025-04-18 15:08:21', 1, NULL, NULL, NULL, NULL),
(13, 'Jihan Kwak', '', '50a4f10d3824de22d8a7a4f5eff53bd1', 5, 23, NULL, '2025-04-17 09:05:09', 13, '2025-04-20 23:32:21', 2, '2025-04-20 23:32:42', 2, NULL, NULL),
(14, 'Jinrang', '', 'dddb68f96b3306898123d2ba8b2e9c0a', 5, 23, NULL, '2025-04-17 09:07:58', 14, '2025-04-17 09:29:42', 1, NULL, NULL, NULL, NULL),
(15, 'Kasir', '', 'c7911af3adbd12a035b289556d96470a', 6, NULL, NULL, '2025-04-17 09:24:37', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Frieren', NULL, '8927dcea7f3c80dd1cea36ecf19bc81f', 5, 12, NULL, '2025-04-17 09:39:37', 16, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Halloo', NULL, 'd0104838f296b40e3be60a5c2b4f00b7', 5, 14, NULL, '2025-04-17 10:02:29', 17, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Fern', NULL, 'fa0c1b40cfd162a79664b710b5c0acfd', 5, 13, NULL, '2025-04-17 20:28:14', 18, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'help', NULL, 'cf324f475e51ccbaf7cf86e6c4049e13', 5, 14, NULL, '2025-04-17 20:39:53', 19, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'yah', NULL, 'b1ba24eb3f352074810332a922aa4db6', 5, 14, NULL, '2025-04-17 23:11:23', 20, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'hm', NULL, '3e2dc4fc081bd5fdbd8c72ee78cc81b4', 5, 12, NULL, '2025-04-17 23:12:44', 21, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'saya anomali', NULL, 'd8599d5ed56e91b0ea047a43fbbbb8cd', 5, 12, NULL, '2025-04-18 15:02:51', 22, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Anomali', NULL, 'a2a304135c983383aea5e9f21c976052', 5, 13, NULL, '2025-04-20 10:55:08', 23, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Seorang Pelanggan', NULL, 'ca0b657aaea9f7975517c7c478cb8471', 5, 15, NULL, '2025-04-20 11:33:47', 24, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Clara', NULL, 'f5ce2cf71facd8569b8af7a44fa0a953', 5, 2, NULL, '2025-04-20 22:09:05', 25, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Stelle', NULL, '4bda81bfa82a9f76226429ddb227eebe', 5, 14, NULL, '2025-04-20 23:00:08', 26, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_detail`
--

CREATE TABLE `web_detail` (
  `id_detail` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `web_detail`
--

INSERT INTO `web_detail` (`id_detail`, `title`, `logo`) VALUES
(1, 'HUH??', 'logo_1744388307.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `paket_detail`
--
ALTER TABLE `paket_detail`
  ADD PRIMARY KEY (`id_paketdetail`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `web_detail`
--
ALTER TABLE `web_detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `paket_detail`
--
ALTER TABLE `paket_detail`
  MODIFY `id_paketdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `web_detail`
--
ALTER TABLE `web_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
