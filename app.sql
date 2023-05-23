-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 05:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `description`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'School Name', 'Selamat Datang Di', '<h4>Belajar dengan bahagia, tumbuh dengan kreatifitas, dan berkembang dengan potensi terbaik.</h4>', '<p>School Name adalah lembaga pendidikan yang ditujukan bagi anak usia 2-6 tahun. Lembaga ini didesain untuk membantu anak-anak dalam memperoleh pengalaman belajar yang bermanfaat dan merangsang perkembangan fisik, mental, sosial, dan emosional mereka dengan berbagai metode yang inovatif dan menyenangkan. School Name bertujuan untuk membantu anak-anak memperoleh dasar-dasar yang kuat untuk belajar di kemudian hari serta membantu mereka mengembangkan kemampuan untuk berinteraksi dan beradaptasi dengan lingkungan sekitar. Melalui pendekatan holistik dan berbasis pada kebutuhan dan potensi anak, School Name membantu menciptakan generasi muda yang cerdas, kreatif, mandiri, dan berakhlak mulia.</p>', 'nd8LGkdUrYBo7SVwrAepPfDAtFRBv0sWKeivhwZe.png', '2023-01-24 19:35:10', '2023-03-26 05:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `content` text NOT NULL,
  `location` text NOT NULL,
  `yt_link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `title`, `slug`, `start_date`, `end_date`, `start_time`, `end_time`, `content`, `location`, `yt_link`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Pendaftaran Siswa Baru', 'pendaftaran-siswa-baru', '2023-02-26', '2023-03-03', '07:00:00', '16:00:00', '<p>Agenda:</p>\r\n<ul>\r\n<li>Pendaftaran Siswa Baru</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n<p>Catatan:</p>\r\n<ul>\r\n<li>Mohon membawa tanda pengenal untuk keamanan</li>\r\n<li>&nbsp;</li>\r\n</ul>', 'Gedung Sekolah', '#', 'IF73APJXbLOhW22UDetVSDMyLNic5BnpW32tGtYd.jpg', 1, '2023-01-25 02:27:49', '2023-03-27 22:06:25'),
(3, 'Kegiatan Parenting', 'kegiatan-parenting', '2024-03-31', '2024-04-03', '07:00:00', '11:59:00', '<p>Agenda Kegiatan Parenting: \"Mendukung Tumbuh Kembang Anak melalui Peran Orang Tua\"</p>\r\n<p>Tujuan Kegiatan: Kegiatan parenting ini diadakan untuk memberikan informasi dan keterampilan kepada orang tua dalam mendukung tumbuh kembang anak mereka. Kegiatan ini juga bertujuan untuk meningkatkan kesadaran orang tua tentang pentingnya peran mereka dalam pendidikan dan perkembangan anak.</p>\r\n<p>Rincian Kegiatan:</p>\r\n<ol>\r\n<li>\r\n<p>Seminar Parenting: Seminar akan diadakan dengan mengundang ahli di bidang parenting untuk memberikan informasi dan saran tentang cara-cara untuk mendukung tumbuh kembang anak melalui peran orang tua. Para peserta akan belajar tentang cara mengajarkan anak membaca dan menulis, memberikan dukungan emosional pada anak, dan cara memotivasi anak untuk belajar.</p>\r\n</li>\r\n<li>\r\n<p>Diskusi Kelompok: Setelah seminar, para peserta akan bergabung dalam kelompok diskusi kecil yang dipandu oleh seorang moderator. Kelompok diskusi ini akan membahas topik yang telah dipelajari dalam seminar dan memberikan kesempatan kepada orang tua untuk berbagi pengalaman dan bertanya kepada ahli parenting.</p>\r\n</li>\r\n<li>\r\n<p>Demonstrasi: Selama kegiatan parenting, akan dilakukan demonstrasi untuk memberikan contoh konkret dari cara-cara mendukung tumbuh kembang anak. Demonstrasi ini meliputi cara membacakan cerita kepada anak, membuat mainan edukatif dengan bahan-bahan sehari-hari, dan cara berkomunikasi secara efektif dengan anak.</p>\r\n</li>\r\n<li>\r\n<p>Pertemuan Individu: Para peserta akan diberikan kesempatan untuk bertemu dengan guru dan pengasuh anak mereka secara individu untuk mendiskusikan perkembangan anak dan memberikan saran serta rekomendasi yang sesuai.</p>\r\n</li>\r\n<li>\r\n<p>Materi dan Sumber Daya: Selama kegiatan parenting, peserta akan diberikan materi dan sumber daya pendukung dalam bentuk buku, pamflet, dan video tentang cara-cara mendukung tumbuh kembang anak.</p>\r\n</li>\r\n</ol>\r\n<p>Dengan kegiatan parenting ini, diharapkan para orang tua akan lebih siap dalam mendukung tumbuh kembang anak-anak mereka dan dapat berperan aktif dalam pendidikan dan perkembangan anak.</p>', 'Aula Sekolah', '#', 'NV5dxOxNEXmf4GPe36AHKo9z2vFrHq6sKzVfgZtg.jpg', 1, '2023-03-27 22:09:13', '2023-04-19 12:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `alumnis`
--

CREATE TABLE `alumnis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `angkatan` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alumnis`
--

INSERT INTO `alumnis` (`id`, `name`, `angkatan`, `image`, `jenis_kelamin`, `alamat`, `pekerjaan`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'Muhamad Fikri Al jabani', '2017 - 2018', '1NsNrWfJaaXLyDJTGoWXNG67XxfKMGsbuGo5GcXe.jpg', 'Laki - Laki', '<p>Jln.Cipedes Atas No 32</p>', 'IT STAFF', 'admin@smapasundan3bandung.sch.id', 6281317806086, '2023-02-22 03:19:25', '2023-02-22 03:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `name`, `slug`, `image`, `description`, `content`, `created_at`, `updated_at`) VALUES
(6, '18 Juli 2022', '18-juli-2022', NULL, NULL, '<p>Masuk Awal Sekolah</p>', '2023-03-08 00:20:44', '2023-03-08 00:20:44'),
(7, '21 - 27 Juli 2022', '21-27-juli-2022', NULL, NULL, '<p>Pengenalan Lingkungan Sekolah</p>', '2023-03-08 00:22:21', '2023-03-08 00:22:21'),
(8, '26 - 27 Juli 2022', '26-27-juli-2022', NULL, NULL, '<p>Masa Orientasi Pend.Kepramukaan</p>', '2023-03-08 00:23:57', '2023-03-08 00:23:57'),
(9, '17 Agustus 2022', '17-agustus-2022', NULL, NULL, '<p>Hari Kemerdekaaan RI</p>', '2023-03-08 00:26:17', '2023-03-08 00:26:17'),
(10, '22 - 25 Agustus 2022', '22-25-agustus-2022', NULL, NULL, '<p>Simulasi Gladi Bersih ASBK</p>', '2023-03-08 00:26:54', '2023-03-08 00:26:54'),
(11, '29 - 30 Agustus 2022', '29-30-agustus-2022', NULL, NULL, '<p>Pelaksanaan ASBK</p>', '2023-03-08 00:27:26', '2023-03-08 00:27:26'),
(12, '5 September 2022', '5-september-2022', NULL, NULL, '<p>Pertemuan Orang Tua Kelas Siswa Kelas XI</p>', '2023-03-08 00:28:06', '2023-03-08 00:28:06'),
(13, '6 September 2022', '6-september-2022', NULL, NULL, '<p>Pertemuan Orang Tua Siswa Kelas XII</p>', '2023-03-08 00:28:41', '2023-03-08 00:28:41'),
(15, '14 - 21 September 2022', '14-21-september-2022', NULL, NULL, '<p>Perkiraan PTS 1</p>', '2023-03-08 00:29:48', '2023-03-08 00:29:48'),
(16, '22 - 30 September 2022', '22-30-september-2022', NULL, NULL, '<p>Prakiraan Jeda Tengah Semester 1</p>', '2023-03-08 00:30:28', '2023-03-08 00:30:28'),
(17, '29 - 30 September 2022', '29-30-september-2022', NULL, NULL, '<p>Pekan Kreativitas Siswa</p>', '2023-03-08 00:30:54', '2023-03-08 00:30:54'),
(18, '8 Oktober 2022', '8-oktober-2022', NULL, NULL, '<p>Libur Maulid Nabi Muhamad SAW</p>', '2023-03-08 00:31:47', '2023-03-08 00:31:47'),
(19, '8 - 14 Oktober 2022', '8-14-oktober-2022', NULL, NULL, '<p>Perkiraan PAS</p>', '2023-03-08 00:32:20', '2023-03-08 00:32:20'),
(20, '23 Desember 2022', '23-desember-2022', NULL, NULL, '<p>Titik Mangsa Raport Semester 1</p>', '2023-03-08 00:33:08', '2023-03-08 00:33:08'),
(21, '23 Desember 2022', '23-desember-2022', NULL, NULL, '<p>Pembagian Raport Semester 1</p>', '2023-03-08 00:33:29', '2023-03-08 00:33:29'),
(22, '24 - 25 Desember 2022', '24-25-desember-2022', NULL, NULL, '<p>Cuti Bersama</p>', '2023-03-08 00:33:46', '2023-03-08 00:33:46'),
(23, '25 Desember 2022', '25-desember-2022', NULL, NULL, '<p>Libur Natal&nbsp;</p>', '2023-03-08 00:34:03', '2023-03-08 00:34:03'),
(24, '26 Des - 7 Jan 2023', '26-des-7-jan-2023', NULL, NULL, '<p>Libur Semester 1</p>', '2023-03-08 00:34:32', '2023-03-08 00:34:32'),
(25, '1 Januari 2023', '1-januari-2023', NULL, NULL, '<p>Libur Tahun Baru Masehi</p>', '2023-03-08 00:34:58', '2023-03-08 00:34:58'),
(26, '9 Januari 2023', '9-januari-2023', NULL, NULL, '<p>Masuk Sekolah Semester 2</p>', '2023-03-08 00:35:21', '2023-03-08 00:35:21'),
(27, '22 Februari 2023', '22-februari-2023', NULL, NULL, '<p>Libur Tahun Baru Imlek 2574</p>', '2023-03-08 00:35:46', '2023-03-08 00:35:46'),
(28, '18 Februari 2023', '18-februari-2023', NULL, NULL, '<p>Libur Isra\'Mi\'raj</p>', '2023-03-08 00:36:15', '2023-03-08 00:36:15'),
(29, '22 Maret 2023', '22-maret-2023', NULL, NULL, '<p>Libur Hari Raya Nyepi</p>', '2023-03-08 00:36:40', '2023-03-08 00:36:40'),
(30, '6 - 13 Maret 2023', '6-13-maret-2023', NULL, NULL, '<p>Perkiraan PTS 2</p>', '2023-03-08 00:37:04', '2023-03-08 00:37:04'),
(31, '14 - 18 Maret 2023', '14-18-maret-2023', NULL, NULL, '<p>Prakiraan Jeda Tengah Semester 2</p>', '2023-03-08 00:37:32', '2023-03-08 00:37:32'),
(32, '23 - 25 Maret 2023', '23-25-maret-2023', NULL, NULL, '<p>Libur Awal Ramadhan</p>', '2023-03-08 00:37:55', '2023-03-08 00:37:55'),
(33, '27 Mar - 15 April 2023', '27-mar-15-april-2023', NULL, NULL, '<p>Kegiatan Penumbuhan Budi Pekerti</p>', '2023-03-08 00:38:41', '2023-03-08 00:38:41'),
(34, '7 April 2023', '7-april-2023', NULL, NULL, '<p>Libur Kenaikan Isa Al Masih</p>', '2023-03-08 00:39:10', '2023-03-08 00:39:10'),
(35, '17 - 29 April 2023', '17-29-april-2023', NULL, NULL, '<p>Libur Hari Raya Idul Fitri 1444H</p>', '2023-03-08 00:39:34', '2023-03-08 00:39:34'),
(36, '1 Mei 2023', '1-mei-2023', NULL, NULL, '<p>Libur Hari Buruh</p>', '2023-03-08 00:39:49', '2023-03-08 00:39:49'),
(37, '6 Mei 2023', '6-mei-2023', NULL, NULL, '<p>Libur Hari Raya Waisak</p>', '2023-03-08 00:40:11', '2023-03-08 00:40:11'),
(38, '1 Juni 2023', '1-juni-2023', NULL, NULL, '<p>Libur Hari Lahir Pancasila</p>', '2023-03-08 00:40:42', '2023-03-08 00:40:42'),
(39, '8 - 18 Juni 2023', '8-18-juni-2023', NULL, NULL, '<p>Penilaian Akhir Tahun</p>', '2023-03-08 00:41:36', '2023-03-08 00:41:36'),
(40, '23 Juni 2023', '23-juni-2023', NULL, NULL, '<p>Tanggal Penetapan Raport</p>', '2023-03-08 00:42:00', '2023-03-08 00:42:00'),
(41, '23 - 24 Juni 2023', '23-24-juni-2023', NULL, NULL, '<p>Pembagian Raport</p>', '2023-03-08 00:42:24', '2023-03-08 00:42:24'),
(42, '26 Jun - 15 Jul 2023', '26-jun-15-jul-2023', NULL, NULL, '<p>Libur Tahun Pelajaran</p>', '2023-03-08 00:42:57', '2023-03-08 00:42:57'),
(43, 'Mei - Juli 2023', 'mei-juli-2023', NULL, NULL, '<p>Masa PPDB TP 2023/2024</p>', '2023-03-08 00:43:27', '2023-03-08 00:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Berita', 'berita', 'P5vUtO4rTFFyzipa8KSThpVienlR2JGgcQ61Kr77.jpg', '2023-01-27 02:44:13', '2023-01-27 02:44:13'),
(2, 'artikel', 'artikel', 'luKAzsOCAN85BBJrhRE9XkvDgJSI6o6SfB2uIBqb.jpg', '2023-02-22 19:44:42', '2023-02-22 19:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `categoriprestasis`
--

CREATE TABLE `categoriprestasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoriprestasis`
--

INSERT INTO `categoriprestasis` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Prestasi Akademik', 'prestasi-akademik', 'K2cGb7m5zp8rOlQOijuNGSMp1n8PaQZfUaW5eLSz.png', '2023-02-17 21:22:14', '2023-02-17 21:56:45'),
(2, 'Prestasi Lainnya', 'prestasi-lainnya', 'o9lvLrSYNnGJ1HeFSaHOMC1lhy5hHx5m7RpXmbnI.png', '2023-02-17 21:53:44', '2023-02-17 21:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Endar Suhendar', 'endarphysics@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Learn', 'learn', '<p><span style=\"color: #000000; font-family: \'courier new\', courier, monospace; font-size: 10pt; white-space: pre-wrap;\">Our members have diverse expertise across the full range of youth entrepreneurship support services. We deliver training in both hard and soft skills and other capacity <strong>development</strong> support, facilitate member learning exchanges and connect members to partners with relevant expertise.&nbsp;</span></p>', 'm70ZGskJtjoxuj0zKrnXbeStGKuBpn5zF6r285oD.jpg', NULL, '2023-01-27 02:34:01'),
(0, 'Innovate', 'innovate', '<p><span style=\"font-family: \'courier new\', courier, monospace; font-size: 10pt; color: #000000;\">By convening the collective expertise of the network, we have a unique perspective on the state of entrepreneurship so we can identify gaps in support for young entrepreneurs, not just in one market but around the world. Using this insight, we work with members across the world to develop new solutions.</span></p>', 'fPnjTyYUivhpc3IspgAzirr44dUGrAvzFWvKxiZy.jpg', NULL, '2023-01-27 02:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `eskuls`
--

CREATE TABLE `eskuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eskuls`
--

INSERT INTO `eskuls` (`id`, `image`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'W7p4rFgcW8rbMsrQC08M6v40kXSm4o14nGWMiAZi.jpg', 'Futsal', '<p>Futsal</p>', '2023-02-22 22:49:58', '2023-03-07 01:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Ruang Kelas yang Nyaman', '', '<p>Sekolah menyediakan ruang kelas yang dilengkapi dengan AC dan fasilitas belajar yang modern untuk memberikan kenyamanan dalam proses belajar mengajar.</p>', 'FFE4Cr6ocJWwXWDY8D4DamIitvYXDqPNiFfS5pyk.jpg', '2023-02-18 17:55:54', '2023-03-27 20:25:53'),
(4, 'Perpustakaan yang Lengkap', '', '<p>Perpustakaan di sekolah dilengkapi dengan koleksi buku-buku cerita anak dan buku-buku referensi untuk membantu anak-anak dalam memperluas pengetahuan mereka.</p>', 'uQJ9m0U9nsaxSQ9vJKbsfKKMYQCe0cxSLgo3Z40s.jpg', '2023-02-18 17:58:54', '2023-03-27 20:27:56'),
(5, 'Area Bermain yang Aman', '', '<p>Area bermain di sekolah didesain dengan konsep yang aman dan menyenangkan untuk membantu anak-anak mengembangkan keterampilan sosial dan motorik mereka.</p>', 'jxK7XTPn8XB45YMBYjAc2Ybz02vwSr1WnQQnHVtT.jpg', '2023-02-18 20:18:28', '2023-03-27 20:28:22'),
(6, 'Lapangan Olahraga yang Luas', '', '<p>Sekolah memiliki lapangan olahraga yang luas dan lengkap dengan fasilitas olahraga seperti lapangan sepak bola, basket, dan voli, untuk membantu anak-anak mengembangkan kecakapan motorik mereka serta keterampilan olahraga.</p>', 'QP2xmfVz338BsVHwIHCFLfi4qclatVDUwylhRBXr.jpg', '2023-02-18 20:20:29', '2023-03-27 20:30:01'),
(7, 'Studio Seni', '', '<p>Studio Seni di sekolah dilengkapi dengan peralatan dan bahan seni modern untuk membantu anak-anak dalam mengembangkan kreativitas dan kemampuan seni mereka. Anak-anak dapat belajar menggambar, melukis, dan membuat kerajinan tangan dalam suasana yang kreatif dan menyenangkan.</p>', 'RLHvWu5RVHwz42hdar30hT1o00mGj7CaVi70Tt8q.jpg', '2023-02-18 20:24:01', '2023-03-27 20:30:43'),
(8, 'Kantin Sehat', '', '<p>Kantin di sekolah menyediakan pilihan makanan dan minuman yang sehat dan bergizi untuk mendukung kesehatan dan pertumbuhan anak-anak. Menu yang tersedia di kantin disusun secara cermat untuk memenuhi kebutuhan gizi anak-anak serta memperkenalkan mereka pada makanan sehat yang variatif dan lezat.&nbsp;</p>', 'H9Q5OcQRc9e0mzu2AsGXbw5cZyrK77xKm1KVtglg.jpg', '2023-02-18 20:24:26', '2023-03-27 20:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Apa itu PAUD School Name?', '<p>PAUD School Name adalah sekolah PAUD dengan kurikulum internasional yang menawarkan pendidikan berkualitas untuk anak-anak usia dini.</p>', '2023-02-21 23:27:47', '2023-04-27 20:20:21'),
(3, 'Apa keunggulan PAUD School Name?', '<p>PAUD School Name memiliki kurikulum internasional yang menekankan pada pengembangan keterampilan anak secara holistik, seperti kognitif, fisik, sosial, dan emosional. Selain itu, sekolah ini memiliki lingkungan belajar yang menyenangkan dan didukung oleh fasilitas modern.</p>', '2023-02-21 23:28:14', '2023-04-27 20:20:44'),
(4, 'Bagaimana kurikulum internasional diimplementasikan di PAUD School Name?', '<p>PAUD School Name menggunakan kurikulum internasional yang berfokus pada pengembangan keterampilan dasar, seperti membaca, menulis, dan berhitung, sambil mengintegrasikan pendekatan yang menyenangkan dan berbasis keterampilan.</p>', '2023-02-21 23:28:44', '2023-04-27 20:21:16'),
(5, 'Bagaimana sistem pengajaran di PAUD School Name?', '<p>PAUD School Name mengadopsi sistem pengajaran yang berpusat pada siswa, di mana guru memfasilitasi proses belajar dan memungkinkan siswa untuk mengembangkan kreativitas dan keterampilan mereka sendiri.</p>', '2023-02-21 23:33:21', '2023-04-27 20:23:25'),
(6, 'Apa yang dimaksud dengan lingkungan belajar yang menyenangkan di PAUD School Name?', '<p>PAUD School Name memiliki lingkungan belajar yang didesain khusus untuk memotivasi anak-anak dalam belajar, seperti ruang bermain yang aman, kelas dengan desain yang menarik, dan fasilitas olahraga yang lengkap.</p>', '2023-02-21 23:35:11', '2023-04-27 20:23:57'),
(7, 'Siapa guru di PAUD School Name?', '<p>Guru-guru di PAUD School Name adalah profesional dengan latar belakang pendidikan dan pengalaman mengajar di level PAUD dan TK. Mereka dilatih untuk mengadopsi pendekatan berpusat pada siswa dalam pengajaran mereka.</p>', '2023-02-21 23:35:41', '2023-04-27 20:24:57'),
(8, 'Apakah PAUD School Name memberikan kesempatan bagi siswa untuk mengembangkan keterampilan sosial mereka?', '<p>Ya, PAUD School Name memberikan banyak kesempatan bagi siswa untuk berinteraksi dengan teman sebayanya dan mengembangkan keterampilan sosial mereka melalui berbagai aktivitas, seperti permainan kelompok dan proyek kolaboratif.</p>', '2023-02-21 23:36:32', '2023-04-27 20:25:39'),
(9, 'Apa saja fasilitas yang tersedia di PAUD School Name?', '<p>PAUD School Name memiliki fasilitas modern dan lengkap, seperti ruang kelas dengan desain menarik, perpustakaan, ruang bermain, fasilitas olahraga, laboratorium sains, dan studio seni.</p>', '2023-02-21 23:37:38', '2023-04-27 20:26:16'),
(10, 'Apakah PAUD School Name memberikan kegiatan ekstrakurikuler untuk siswa?', '<p>Ya, PAUD School Name menyediakan berbagai kegiatan ekstrakurikuler, seperti seni dan kerajinan, olahraga, tari, dan musik, untuk membantu siswa mengembangkan minat dan bakat mereka.</p>', '2023-02-21 23:38:26', '2023-04-27 20:26:47'),
(11, 'Bagaimana cara mendaftar di PAUD School Name?', '<p>Untuk mendaftar di PAUD School Name, orang tua harus mengunjungi mendaftar secara online dan mengisi formulir pendaftaran. Kemudian, siswa akan diberikan tes masuk dan orang tua akan diundang untuk melakukan wawancara dengan staf sekolah.</p>', '2023-02-21 23:40:02', '2023-04-27 20:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `formdaftars`
--

CREATE TABLE `formdaftars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_kk` bigint(16) NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formdaftars`
--

