-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2021 at 06:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppwalisongo`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`id`, `id_year`, `semester`, `id_room`, `date`, `created_at`, `updated_at`) VALUES
(10719, 5, 2, 114, '2019-03-24', '2019-05-12 16:31:37', '2019-05-12 16:31:37'),
(10720, 5, 2, 114, '2019-03-25', '2019-05-12 16:32:03', '2019-05-12 16:32:03'),
(10721, 5, 2, 114, '2019-03-26', '2019-05-12 16:32:21', '2019-05-12 16:32:21'),
(10722, 5, 2, 114, '2019-03-28', '2019-05-12 16:32:51', '2019-05-12 16:32:51'),
(10723, 5, 2, 114, '2019-03-30', '2019-05-12 16:33:11', '2019-05-12 16:33:11'),
(10724, 5, 2, 114, '2019-03-31', '2019-05-12 16:33:51', '2019-05-12 16:33:51'),
(10725, 5, 2, 114, '2019-04-01', '2019-05-12 16:34:20', '2019-05-12 16:34:20'),
(10726, 5, 2, 114, '2019-04-02', '2019-05-12 16:34:34', '2019-05-12 16:34:34'),
(10727, 5, 2, 128, '2019-02-14', '2019-05-12 16:45:02', '2019-05-12 16:45:02'),
(10728, 5, 2, 128, '2019-02-16', '2019-05-12 16:47:19', '2019-05-12 16:47:19'),
(10729, 5, 2, 128, '2019-02-17', '2019-05-12 16:49:31', '2019-05-12 16:49:31'),
(10730, 5, 2, 128, '2019-02-18', '2019-05-12 16:51:42', '2019-05-12 16:51:42'),
(10731, 5, 2, 128, '2019-02-19', '2019-05-12 16:54:51', '2019-05-12 16:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `absence_dorm`
--

CREATE TABLE `absence_dorm` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_dorm` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absence_dorm`
--

INSERT INTO `absence_dorm` (`id`, `id_year`, `semester`, `id_dorm`, `date`, `created_at`, `updated_at`) VALUES
(26, 4, 2, 27, '2018-01-06', '2018-01-07 14:05:26', '2018-01-07 14:05:26'),
(27, 4, 2, 50, '2018-01-06', '2018-01-07 14:05:49', '2018-01-07 14:05:49'),
(28, 4, 2, 38, '2018-01-06', '2018-01-07 14:06:20', '2018-01-07 14:06:20'),
(29, 4, 2, 26, '2018-01-06', '2018-01-07 14:06:51', '2018-01-07 14:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id` int(11) NOT NULL,
  `admin` text NOT NULL,
  `teacher` text NOT NULL,
  `student` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id`, `admin`, `teacher`, `student`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_(20190409061020).jpg', 'TEACHER_(20190409061055).jpg', 'STUDENT_(20190409061020).jpg', '2018-01-14 02:16:57', '2019-04-08 23:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `romawi` varchar(20) NOT NULL,
  `type` enum('biasa','intensif') NOT NULL,
  `major` enum('Y','N') NOT NULL,
  `ijazah` enum('N','Y') NOT NULL DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `romawi`, `type`, `major`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, '1&&Kelas 1', 'I', 'biasa', 'N', 'N', '2017-08-18 11:06:51', '2017-11-20 21:58:16'),
(2, '2&&Kelas 2', 'II', 'biasa', 'N', 'N', '2017-08-18 11:06:51', '2017-11-20 21:58:20'),
(3, '3&&Kelas 3', 'III', 'biasa', 'N', 'N', '2017-08-18 11:06:51', '2017-11-20 21:58:23'),
(4, '4&&Kelas 4', 'IV', 'biasa', 'Y', 'N', '2017-08-18 11:06:51', '2017-11-20 21:58:26'),
(5, '5&&Kelas 5', 'V', 'biasa', 'Y', 'N', '2017-08-18 11:06:51', '2017-11-20 21:58:29'),
(6, '6&&Kelas 6', 'VI', 'biasa', 'Y', 'Y', '2017-08-18 11:06:51', '2018-05-08 23:47:16'),
(7, '1&&Kelas 1 Intensif', 'I Intensif', 'intensif', 'N', 'N', '2017-08-28 17:02:05', '2017-11-20 21:58:55'),
(8, '3&&Kelas 3 Intensif', 'III Intensif', 'intensif', 'Y', 'N', '2017-08-28 17:02:05', '2017-11-20 21:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_majors` int(11) DEFAULT NULL,
  `wali_kelas1` int(11) DEFAULT NULL,
  `wali_kelas2` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`id`, `id_class`, `id_majors`, `wali_kelas1`, `wali_kelas2`, `name`, `gender`, `capacity`, `status`, `created_at`, `updated_at`) VALUES
(168, 4, 2, NULL, NULL, 'F', 'P', 23, 0, '2019-05-12 07:24:56', '2019-05-12 09:41:06'),
(169, 5, 2, NULL, NULL, 'G', 'P', 24, 0, '2019-05-12 07:27:45', '2019-05-12 07:27:45'),
(170, 6, 2, NULL, NULL, 'F', 'P', 24, 0, '2019-05-12 07:30:15', '2019-05-12 13:04:49'),
(171, 2, NULL, NULL, NULL, 'G', 'L', 30, 0, '2019-05-12 09:21:14', '2019-05-12 09:21:14'),
(172, 2, NULL, NULL, NULL, 'H', 'L', 25, 0, '2019-05-12 09:21:30', '2019-05-12 09:21:30'),
(173, 8, 1, NULL, NULL, 'IPA A 2019-2020', 'L', 24, 0, '2019-05-12 10:04:48', '2019-05-12 10:06:30'),
(174, 8, 2, NULL, NULL, 'IPS B 2019-2020', 'L', 30, 0, '2019-05-12 10:10:38', '2019-05-12 10:10:38'),
(175, 4, 1, NULL, NULL, 'IPA A', 'P', 120, 0, '2019-05-12 10:32:50', '2019-05-12 10:32:50'),
(176, 6, 1, NULL, NULL, 'CADANGAN', 'P', 20, 0, '2019-05-12 11:24:47', '2019-05-12 11:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_eng` varchar(250) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tmi` varchar(250) NOT NULL,
  `tmi_eng` varchar(250) NOT NULL,
  `tmi_ar` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tmti` varchar(250) NOT NULL,
  `tmti_eng` varchar(250) NOT NULL,
  `tmti_ar` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `other_phone` varchar(250) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `logo_white` text DEFAULT NULL,
  `gmap_query` varchar(250) DEFAULT NULL,
  `gmap_latlong` varchar(250) DEFAULT NULL,
  `maintenance` tinyint(4) NOT NULL DEFAULT 0,
  `maintenance_description` longtext DEFAULT NULL,
  `popup_success` text DEFAULT NULL,
  `popup_fail` text DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `name_eng`, `name_ar`, `tmi`, `tmi_eng`, `tmi_ar`, `tmti`, `tmti_eng`, `tmti_ar`, `email`, `phone`, `other_phone`, `postalcode`, `address`, `description`, `logo`, `icon`, `logo_white`, `gmap_query`, `gmap_latlong`, `maintenance`, `maintenance_description`, `popup_success`, `popup_fail`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Pondok Pesantren “Wali Songo” Ngabar', '“WALI SONGO” BOARDING SCHOOL ', 'عابر - فونوروكو - إندونيسيا', 'TARBIYATUL MU\'ALLIMIN AL-ISLAMIYAH', 'THE ISLAMIC MALE TEACHERS EDUCATION', 'تربية المعلمين الإسلامية ', 'TARBIYATUL MU\'ALLIMAT AL-ISLAMIYAH', 'THE ISLAMIC FEMALE TEACHERS EDUCATION', 'تربية  المعلمات الإسلامية', 'wali9ngabar@gmail.com', '(0352) 311206', '232', '63471', 'Pondok Pesantren \"Wali Songo\" Ngabar Ponorogo\r\nJl. Sunan Kalijaga Ngabar Siman Ponorogo Jawa Timur', '<p>Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti &quot;Bagian isi disini, bagian isi disini&quot;, sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat &quot;Lorem Ipsum&quot; akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</p>\r\n\r\n<p>Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya. Maksud penggunaan Lorem Ipsum adalah karena ia kurang lebih memiliki penyebaran huruf yang normal, ketimbang menggunakan kalimat seperti &quot;Bagian isi disini, bagian isi disini&quot;, sehingga ia seolah menjadi naskah Inggris yang bisa dibaca. Banyak paket Desktop Publishing dan editor situs web yang kini menggunakan Lorem Ipsum sebagai contoh teks. Karenanya pencarian terhadap kalimat &quot;Lorem Ipsum&quot; akan berujung pada banyak situs web yang masih dalam tahap pengembangan. Berbagai versi juga telah berubah dari tahun ke tahun, kadang karena tidak sengaja, kadang karena disengaja (misalnya karena dimasukkan unsur humor atau semacamnya)</p>\r\n', 'LOGO_PondokPesantrenWaliSongoNgabar_(20171019063759).png', 'ICON_PondokPesantrenWaliSongoNgabar_(20171030051232).png', 'LOGO_WHITE_(20171019063506).png', 'Pondok Pesantren Wali Songo Ngabar, Ngabar, Kabupaten Ponorogo, Jawa Timur, Indonesia', '-7.9174307&&111.47378419999995', 0, '<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n', '<h3 style=\"font-style: italic;\"><em>Alhamdulillahi rabbil &#39;alamin</em>.</h3>\r\n\r\n<p>Selamat, Ananda telah berhasil menjalani kegiatan pesantren dengan baik pada tahun pelajaran 2018-2019 dan dinyatakan <strong>naik kelas ke tahun pelajaran 2019-2020</strong>. Semoga keberhasilan Ananda membawa keberkahan dalam hidup. Amin.</p>\r\n', '<h3 style=\"font-style: italic;\"><em>Mohon Maaf</em>.</h3>\r\n\r\n<p>Untuk mengetahui status Ananda, silakan download dokumen di bawah ini:</p>\r\n\r\n<ul>\r\n	<li><a href=\"http://warta.ppwalisongo.id/download/370/\">Maklumat naik bersyarat dan tidak naik kelas (TMI)</a></li>\r\n	<li><a href=\"http://warta.ppwalisongo.id/download/373/\">Maklumat naik bersyarat dan tidak naik kelas (TMt-I)</a></li>\r\n</ul>\r\n', NULL, '2017-05-11 21:48:43', '2019-05-12 13:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `config_psb`
--

CREATE TABLE `config_psb` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_psb`
--

INSERT INTO `config_psb` (`id`, `id_year`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, '<p>Maaf pendaftaran santri baru sedang ditutup. Informasi Pendaftaran Santri Baru 2018-2019 dapat diakses di website <a href=\"http://psb.ppwalisongo.id/informasi\" target=\"_blank\">psb.ppwalisongo.id</a>. Jazzakumu-l-Allah Khoiron Katsiron</p>\r\n', 0, '2019-01-01 01:51:08', '2019-01-01 01:51:08');

-- --------------------------------------------------------

--
-- Table structure for table `dorm`
--

CREATE TABLE `dorm` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `class` text DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `pengurus` varchar(100) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dorm`
--

INSERT INTO `dorm` (`id`, `id_category`, `class`, `name`, `gender`, `pengurus`, `capacity`, `description`, `created_at`, `updated_at`) VALUES
(94, 7, '4,5,8', 'Siti Hajar 1 103', 'P', '2079,2335,2350', 22, '', '2019-05-12 15:22:14', '2019-05-12 16:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_absence`
--

CREATE TABLE `dorm_absence` (
  `id` int(11) NOT NULL,
  `id_absence` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `status` enum('H','I','A','0','1') NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dorm_absence`
--

INSERT INTO `dorm_absence` (`id`, `id_absence`, `id_student`, `status`, `description`, `created_at`, `updated_at`) VALUES
(602, 29, 433, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(603, 29, 412, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(604, 29, 390, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(605, 29, 378, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(606, 29, 457, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(607, 29, 362, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(608, 29, 343, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(609, 29, 346, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(610, 29, 351, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(611, 29, 370, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(612, 29, 451, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(613, 29, 360, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(614, 29, 379, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(615, 29, 353, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(616, 29, 386, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(617, 29, 476, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(618, 29, 431, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(619, 29, 465, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(620, 29, 355, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45'),
(621, 29, 421, 'H', NULL, '2018-01-07 14:06:51', '2018-04-14 14:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_category`
--

CREATE TABLE `dorm_category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dorm_category`
--

INSERT INTO `dorm_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Biasa', '2017-09-06 20:59:36', '2017-09-06 21:00:07'),
(3, 'Intensif', '2017-09-06 21:00:00', '2018-02-01 06:37:15'),
(4, 'Bahasa', '2017-09-07 00:18:49', '2017-09-07 00:18:49'),
(5, 'Oswas', '2017-09-07 00:18:55', '2017-09-07 00:18:55'),
(7, 'campuran', '2017-09-07 02:13:50', '2017-09-07 02:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `extra_desc`
--

CREATE TABLE `extra_desc` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `description` text NOT NULL,
  `type` enum('auto','manual') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_desc`
--

INSERT INTO `extra_desc` (`id`, `id_type`, `id_level`, `name`, `start`, `end`, `description`, `type`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'Excellent', 71, 90, '<p>Excellent! Ananda sudah mendapatkan prestasi yang membanggakan dan mengharumkan nama baik pondok. Ananda adalah calon penulis; reporter; Ilmuan; atau Motivator muslim. Jadikanlah kemampuanmu sebagai ladang berjihad <i>li I&rsquo;laai kalimatillah.</i></p>\r\n', 'auto', '2018-01-09 11:55:07', '2018-01-09 11:55:07'),
(7, 4, NULL, 'Excellent', 71, 90, '<p><em>Alhamdulillah </em>luar biasa anakku . . . . &nbsp;sudah mendapatkan prestasi yang membanggakan dan mengharumkan nama baik pondok. Amalkan terus ilmu Al- Qur&rsquo;an yang telah di dapat, semangat menghafalkan hingga 30 Juz, kemudian lanjutkan lagi dengan mempelajari ilmu-ilmu tafsir Al- Qur&rsquo;an, Ananda bisa mengajukan beasiswa jalur Tahfidz ke Universitas di dalam ataupun di luar negeri. Insyaallah, Allah menjamin syurga untukmu dan keluargamu. Amiin.</p>\r\n', 'auto', '2018-01-09 14:24:59', '2018-01-09 14:24:59'),
(8, 4, NULL, 'Baik Sekali', 51, 70, '<p><em>Alhamdulillah </em>Bagus sekali anakku&hellip; kualitas bacaan Al- Qur&rsquo;an mu sangat bagus sekali, baca lagi dan lagi, lanjutkan dengan menghafalnya. Insyaallah, Allah akan menempatkanmu dan kedua orang tua mu di <em>jannah-Nya.</em></p>\r\n', 'auto', '2018-01-09 14:25:26', '2018-01-09 14:25:26'),
(9, 4, NULL, 'Baik', 31, 50, '<p><i>Alhamdulillah </i>Bagus anakku . . . bacaan Al- Qur&rsquo;an mu sudah semakin membaik dengan terus belajar membaca dan berlatih akan mendukung kecakapan ananda dalam meningkatkan kualitas bacaan, Insyaallah ananda termasuk dalam golongan <i>ahlul qur&rsquo;an</i> dan <i>ahlul jannah.</i></p>\r\n', 'auto', '2018-01-09 14:26:28', '2018-01-09 14:26:28'),
(10, 4, NULL, 'Cukup', 10, 30, '<p><em>Alhamdulillah </em>Anakku &hellip; penguasaan huruf hijaiyah dan makhorijul huruf sudah bagus, berlatih terus pada bacaan mad (panjang), semangat, tekat, dan keuletan adalah kunci keberhasilan dalam belajar.</p>\r\n', 'auto', '2018-01-09 14:26:51', '2018-07-12 12:11:07'),
(11, 1, NULL, 'Baik Sekali', 51, 70, '<p><i>Alhamdulillah</i> Bagus sekali anakku.. tingkatkan karya dan prestasi yang telah ananda raih. Ananda mempunyai kecerdasan linguistik. Ananda mempunyai kecerdasan linguistic dan logis yaitu mempunyai kemampuan menulis, membaca, matematika, dan sains. Untuk mengasah kemampuan tersebut anandabisa mengikuti seminar workshop, loka karya, mendisiplinkan diri membaca dan menulis setiap hari, serta untuk meningkatkan kemampuan public speaking ananda bisa mendengarkan ceramah para ahli dan mengikutinya.</p>\r\n', 'auto', '2018-01-09 14:32:06', '2018-01-09 14:32:06'),
(12, 1, NULL, 'Baik', 31, 50, '<p>Bagus anakku. . . Ananda mempunyai kecerdasan linguistic dan logis yaitu mempunyai kemampuan menulis, membaca, matematika, dan sains. Untuk mengasah kemampuan tersebut ananda bisa mengikuti seminar workshop, loka karya, mendisiplinkan diri membaca dan menulis setiap hari, serta untuk meningkatkan kemampuan <em>public speaking </em>ananda bisa mendengarkan ceramah para ahli dan mengikutinya.</p>\r\n', 'auto', '2018-01-09 14:32:22', '2018-01-09 14:32:22'),
(13, 1, NULL, 'Cukup', 10, 30, '<p>Anakku. . . Ananda mempunyai kecerdasan linguistic dan logis yaitu mempunyai kemampuan menulis, membaca, matematika, dan sains. Untuk mengasah kemampuan tersebut ananda bisa mengikuti seminar workshop, loka karya, mendisiplinkan diri membaca dan menulis setiap hari, serta untuk meningkatkan kemampuan <em>public speaking </em>ananda bisa mendengarkan ceramah para ahli dan mengikutinya.</p>\r\n', 'auto', '2018-01-09 14:32:38', '2018-07-12 12:12:12'),
(14, 5, NULL, 'Excellent', 71, 90, '<p>Selamat! Ananda sudah mendapatkan prestasi yang membanggakan serta mengharumkan nama baik pondok. Ananda memiliki kecerdasan body kinestetik, jika ananda ingin mendalami bidang ini ananda bisa melanjutkan study ke Universitas seni ataupun olahraga (<em>exp</em> ; ISI, IKJ,UNY,IKIP). Ananda tetap bisa berdakwah melalui bakat yang ananda miliki.</p>\r\n', 'auto', '2018-01-09 14:33:48', '2018-01-09 14:33:48'),
(15, 5, NULL, 'Baik Sekali', 51, 70, '<p>Selamat! Ananda sudah mendapatkan prestasi. Pertahankan prestasi yang telah Ananda raih. Tingkatkan dan teruslah berkarya!</p>\r\n', 'auto', '2018-01-09 14:34:10', '2018-01-09 14:34:10'),
(16, 5, NULL, 'Baik', 31, 50, '<p>Selamat! Anakku&hellip; karya yang telah ananda buat bagus sekali. Tingkatkan terus karyamu,, dengan berkarya ananda akan terlatih untuk meningkatkan kreativitas, membangun pola fikir dan membentuk pribadi tangguh</p>\r\n', 'auto', '2018-01-09 14:34:40', '2018-01-09 14:34:40'),
(17, 5, NULL, 'Cukup', 20, 30, '<p>Terimakasih Ananda sudah mengikuti kegiatan. Perlu ditingkatkan lagi dalam mendapatkan prestasi.</p>\r\n', 'auto', '2018-01-09 14:34:56', '2018-01-09 14:34:56'),
(18, 6, NULL, 'Excellent', 71, 90, '<p><i>Alhamdulillah</i> Ananda sudah menjalankan amanah dalam keorganisasian dan sudah menunjukkan kerja sama, gotong royong, dan kepedulian dengan baik. Pengalaman kepemimpinan, tanggung jawab dan etos kerja yang telah ananda latih akan membekali ananda untuk terjun dalam kehidupan bermasyarakat.</p>\r\n', 'auto', '2018-01-09 14:35:30', '2018-01-09 14:35:46'),
(19, 6, NULL, 'Baik Sekali', 51, 70, '<p><em>Alhamdulillah </em>Ananda sudah berperan aktif dalam keorganisasian. &nbsp;&nbsp;Keaktifanmu dan kepedulianmu terhadap lingkungan dan sesama akan melatih Ananda dalam hal kepemimpinan, tanggung jawab, manajemen, dan etos kerja.</p>\r\n', 'auto', '2018-01-09 14:36:06', '2018-01-09 14:36:06'),
(20, 6, NULL, 'Baik', 31, 50, '<p><i>Alhamdulillah</i> Terimakasih anakku telah aktif mengikuti organisasi. Keaktifanmu akan membantu pribadi yang aktif, cekatan, disiplin dan percaya diri.</p>\r\n', 'auto', '2018-01-09 14:36:48', '2018-01-09 14:36:48'),
(21, 6, NULL, 'Cukup', 20, 30, '<p><i>Alhamdulillah</i> Anakku.. dengan aktif belajar Ananda akan banyak mendapatkan pengalaman, banyak teman, mampu menunjukkan jati diri, kompetensi dan bakat sehingga Ananda terlatih untuk mengelola tujuan ataupun cita-cita</p>\r\n', 'auto', '2018-01-09 14:37:11', '2018-01-09 14:37:11'),
(22, 8, 56, 'Excellent', 71, 100, '<p><em>Alhamdulillah Mumtaz! </em>Kemampuanmu dalam berbahasa arab berkembang pesat. Dengan menguasai bahasa Arab, anakku dapat menguasai separuh dunia. Terus berusaha untuk lebih meningkatkan prestasi, dengan mengikuti ajang perlombaan berbahasa arab dan cobalah mencari beasiswa ke Universitas timur yang notabene berbahasa Arab.&nbsp;</p>\r\n', 'manual', '2018-01-09 14:37:37', '2018-07-10 16:32:44'),
(23, 8, 56, 'Baik Sekali', 51, 70, '<p><i>Alhamdulillah</i> Anakku, kemampuanmu dalam berbicara dan menulis bahasa Arab semakin meningkat, tata bahasa Arabmu juga sangat baik. Tingkatkan terus kemampuanmu dengan memperbanyak membaca buku-buku atau literatur dalam bahasa Arab dan mencoba membuat catatan-catatan kecil dalam bahasa Arab.</p>\r\n', 'manual', '2018-01-09 14:38:16', '2018-01-09 14:38:16'),
(24, 8, 56, 'Baik', 31, 50, '<p><i>Alhamdulillah </i>Anakku, kemampuanmu dalam berbahasa Arab sudah baik, sudah mengerti tata bahasa dan sudah anakku praktekkan dalam kehidupan sehari, lanjutkan usahamu nak, gunakan bahasa Arab dengan logat Arab yang sebenarnya. Jangan khawatir akan kesalahan-kesalahan kecil</p>\r\n', 'manual', '2018-01-09 14:38:35', '2018-01-09 14:38:35'),
(25, 8, 56, 'Cukup', 20, 30, '<p><em>Alhamdulillah </em>Anaku, kemampuanmu dalam berbahasa Arab cukup baik, sudah banyak kosakata yang anakku ketahui, selalu tingkatkan dan kembangkan kemampuanmu dengan lebih sering berbicara menggunakan bahasa arab dalam kehidupan sehari-hari.</p>\r\n', 'manual', '2018-01-09 14:38:55', '2018-01-09 14:38:55'),
(26, 8, 55, 'Excellent', 71, 100, '<p><em>Alhamdulillah Mumtaz! </em>Kemampuanmu dalam berbahasa arab berkembang pesat. Dengan menguasai bahasa Inggris, anakku dapat menguasai separuh dunia. Terus berusaha untuk lebih meningkatkan prestasi, dengan mengikuti ajang perlombaan berbahasa Inggris dan cobalah mencari beasiswa ke Universitas timur yang notabene berbahasa Inggris.&nbsp;</p>\r\n', 'manual', '2018-01-09 14:39:21', '2018-07-10 16:32:28'),
(27, 8, 55, 'Baik Sekali', 51, 70, '<p><i>Alhamdulillah</i> Anakku, kemampuanmu dalam berbicara dan menulis bahasa Arab semakin meningkat, tata bahasa Inggris mu juga sangat baik. Tingkatkan terus kemampuanmu dengan memperbanyak membaca buku-buku atau literatur dalam bahasa Inggris dan mencoba membuat catatan-catatan kecil dalam bahasa Inggris.</p>\r\n', 'manual', '2018-01-09 14:39:42', '2018-01-09 14:39:42'),
(28, 8, 55, 'Baik', 31, 50, '<p><i>Alhamdulillah </i>Anakku, kemampuanmu dalam berbahasa Inggris sudah baik, sudah mengerti tata bahasa dan sudah anakku praktekkan dalam kehidupan sehari, lanjutkan usahamu nak, gunakan bahasa Inggris dengan logat Inggris yang sebenarnya. Jangan khawatir akan kesalahan-kesalahan kecil</p>\r\n', 'manual', '2018-01-09 14:40:14', '2018-01-09 14:40:14'),
(29, 8, 55, 'Cukup', 20, 30, '<p><em>Alhamdulillah </em>Anaku, kemampuanmu dalam berbahasa Inggris cukup baik, sudah banyak kosakata yang anakku ketahui, selalu tingkatkan dan kembangkan kemampuanmu dengan lebih sering berbicara menggunakan bahasa Inggris dalam kehidupan sehari-hari.</p>\r\n', 'manual', '2018-01-09 14:40:40', '2018-01-09 14:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `extra_level`
--

CREATE TABLE `extra_level` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_level`
--

INSERT INTO `extra_level` (`id`, `id_type`, `name`, `created_at`, `updated_at`) VALUES
(64, 4, 'An-Nass - Al-Buruj', '2018-09-08 02:35:03', '2018-09-08 02:35:03'),
(65, 4, 'An-Nass - At-Takwir', '2018-09-08 02:35:03', '2018-09-08 02:35:03'),
(66, 4, 'An-Nass - An-Naba\'', '2018-09-08 02:35:03', '2018-09-08 02:35:03'),
(67, 4, 'Juz 30 dan Surat Pilihan', '2018-09-08 02:35:03', '2018-09-08 02:35:03'),
(68, 4, 'an-Nass - al-A\'la', '2018-09-17 00:37:25', '2018-09-17 00:37:25'),
(70, 4, '1 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(71, 4, '2 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(72, 4, '3 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(73, 4, '4 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(74, 4, '5 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(75, 4, '6 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(76, 4, '7 Juz', '2018-10-15 05:44:38', '2018-10-15 05:44:38'),
(78, 4, '8 Juz', '2018-10-15 05:47:00', '2018-10-15 05:47:00'),
(79, 4, '9 Juz', '2018-10-15 05:47:00', '2018-10-15 05:47:00'),
(80, 4, '10 Juz', '2018-10-15 05:47:00', '2018-10-15 05:47:00'),
(81, 4, 'Tajwid', '2018-11-13 09:31:59', '2018-11-13 09:31:59'),
(82, 1, 'Ujian Kelas 6', '2019-03-01 01:45:06', '2019-03-01 01:45:06'),
(84, 1, 'Tingkat Institusional', '2019-03-29 08:24:55', '2019-03-29 08:24:55'),
(85, 4, 'Tingkat Institusional', '2019-03-29 08:28:52', '2019-03-29 08:28:52'),
(86, 5, 'Tingkat Institusional', '2019-03-29 08:31:11', '2019-03-29 08:31:11'),
(87, 6, 'Tingkat Institusional', '2019-03-29 08:32:20', '2019-03-29 08:32:20'),
(89, 5, 'Tingkat Lokal', '2019-03-31 02:29:43', '2019-03-31 02:29:43'),
(90, 4, 'Tahfidz Reguler', '2019-04-19 15:04:06', '2019-04-19 15:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `extra_score`
--

CREATE TABLE `extra_score` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `score` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_score`
--

INSERT INTO `extra_score` (`id`, `id_type`, `id_level`, `id_status`, `score`, `created_at`, `updated_at`) VALUES
(396, 6, 43, 81, '75', '2019-04-14 04:21:47', '2019-04-14 04:21:47'),
(397, 6, 44, 81, '45', '2019-04-14 04:22:10', '2019-04-14 04:22:10'),
(398, 6, 45, 81, '45', '2019-04-14 04:22:13', '2019-04-14 04:22:13'),
(399, 6, 46, 81, '45', '2019-04-14 04:22:17', '2019-04-14 04:22:17'),
(400, 6, 52, 81, '30', '2019-04-14 04:22:33', '2019-04-14 04:22:33'),
(401, 6, 51, 81, '30', '2019-04-14 04:22:35', '2019-04-14 04:22:35'),
(402, 6, 50, 81, '30', '2019-04-14 04:22:38', '2019-04-14 04:22:38'),
(403, 6, 49, 81, '30', '2019-04-14 04:22:41', '2019-04-14 04:22:41'),
(404, 6, 48, 81, '30', '2019-04-14 04:22:44', '2019-04-14 04:22:44'),
(405, 6, 47, 81, '30', '2019-04-14 04:22:46', '2019-04-14 04:22:46'),
(406, 4, 90, 82, '90', '2019-04-19 15:35:09', '2019-04-19 15:35:09'),
(407, 4, 90, 83, '85', '2019-04-19 15:35:11', '2019-04-19 15:36:05'),
(408, 4, 90, 84, '80', '2019-04-19 15:35:21', '2019-04-19 15:36:11'),
(409, 4, 90, 85, '75', '2019-04-19 15:36:23', '2019-04-19 15:36:23'),
(410, 4, 90, 86, '70', '2019-04-19 15:36:27', '2019-04-19 15:36:27'),
(411, 4, 90, 87, '65', '2019-04-19 15:36:28', '2019-04-19 15:36:28'),
(412, 4, 90, 88, '60', '2019-04-19 15:36:32', '2019-04-19 15:36:32'),
(413, 4, 90, 89, '55', '2019-04-19 15:36:34', '2019-04-19 15:36:34'),
(414, 4, 90, 90, '50', '2019-04-19 15:36:36', '2019-04-19 15:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `extra_status`
--

CREATE TABLE `extra_status` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_status`
--

INSERT INTO `extra_status` (`id`, `id_type`, `name`, `created_at`, `updated_at`) VALUES
(74, 1, 'Dlo\'if', '2019-03-02 00:15:48', '2019-03-02 00:15:48'),
(75, 1, 'Maqbul', '2019-03-02 00:15:48', '2019-03-02 00:15:48'),
(76, 1, 'Jayyid', '2019-03-02 00:15:48', '2019-03-02 00:15:48'),
(77, 1, 'Jayyid Jiddan', '2019-03-02 00:15:48', '2019-03-02 00:15:48'),
(78, 1, 'Mumtaz', '2019-03-02 00:15:48', '2019-03-02 00:15:48'),
(79, 6, 'Penanggungjawab', '2019-03-26 08:24:45', '2019-03-26 08:24:45'),
(81, 6, 'Wakil Ketua', '2019-04-14 04:21:33', '2019-04-14 04:21:33'),
(82, 4, 'A+', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(83, 4, 'A', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(84, 4, 'A-', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(85, 4, 'B+', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(86, 4, 'B', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(87, 4, 'B-', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(88, 4, 'C+', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(89, 4, 'C', '2019-04-19 15:07:10', '2019-04-19 15:07:10'),
(90, 4, 'C-', '2019-04-19 15:07:10', '2019-04-19 15:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `extra_type`
--

CREATE TABLE `extra_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title_level` varchar(100) NOT NULL DEFAULT 'Tingkat',
  `title_status` varchar(100) NOT NULL DEFAULT 'Status',
  `type` enum('auto','manual') NOT NULL DEFAULT 'auto',
  `no_urut` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_type`
--

INSERT INTO `extra_type` (`id`, `name`, `title_level`, `title_status`, `type`, `no_urut`, `created_at`, `updated_at`) VALUES
(1, 'Keilmuan', 'Tingkat', 'Status', 'auto', 1, '2017-10-31 18:14:28', '2018-04-14 14:50:06'),
(4, 'Tahfidz wa Ta\'lim al-Qur\'an', 'Tingkat', 'Status', 'auto', 2, '2017-11-01 05:54:23', '2018-04-14 14:50:09'),
(5, 'Olahraga, Seni, Dan Kepramukaan', 'Tingkat', 'Status', 'auto', 3, '2017-11-01 10:51:32', '2018-04-14 14:50:13'),
(6, 'Organisasi dan Pengabdian Masyarakat', 'Tingkat', 'Status', 'auto', 4, '2017-11-01 10:55:25', '2018-04-14 14:50:17'),
(8, 'Bahasa', 'Bahasa', 'Materi', 'manual', 5, '2017-11-29 09:38:59', '2018-04-14 14:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `id` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_year` text DEFAULT NULL,
  `grade` varchar(250) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL,
  `lisan` enum('N','Y') NOT NULL DEFAULT 'N',
  `no_urut` int(11) NOT NULL,
  `six_class` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `id_category`, `id_year`, `grade`, `code`, `name`, `name_ar`, `status`, `lisan`, `no_urut`, `six_class`, `created_at`, `updated_at`) VALUES
(82, 5, '6,5', '6//1,6//2', 'LEBifBO5', 'Insya\' Lisan', 'الإنشاء الشفهى', 0, 'N', 51, 1, '2018-08-12 15:13:56', '2019-04-20 02:42:36'),
(83, 5, '5,6', '6//1,6//2', '4lNGa284', 'Mahfudzot Lisan', 'المحفوظات الشفهى', 1, 'Y', 52, 0, '2018-08-12 15:17:18', '2019-04-09 04:37:29'),
(84, 5, '5,6', '6//1,6//2', 'rMOwz36J', 'Nahwu Lisan', 'النحو الشفهى', 1, 'Y', 53, 0, '2018-08-12 15:24:32', '2018-12-21 20:35:03'),
(85, 5, '5,6', '6//1,6//2', 'VBkBOVqD', 'Shorof Lisan', 'الصرف الشفهى', 1, 'Y', 54, 0, '2018-08-12 15:27:03', '2018-12-21 20:35:03'),
(86, 5, '5,6', '6//1,6//2', 'VLnYFx7V', 'Balaghoh Lisan', 'البلاغة الشفهى', 1, 'Y', 55, 0, '2018-08-12 15:29:45', '2019-04-10 16:24:54'),
(87, 5, '5,6', '6//1,6//2', 'ob83Lftd', 'Fiqih Lisan ', 'الفقه الشفهى', 1, 'Y', 56, 0, '2018-08-12 15:40:18', '2019-04-10 16:24:56'),
(88, 5, '6,5', '6//1,6//2', '17FDe1PQ', 'Ushul Fiqh (Lisan)', 'أصول الفقه الشفهي', 1, 'Y', 57, 0, '2018-08-12 15:46:40', '2019-04-10 16:24:57'),
(89, 5, '6,5', '6//1,6//2', 'NxBFuabB', 'Tarbiyah Lisan', 'التربية العملية الشفهى', 1, 'Y', 58, 0, '2018-08-12 15:54:25', '2019-04-10 16:25:07'),
(90, 6, '5', '6//1,6//2', '9kSR1mcA', 'Bhs. Inggris Lisan', 'اللغة الإنجليزيّة الشفهي', 0, 'Y', 59, 0, '2019-02-24 04:33:05', '2019-02-24 15:14:45'),
(91, 6, '5', '6//1,6//2', 'PbN3v0wk', 'Listening', 'الإصغاء', 0, 'Y', 60, 0, '2019-02-24 15:18:56', '2019-02-24 15:24:49'),
(92, 4, '5', '6//1,6//2', 'u9vD5iaE', 'Bahasa Arab Lisan', 'اللغة العربيّة الشفهي', 0, 'N', 61, 1, '2019-02-24 15:21:07', '2019-05-01 15:11:25'),
(93, 6, '5', '6//1,6//2', 'DQOB3lK6', 'Grammar Lisan', ' قواعد اللغة الإنجليزيّة الشفهي', 1, 'Y', 62, 0, '2019-02-24 15:23:05', '2019-04-10 16:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_category`
--

CREATE TABLE `lecture_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_category`
--

INSERT INTO `lecture_category` (`id`, `name`, `name_ar`, `created_at`, `updated_at`) VALUES
(4, 'Ilmu Bahasa Arab', 'علوم اللغة العربية									', '2017-12-10 07:47:56', '2017-12-13 17:55:44'),
(5, 'Ilmu Agama', 'العلوم الدينية										', '2017-12-10 07:48:46', '2017-12-13 17:55:12'),
(6, 'Ilmu Umum', 'العلوم العامة', '2018-01-08 03:19:59', '2018-01-08 03:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `lecture_schedule`
--

CREATE TABLE `lecture_schedule` (
  `id` bigint(20) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `id_lecture` int(11) DEFAULT NULL,
  `id_teacher` int(11) DEFAULT NULL,
  `day` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `status` enum('N','Y') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture_schedule`
--

INSERT INTO `lecture_schedule` (`id`, `id_year`, `id_room`, `id_lecture`, `id_teacher`, `day`, `number`, `start`, `end`, `status`, `created_at`, `updated_at`) VALUES
(6509, 5, 129, 21, 60, 'rabu', 5, '10:10:00', '10:50:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:35:54'),
(6510, 5, 129, 17, 66, 'rabu', 6, '11:10:00', '11:50:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:36:10'),
(6511, 5, 129, 35, 21, 'rabu', 7, '11:50:00', '12:30:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:36:25'),
(6512, 5, 129, 26, 24, 'kamis', 1, '07:00:00', '07:40:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:38:39'),
(6513, 5, 129, 31, 56, 'kamis', 2, '07:40:00', '08:20:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:38:47'),
(6514, 5, 129, 44, 49, 'kamis', 3, '08:20:00', '09:00:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:40:59'),
(6515, 5, 129, 19, 37, 'kamis', 4, '09:15:00', '09:55:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:41:40'),
(6516, 5, 129, 19, 37, 'kamis', 5, '09:55:00', '10:35:00', 'Y', '2018-11-27 04:12:15', '2018-11-27 05:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IPA', '2017-10-01 23:22:34', '2017-10-01 23:22:34'),
(2, 'IPS', '2017-10-01 23:22:34', '2017-10-01 23:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `access` varchar(200) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `access`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Tahun Ajaran', 'listyear', 1, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(2, 'Pendaftaran Santri Baru', 'psb_create', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(3, 'Data Pendaftaran', 'psb_data', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(4, 'Pengaturan Pendaftaran', 'psbconfig', 1, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(5, 'Santri', 'student', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(6, 'Buat Santri Baru', 'studentcreate', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(7, 'Informasi Kelas', 'class', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(8, 'Absensi Sekolah', 'absence', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(9, 'Absensi Pondok', 'absencedorm', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(10, 'Data Guru', 'teacher', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(11, 'Mata Pelajaran', 'lecture', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(12, 'Jadwal Pelajaran', 'schedules', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(13, 'Perizinan Sekolah', 'perizinan', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(14, 'Perizinan Pondok', 'perizinandorm', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(15, 'Asrama', 'dorm', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(16, 'Pelanggran Sekolah', 'penalty', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(17, 'Pelanggran Pondok', 'penaltydorm', 0, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(18, 'Administrator Account', 'root', 1, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(19, 'Main Configuration', 'config', 1, '2017-11-30 09:06:44', '2017-11-30 09:06:44'),
(20, 'Master Data Etika & Personal', 'personality', 1, '2018-01-21 07:35:56', '2018-01-21 07:35:56'),
(21, 'Master Data Non Academic', 'datanonacademic', 1, '2018-01-21 07:35:56', '2018-01-21 07:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `point` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`id`, `id_category`, `name`, `point`, `gender`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Bolos Sekolah', 10, 'L', '', 0, '2018-01-06 04:56:04', '2018-11-02 10:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `penaltydorm`
--

CREATE TABLE `penaltydorm` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `point` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penaltydorm`
--

INSERT INTO `penaltydorm` (`id`, `id_category`, `name`, `point`, `gender`, `description`, `status`, `created_at`, `updated_at`) VALUES
(84, 2, 'Tidak berbicara Bahasa Arab dan Bahasa Inggris', 3, 'P', '', 0, '2018-01-07 04:10:08', '2018-10-02 15:39:28'),
(85, 3, 'Meninggalkan Sholat Wajib', 75, 'P', '', 0, '2018-01-07 04:12:21', '2018-11-04 13:20:24'),
(86, 2, ' Bermain Kartu Remi,Pokeran,Karambol dan lain-lain', 100, 'L', '', 0, '2019-02-19 11:45:09', '2019-02-19 11:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `penaltydorm_category`
--

CREATE TABLE `penaltydorm_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penaltydorm_category`
--

INSERT INTO `penaltydorm_category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Sedang', 'kategori pelanggaran sedang', '2017-11-09 08:03:00', '2017-11-09 08:03:00'),
(3, 'Berat', 'Kategori Pelanggaran Berat', '2017-11-09 08:03:11', '2017-11-09 08:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `penaltydorm_max`
--

CREATE TABLE `penaltydorm_max` (
  `id` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penaltydorm_max`
--

INSERT INTO `penaltydorm_max` (`id`, `max`, `description`, `created_at`, `updated_at`) VALUES
(1, 1000, '<p>Point Pelanggaran Anda Telah Mencapai Batas Maksimal</p>\r\n', '2017-08-23 08:09:01', '2019-01-29 10:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `penalty_category`
--

CREATE TABLE `penalty_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty_category`
--

INSERT INTO `penalty_category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ringan', 'kategori pelanggaran ringan', '2017-11-09 07:50:06', '2017-11-09 07:50:06'),
(2, 'Sedang', 'Kategori Pelanggaran Sedang\r\n', '2017-11-09 08:03:26', '2017-11-09 08:03:26'),
(3, 'Berat', 'Kategori Pelanggaran Berat', '2017-11-09 08:03:39', '2017-11-09 08:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `penalty_max`
--

CREATE TABLE `penalty_max` (
  `id` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty_max`
--

INSERT INTO `penalty_max` (`id`, `max`, `description`, `created_at`, `updated_at`) VALUES
(1, 250, '<p>Point Pelanggaran Anda Telah Mencapai Batas Maksimal</p>\n', '2017-08-23 08:09:01', '2017-10-20 16:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int(11) NOT NULL,
  `leader_tmi` varchar(250) DEFAULT NULL,
  `leader_tmti` varchar(250) DEFAULT NULL,
  `chairman_tmi` varchar(250) DEFAULT NULL,
  `chairman_tmti` varchar(250) DEFAULT NULL,
  `leader_tmi_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `leader_tmti_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `chairman_tmi_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `chairman_tmti_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `director_tmi` varchar(250) DEFAULT NULL,
  `director_tmti` varchar(250) DEFAULT NULL,
  `head_tmi` varchar(250) DEFAULT NULL,
  `head_tmti` varchar(250) DEFAULT NULL,
  `director_tmi_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `director_tmti_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `head_tmi_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `head_tmti_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id`, `leader_tmi`, `leader_tmti`, `chairman_tmi`, `chairman_tmti`, `leader_tmi_ar`, `leader_tmti_ar`, `chairman_tmi_ar`, `chairman_tmti_ar`, `director_tmi`, `director_tmti`, `head_tmi`, `head_tmti`, `director_tmi_ar`, `director_tmti_ar`, `head_tmi_ar`, `head_tmti_ar`, `created_at`, `updated_at`) VALUES
(1, 'Ustadz KH. Heru Saiful Anwar, M.A', 'Ustadz KH. Moh. Tholhah, S.Ag', 'Ustadz Hady Saptono, S.Ag', 'Ustadzah Hj. Rahmah Maulidia, M.Ag', ' كياهي الحاج هيرو سيف الأنوار, M.A', ' كياهي الحاج محمد طلحة, S.Ag', '', '', 'Ustadz H. Said Abadi, Lc. MA', 'Ustadz Hadi Wiyono, M.HI', 'Ust. Drs. KH. Moh. Ihsan, M.Ag', 'Ustadz KH. Heru Saiful Anwar, M.A', 'الحاج سعيد أبدي، Lc., MA', 'هادي وييونو،  M.HI', 'Drs. كياهي الحاج محمّد إحسان, M.Ag', ' كياهي الحاج هيرو سيف الأنوار, M.A', '2017-12-26 18:36:37', '2018-12-19 06:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `perizinan`
--

CREATE TABLE `perizinan` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `room` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `date` date NOT NULL,
  `date_until` date DEFAULT NULL,
  `destination` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `master_class` varchar(250) NOT NULL,
  `ustad` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perizinan`
--

INSERT INTO `perizinan` (`id`, `id_year`, `id_class`, `id_student`, `room`, `type`, `gender`, `date`, `date_until`, `destination`, `reason`, `master_class`, `ustad`, `created_at`, `updated_at`) VALUES
(8510, 5, 4, 2298, 'D', 0, 'P', '2019-02-17', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'desi rahmawati', '2019-05-12 16:49:05', '2019-05-12 16:49:05'),
(8511, 5, 4, 2368, 'D', 0, 'P', '2019-02-17', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'desi rahmawati', '2019-05-12 16:49:23', '2019-05-12 16:49:23'),
(8512, 5, 4, 2336, 'D', 0, 'P', '2019-02-18', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'devika arfiana', '2019-05-12 16:50:45', '2019-05-12 16:50:45'),
(8513, 5, 4, 2362, 'D', 0, 'P', '2019-02-18', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'devika arfiana', '2019-05-12 16:51:06', '2019-05-12 16:51:06'),
(8514, 5, 4, 2298, 'D', 0, 'P', '2019-02-18', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'devika arfiana', '2019-05-12 16:51:20', '2019-05-12 16:51:20'),
(8515, 5, 4, 2368, 'D', 0, 'P', '2019-02-18', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'devika arfiana', '2019-05-12 16:51:37', '2019-05-12 16:51:37'),
(8516, 5, 4, 2336, 'D', 1, 'P', '2019-02-19', '2019-02-23', 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'atik dwi', '2019-05-12 16:54:25', '2019-05-12 16:54:25'),
(8517, 5, 4, 2331, 'D', 0, 'P', '2019-02-19', NULL, 'sakit', 'sakit', ' Anisah Sa\'diyah, S.Pd.I , Nuryani, S.Pd.I', 'atik dwi', '2019-05-12 16:54:43', '2019-05-12 16:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `perizinandorm`
--

CREATE TABLE `perizinandorm` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `room` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `date` date NOT NULL,
  `date_until` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `time_until` int(11) DEFAULT NULL,
  `reason` varchar(250) NOT NULL,
  `master_class` varchar(100) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `ustad` varchar(250) NOT NULL,
  `guardian` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perizinandorm`
--

INSERT INTO `perizinandorm` (`id`, `id_year`, `id_class`, `id_student`, `room`, `type`, `gender`, `date`, `date_until`, `time`, `time_until`, `reason`, `master_class`, `destination`, `ustad`, `guardian`, `created_at`, `updated_at`) VALUES
(632, 5, 1, 3158, 'A', 0, 'P', '2019-02-01', NULL, NULL, NULL, '-', 'Feminia Fitri Shofianita , .Lu\'lu\' Rosyidah, S.Pd.I', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 03:18:40', '2019-04-10 03:18:40'),
(633, 5, 1, 3048, 'D', 0, 'P', '2019-03-08', NULL, NULL, NULL, 'Acara Keluarga', 'Devi Ratnasari , Nur Lathifatus Sa\'adah', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 03:25:51', '2019-04-10 03:25:51'),
(634, 5, 1, 2865, 'F', 1, 'P', '2020-01-10', '2019-03-12', '13:30:00', 17, 'Sakit', 'Sulistyawati , Nur Afifah Alfiani', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 03:31:40', '2019-04-10 03:31:40'),
(635, 5, 1, 3537, 'G', 0, 'P', '2020-01-12', NULL, NULL, NULL, 'Berobat', ' Ismi Malik Azizah , Reni Fathoni, S.Pd.I', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 03:32:53', '2019-04-10 03:32:53'),
(636, 5, 1, 3080, 'G', 0, 'P', '2020-01-12', NULL, NULL, NULL, 'Periksa', ' Ismi Malik Azizah , Reni Fathoni, S.Pd.I', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 03:34:43', '2019-04-10 03:34:43'),
(637, 5, 1, 3537, 'G', 0, 'P', '2019-03-12', NULL, NULL, NULL, 'Sakit', ' Ismi Malik Azizah , Reni Fathoni, S.Pd.I', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 15:25:47', '2019-04-10 15:25:47'),
(638, 5, 1, 3080, 'G', 0, 'P', '2019-03-12', NULL, NULL, NULL, 'Periksa', ' Ismi Malik Azizah , Reni Fathoni, S.Pd.I', 'Pulang', 'Lilik Alfiati', '-', '2019-04-10 15:27:22', '2019-04-10 15:27:22'),
(639, 5, 1, 3536, 'C', 1, 'P', '2019-03-14', '2019-03-17', '13:30:00', 17, 'Sakit', 'Desy Rahmawati Fitriana , Amanatul Muamanah', 'Pulang', 'Feminia Fitri', '-', '2019-04-10 15:37:35', '2019-04-10 15:37:35'),
(640, 5, 1, 3071, 'G', 0, 'P', '2019-03-15', NULL, NULL, NULL, 'Berobat', ' Ismi Malik Azizah , Reni Fathoni, S.Pd.I', 'Pulang', 'Feminia Fitri', '-', '2019-04-10 15:39:25', '2019-04-10 15:39:25'),
(641, 5, 1, 3540, 'E', 0, 'P', '2019-03-15', NULL, NULL, NULL, '-', 'Devi Ratnasari ,  Putri Agustina, S.Pd.I', 'Pulang', 'Feminia Fitri', '-', '2019-04-10 15:45:20', '2019-04-10 15:45:20'),
(642, 5, 1, 3526, 'F', 0, 'P', '2019-03-15', NULL, NULL, NULL, '-', 'Sulistyawati , Nur Afifah Alfiani', 'Pulang', 'Feminia Fitri', '-', '2019-04-10 16:10:32', '2019-04-10 16:10:32'),
(643, 5, 1, 3158, 'A', 0, 'P', '2019-03-19', NULL, NULL, NULL, 'Sakit', 'Feminia Fitri Shofianita , .Lu\'lu\' Rosyidah, S.Pd.I', 'Pulang', 'Feminia Fitri', '-', '2019-04-14 15:03:58', '2019-04-14 15:03:58'),
(644, 5, 1, 3158, 'A', 0, 'P', '2019-03-19', NULL, NULL, NULL, 'Sakit', 'Feminia Fitri Shofianita , .Lu\'lu\' Rosyidah, S.Pd.I', 'Pulang', 'Feminia Fitri', '-', '2019-04-14 15:04:51', '2019-04-14 15:04:51'),
(645, 5, 1, 3050, 'B', 1, 'P', '2019-03-20', '2019-03-23', '13:30:00', 17, 'Sakit', 'Nunik Liska wanti ,  Zulfa Amalia', 'Pulang', 'Feminia Fitri', '-', '2019-04-14 15:29:36', '2019-04-14 15:29:36'),
(646, 5, 1, 3166, 'C', 0, 'P', '2019-03-21', NULL, NULL, NULL, 'Acara Keluarga', 'Desy Rahmawati Fitriana , Amanatul Muamanah', 'Pulang', 'Feminia Fitri', '-', '2019-04-14 15:43:13', '2019-04-14 15:43:13'),
(647, 5, 1, 3527, 'E', 0, 'P', '2019-03-22', NULL, NULL, NULL, '-', 'Devi Ratnasari ,  Putri Agustina, S.Pd.I', 'Pulang', 'Feminia Fitri', '-', '2019-04-14 15:46:06', '2019-04-14 15:46:06'),
(648, 5, 7, 3599, 'B', 1, 'P', '2019-03-07', '2019-03-09', '13:30:00', 17, 'Berobat', 'Ustd. Ad\'amah , Epatul Hasanah', 'Pulang ', 'Epatul Hasanah', '-', '2019-04-15 07:10:39', '2019-04-15 07:10:39'),
(649, 5, 7, 3089, 'C', 0, 'P', '2019-03-08', NULL, NULL, NULL, 'Pijat', 'Atik Dwi Maghfiroh ,  Muftianah Sarjanati, S.ag', 'Pulang ', 'Feminia Fitri', '-', '2019-04-15 07:14:54', '2019-04-15 07:14:54'),
(650, 5, 7, 3590, 'A', 1, 'P', '2019-03-08', '2019-03-10', '13:30:00', 17, 'Jenguk Kakek', ' Siti Unwanah, S.Ag ,  Liya Rahmawati, S.Pd.I', 'Pulang ', 'Feminia Fitri', '-', '2019-04-15 07:24:57', '2019-04-15 07:24:57'),
(651, 5, 7, 3089, 'C', 1, 'P', '2019-03-09', '2019-03-11', '13:30:00', 17, 'Sakit', 'Atik Dwi Maghfiroh ,  Muftianah Sarjanati, S.ag', 'Pulang ', 'Feminia Fitri', '-', '2019-04-15 07:50:21', '2019-04-15 07:50:21'),
(652, 5, 7, 2997, 'C', 0, 'P', '2019-03-10', NULL, NULL, NULL, '-', 'Atik Dwi Maghfiroh ,  Muftianah Sarjanati, S.ag', 'Pulang ', 'Feminia Fitri', '-', '2019-04-15 08:00:34', '2019-04-15 08:00:34'),
(653, 5, 7, 3085, 'B', 1, 'P', '2019-03-10', '2019-03-13', '13:00:00', 17, 'Acara Keluarga', 'Ustd. Ad\'amah , Epatul Hasanah', 'Pulang ', 'Epatul Hasanah', '-', '2019-04-15 08:03:49', '2019-04-15 08:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `personality`
--

CREATE TABLE `personality` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `score` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personality`
--

INSERT INTO `personality` (`id`, `name`, `name_ar`, `score`, `created_at`, `updated_at`) VALUES
(1, 'perilaku', 'السلوك', '8', '2018-01-10 06:32:47', '2018-01-17 09:42:30'),
(4, 'kebersihan', 'النظافة', '8', '2018-01-10 06:38:21', '2018-01-17 09:42:33'),
(5, 'Kerajinan', 'المواظبة', '8', '2018-01-16 15:59:46', '2018-01-17 09:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `schedules_config`
--

CREATE TABLE `schedules_config` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules_config`
--

INSERT INTO `schedules_config` (`id`, `day`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sabtu', 7, 'publish', '2017-10-25 18:44:38', '2017-12-13 14:47:10'),
(2, 'minggu', 7, 'publish', '2017-10-25 18:44:38', '2017-12-13 14:50:11'),
(3, 'senin', 7, 'publish', '2017-10-25 18:44:38', '2017-12-13 14:53:14'),
(4, 'selasa', 7, 'publish', '2017-10-25 18:44:38', '2017-12-13 14:56:28'),
(5, 'rabu', 7, 'publish', '2017-10-25 18:44:38', '2017-12-13 14:58:22'),
(6, 'kamis', 5, 'publish', '2017-10-25 18:44:38', '2017-12-13 15:00:05'),
(7, 'jumat', 0, 'draft', '2017-10-25 18:44:38', '2017-10-28 18:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `schedules_time`
--

CREATE TABLE `schedules_time` (
  `id` int(11) NOT NULL,
  `id_config` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules_time`
--

INSERT INTO `schedules_time` (`id`, `id_config`, `number`, `start`, `end`, `created_at`, `updated_at`) VALUES
(27, 4, 5, '10:10:00', '10:50:00', '2017-12-13 14:55:18', '2017-12-13 14:55:18'),
(28, 4, 6, '11:10:00', '11:50:00', '2017-12-13 14:55:52', '2017-12-13 14:55:52'),
(29, 4, 7, '11:50:00', '12:30:00', '2017-12-13 14:56:10', '2017-12-13 14:56:10'),
(31, 5, 1, '07:00:00', '07:40:00', '2017-12-13 14:56:59', '2017-12-13 14:56:59'),
(32, 5, 2, '07:40:00', '08:20:00', '2017-12-13 14:57:14', '2017-12-13 14:57:14'),
(33, 5, 3, '08:20:00', '09:00:00', '2017-12-13 14:57:28', '2017-12-13 14:57:28'),
(34, 5, 4, '09:30:00', '10:10:00', '2017-12-13 14:57:42', '2017-12-13 14:57:42'),
(35, 5, 5, '10:10:00', '10:50:00', '2017-12-13 14:57:55', '2017-12-13 14:57:55'),
(36, 5, 6, '11:10:00', '11:50:00', '2017-12-13 14:58:09', '2017-12-13 14:58:09'),
(37, 5, 7, '11:50:00', '12:30:00', '2017-12-13 14:58:22', '2017-12-13 14:58:22'),
(38, 6, 1, '07:00:00', '07:40:00', '2017-12-13 14:58:39', '2017-12-13 14:58:39'),
(39, 6, 2, '07:40:00', '08:20:00', '2017-12-13 14:58:56', '2017-12-13 14:58:56'),
(40, 6, 3, '08:20:00', '09:00:00', '2017-12-13 14:59:08', '2017-12-13 14:59:08'),
(41, 6, 4, '09:15:00', '09:55:00', '2017-12-13 14:59:42', '2017-12-13 14:59:42'),
(42, 6, 5, '09:55:00', '10:35:00', '2017-12-13 15:00:05', '2017-12-13 15:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `score_exstra`
--

CREATE TABLE `score_exstra` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `type` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL,
  `title_level` varchar(50) DEFAULT NULL,
  `status` varchar(250) NOT NULL,
  `title_status` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `name` varchar(200) NOT NULL,
  `score` int(2) NOT NULL,
  `type_score` enum('auto','manual') NOT NULL DEFAULT 'auto',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score_exstra_desc`
--

CREATE TABLE `score_exstra_desc` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_level` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `score_kkm`
--

CREATE TABLE `score_kkm` (
  `id` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `id_lecture` int(11) NOT NULL,
  `id_major` int(11) DEFAULT NULL,
  `score` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score_kkm`
--

INSERT INTO `score_kkm` (`id`, `id_class`, `id_lecture`, `id_major`, `score`, `created_at`, `updated_at`) VALUES
(430, 6, 91, 2, '4.5', '2019-02-24 15:18:56', '2019-02-24 15:18:56'),
(431, 6, 92, 1, '4.5', '2019-02-24 15:21:07', '2019-02-24 15:21:07'),
(432, 6, 92, 2, '4.5', '2019-02-24 15:21:07', '2019-02-24 15:21:07'),
(433, 6, 93, 1, '4.5', '2019-02-24 15:23:05', '2019-02-24 15:23:05'),
(434, 6, 93, 2, '4.5', '2019-02-24 15:23:05', '2019-02-24 15:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `other_name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `name`, `other_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Semester 1', 'Semester Ganjil', 0, '2017-09-21 07:55:31', '2019-05-13 06:05:57'),
(2, 'Semester 2', 'Semester Genap', 1, '2017-09-21 07:55:31', '2019-05-13 06:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `keyword` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `facebook_pixel` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `name`, `keyword`, `image`, `description`, `facebook_pixel`, `created_at`, `updated_at`) VALUES
(1, 'Trevizo - Supplier Bahan Bangunan', 'Bahan Bangunan , Material bangunan , Alat bangunan , Kebutuhan Bangunan', '', 'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.', '', '2017-05-15 00:59:59', '2017-05-15 00:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `session_psb`
--

CREATE TABLE `session_psb` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `selection` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_psb`
--

INSERT INTO `session_psb` (`id`, `id_year`, `name`, `start`, `end`, `selection`, `created_at`, `updated_at`) VALUES
(1, 5, 'Gelombang 1', '2019-01-01', '2019-04-26', '2019-04-28', '2017-12-19 03:00:06', '2018-12-21 20:37:07'),
(2, 5, 'Gelombang 2', '2019-05-01', '2019-05-12', '2019-04-13', '2018-01-29 06:29:36', '2018-12-21 20:39:24'),
(3, 6, 'GELOMBANG 1', '2019-01-01', '2019-04-28', '2019-05-01', '2018-12-21 20:40:47', '2019-01-01 01:50:51'),
(4, 6, 'gelombang 2', '2019-05-05', '2019-06-10', '2019-06-13', '2018-12-21 20:41:21', '2019-05-11 02:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `sk_teacher`
--

CREATE TABLE `sk_teacher` (
  `id` int(11) NOT NULL,
  `id_teacher` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_teacher`
--

INSERT INTO `sk_teacher` (`id`, `id_teacher`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 241, '', 'SK_TEACHER_Ali_Said_Abidin,_SHI_(20181219012530).png', '2018-12-19 06:25:30', '2018-12-19 06:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `id_year` int(11) NOT NULL,
  `year_grade` int(11) DEFAULT NULL,
  `id_class` int(11) DEFAULT NULL,
  `majors` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `id_dorm` int(11) DEFAULT NULL,
  `pengurus` enum('N','Y') NOT NULL DEFAULT 'N',
  `id_session` int(11) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `type` enum('TMI','TMTI') NOT NULL,
  `class_type` enum('biasa','intensif') NOT NULL,
  `dorm_type` int(11) NOT NULL,
  `generation` year(4) DEFAULT NULL,
  `status_selection` enum('notyet','done','pass','fail') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 NOT NULL,
  `address` text DEFAULT NULL,
  `asal` text DEFAULT NULL,
  `asal_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `gender` enum('L','P') NOT NULL,
  `birth` varchar(100) DEFAULT NULL,
  `child` varchar(50) DEFAULT NULL,
  `brother` varchar(50) DEFAULT NULL,
  `blood` enum('O','A','AB','B','-') DEFAULT '-',
  `payment_image` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `ijazah` text DEFAULT NULL,
  `skhun` text DEFAULT NULL,
  `ijazah_number` varchar(150) DEFAULT NULL,
  `shun_number` varchar(150) DEFAULT NULL,
  `un_number` varchar(150) DEFAULT NULL,
  `akta` text DEFAULT NULL,
  `kk` text DEFAULT NULL,
  `ktp_wali` text DEFAULT NULL,
  `sk_sehat` text DEFAULT NULL,
  `skkb` text DEFAULT NULL,
  `tk` varchar(250) DEFAULT NULL,
  `sd` varchar(250) DEFAULT NULL,
  `smp` varchar(250) DEFAULT NULL,
  `sma` varchar(250) DEFAULT NULL,
  `status` enum('register','active','alumni','pindah','dropout') NOT NULL DEFAULT 'register',
  `status_psb` enum('Y','N') NOT NULL,
  `status_santri` varchar(100) DEFAULT NULL,
  `up_conditional` int(11) NOT NULL DEFAULT 0,
  `readed` int(11) NOT NULL,
  `lastlog` datetime NOT NULL,
  `ipaddress` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `number`, `id_year`, `year_grade`, `id_class`, `majors`, `id_room`, `id_dorm`, `pengurus`, `id_session`, `token`, `type`, `class_type`, `dorm_type`, `generation`, `status_selection`, `email`, `password`, `nisn`, `nik`, `name`, `name_ar`, `address`, `asal`, `asal_ar`, `gender`, `birth`, `child`, `brother`, `blood`, `payment_image`, `profile_image`, `ijazah`, `skhun`, `ijazah_number`, `shun_number`, `un_number`, `akta`, `kk`, `ktp_wali`, `sk_sehat`, `skkb`, `tk`, `sd`, `smp`, `sma`, `status`, `status_psb`, `status_santri`, `up_conditional`, `readed`, `lastlog`, `ipaddress`, `created_at`, `updated_at`) VALUES
(4037, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'oDMizJULWdEEeuoUWC8A-20190514104443', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '0068066516', '3519023008060003', 'fattachul firdaus', '', 'DSN cempo RT/RW 032/004 kel.doho kec.dolopo kota madiun prov.jawa timur kode pos 63174', 'madiun', NULL, 'L', 'madiun&&2006-08-30', '2&&2', '1&&1&&0', 'O', 'PAYMENT_fattachul_firdaus_(20190514104444).jpg', 'PROFILE_fattachul_firdaus_(20190514104443).jpg', 'IJAZAH_fattachul_firdaus_(20190514104445).jpg', 'SKHUN_fattachul_firdaus_(20190514104445).jpg', '00000', '0000000', '00000', 'AKTA_fattachul_firdaus_(20190514104445).jpg', 'KK_fattachul_firdaus_(20190514104445).jpg', 'KTP_WALI_fattachul_firdaus_(20190514104445).jpg', 'SKK_fattachul_firdaus_(20190514104445).jpg', 'SKKB_fattachul_firdaus_(20190514104445).jpg', NULL, 'MIN 4 Madiun&&2019&&jl.ki hajar dewantara no.26 doho dolopo madiun', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 10:44:45', '36.90.169.73', '2019-05-14 15:44:45', '2019-05-14 15:44:45'),
(4038, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'WrSamxPEf7Es8OiuiF0z-20190514104853', 'TMI', 'biasa', 1, 2019, 'notyet', '', NULL, '00000000000000000000', '3502100212060001', 'Muhammad Ridho Rizky Kurniawan', '', 'Desa Ngabar kec.Siman Kab.Ponorogo', 'Ponorogo', NULL, 'L', 'ponorogo&&2006-12-02', '1&&2', '2&&2&&0', 'O', 'PAYMENT_Muhammad_Ridho_Rizky_Kurniawan_(20190514104855).jpg', 'PROFILE_Muhammad_Ridho_Rizky_Kurniawan_(20190514104853).jpg', 'IJAZAH_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', 'SKHUN_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', '00000000000000000', '0000000000000000', '0000000000000000', 'AKTA_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', 'KK_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', 'KTP_WALI_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', 'SKK_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', 'SKKB_Muhammad_Ridho_Rizky_Kurniawan_(20190514104856).jpg', NULL, 'SDN Ngabar&&2019&&Ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 10:48:56', '36.90.169.73', '2019-05-14 15:48:56', '2019-05-14 15:48:56'),
(4039, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, '1tiLL5jxu1U6FNOErGeG-20190514104936', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '000987', '3502102401070002', 'M.Azka Irfani', '', 'Jl.Sunan Gunung Jati Rt/Rw 02/01 Ds.Ngabar Kec.Siman Kab.Ponorogo 63471 Jawa timur', 'Ponorogo', NULL, 'L', 'Ponorogo &&2007-01-24', '4&&4', '4&&3&&0', 'O', 'PAYMENT_MAzka_Irfani_(20190514104938).jpg', 'PROFILE_MAzka_Irfani_(20190514104936).jpg', 'IJAZAH_MAzka_Irfani_(20190514104939).jpg', 'SKHUN_MAzka_Irfani_(20190514104939).jpg', '345', '43', '532', 'AKTA_MAzka_Irfani_(20190514104939).jpg', 'KK_MAzka_Irfani_(20190514104939).jpg', 'KTP_WALI_MAzka_Irfani_(20190514104939).jpg', 'SKK_MAzka_Irfani_(20190514104939).jpg', 'SKKB_MAzka_Irfani_(20190514104939).jpg', NULL, 'MI MAMMBAUL HUDA &&2019&&NGABAR', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 10:49:39', '36.90.169.73', '2019-05-14 15:49:39', '2019-05-14 15:49:39'),
(4040, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'Yqd4tuJf1oIN0DvZGLsM-20190514105440', 'TMI', 'intensif', 0, 2019, 'notyet', 'pp', NULL, '64473762372472', '5653462236723736572672', 'gheiza muhammad fauzi', '', 'jl pandeglang kav blok j bendungan cilegon banten', 'cilegon', NULL, 'L', 'cilegon&&2004-07-26', '2&&4', '3&&3&&0', 'O', 'PAYMENT_gheiza_muhammad_fauzi_(20190514105442).jpg', 'PROFILE_gheiza_muhammad_fauzi_(20190514105440).jpg', 'IJAZAH_gheiza_muhammad_fauzi_(20190514105443).jpg', 'SKHUN_gheiza_muhammad_fauzi_(20190514105443).jpg', '27267268265856828', '436565247672724', '27257265726725647625', 'AKTA_gheiza_muhammad_fauzi_(20190514105443).jpg', 'KK_gheiza_muhammad_fauzi_(20190514105443).jpg', 'KTP_WALI_gheiza_muhammad_fauzi_(20190514105443).jpg', 'SKK_gheiza_muhammad_fauzi_(20190514105443).jpg', 'SKKB_gheiza_muhammad_fauzi_(20190514105443).jpg', NULL, 'sd cilegon&&2015&&jl pandeglang kav blok j bendungan cilegon banten', 'smp cilegon&&2019&&jl pandeglang kav blok j bendungan cilegon banten', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 10:54:43', '36.90.169.73', '2019-05-14 15:54:43', '2019-05-14 15:54:43'),
(4041, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'ns3JftY4FebvFpS4qHXN-20190514105721', 'TMI', 'biasa', 1, 2019, 'notyet', '', NULL, '00000009', '3502081207050002', 'salman shofwan irawan', '', 'dukuh gontor I RT/RW 04/01 desa gontor kec.mlarak kab.ponorogo  prov.jawa timur kode pos 63472', 'ponorogo', NULL, 'L', 'ponorogo&&2005-07-12', '1&&2', '1&&1&&0', 'O', 'PAYMENT_salman_shofwan_irawan_(20190514105723).jpg', 'PROFILE_salman_shofwan_irawan_(20190514105721).jpg', 'IJAZAH_salman_shofwan_irawan_(20190514105725).jpg', 'SKHUN_salman_shofwan_irawan_(20190514105725).jpg', '0000000000', '000000', '00000000', 'AKTA_salman_shofwan_irawan_(20190514105725).jpg', 'KK_salman_shofwan_irawan_(20190514105725).jpg', 'KTP_WALI_salman_shofwan_irawan_(20190514105725).jpg', 'SKK_salman_shofwan_irawan_(20190514105725).jpg', 'SKKB_salman_shofwan_irawan_(20190514105725).jpg', NULL, 'sd bujang&&2019&&gontor mlarak ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 10:57:25', '36.90.169.73', '2019-05-14 15:57:25', '2019-05-14 15:57:25'),
(4042, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'XIH0Ljc4PFAy7y3OptFW-20190514110442', 'TMI', 'intensif', 0, 2019, 'notyet', 'psbppwalisongo@gmail.com', NULL, '5645635635636727267', '1671061701050001', 'ahmad aji al istnaini', '', 'jl ratu sainum ilir timur 3 kota palembang', 'palembang', NULL, 'L', 'palembang&&2006-07-22', '04&&02', '03&&03&&0', 'O', 'PAYMENT_ahmad_aji_al_istnaini_(20190514110443).jpg', 'PROFILE_ahmad_aji_al_istnaini_(20190514110442).jpg', 'IJAZAH_ahmad_aji_al_istnaini_(20190514110445).jpg', 'SKHUN_ahmad_aji_al_istnaini_(20190514110445).jpg', '283568587583682568268', '676746573566358268', '63765385858358758358', 'AKTA_ahmad_aji_al_istnaini_(20190514110445).jpg', 'KK_ahmad_aji_al_istnaini_(20190514110445).jpg', 'KTP_WALI_ahmad_aji_al_istnaini_(20190514110445).jpg', 'SKK_ahmad_aji_al_istnaini_(20190514110445).jpg', 'SKKB_ahmad_aji_al_istnaini_(20190514110445).jpg', NULL, 'sdn palembang&&2015&&jl ratu sainum ilir timur 3 kota palembang', 'smpn palembang&&2019&&jl ratu sainum ilir timur 3 kota palembang', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:04:45', '36.90.169.73', '2019-05-14 16:04:45', '2019-05-14 16:04:45'),
(4043, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'nfbGHfZUCaekIi4diA7g-20190514110915', 'TMI', 'intensif', 0, 2019, 'notyet', '', NULL, '0043956105', '3501092503040002', 'ANUGERAH AKBAR YUDHA ADISTIAN', '', 'DSN KRAJAN RT. 012/003 DESAS TEGALOMBO KECAMATAN PACITAN KABUPATEN PACITAN JAWA TIMUR', 'PACITAN', NULL, 'L', 'PACITAN&&2004-03-25', '1&&1', '0&&0&&0', 'O', 'PAYMENT_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110916).jpg', 'PROFILE_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110915).jpg', 'IJAZAH_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', 'SKHUN_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', '00000', '00000', '00000', 'AKTA_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', 'KK_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', 'KTP_WALI_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', 'SKK_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', 'SKKB_ANUGERAH_AKBAR_YUDHA_ADISTIAN_(20190514110918).jpg', NULL, 'PACCITAN&&2016&&PACCITAN', 'PACCITAN&&2019&&PACCITAN', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:09:18', '36.90.169.73', '2019-05-14 16:09:18', '2019-05-14 16:09:18'),
(4044, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'hAc9dYx2OGK0EJM8fsxB-20190514111218', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '2455432454564', '3502072103060002', 'Mohammad Wildan Alwi AL Mubarok', '', 'Ds.Patih.Kecamatan.Pulung.Ponorogo', 'PONOROGO', NULL, 'L', 'Ponorogo&&2006-03-21', '02&&02', '02&&02&&0', 'O', 'PAYMENT_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111220).jpg', 'PROFILE_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111218).jpg', 'IJAZAH_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', 'SKHUN_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', '12113243443', '21322443554', '5343424554', 'AKTA_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', 'KK_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', 'KTP_WALI_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', 'SKK_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', 'SKKB_Mohammad_Wildan_Alwi_AL_Mubarok_(20190514111221).jpg', NULL, 'SD IT PULUNG &&2019&&Ds Patik Kec Pulung Kab Ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:12:21', '36.90.169.73', '2019-05-14 16:12:21', '2019-05-14 16:12:21'),
(4045, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, '8ZPFukRLAQcDzqkZYs2l-20190514111427', 'TMI', 'intensif', 0, 2019, 'notyet', 'psbppwalisongo@gmail.com', NULL, '6763366376736737356736', '3312172412030001', 'ahmad dany', '', 'geuran purwantoro wonogiri', 'wonogiri', NULL, 'L', 'wonogiri&&2003-12-24', '01&&02', '01&&01&&0', 'O', 'PAYMENT_ahmad_dany_(20190514111429).jpg', 'PROFILE_ahmad_dany_(20190514111427).jpg', 'IJAZAH_ahmad_dany_(20190514111431).jpg', 'SKHUN_ahmad_dany_(20190514111431).jpg', '768678467876i7639764896', '3565676547483783783', '7687689679679679', 'AKTA_ahmad_dany_(20190514111431).jpg', 'KK_ahmad_dany_(20190514111431).jpg', 'KTP_WALI_ahmad_dany_(20190514111431).jpg', 'SKK_ahmad_dany_(20190514111431).jpg', 'SKKB_ahmad_dany_(20190514111431).jpg', NULL, 'sd wonogiri&&2015&&geuran purwantoro wonogiri', 'smp wonoggiri&&2019&&geuran purwantoro wonogiri', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:14:31', '36.90.169.73', '2019-05-14 16:14:31', '2019-05-14 16:14:31'),
(4046, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'MERARJjgloxEJ9lBMfzY-20190514111453', 'TMI', 'biasa', 1, 2019, 'notyet', '', NULL, '007929839', '3502100201070002', 'arsyadana fardan nafi\'an', '', 'jl.sunan drajad RT/RW 02/01 desa ngabar kec.siman kab.ponorogo  prov.jawa timur kode pos 63471', 'ponorogo', NULL, 'L', 'ponorogo&&2007-01-02', '2&&3', '2&&2&&0', 'O', 'PAYMENT_arsyadana_fardan_nafian_(20190514111455).jpg', 'PROFILE_arsyadana_fardan_nafian_(20190514111453).jpg', 'IJAZAH_arsyadana_fardan_nafian_(20190514111456).jpg', 'SKHUN_arsyadana_fardan_nafian_(20190514111456).jpg', '000', '000000000', '00000000000', 'AKTA_arsyadana_fardan_nafian_(20190514111456).jpg', 'KK_arsyadana_fardan_nafian_(20190514111456).jpg', 'KTP_WALI_arsyadana_fardan_nafian_(20190514111456).jpg', 'SKK_arsyadana_fardan_nafian_(20190514111456).jpg', 'SKKB_arsyadana_fardan_nafian_(20190514111456).jpg', NULL, 'MI mamba\'ul huda&&2019&&ngabar siman ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:14:56', '36.90.169.73', '2019-05-14 16:14:56', '2019-05-14 16:14:56'),
(4047, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, '5za9Zmc60Qx5JUTRYKUs-20190514111747', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '00000000000000000000000000000', '3502121111060001', 'Rafid Alfian susasnto', '', 'Jl.Madukoro NO.40 DS.Somoroto Kec.Kauman Ponorogo', 'Ponorogo', NULL, 'L', 'ponorogo&&2006-11-11', '2&&2', '2&&2&&0', 'O', 'PAYMENT_Rafid_Alfian_susasnto_(20190514111748).jpg', 'PROFILE_Rafid_Alfian_susasnto_(20190514111747).jpg', 'IJAZAH_Rafid_Alfian_susasnto_(20190514111749).jpg', 'SKHUN_Rafid_Alfian_susasnto_(20190514111749).jpg', '000000000000000000000000000', '00000000000000000', '000000000000000000000000000', 'AKTA_Rafid_Alfian_susasnto_(20190514111749).jpg', 'KK_Rafid_Alfian_susasnto_(20190514111749).jpg', 'KTP_WALI_Rafid_Alfian_susasnto_(20190514111749).jpg', 'SKK_Rafid_Alfian_susasnto_(20190514111749).jpg', 'SKKB_Rafid_Alfian_susasnto_(20190514111749).jpg', NULL, 'Ponorogo&&2019&&ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:17:49', '36.90.169.73', '2019-05-14 16:17:49', '2019-05-14 16:17:49'),
(4048, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'S9LnULNQyoNhnIPN7quG-20190514112621', 'TMI', 'intensif', 0, 2019, 'notyet', 'psbppwalisongo@gmail.com', NULL, '563656736735736735', '920801002104040003', 'enggal kayla wirayuda aamandito', '', 'jl pemuda kaiman  papua barat', ' papua barat', NULL, 'L', 'kaiman &&2004-04-21', '01&&03', '02&&02&&0', 'O', 'PAYMENT_enggal_kayla_wirayuda_aamandito_(20190514112622).jpg', 'PROFILE_enggal_kayla_wirayuda_aamandito_(20190514112621).jpg', 'IJAZAH_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', 'SKHUN_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', '484687476867867', '8784858764784', '52345255234654565', 'AKTA_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', 'KK_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', 'KTP_WALI_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', 'SKK_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', 'SKKB_enggal_kayla_wirayuda_aamandito_(20190514112624).jpg', NULL, 'sdn kaiman&&2015&&jl pemuda kaiman  papua barat', 'smp kaiman&&2019&&jl pemuda kaiman  papua barat', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:26:24', '36.90.169.73', '2019-05-14 16:26:24', '2019-05-14 16:26:24'),
(4049, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, '8TE7gGJP6bZknCuHwIKp-20190514112636', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '000000000000000000000', '0000000', 'Romzi', '', 'Ponorogo', 'Ponorogo', NULL, 'L', 'Jeddah&&2006-09-26', '1&&2', '1&&1&&0', 'O', 'PAYMENT_Romzi_(20190514112637).jpg', 'PROFILE_Romzi_(20190514112636).jpg', 'IJAZAH_Romzi_(20190514112639).jpg', 'SKHUN_Romzi_(20190514112639).jpg', '0000000000000000000000000', '000000000000000000000000', '0000000000000000000000000', 'AKTA_Romzi_(20190514112639).jpg', 'KK_Romzi_(20190514112639).jpg', 'KTP_WALI_Romzi_(20190514112639).jpg', 'SKK_Romzi_(20190514112639).jpg', 'SKKB_Romzi_(20190514112639).jpg', NULL, 'Ponorogo&&2019&&ponorogo', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:26:39', '36.90.169.73', '2019-05-14 16:26:39', '2019-05-14 16:26:39'),
(4050, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'jlIf3nctsb7SRymmDGGu-20190514113451', 'TMI', 'intensif', 0, 2019, 'notyet', '', NULL, '0031416366', '3502150610030003', 'REZA NUGRAHA PUTRA', '', 'DUKUH DASUN RT. 02/005 DESASA BANGUNRREEJO KECAMATAN SSUKOREJO  KABUPATENN PONOROGO JAWA TTIMUR', 'PONOROGO', NULL, 'L', 'PONOROGO&&2003-10-06', '1&&1', '0&&0&&0', 'O', 'PAYMENT_REZA_NUGRAHA_PUTRA_(20190514113453).jpg', 'PROFILE_REZA_NUGRAHA_PUTRA_(20190514113451).jpg', 'IJAZAH_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', 'SKHUN_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', '000000000', '000000000', '000000000', 'AKTA_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', 'KK_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', 'KTP_WALI_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', 'SKK_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', 'SKKB_REZA_NUGRAHA_PUTRA_(20190514113455).jpg', NULL, 'PONOROGO&&2016&&PONOROGO', 'MTSN 6 PONOROGO&&2019&&JLN RAYA BOGEM-SAMPUNG', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:34:55', '36.90.169.73', '2019-05-14 16:34:55', '2019-05-14 16:34:55'),
(4051, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'Mv1qtYMTx4cFeI5MJQ9k-20190514113917', 'TMI', 'intensif', 0, 2019, 'notyet', 'p', NULL, '78784646773735636', '3276041210020001', 'fatur racham', '', 'jl mesjid cinere depok', 'cinere', NULL, 'L', 'jakarta&&2002-10-12', '3&&3', '2&&2&&0', 'O', 'PAYMENT_fatur_racham_(20190514113918).jpg', 'PROFILE_fatur_racham_(20190514113917).jpg', 'IJAZAH_fatur_racham_(20190514113920).jpg', 'SKHUN_fatur_racham_(20190514113920).jpg', '86784687948698794979', '7647467387648468466', '7649879487947947948794', 'AKTA_fatur_racham_(20190514113920).jpg', 'KK_fatur_racham_(20190514113920).jpg', 'KTP_WALI_fatur_racham_(20190514113920).jpg', 'SKK_fatur_racham_(20190514113920).jpg', 'SKKB_fatur_racham_(20190514113920).jpg', NULL, 'sd cinere&&2015&&jl mesjid cinere ponorogo', 'smp cinere&&2019&&jl mesjid cinere ponorogo', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:39:20', '36.90.169.73', '2019-05-14 16:39:20', '2019-05-14 16:39:20'),
(4052, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'kLKULlh0gto4uEZlebSf-20190514114229', 'TMI', 'biasa', 0, 2019, 'notyet', '', NULL, '0000000000000000000', '0000000000000000000000000', 'Zidaan Shabri Al hadidy', '', 'Desa.Kejapanan Kec.Gempol Kaab.Pasuruan Gg.lemaara RT.05 Rw23', 'Pasuruan', NULL, 'L', 'Sidoarjo &&2006-12-06', '01&&01', '01&&01&&0', 'O', 'PAYMENT_Zidaan_Shabri_Al_hadidy_(20190514114230).jpg', 'PROFILE_Zidaan_Shabri_Al_hadidy_(20190514114229).jpg', 'IJAZAH_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', 'SKHUN_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', '000000000000000000000', '0000000000000000000000000000000', '000000000000000000000000000000', 'AKTA_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', 'KK_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', 'KTP_WALI_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', 'SKK_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', 'SKKB_Zidaan_Shabri_Al_hadidy_(20190514114232).jpg', NULL, 'Pasuruan&&2019&&Passuruan', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:42:32', '36.90.169.73', '2019-05-14 16:42:32', '2019-05-14 16:42:32'),
(4053, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'WnvT6uwzrriCfoB9npRx-20190514114341', 'TMI', 'intensif', 0, 2019, 'notyet', '', NULL, '0048881256', '3174080806040004', 'MUHAMMAD  SABILARROSYAD', '', 'JL. PENGADEGAN BARAT III RT. 001/006 DESA PENGADEGAN KECAMATAN PANCORAN KABUPATEN JAKARTA SELATAN DKI JAKARTA', 'JAKARTA', NULL, 'L', 'JAKARTTA&&2004-06-08', '2&&2', '1&&1&&0', 'O', 'PAYMENT_MUHAMMAD_SABILARROSYAD_(20190514114343).jpg', 'PROFILE_MUHAMMAD_SABILARROSYAD_(20190514114341).jpg', 'IJAZAH_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', 'SKHUN_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', '0000', '0000', '0000', 'AKTA_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', 'KK_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', 'KTP_WALI_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', 'SKK_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', 'SKKB_MUHAMMAD_SABILARROSYAD_(20190514114344).jpg', NULL, 'JAKARTA&&2016&&JKARTA', 'MTS RPI&&2019&&JAKARTA SELATAN', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:43:44', '36.90.169.73', '2019-05-14 16:43:44', '2019-05-14 16:43:44'),
(4054, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'HIyl49hsfnqRLiV01aQf-20190514115004', 'TMI', 'intensif', 0, 2019, 'notyet', 'psbppwalisongo@gmail.com', NULL, '6537663573876837683486346', '350211190107000', 'tegar putra cahya widodo', '', 'jl gatot khaca balong ponorogo', 'ponorogo', NULL, 'L', 'ponorogo&&2007-01-19', '1&&3', '2&&2&&0', 'O', 'PAYMENT_tegar_putra_cahya_widodo_(20190514115005).jpg', 'PROFILE_tegar_putra_cahya_widodo_(20190514115004).jpg', 'IJAZAH_tegar_putra_cahya_widodo_(20190514115007).jpg', 'SKHUN_tegar_putra_cahya_widodo_(20190514115007).jpg', '568753676474568678648', '6545674567658585853', '565463456225635246', 'AKTA_tegar_putra_cahya_widodo_(20190514115007).jpg', 'KK_tegar_putra_cahya_widodo_(20190514115007).jpg', 'KTP_WALI_tegar_putra_cahya_widodo_(20190514115007).jpg', 'SKK_tegar_putra_cahya_widodo_(20190514115007).jpg', 'SKKB_tegar_putra_cahya_widodo_(20190514115007).jpg', NULL, 'sd balong&&2015&&jl gatot khaca balong ponorogo', 'smp balong&&2019&&jl gatot khaca balong ponorogo', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:50:07', '36.90.169.73', '2019-05-14 16:50:07', '2019-05-14 16:50:07'),
(4055, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'mpX7pqqN1sGjvgXDbKOf-20190514115057', 'TMI', 'intensif', 0, 2019, 'notyet', '', NULL, '10666335464567', '3519012506030001', 'Faizal Falah', '', 'Dolopo.RT13.Madiun', 'Madiun', NULL, 'L', 'Madiun&&2003-07-09', '01&&02', '02&&02&&0', 'O', 'PAYMENT_Faizal_Falah_(20190514115058).jpg', 'PROFILE_Faizal_Falah_(20190514115057).jpg', 'IJAZAH_Faizal_Falah_(20190514115100).jpg', 'SKHUN_Faizal_Falah_(20190514115100).jpg', '`112321435345', '123321342353', '2553422353', 'AKTA_Faizal_Falah_(20190514115100).jpg', 'KK_Faizal_Falah_(20190514115100).jpg', 'KTP_WALI_Faizal_Falah_(20190514115100).jpg', 'SKK_Faizal_Falah_(20190514115100).jpg', 'SKKB_Faizal_Falah_(20190514115100).jpg', NULL, 'SD Madiun &&2015&&Dolopo Kab .Madiun', 'SMP Madiun&&2019&&Pagotan Kab.Madiun', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:51:00', '36.90.169.73', '2019-05-14 16:51:00', '2019-05-14 16:51:00'),
(4056, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'qYXfUbdsU5cVUbDBBvQr-20190514115136', 'TMI', 'intensif', 0, 2019, 'notyet', '', NULL, '0042154210', '3502112902040001', 'ahmad muflih hidayatullah', '', 'dukuh krajan RT/RW 004/002 kel.karangpatihan kec.balong kab.ponorogo  prov.jawa timur kode pos 63461', 'ponorogo', NULL, 'L', 'ponorogo&&2000-02-29', '2&&3', '2&&2&&0', 'O', 'PAYMENT_ahmad_muflih_hidayatullah_(20190514115138).jpg', 'PROFILE_ahmad_muflih_hidayatullah_(20190514115136).jpg', 'IJAZAH_ahmad_muflih_hidayatullah_(20190514115140).jpg', 'SKHUN_ahmad_muflih_hidayatullah_(20190514115140).jpg', '0000000', '0000000', '0000000000', 'AKTA_ahmad_muflih_hidayatullah_(20190514115140).jpg', 'KK_ahmad_muflih_hidayatullah_(20190514115140).jpg', 'KTP_WALI_ahmad_muflih_hidayatullah_(20190514115140).jpg', 'SKK_ahmad_muflih_hidayatullah_(20190514115140).jpg', 'SKKB_ahmad_muflih_hidayatullah_(20190514115140).jpg', NULL, 'SD 1 karangpatihan&&2016&&karangpatihan balong ponorogo', 'SMPN 1 karangpatihan&&2019&&karangpatihan balong ponorogo', NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:51:40', '36.90.169.73', '2019-05-14 16:51:40', '2019-05-14 16:51:40'),
(4057, NULL, 6, NULL, NULL, NULL, NULL, NULL, 'N', 4, 'zzq8xsbXArHUJdwIBP2X-20190514115747', 'TMI', 'biasa', 0, 2019, 'notyet', 'psbppwalisongo@gmail.com', NULL, '6748468698578058075', '47847907805970570579', 'riski firman', '', 'tidak diketahui', 'tidak di ketahu', NULL, 'L', 'tidak diketahui&&2004-07-06', '1&&1', '1&&1&&0', 'O', 'PAYMENT_riski_firman_(20190514115749).jpg', 'PROFILE_riski_firman_(20190514115747).jpg', 'IJAZAH_riski_firman_(20190514115750).jpg', 'SKHUN_riski_firman_(20190514115750).jpg', '85905905050405', '78095707405070705', '5089905509580590555', 'AKTA_riski_firman_(20190514115750).jpg', 'KK_riski_firman_(20190514115750).jpg', 'KTP_WALI_riski_firman_(20190514115750).jpg', 'SKK_riski_firman_(20190514115750).jpg', 'SKKB_riski_firman_(20190514115750).jpg', NULL, 'sdn tidak diketahui&&2019&&tidak diketahui', NULL, NULL, 'register', 'Y', NULL, 0, 0, '2019-05-14 11:57:50', '36.90.169.73', '2019-05-14 16:57:50', '2019-05-14 16:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_absence`
--

CREATE TABLE `student_absence` (
  `id` int(11) NOT NULL,
  `id_absence` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `status` enum('H','A','I','S') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_achievment`
--

CREATE TABLE `student_achievment` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `year` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_achievment`
--

INSERT INTO `student_achievment` (`id`, `id_student`, `name`, `level`, `year`, `created_at`, `updated_at`) VALUES
(1702, 3804, 'Qiro\'', 'Kabupaten', '-', '2019-03-09 01:40:50', '2019-03-09 01:40:50'),
(1703, 3804, 'Takraw', 'Kabupaten', '-', '2019-03-09 01:41:01', '2019-03-09 01:41:01'),
(1704, 3804, 'Sepak Bola', 'Anggota', '-', '2019-03-09 01:41:13', '2019-03-09 01:41:13'),
(1705, 3806, 'Pemain Terbaik Takraw', '-', '-', '2019-03-09 02:10:19', '2019-03-09 02:10:19'),
(1706, 3813, '-', '-', '-', '2019-03-16 07:40:28', '2019-03-16 07:40:28'),
(1707, 3830, 'JUARA 1 LOMBA PIDATO BAHASA INGGRIS', 'KECAMATAN', '2017', '2019-03-25 05:18:46', '2019-03-25 05:18:46'),
(1708, 3830, 'JUARA 3 LOMBA PIDATO BAHASA INGGRIS', 'KABUPATEN', '2017', '2019-03-25 05:18:46', '2019-03-25 05:18:46'),
(1709, 3832, 'PERINGKAT I DARI KELAS I S/D KELAS VI', 'SD', '2014 S/D 2019', '2019-03-27 13:16:53', '2019-03-27 13:16:53'),
(1710, 3833, 'Juara 3 Regu Putri', 'Kabupaten', '2018', '2019-03-27 16:05:11', '2019-03-27 16:05:11'),
(1711, 3843, 'Ranking 1MIN', 'Kelas', '2018', '2019-03-31 09:16:17', '2019-03-31 09:16:17'),
(1712, 3877, 'Futsal', 'Kecamatan', '2019', '2019-04-10 09:06:23', '2019-04-10 09:06:23'),
(1713, 3900, 'Jambore Madiun', 'Kabupaten', '2018', '2019-04-17 09:26:45', '2019-04-17 09:26:45'),
(1714, 3901, 'Peringkat 3', 'Kelas ', '2013', '2019-04-20 06:59:59', '2019-04-20 06:59:59'),
(1715, 3914, 'Juara 1 Speech Contest', 'Kota Depok', '2018', '2019-04-24 12:14:53', '2019-04-24 12:14:53'),
(1716, 3915, 'Melukis', 'Kota surabaya', '2018', '2019-04-24 13:00:44', '2019-04-24 13:00:44'),
(1717, 3931, 'JUARA 1 LOMBA ADZAN', 'TPA SE-KECAMATAN COLOMADU KARANGANYAR JAWA TENGAH', '2015', '2019-04-27 06:04:47', '2019-04-27 06:04:47'),
(1718, 3964, 'bela diri', 'kedcamatan', '2018', '2019-05-02 09:13:12', '2019-05-02 09:13:12'),
(1719, 3967, '-', 'none', 'none', '2019-05-07 16:07:30', '2019-05-07 16:07:30'),
(1720, 3969, 'Juara 1', 'Kelas 5', '2014', '2019-05-10 13:10:44', '2019-05-10 13:10:44'),
(1721, 3969, 'Juara 2', 'Kelas 6', '2015', '2019-05-10 13:10:44', '2019-05-10 13:10:44'),
(1722, 3969, 'Juara 3', 'Kelas VIi', '2017', '2019-05-10 13:10:44', '2019-05-10 13:10:44'),
(1723, 3969, 'Juara 2', 'Kelas Vlll', '2018', '2019-05-10 13:10:44', '2019-05-10 13:10:44'),
(1724, 3969, 'Juara 1', 'Kelas IX', '2019', '2019-05-10 13:10:44', '2019-05-10 13:10:44'),
(1725, 3970, '-', '-', '-', '2019-05-11 01:22:32', '2019-05-11 01:22:32'),
(1726, 3975, 'Bola', 'Kec.', '2017', '2019-05-13 06:56:47', '2019-05-13 06:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_experience`
--

CREATE TABLE `student_experience` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `position` varchar(150) NOT NULL,
  `active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_experience`
--

INSERT INTO `student_experience` (`id`, `id_student`, `name`, `position`, `active`, `created_at`, `updated_at`) VALUES
(1522, 3804, 'Sepak Bola', 'Anggota', '2014', '2019-03-09 01:40:17', '2019-03-09 01:40:17'),
(1523, 3806, 'Takraw', 'Anggota', '2014', '2019-03-09 02:09:42', '2019-03-09 02:09:42'),
(1524, 3806, 'Sepak Bola', 'Anggota', '2016', '2019-03-09 02:09:56', '2019-03-09 02:09:56'),
(1525, 3809, 'Drum Band', 'Bass', '2017-2019', '2019-03-15 03:56:37', '2019-03-15 03:56:37'),
(1526, 3813, '-', '-', '-', '2019-03-16 07:40:28', '2019-03-16 07:40:28'),
(1527, 3819, 'Drum Band', 'Senar', '2017-2019', '2019-03-17 10:42:11', '2019-03-17 10:42:11'),
(1528, 3832, 'PRAMUKA', 'PENGGALANG', '2018', '2019-03-27 13:16:53', '2019-03-27 13:16:53'),
(1529, 3833, 'Pramuka', 'Wakil Ketua', '2018', '2019-03-27 16:05:11', '2019-03-27 16:05:11'),
(1530, 3843, 'Pramuka', 'Anggota', '-', '2019-03-31 09:16:17', '2019-03-31 09:16:17'),
(1531, 3868, 'SSB', 'PESERTA', '2018-2019', '2019-04-08 08:08:19', '2019-04-08 08:08:19'),
(1532, 3901, 'Pramuka', 'Anggota', '2019', '2019-04-20 06:59:59', '2019-04-20 06:59:59'),
(1533, 3901, 'Drum Band', 'Anggota', '2019', '2019-04-20 06:59:59', '2019-04-20 06:59:59'),
(1534, 3901, 'Tahfidz', 'Anggota', '2019', '2019-04-20 06:59:59', '2019-04-20 06:59:59'),
(1535, 3915, '-', '-', '-', '2019-04-24 13:00:44', '2019-04-24 13:00:44'),
(1536, 3942, 'Pramuka', 'Anggota', '2018', '2019-04-29 06:43:56', '2019-04-29 06:43:56'),
(1537, 3967, '-', 'none', 'none', '2019-05-07 16:07:30', '2019-05-07 16:07:30'),
(1538, 3970, 'PRAMUKA', 'ANGGOTA', '2019', '2019-05-11 01:22:32', '2019-05-11 01:22:32'),
(1539, 3971, 'Pramuka', 'anggota', '2018-2019', '2019-05-11 12:37:55', '2019-05-11 12:37:55'),
(1540, 3975, '-', '-', 'none', '2019-05-13 06:56:47', '2019-05-13 06:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_history`
--

CREATE TABLE `student_history` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `id_year` int(11) NOT NULL,
  `year_grade` int(11) DEFAULT NULL,
  `id_class` int(11) DEFAULT NULL,
  `majors` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  `majors_room` varchar(50) DEFAULT NULL,
  `value_room` varchar(100) DEFAULT NULL,
  `gender_room` enum('L','P') DEFAULT NULL,
  `wali1_room` varchar(100) DEFAULT NULL,
  `wali2_room` varchar(100) DEFAULT NULL,
  `id_dorm` int(11) DEFAULT NULL,
  `pengurus` enum('N','Y') NOT NULL DEFAULT 'N',
  `value_dorm` varchar(100) DEFAULT NULL,
  `gender_dorm` enum('L','P') DEFAULT NULL,
  `type` enum('TMI','TMTI') NOT NULL,
  `class_type` enum('biasa','intensif') NOT NULL,
  `dorm_type` int(11) NOT NULL,
  `generation` year(4) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 NOT NULL,
  `asal` text DEFAULT NULL,
  `asal_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gender` enum('L','P') NOT NULL,
  `birth` varchar(100) DEFAULT NULL,
  `child` varchar(50) DEFAULT NULL,
  `brother` varchar(50) DEFAULT NULL,
  `blood` enum('O','A','AB','B','-') DEFAULT '-',
  `payment_image` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `ijazah` text DEFAULT NULL,
  `skhun` text DEFAULT NULL,
  `ijazah_number` varchar(150) DEFAULT NULL,
  `shun_number` varchar(150) DEFAULT NULL,
  `un_number` varchar(150) DEFAULT NULL,
  `akta` text DEFAULT NULL,
  `kk` text DEFAULT NULL,
  `ktp_wali` text DEFAULT NULL,
  `sk_sehat` text DEFAULT NULL,
  `skkb` text DEFAULT NULL,
  `tk` varchar(250) DEFAULT NULL,
  `sd` varchar(250) DEFAULT NULL,
  `smp` varchar(250) DEFAULT NULL,
  `sma` varchar(250) DEFAULT NULL,
  `status_up` enum('notyet','up','notup','up_conditional') NOT NULL DEFAULT 'notyet',
  `description` text DEFAULT NULL,
  `readed_popup` int(11) NOT NULL DEFAULT 1,
  `description_popup` text DEFAULT NULL,
  `status` enum('register','active','alumni','pindah','dropout') NOT NULL DEFAULT 'register',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_interest`
--

CREATE TABLE `student_interest` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `activity` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_medicalhistory`
--

CREATE TABLE `student_medicalhistory` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `year` varchar(250) NOT NULL,
  `status` enum('descent','nondescent') NOT NULL,
  `condition` enum('healed','relapse','nothealed') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_medicalhistory`
--

INSERT INTO `student_medicalhistory` (`id`, `id_student`, `name`, `year`, `status`, `condition`, `created_at`, `updated_at`) VALUES
(944, 3964, 'Gejala TIpes', '-', 'nondescent', 'healed', '2019-05-02 09:13:12', '2019-05-02 09:13:12'),
(945, 3967, 'Tidak ada', 'none', 'descent', 'healed', '2019-05-07 16:07:30', '2019-05-07 16:07:30'),
(946, 3970, '-', '-', 'nondescent', 'healed', '2019-05-11 01:22:32', '2019-05-11 01:22:32'),
(947, 3971, 'demam', '2019', 'nondescent', 'healed', '2019-05-11 12:37:55', '2019-05-11 12:37:55'),
(948, 3975, '-', '-', 'descent', 'healed', '2019-05-13 06:56:47', '2019-05-13 06:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_number`
--

CREATE TABLE `student_number` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_number`
--

INSERT INTO `student_number` (`id`, `number`, `gender`, `created_at`, `updated_at`) VALUES
(1, 22634, 'L', '2017-09-06 16:53:53', '2019-05-12 02:49:51'),
(2, 10280, 'P', '2017-09-06 16:53:53', '2019-05-03 13:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_parent`
--

CREATE TABLE `student_parent` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `type` enum('ayah','ibu','wali') NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `job` varchar(250) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `religion` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `status` enum('life','divorce','dead','-') DEFAULT '-',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_penalty`
--

CREATE TABLE `student_penalty` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_penalty` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `category_name` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `point` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_penaltydorm`
--

CREATE TABLE `student_penaltydorm` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_penalty` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `category_name` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `point` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_penaltydorm`
--

INSERT INTO `student_penaltydorm` (`id`, `id_year`, `semester`, `id_student`, `id_penalty`, `id_category`, `category_name`, `name`, `point`, `date`, `description`, `created_at`, `updated_at`) VALUES
(571, 5, 2, 2627, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-04-11', '', '2019-04-13 10:11:00', '2019-04-13 10:11:00'),
(572, 5, 2, 2681, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-04-11', '', '2019-04-13 10:27:05', '2019-04-13 10:27:05'),
(573, 5, 2, 2690, 83, 2, 'Sedang', 'Menyalah gunakan Perizinan', 10, '2019-03-07', '', '2019-04-13 10:29:39', '2019-04-13 10:29:39'),
(574, 5, 2, 2483, 72, 3, 'Berat', 'Mengambil Hak Milik Orang lain senilai <0,5 gram emas', 20, '2018-10-18', '', '2019-04-14 07:54:57', '2019-04-14 07:54:57'),
(575, 5, 2, 2430, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 07:56:33', '2019-04-14 07:56:33'),
(576, 5, 2, 2475, 83, 2, 'Sedang', 'Menyalah gunakan Perizinan', 10, '2019-02-23', '', '2019-04-14 07:57:47', '2019-04-14 07:57:47'),
(577, 5, 2, 2462, 83, 2, 'Sedang', 'Menyalah gunakan Perizinan', 10, '2019-03-25', '', '2019-04-14 08:01:19', '2019-04-14 08:01:19'),
(579, 5, 2, 2465, 62, 3, 'Berat', 'Berkhalawat (Mengadakan Pertemuan)', 30, '2018-12-03', '', '2019-04-14 08:11:52', '2019-04-14 08:11:52'),
(580, 5, 2, 2465, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:13:35', '2019-04-14 08:13:35'),
(581, 5, 2, 2457, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:17:46', '2019-04-14 08:17:46'),
(582, 5, 2, 2457, 62, 3, 'Berat', 'Berkhalawat (Mengadakan Pertemuan)', 30, '2018-12-03', '', '2019-04-14 08:18:19', '2019-04-14 08:18:19'),
(583, 5, 2, 2494, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:19:24', '2019-04-14 08:19:24'),
(584, 5, 2, 2503, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:25:10', '2019-04-14 08:25:10'),
(585, 5, 2, 2500, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-27', '', '2019-04-14 08:26:28', '2019-04-14 08:26:28'),
(587, 5, 2, 2538, 62, 3, 'Berat', 'Berkhalawat (Mengadakan Pertemuan)', 30, '2018-12-03', '', '2019-04-14 08:30:41', '2019-04-14 08:30:41'),
(588, 5, 1, 2538, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2018-07-25', '', '2019-04-14 08:32:16', '2019-04-14 08:32:16'),
(589, 5, 2, 2554, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:33:47', '2019-04-14 08:33:47'),
(590, 5, 2, 2549, 46, 2, 'Sedang', 'Membawa dan menggunakan barang elektronik secara Ilegal ', 10, '2019-01-05', '', '2019-04-14 08:38:54', '2019-04-14 08:38:54'),
(591, 5, 2, 2555, 83, 2, 'Sedang', 'Menyalah gunakan Perizinan', 10, '2019-02-23', '', '2019-04-14 08:42:50', '2019-04-14 08:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_personality`
--

CREATE TABLE `student_personality` (
  `id` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `score` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `id_year` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `category_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `id_lecture` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `harian` varchar(20) DEFAULT NULL,
  `uts` varchar(20) DEFAULT NULL,
  `uas` varchar(20) DEFAULT NULL,
  `score` varchar(20) DEFAULT NULL,
  `status` enum('verified','unverified') NOT NULL DEFAULT 'unverified',
  `ijazah` enum('N','Y') NOT NULL DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_talent`
--

CREATE TABLE `student_talent` (
  `id` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `activity` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_talent`
--

INSERT INTO `student_talent` (`id`, `id_student`, `name`, `activity`, `created_at`, `updated_at`) VALUES
(1337, 3755, 'Bela Diri', 'Takewondo', '2019-02-20 00:33:45', '2019-02-20 00:33:45'),
(1338, 3442, 'Olahraga', 'Sepakbola', '2019-02-20 00:57:44', '2019-02-20 00:57:44'),
(1339, 3430, 'Olahraga', 'Sepak Takraw dan Sepak Bola', '2019-02-22 10:16:53', '2019-02-22 10:16:53'),
(1340, 3435, 'Al-Qur\'an', 'MTQ dan Tahfidz', '2019-02-22 13:56:11', '2019-02-22 13:56:11'),
(1341, 3428, 'Olahraga', 'Futsal dan Sepakbola', '2019-02-23 01:42:20', '2019-02-23 01:42:20'),
(1342, 3432, 'Seni', 'Marawis', '2019-02-23 02:26:58', '2019-02-23 02:26:58'),
(1343, 3642, 'Pramuka ', '-', '2019-03-03 00:02:36', '2019-03-03 00:02:36'),
(1344, 3312, 'Seni', '-', '2019-03-03 00:35:56', '2019-03-03 00:35:56'),
(1345, 3802, 'Kesenian', 'Kaligrafi', '2019-03-09 00:53:18', '2019-03-09 00:53:18'),
(1346, 3802, 'Olah Raga', 'Bola Voli', '2019-03-09 00:53:34', '2019-03-09 00:53:34'),
(1347, 3804, 'Olah Raga', 'Sepak Bola', '2019-03-09 01:42:45', '2019-03-09 01:42:45'),
(1348, 3804, 'Olah Raga', 'Takraw', '2019-03-09 01:42:54', '2019-03-09 01:42:54'),
(1349, 3804, 'Olah Raga', 'Bola Voli', '2019-03-09 01:43:03', '2019-03-09 01:43:03'),
(1350, 3806, 'Olah Raga', 'Takraw', '2019-03-09 02:10:48', '2019-03-09 02:10:48'),
(1351, 3942, 'Kesenian', 'Tari', '2019-04-29 06:43:56', '2019-04-29 06:43:56'),
(1352, 3942, 'Kesenian', 'Kaligrafi', '2019-04-29 06:43:56', '2019-04-29 06:43:56'),
(1353, 3942, 'Olahraga', 'Bulutangkis', '2019-04-29 06:43:56', '2019-04-29 06:43:56'),
(1354, 3964, 'Olahraga', 'Futsal', '2019-05-02 09:13:12', '2019-05-02 09:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `image` text DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` enum('active','blocked') NOT NULL DEFAULT 'blocked',
  `ipaddress` varchar(100) NOT NULL,
  `lastlog` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`id`, `username`, `image`, `name`, `email`, `password`, `status`, `ipaddress`, `lastlog`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'ADMIN_Administrator_(20180107115005).jpg', 'Administrator', 'hengky.dev@gmail.com', 'def50200b703bbaf126ae79297ffbbdab23a47004cbc770acc70919965e02c978edc9df209e3a1b6b137e8bf6a13f99072b31652533b26d97de8120add70fe0a46b5fcece579b3ea94953c2189e489cfc846f2a1b9c40d7d2dc986edacc59bb6', 'active', '140.213.57.189', '2019-05-15 00:00:00', '2017-05-25 17:08:27', '2019-05-15 03:49:05'),
(3, 'ngabarian', 'ADMIN_Nunik_Liska_(20180711114909).jpg', 'TMt-I Mumtaz', '', 'def502008d83890bef115c38901b821adc4b78b80162821fb658476c1c652a60bf0ba3c82c3a839534499528d5bb213bb6b745f146c872be7f30f25ab9a9678feb20e0055f2f75521fc06d2c6f4338c4a8406f1f7e85437d4021bafa93', 'active', '36.90.49.236', '2019-05-15 00:00:00', '2017-10-21 03:48:36', '2019-05-15 10:11:35'),
(5, 'MPSputra', 'ADMIN_Majlis_Pembimbing_Santri_Putra_(20180106104435).png', 'Majlis Pembimbing Santri Putra', '', 'def502003286fec5c837e6946991a473e5663e83b2c4e09b5b2b3084e0fb0133d3671a7d59036e012a03a38c745083651bedddd384fa0391e01053a919f1ce14d10874fa613d2a57f1f79c6849885b887e0a3270aaef8ad1c743f74c84', 'active', '36.90.169.73', '2019-05-15 00:00:00', '2017-10-21 03:55:12', '2019-05-15 07:18:24'),
(7, 'zulfaamaliatmti', 'ADMIN_MPS_Putri_(20180118103723).png', 'MPS Putri', '', 'def50200d06e1e05a9abf27a637fd0c6fd04fd4295ef0981b9407638b8a9ec06ab0200a094d56ae3e84e3c47b9bb71d8ea53957ad8f797ed0345db9d0732a056b2c9f7a2e442daf80b99aeb1a902aee9f5d818e7bd398b3ad5ffba37d02c', 'active', '36.90.169.73', '2019-05-12 00:00:00', '2017-10-21 04:00:12', '2019-05-12 15:41:42'),
(8, 'amirdardiri', NULL, 'Amir Dardiri', '', 'def5020057edddf8694ea793da2e8c73cb0a2b3e7c4432f4a7420ee0149dbe9b5ad3ea0dd146c042ec4ab44454a970b8a389622dd8d17cbe08e7e3d4df5346db2304a31c6ac5992de40afad4c4bab59ba78c2bb678c2d5d669613b31e2f0b5e9', 'active', '36.74.37.226', '2018-09-22 00:00:00', '2017-12-10 08:03:51', '2018-09-22 13:29:49'),
(10, 'TMImajudancerdas', 'ADMIN_Tarbiyatul_Muallimin_Al-Islamiyah_(20180106104939).jpg', 'Tarbiyatul Mu\'allimin Al-Islamiyah', '', 'def502001a9bfbe5f4a4c6f1586492662795cecbc4adf907f94340ef9ea180ce942b02ab63b448b89bbc244c91c9d21302687f2edc70aa82d55e1ce39858e213cc9e5b5a12c7b2877168575ecdde59ad1eee3a3466d6b0a3ce3f74fb1d6800d7a1a78a9e', 'active', '112.215.237.78', '2019-05-13 00:00:00', '2018-01-06 03:49:39', '2019-05-13 11:23:17'),
(11, 'kampusputra', NULL, 'Tim Input Kelas 6 TMI', '', 'def502001cfd1c8e2e0415656b1fa75f6849f062e59ba28c725beec3882e67f618d868813caa841d835b18a6799b8bc1efbb6fe33736231c896caeacee9dfd451e7c6d0bab49154fc422c50339b0c83425e1bb6669712dbda24bf79880', 'blocked', '103.17.76.40', '2018-10-05 00:00:00', '2018-01-07 12:20:00', '2018-11-13 09:29:38'),
(12, 'kampusputri', NULL, 'Tim Input Kelas 6 TMt-I', '', 'def5020061730f1751b87e6e3194f799fadb555187e5e201d88f1a19169dd599bc5f58b46347a3a9ea3ce8b378ff9653ce8c56bbb01bae2eb4c40cbc21a42938cd1a51446b5664a5ae0de4727cfbfb8988fd0fe42d7e99d788294c1383', 'active', '103.17.76.40', '2018-05-23 00:00:00', '2018-01-13 10:34:21', '2018-11-13 09:29:58'),
(13, 'psbpi2019', 'ADMIN_PSB_Putri_2019_(20190321121310).jpg', 'PSB Putri 2019', '', 'def502009b7396c77de18e3324d57bde4c0943fc7ca99bb879fe0188e2c1c61a73b0ab9062254aca0c7cdf448ae763eb4a3fccd3dc4a1c097b1b8123467212d81de38a151fe5ee9510e9bb864d8cd188b94af47d80ed610ec5e58e9c', 'active', '36.90.49.236', '2019-05-15 00:00:00', '2018-02-17 11:06:24', '2019-05-15 09:29:16'),
(14, 'psbputra2019', 'ADMIN_PSB_Putra_2018_(20190320115143).jpg', 'PSB Putra 2019', '', 'def5020024b89aea054c673594a030db98d5e79da8510d1c5b22e25bde0b5ebb4c83ff1c04eb10b332ea4dba736d9b69da4a5c4405687dab2ae6f2a495c176bc61af4001efe7f41139e5d1332f77715b9e5bfc2398009a4da243368ca0', 'active', '36.90.169.73', '2019-05-15 00:00:00', '2018-02-17 11:08:56', '2019-05-14 21:53:10'),
(15, 'developer', NULL, 'Developer', 'developer@gmail.com', 'def502008d2d4835167259b391170289b3ab0c72569f29721bd7bd74e48b6789656d949586893be2076a9b3b9ad73d0327b09db3c49c474e06b7472b9ea975e336616a67b78535d21031b62883e20373ca52453e15de3636fdef73fa80f0620d33f0', 'active', '36.84.96.226', '2019-05-02 00:00:00', '2017-05-25 17:08:27', '2019-05-02 07:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `superuser_rules`
--

CREATE TABLE `superuser_rules` (
  `id` int(11) NOT NULL,
  `id_superuser` int(11) NOT NULL,
  `rules` text NOT NULL,
  `gender` enum('all','L','P') DEFAULT NULL,
  `rules_gender` enum('N','Y') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser_rules`
--

INSERT INTO `superuser_rules` (`id`, `id_superuser`, `rules`, `gender`, `rules_gender`, `created_at`, `updated_at`) VALUES
(97, 3, 'listyear', NULL, 'N', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(98, 3, 'psb_create', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(99, 3, 'psbconfig', NULL, 'N', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(100, 3, 'student', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(101, 3, 'studentcreate', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(102, 3, 'class', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(103, 3, 'absence', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(104, 3, 'teacher', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(105, 3, 'lecture', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(106, 3, 'schedules', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(107, 3, 'perizinan', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(108, 3, 'dorm', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(109, 3, 'penalty', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(110, 3, 'penaltydorm', 'P', 'Y', '2017-12-10 07:44:58', '2017-12-10 07:44:58'),
(158, 10, 'psb_create', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(159, 10, 'psb_data', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(160, 10, 'psbconfig', NULL, 'N', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(161, 10, 'student', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(162, 10, 'studentcreate', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(163, 10, 'class', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(164, 10, 'absence', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(165, 10, 'teacher', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(166, 10, 'lecture', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(167, 10, 'schedules', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(168, 10, 'perizinan', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(169, 10, 'penalty', 'L', 'Y', '2018-01-06 04:47:05', '2018-01-06 04:47:05'),
(221, 5, 'student', 'L', 'Y', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(222, 5, 'absencedorm', 'L', 'Y', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(223, 5, 'perizinandorm', 'L', 'Y', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(224, 5, 'dorm', 'L', 'Y', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(225, 5, 'penaltydorm', 'L', 'Y', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(226, 5, 'personality', NULL, 'N', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(227, 5, 'datanonacademic', NULL, 'N', '2018-01-28 15:05:52', '2018-01-28 15:05:52'),
(240, 7, 'student', 'P', 'Y', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(241, 7, 'absencedorm', 'P', 'Y', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(242, 7, 'perizinandorm', 'P', 'Y', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(243, 7, 'dorm', 'P', 'Y', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(244, 7, 'penaltydorm', 'P', 'Y', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(245, 7, 'personality', NULL, 'N', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(246, 7, 'datanonacademic', NULL, 'N', '2018-02-11 14:23:29', '2018-02-11 14:23:29'),
(260, 8, 'student', 'all', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(261, 8, 'absencedorm', 'P', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(262, 8, 'teacher', 'P', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(263, 8, 'perizinandorm', 'P', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(264, 8, 'dorm', 'P', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(265, 8, 'penaltydorm', 'P', 'Y', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(266, 8, 'personality', NULL, 'N', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(267, 8, 'datanonacademic', NULL, 'N', '2018-09-22 13:29:36', '2018-09-22 13:29:36'),
(276, 11, 'student', 'L', 'Y', '2018-11-13 09:29:38', '2018-11-13 09:29:38'),
(277, 12, 'student', 'P', 'Y', '2018-11-13 09:29:58', '2018-11-13 09:29:58'),
(303, 13, 'listyear', NULL, 'N', '2019-03-20 17:00:57', '2019-03-20 17:00:57'),
(304, 13, 'psb_create', 'P', 'Y', '2019-03-20 17:00:57', '2019-03-20 17:00:57'),
(305, 13, 'psb_data', 'P', 'Y', '2019-03-20 17:00:57', '2019-03-20 17:00:57'),
(306, 13, 'psbconfig', NULL, 'N', '2019-03-20 17:00:57', '2019-03-20 17:00:57'),
(307, 13, 'studentcreate', 'P', 'Y', '2019-03-20 17:00:57', '2019-03-20 17:00:57'),
(308, 14, 'listyear', NULL, 'N', '2019-03-20 17:02:26', '2019-03-20 17:02:26'),
(309, 14, 'psb_create', 'L', 'Y', '2019-03-20 17:02:26', '2019-03-20 17:02:26'),
(310, 14, 'psb_data', 'L', 'Y', '2019-03-20 17:02:26', '2019-03-20 17:02:26'),
(311, 14, 'psbconfig', NULL, 'N', '2019-03-20 17:02:26', '2019-03-20 17:02:26'),
(312, 14, 'studentcreate', 'L', 'Y', '2019-03-20 17:02:26', '2019-03-20 17:02:26'),
(313, 1, 'all', NULL, 'N', '2019-03-22 22:59:30', '2019-03-22 22:59:30'),
(314, 15, 'all', NULL, 'N', '2019-03-22 22:59:30', '2019-04-24 07:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lecture` text DEFAULT NULL,
  `image` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `birth` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `last_education` varchar(100) DEFAULT NULL,
  `graduate` date DEFAULT NULL,
  `begin` date DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('active','resign','pension','rest','fired') NOT NULL,
  `datalogin` enum('N','Y') NOT NULL,
  `lastlog` text NOT NULL,
  `ipaddress` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `nip`, `username`, `password`, `lecture`, `image`, `name`, `birth`, `position`, `gender`, `last_education`, `graduate`, `begin`, `email`, `address`, `status`, `datalogin`, `lastlog`, `ipaddress`, `created_at`, `updated_at`) VALUES
(345, '50', NULL, NULL, '47', '', 'Dzikrillah, S.pd', '-&&1970-01-01', 'Guru Non Asrama', 'L', '', '1970-01-01', '2018-06-25', '', '-', 'active', 'N', '2018-07-10 12:03:09', '103.233.241.183', '2018-07-10 05:03:09', '2018-11-07 03:58:14'),
(346, '161', NULL, NULL, NULL, 'TEACHER_Hana_Tsania_Nauroh_Afifah_(20180712082147).jpg', ' Hana Tsania Nauroh Afifah', 'Ponorogo&&1999-06-15', 'Guru Dalam', 'P', 'MA Wali Songo', '1970-01-01', '2018-07-12', 'hanahfdh52@gmail.com', 'Ngabar Siman Ponorogo', 'active', 'N', '2018-07-12 08:21:48', '103.233.241.183', '2018-07-12 13:21:48', '2018-11-04 14:33:16'),
(347, '163', NULL, NULL, '20,70', 'TEACHER_Alaina_Mawaddah_(20180712082701).jpg', 'Alaina Mawaddah', 'Demak&&1994-07-17', 'Guru Dalam', 'P', 'MA Wali Songo', '1970-01-01', '2018-07-12', 'mawaddahalaina@gmail.com', 'Loireng, Sayung, Demak', 'active', 'N', '2018-07-12 08:27:01', '36.90.51.16', '2018-07-12 13:27:01', '2019-02-01 15:07:12'),
(348, '164', NULL, NULL, '61', 'TEACHER_Nanda_Purnama_Sari_(20180712083356).jpg', 'Nanda Purnama Sari', 'Tulang Bawang&&1998-11-20', 'Guru Dalam', 'P', 'MA Wali Songo', '1970-01-01', '2018-07-12', 'nandapurnamasari55@gmail.com', 'Penawar jaya, banjar morgo, tulang bawang, Lampung.', 'active', 'N', '2018-07-12 08:33:56', '36.82.16.232', '2018-07-12 13:33:56', '2018-07-21 11:37:44'),
(349, '165', NULL, NULL, '14,61', 'TEACHER_Ustd_Tohiroh_(20180712085906).jpg', ' Tohiroh', 'Tambun Arang&&1997-05-20', 'Guru Dalam', 'P', 'MA Wali Songo', '1970-01-01', '2018-07-12', 'Tirabae1122@gmail.com', 'Tambun arang, Muara Tabir, Tebo, Jambi', 'active', 'N', '2018-07-12 08:59:07', '103.233.241.183', '2018-07-12 13:59:07', '2018-11-04 14:33:56'),
(350, '51', NULL, NULL, '39,40,42', '', 'Luthfi Nashirudin, S.Si', '&&1970-01-01', 'Guru Non Asrama', 'L', '', '1970-01-01', '1970-01-01', '', 'nagbar siman ponorogo', 'active', 'N', '2018-07-28 11:35:33', '103.233.241.183', '2018-07-28 16:35:33', '2018-11-07 03:58:05'),
(351, '567', NULL, NULL, '39', '', 'ihda', 'Ponorogo&&1995-09-12', 'dalam', 'P', 'ma wali songo', '2012-09-21', '2018-09-21', '', 'ponorogo', 'active', 'N', '2018-10-01 09:02:03', '178.128.80.124', '2018-10-01 14:02:03', '2018-10-01 14:02:03'),
(352, '3333', NULL, NULL, '23', '', ' Delvina', 'Ponorogo&&2000-09-20', 'guru dalam', 'P', 'MA Wali Songo', '2018-05-12', '2018-10-14', '', 'ponorogo', 'active', 'N', '2018-10-14 12:38:27', '103.233.241.183', '2018-10-14 05:38:27', '2018-11-04 14:34:29'),
(353, '88', NULL, NULL, '56,61', '', 'Fidella Alifia Wahyuning Arief', 'malang&&1999-09-12', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'fidella.fawa@gmail.com', 'malang, jawa Timur', 'active', 'N', '2018-11-16 10:00:09', '103.233.241.210', '2018-11-16 03:00:09', '2018-12-03 06:38:12'),
(356, '181', NULL, NULL, '46,61', '', 'azzahra nur rachman', 'makassar&&2000-11-11', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'sasa.sauqy@gmail.com', 'masamba. makassar', 'active', 'N', '2018-11-16 10:13:52', '128.199.84.210', '2018-11-16 03:13:52', '2018-11-16 03:13:52'),
(357, '182', NULL, NULL, '14,61', '', 'santi sukmawati', 'sukabumi&&1999-08-17', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'sasuke@gmail.com', 'sukabumi, jawa barat', 'active', 'N', '2018-11-16 10:20:04', '128.199.84.210', '2018-11-16 03:20:04', '2018-11-16 03:20:04'),
(358, '183', NULL, NULL, '47', '', 'Hj. Rahma Maulidia, M.Ag', 'Ponorogo&&1985-06-03', 'luar', 'P', '2018', '1970-01-01', '2018-11-16', 'bunda.ulid@gmail.com', 'ponorogo', 'active', 'N', '2018-11-16 01:50:27', '128.199.84.210', '2018-11-16 06:50:27', '2018-11-16 06:50:27'),
(359, '185', NULL, NULL, '44,46,61', '', 'Devika Arviana Farazeni', 'Pacitan&&1998-08-26', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'farazeni@gmail.com', 'Pacitan, Jawa Timur', 'active', 'N', '2018-11-16 02:04:32', '128.199.84.210', '2018-11-16 07:04:32', '2018-11-16 07:04:32'),
(360, '186', NULL, NULL, '61', '', 'Hana Tsania ', 'Ponorogo&&2000-03-11', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'hana@gmail.com', 'Ponorogo', 'active', 'N', '2018-11-16 02:59:29', '128.199.84.210', '2018-11-16 07:59:29', '2018-11-16 07:59:29'),
(361, '187', NULL, NULL, '32', '', 'Azzahra Fadhilah', 'Pacitan&&1999-03-03', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'zahra@gmail.com', 'Pacitan, Jawa Timur', 'active', 'N', '2018-11-16 09:27:37', '103.233.241.183', '2018-11-16 14:27:37', '2018-11-16 14:27:37'),
(362, '189', NULL, NULL, '22', '', 'Nur Indah Sari', 'Ponorogo&&2000-12-21', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'indah.sari@gmail.com', 'Ponorogo', 'active', 'N', '2018-11-16 09:33:49', '103.233.241.183', '2018-11-16 14:33:49', '2018-11-16 14:33:49'),
(363, '190', NULL, NULL, '39', '', 'Layla Thoyyibah', 'Palembang&&2000-03-21', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'layla@gmail.com', 'Palembang', 'active', 'N', '2018-11-16 09:43:48', '103.233.241.183', '2018-11-16 14:43:48', '2018-11-16 14:43:48'),
(364, '191', NULL, NULL, '61', '', 'Novi Purwaningsih', 'wonogiri&&1999-11-01', 'dalam', 'P', '2018', '1970-01-01', '2018-11-16', 'novipurwa@gmail.com', 'wonogiri', 'resign', 'N', '2018-11-16 09:58:53', '103.233.241.210', '2018-11-16 14:58:53', '2018-12-03 06:48:37'),
(366, '1459', NULL, NULL, '14', '', 'Rafida Nibrosi', 'jambi&&2000-11-10', 'guru dalam', 'P', 'MA Wali Songo', '2018-01-08', '2018-11-21', '', 'jambi ', 'active', 'N', '2018-11-21 11:14:05', '167.99.72.43', '2018-11-21 16:14:05', '2018-11-21 16:14:05'),
(367, '4563', NULL, NULL, '27', '', 'Deasi maria', 'Ponorogo&&2000-01-01', 'Guru Dalam ', 'P', 'MA Wali Songo', '2018-01-01', '2018-11-21', '', 'ponorogo', 'active', 'N', '2018-11-21 11:17:39', '167.99.72.43', '2018-11-21 16:17:39', '2018-11-21 16:17:39'),
(368, '222', NULL, NULL, '46', '', 'ustd. Isnaini Nur R, S.Kom', 'pasuruan&&1996-10-02', 'guru dalam', 'P', 'ITS', '2018-01-08', '2018-12-02', '', 'PASURUAN', 'active', 'N', '2019-01-04 09:10:41', '103.80.80.178', '2019-01-04 14:10:41', '2019-01-04 14:10:41'),
(369, '7789', NULL, NULL, '20,70', '', 'ustd. Alaina Mawaddah', 'demak&&1995-09-12', 'Guru Dalam', 'P', 'MA Wali Songo', '2018-01-08', '2019-01-25', '', 'demak', 'active', 'N', '2019-01-25 11:03:19', '36.90.169.216', '2019-01-25 16:03:19', '2019-01-25 16:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_regis`
--

CREATE TABLE `user_regis` (
  `id` int(11) NOT NULL,
  `id_student` int(11) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `status` enum('regis','unregis') NOT NULL,
  `lastlog` datetime DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_regis`
--

INSERT INTO `user_regis` (`id`, `id_student`, `username`, `password`, `status`, `lastlog`, `ipaddress`, `created_at`, `updated_at`) VALUES
(587, 3983, '2019A2179', 'def50200e18bb0cb58260a899c60eded4a5d52c6613ed21ced0df718a216fa0522fe22e5039acf853bd8671e778c0ce71b56050789a8b8f17d60a895650607f441959b891c1f06683e2ec1c84fc79581a704b7f074884f428106b31a0a', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 06:52:09', '2019-05-14 07:14:06'),
(588, 3989, '2019A2177', 'def50200171710197aef5a90017bcf01c5fb7fff779ead2e91340afe37e2f56158ee47e7c14fd065f78ef08a57418a4d7783923fdc001509afadfd5b774c78b5da77b6a6e496b172aed8a027910230b02541549988894527f2043c252c89516423f0', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:09:06', '2019-05-14 07:25:26'),
(589, NULL, '20192A2174', 'def50200cabfbab8e365cf30fd497e1d7d9a297a16070942c25959fa1df760d2f3a65f7ab7c594e0c586b3e5a557da2dea63ce92f4af2347598f89cdd829c90385bb515dff4334cdcebd86560fd3d90fcd5ea023f55533117f0243268f2aafe3', 'unregis', '2019-05-14 14:13:11', '36.90.169.73', '2019-05-14 07:13:11', '2019-05-14 07:13:11'),
(590, 3994, '2019A2173', 'def50200deb7c1b26176c1eea4bab44fe412ddc00e624267e2737885d740318e71691bdc0f51209eb41db380c70b903615e1a2aac57361b27e3bf451b9ae6d1d7137456ad3088b9eb706758d5a98a88be42a8621294d481ec3a55bf5656c161b', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:28:16', '2019-05-14 07:38:25'),
(591, 3998, '2019A2145', 'def50200284fb1d2261905f0fe044070300c8dcf894107c5e2805dbbda5d8844c55d3c9653be031a94304144781c9df1e2e306450b87b60195185519092e9a7cf91c80a38d13c5a36bc3bbcc87d79327d95dbc2b18e4e28669a777fd36', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:39:40', '2019-05-14 07:47:25'),
(592, 3999, '2019A2172', 'def502006898e75208150e7f0415f8ab573e268fd890f25e77e57385b05efd5ac329c453040d510320493ade4cedac5bd3e0814eb7a71fa0811370c70ddca7da5cb611d2e390bfdb231deb167b4330cccf1354bcdb7e222307bdbf35a3a98b', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:39:44', '2019-05-14 07:50:30'),
(593, NULL, 'NALiH140519', 'def5020055a69914bcdee100a2d20ff99973111bc721c6d5a6e5c9cf8e98772b64375d763082a3320c3bd682814cfe4b436d655d7d4e31537f2ae08b85aaa5d37b8b6bf657119f95ffcd3be6de2b26cdaa7c244240e18c9fa1d03d855cba', 'unregis', '2019-05-14 14:41:21', '36.90.169.73', '2019-05-14 07:41:21', '2019-05-14 07:41:21'),
(594, NULL, 'jawoq140519', 'def502002ba34cfba6e350565eca47fb79155dbde5be7c3c271a21904192a4431c898d6554c67e0767bcc13f47b390adb04e37af36f5b93ee646adc603d83d261e202b518d8ec604df37611a0119a2de7a09d588f669aea558d28dd2b00e', 'unregis', '2019-05-14 14:44:03', '36.90.169.73', '2019-05-14 07:44:03', '2019-05-14 07:44:03'),
(595, 4022, '2019A2165', 'def50200ee522ffcdb4ffda512e599dbc1d35b02775be3497b9b634c304756365cc8601bdb3e2b7499d381a80d6c00cf3ab7cfc2e148d2ea7435a67a30f4800ad1c101531b55c2f7806ea9e28af189ec1fa46cf700fe2e50475b0e4f58fe', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:49:01', '2019-05-14 15:07:32'),
(596, 4021, '2019A2171', 'def50200d0628aa98647cefb07e8ae08cdb187c9c0880cad0da8e5af0ac0c85d03b40f12a778c89670d23ede236548846fd61fc9877552dcb730ae18b949e24599df09541f14a75551326758bf912120a43e788503a1eff7dba7de379fcf4acd11', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 07:53:28', '2019-05-14 15:07:18'),
(597, 4005, '2019A2160', 'def50200a2dd712e49466d5b8ddc3ced49f406e96436250f6343cac0427a0589a615e796ebd81679e7cef0ff2b05bc0d5c1b8009cc3b6058d8387f58699e29b3fba6db5bc800ca651467f95fb491220cafc77ce7a507f0089b527e6b45d9', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 13:44:35', '2019-05-14 13:57:10'),
(598, 4011, '2019A2123', 'def50200e6ac7dc3bb001cfe3ea6c510378a6978e42012302f021d093b5b7a0457417fd9b3eac459c8784126195bd4b5e8af3c32bec82f7465b93b2545134828fb4efa151f6dd2865200cfef8569fe4274c21b523d9cf40015e6d9d8b3714e', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:01:18', '2019-05-14 14:20:13'),
(599, 4009, '2019A2131', 'def502005a9c0388feb9f5e41d8ab94286b3f73f93626dd1e9bed89098e6ad790f8fa2f12ae99e257a12db4d0e0d61d475100615e707eee01c3d2d9a817888d7cd32d2652de7901414e1d7c0e18d04e0524ef869fb3ebb1a8604106b229d6f03', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:03:45', '2019-05-14 14:10:24'),
(600, 4010, '2019A2133', 'def50200768a59c112410b1941c1f99700f461c45d9c8f2c1305366cf19e251e01ece42ac7f2af0cd01c716cdad39643d140378f882ab6f96a85a0481c8fb7819b0a792d9df60f8d57a0b6e572afd67001bf24eba7773a2dbbeeb9bc', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:12:09', '2019-05-14 14:16:37'),
(601, 4013, '2019A2134', 'def5020040af1947729e56ec4db3e7c5f7b1891259ffb682627461d9036538136c6859952a466134685b04e0a79f37146aaf7987ddf17173a2a68a5307f43d3d221c0e169faad1e445750d0ed4c56c781c314e7e2ef010ce31a0ad2f9a64', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:17:57', '2019-05-14 14:46:44'),
(602, 4016, '2019A2137', 'def5020090643c74ac3f7d3f9e24bbb067580773aee0f8a6cacecd3de894a883d17747e6543f08171fa749717ba353c937d62b9b8acc5a6a2b0564ddeadcc23c1a18b8632618eed84ca480102d10d56512b43c378eb1c12e6130e215', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:49:41', '2019-05-14 14:58:13'),
(603, 4037, '2019A2101', 'def50200922c1f70860a7429f986ed256f10d5b92501de98a65a26c7aeb712432f7dcef51b884f40ee371aa3fd5a3f57adb20761feb3352d4b223f70fec21df2768d47d08f13ce4195488d58a573840d1989fb9a0e58a398b5c88ae1079df4d9bb904b', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 14:54:42', '2019-05-14 15:44:45'),
(604, NULL, '2019A2126', 'def50200617ec062aa696dfc42e24f2467f3a9e8e76343c6e53676b06d9dc49abd660391759bbc534538793b5c925baf3fc08718ed0e270e7a2d5f7b4513648af143601763a081a7f4113f1a97ebb604927c1b403def10c360fad7913da458', 'unregis', '2019-05-14 22:09:25', '36.90.169.73', '2019-05-14 15:02:29', '2019-05-14 15:09:25'),
(605, 4027, '2019A2174', 'def5020052d22d69ab15de0b9affe81d910f7b8d0bc5888fe475af0c718a63512a82dce01f645161027c51c8ce79f60a0406e6d4d5649fe9355ec82c0a8568315842a7be6467e7c737d39bbc942cffcba8c2e076e1071d4cd606be654af17a74', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:08:52', '2019-05-14 15:25:05'),
(606, 4039, '2019A2128', 'def502004963c0b0a3edeb921e0e971ed74dd8fb44f1b256ff7084d31e86b256f01ded8d6c98884348b8d6212e31186de039222d77e1b276d3dca06479ef5c6d59e4e6471c46294c09675d705a08941275b8430eb51182fae3044a6381962f', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:12:37', '2019-05-14 15:49:39'),
(607, 4030, '2019A2167', 'def50200b7684ccae653080f7f9968cc4309d37697b239f5b6dfc0402161b3964e9c9d8d1ccaa163774b225a042a5379b6488686f97f872802db357936eb8db8c7e5f33814902deb2ba1964048951f79fbb2fe8479f83954749935fbad', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:20:20', '2019-05-14 15:29:56'),
(608, 4029, '2019A2150', 'def5020033f67f5080988550f3ac7e25e2be9f89850aa46a8c9683b85fb5e31350b056169ae28573a674fc09656a5c3dc16a70f61694531d93d7a2a646612fbd8bbe019312fb4282c7be678a88b96626305a53c752a4e539c7300ff2f5fc6fa0efbcded2aa2e2876facfb079', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:20:41', '2019-05-14 15:27:01'),
(609, 4036, '2019A169', 'def50200ce6d7a484c2fb26c2a193889c4f7a58ee9d7c8cd985bd43f948d6d152345cd1b623efb5cd96f29c2f1ffa6aaa66e474f24a4600bced44b20da14c137737708a2bab6be60422548d2a05f5128e8aa2121a54677b98cf4a8be762fd2', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:30:47', '2019-05-14 15:44:20'),
(610, 4038, '2019A2182', 'def5020095acdb9e0deddb040e7031cceeee513153a9cc1eb6fd646ae6df793504112f102e51c7c027a0dd2b6fce29af987710d082d465a51a9887a2340f09427cfd50be728141a80e9a9db2d55357f1d199b6837cca8515b99772ddd7bef70438', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:40:14', '2019-05-14 15:53:56'),
(611, 4057, '2019A2195', 'def502003f27855b1d9106cda3c16f0e50fd5af865045b6d93038d327f0398976a3f11f61c905449147dd849a39c7935721b76a031f1dad0628e4524911077dc505f0e22ccfa9fbe8069263eb6f519e043472696e88d486c3dca1de143964b', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:56:56', '2019-05-14 16:57:50'),
(612, 4056, '2019A1019', 'def502001cc72ff75e3e4cf9684e2455ff4bbc89635c802a355a3d934d8b0f928c6d1eee773a4ab6b9788501f040e51d765387d77582bdccf5615b0a929fd3d929cc0b2b56585b32c3e5007472f3ebc5c6932fe6e96d94cac5896656b014c6', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 15:58:43', '2019-05-14 16:51:40'),
(613, 4047, '2019A2183', 'def50200d98fd3b273fc280dd9bea20182303f9554982c2b31099cc8ef4fc06727fe47b681ad445edbb21f0e11c2e49b667a5943057a24150bd35123719f42951ea5917e08009fcc73a4bb36780262e83b6c8fe661d12fcd4107c6e795facb', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 16:02:07', '2019-05-14 16:17:49'),
(614, 4055, '2019A1033', 'def502008b0ae8c5cacbb7503cb6d7a19b9d8b20708251ca2c2bef0365b68ee6511c03b0f004c51b1563cc57e859f80d0d1c9dfb81877e951b5a5c58db7eb3a2a7afd33d0f5f1ca58a0d9a442da7648b395ad77d614183985749dc9638d7f5', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 16:26:00', '2019-05-14 16:51:00'),
(615, 4054, '2019A2196', 'def50200b3c153ed45cb54eba144b55c11d9ca193b416b3d1fa2b3ff4dd268f6f3840b130b977bd990e9665dc3271c35635edd426ccec2c558ee0f739a3938ec677145c121ba50dfd0f71cd85e390acdcb1aa9dc1afceaccae9b17424d73', 'regis', '2019-05-14 00:00:00', '36.90.169.73', '2019-05-14 16:41:25', '2019-05-14 16:50:54'),
(616, NULL, '2019A2197', 'def50200a5f31739791c7bf215f4f6a77425fa788f85fa916dd5752928102a5ddea6196cd1e5f722f76271292170aa1d9f7b6e8c6d07b00d7ee73a32bf244c3720e70345d12c277e5dbecd60dd1b070c6e1f5164f3b36b615c8debb198', 'unregis', '2019-05-15 00:00:00', '36.84.240.167', '2019-05-14 22:20:22', '2019-05-15 05:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `year_grade`
--

CREATE TABLE `year_grade` (
  `id` int(11) NOT NULL,
  `first` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `status` enum('now','past','next') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year_grade`
--

INSERT INTO `year_grade` (`id`, `first`, `end`, `status`, `created_at`, `updated_at`) VALUES
(4, 2017, 2018, 'past', '2017-11-09 11:42:44', '2018-09-13 12:43:54'),
(5, 2018, 2019, 'past', '2017-12-19 02:58:28', '2019-05-13 06:05:57'),
(6, 2019, 2020, 'now', '2018-12-21 20:35:03', '2019-05-13 06:05:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dorm` (`id_room`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `absence_dorm`
--
ALTER TABLE `absence_dorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dorm` (`id_dorm`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `wali_kelas2` (`wali_kelas2`),
  ADD KEY `id_majors` (`id_majors`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_psb`
--
ALTER TABLE `config_psb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_year` (`id_year`);

--
-- Indexes for table `dorm`
--
ALTER TABLE `dorm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorm_absence`
--
ALTER TABLE `dorm_absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_absence` (`id_absence`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `dorm_category`
--
ALTER TABLE `dorm_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_desc`
--
ALTER TABLE `extra_desc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `extra_level`
--
ALTER TABLE `extra_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `extra_score`
--
ALTER TABLE `extra_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_level` (`id_level`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `extra_status`
--
ALTER TABLE `extra_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `extra_type`
--
ALTER TABLE `extra_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `lecture_category`
--
ALTER TABLE `lecture_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_schedule`
--
ALTER TABLE `lecture_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_course` (`id_lecture`),
  ADD KEY `id_class` (`id_room`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_year` (`id_year`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `penaltydorm`
--
ALTER TABLE `penaltydorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `penaltydorm_category`
--
ALTER TABLE `penaltydorm_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penaltydorm_max`
--
ALTER TABLE `penaltydorm_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty_category`
--
ALTER TABLE `penalty_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty_max`
--
ALTER TABLE `penalty_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perizinan`
--
ALTER TABLE `perizinan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_class` (`id_class`);

--
-- Indexes for table `perizinandorm`
--
ALTER TABLE `perizinandorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_class` (`id_class`);

--
-- Indexes for table `personality`
--
ALTER TABLE `personality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules_config`
--
ALTER TABLE `schedules_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules_time`
--
ALTER TABLE `schedules_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_config` (`id_config`);

--
-- Indexes for table `score_exstra`
--
ALTER TABLE `score_exstra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_level` (`id_level`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `score_exstra_desc`
--
ALTER TABLE `score_exstra_desc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `id_semester` (`id_semester`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `score_kkm`
--
ALTER TABLE `score_kkm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `id_lecture` (`id_lecture`),
  ADD KEY `id_major` (`id_major`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_psb`
--
ALTER TABLE `session_psb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_year` (`id_year`);

--
-- Indexes for table `sk_teacher`
--
ALTER TABLE `sk_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_teacher` (`id_teacher`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `year_grade` (`year_grade`),
  ADD KEY `majors` (`majors`);

--
-- Indexes for table `student_absence`
--
ALTER TABLE `student_absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_absence` (`id_absence`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_achievment`
--
ALTER TABLE `student_achievment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_experience`
--
ALTER TABLE `student_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_history`
--
ALTER TABLE `student_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `year_grade` (`year_grade`),
  ADD KEY `id_dorm` (`id_dorm`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `majors` (`majors`);

--
-- Indexes for table `student_interest`
--
ALTER TABLE `student_interest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_medicalhistory`
--
ALTER TABLE `student_medicalhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `student_number`
--
ALTER TABLE `student_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parent`
--
ALTER TABLE `student_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_year` (`id_year`);

--
-- Indexes for table `student_penalty`
--
ALTER TABLE `student_penalty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_penalty` (`id_penalty`);

--
-- Indexes for table `student_penaltydorm`
--
ALTER TABLE `student_penaltydorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_penalty` (`id_penalty`);

--
-- Indexes for table `student_personality`
--
ALTER TABLE `student_personality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `category` (`id_category`),
  ADD KEY `id_semester` (`id_semester`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `student_talent`
--
ALTER TABLE `student_talent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_student` (`id_student`);

--
-- Indexes for table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superuser_rules`
--
ALTER TABLE `superuser_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_superuserrules_superuser` (`id_superuser`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indexes for table `user_regis`
--
ALTER TABLE `user_regis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year_grade`
--
ALTER TABLE `year_grade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absence`
--
ALTER TABLE `absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10732;

--
-- AUTO_INCREMENT for table `absence_dorm`
--
ALTER TABLE `absence_dorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_psb`
--
ALTER TABLE `config_psb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dorm`
--
ALTER TABLE `dorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `dorm_absence`
--
ALTER TABLE `dorm_absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `dorm_category`
--
ALTER TABLE `dorm_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `extra_desc`
--
ALTER TABLE `extra_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `extra_level`
--
ALTER TABLE `extra_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `extra_score`
--
ALTER TABLE `extra_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `extra_status`
--
ALTER TABLE `extra_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `extra_type`
--
ALTER TABLE `extra_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lecture`
--
ALTER TABLE `lecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `lecture_category`
--
ALTER TABLE `lecture_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lecture_schedule`
--
ALTER TABLE `lecture_schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6517;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penaltydorm`
--
ALTER TABLE `penaltydorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `penaltydorm_category`
--
ALTER TABLE `penaltydorm_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penaltydorm_max`
--
ALTER TABLE `penaltydorm_max`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penalty_category`
--
ALTER TABLE `penalty_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penalty_max`
--
ALTER TABLE `penalty_max`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perizinan`
--
ALTER TABLE `perizinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8518;

--
-- AUTO_INCREMENT for table `perizinandorm`
--
ALTER TABLE `perizinandorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `personality`
--
ALTER TABLE `personality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedules_config`
--
ALTER TABLE `schedules_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schedules_time`
--
ALTER TABLE `schedules_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `score_exstra`
--
ALTER TABLE `score_exstra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score_exstra_desc`
--
ALTER TABLE `score_exstra_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score_kkm`
--
ALTER TABLE `score_kkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session_psb`
--
ALTER TABLE `session_psb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sk_teacher`
--
ALTER TABLE `sk_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4058;

--
-- AUTO_INCREMENT for table `student_absence`
--
ALTER TABLE `student_absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_achievment`
--
ALTER TABLE `student_achievment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1727;

--
-- AUTO_INCREMENT for table `student_experience`
--
ALTER TABLE `student_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1541;

--
-- AUTO_INCREMENT for table `student_history`
--
ALTER TABLE `student_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_interest`
--
ALTER TABLE `student_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_medicalhistory`
--
ALTER TABLE `student_medicalhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=949;

--
-- AUTO_INCREMENT for table `student_number`
--
ALTER TABLE `student_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_parent`
--
ALTER TABLE `student_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_penalty`
--
ALTER TABLE `student_penalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_penaltydorm`
--
ALTER TABLE `student_penaltydorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=592;

--
-- AUTO_INCREMENT for table `student_personality`
--
ALTER TABLE `student_personality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_talent`
--
ALTER TABLE `student_talent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT for table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `superuser_rules`
--
ALTER TABLE `superuser_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `user_regis`
--
ALTER TABLE `user_regis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT for table `year_grade`
--
ALTER TABLE `year_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `fk_classroom_class` FOREIGN KEY (`id_class`) REFERENCES `class` (`id`);

--
-- Constraints for table `superuser_rules`
--
ALTER TABLE `superuser_rules`
  ADD CONSTRAINT `fk_superuserrules_superuser` FOREIGN KEY (`id_superuser`) REFERENCES `superuser` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