INSERT INTO `formdaftars` (`id`, `name`, `no_kk`, `birth_place`, `birth_date`, `description`, `phone`, `email`, `address`, `kelas`, `image`, `created_at`, `updated_at`) VALUES
(1, 'bebas', 2147483647, 'Bandung', '2023-02-20', '<p>dsfasdasdasd</p>', '12312312312312', '', '<p>Jl. Cipedes Selatan No. 85, Sukajadi</p>', '', 'vWeI9k2K3Lr9zzfl03WHRt2H99rajflh7mojsn57.jpg', '2023-01-25 20:23:10', '2023-01-25 21:04:05'),
(2, 'Manuel Neuer', 2147483647, 'cimahi', '2023-01-02', 'sdadasdasdasd', '1223131231', '', 'astana anyar gang kelinci', '', 'SXrunSrPbKXChdcMcwVBEJCiQONXZvECDpGLrjBW.png', '2023-01-26 03:26:09', '2023-01-26 03:26:09'),
(3, 'Muhammad Gazi Abdullah', 2147483647, 'Bandung', '2023-01-27', '<p>sdasdasdasd</p>', '0811111124', '', '<p>Jl. Cipedes Selatan No. 85, Sukajadi</p>', '', '5sWfhyda42XXDbmO16WER7JGYSrqWGSiWcyvrMt0.jpg', '2023-01-26 10:40:49', '2023-02-04 03:58:14'),
(4, 'HIPMI Kota Cimahi', 2147483647, 'Jakarta', '2023-02-08', 'ini adalah deskripsi', '123123', 'info@dncherbal.com', 'asdasdasd', '', 'bNwzalpXBbK8t6kC4AnKwBtoUy68EwtTp6jv75HE.jpg', '2023-02-07 20:48:46', '2023-02-07 20:48:46'),
(5, 'Agnia Fauziah', 2147483647, 'Bandung', '2005-02-08', NULL, '+6281317806086', 'pesan@cimahicraft.com', 'Jl. Kebon Kopi Kp. Leuweung Gede No.381, Cimbeureum, Cimahi', '', 'xgFgdSFdlbwrHSvbRG8oqw8rrbZ2FBgGulOX3oqQ.jpg', '2023-02-07 21:38:25', '2023-02-07 21:38:25'),
(6, 'Melly', 2147483647, 'Bandung', '1995-06-07', NULL, '08228274774', 'pesan@salaam.co.id', 'Jln.Sukajadi No 8', '', '4w1bRcY9N1dQP7PCgK2E4hLKBn47eBxaXcQATTby.jpg', '2023-02-07 23:38:46', '2023-02-07 23:38:46'),
(8, 'Abdul', 2147483647, 'Bandung', '2023-02-01', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat eaque, doloremque nam natus minus hic fugit unde aspernatur aut nihil officia mollitia. At facilis et, voluptatibus suscipit deleniti optio dignissimos, mollitia officia recusandae repelle', '+6281317806086', 'Abdul@gmail.com', 'parompong raya atas', '', 'kjAdVbuJN1ZzoIHOJlOOw0P0EJvnOa6LWZwQBDjE.jpg', '2023-02-08 00:01:18', '2023-02-08 00:01:18'),
(9, 'Muhamad Fikri Al jabani', 327032234558897, 'Bandung', '2023-02-06', NULL, '081317806086', 'admin@smapasundan3bandung.sch.id', 'Jln.Cipedes Atas No 32', 'IPS Unggulan Tahfidz Al Quran', 'V36gRWxBHhoZXTjIg0hSz64RwMwg8VmtDroMAvIq.jpg', '2023-02-22 00:58:51', '2023-02-22 00:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `gambarans`
--

CREATE TABLE `gambarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sambutan', 'lcrRRpNrMamINlDBYGkEVCT2IjcUvriFqgKzFSJS.jpg', '2023-02-03 09:58:32', '2023-03-25 17:25:54'),
(2, 'Tentang Kami', 'NM8k0nKJG6H6AOncBxCJehdNKA4KxAio0XH8DCyv.jpg', '2023-02-03 09:58:57', '2023-03-25 17:26:14'),
(3, 'Prestasi', '2Y4bWXzWCy6OlfX97vFmK2osjM7UAp5zbMZjtdFq.jpg', '2023-02-03 09:59:27', '2023-03-27 20:18:32'),
(4, 'Fasilitas', 'lar1wLCz8nDi8r1gMu4EXoKtdHMKIaxeed608RKd.jpg', '2023-02-03 09:59:53', '2023-03-27 20:19:34'),
(5, 'Keunggulan', 'x08YRPrqE9Oo8XfwRLd9k4NutbT5Lrt9f45VsfHl.jpg', '2023-02-03 09:59:53', '2023-03-27 21:50:47'),
(6, 'Prosedur Pendaftaran', 'e4fdErvCVZUSFv4C4arxVybIptGS9EyLXDB6ZjKU.jpg', '2023-02-03 11:55:59', '2023-04-20 02:40:04'),
(7, 'Investasi Pendidikan', 'IL6TBPg91ThOrtMhKjKE0FieG0JtcrPO9Z7jjXJh.jpg', '2023-02-03 11:55:59', '2023-04-19 21:25:30'),
(8, 'Tanggal Penting', '4NVmrqrumpJyESeXwbdjOj1HG0XoYzvl31QuagxO.jpg', '2023-02-03 18:18:13', '2023-04-20 02:55:04'),
(9, 'FAQ', 'ruAq7ydmeDa9gR8SvHgoaBW8vIz9TRUHVRBCzZoN.jpg', '2023-02-03 18:18:13', '2023-04-20 02:57:05'),
(10, 'Berita Terkini', 'N2UVZ2lT14A6PeYQWHFVXAKAi5fiBff8snLTebaE.jpg', '2023-02-03 18:29:11', '2023-03-27 21:53:15'),
(11, 'Artikel', 'iHFNlCZLR9BWaxD7kk8jcioF5ZynHgOcAV1TFUZq.jpg', '2023-02-03 18:29:46', '2023-03-28 08:01:45'),
(12, 'Agenda Kegiatan', 'lbektEwDHrhUi8I6AuLYfcB5clJ5kWV4RfR44aZG.jpg', '2023-02-03 18:29:46', '2023-04-06 23:01:55'),
(13, 'Potret Lulusan', 'BN4OEPdic9HOPpCUrVRQ8xHcTgrBxe4VVRDVLMp5.jpg', NULL, '2023-03-12 20:30:37'),
(14, 'Tanggal Penting', 'OLKElkU1LeVsV55NEPOF7gNaFUWNMCbs4yFWUbFI.jpg', NULL, '2023-03-12 20:32:08'),
(15, 'Bantuan Keuangan', 'QKhWCbq7xkTqcqfsI2podr0Ms16FUdcrlAznAWU7.jpg', NULL, '2023-03-12 20:32:25'),
(16, 'Karir', 'B3id2d9BUXarJSM61pJwSCSgbWLx1UfCgwMZR4R7.jpg', NULL, '2023-03-12 20:32:42'),
(17, 'FAQ', 'ytgvlGBnR57EyxK6muXR44IbEIct2TuMET645Y04.jpg', NULL, '2023-03-12 20:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `address` text NOT NULL,
  `gmap` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL,
  `tt` varchar(255) NOT NULL,
  `yt` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identities`
--

INSERT INTO `identities` (`id`, `name`, `year`, `description`, `address`, `gmap`, `phone`, `email`, `fb`, `ig`, `tt`, `yt`, `image`, `created_at`, `updated_at`) VALUES
(1, 'School Name', '2023-24', '<p><strong>Belajar dengan bahagia, tumbuh dengan kreatifitas, dan berkembang dengan potensi terbaik.</strong></p>', '<p>Jl. Abdul Halim No.128, Cigugur Tengah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40522</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.000676644824!2d107.55201005021556!3d-6.890520869317734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e5d9351515f9%3A0xe262b702be99628a!2sHexagon%20Inc.!5e0!3m2!1sid!2sid!4v1679355030469!5m2!1sid!2sid\" width=\"100%\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '6281111112949', 'info@schoolname.sch.id', 'schoolname', 'schoolname', '@schoolname', '@schoolname', 'x5vcTtK4NYI3DQaNklEN7cbxqIQKrreSNuRYqBla.png', '2023-02-04 02:39:05', '2023-04-27 03:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `impacts`
--

CREATE TABLE `impacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` varchar(255) NOT NULL,
  `number1` int(11) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `number2` int(11) NOT NULL,
  `title3` varchar(255) NOT NULL,
  `number3` int(11) NOT NULL,
  `title4` varchar(255) NOT NULL,
  `number4` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `impacts`
--

INSERT INTO `impacts` (`id`, `title1`, `number1`, `title2`, `number2`, `title3`, `number3`, `title4`, `number4`, `created_at`, `updated_at`) VALUES
(1, 'sassssss', 11111, 'ddddd', 2222222, 'ccccc', 3333333, 'bbbbb', 4444, NULL, '2023-01-25 11:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `infodaftars`
--

CREATE TABLE `infodaftars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `text_inves` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investasis`
--

CREATE TABLE `investasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joins`
--

CREATE TABLE `joins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joins`
--

INSERT INTO `joins` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sadqwsadqw', 'sadqwsadqw', '<p>sadqwdasdqwd</p>', 'WizDfZ7PxnKchPD71xQ2uVuzU8xABb4CtRY7dibf.png', NULL, '2023-01-25 20:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `kalenders`
--

CREATE TABLE `kalenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_oses`
--

CREATE TABLE `kegiatan_oses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan_oses`
--

INSERT INTO `kegiatan_oses` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rapat Pemilihan Ketua', '<p>alksdjakdlajs</p>', 'Bnj72MNpePupxncdJ0KGAV4BFt491LmIwU7dyhr2.jpg', '2023-02-22 19:34:40', '2023-02-22 19:34:40'),
(2, 'Potret Kegiatan Sumbangan Dari Para Osis', '<p>Kegiatan Osis</p>', 'QSJ0SAriX4BcFeKYyUJ7MLcwlB5GnHpFpfoKS7hJ.jpg', '2023-02-22 21:01:05', '2023-02-22 21:01:05'),
(3, 'Kegiatan Harian Osis', '<p>Kegiatan</p>', '69Xw34MYzjwLyp0LVp884Fd25x3qMIOO0g03PiXr.jpg', '2023-02-22 21:02:24', '2023-02-22 21:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulums`
--

CREATE TABLE `kurikulums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matpel` varchar(255) NOT NULL,
  `waktu` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `title`, `name`, `fb`, `ig`, `tt`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekolah', 'Solihin, S.Pd. M.M', NULL, NULL, NULL, 'kepala@smapasundan3bandung.sch.id', '3GOWRWxl1MbCdeC8cY3A3I17xEVEiYfSvcgJbDVv.jpg', '2023-02-19 15:59:43', '2023-02-19 16:05:20'),
(2, 'Wak Bid.Kurikulum', 'Ali, S.Pd', NULL, NULL, NULL, 'kurikulum@smapasundan3bandung.sch.id', 'NTosDMDraMB6D1mbZ83wgFstCVJajUcWwELlb8VU.jpg', '2023-02-19 16:00:33', '2023-02-19 16:00:33'),
(3, 'Wak Bid.Kesiswaan', 'Hendra Yulianto, S.T., M.M', NULL, NULL, NULL, NULL, 'GapUf1moXOjvhFME4HCHbOrEx5LW4HubH4Uo1T7R.jpg', '2023-02-19 16:01:17', '2023-02-19 16:01:17'),
(4, 'Wak Bid.Sarpras', 'Dra. Hj. Lina Herlina, M.M', NULL, NULL, NULL, NULL, 'b5dUUDn3r6jNGTpQfIlWBtJ9joFaZygiVHM8u0Yi.jpg', '2023-02-19 16:01:43', '2023-02-19 16:01:43'),
(5, 'Wak Bid. Humas', 'Atep Munawar S.Ag., M.M', NULL, NULL, NULL, NULL, 'uWGVdj2Y50xvzkKJ6yCsy98NgylSW0Bo9Bpk4FGF.jpg', '2023-02-19 16:02:07', '2023-02-19 16:02:07'),
(6, 'Bendahara Sekolah', 'Iwan Sukendar, S.E.', NULL, NULL, NULL, NULL, '7Qsiupg5MGWHZnEiWOkyTlvS293a4KNZKA5kfiQt.jpg', '2023-02-19 16:02:27', '2023-02-19 16:02:27'),
(7, 'Kepala Tata Usaha', 'Wendi', NULL, NULL, NULL, NULL, 'o8gASFWlAHCdpqLxYuzmqsRC5pnuhHJw4gyyVjo2.jpg', '2023-02-19 16:02:49', '2023-02-19 16:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `legals`
--

CREATE TABLE `legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legals`
--

INSERT INTO `legals` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Legalitas SMA Pasundan 3 Bandung', '<figure class=\"table\"><table><tbody><tr><td><strong>Ijin Operasional&nbsp;&nbsp;&nbsp;&nbsp;</strong></td><td>Nomor: 030YPDMP/SKP/P/1998,<br>Tanggal: 23 Juli 1998</td></tr><tr><td><strong>Akta Notaris</strong></td><td>Nomor: 07,<br>Tanggal: 07 Oktober 2000</td></tr><tr><td><strong>Nilai Akreditasis</strong></td><td>A (unggul)<br>Nomor: 02.00/203/SK/BAN-SM/XII/2018</td></tr><tr><td><strong>NSS</strong></td><td>30. 2. 02. 60. 04. 025</td></tr><tr><td><strong>NPSN</strong></td><td>202 19 765</td></tr><tr><td><strong>Alamat Domisili</strong></td><td><p>Jalan Kebonjati No. 31, Kelurahan Kebonjeruk&nbsp;</p><p>Kecamatan Andir, Kota Bandung, Kode Pos &nbsp;40181</p></td></tr><tr><td><strong>Kepemilikan</strong></td><td>Yayasan Pendidikan Dasar dan Menengah (YPDM) Pasundan</td></tr></tbody></table></figure><p>&nbsp;</p>', 'BSD2YUyWLU3wd1oyzjMYdO3qAOLReqJ4iHiJFd8f.png', '2023-02-16 08:51:24', '2023-02-16 04:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `lulusans`
--

CREATE TABLE `lulusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lulusans`
--

INSERT INTO `lulusans` (`id`, `tahun`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, '2018 - 2019', 700, '2023-02-20 00:57:03', '2023-02-20 01:33:21'),
(2, '2017 - 2018', 679, '2023-02-20 00:59:01', '2023-02-20 00:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2023_01_02_220552_create_abouts_table', 2),
(20, '2023_01_10_013652_create_aboutus_table', 3),
(39, '2014_10_12_000000_create_users_table', 4),
(40, '2014_10_12_100000_create_password_resets_table', 4),
(41, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(42, '2019_08_19_000000_create_failed_jobs_table', 4),
(43, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(44, '2022_11_20_115423_create_categories_table', 4),
(45, '2022_11_20_115549_create_posts_table', 4),
(46, '2022_11_20_115808_create_agendas_table', 4),
(47, '2022_11_20_120104_create_sliders_table', 4),
(48, '2022_11_20_120244_create_unggulans_table', 4),
(49, '2022_11_20_120438_create_identities_table', 4),
(50, '2022_11_25_210226_create_logos_table', 4),
(51, '2022_11_26_035144_create_prestasis_table', 4),
(52, '2022_11_26_035718_create_testimonies_table', 4),
(53, '2022_11_29_154136_create_categoriprestasis_table', 4),
(54, '2022_11_30_195931_create_facilities_table', 4),
(55, '2022_12_06_030754_create_formdaftars_table', 4),
(56, '2022_12_10_005857_create_contacts_table', 4),
(57, '2023_01_10_013652_create_abouts_table', 4),
(58, '2023_01_24_152151_create_sambutans_table', 4),
(59, '2022_12_12_175939_create_rwrts_table', 5),
(60, '2022_12_12_182818_create_desas_table', 5),
(61, '2022_12_12_182847_create_kecamatans_table', 5),
(62, '2022_12_12_183006_create_kabupatens_table', 5),
(63, '2023_01_25_042120_create_visis_table', 6),
(64, '2023_01_29_140823_create_whatwedos_table', 7),
(65, '2023_01_30_060847_create_ourteams_table', 8),
(66, '2023_01_30_152822_create_wwds_table', 9),
(67, '2023_01_30_183219_create_partners_table', 10),
(68, '2023_01_30_220348_create_stories_table', 11),
(69, '2023_01_31_000529_create_openingstories_table', 12),
(70, '2023_02_03_080220_create_headers_table', 13),
(71, '2023_02_08_090811_create_svgs_table', 14),
(72, '2023_02_10_195148_create_sidebanners_table', 15),
(73, '2023_02_11_052030_create_sejarahs_table', 16),
(74, '2023_02_11_054323_create_sejarah1s_table', 16),
(75, '2023_02_11_054353_create_sejarah2s_table', 16),
(76, '2023_02_14_061055_create_legalitas_table', 17),
(77, '2023_02_14_061055_create_legals_table', 18),
(78, '2023_02_19_040243_create_ourteamcats_table', 19),
(79, '2023_02_19_082844_create_ourteamopenings_table', 20),
(80, '2023_02_19_095545_create_leaders_table', 21),
(81, '2023_02_19_095611_create_tendiks_table', 21),
(82, '2023_02_19_232639_create_renstras_table', 22),
(83, '2023_02_20_072351_create_lulusans_table', 23),
(84, '2023_02_20_072623_create_yutubs_table', 23),
(85, '2023_02_22_010716_create_faqs_table', 24),
(86, '2023_02_22_010947_create_prosedurs_table', 24),
(87, '2023_02_22_011008_create_investasis_table', 24),
(88, '2023_02_22_011553_create_header2s_table', 24),
(89, '2023_02_22_011631_create_header3s_table', 24),
(90, '2023_02_22_011653_create_header4s_table', 24),
(91, '2023_02_22_014440_create_pendaftarans_table', 25),
(92, '2023_02_22_065857_create_pembelajarans_table', 26),
(93, '2023_02_22_070137_create_kurikulums_table', 26),
(94, '2023_02_22_070208_create_kalenders_table', 26),
(95, '2023_02_22_070234_create_sistem_pembelajarans_table', 26),
(96, '2023_02_22_070256_create_sistem_penilaians_table', 26),
(97, '2023_02_22_070319_create_sistem_informasis_table', 26),
(98, '2023_02_22_083352_create_gambarans_table', 26),
(99, '2023_02_22_083421_create_seragams_table', 26),
(100, '2023_02_22_083451_create_kegiatan_oses_table', 26),
(101, '2023_02_22_083522_create_eskuls_table', 26),
(102, '2023_02_22_083548_create_alumnis_table', 26),
(103, '2023_03_26_080407_create_values_table', 27),
(104, '2023_04_27_095216_create_tanggalpentings_table', 28),
(105, '2023_04_28_065730_create_infodaftars_table', 29),
(106, '2023_04_28_071512_create_typedaftars_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `misis`
--

CREATE TABLE `misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `misi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `misis`
--

INSERT INTO `misis` (`id`, `image`, `title`, `misi`, `created_at`, `updated_at`) VALUES
(1, 'zQkJ12kD07AuuQpAh0gzMCwvkjz3YotIwzsrz38Y.jpg', 'Misi', '<ol><li>Memberikan pendidikan dan pembinaan yang holistik dan berbasis pada kebutuhan dan potensi anak, sehingga anak dapat berkembang secara optimal dan mencapai potensi terbaiknya.</li><li>Mendorong kreativitas, imajinasi, dan inovasi anak melalui berbagai metode pembelajaran yang inovatif dan menyenangkan, sehingga anak dapat mengembangkan kemampuan berpikir kritis dan kreatif.</li><li>Membangun karakter dan kepribadian anak yang berakhlak mulia, mandiri, dan memiliki rasa empati melalui pembinaan nilai-nilai moral dan sosial yang baik.</li><li>Mendukung peran orang tua dan masyarakat dalam menciptakan lingkungan pembelajaran yang positif dan mendukung, serta membangun kemitraan yang erat antara sekolah, orang tua, dan masyarakat dalam mendukung pengembangan anak.</li><li>Menerapkan prinsip-prinsip inklusif dan menyediakan layanan pendidikan yang ramah anak bagi semua anak, tanpa diskriminasi dan memperhatikan kebutuhan anak dengan keberagaman yang ada.</li></ol>', NULL, '2023-03-25 05:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `openings`
--

CREATE TABLE `openings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `openings`
--

INSERT INTO `openings` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Apa yang Kami Lakukan', 'apa-yang-kami-lakukan', '<p>Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi dibentuk dengan tujuan untuk membantu pengusaha muda membangun bisnis mereka dengan sukses. Melalui berbagai program dan inisiatif, HIPMI Kota Cimahi memfokuskan diri pada peningkatan keterampilan dan pengetahuan, membangun hubungan mentoring dan jaringan, menyediakan akses ke peluang pendanaan, dan beradvokasi untuk lingkungan bisnis yang mendukung. Dengan memberikan akses ke sumber daya dan dukungan yang dibutuhkan, HIPMI Kota Cimahi berkomitmen untuk membantu pengusaha muda mencapai kesuksesan dan memimpin masa depan bisnis Indonesia.</p>', 'QOHhSIrKFSX1MkVMcbqMMgGyfV3YRXBnfLr7wb7c.webp', NULL, '2023-01-30 11:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `openingstories`
--

CREATE TABLE `openingstories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `openingstories`
--

INSERT INTO `openingstories` (`id`, `title`, `description`, `video`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kisah Sukses Para Pengusaha Muda Kota Cimahi', '<p>HIPMI Kota Cimahi selalu membantu para pengusaha muda untuk mencapai kesuksesan. Tak hanya memberikan dukungan finansial dan mentorship, HIPMI juga mengabadikan kisah-kisah sukses para anggotanya. Dari para pengusaha muda ini, kita dapat belajar banyak tentang tekad, inovasi, dan kemampuan untuk bangkit dari kegagalan.</p>', 'HVwfQSNemcw', 'Dp0HBIYBNcqHsEtpLWhyh4mkPIyCPj71d79fzE81.jpg', '2023-01-31 00:20:11', '2023-01-31 15:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `ourteamcats`
--

CREATE TABLE `ourteamcats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourteamcats`
--

INSERT INTO `ourteamcats` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pimpinan Sekolah', 'pimpinan-sekolah', '9RF3LCBR1kmkhN5YtEGGCs0ndpUYDlFzmsDJdCfk.jpg', '2023-02-18 22:17:38', '2023-02-18 22:20:04'),
(2, 'Dewan Guru', 'dewan-guru', 'zk73nUVKLGQYGswyc4Jlk8lfnE024A7wV1ggAR6n.jpg', '2023-02-18 22:18:37', '2023-02-18 22:18:37'),
(3, 'Tenaga Kependidikan', 'tenaga-kependidikan', 'DhwE879pBOl992MqyGPHdxOA49DsqKWzEauf58h5.jpg', '2023-02-18 22:19:23', '2023-02-18 22:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `ourteamopenings`
--

CREATE TABLE `ourteamopenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourteamopenings`
--

INSERT INTO `ourteamopenings` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Guru dan Tenaga Kependidikan', '<p>“Seseorang yang berilmu dan kemudian mengamalkan ilmunya itu dialah yang disebut dengan orang besar di semua kerajaan langit, dia bagaikan matahari yang menerangi alam sedangkan ia mempunyai cahaya dalam dirinya seperti minyak kasturi yang mengaharumi orang lain karena ia harum, seorang yang meneguhkan dirinya dalam mengajar berarti dia telah memilih pekerjaan terhormat” (Al-Ghazali)</p>', 'fJhjC4gj1AK0EwBjwnUp1OXtULBbGcrQ9lsV2z88.jpg', '2023-02-19 08:52:57', '2023-03-06 21:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `ourteams`
--

CREATE TABLE `ourteams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ourteamcat_id` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourteams`
--

INSERT INTO `ourteams` (`id`, `title`, `name`, `ourteamcat_id`, `fb`, `ig`, `tt`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekolah', 'Faatiha Aayat, Phd', '', 'principal', 'principal', 'principal', 'principal@schoolname.com', 'oSQ8SEq2gnfximTH3EtlJtRaBhWtXOH9ZFOSnxD1.jpg', '2023-01-30 06:51:27', '2023-03-26 03:51:40'),
(2, 'Guru', 'Dewi Susanti, M.Pd', '3', NULL, NULL, NULL, NULL, '3Y5tcpCXnGXzsgMrKHoE6t00fDwfNrdrYjkIRxYj.jpg', '2023-01-30 08:22:22', '2023-03-26 03:55:00'),
(3, 'Guru', 'Fitriani, M.Pd', '1', NULL, NULL, NULL, NULL, 'F4VZclAJLpTrNEWBSzwvdI8J9p4vZ5q2w9PnTLN1.jpg', '2023-01-30 08:25:46', '2023-03-26 03:55:43'),
(4, 'Guru', 'Yuniarti, M.Pd', '1', NULL, NULL, NULL, NULL, 'SkY9hKkAJbOJAkhi0AW7alRU0EDzDoxhHbGfBLlP.jpg', '2023-01-30 08:27:28', '2023-03-26 03:56:15'),
(5, 'Guru', 'Widya Permata, S.Pd', '2', NULL, NULL, NULL, NULL, 'qH5IV4SLxB5ZwdmheRhpBCcrhSyJ2BCJS0tEgBel.jpg', '2023-02-18 23:18:53', '2023-03-26 03:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `program_desc` text DEFAULT NULL,
  `web` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `slug`, `description`, `program_desc`, `web`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bank BRI', '', '<p>Bank BRI (Bank Rakyat Indonesia) adalah salah satu bank milik pemerintah Indonesia yang didirikan pada tahun 1895. Bank BRI memiliki jaringan layanan yang luas di seluruh Indonesia dan memfokuskan pada memberikan layanan keuangan bagi masyarakat, terutama bagi segmen usaha kecil dan menengah. Bank BRI menawarkan berbagai produk dan layanan, seperti kredit usaha, deposito, layanan pembiayaan, dan layanan keuangan lainnya.</p>', '<p>Kerjasama HIPMI dengan Bank BRI memfokuskan pada memberikan kemudahan dan solusi keuangan bagi anggota HIPMI. Bank BRI menyediakan berbagai produk dan layanan keuangan bagi anggota HIPMI, seperti kredit usaha, deposito, dan layanan pembiayaan lainnya. Melalui kerjasama ini, Bank BRI berupaya untuk membantu meningkatkan bisnis dan keuangan anggota HIPMI.</p><p>Di sisi lain, HIPMI memberikan edukasi dan pelatihan keuangan bagi anggotanya, dengan tujuan untuk membantu anggotanya memahami produk dan layanan keuangan yang tersedia. Kerjasama ini juga mencakup aktivitas promosi dan sosialisasi produk dan layanan Bank BRI bagi anggota HIPMI.</p>', 'https://bri.co.id/', 'Bl4R880GV84G0crGiC7tN7rS3KRdBtDypEwCZHr6.jpg', '2023-01-30 12:42:15', '2023-01-30 12:42:15'),
(2, 'PT. Telkom Indonesia', '', '<p>PT Telkom Indonesia adalah perusahaan telekomunikasi dan teknologi informasi milik pemerintah Indonesia. Didirikan pada tahun 1884, PT Telkom Indonesia menawarkan berbagai layanan telekomunikasi dan teknologi informasi, seperti layanan internet, telepon, dan layanan komunikasi lainnya. Perusahaan ini memiliki jaringan layanan yang luas di seluruh Indonesia dan memfokuskan pada memberikan solusi teknologi dan komunikasi bagi masyarakat.</p>', '<p>Kerjasama HIPMI dengan PT Telkom Indonesia memfokuskan pada memberikan solusi teknologi dan komunikasi bagi anggota HIPMI. PT Telkom Indonesia menyediakan berbagai layanan teknologi dan komunikasi bagi anggota HIPMI, seperti layanan internet, telepon, dan layanan komunikasi lainnya. Melalui kerjasama ini, PT Telkom Indonesia berupaya untuk membantu meningkatkan bisnis dan kemampuan komunikasi anggota HIPMI.</p><p>Di sisi lain, HIPMI memberikan edukasi dan pelatihan mengenai teknologi dan komunikasi bagi anggotanya, dengan tujuan untuk membantu anggotanya memahami produk dan layanan teknologi dan komunikasi yang tersedia. Kerjasama ini juga mencakup aktivitas promosi dan sosialisasi produk dan layanan PT Telkom Indonesia bagi anggota HIPMI.</p>', 'https://www.telkom.co.id', '0AVrEr0BvwWhr8jFv9zoPbQm7MyGm6IeX4sFdEVo.jpg', '2023-01-30 12:47:31', '2023-01-30 14:42:17'),
(3, 'Astra Internasional', '', '<p>Astra International adalah perusahaan multinasional asal Indonesia yang bergerak di bidang otomotif, agribisnis, dan layanan keuangan. Didirikan pada tahun 1957, Astra International memiliki jaringan bisnis yang luas di seluruh Indonesia dan memfokuskan pada memberikan solusi bisnis dan keuangan bagi masyarakat. Perusahaan ini menawarkan berbagai produk dan layanan, seperti kredit usaha, solusi investasi, dan layanan bisnis lainnya.&nbsp;</p>', '<p>Kerjasama HIPMI dengan Astra International memfokuskan pada memberikan solusi bisnis dan keuangan bagi anggota HIPMI. Astra International menyediakan berbagai produk dan layanan bisnis dan keuangan bagi anggota HIPMI, seperti kredit usaha, solusi investasi, dan layanan bisnis lainnya. Melalui kerjasama ini, Astra International berupaya untuk membantu meningkatkan bisnis dan keuangan anggota HIPMI.</p>', 'https://www.astra.co.id', 'ywNDbx6ZNfGP9YkARCzqDtNqdIt6xaP69sWJJZYO.jpg', '2023-01-30 14:46:00', '2023-01-30 14:46:00'),
(4, 'Kementerian Koperasi dan UKM', '', '<p>Kementerian Koperasi dan Usaha Kecil dan Menengah (UKM) adalah sebuah kementerian pemerintah di Republik Indonesia yang bertanggung jawab untuk mengelola dan memajukan sektor koperasi dan usaha kecil dan menengah di Indonesia. Kementerian ini memiliki tugas dan tanggung jawab untuk memfasilitasi akses bagi koperasi dan UMKM untuk memperoleh pembiayaan, pendidikan dan pelatihan bisnis, dan akses ke pasar.</p><p>Kementerian Koperasi dan UKM juga bertanggung jawab untuk membangun dan mengembangkan ekosistem bisnis yang kondusif bagi pengembangan koperasi dan UMKM, termasuk memberikan dukungan hukum dan regulasi yang sesuai. Kementerian ini juga bekerja sama dengan berbagai pihak, seperti lembaga pembiayaan, asosiasi industri, dan organisasi masyarakat untuk memajukan sektor koperasi dan UMKM di Indonesia.</p>', '<p>Kerjasama HIPMI dengan Kementerian Koperasi dan Usaha Kecil dan Menengah (UKM) Republik Indonesia memfokuskan pada memberikan dukungan bagi pengembangan koperasi dan UMKM di Indonesia. Kementerian Koperasi dan UKM RI menyediakan berbagai layanan bagi koperasi dan UMKM, seperti akses ke pembiayaan, pelatihan dan pendidikan bisnis, dan akses ke pasar.</p><p>Melalui kerjasama ini, HIPMI dan Kementerian Koperasi dan UKM RI bekerja sama untuk memberikan edukasi dan pelatihan bisnis bagi anggota HIPMI, dengan tujuan untuk membantu mereka memahami peluang dan tantangan bisnis. Kerjasama ini juga mencakup aktivitas promosi dan sosialisasi layanan dan program Kementerian Koperasi dan UKM RI bagi anggota HIPMI.</p>', 'https://kemenkopukm.go.id', 'dtMfHICt52iZdydulXHFhINK7zscHubwyC0XcbvH.jpg', '2023-01-30 14:52:07', '2023-01-30 14:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelajarans`
--

CREATE TABLE `pembelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftarans`
--

CREATE TABLE `pendaftarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_kk` int(11) NOT NULL,
  `jenis_kelamin` tinyint(1) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `description`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'Siswa PAUD School Name Berhasil Raih Medali Emas Lomba Melukis Tingkat Kota Cimahi', 'siswa-paud-school-name-berhasil-raih-medali-emas-lomba-melukis-tingkat-kota-cimahi', 1, 'Dalam ajang lomba melukis tingkat kota yang diadakan baru-baru ini, siswa PAUD School Name berhasil memenangkan medali emas untuk kategori melukis. Dalam lomba yang diikuti oleh sekolah-sekolah lainnya, siswa-siswa dari School Name mampu menampilkan karya yang kreatif dan mengesankan.', 'Dalam ajang lomba melukis tingkat kota yang diadakan baru-baru ini, siswa PAUD School Name berhasil memenangkan medali emas untuk kategori melukis. Dalam lomba yang diikuti oleh sekolah-sekolah lainnya, siswa-siswa dari School Name mampu menampilkan karya yang kreatif dan mengesankan.', 'h40zhTpaZKNBgBX31Ek0hhHAMKA9s6okRWyQWSJQ.jpg', 1, '2023-03-27 21:34:06', '2023-03-27 21:34:06'),
(17, 'Staf PAUD School Name Dapatkan Sertifikat Pelatihan Penggunaan Metode Pembelajaran Inovatif', 'staf-paud-school-name-dapatkan-sertifikat-pelatihan-penggunaan-metode-pembelajaran-inovatif', 1, 'Dalam upaya untuk terus meningkatkan kualitas pembelajaran, staf PAUD School Name telah mengikuti pelatihan penggunaan metode pembelajaran inovatif. Selama pelatihan, staf sekolah ini belajar cara mengimplementasikan metode pembelajaran yang lebih efektif dan menarik bagi anak-anak.', 'Dalam upaya untuk terus meningkatkan kualitas pembelajaran, staf PAUD School Name telah mengikuti pelatihan penggunaan metode pembelajaran inovatif. Selama pelatihan, staf sekolah ini belajar cara mengimplementasikan metode pembelajaran yang lebih efektif dan menarik bagi anak-anak.', '2753ywq6jF5JrWk3yT3T6MSWhFOoCW1rZ2DcGDE0.jpg', 1, '2023-03-27 21:37:14', '2023-03-27 21:37:14'),
(18, 'Siswa PAUD School Name Berpartisipasi dalam Program Donasi Buku untuk Anak-Anak Kurang Mampu', 'siswa-paud-school-name-berpartisipasi-dalam-program-donasi-buku-untuk-anak-anak-kurang-mampu', 1, 'Dalam sebuah program donasi buku untuk anak-anak kurang mampu, siswa PAUD School Name ikut berpartisipasi dengan memberikan buku-buku yang telah mereka kumpulkan. Para siswa dari sekolah ini merasa bangga dapat membantu anak-anak lainnya yang kurang beruntung dan membantu memperluas akses mereka terhadap buku-buku bermanfaat.', 'Dalam sebuah program donasi buku untuk anak-anak kurang mampu, siswa PAUD School Name ikut berpartisipasi dengan memberikan buku-buku yang telah mereka kumpulkan. Para siswa dari sekolah ini merasa bangga dapat membantu anak-anak lainnya yang kurang beruntung dan membantu memperluas akses mereka terhadap buku-buku bermanfaat.', 'nyPWMT3OJl52RzKLBUWZUbPmUeUUQcUsixTn1G0E.jpg', 1, '2023-03-27 21:38:39', '2023-03-27 21:38:39'),
(19, 'School Name Adakan Seminar Parenting untuk Meningkatkan Peran Orang Tua dalam Pendidikan Anak', 'school-name-adakan-seminar-parenting-untuk-meningkatkan-peran-orang-tua-dalam-pendidikan-anak', 1, 'School Name baru-baru ini mengadakan sebuah seminar parenting yang bertujuan untuk membantu orang tua dalam meningkatkan peran mereka dalam mendidik anak-anak mereka. Seminar ini membahas berbagai topik seperti cara mengajarkan anak membaca dan menulis, memotivasi anak untuk belajar, dan pentingnya memberikan dukungan emosional pada anak. Acara ini dihadiri oleh banyak orang tua dari siswa di sekolah tersebut.', 'School Name baru-baru ini mengadakan sebuah seminar parenting yang bertujuan untuk membantu orang tua dalam meningkatkan peran mereka dalam mendidik anak-anak mereka. Seminar ini membahas berbagai topik seperti cara mengajarkan anak membaca dan menulis, memotivasi anak untuk belajar, dan pentingnya memberikan dukungan emosional pada anak. Acara ini dihadiri oleh banyak orang tua dari siswa di sekolah tersebut.', 'bHlPPQI2ATju4QVqsBh5b5ahTt1kQfyBPQd8xCsW.jpg', 1, '2023-03-27 21:39:49', '2023-03-27 21:39:49'),
(20, 'Revolusi Pendidikan Anak Usia Dini: Kemajuan Fenomenal dan Transformasi PAUD di Tahun 2023!', 'revolusi-pendidikan-anak-usia-dini-kemajuan-fenomenal-dan-transformasi-paud-di-tahun-2023', 2, 'Perkembangan dan transformasi PAUD pada tahun 2023 yang bertujuan untuk memberikan layanan pendidikan yang lebih baik bagi anak-anak usia dini. Berbagai perkembangan dan transformasi terjadi, seperti penggunaan teknologi dalam proses pembelajaran, peningkatan perhatian pada pendidikan inklusif dan khusus, perkuatan kerja sama dengan keluarga dan komunitas, dan perhatian pemerintah pada kualitas fasilitas dan tenaga pendidik di PAUD.', '<p>Pendidikan Anak Usia Dini (PAUD) pada tahun 2023 telah mengalami banyak perkembangan dan transformasi dalam memberikan layanan pendidikan yang lebih baik bagi anak-anak usia dini. Hal ini dikarenakan pentingnya peran PAUD dalam memberikan dasar pendidikan yang kuat dan membantu membentuk karakter dan kemampuan anak-anak sejak dini.</p>\r\n<p>Salah satu perkembangan terbesar dalam PAUD di tahun 2023 adalah penggunaan teknologi dalam proses pembelajaran. Berbagai aplikasi digital dan platform pembelajaran online telah dikembangkan untuk membantu guru dan orangtua dalam memberikan pendidikan yang lebih interaktif dan menyenangkan bagi anak-anak. Ini memungkinkan anak-anak untuk belajar dari mana saja dan kapan saja, sesuai dengan kebutuhan dan minat mereka.</p>\r\n<p>Selain itu, perhatian yang lebih besar telah diberikan pada pendidikan inklusif dan pendidikan khusus. PAUD telah meningkatkan kapasitas guru dan tenaga pendidik untuk memahami kebutuhan khusus anak-anak, termasuk anak-anak dengan kebutuhan khusus dan anak-anak yang berasal dari keluarga yang kurang mampu. Program pendidikan khusus dan terapi telah dikembangkan untuk membantu anak-anak yang membutuhkan perhatian khusus dalam belajar dan perkembangan.</p>\r\n<p>PAUD juga memperkuat kerja sama dengan keluarga dan komunitas dalam memberikan pendidikan terbaik bagi anak-anak. Orangtua dan keluarga diundang untuk terlibat dalam proses pembelajaran anak-anak mereka, baik melalui dukungan dalam proses belajar di rumah maupun partisipasi dalam kegiatan-kegiatan di sekolah. Hal ini membantu memperkuat hubungan antara keluarga dan sekolah, serta membantu anak-anak memperoleh dukungan dan stimulasi yang diperlukan untuk perkembangan mereka.</p>\r\n<p>Selain itu, pemerintah juga memberikan perhatian khusus pada kualitas fasilitas dan tenaga pendidik di PAUD. Pemerintah telah mengalokasikan dana yang lebih besar untuk memperbaiki fasilitas PAUD dan meningkatkan kualifikasi guru dan tenaga pendidik. Ini dilakukan untuk memastikan bahwa anak-anak menerima pendidikan terbaik dari para profesional yang berkualitas tinggi.</p>\r\n<p>Dengan berbagai perkembangan dan transformasi ini, PAUD di tahun 2023 dapat memberikan layanan pendidikan yang lebih baik dan memperkuat peran pentingnya dalam membentuk karakter dan kemampuan anak-anak sejak dini. Anak-anak dapat memperoleh dasar pendidikan yang kuat dan mempersiapkan mereka untuk belajar dan berkembang di masa depan.</p>', 'DgzjnOs10BIupx7vIAKRQamKObtMThErOJpq32Ja.jpg', 1, '2023-03-28 06:36:42', '2023-03-28 06:36:42'),
(21, 'Sekolah Name Berhasil Meraih Juara 1 Lomba Pendidikan Tingkat Kota', 'sekolah-name-berhasil-meraih-juara-1-lomba-pendidikan-tingkat-kota', 1, 'Sekolah Name berhasil memperoleh juara 1 pada lomba pendidikan tingkat kota yang diadakan oleh Dinas Pendidikan Kota Cimahi. Lomba tersebut diikuti oleh sekolah-sekolah lain di Kota Cimahi, dan sekolah Name berhasil meraih peringkat teratas.', '<p>Sekolah Name berhasil memperoleh juara 1 pada lomba pendidikan tingkat kota yang diadakan oleh Dinas Pendidikan Kota Cimahi. Lomba tersebut diikuti oleh sekolah-sekolah lain di Kota Cimahi, dan sekolah Name berhasil meraih peringkat teratas.</p>\r\n<p>Kepala Sekolah Name, Bapak Ahmad, menyatakan bahwa prestasi ini merupakan hasil dari kerja keras dan kolaborasi antara para guru dan siswa. \"Kami sangat bangga dan senang atas prestasi ini. Kami selalu berusaha untuk memberikan yang terbaik untuk anak-anak kami, baik dalam hal akademik maupun non-akademik,\" ujarnya.</p>\r\n<p>Lomba tersebut melibatkan berbagai kategori, seperti lomba matematika, lomba IPA, dan lomba bahasa Inggris. Sekolah Name berhasil meraih banyak poin dalam setiap kategori, sehingga akhirnya berhasil meraih peringkat teratas.</p>\r\n<p>Siswa-siswa Sekolah Name merasa bangga dengan prestasi yang telah diraih oleh sekolah mereka. Mereka merasa terinspirasi untuk terus berusaha dan belajar dengan lebih giat. \"Saya sangat senang dan bangga bisa menjadi bagian dari Sekolah Name. Saya akan terus belajar dan berusaha untuk meraih prestasi yang lebih baik lagi,\" ungkap salah satu siswa.</p>\r\n<p>Prestasi ini menjadi motivasi bagi Sekolah Name untuk terus meningkatkan kualitas pendidikan dan memberikan yang terbaik untuk anak-anak mereka. Sekolah Name berharap bisa meraih prestasi yang lebih baik lagi di masa depan dan menjadi contoh bagi sekolah-sekolah lain di Kota Cimahi.</p>', '6MbYkYOeHGvqrfc6VSPK83kH6NZmsdGTyXFgmFSP.jpg', 1, '2023-03-28 15:10:54', '2023-03-28 15:10:54'),
(22, 'PAUD Sekolah Name Ajak Orang Tua Berpartisipasi dalam Kegiatan Parenting', 'paud-sekolah-name-ajak-orang-tua-berpartisipasi-dalam-kegiatan-parenting', 1, 'Sekolah Name berharap kegiatan parenting ini bisa diadakan secara berkala untuk membantu para orang tua dalam mendidik anak mereka dan memperkuat hubungan antara orang tua dan anak. Kegiatan ini menjadi salah satu bentuk upaya Sekolah Name dalam memberikan pendidikan yang holistik dan berbasis pada kebutuhan anak.', '<p>Sekolah Name, lembaga pendidikan untuk anak usia 2-6 tahun di Kota Cimahi, mengadakan kegiatan parenting untuk para orang tua siswa. Kegiatan parenting ini diadakan dengan tujuan untuk membantu para orang tua dalam mengasah keterampilan dalam mendidik anak dan memperkuat hubungan antara orang tua dan anak.</p>\r\n<p>Kegiatan parenting tersebut diadakan pada hari Sabtu, 27 Maret 2023 di ruang serbaguna Sekolah Name. Para orang tua siswa Sekolah Name sangat antusias dalam mengikuti kegiatan ini. Mereka datang dari berbagai latar belakang dan memiliki banyak pertanyaan tentang cara terbaik dalam mendidik anak mereka.</p>\r\n<p>Kepala Sekolah Name, Bapak Ahmad, memberikan sambutan dan menjelaskan tujuan dari kegiatan parenting tersebut. \"Kami berharap kegiatan ini bisa membantu para orang tua untuk menjadi lebih terampil dalam mendidik anak dan bisa memperkuat hubungan antara orang tua dan anak. Anak-anak yang mendapat dukungan dari orang tua cenderung lebih sukses dalam kehidupan mereka,\" ujarnya.</p>\r\n<p>Kegiatan parenting tersebut melibatkan berbagai kegiatan, seperti diskusi kelompok kecil, presentasi dari para ahli pendidikan anak, dan juga simulasi situasi di rumah untuk menunjukkan cara terbaik dalam mendidik anak.</p>\r\n<p>Salah satu orang tua siswa Sekolah Name, Ibu Indah, mengatakan bahwa kegiatan tersebut sangat bermanfaat untuknya. \"Saya belajar banyak dari kegiatan ini, terutama tentang bagaimana memberikan penghargaan dan memotivasi anak saya. Saya merasa lebih siap dalam mendidik anak saya sekarang,\" katanya.</p>\r\n<p>Sekolah Name berharap kegiatan parenting ini bisa diadakan secara berkala untuk membantu para orang tua dalam mendidik anak mereka dan memperkuat hubungan antara orang tua dan anak. Kegiatan ini menjadi salah satu bentuk upaya Sekolah Name dalam memberikan pendidikan yang holistik dan berbasis pada kebutuhan anak.</p>', '9t3HIbfaO6XfJQdRPPIRBMdPwgm7tsAUecigGLrL.jpg', 1, '2023-03-28 15:15:08', '2023-03-28 15:15:08');

-- --------------------------------------------------------

--
-- Table structure for table `prestasis`
--

CREATE TABLE `prestasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `categoriprestasi_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prestasis`
--

INSERT INTO `prestasis` (`id`, `title`, `slug`, `categoriprestasi_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Juara 2 Kontes Robotik PAUD Tingkat Nasional', 'aditya-pratama', '1', 'Aditya Pratama', 'XVS2qyCYRAjJww4lI5ZcnNQ3m8biauQwQFjdWftk.jpg', '2023-02-18 00:09:07', '2023-03-27 20:13:56'),
(5, 'Juara 1 Berhitung PAUD Tingkat Provinsi Jawa Barat', 'muhammad-agung-pradana', '1', 'Muhammad Agung Pradana', 'iflraU9G3yluwIXnAvE0hBPsu5Hy0ozkUkDI930f.jpg', '2023-02-18 00:42:57', '2023-03-27 20:13:31'),
(6, 'Juara 1 Lomba Tari Tradisional Tingkat Kota Nasional', 'nurmala', '2', 'Nurmala', 'SNPJN9Y1NlpGPE85ul9NUVoNTnSUwI2f3lMMk8pO.jpg', '2023-02-28 23:57:20', '2023-03-27 20:11:25'),
(7, 'Juara 1 Lomba Baca Puisi PAUD Tingkat Jawa Barat', 'fariza-fadilah-hakim', '1', 'Fariza Fadilah Hakim', 'ZhuyM9A0YpYrgJt6lohBPhs7SmExc0MKI5bxXF7l.jpg', '2023-03-01 00:01:17', '2023-03-27 20:10:41'),
(8, 'Juara 1 Lomba Menyanyi Tingka Kota Cimahi', 'm-arif', '2', 'M Arif', '1H4JJPtOlGLSq64TuyQavWKaMvMK8x7cZqvKQUaG.jpg', '2023-03-01 00:02:31', '2023-03-27 20:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `weekly` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `ourteam_id` int(11) DEFAULT NULL,
  `class_size` varchar(255) DEFAULT NULL,
  `time_table` text DEFAULT NULL,
  `time_table2` text DEFAULT NULL,
  `investasi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `image`, `name`, `slug`, `description`, `content`, `age`, `weekly`, `periode`, `ourteam_id`, `class_size`, `time_table`, `time_table2`, `investasi`, `created_at`, `updated_at`) VALUES
(1, 'tMnLYAuSUcU1UV2xjadu0FpsJl4s2C6elwCHAPMc.jpg', 'Playgroup', 'playgroup', '<p>Kelas Play Group di Sekolah Name sangat cocok untuk anak usia 2-3 tahun yang ingin mengembangkan keterampilan fisik, mental, sosial, dan emosional secara menyenangkan dan merangsang. Dalam kelas ini, anak-anak akan belajar melalui berbagai kegiatan bermain, bernyanyi, menari, dan mewarnai. Para guru yang berpengalaman dan berkualitas akan membantu anak-anak dalam memperoleh dasar-dasar belajar yang kuat dan mencapai tujuan pembelajaran yang ditetapkan.</p><p>Kelas Play Group di Sekolah Name juga dilengkapi dengan fasilitas yang mendukung kegiatan belajar anak-anak, seperti ruang bermain yang aman dan nyaman, peralatan mainan yang aman dan bersih, serta fasilitas audiovisual yang modern. Orang tua juga akan diajak untuk terlibat dalam proses pendidikan anak dan diberikan informasi dan dukungan yang dibutuhkan untuk membantu anak-anak mereka dalam proses belajar dan perkembangan. Dengan semua ini, kelas Play Group di Sekolah Name menjadi pilihan yang tepat bagi orang tua yang ingin memberikan pengalaman belajar yang bermanfaat dan menyenangkan bagi anak-anak mereka.</p>', '<p>Kurikulum Play Group di Sekolah Name dirancang khusus untuk memenuhi kebutuhan dan potensi anak usia 2-3 tahun.</p><ul><li>Mencakup berbagai aspek perkembangan anak, seperti kognitif, motorik, sosial, dan emosional.</li><li>Belajar melalui kegiatan bermain, bernyanyi, menari, dan juga mewarnai.</li><li>Menekankan pada pembelajaran melalui pengalaman langsung, sehingga anak-anak dapat mengembangkan kreativitas, imajinasi, dan rasa ingin tahu mereka.</li><li>Menggunakan pendekatan yang ramah anak dan interaktif, sehingga anak-anak dapat belajar dengan lebih mudah dan menyenangkan.</li><li>Evaluasi berkala untuk memantau perkembangan anak dan memberikan feedback kepada orang tua tentang kemajuan anak mereka.</li></ul><p>&nbsp;</p>', '2-4', '3', '4', 1, '7', '<figure class=\"table\"><table><thead><tr><th>Hour&nbsp;</th><th>&nbsp;</th><th>Activity</th></tr></thead><tbody><tr><td>8:00am&nbsp;</td><td>&nbsp;</td><td>Free Play</td></tr><tr><td>8:30am&nbsp;</td><td>&nbsp;</td><td>Sand Pit</td></tr><tr><td>9:00am&nbsp;</td><td>&nbsp;</td><td>Tattoo Corner</td></tr><tr><td>9:30am&nbsp;</td><td>&nbsp;</td><td>Creativity Corner</td></tr><tr><td>10:00am&nbsp;</td><td>&nbsp;</td><td>Food Time</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><thead><tr><th>Hour</th><th>Activity</th></tr></thead><tbody><tr><td>10:30am</td><td>Creativity Corner</td></tr><tr><td>11:00am</td><td>Food Time</td></tr><tr><td>11:30am</td><td>Free Play</td></tr><tr><td>12:00am</td><td>Tattoo Corner</td></tr><tr><td>12:30am</td><td>Sand Pit</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><td><strong>Deskripsi Investasi</strong></td><td><strong>Besar Investasi (Rp)</strong></td></tr><tr><td>Pendaftaran&nbsp;</td><td>500.000,-</td></tr><tr><td><p>Investasi Awal</p><p>Pengembangan fasilitas</p><p>Buka siswa</p><p>Alat belajar</p><p>Seragam (3 buah)</p></td><td>3.500.000,-</td></tr><tr><td>Investasi Bulanan</td><td>400.000,-</td></tr></tbody></table></figure>', NULL, '2023-04-20 01:54:03'),
(2, 'IOXrXmlAGKx03DUfHCYvCOl2MUnY9gzC2wZs5czu.jpg', 'Prekindergarten', 'prekindergarten', '<p>Kelas Prekindergarten dirancang sedemikian rupa untuk menciptakan lingkungan pembelajaran yang positif dan menyenangkan bagi anak-anak. Dalam kelas ini, anak-anak tidak hanya belajar keterampilan akademik dasar seperti membaca, menulis, dan berhitung, tetapi juga diberi kesempatan untuk mengembangkan keterampilan sosial dan emosional yang penting dalam kehidupan sehari-hari. Para guru yang terampil dan berpengalaman dalam mengajar anak-anak usia 4-5 tahun akan membantu anak-anak mengembangkan keterampilan yang dibutuhkan untuk sukses di jenjang pendidikan selanjutnya. Selain itu, fasilitas dan peralatan pembelajaran yang memadai akan membantu mempercepat proses belajar anak-anak.</p><p>Dalam kelas Prekindergarten, anak-anak akan memiliki pengalaman belajar yang menyenangkan dan bermanfaat sebelum memasuki jenjang pendidikan selanjutnya. Dengan fondasi belajar yang kuat, anak-anak akan memiliki kepercayaan diri yang tinggi dan siap untuk menghadapi tantangan belajar yang lebih besar di masa depan.</p>', '<p>Kurikulum di kelas Prekindergarten biasanya dirancang untuk memenuhi kebutuhan perkembangan anak usia 4-5 tahun. Kurikulum ini biasanya mencakup empat area utama yang meliputi:</p><p>Area Kognitif: Kurikulum ini mencakup aktivitas yang dirancang untuk membantu anak-anak memahami konsep dasar seperti angka, bentuk, warna, dan huruf. Anak-anak juga akan belajar membaca dan menulis huruf, angka, serta kata-kata sederhana.</p><p>Area Motorik: Aktivitas yang dirancang untuk membantu anak-anak mengembangkan keterampilan motorik halus dan kasar akan diberikan di dalam kurikulum ini. Anak-anak akan belajar cara memegang pensil dan menggunakan alat tulis lainnya dengan benar serta belajar berjalan, berlari, melompat, dan memanjat.</p><p>Area Sosial-emosional: Kurikulum ini mencakup aktivitas yang membantu anak-anak mengembangkan keterampilan sosial, seperti bekerja sama, berbagi, dan merespons emosi dan perasaan teman sebayanya. Anak-anak juga akan belajar mengelola emosi mereka sendiri, seperti marah dan kecewa, dan belajar membangun hubungan sosial yang positif.</p><p>Area Kreativitas: Kurikulum ini mencakup aktivitas yang dirancang untuk merangsang kreativitas dan imajinasi anak-anak, seperti melukis, menggambar, memotong, dan menempel. Anak-anak juga akan diajarkan untuk mengekspresikan diri mereka melalui seni dan musik.</p>', '4-5', '5', '5', 5, '10', '<figure class=\"table\"><table><thead><tr><th>Hour</th><th>Activity</th></tr></thead><tbody><tr><td>8:00am</td><td>Free Play</td></tr><tr><td>8:30am</td><td>Sand Pit</td></tr><tr><td>9:00am</td><td>Tattoo Corner</td></tr><tr><td>9:30am</td><td>Creativity Corner</td></tr><tr><td>10:00am</td><td>Food Time</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><thead><tr><th>Hour</th><th>Activity</th></tr></thead><tbody><tr><td>10:30am</td><td>Creativity Corner</td></tr><tr><td>11:00am</td><td>Food Time</td></tr><tr><td>11:30am</td><td>Free Play</td></tr><tr><td>12:00am</td><td>Tattoo Corner</td></tr><tr><td>12:30am</td><td>Sand Pit</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><td><strong>Deskripsi Investasi</strong></td><td><strong>Besar Investasi (Rp)</strong></td></tr><tr><td>Pendaftaran&nbsp;</td><td>500.000,-</td></tr><tr><td><p>Investasi Awal</p><p>Pengembangan fasilitas</p><p>Buka siswa</p><p>Alat belajar</p><p>Seragam (3 buah)</p></td><td>4.500.000,-</td></tr><tr><td>Investasi Bulanan</td><td>500.000,-</td></tr></tbody></table></figure>', '2023-04-03 21:14:34', '2023-04-20 01:53:36'),
(3, 'sTxmrwBhAWkdGIxe8EJGkhFCUvCuV6vBM5O3JH7p.jpg', 'Kindergarten', 'kindergarten', '<p>Kelas Kindergarten di School Name adalah tempat yang ideal untuk mempersiapkan anak-anak Anda untuk memasuki jenjang sekolah dasar. Dengan kurikulum yang terstruktur dan fokus pada pengembangan kognitif, motorik, sosial-emosional, dan kreativitas, anak-anak akan memiliki dasar yang kuat dan keterampilan yang berkembang dengan baik.</p><p>Para guru yang ahli dalam bidang pendidikan anak usia dini di kelas Kindergarten di School Name juga menggunakan pendekatan bermain dan belajar, sehingga anak-anak dapat belajar dengan cara yang menyenangkan dan merangsang minat mereka. Dengan fasilitas yang memadai dan mendukung kegiatan belajar anak-anak, seperti ruang kelas yang nyaman, ruang bermain yang aman, dan peralatan mainan yang aman dan bersih, anak-anak akan dapat belajar dengan lingkungan yang kondusif dan aman.</p><p>Dengan memilih kelas Kindergarten di School Name, orang tua dapat memberikan pengalaman belajar yang bermanfaat dan menyenangkan bagi anak-anak mereka, serta memastikan bahwa anak-anak mereka memiliki dasar belajar yang kuat dan siap untuk menghadapi tantangan belajar di masa depan.</p>', '<p>Kurikulum di kelas Kindergarten mencakup beberapa area utama yang meliputi:</p><p>Area Kognitif: Anak-anak akan belajar mengenali huruf, angka, dan konsep matematika dasar, seperti penghitungan, pola, dan ukuran. Mereka juga akan belajar membaca dan menulis kata-kata sederhana serta mengembangkan keterampilan dasar dalam ilmu pengetahuan dan alam.</p><p>Area Motorik: Aktivitas yang dirancang untuk mengembangkan keterampilan motorik halus dan kasar akan terus diberikan di kelas Kindergarten. Anak-anak akan belajar cara memegang pensil dan menggunakan alat tulis lainnya dengan benar, serta mengembangkan keterampilan fisik lainnya seperti berlari, melompat, dan menari.</p><p>Area Sosial-emosional: Kurikulum di kelas Kindergarten juga mencakup aktivitas yang dirancang untuk membantu anak-anak mengembangkan keterampilan sosial, seperti berinteraksi dengan teman sebayanya, belajar bekerja sama, dan mengelola emosi mereka sendiri dengan cara yang sehat dan konstruktif.</p><p>Area Kreativitas: Kurikulum ini mencakup aktivitas yang merangsang kreativitas dan imajinasi anak-anak, seperti melukis, menggambar, memotong, dan menempel. Anak-anak juga akan diajarkan untuk mengekspresikan diri mereka melalui seni dan musik.</p>', '5-6', '5', '5', 3, '10', '<figure class=\"table\"><table><thead><tr><th>Hour</th><th>Activity</th></tr></thead><tbody><tr><td>8:00am</td><td>Free Play</td></tr><tr><td>8:30am</td><td>Sand Pit</td></tr><tr><td>9:00am</td><td>Tattoo Corner</td></tr><tr><td>9:30am</td><td>Creativity Corner</td></tr><tr><td>10:00am</td><td>Food Time</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><thead><tr><th>Hour</th><th>Activity</th></tr></thead><tbody><tr><td>10:30am</td><td>Creativity Corner</td></tr><tr><td>11:00am</td><td>Food Time</td></tr><tr><td>11:30am</td><td>Free Play</td></tr><tr><td>12:00am</td><td>Tattoo Corner</td></tr><tr><td>12:30am</td><td>Sand Pit</td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><td><strong>Deskripsi Investasi</strong></td><td><strong>Besar Investasi (Rp)</strong></td></tr><tr><td>Pendaftaran&nbsp;</td><td>500.000,-</td></tr><tr><td><p>Investasi Awal</p><p>Pengembangan fasilitas</p><p>Buka siswa</p><p>Alat belajar</p><p>Seragam (3 buah)</p></td><td>6.000.000,-</td></tr><tr><td>Investasi Bulanan</td><td>600.000,-</td></tr></tbody></table></figure>', '2023-04-03 21:45:42', '2023-04-20 01:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `prosedurs`
--

CREATE TABLE `prosedurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prosedurs`
--

INSERT INTO `prosedurs` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Prosedur Pendaftaran', '<p>Terimakasih telah memilih sekolah kami untuk menjadi bagian dalam pendidikan putra/putri Anda tersayang. Semoga Allah Swt memberikan kemudahan dalam proses pendidikannya dan memberikan hasil yang terbaik sesuai dengan harapan Ayah/Bunda.</p><p>Berikut adalah langkah - langkah untuk mendaftarkan putra/putri Ayah/Bunda di sekolah kami:</p><p><strong>Langkah 1: Mengisi Formulir Pendaftaran</strong></p><p>Pendaftaran ini untuk memastikan bahwa putra/putri Anda tercatat pada urutan pendaftaran.</p><p><a href=\"#\"><strong>Formulir Pendaftaran</strong></a></p><p>&nbsp;</p><p><strong>Langkah 2: Membayar Investasi Pendidikan</strong></p><p>Membayar investasi pendidikan minimal sebesar <strong>20%</strong> dari <strong>total investasi pendidikan</strong> untuk <strong>umum</strong> atau <strong>investasi awal</strong> untuk <strong>program beasiswa</strong> . Pembayaran bisa ditransfer langsung ke rekening Sekolah . Mohon pastikan rekening tujuan pengiriman adalah sebagai berikut:<br>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Pemilik Rekening</td><td>:<strong> Sekolah Name</strong></td></tr><tr><td>Nama Bank</td><td>:<strong> Bank Sebutkan Namanya (Kode Transfer: XXX)</strong></td></tr><tr><td>Nomor Rekening</td><td>: 111-1111</td></tr></tbody></table></figure><p>Jika tidak melanjutkan untuk mendaftar di Sekolah Name atau gugur dalam seleksi, maka seluruh dana investasi pendidikan yang telah dibayarkan akan dikembalikan kecuali biaya pendaftaran dan tes.</p><blockquote><p><strong>*Hati-hati terhadap penipuan yang mengatas namakan AIS. Kami hanya menggunakan rekening pendaftaran yang tercantum di atas.</strong></p></blockquote><p>&nbsp;</p><p><strong>Langkah 3: Mengirimkan Bukti Pembayaran</strong></p><p>Bukti pembayaran dapat dikirim ke WhatsApp: <strong>0811-1111-1111</strong></p><p>&nbsp;</p><p><strong>Langkah 4: Melakukan Psikotes/Tes Perkembangan Anak</strong></p><p>Tes dilakukan oleh tim tes siswa baru sekolah. Tes ini bertujuan untuk mengetahui minat, bakat, dan karakter para calon siswa/siswi dan sebagai pertimbangan bagi para guru dalam melakukan proses pendidikan. Jadwal tes akan diinformasikan melalui kontak informasi orang tua/siswa yang telah terdaftar.</p><p>&nbsp;</p><p><strong>Langkah 5: Melakukan Registasi Ulang</strong></p><p>Ananda yang telah mendaftar dan lolos psikotes atau seleksi beasiswa akan mendapatkan pemberitahuan untuk melakuakn registrasi ulang. Berikut adalah data yang harus dilengkapi pada saat registrasi ulang:</p><ol><li>Formulir registrasi dapat di unduh di sini:<br><a href=\"#\"><strong>Formulir Pendaftaran</strong></a></li><li>Scan / Fotokopi ijazah terakhir</li><li>Pas foto ukuran 3 x 4</li><li>Scan/fotokopi akte lahir</li><li>Scan/fotokopi kartu keluarga</li><li>Scan / Fotokopi penghargaan yang pernah diperoleh</li><li>Bukti pelunasan dana investasi pendidikan</li></ol><p>Para siswa/siswi yang telah melakukan registrasi ulang akan mendapatkan nomor induk siswa dan mendapatkan perlengkapan sekolah (seragam, tas, buku, dll)</p>', NULL, '2023-04-27 02:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `renstras`
--

CREATE TABLE `renstras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `renstras`
--

INSERT INTO `renstras` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Penataan Kelembagaan', '<ul><li>Penataan Sistem pembagian tugas kerja secara proporsional</li><li>Optimalisasi Sumber Daya yang ada</li><li>Penyusunan program kerja masing-masing bagian</li><li>Penyeragaman persepsi terhadap optimalisasi dan realisasi program sekolah.</li></ul>', '2023-02-19 20:18:56', '2023-02-19 20:21:50'),
(2, 'Peningkatan Mutu KBM', '<ul><li>Menanamkan disiplin dan tata tertib kepada seluruh siswa dan pelaksana pendidikan</li><li>Meningkatkan minat baca siswa dan guru</li><li>Mengembangkan kualitas alat evaluasi, pelaksanaan evaluasi dan analisa hasil evaluasi</li><li>Mengembangkan pelaksanaan bank soal untuk setiap mata pelajaran</li><li>Meningkatkan pelayanan Bimbingan dan Konseling secara efektif dan efisien, dengan meningkatkan peranan wali kelas dalam melayani siswa</li><li>Mengembangkan kegiatan ekstrakurikuler dan Pendidikan Luar Jam Sekolah</li></ul>', '2023-02-19 23:49:02', '2023-02-19 23:49:02'),
(3, 'Peningkatan Kualitas Profesi Kependidikan', '<ul><li>Mengembangkan kegiatan ekstrakurikuler dan Pendidikan Luar Jam Sekolah.</li><li>Memberdayakan diklat, penataran, rapat kerja, sebagai sarana peningkatan pengetahuan, wawasan dan keterampilan guru.</li><li>Menerapkan hasil diklat, penataran, rapat kerja secara tepat guna dan berhasil guna.</li><li>Meningkatkan pelaksanaan supervisi Kepala Sekolah dan Pengawas Bidang Dikmenum.</li><li>Mengoptimalkan pemberdayaan saran dan alat bantu pendidikan.</li><li>Penataran / pelatihan BP / BK untuk wali kelas.</li></ul>', '2023-02-19 23:50:36', '2023-02-19 23:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `sambutans`
--

CREATE TABLE `sambutans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutans`
--

INSERT INTO `sambutans` (`id`, `name`, `slug`, `title`, `image`, `description`, `video`, `created_at`, `updated_at`) VALUES
(1, 'Faatiha Aayat, Phd.', 'kepala-sekolah', 'Kepala Sekolah', 'pxifYUl4hMUEsHXQnl4qKSda5I8EP9inFEcstR18.jpg', '<p><i>Assalamu’alaikum warahmatullahi wabarakatu</i></p><p>Saya selaku Kepala Sekolah merasa bangga dan bersyukur atas kesempatan yang diberikan untuk memimpin sekolah ini. PAUD School Name merupakan lembaga pendidikan anak usia dini yang berkomitmen untuk memberikan layanan pendidikan yang terbaik dan berkualitas bagi anak-anak usia 2-6 tahun.</p><p>Di PAUD School Name, kami berupaya memberikan pengalaman belajar yang menyenangkan dan menarik bagi anak-anak, sehingga mereka dapat tumbuh dengan kreativitas, memiliki kepribadian yang mandiri, serta memperoleh dasar-dasar yang kuat untuk belajar di kemudian hari. Kami juga berkomitmen untuk menerapkan pendekatan pembelajaran yang holistik dan berbasis pada kebutuhan dan potensi anak, serta mendorong kreativitas dan imajinasi anak melalui metode pembelajaran yang inovatif dan menyenangkan.</p><p>Selain itu, kami juga berusaha untuk membangun kemitraan yang erat dengan orang tua dan masyarakat dalam mendukung perkembangan anak, serta memberikan pelayanan yang ramah dan berkualitas. Kami percaya bahwa dengan kerjasama yang baik antara PAUD School Name, orang tua, dan masyarakat, kita dapat menciptakan lingkungan belajar yang positif dan mendukung untuk perkembangan anak.</p><p>Akhir kata, saya mengucapkan terima kasih kepada semua pihak yang telah mendukung dan bekerja sama dengan PAUD School Name. Mari bersama-sama berkomitmen untuk menciptakan generasi muda yang cerdas, kreatif, mandiri, dan berakhlak mulia.</p><p><i>&nbsp;Wassalamualaikum warahmatullahi wabarakatuh.</i></p>', 'WnLNJ2mK7BI', '2023-01-24 22:49:15', '2023-03-25 17:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SMA Pasundan 3 Bandung Didirikan', '<p>SMA Pasundan 3 Bandung didirikan pada tahun 1982 untuk memenuhi kebutuhan masyarakat mengenai pendidikan yang berkualitas di Kota Bandung. Letak sekolah yang strategis menjadikan sekolah ini sebagai tujuan belajar dari para siswa dan siswi yang ada di Kota Bandung dan sekitarnya termasuk dari daerah Padalarang dan Rancaekek, dan Cicalengka.</p><p>Seiring dengan meningkatnya animo masyarakat untuk menyekolahkan putra / putri-nya di SMA Pasundan 3 Bandung, maka jumlah murid pun semakin meningkat. Jumlah kelas yang ada pun tidak mampu menampung jumlah murid baru yang mendaftar di SMA Pasundan 3 Bandung. Oleh karena itu pada tahun 1991, SMA Pasundan 3 Bandung menambah jumlah kelas di lantai 2 sehingga total kelas yang ada adalah 33 ruangan.</p>', 'pX7XtYlLIF18o0SXVa9iUNxe4rA6pGPLoA55AU6V.jpg', '2023-02-11 06:21:22', '2023-02-15 00:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `seragams`
--

CREATE TABLE `seragams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seragams`
--

INSERT INTO `seragams` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Putih - Abu', 'c4RPzr6cwl6lH0mPcsHjLD9IgSyw05ZM8vCr5P4N.jpg', '<p>Seragam Putih Abu SMA Pasundan 3 Bandung</p>', '2023-03-07 01:08:50', '2023-03-07 01:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `sidebanners`
--

CREATE TABLE `sidebanners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebanners`
--

INSERT INTO `sidebanners` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'mydtKAv4wfQ4jugZafih4zoHGWWlsvdr5Vaonnjp.jpg', '#', '2023-02-10 20:10:43', '2023-02-10 13:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `sistem_informasis`
--

CREATE TABLE `sistem_informasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sistem_pembelajarans`
--

CREATE TABLE `sistem_pembelajarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sistem_penilaians`
--

CREATE TABLE `sistem_penilaians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `button` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `image`, `description`, `button`, `link`, `created_at`, `updated_at`) VALUES
(7, 'Belajar dengan Senang dan Bermain dengan Ilmu', 'belajar-dengan-senang-dan-bermain-dengan-ilmu', 'XPNy3VH8mb4dBJ7A9lUFJEUDUUUE88Ywvf6NCeXF.jpg', 'Belajar dengan senang, bermain dengan ilmu, anak-anak menjadi lebih ceria dan kreatif. Pembelajaran tidak harus kaku dan formal, keceriaan dapat menjadi kunci dalam memperoleh ilmu dan kemampuan.', 'Selengkapnya', '#', '2023-03-25 03:10:26', '2023-03-25 03:10:26'),
(8, 'Tempat Anak Belajar dan Berkembang dengan Penuh Kreativitas', 'tempat-anak-belajar-dan-berkembang-dengan-penuh-kreativitas', 'KvJO3UClmouSV6yNdqXHT9hqNbDNs4RpGSaHoXFh.jpg', 'Tempat anak belajar dan berkembang dengan penuh kreativitas merupakan lingkungan yang dirancang untuk merangsang imajinasi dan kreativitas anak, serta membantu mereka mengembangkan potensi secara optimal melalui berbagai metode dan pendekatan pembelajaran yang inovatif dan menyenangkan.', 'Selengkapnya', '#', '2023-03-25 03:47:29', '2023-03-25 03:47:29'),
(9, 'Membuat Anak Menikmati Proses Belajar untuk Meraih Impiannya', 'membuat-anak-menikmati-proses-belajar-untuk-meraih-impiannya', 'nLNNnhlNk4Xq9ebVeb9V2KQAxH3BBuOc6ciAYtV3.jpg', 'Membuat anak menikmati proses belajar untuk meraih impian mereka adalah strategi pembelajaran yang membantu anak merasa lebih termotivasi, terlibat aktif, dan bersemangat dalam belajar, sehingga mendorong mereka untuk mengembangkan potensi dan mencapai tujuan mereka dengan lebih baik.', 'Selengkapnya', '#', '2023-03-25 03:48:49', '2023-03-25 03:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `slug`, `description`, `image`, `location`, `created_at`, `updated_at`) VALUES
(1, 'sadasdasd', 'sadasdasd', '<p>sdadasdas</p>', 'bhyybeN1OhmGSV7NaWet5GXV9Hvwno3vpscCO7mj.jpg', 'dasdasd', NULL, '2023-01-25 10:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `company_name` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `slug`, `owner`, `company_name`, `location`, `description`, `video`, `web`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rintisan Bisnis Kecil yang Berkembang Pesat', 'rintisan-bisnis-kecil-yang-berkembang-pesat', 'John Parlindungan', 'CV. Jaya Kusumah', 'Cimahi', '<p>John memulai bisnisnya dengan membuka toko kecil yang menjual barang-barang elektronik. Awalnya, omset bulanan tokonya hanya sekitar Rp 10 juta, tetapi dia tidak menyerah dan terus berusaha meningkatkan kualitas layanannya dan memperluas jangkauan pasar.</p><p>Dia mulai menjual produk-produk terbaru dan mempekerjakan staf yang terlatih dengan baik. Berkat kerja keras dan tekad yang kuat, dia berhasil meningkatkan omset tokonya hingga Rp 50 juta per bulan dalam waktu 3 tahun.</p><p>John juga memanfaatkan teknologi untuk memperluas jangkauan pasar. Dia membuat website tokonya dan memulai menjual produk-produknya secara online. Ini membantunya menjangkau pelanggan baru dan meningkatkan omset tokonya hingga Rp 100 juta per bulan.</p><p>Setelah 5 tahun berbisnis, John memutuskan untuk membuka cabang toko di beberapa kota lain. Ini membantunya meningkatkan omset bisnisnya hingga Rp 500 juta per bulan. Kini, tokonya dikenal sebagai salah satu toko elektronik terkemuka di Indonesia dan John dikenal sebagai salah satu pengusaha sukses di kota.</p>', 'OqeBojdQr-I', '#', 'hhwKZ4nOWBKIXXKezo2ZY9jpjfpPa0DpNF9n6N55.jpg', '2023-01-30 16:29:43', '2023-01-30 16:52:01'),
(2, 'Omset Milyaran Melalui E-Commerce', 'omset-milyaran-melalui-e-commerce', 'Sarah Mutmainah', 'Sarah Collection', 'Cimahi Utara', '<p>Sarah memulai bisnis online-nya sejak tahun 2008. Awalnya, dia hanya menjual produk-produk kecil melalui website sederhana. Namun, dia selalu berusaha meningkatkan layanan dan memperluas jangkauan pasar.</p><p>Dia mulai menjual produk-produk baru dan mempekerjakan staf yang terlatih untuk membantunya menangani bisnis. Berkat strategi pemasaran yang inovatif dan komitmen yang tinggi terhadap pelanggan, bisnis Sarah berkembang pesat dan menjadi salah satu toko online terkemuka di Indonesia.</p><p>Sarah juga memanfaatkan teknologi untuk mempermudah transaksi dan memastikan bahwa pelanggan senang dengan layanannya. Dia membuat aplikasi mobile untuk tokonya dan memastikan bahwa pelanggan dapat melakukan pembelian produk dengan mudah melalui smartphone mereka.</p><p>Setelah 5 tahun berbisnis, Sarah membuka cabang toko online di beberapa negara lain dan meningkatkan omset bisnisnya hingga Rp 1 miliar per bulan. Kini, tokonya dikenal sebagai salah satu toko online terkemuka di Indonesia dan Sarah dikenal sebagai salah satu pengusaha sukses di bidang e-commerce.</p><p>Ini hanya salah satu contoh kisah sukses anggota HIPMI. Sarah membuktikan bahwa dengan strategi pemasaran yang inovatif dan komitmen yang tinggi terhadap pelanggan, seseorang dapat mencapai kesuksesan dalam bisnis online.</p>', 'myk3winLzZQ', '#', '6vi6brTpa4fs4V64U8nWFFW1l8OOjI8z8eMJrw1M.jpg', '2023-01-30 16:47:20', '2023-01-31 15:32:58'),
(3, 'Sukses Dengan Bisnis Kuliner', 'sukses-dengan-bisnis-kuliner', 'Michael Tambunan', 'CV Mulia Food', 'Cimahi Tengah', '<p>Berikut adalah cerita Michael, seorang anggota HIPMI Kota Cimah yang memulai bisnisnya sebagai pengusaha kuliner dan berhasil mengembangkannya menjadi salah satu restoran terkemuka di kota:</p><p>Michael memulai bisnis kuliner-nya dengan membuka warung makan kecil. Dia memfokuskan diri pada menyajikan makanan berkualitas dengan bahan-bahan yang segar dan harga yang terjangkau. Strateginya membuahkan hasil dan warung makannya ramai dikunjungi oleh pelanggan.</p><p>Michael tidak puas dengan hasil yang didapatkan dan bertekad untuk mengembangkan bisnisnya. Dia membuka restoran baru dengan konsep yang lebih modern dan meningkatkan kualitas layanannya. Berkat strategi pemasaran yang tepat dan komitmen yang tinggi terhadap pelanggan, restoran Michael berkembang pesat dan menjadi salah satu restoran terkemuka di kota.</p><p>Michael juga memanfaatkan teknologi untuk mempermudah pemesanan dan memastikan bahwa pelanggan dapat menikmati makanannya dengan mudah. Dia membuat aplikasi mobile untuk restorannya dan memastikan bahwa pelanggan dapat memesan makanannya melalui smartphone mereka.</p><p>Setelah 10 tahun berbisnis, Michael membuka cabang restoran di beberapa kota lain dan meningkatkan omset bisnisnya hingga Rp 5 miliar per bulan. Kini, restoran Michael dikenal sebagai salah satu restoran terkemuka di kota dan Michael dikenal sebagai salah satu pengusaha sukses di bidang kuliner.</p><p>Ini hanya salah satu contoh kisah sukses anggota HIPMI. Michael membuktikan bahwa dengan strategi pemasaran yang tepat dan komitmen yang tinggi terhadap pelanggan, seseorang dapat mencapai kesuksesan dalam bisnis kuliner.</p>', 'kfSV3gyQIk8', '#', 'yEowRBcMXttAbFPZh9pfcBj2Lw40yLv1rMgZKCic.jpg', '2023-01-30 16:50:32', '2023-01-30 16:50:32'),
(4, 'Membangun Impian Menjadi Kenyataan: Kisah Anggraeni Nursari, Pengusaha Sukses di Bidang Teknologi', 'membangun-impian-menjadi-kenyataan-kisah-anggraeni-nursari-pengusaha-sukses-di-bidang-teknologi', 'Anggraeni Nursari', 'Anggraeni Studio', 'Cimahi Selatan', '<p>Anggraeni Nursari memulai bisnisnya dengan membuka toko online yang menjual produk-produk teknologi. Dia memfokuskan diri pada produk-produk dengan harga terjangkau dan kualitas yang baik. Bisnisnya berkembang pesat dan Anggraeni memutuskan untuk mengembangkan bisnisnya dengan membuka perusahaan teknologi.</p><p>Perusahaan Anggraeni memfokuskan diri pada pengembangan aplikasi dan perangkat lunak yang membantu pelanggan untuk mengelola bisnis mereka dengan lebih efisien. Berkat inovasi yang terus-menerus dan kualitas layanan yang tinggi, perusahaan Anggraeni berkembang pesat dan menjadi salah satu perusahaan teknologi terkemuka di kota.</p><p>Anggraeni juga memastikan bahwa perusahaannya mempekerjakan tenaga kerja yang kompeten dan berkomitmen terhadap kualitas layanan. Dia memastikan bahwa perusahaannya selalu berinovasi dan memperbarui produk-produknya sesuai dengan kebutuhan pelanggan.</p><p>Setelah 10 tahun berbisnis, Anggraeni membuka cabang perusahaan di beberapa kota lain dan meningkatkan omset bisnisnya hingga Rp 10 miliar per bulan. Kini, perusahaan Anggraeni dikenal sebagai salah satu perusahaan teknologi terkemuka dan Anggraeni dikenal sebagai salah satu pengusaha sukses di bidang teknologi.</p>', 'wpWj_rcfif4', '#', 'PuWdm0ZIwipaurdVo8skqzdSTFHPvJAJUQyWNeZV.jpg', '2023-01-30 16:56:55', '2023-01-31 15:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `svgs`
--

CREATE TABLE `svgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `svgs`
--

INSERT INTO `svgs` (`id`, `image`, `name`, `nilai`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-user-interface', 'tahun<br> pengalaman', '10', '<p>akses</p>', '2023-02-08 02:32:16', '2023-03-26 04:28:00'),
(2, 'flaticon-reading', 'orang<br>lulusan', '2000', '<p>Young Privillage</p>', NULL, '2023-03-26 04:15:58'),
(3, 'flaticon-reading', 'prestasi<br>diraih', '100', '<p>Gallery 3</p>', NULL, '2023-03-26 04:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `tanggalpentings`
--

CREATE TABLE `tanggalpentings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tanggalpentings`
--

INSERT INTO `tanggalpentings` (`id`, `date`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '2023-05-06', 'Pembukaan Pendaftaran Gelombang 31', '<p>ini adalah deskripsi 2</p>', '2023-04-27 07:45:10', '2023-04-27 07:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `tendiks`
--

CREATE TABLE `tendiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tendiks`
--

INSERT INTO `tendiks` (`id`, `title`, `name`, `fb`, `ig`, `tt`, `email`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Tata Usaha', 'Wendi', NULL, NULL, NULL, NULL, 'u3K9M9mcyFE07iIsy2NS2lTXqTM11xfX9ujHwglu.jpg', '2023-02-19 16:25:08', '2023-02-19 16:25:08'),
(2, 'Bendahara Sekolah', 'Iwan Sukendar, S.E', NULL, NULL, NULL, NULL, 'TW4ct16apAXsw4wAf09fE1fyJ3DDDP7aNQAulmqY.jpg', '2023-02-19 16:25:40', '2023-02-19 16:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `yt_link` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `name`, `title`, `slug`, `content`, `image`, `yt_link`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Bayu Suta', 'Alumni', 'bayu-suta', '<p>Anak saya yang berusia empat tahun telah belajar di PAUD School Name selama enam bulan terakhir dan saya sangat terkesan dengan perkembangan yang dia tunjukkan. Dia belajar dengan cara yang menyenangkan dan kreatif, dan guru-guru di sini benar-benar peduli dan memperhatikan setiap anak dengan baik. Saya sangat merekomendasikan PAUD School Name kepada siapa saja yang mencari pendidikan yang terbaik untuk anak mereka.</p>', 'sUM5kCpZ6kwKaZy4hVd3GJkeT2f0MSpyS2bXFpaG.jpg', 'iaS8IrPDJQQ', 1, '2023-01-25 03:03:44', '2023-04-10 02:41:34'),
(3, 'Abdullah', 'Orang Tua', 'abdullah', '<p>Saya sangat senang dengan pengalaman putri saya di PAUD School Name. Guru-guru di sini sangat peduli dan memperhatikan setiap anak dengan baik. Putri saya selalu senang dan antusias untuk pergi ke sekolah setiap hari. Saya merasa yakin bahwa keputusan untuk memilih PAUD School Name sebagai tempat pendidikan awal putri saya adalah keputusan yang tepat.</p>', 'orStt0ETHByWcMtYa0VtusBZaLk4Lnod3KeqbgRU.jpg', NULL, 1, '2023-03-26 01:46:42', '2023-03-26 03:34:13'),
(4, 'Juniar', 'Orang Tua', 'juniar', '<p>Saya sangat berterima kasih kepada PAUD School Name karena telah memberikan pengalaman pendidikan awal yang luar biasa untuk anak saya. Selain pengajaran yang berkualitas, sekolah ini juga memiliki lingkungan yang hangat dan ramah. Anak saya selalu senang pergi ke sekolah dan dia merasa nyaman dengan guru-guru dan teman-temannya. Saya sangat merekomendasikan PAUD School Name kepada semua orang yang mencari pendidikan yang berkualitas dan menyenangkan untuk anak-anak mereka.</p>', '4ngwQ6lzRFQwYSjU29gk7HKxBBoi9eIMea0UmZ3I.jpg', NULL, 1, '2023-03-26 03:36:57', '2023-03-26 03:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `typedaftars`
--

CREATE TABLE `typedaftars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `test_date` date NOT NULL,
  `info_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unggulans`
--

CREATE TABLE `unggulans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unggulans`
--

INSERT INTO `unggulans` (`id`, `title`, `slug`, `image`, `description`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Kurikulum Terintegrasi', 'kurikulum-terintegrasi', '0ILfColsF7aAOCquWQJOXFuA9MSUgFuMt1kRvpA3.jpg', '<p>Sekolah memiliki kurikulum terintegrasi yang memadukan pembelajaran akademis dengan pengembangan keterampilan sosial, emosional, dan kreativitas. Dengan pendekatan holistik, sekolah membantu anak-anak belajar secara menyeluruh dan memperoleh pengetahuan serta keterampilan yang beragam.</p>', '#', '2023-02-10 13:46:07', '2023-03-27 19:34:39'),
(2, 'Guru Berkualitas', 'guru-berkualitas', 'IWJ4qNxZm1dmSjfLii3PvD4gLL1j2ABJKQohF7PJ.png', '<p>Sekolah memiliki guru yang berkualitas dan berpengalaman dalam pendidikan anak usia dini. Mereka mampu memberikan pengajaran yang menarik dan memotivasi anak untuk belajar dengan cara yang inovatif dan menyenangkan.</p>', '#', '2023-02-10 13:53:09', '2023-03-27 19:33:58'),
(3, 'Fasilitas Lengkap', 'fasilitas-lengkap', 'iGpwnysFPfdZE9liKZ8zOQC2vshCnQw9NUmsXlq0.jpg', '<p>Sekolah memiliki fasilitas lengkap yang mendukung proses belajar mengajar. Ruang kelas yang dilengkapi dengan AC, perpustakaan, laboratorium, area bermain, dan masih banyak lagi fasilitas yang tersedia untuk mendukung kegiatan belajar mengajar.</p>', '#', '2023-03-07 22:08:49', '2023-03-27 19:35:29'),
(4, 'Lingkungan Belajar yang Aman dan Nyaman', 'lingkungan-belajar-yang-aman-dan-nyaman', 'I47wKMtRc0isDVNZAZVi1kZnOgKk33PnsKr4c8NR.png', '<p>Sekolah menyediakan lingkungan belajar yang aman dan nyaman bagi anak-anak. Lingkungan belajar yang menyenangkan dan kondusif dapat membantu anak-anak merasa nyaman dan bersemangat dalam proses belajar.</p>', '#', '2023-03-07 22:10:09', '2023-03-27 19:36:27'),
(5, 'Ekstrakurikuler Beragam', 'ekstrakurikuler-beragam', 'RbNzdMJ1T3d040tXzEB4NpZfKMFUz7Ow2bhoDYPk.jpg', 'Sekolah menyediakan program ekstrakurikuler yang beragam untuk membantu anak-anak mengembangkan minat dan bakat mereka. Program ini dapat membantu anak-anak memperoleh pengalaman belajar yang lebih luas dan mendalam.', '#', '2023-03-27 19:37:27', '2023-03-27 19:37:27'),
(6, 'Komunikasi yang Baik dengan Orang Tua', 'komunikasi-yang-baik-dengan-orang-tua', 'BttffENtNdArmxMrtuPNmiJuau7OatsqHZU9Bi0w.jpg', 'Sekolah memiliki sistem komunikasi yang baik dengan orang tua untuk memastikan perkembangan anak-anak terpantau dengan baik. Guru dan orang tua dapat bekerja sama untuk memastikan anak-anak mendapatkan dukungan dan bimbingan yang tepat dalam proses belajar.', '#', '2023-03-27 19:38:12', '2023-03-27 19:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@smapasundan3bandung.sch.id', '2023-01-24 19:33:20', '$2y$10$YVpF3almNT57XNXi2Rry7Ot4hoQLe6U46Q8mivGOZivmT5yls2p6y', NULL, NULL, NULL, NULL, NULL, '2023-01-24 19:33:20', '2023-01-24 19:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videoprofiles`
--

CREATE TABLE `videoprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `videoprofile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videoprofiles`
--

INSERT INTO `videoprofiles` (`id`, `image`, `videoprofile`, `created_at`, `updated_at`) VALUES
(1, 'WtAdMWpYpRF1hyY5cqMRH01TDxnVAGIHoJ9DANCz.png', '5nLr4aEAeDM', '2023-01-29 12:25:14', '2023-03-26 00:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `visis`
--

CREATE TABLE `visis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `visi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visis`
--

INSERT INTO `visis` (`id`, `title`, `image`, `visi`, `created_at`, `updated_at`) VALUES
(1, 'VISI', 'aKw89KfHIYQfJOSwc8ok04olNO9QkBdPU3M4kukS.jpg', '<p><strong>Menciptakan generasi muda yang cerdas, kreatif, mandiri, dan berakhlak mulia melalui pemberian pendidikan dan pembinaan yang holistik dan berbasis pada kebutuhan dan potensi anak, serta mendukung peran orang tua dan masyarakat dalam menciptakan lingkungan pembelajaran yang positif dan mendukung</strong></p>', NULL, '2023-03-25 05:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `wwds`
--

CREATE TABLE `wwds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wwds`
--

INSERT INTO `wwds` (`id`, `title`, `slug`, `category`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Membangun Hubungan dengan Pengusaha Berpengalaman', 'membangun-hubungan-dengan-pengusaha-berpengalaman', 'Mentoring dan Jaringan', '<p>HIPMI Kota Cimahi memahami bahwa pengusaha muda memerlukan dukungan dan bimbingan dari pemimpin bisnis yang berpengalaman untuk membantu mereka mengatasi tantangan dan memperluas bisnis mereka. Oleh karena itu, HIPMI Kota Cimahi menyediakan kesempatan mentoring bagi pengusaha muda untuk berinteraksi dengan pemimpin bisnis berpengalaman.</p><p>Program mentoring ini mempertemukan pengusaha muda dengan para pebisnis sukses yang berpengalaman untuk berbagi pengalaman, wawasan, dan jaringan mereka. Melalui proses mentoring, pengusaha muda dapat mempelajari bagaimana mengatasi tantangan bisnis dan memperluas bisnis mereka dengan bantuan dari pemimpin bisnis yang berpengalaman.</p><p>Para pebisnis sukses juga dapat membantu pengusaha muda membangun jaringan bisnis yang kuat dan membuka pintu untuk peluang bisnis baru. Ini membantu pengusaha muda memperluas bisnis mereka dan membangun basis klien yang kuat. Dengan bantuan dari pemimpin bisnis berpengalaman, pengusaha muda dapat mempercepat pertumbuhan bisnis mereka dan membuka jalan untuk kesuksesan jangka panjang.</p>', 'dYnkAzOJy5HqhdIeznHs7unifTExrdQzsCBsgadG.jpg', '2023-01-30 10:42:28', '2023-01-31 14:52:34'),
(2, 'Meningkatkan Keterampilan dan Pengetahuan Pengusaha', 'meningkatkan-keterampilan-dan-pengetahuan-pengusaha', 'Pembangunan Keterampilan', '<p>HIPMI Kota Cimahi memahami bahwa pengusaha muda memerlukan akses ke keterampilan dan pengetahuan yang diperlukan untuk berhasil dalam lingkungan bisnis saat ini. Oleh karena itu, HIPMI Kota Cimahi menawarkan berbagai program pelatihan dan pembangunan untuk membantu pengusaha muda membangun keterampilan dan pengetahuan mereka.</p><p>Program-program ini meliputi pelatihan bisnis, manajemen, dan pemasaran untuk membantu pengusaha muda meningkatkan keterampilan dan pengetahuan mereka. HIPMI Kota Cimahi juga menawarkan program mentoring dan coaching untuk membantu pengusaha muda mengatasi tantangan bisnis dan memperluas wawasan mereka.</p><p>Dengan mengikuti program-program ini, pengusaha muda akan memiliki keterampilan dan pengetahuan yang diperlukan untuk mengatasi tantangan bisnis dan memperluas bisnis mereka. Program-program ini juga membantu pengusaha muda memahami lingkungan bisnis saat ini dan mempersiapkan mereka untuk menghadapi masa depan.</p><p>Kegiatan ini sangat penting bagi pengusaha muda untuk membantu membangun keterampilan dan pengetahuan pengusaha muda, mempersiapkan mereka untuk menghadapi tantangan bisnis, dan membantu mereka memperluas bisnis mereka.</p>', 'wrUg9qhVuVwyUG8AbKGo36aolN8bYd0omROiNwnB.jpg', '2023-01-30 11:03:44', '2023-01-31 14:46:20'),
(3, 'Menghubungkan Pengusaha Muda dengan Peluang Pendanaan', 'menghubungkan-pengusaha-muda-dengan-peluang-pendanaan', 'Akses Pendanaan', '<p>Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi memberikan kesempatan bagi pengusaha muda untuk mengakses sumber pendanaan untuk memperluas bisnis mereka. Melalui HIPMI Kota Cimahi, pengusaha muda dapat mengakses peluang pendanaan seperti modal ventura dan investasi angel.</p><p>Modal ventura adalah bentuk pendanaan dari investor swasta atau perusahaan yang berfokus pada bisnis baru atau berkembang seperti bank dan fintech. Investasi angel adalah investasi dari individu yang memiliki modal besar dan berfokus pada bisnis awal. Kedua jenis pendanaan ini sangat penting bagi pengusaha muda yang ingin memperluas bisnis mereka dan membutuhkan sumber daya finansial yang memadai.</p><p>Melalui HIPMI Kota Cimahi, pengusaha muda dapat berinteraksi dengan investor dan mempresentasikan bisnis mereka. Ini membantu mereka untuk membangun jaringan dan meningkatkan kesempatan untuk mendapatkan pendanaan. HIPMI Kota Cimahi juga menyediakan pelatihan dan bimbingan bagi pengusaha muda untuk membantu mereka memahami proses pendanaan dan bagaimana membuat proposal bisnis yang kuat.</p>', '0p7Oyh6BUEqKIQBI0P1iFVxGMmleVNis9iKid121.jpg', '2023-01-30 11:25:15', '2023-01-31 14:14:47'),
(4, 'Beradvokasi untuk Lingkungan Bisnis yang Mendukung', 'beradvokasi-untuk-lingkungan-bisnis-yang-mendukung', 'Advokasi', '<p>HIPMI Kota Cimahi secara aktif beradvokasi untuk perubahan kebijakan dan inisiatif yang mendukung pertumbuhan dan keberhasilan pengusaha muda. Hal ini penting karena lingkungan bisnis yang kondusif sangat diperlukan untuk membantu pengusaha muda memperluas bisnis mereka dan mencapai kesuksesan.</p><p>Oleh karena itu, HIPMI Kota Cimahi berusaha menciptakan lingkungan bisnis yang kondusif bagi kegiatan usaha terutama bagi usaha yang baru tumbuh. HIPMI Kota Cimahi juga berkoordinasi dengan pemerintah dan organisasi lain untuk memastikan bahwa kebijakan dan inisiatif yang diterapkan mendukung pertumbuhan dan keberhasilan pengusaha muda terutama untuk mempermudah proses bisnis dan membuat peraturan yang kondusif bagi pengembangan bisnis.. Ini sangat penting bagi pengembangan ekonomi lokal dan membantu menciptakan kondisi yang baik bagi pengusaha muda untuk berbisnis dan memperluas bisnis mereka.</p>', 'bb6vbKeiz6gvQPRAI38NzNnq8GfRSP20h73MOSqK.jpg', '2023-01-30 11:26:06', '2023-01-31 14:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `yutubs`
--

CREATE TABLE `yutubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yutubs`
--

INSERT INTO `yutubs` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, 'OODtBpDW9rM', '2023-02-20 01:53:50', '2023-02-20 02:13:22'),
(2, 'SXf_mpsaYqI', '2023-02-20 01:56:26', '2023-02-20 01:56:26'),
(3, '3il6en-Bf4g', '2023-02-20 01:57:01', '2023-02-20 01:57:01'),
(4, 'q31TSCnE8bk', '2023-02-20 01:57:30', '2023-02-20 01:57:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumnis`
--
ALTER TABLE `alumnis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoriprestasis`
--
ALTER TABLE `categoriprestasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eskuls`
--
ALTER TABLE `eskuls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formdaftars`
--
ALTER TABLE `formdaftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambarans`
--
ALTER TABLE `gambarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identities`
--
ALTER TABLE `identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infodaftars`
--
ALTER TABLE `infodaftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investasis`
--
ALTER TABLE `investasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kalenders`
--
ALTER TABLE `kalenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_oses`
--
ALTER TABLE `kegiatan_oses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurikulums`
--
ALTER TABLE `kurikulums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legals`
--
ALTER TABLE `legals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lulusans`
--
ALTER TABLE `lulusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openingstories`
--
ALTER TABLE `openingstories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourteamcats`
--
ALTER TABLE `ourteamcats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourteamopenings`
--
ALTER TABLE `ourteamopenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourteams`
--
ALTER TABLE `ourteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembelajarans`
--
ALTER TABLE `pembelajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftarans`
--
ALTER TABLE `pendaftarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasis`
--
ALTER TABLE `prestasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prosedurs`
--
ALTER TABLE `prosedurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `renstras`
--
ALTER TABLE `renstras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutans`
--
ALTER TABLE `sambutans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seragams`
--
ALTER TABLE `seragams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebanners`
--
ALTER TABLE `sidebanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistem_informasis`
--
ALTER TABLE `sistem_informasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistem_pembelajarans`
--
ALTER TABLE `sistem_pembelajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sistem_penilaians`
--
ALTER TABLE `sistem_penilaians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `svgs`
--
ALTER TABLE `svgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanggalpentings`
--
ALTER TABLE `tanggalpentings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tendiks`
--
ALTER TABLE `tendiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typedaftars`
--
ALTER TABLE `typedaftars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unggulans`
--
ALTER TABLE `unggulans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videoprofiles`
--
ALTER TABLE `videoprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visis`
--
ALTER TABLE `visis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wwds`
--
ALTER TABLE `wwds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yutubs`
--
ALTER TABLE `yutubs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `alumnis`
--
ALTER TABLE `alumnis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categoriprestasis`
--
ALTER TABLE `categoriprestasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eskuls`
--
ALTER TABLE `eskuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `formdaftars`
--
ALTER TABLE `formdaftars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gambarans`
--
ALTER TABLE `gambarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infodaftars`
--
ALTER TABLE `infodaftars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investasis`
--
ALTER TABLE `investasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kalenders`
--
ALTER TABLE `kalenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan_oses`
--
ALTER TABLE `kegiatan_oses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kurikulums`
--
ALTER TABLE `kurikulums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `legals`
--
ALTER TABLE `legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lulusans`
--
ALTER TABLE `lulusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `openingstories`
--
ALTER TABLE `openingstories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ourteamcats`
--
ALTER TABLE `ourteamcats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ourteamopenings`
--
ALTER TABLE `ourteamopenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ourteams`
--
ALTER TABLE `ourteams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelajarans`
--
ALTER TABLE `pembelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftarans`
--
ALTER TABLE `pendaftarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `prestasis`
--
ALTER TABLE `prestasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prosedurs`
--
ALTER TABLE `prosedurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `renstras`
--
ALTER TABLE `renstras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sambutans`
--
ALTER TABLE `sambutans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seragams`
--
ALTER TABLE `seragams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sidebanners`
--
ALTER TABLE `sidebanners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sistem_informasis`
--
ALTER TABLE `sistem_informasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sistem_pembelajarans`
--
ALTER TABLE `sistem_pembelajarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sistem_penilaians`
--
ALTER TABLE `sistem_penilaians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `svgs`
--
ALTER TABLE `svgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tanggalpentings`
--
ALTER TABLE `tanggalpentings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tendiks`
--
ALTER TABLE `tendiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `typedaftars`
--
ALTER TABLE `typedaftars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unggulans`
--
ALTER TABLE `unggulans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videoprofiles`
--
ALTER TABLE `videoprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visis`
--
ALTER TABLE `visis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wwds`
--
ALTER TABLE `wwds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `yutubs`
--
ALTER TABLE `yutubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
