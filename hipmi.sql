-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 05:35 AM
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
-- Database: `hipmi`
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
(1, 'Hipmi<br> Kota Cimahi', 'Welcome to', '<p><strong>Bangkit, Maju dan Berkibar!</strong></p><p>HIPMI Cimahi adalah ruang aspirasi dan kolaborasi untuk para pengusaha muda di Cimahi. Bersinergi bersama untuk meningkatkan kapasitas dan kemampuan para angota dalam mengembangkan bisnisnya, serta menjadi mitra professional pemerintah dan sahabat bagi masyarakat umum khususnya kota Cimahi.</p>', '<p>HIPMI (Himpunan Pengusaha Muda INDONESIA ) adalah organisasi independent non partisan para pengusaha muda yang bergerak dibidang perekonomian. HIPMI memiliki moto Pengusaha pejuang – pejuang pengusaha yang bermakna bahwa kader – kader HIPMI tidak hanya menjadi pengusaha nasional yag tangguh tetapi juga menjadi pengusaha yang berwawasan kebangsaan dan memiliki kepedulian terhadap tututan nurani rakyat. Berlatar belakang itulah HIPMI CIMAHI periode ke 3 hadir sebagai mitra Kota dan masyarakat Cimahi, berlandasakan BANGKIT,MAJU,BERKIBAR , HIPMI cimahi berusaha menjadi professional bermitra dengan pemerintah dan menjadi sahabat bagi masyarakat umum khususnya kota Cimahi. HIPMI cimahi periode 3 berusaha menjawab tantangan kedepan dengan kolaborasi dan meningkatakan keberdayaan internal dari skill para anggota HIPMI cimahi. Kota cimahi yang terdiri dari 3 kecamatan tidak dilihat dari segi kecil daerahnya tetapi potensi yang ada didalamnya, untuk itulah HIPMI cimahi selalu dan akan memberikan yang terbaik untuk kota cimahi agar lebih baik lagi.&nbsp;</p><p>Mari BANGKIT,MAJU dan BERKIBAR bersama HIPMI cimahi.</p>', 'cz0cgAIm3q25bNWnAkn1Tv7iGFxlDI3FzkBUAUC0.jpg', '2023-01-24 19:35:10', '2023-05-03 18:40:26');

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
(3, 'Halal bi Halal BPC HIPMI Kota Cimahi', 'halal-bi-halal-bpc-hipmi-kota-cimahi', '2023-05-10', '2023-05-10', '15:00:00', '18:00:00', '<p>HIPMI Cimahi mengadakan Halal Bi Halal dengan tujuan merekatkan kembali tali silaturahmi, mengenal lebih dekat sesama anggota dan menjadikan ruang interaksi yang tumbuh. Adapun rangkaian acara yang disajikan diantaranya adalah :</p><p>Perform musik,</p><p>Presentasi bisnis dan kerjasama bisnis, dan</p><p>Talkshow serta business matching.</p><p>Dengan dibuatnya rangkaian acara Halal Bi Halal ini, semoga kedepannya seluruh elemen yang terkait dan terikat dalam ikatan Himpunan Pengusaha Muda Indonesia (HIPMI) mampu terus berjalan dengan baik dengan emoional yang baik kedepannya.</p>', 'Zest Hotel, Jl. Sukajadi No.16, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162', '#', 'YF131thceHVwLZ27OTMz99Uj3CmfQao2eRPQeXqT.jpg', 1, '2023-05-03 19:32:28', '2023-05-03 19:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `name`, `slug`, `image`, `description`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan keterampilan manajemen dan soft skill bagi para pemilik usaha', 'pelatihan-keterampilan-manajemen-dan-soft-skill-bagi-para-pemilik-usaha', '6wuowPjnz2shcDQaGoNvfYH4En9oWH5VjpNG4eJa.png', '<p>HIPMI menyediakan berbagai pelatihan dan workshop untuk membantu anggotanya dalam mengembangkan keterampilan manajemen dan <i>soft skill</i> yang dibutuhkan dalam mengelola bisnis mereka.&nbsp;</p>', '<p>HIPMI menyediakan berbagai pelatihan dan workshop untuk membantu anggotanya dalam mengembangkan keterampilan manajemen dan soft skill yang dibutuhkan dalam mengelola bisnis mereka. Pelatihan ini mencakup berbagai topik, seperti manajemen keuangan, manajemen sumber daya manusia, pemasaran dan branding, dan pengembangan produk. HIPMI Kota Cimahi juga menawarkan pelatihan khusus dalam keterampilan <i>soft skill</i>, seperti komunikasi, kepemimpinan, dan kerjasama tim, yang penting dalam membangun hubungan bisnis yang kuat dan efektif.</p><p>Pelatihan dan workshop yang disediakan oleh HIPMI dapat membantu anggota dalam mengembangkan kemampuan mereka dan memberikan wawasan baru dalam mengelola bisnis mereka. Pelatihan ini juga memberikan kesempatan untuk berinteraksi dengan pengusaha lain dan mendapatkan masukan dan saran dari orang yang berpengalaman.Pelatihan ini sangatlah penting bagi anggotanya dalam membangun bisnis yang sukses dan berkelanjutan. Dukungan dan sumber daya yang diberikan oleh HIPMI dapat membantu meningkatkan efektivitas pengelolaan bisnis dan mempercepat pertumbuhan bisnis anggotanya.</p>', NULL, '2023-05-03 19:40:28'),
(2, 'Akses modal pada bank dan lembaga keuangan mitra HIPMI Kota Cimahi', 'akses-modal-pada-bank-dan-lembaga-keuangan-mitra-hipmi-kota-cimahi', 'aXaIJ4hZx3bAxJJCfZLgfOUsfFq55BeT4YDvsEfi.png', '<p>Anggota dapat memperoleh dukungan dan bantuan dalam mengajukan pinjaman atau mendapatkan pembiayaan dari bank dan lembaga keuangan yang bekerjasama dengan organisasi HIPMI Kota Cimahi.&nbsp;</p>', '<p>HIPMI memiliki jaringan mitra yang luas dengan bank dan lembaga keuangan yang dapat membantu anggotanya dalam mengakses pembiayaan dan modal usaha.</p><p>Sebagai anggota HIPMI Kota Cimahi, anggota dapat memperoleh dukungan dan bantuan dalam mengajukan pinjaman atau mendapatkan pembiayaan dari bank dan lembaga keuangan yang terhubung dengan organisasi. Dalam banyak kasus, mitra keuangan ini menawarkan layanan khusus untuk anggota HIPMI, termasuk suku bunga yang lebih rendah, persyaratan pengajuan yang lebih mudah, dan bantuan dalam mengembangkan proposal bisnis.</p><p>Dengan akses modal yang lebih mudah, anggota HIPMI Kota Cimahi dapat memperoleh dana yang dibutuhkan untuk mengembangkan bisnis mereka lebih cepat dan lebih efektif. Hal ini dapat membantu dalam meningkatkan skala bisnis dan juga membuka pintu bagi peluang bisnis baru dan kemitraan yang menguntungkan di masa depan. Dukungan dan sumber daya yang diberikan oleh mitra keuangan HIPMI dapat membantu mengurangi risiko bisnis dan meningkatkan kesuksesan bisnis dalam jangka panjang.</p>', '2023-02-03 13:30:47', '2023-05-03 19:39:43'),
(3, 'Akses pemasaran produk / jasa', 'akses-pemasaran-produk-jasa', '2HuJ1ps8Zq3mC85yDCPP2rCR4IzGqCF5IzpQ3xb5.png', '<p>HIPMI Kota Cimahi menawarkan berbagai layanan pemasaran untuk anggotanya, termasuk promosi online dan offline, kemitraan dengan platform e-commerce dan digital, serta dukungan branding dan penjualan.&nbsp;</p>', '<p>HIPMI memiliki jaringan pemasaran yang luas dan berkualitas tinggi. Anggota HIPMI Kota Cimahi dapat memanfaatkan jaringan pemasaran ini untuk mempromosikan produk atau jasa mereka kepada khalayak yang lebih luas.</p><p>HIPMI Kota Cimahi menawarkan berbagai layanan pemasaran untuk anggotanya, termasuk promosi online dan offline, kemitraan dengan platform e-commerce dan digital, serta dukungan branding dan penjualan. Dalam beberapa kasus, HIPMI juga dapat membantu anggota dalam mengorganisir acara pemasaran, yang memberikan kesempatan untuk menampilkan produk atau jasa mereka kepada khalayak yang lebih luas.</p><p>Dengan akses pemasaran produk yang diberikan oleh HIPMI Kota Cimahi, anggota dapat meningkatkan visibilitas dan daya tarik produk mereka di pasar. Hal ini dapat membantu dalam meningkatkan penjualan dan juga membuka pintu bagi peluang bisnis baru dan kemitraan di masa depan. Dengan dukungan dan sumber daya dari HIPMI, anggota dapat memperluas jangkauan pemasaran mereka dan memperoleh keuntungan yang lebih besar dalam mengembangkan bisnis mereka.</p>', '2023-02-03 13:37:22', '2023-05-03 19:39:01'),
(4, 'Akses berjejaring dengan 30.000 anggota aktif HIPMI di seluruh Indonesia', 'akses-berjejaring-dengan-30000-anggota-aktif-hipmi-di-seluruh-indonesia', 'qYUTiNSvMutpvW3hFPOm9J0Yrs1tKZkyk8MGhAKw.png', '<p>HIPMI memberikan dukungan dan layanan bagi anggotanya dalam hal pemasaran, penyelesaian masalah bisnis, dan pengembangan bisnis.</p>', '<p>Sebagai organisasi yang beranggotakan pengusaha muda di Indonesia, HIPMI memiliki jaringan yang luas dan aktif di seluruh Indonesia. Bergabung dengan HIPMI Kota Cimahi memungkinkan anggota untuk terhubung dengan anggota lain dari seluruh Indonesia, yang dapat membantu meningkatkan jaringan bisnis mereka.</p><p>Dengan akses ke jaringan HIPMI yang besar, anggota dapat memperoleh informasi tentang tren industri terbaru, peluang bisnis baru, dan bahkan mitra bisnis potensial. Anggota HIPMI dapat terhubung melalui berbagai acara, seminar, dan konferensi yang diadakan oleh organisasi, yang menyediakan kesempatan untuk bertemu dengan anggota lain dan memperluas jaringan bisnis mereka.</p><p>Selain itu, akses ke jaringan HIPMI juga dapat memberikan manfaat dalam hal memperoleh dukungan dan bantuan dari anggota lain. Dalam banyak kasus, anggota HIPMI dapat saling membantu dan memberikan dukungan untuk mengatasi masalah yang dihadapi dalam menjalankan bisnis mereka.</p><p>Dengan akses berjejaring yang luas ini, bergabung dengan HIPMI Kota Cimahi dapat memberikan keuntungan yang signifikan bagi anggota dalam mengembangkan bisnis mereka. Hal ini juga dapat membantu meningkatkan visibilitas dan reputasi bisnis mereka di tingkat nasional, yang dapat membantu membuka pintu bagi peluang bisnis baru dan kemitraan yang menguntungkan di masa depan.</p>', '2023-02-03 13:46:54', '2023-05-03 19:38:20'),
(5, 'Bantuan Konsultasi dan Pembinaan Usaha', 'bantuan-konsultasi-dan-pembinaan-usaha', 'tmTTL4DkxLrUxrIYE43PlCFthdIq32VgZziJOwNa.png', '<p>HIPMI menyediakan sumber daya dan dukungan bagi anggotanya dalam konsultasi, pelatihan, dan teknologi untuk membantu mereka dalam memajukan bisnis mereka.</p>', '<p>HIPMI Kota Cimahi menyediakan sumber daya dan dukungan bagi anggotanya dalam berbagai aspek bisnis, termasuk manajemen, pemasaran, dan pengembangan produk. Anggota dapat memanfaatkan layanan konsultasi untuk memperoleh nasihat dan saran dari para ahli di bidang mereka.</p><p>Selain itu, HIPMI Kota Cimahi juga menyediakan pelatihan dan seminar yang membantu anggota dalam meningkatkan keterampilan bisnis mereka. Ini mencakup pelatihan manajemen, keuangan, dan pemasaran yang membantu anggota dalam mengelola bisnis mereka secara efektif. Dalam banyak kasus, pelatihan dan seminar yang diselenggarakan oleh HIPMI Kota Cimahi dilakukan oleh praktisi dan ahli industri yang berpengalaman, sehingga memberikan manfaat yang lebih besar bagi anggota.</p><p>Dalam hal pembinaan usaha, HIPMI Kota Cimahi juga menyediakan bantuan dalam mengembangkan bisnis anggota. Ini dapat mencakup memberikan akses ke jaringan dan sumber daya untuk memperluas bisnis, membantu dalam pengembangan produk atau jasa, dan memberikan nasihat tentang cara mengelola bisnis dengan efektif.</p><p>Secara keseluruhan, bantuan konsultasi dan pembinaan usaha yang disediakan oleh HIPMI Kota Cimahi dapat membantu anggota dalam mengembangkan dan mengelola bisnis mereka dengan lebih efektif. Ini dapat membantu meningkatkan kesuksesan bisnis dan memberikan manfaat jangka panjang bagi anggota.</p>', '2023-02-03 13:47:46', '2023-05-03 19:37:06');

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
(2, 'Artikel', 'artikel', 'bxmRxE6iwYS7HcnrZecz0PKyc4U3BqXaTxHaBlAu.jpg', '2023-03-05 06:55:33', '2023-03-05 06:55:33');

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

-- --------------------------------------------------------

--
-- Table structure for table `catmembers`
--

CREATE TABLE `catmembers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catmembers`
--

INSERT INTO `catmembers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Calon Anggota', NULL, NULL),
(2, 'Anggota', NULL, NULL);

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
-- Table structure for table `desas`
--

CREATE TABLE `desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desas`
--

INSERT INTO `desas` (`id`, `name`, `kecamatan_id`, `created_at`, `updated_at`) VALUES
(1, 'Cibeber', 3, '2023-02-04 21:49:51', '2023-02-04 21:49:51'),
(2, 'Cibeureum', 3, '2023-02-04 21:51:00', '2023-02-04 21:51:00'),
(3, 'Leuwigajah', 3, '2023-02-04 22:00:05', '2023-02-04 22:00:05'),
(4, 'Melong', 3, '2023-02-04 22:00:41', '2023-02-04 22:00:41'),
(5, 'Utama', 3, '2023-02-07 16:04:29', '2023-02-07 16:04:29'),
(6, 'Baros', 2, NULL, NULL),
(7, 'Cigugur Tengah', 2, NULL, NULL),
(8, 'Cimahi', 2, NULL, NULL),
(9, 'Karangmekar', 2, NULL, NULL),
(10, 'Padasuka', 2, NULL, NULL),
(11, 'Setiamanah', 2, NULL, NULL),
(12, 'Cibabat', 1, NULL, NULL),
(13, 'Cipageran', 1, NULL, NULL),
(14, 'Citereup', 1, NULL, NULL),
(15, 'Pasirkaliki', 1, NULL, NULL);

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
-- Table structure for table `formdaftars`
--

CREATE TABLE `formdaftars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tanda_pengenal` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `alamat_perusahaan` text DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kecamatan_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `desa_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `phone_perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formdaftars`
--

INSERT INTO `formdaftars` (`id`, `name`, `id_number`, `birth_place`, `birth_date`, `description`, `tanda_pengenal`, `phone`, `email`, `address`, `alamat_perusahaan`, `category`, `provinsi`, `kota`, `kecamatan_id`, `image`, `desa_id`, `created_at`, `updated_at`, `nama_perusahaan`, `phone_perusahaan`) VALUES
(1, 'bebas', '2132131231231', 'Bandung', '2023-02-20', '<p>dsfasdasdasd</p>', 'KTP', '12312312312312', '', '<p>Jl. Cipedes Selatan No. 85, Sukajadi</p>', NULL, '', 'Jawa Barat', 'Cimahi', 'Cimahi Utara', 'vWeI9k2K3Lr9zzfl03WHRt2H99rajflh7mojsn57.jpg', 1, '2023-01-25 20:23:10', '2023-01-25 21:04:05', '', ''),
(2, 'Manuel Neuer', '9876541212', 'cimahi', '2023-01-02', 'sdadasdasdasd', 'KTP', '1223131231', '', 'astana anyar gang kelinci', NULL, '', 'Jawa Barat', 'Cimahi', 'Cimahi Utara', 'SXrunSrPbKXChdcMcwVBEJCiQONXZvECDpGLrjBW.png', 1, '2023-01-26 03:26:09', '2023-01-26 03:26:09', '', ''),
(3, 'Muhammad Gazi Abdullah', '3205061301860001', 'Bandung', '2023-01-27', '<p>sdasdasdasd</p>', 'Pilih Tanda Pengenal', '0811111124', '', '<p>Jl. Cipedes Selatan No. 85, Sukajadi</p>', NULL, '', 'Jawa Barat', 'Cimahi', 'Cimahi Utara', '5sWfhyda42XXDbmO16WER7JGYSrqWGSiWcyvrMt0.jpg', 12, '2023-01-26 10:40:49', '2023-02-04 03:58:14', '', ''),
(4, 'HIPMI Kota Cimahi', '9876541212', 'Jakarta', '2023-02-08', 'ini adalah deskripsi', 'KTP', '123123', 'info@dncherbal.com', 'asdasdasd', 'sdfsdf', 'asdads', NULL, NULL, '2', 'bNwzalpXBbK8t6kC4AnKwBtoUy68EwtTp6jv75HE.jpg', 14, '2023-02-07 20:48:46', '2023-02-07 20:48:46', 'DnC Herbal', '123123'),
(5, 'Agnia Fauziah', '12232334534', 'Bandung', '2005-02-08', NULL, 'KTP', '+6281317806086', 'pesan@cimahicraft.com', 'Jl. Kebon Kopi Kp. Leuweung Gede No.381, Cimbeureum, Cimahi', 'Jl. Raya Cibabat No. 60', 'Kerajinan', NULL, NULL, '2', 'xgFgdSFdlbwrHSvbRG8oqw8rrbZ2FBgGulOX3oqQ.jpg', 12, '2023-02-07 21:38:25', '2023-02-07 21:38:25', 'CV. Cimahi Craft', '089999999');

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
(1, 'Sambutan', 'STy1IFxM61Evyf4uIcq6NI2JHXL2sPhftwoLc69B.jpg', '2023-02-03 09:58:32', '2023-02-03 03:09:09'),
(2, 'Tentang Kami', 'oFIeiEpyCxCgR6ywgKHo1dgVOqeoJswhaRaqeGY9.jpg', '2023-02-03 09:58:57', '2023-02-03 03:38:41'),
(3, 'Program Kami', 'yThz2r3S5Br80HG9FqtZKNVBxYSbd08SBeM9gURz.jpg', '2023-02-03 09:59:27', '2023-02-03 03:42:08'),
(4, 'Tim Kami', 'gUEgqQDDQwh49I3O6HNIj9EoDUv2BWYFU57AfwER.jpg', '2023-02-03 09:59:53', '2023-02-03 03:42:36'),
(5, 'Partnership & Support', 'KwjLwhKOYOfsnRfJhFCQF8RsdPMhoDxv1I9S3vC3.jpg', '2023-02-03 09:59:53', '2023-02-03 03:43:08'),
(6, 'Manfaat Anggota', '5xmbAXMzEUCV96pbU7ssrcf0L6XC84IBlEIGaFFL.jpg', '2023-02-03 11:55:59', '2023-02-03 11:35:43'),
(7, 'Kisah Sukses', 'qyyAO792fkIgZ7aYYAJQVhexH69vJfj06Wxt6fgW.jpg', '2023-02-03 11:55:59', '2023-02-03 11:36:00'),
(8, 'Data Anggota', 'IMPCmUfDx1l4w84ofGBeg7MLD3Xpo2pbGkQ3ReQ6.jpg', '2023-02-03 18:18:13', '2023-02-03 11:55:55'),
(9, 'Pendaftaran Anggota Baru', 'FF1stGAuVAbKCAa9ZioLAOs4KV6ApWOM1eU4ZxEK.jpg', '2023-02-03 18:18:13', '2023-02-03 11:56:16'),
(10, 'Berita & Artikel', 'oen0pY12jkobCBAdRnrF12tmJ5fcexCHT6WAbUVY.jpg', '2023-02-03 18:29:11', '2023-02-03 11:57:56'),
(11, 'Kegiatan', 'pEXQWAEjo9XpkqwcXxCFyVWIjwqkLvS05iCx1937.jpg', '2023-02-03 18:29:46', '2023-02-03 12:00:51'),
(12, 'Hubungi Kami', 'N6O7joQCKLxE2W0bXamDTeiftiAogg1lwQv9UqjI.jpg', '2023-02-03 18:29:46', '2023-02-03 12:01:42'),
(13, 'Ucapan Selamat', 'fSAWDBSeQTswnj6uvfamT4bV4A9bTrzSRMobMeKz.jpg', NULL, '2023-04-30 19:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `identities` (`id`, `name`, `description`, `address`, `gmap`, `phone`, `email`, `fb`, `ig`, `tt`, `yt`, `image`, `created_at`, `updated_at`) VALUES
(1, 'HIPMI Kota Cimahi', '<p>Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi adalah sebuah organisasi yang didedikasikan untuk membantu pengusaha muda dan mempromosikan bisnis mereka di Kota Cimahi. HIPMI Kota Cimahi berfokus pada pengembangan keterampilan bisnis, peningkatan jaringan, dan peningkatan kesadaran bisnis. Organisasi ini menyediakan pelatihan, workshop, sesi networking, dan berbagai fasilitas lainnya untuk membantu anggotanya mencapai kesuksesan bisnis. HIPMI Kota Cimahi merupakan bagian dari jaringan HIPMI nasional yang tersebar di seluruh Indonesia.</p>', '<p>Jl. Melong Raya No.1, Kec. Cimahi Selatan, Kota Cimahi, Jawa Barat 40213</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.7565498434546!2d107.56004351477291!3d-6.919680995000258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e5faab7f2759%3A0x2309ab3316775d9!2sgBox%20Kuliner!5e0!3m2!1sid!2sid!4v1675478491364!5m2!1sid!2sid\" width=\"100%\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '0811-1111-2549', 'info@hipmicimahi.com', 'hipmicimahi', 'hipmicimahi', '@hipmicimahi', '@hipmicimahi', 'bi8d7s4MdPJXYhW7LTpzUgNvvBUbCQMoLZb4I4LQ.png', '2023-02-04 02:39:05', '2023-02-04 00:11:18');

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
-- Table structure for table `kabupatens`
--

CREATE TABLE `kabupatens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortname` varchar(255) NOT NULL,
  `phonecode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupatens`
--

INSERT INTO `kabupatens` (`id`, `name`, `sortname`, `phonecode`, `created_at`, `updated_at`) VALUES
(77, 'Kota Cimahi', 'cmh', '022', '2023-02-04 15:36:58', '2023-02-04 15:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `kabupaten_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `name`, `kabupaten_id`, `created_at`, `updated_at`) VALUES
(1, 'Cimahi Tengah', 77, '2023-02-04 15:39:15', '2023-02-04 15:39:15'),
(2, 'Cimahi Utara', 77, '2023-02-04 15:41:38', '2023-02-04 15:41:38'),
(3, 'Cimahi Selatan', 77, '2023-02-04 15:42:42', '2023-02-04 15:42:42');

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
(72, '2023_04_21_144058_create_catmembers_table', 15),
(73, '2023_04_30_094109_create_ucapans_table', 16);

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
(1, 'rf6gkqeISS8XiEEOtRwNxIS6DdohQX3nHifBYsKQ.jpg', 'Misi', '<p><strong>Fase Kebangkitan:</strong></p><p>Menyehatkan ekonomi pengurus dan anggota HIPMI Cimahi sehingga memberikan efek bagi perekonomian kota</p><p><strong>Fase Maju:</strong></p><p>Mensejahterakan ekonomi pengurus dan anggota HIPMI Cimahi sehingga memberikan efek bagi perekonomian kota</p><p><strong>Fase Berkibar:</strong></p><p>Menguatkan ekonomi pengurus dan anggota HIPMI Cimahi sehingga memberikan efek bagi perekonomian kota</p>', NULL, '2023-05-04 16:48:18');

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
(1, 'Apa yang Kami Lakukan', 'apa-yang-kami-lakukan', '<p>Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi dibentuk dengan tujuan untuk membantu pengusaha muda membangun bisnis mereka dengan sukses. Melalui berbagai program dan inisiatif, HIPMI Kota Cimahi memfokuskan diri pada peningkatan keterampilan dan pengetahuan, membangun hubungan mentoring dan jaringan, menyediakan akses ke peluang pendanaan, dan beradvokasi untuk lingkungan bisnis yang mendukung. Dengan memberikan akses ke sumber daya dan dukungan yang dibutuhkan, HIPMI Kota Cimahi berkomitmen untuk membantu pengusaha muda mencapai kesuksesan dan memimpin masa depan bisnis Indonesia.</p>', '3UXHi3xE9ooHU11fbLjsDg6dBr84NxDEJfFvDlda.jpg', NULL, '2023-05-03 18:46:19');

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
(1, 'Kisah Sukses Para Pengusaha Muda Kota Cimahi', '<p>HIPMI Kota Cimahi selalu membantu para pengusaha muda untuk mencapai kesuksesan. Tak hanya memberikan dukungan finansial dan mentorship, HIPMI juga mengabadikan kisah-kisah sukses para anggotanya. Dari para pengusaha muda ini, kita dapat belajar banyak tentang tekad, inovasi, dan kemampuan untuk bangkit dari kegagalan.</p>', 'KUhqzbDVEb4', 'taEZtfoR25WOlJNQ3G4BrzZWcyjeuqGXPuWNHJez.jpg', '2023-01-31 00:20:11', '2023-05-03 19:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `ourteams`
--

CREATE TABLE `ourteams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_cat` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `tanda_pengenal` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_category` varchar(255) DEFAULT NULL,
  `company_desc` text DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ourteams`
--

INSERT INTO `ourteams` (`id`, `member_cat`, `title`, `name`, `slug`, `tanda_pengenal`, `id_number`, `birth_place`, `birth_date`, `phone`, `address`, `fb`, `ig`, `tt`, `email`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`, `company_name`, `company_category`, `company_desc`, `company_email`, `company_phone`, `company_address`) VALUES
(41, 'Anggota', 'Ketua Apa', 'Endar Suhendar', 'endar-suhendar', 'SIM', '3205061301860001', 'Ciamis', '2023-05-06', '085222287942', '<p>Jalan Cipedes Selatan No. 85, Sukajadi, Kota Bandung</p>', 'endarphysics', 'endarphysics', '2034', 'endarphysics@gmail.com', '2GCAvz0YzHAqHY0pmZ5OI9uT8x9Tf2NxVLrEIyg8.jpg', 'LJSvA44QOlJyeYHEJadq6d0JQqM2RTo7hoarsijQ.jpg', '6OakI02NmXpvi8qlkRPXy3Yp6tZBUf94Ow3hE53Y.png', 'W0KHdW7hHNxHRBpbpzjQT9r00uXjTtgaL3XkZbIu.jpg', '2023-05-05 18:59:42', '2023-05-07 17:00:57', 'PT. Hexagon Karyatama Indonesia', 'Digital Art, IT, Digital Branding & Marketing', '<p>PT Hexagon Solution Indonesia adalah perusahaan teknologi informasi dan layanan konsultasi yang berbasis di Cimahi, Indonesia. Mereka didirikan dengan tujuan untuk membantu perusahaan di Indonesia dan Asia Tenggara dalam mengoptimalkan operasi mereka melalui solusi teknologi informasi dan layanan konsultasi yang inovatif dan terpercaya.</p><p>Perusahaan ini menawarkan berbagai solusi teknologi informasi, termasuk solusi aplikasi enterprise, solusi keamanan digital, solusi konsultasi bisnis, solusi integrasi aplikasi, dan solusi transformasi digital. Solusi-solusi ini dirancang untuk memenuhi berbagai kebutuhan bisnis dan operasi perusahaan, termasuk manajemen rantai pasokan, manajemen dokumen, manajemen proyek, manajemen sumber daya manusia, manajemen identitas dan akses, manajemen risiko dan kepatuhan, serta keamanan siber.</p><p>PT Hexagon Solution Indonesia memiliki pengalaman yang luas dalam menyediakan solusi teknologi informasi dan layanan konsultasi untuk perusahaan di Indonesia dan Asia Tenggara. Mereka telah bekerja dengan klien di berbagai sektor industri, termasuk keuangan, telekomunikasi, manufaktur, dan layanan publik. Selain itu, perusahaan ini juga menjalin kemitraan dengan perusahaan teknologi global seperti Oracle, IBM, dan Microsoft.</p><p>PT Hexagon Solution Indonesia telah menerima penghargaan bergengsi, termasuk \"The Best IT Consulting Company\" dalam Indonesia Business Award pada tahun 2020 dan \"The Best Digital Solution Provider\" pada Indonesia ICT Awards 2021. Dengan pengalaman, keahlian, dan reputasi yang baik, PT Hexagon Solution Indonesia diakui sebagai salah satu perusahaan teknologi informasi dan layanan konsultasi terbaik di Indonesia dan Asia Tenggara.</p>', 'contact@hexagon.co.id', '0812-2218-1823', '<p>Jl. Abdul Halim No.128, RT.01/RW.03, Cigugur Tengah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40522</p>'),
(46, 'Calon Anggota', NULL, 'Dini Anumerta', 'dini-anumerta', 'KTP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sItqS3IhXm1vmwgdmhv6B8ntP0paarUuz10GB2jx.jpg', '0eW34gTm3dLUwMuYoA64ArICQH8gUmTofmLG3uVD.png', NULL, NULL, '2023-05-07 16:49:29', '2023-05-07 16:59:58', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Calon Anggota', 'Ketua Biro', 'Ahmad Sanusi', 'ahmad-sanusi', 'KTP', '3267997653', 'Garut', '2023-05-11', '085222287942', 'alamat perusahaan', '12', '34', '56', 'endarphysics@gmail.com', 'dB3mKzdGJ7jp7ImXtZ72hgfyf4J4Mc2fexhfChCw.jpg', 'CoDHBRamKEyDsufvpx3lPHP1z9DjNy1ORy4VUzNS.jpg', 'KQSHTW49e3FmZBKHyOvN65SDjzvXRDWHnVEzVl2P.png', 'qFFCdORiz7pCnpzvy3b46nNDpZDH465YegM0HmXK.jpg', '2023-05-07 16:59:36', '2023-05-07 16:59:36', 'PT. Salaam Aamanna Indonesia', 'PT. Salaam Aamanna Indonesia', 'asdasd', 'pesan@salaam.co.id', 'asdsd', 'asdasd');

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
(2, 'POLRES CIMAHI', '', '<p>#</p>', '<p>HIPMI Cimahi dan Polres Cimahi menjalin kerjasama dengan program Cimahi Berenergi dalam upaya menuntaskan masalah stunting dan memenuhi kebutuhan gizi bagi ibu dan anak di wilayah Cimahi. Dalam kerjasama ini, HIPMI Cimahi dan Polres Cimahi akan bekerja sama dengan berbagai bidang yang terkait untuk mencapai tujuan tersebut.</p><p>Melalui kerjasama ini, diharapkan dapat meningkatkan kualitas hidup dan kesejahteraan masyarakat di wilayah Cimahi, khususnya dalam hal kesehatan dan gizi serta pengembangan ekonomi lokal. HIPMI Cimahi dan Polres Cimahi berharap bahwa kerjasama ini dapat memberikan manfaat yang besar bagi masyarakat dan menjadi contoh bagi kerjasama serupa di wilayah lain untuk mengatasi masalah kesehatan dan gizi serta membangun ekonomi lokal yang lebih baik.</p>', 'https://cimahi.jabar.polri.go.id/', 'aYBmG0U1L9wazI6UZoh4GeAUEkJvsBq9TEJFSTM7.png', '2023-01-30 12:47:31', '2023-05-03 19:12:35'),
(3, 'daridesa.com', '', '<p>#</p>', '<p>HIPMI Kota Cimahi dan daridesa.com bekerja sama untuk menjadi partner media online resmi untuk Bidang 7 BPC HIPMI Kota Cimahi. Dalam kerjasama ini, daridesa.com akan membantu mempublikasikan kegiatan Bidang 7 BPC HIPMI Kota Cimahi melalui kanal media online seperti website, media sosial, dan email newsletter. Kerjasama ini bertujuan untuk meningkatkan visibilitas dan eksposur kegiatan Bidang 7 BPC HIPMI Kota Cimahi di kalangan masyarakat luas dan pelaku bisnis lokal.</p><p>HIPMI Kota Cimahi dan daridesa.com juga akan bekerja sama dalam mengembangkan konten yang relevan dan bermanfaat bagi pembaca dan pelaku bisnis lokal di wilayah Cimahi. HIPMI Kota Cimahi akan memberikan informasi dan materi yang relevan mengenai kegiatan dan program yang dilakukan oleh Bidang 7 BPC, sementara daridesa.com akan membantu mengemas dan mempublikasikannya dalam bentuk konten yang menarik dan mudah dipahami. Dengan kerjasama ini, diharapkan kegiatan dan program Bidang 7 BPC HIPMI Kota Cimahi dapat lebih dikenal dan diapresiasi oleh masyarakat dan pelaku bisnis lokal, serta memperluas jaringan dan keterlibatan HIPMI Kota Cimahi dengan pelaku bisnis dan masyarakat di wilayah Cimahi melalui media online.</p>', 'daridesa.com', 'zpkkamMKCzrLmDD1lcaJpn5kgBolu5AOE9EFWfCB.png', '2023-01-30 14:46:00', '2023-05-03 19:08:49'),
(4, 'TV Harmoni', '', '<p>#</p>', '<p>HIPMI Kota Cimahi dan TV Harmoni telah menjalin kerjasama dalam rangka mengembangkan pojok kreatif untuk menyerap segala bakat dan potensi generasi muda Kota Cimahi dalam memaksimalkan ekonomi kreatif. Melalui kerjasama ini, kedua belah pihak akan bekerja sama untuk menciptakan program-program yang dapat meningkatkan keterlibatan dan partisipasi generasi muda dalam dunia kreatif dan ekonomi kreatif.</p><p>Dalam kerjasama ini, HIPMI Kota Cimahi akan memberikan dukungan dalam hal mengidentifikasi bakat dan potensi generasi muda Kota Cimahi dalam dunia kreatif. Sementara itu, TV Harmoni akan memberikan dukungan dalam hal pengembangan program-program yang dapat meningkatkan partisipasi generasi muda dalam ekonomi kreatif, serta memberikan ruang dan waktu siaran bagi program-program yang dihasilkan melalui pojok kreatif yang dikembangkan bersama. Dengan demikian, kerjasama ini diharapkan dapat memicu pertumbuhan ekonomi kreatif di Kota Cimahi melalui pemberdayaan generasi muda yang memiliki potensi dan bakat di bidang kreatif.</p>', '#', 'v5Ys7FgqMkT0ZbSxOfJNtHtwt2rThD346Li88ryz.png', '2023-01-30 14:52:07', '2023-05-03 19:07:16'),
(5, 'BJB Cabang Cimahi', '', '<p>#</p>', '<p>Dalam hal pengembangan digitalisasi UMKM, HIPMI Cimahi dan BJB Cabang Cimahi akan memberikan pelatihan dan bimbingan kepada para pelaku usaha di Puri Cipageran Indah 1 tentang penggunaan teknologi digital untuk meningkatkan efisiensi dan daya saing bisnis mereka. Selain itu, mereka juga akan memberikan dukungan untuk pengembangan platform digital untuk memudahkan transaksi bisnis dan promosi produk UMKM di wilayah tersebut.</p><p>Dengan kerjasama ini, diharapkan para pelaku usaha dan masyarakat di Puri Cipageran Indah 1 dapat meningkatkan kualitas hidup mereka dan menjadi lebih mandiri dalam pengelolaan bisnis dan ekonomi. HIPMI Cimahi dan BJB Cabang Cimahi berharap bahwa kerjasama ini dapat memberikan manfaat yang besar bagi masyarakat dan UMKM di wilayah tersebut serta dapat menjadi contoh bagi kerjasama serupa di daerah lain.</p>', 'https://www.bankbjb.co.id/', 'OyDc13tQHUZT4R9aAI4Raxh9OLHdIF1m21bVzw5v.png', '2023-05-03 19:13:52', '2023-05-03 19:13:52'),
(6, 'Smart Garden PCI', '', '<p>Smart Garden PCI atau Smart Garden Puri Cipageran Indah 1 merupakan sebuah taman yang dibangun dengan konsep terkelola dan asri yang berlokasi di Cimahi Utara, Kota Cimahi. Taman ini memiliki banyak manfaat sebagai tempat interaksi sosial, edukasi lingkungan, taman literasi, tempat olahraga, perniagaan terbatas, konservasi keanekaragaman hayati, laboratorium alam dan multi manfaat lainnya.</p><p>Dengan konsep yang terkelola dan asri, Smart Garden PCI diharapkan dapat menjadi tempat yang nyaman untuk berinteraksi dan belajar mengenai lingkungan. Selain itu, Smart Garden PCI juga dapat menjadi sumber penghasilan bagi masyarakat sekitar melalui usaha pedagang terutama pedagang kuliner yang dapat berusaha di lokasi tersebut.</p>', '<p>Smart Garden PCI atau Smart Garden Puri Cipageran Indah 1 merupakan sebuah taman yang dibangun dengan konsep terkelola dan asri yang berlokasi di Cimahi Utara, Kota Cimahi.&nbsp;</p><p>Kerjasama antara HIPMI Cimahi dan Smart Garden PCI akan berfokus pada pengelolaan lahan lingkungan di Forum RW Puri Cipageran 1 dengan tujuan untuk naik kelas dan menciptakan peluang ekonomi baru. Kerjasama ini akan melibatkan beberapa proyek di antaranya adalah Caffe Literasi, Smart Library dan Youth Corner.</p><p>Caffe Literasi akan menjadi tempat yang menyediakan kopi dan buku-buku yang dapat dibaca oleh pengunjung. Selain itu, Smart Library juga akan menyediakan buku-buku dan tempat baca yang dapat diakses oleh masyarakat sekitar. Sedangkan Youth Corner akan menjadi tempat bagi para pemuda untuk berkumpul dan berdiskusi tentang isu-isu terkini.</p><p>Dengan adanya kerjasama ini, diharapkan dapat menciptakan peluang ekonomi baru bagi masyarakat sekitar melalui usaha-usaha seperti Caffe Literasi dan juga dapat meningkatkan kualitas lingkungan sekitar melalui pengelolaan lahan lingkungan yang lebih baik. Selain itu, melalui proyek-proyek seperti Smart Library dan Youth Corner, diharapkan dapat meningkatkan minat baca dan juga memperluas wawasan masyarakat sekitar mengenai isu-isu terkini.</p>', '#', 'VrxInVW0UQzZjabdtupxYoKPml1Y7z3dMlZZwfOK.jpg', '2023-05-03 19:15:38', '2023-05-03 19:15:38'),
(7, 'MinyaKIta', '', '<p>#</p>', '<p>HIPMI Kota Cimahi menjadi bisnis partner MinyaKIta dalam mendistribusikan minyak goreng dengan harga terjangkau kepada masyarakat di wilayah Bandung Raya. Dengan demikian, masyarakat di kawasan tersebut akan lebih mudah mendapatkan pasokan minyak goreng berkualitas dengan harga yang terjangkau.</p><p>Kerjasama ini diharapkan dapat memberikan manfaat yang besar bagi kedua belah pihak, serta bagi masyarakat yang membutuhkan pasokan minyak goreng yang berkualitas dan terpercaya di kawasan Bandung Raya.</p>', 'https://www.infosawit.com/2023/05/02/apical-luncurkan-minyakita-kemasan-baru-dan-edukasi-het-rp-14-00000-liter/', 'LQYEKpsu8nmndFMxSpRuU7J92trKBtNEYcuWOGSh.jpg', '2023-05-03 19:17:22', '2023-05-03 19:17:22'),
(8, 'BNI', '', '<p>BNI atau Bank Negara Indonesia adalah bank BUMN di Indonesia yang menyediakan berbagai produk dan layanan perbankan lengkap, mulai dari simpanan, kredit, kartu kredit, hingga layanan elektronik seperti internet banking dan mobile banking. BNI juga memberikan dukungan terhadap sektor UMKM di Indonesia melalui program pembiayaan seperti KUR dan KUM, serta berbagai inisiatif untuk mendukung pertumbuhan ekonomi Indonesia, seperti pembiayaan sektor infrastruktur dan dukungan terhadap program-program pemerintah. BNI juga terus berusaha untuk mengembangkan produk dan layanan perbankan yang inovatif dan mudah diakses oleh masyarakat.</p>', '<p>BNI atau Bank Negara Indonesia adalah salah satu bank yang memberikan dukungan terhadap UMKM di Indonesia melalui berbagai program pembiayaan dan bantuan lainnya. Sebagai partner HIPMI Kota Cimahi, BNI memberikan plafond pinjaman bagi unit usaha yang dimiliki oleh anggota HIPMI Kota Cimahi.</p><p>Plafond pinjaman yang diberikan oleh BNI kepada anggota HIPMI Kota Cimahi dapat beragam, tergantung dari kebutuhan dan profil usaha masing-masing anggota. Namun, plafond pinjaman tersebut biasanya bersifat fleksibel dan dapat disesuaikan dengan kebutuhan usaha anggota HIPMI Kota Cimahi.</p><p>Selain plafond pinjaman, BNI juga memberikan berbagai jenis fasilitas pembiayaan lainnya yang dapat dimanfaatkan oleh anggota HIPMI Kota Cimahi, seperti Kredit Usaha Rakyat (KUR), Kredit Usaha Mikro (KUM), dan Kredit Modal Kerja (KMK).</p><p>Dengan adanya kerjasama antara HIPMI Kota Cimahi dan BNI ini diharapkan dapat meningkatkan akses pembiayaan bagi anggota HIPMI Kota Cimahi yang merupakan pengusaha muda dan pelaku UMKM di Kota Cimahi, sehingga dapat membantu dalam mengembangkan usaha dan meningkatkan kontribusi UMKM terhadap perekonomian nasional.</p>', 'https://www.bni.co.id/', '22DL0B6H0GePgKbM9mbz4wPLEC3a4pATsp5XiMii.png', '2023-05-03 19:18:26', '2023-05-03 19:18:26');

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
  `date_show` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `description`, `content`, `image`, `user_id`, `date_show`, `created_at`, `updated_at`) VALUES
(8, 'Pembuatan Warlok (Warung Lokal) Yang Dibuat Koperasi Hipmi Cimahi 22 Untuk Membangkitkan Warung Lokal Di Cimahi', 'pembuatan-warlok-warung-lokal-yang-dibuat-koperasi-hipmi-cimahi-22-untuk-membangkitkan-warung-lokal-di-cimahi', 1, '<p><strong>Cimahi</strong>&nbsp;– Koperasi Hipmi Cimahi 22 pada hari ini (Rabu, 03 Mei 2023) mengumumkan pembuatan Warlok (Warung Lokal) untuk membangkitkan semangat warung lokal di kota Cimahi. Langkah ini diambil untuk memberikan dukungan pada pemilik usaha kecil dan menengah dalam memperkuat perekonomian lokal.</p>', '<p><strong>Cimahi</strong> – Koperasi Hipmi Cimahi 22 pada hari ini (Rabu, 03 Mei 2023) mengumumkan pembuatan Warlok (Warung Lokal) untuk membangkitkan semangat warung lokal di kota Cimahi. Langkah ini diambil untuk memberikan dukungan pada pemilik usaha kecil dan menengah dalam memperkuat perekonomian lokal.</p><p>&nbsp;<br>Pembukaan Warlok bertujuan untuk menyeimbangkan antara kebutuhan masyarakat akan barang pokok dengan ketersedian barang yang terjangkau. Melalui program ini, koperasi Hipmi Cimahi 22 akan melakukan pendampingan terhadap warung lokal yang merupakan bagian dari usaha kecil dan menengah. Program ini juga dirancang untuk mensejahterakan masyarakat sekitar warung lokal karena memiliki harga yang bersaing dengan ritel modern.<br><br>&nbsp;</p><p>Koperasi akan memberikan dukungan penuh pada pemilik warung lokal dalam hal promosi dan pengembangan usaha mereka. Koperasi juga akan mengadakan pelatihan dan <i>workshop</i> bagi para pemilik warung lokal untuk meningkatkan kualitas produk dan layanan yang mereka berikan.<br><br>&nbsp;</p><p>\"Kami berharap bahwa program Warlok dapat membantu memperkuat perekonomian lokal dan meningkatkan kualitas hidup masyarakat Cimahi,\" Ujar M. Firaldi Akbar Zulkarnain selaku ketua Hipmi Cimahi.<br><br>&nbsp;</p><p>Warlok akan dioperasikan di beberapa lokasi di kota Cimahi dan akan membuka peluang bagi lebih banyak pemilik warung lokal untuk bergabung. Diharapkan program ini dapat memberikan dampak positif bagi perekonomian local karena dapat memenuhi kebutuhan masyarakat dengan harga yang bersaing.</p>', 'ybJtqjwX5GOF8gookdPNfC8hRCVyDuDVOV93eJEv.jpg', 1, '2023-05-02', '2023-05-03 19:21:39', '2023-05-03 19:21:39'),
(9, 'Ketum HIPMI Cimahi, M. Firaldi Akbar Zulkarnain Menghadiri Undangan Acara Halal Bihalal ICMI Orda Cimahi untuk Memberikan Paparan Kolaborasi dalam Peningkatan Ekonomi Kota Cimahi.', 'ketum-hipmi-cimahi-m-firaldi-akbar-zulkarnain-menghadiri-undangan-acara-halal-bihalal-icmi-orda-cimahi-untuk-memberikan-paparan-kolaborasi-dalam-peningkatan-ekonomi-kota-cimahi', 2, '<p>Ketua Umum Himpunan Pengusaha Muda Indonesia (HIPMI) Cimahi, M. Firaldi Akbar Zulkarnain, diundang untuk memberikan paparan kolaborasi pada acara Halal Bihalal Ikatan Cendekiawan Muslim Indonesia (ICMI) Orda Cimahi yang diselenggarakan pada hari ini di Gedung IKIP Siliwangi, Kota Cimahi</p>', '<p>Cimahi, 01 Mei 2023 - Ketua Umum Himpunan Pengusaha Muda Indonesia (HIPMI) Cimahi, M. Firaldi Akbar Zulkarnain, diundang untuk memberikan paparan kolaborasi pada acara Halal Bihalal Ikatan Cendekiawan Muslim Indonesia (ICMI) Orda Cimahi yang diselenggarakan pada hari ini di Gedung IKIP Siliwangi, Kota Cimahi</p><p>Dalam paparannya, M. Firaldi Akbar Zulkarnain memaparkan tentang pentingnya kolaborasi antara pengusaha muda dan cendekiawan muslim dalam mendorong pertumbuhan ekonomi yang berkesinambungan di Cimahi. Ia juga menekankan pentingnya mempromosikan produk-produk UMKM Kota Cimahi dan meningkatkan kualitas SDM dalam menghadapi persaingan global.</p><p>“Kami di HIPMI Cimahi sangat bersemangat untuk berkolaborasi dengan ICMI dalam mengembangkan potensi ekonomi lokal yang berkelanjutan. Kami percaya bahwa sinergi antara pengusaha muda dan cendekiawan muslim dapat memberikan kontribusi positif bagi masyarakat Cimahi,” kata M. Firaldi Akbar Zulkarnain.</p><p>Acara Halal Bihalal ICMI Orda Cimahi juga dihadiri oleh para cendekiawan muslim dan tokoh masyarakat lainnya. Mereka menyambut baik paparan M. Firaldi Akbar Zulkarnain dan menawarkan kerjasama dalam memajukan ekonomi Cimahi.</p><p>“Kami berterima kasih kepada M. Firaldi Akbar Zulkarnain atas paparannya yang inspiratif. Kami sangat mendukung upaya untuk mempromosikan produk-produk UMKM Kota Cimahi dan meningkatkan kualitas SDM di Cimahi. Kami siap berkolaborasi dengan HIPMI untuk mewujudkan visi bersama dalam memajukan ekonomi Cimahi,” kata salah satu peserta acara.</p><p>Acara Halal Bihalal ICMI Orda Cimahi berlangsung dengan sukses dan menjadi momen yang penting untuk memperkuat kolaborasi antara pengusaha muda dan cendekiawan muslim dalam mendorong pertumbuhan ekonomi yang berkesinambungan di Cimahi.</p>', 'PyG5V8xie6bIQEdKkhLvq6dVR2vNMo8djOk5bBcA.jpg', 1, '2023-05-01', '2023-05-03 19:22:31', '2023-05-03 19:22:31'),
(10, 'HIPMI Kota Cimahi Siapkan 1.000 Ton Beras untuk Tebus Murah Sembako di 313 RW', 'hipmi-kota-cimahi-siapkan-1000-ton-beras-untuk-tebus-murah-sembako-di-313-rw', 1, '<p>HIPMI Kota Cimahi menggelar kegiatan tebus murah sembako di 313 RW sebagai upaya untuk membantu warga Kota Cimahi dalam mengatasi masalah ketahanan pangan.</p>', '<p><strong>Cimahi </strong>- HIPMI Kota Cimahi menggelar kegiatan tebus murah sembako di 313 RW sebagai upaya untuk membantu warga Kota Cimahi dalam mengatasi masalah ketahanan pangan. Kegiatan tersebut menawarkan paket sembako yang terdiri dari beras premium sebanyak 4 kg dan minyak satu liter dengan harga penebusan sebesar Rp50.000.</p><p>Menurut Edo Maulana, selaku penanggung jawab kegiatan, sebelum warga dapat melakukan penebusan sembako, mereka harus mendapatkan kupon resmi yang dapat ditukarkan dengan produk. Kegiatan tebus murah ini akan dilakukan secara bergilir di 313 RW.</p><p>Edo juga menyatakan bahwa kegiatan ini bertujuan untuk membantu pemerintah Kota Cimahi dalam mengatasi pengendalian inflasi daerah (PID) dan memberikan bantuan pada warga untuk memenuhi kebutuhan pokok mereka.</p><p>HIPMI Cimahi telah menyiapkan sekitar 1.000 ton beras untuk kegiatan tebus murah ini, dan Ketua HIPMI Cimahi, Kang Firaldi Akbar, mendukung penuh kegiatan ini sebagai salah satu upaya membantu warga Kota Cimahi.</p>', 'CslHW8zJnXYcSejpgoIkXS3Wy5tH9GJoT6Em74sl.jpg', 1, '2022-11-01', '2023-05-03 19:23:36', '2023-05-03 19:23:36'),
(11, 'Penandatangan MoU HIPMI Kota Cimahi dengan Universitas Jendral Achmad Yani', 'penandatangan-mou-hipmi-kota-cimahi-dengan-universitas-jendral-achmad-yani', 2, '<p>Senin, 17 April 2023 telah dilksanakan penandatanganan MoU dan PKS antara BPC HIPMI Kota Cimahi dengan Universitas Jendral Achmad Yani dan Fakultas Ekonomi Dan Bisnis Unjani. Acara tersebut dihadiri oleh jajaran pengurus HIPMI Kota Cimahi dan jajaran Civitas Akademik Universitas Jendral Achmad Yani.</p>', '<p>Senin, 17 April 2023 telah dilksanakan penandatanganan MoU dan PKS antara BPC HIPMI Kota Cimahi dengan Universitas Jendral Achmad Yani dan Fakultas Ekonomi Dan Bisnis Unjani. Acara tersebut dihadiri oleh jajaran pengurus HIPMI Kota Cimahi dan jajaran Civitas Akademik Universitas Jendral Achmad Yani.</p><p>Dalam sambutan Rektor Unjani mengatakan bahwa kerjasama ini merupakan langkah yang tepat “kerjasama ini merupakan potensi pasar yang sangat tepat, karena Unjani merupakan satu-satunya universitas yang berada di Kota Cimahi. Sehingga BPC HIPMI Kota Cimahi dirasa tepat dalam melaksanakan kerjasama” ujarnya.</p><p>Ketua Umum HIPMI Kota Cimahi menyampaikan bahwa dengan kerjasama yang dibentuk akan menjadi gerbang awal kebersamaan kolaborasi untuk mengembangkan ekonomi di lingkungan Universitas Jendral Achmad Yani, sehingga HIPMI Kota Cimahi dapat berdampak.</p><p>Penandatanganan dilakukan oleh kang M. Firaldi Akbar Z, S.Mn. selaku Ketua Umum BPC HIPMI Kota Cimahi, Bapak Prof. Hikmahanto Juwana, S.H., L.L., Ph.D. selaku Rektor Unjani dan Ibu Neni Maryani, S.E., M.Si.Ak. selaku dekan FEB Unjani. Banyak kerjasama dan kolaborasi konkrit yang akan dilaksanakan dalam bidang ekonomi dan pengembangan potensi mahasiswa antara BPC HIPMI Kota Cimahi dan Unjani untuk memajukan Negeri dan khususnya Kota Cimahi.</p>', 'NfMC1IfuvQ1KL1D7vwkYtHq4dw6J6m717Zfqd6P4.jpg', 1, '2023-04-08', '2023-05-03 19:24:44', '2023-05-03 19:24:44'),
(12, 'HIPMI Cimahi dan Ralali Berkolaborasi untuk Meningkatkan Bisnis Anggotanya', 'hipmi-cimahi-dan-ralali-berkolaborasi-untuk-meningkatkan-bisnis-anggotanya', 2, '<p>Hipmi Cimahi dan Ralali, platform B2B, mengumumkan kerja sama untuk meningkatkan bisnis anggotanya. Dalam rapat Badan Pengurus Lengkap (RBPL) yang dihadiri oleh seluruh pengurus dan tamu undangan pada tanggal 31 Maret 2023, program kerja sama tersebut menjadi salah satu topik yang dibahas.</p>', '<p>Hipmi Cimahi dan Ralali, platform B2B, mengumumkan kerja sama untuk meningkatkan bisnis anggotanya. Dalam rapat Badan Pengurus Lengkap (RBPL) yang dihadiri oleh seluruh pengurus dan tamu undangan pada tanggal 31 Maret 2023, program kerja sama tersebut menjadi salah satu topik yang dibahas.</p><p>Corporate management menjadi salah satu program yang akan dilaksanakan oleh HIPMI Cimahi untuk memberikan solusi bagi anggota yang kesulitan dalam memperoleh legalitas dan mengelola perusahaan mereka agar dapat meningkat. Sedangkan kerja sama dengan Ralali akan memberikan akses kepada setiap usaha yang dimiliki oleh anggota HIPMI untuk mengikuti setiap tender yang terdapat dalam Ralali.</p><p>\"Kami berharap dengan kerja sama ini, anggota HIPMI Cimahi akan dapat meningkatkan bisnis mereka dan memperoleh kesempatan yang lebih besar untuk berkembang,\" kata salah satu pengurus HIPMI Cimahi.</p><p>Kerja sama ini diharapkan dapat memberikan manfaat bagi anggota HIPMI Cimahi, terutama dalam menghadapi persaingan bisnis yang semakin ketat. Semoga kerja sama ini dapat berjalan dengan sukses dan memberikan dampak positif bagi bisnis anggota HIPMI Cimahi.</p>', 'sv3Yf98mNadPPS4dVEzo8ohG4PLqSE579U116RXY.jpg', 1, '2023-04-01', '2023-05-03 19:27:27', '2023-05-03 19:27:27'),
(13, 'Ketua HIPMI Cimahi Bagikan Tips Sukses Wirausaha pada Sharing Session Disbudparpora', 'ketua-hipmi-cimahi-bagikan-tips-sukses-wirausaha-pada-sharing-session-disbudparpora', 1, '<p>&nbsp;Ketua Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi, M. Firaldi Akbar, menjadi pemateri dalam kegiatan Sharing Session Wirausaha Muda Pemula yang diadakan oleh Dinas Kebudayaan, Pariwisata, Pemuda, dan Olahraga (Disbudparpora) Kota Cimahi. Acara tersebut berlangsung di Kantor Kecamatan Cimahi Selatan.</p>', '<p>Pada hari Kamis, 30 Maret 2023, Ketua Himpunan Pengusaha Muda Indonesia (HIPMI) Kota Cimahi, M. Firaldi Akbar, menjadi pemateri dalam kegiatan Sharing Session Wirausaha Muda Pemula yang diadakan oleh Dinas Kebudayaan, Pariwisata, Pemuda, dan Olahraga (Disbudparpora) Kota Cimahi. Acara tersebut berlangsung di Kantor Kecamatan Cimahi Selatan.</p><p>Dalam acara tersebut, M. Firaldi Akbar berkesempatan untuk berbagi pengetahuan dan pengalaman yang berkaitan dengan wirausaha, terutama untuk para pemuda yang sedang berwirausaha di Kota Cimahi. Dia memberikan tips dan trik tentang bagaimana memulai bisnis dari awal, mengelola keuangan, dan mengembangkan bisnis secara berkelanjutan.</p><p>Selain itu, M. Firaldi Akbar juga memperkenalkan HIPMI Cimahi kepada peserta sebagai organisasi yang dapat membantu dan mendukung para wirausaha muda dalam mengembangkan bisnis mereka. Dia mengajak peserta untuk bergabung dengan HIPMI Cimahi dan memanfaatkan berbagai program dan fasilitas yang disediakan oleh organisasi tersebut.</p><p>Peserta sangat antusias dan terinspirasi oleh materi yang diberikan oleh M. Firaldi Akbar. Mereka juga bersemangat untuk bergabung dengan HIPMI Cimahi dan memanfaatkan peluang yang ada untuk mengembangkan bisnis mereka. Acara ini diharapkan dapat menjadi langkah awal bagi para wirausaha muda di Kota Cimahi untuk meraih kesuksesan dalam dunia bisnis.</p>', 'Qz8pWVTaIGDVoT6MLRMNeEt4dy9ZJbMLpnQ1ur2k.jpg', 1, '2023-04-01', '2023-05-03 19:28:17', '2023-05-03 19:28:17'),
(14, 'Hambamu, Kajian Rutin HIPMI Kota Cimahi', 'hambamu-kajian-rutin-hipmi-kota-cimahi', 1, '<p>HIPMI Kota Cimahi Kembali Gelar Kajian Islam Rutin \"Hambamu\", Hadirkan Ustadz ternama dan Dapat Respon Positif dari Masyarakat</p>', '<p>HIPMI Kota Cimahi kembali menggelar program Hambamu, sebuah program kajian Islami yang rutin diadakan di Kota Cimahi. Acara ini menjadi tempat berkumpulnya masyarakat Kota Cimahi dan sekitarnya untuk mempelajari serta mendalami ajaran Islam dari para narasumber ahli di bidangnya.</p><p>Pada tanggal 9 dan 24 Januari, serta 21 Februari 2023, Hambamu menghadirkan narasumber ternama seperti Ust. Abu Leiden dengan tema \"ikhlas, rido, sabar\", Ust. Ahmad Qusairi (Ari), dan Umi Khairoti (MQTV). Acara yang diselenggarakan di G-Box Kuliner Cimahi ini mendapat respon positif dari masyarakat, terutama ibu-ibu pengajian, majelis taklim, dan masyarakat umum lainnya.</p><p>Hambamu merupakan program berkelanjutan yang diadakan oleh HIPMI Kota Cimahi, dan telah memberikan manfaat besar bagi masyarakat setempat. Program ini memberikan wadah bagi para peserta untuk mempelajari dan mendalami ajaran Islam dari para narasumber ahli di bidangnya.</p><p>Selain itu, Hambamu juga menjadi ajang silaturahmi dan pertukaran informasi antar peserta, yang mendorong terbentuknya komunitas yang solid dan saling mendukung. Diharapkan kegiatan seperti ini dapat terus dilaksanakan dan memberikan manfaat besar bagi masyarakat Kota Cimahi dan sekitarnya.</p>', 'DhoceZZvhnJmJmh9xyPrMtzNmI0gt2RuhJskCNBj.jpg', 1, '2023-03-30', '2023-05-03 19:29:12', '2023-05-03 19:29:12'),
(15, 'HIPMI Kota Cimahi Sukses Gelar Januaride dan Sunday Market 2023', 'hipmi-kota-cimahi-sukses-gelar-januaride-dan-sunday-market-2023', 1, '<p>HIPMI (Himpunan Pengusaha Muda Indonesia) Kota Cimahi baru saja sukses menggelar acara Januaride dan Sunday Market pada tanggal 8, 15, 22, dan 29 Agustus 2023.</p>', '<p>HIPMI (Himpunan Pengusaha Muda Indonesia) Kota Cimahi baru saja sukses menggelar acara Januaride dan Sunday Market pada tanggal 8, 15, 22, dan 29 Agustus 2023. Acara yang dilaksanakan di gBox kuliner (Jl. Melong No.01 Cijerah) ini diikuti oleh para pegiat sepedah serta puluhan komunitas yang berada di Cimahi dan sekitarnya.</p><p>Januaride adalah event olahraga sepedah yang diadakan oleh HIPMI Kota Cimahi. Kegiatan ini diikuti oleh banyak pegiat sepedah dan komunitas sepedah di Cimahi dan sekitarnya. Selain itu, terdapat juga kegiatan sarapan bubur ayam, kopi dan teh, karokean, sharing session, bazar produk sepedah, bazar UMKM dan doorprize.</p><p>Sementara itu, Sunday Market merupakan kegiatan bazar yang diselenggarakan pada hari yang sama dengan Januaride. Sunday Market diisi oleh enam tenant UMKM ataupun VIP. Animo masyarakat sangat tinggi terhadap kegiatan ini karena selain agenda bersepedah bersama, terdapat juga bazar UMKM yang menawarkan produk-produk berkualitas.</p><p>Kegiatan ini disupport oleh beberapa organisasi maupun brand yang dimiliki oleh anggota HIPMI Cimahi sendiri diantaranya KADIN Cimahi, MFA Group, Wings, Ashboel dan lain-lain. Rangkaian acara Januaride dan Sunday Market sendiri dilakukan secara berkala selama empat kali dalam bulan Januari.</p><p>Ketua HIPMI Kota Cimahi, M. Firaldi Akbar Zulkarnain S.Mn, mengatakan bahwa kegiatan Januaride dan Sunday Market ini merupakan upaya untuk memperkenalkan HIPMI Kota Cimahi kepada masyarakat. \"Melalui kegiatan ini, kami ingin memperkenalkan HIPMI Kota Cimahi kepada masyarakat dan sekaligus memperkenalkan produk-produk UMKM yang ada di Cimahi dan sekitarnya,\" ujarnya.</p><p>M. Firaldi juga menyampaikan terima kasih kepada semua pihak yang telah mendukung kegiatan ini, termasuk kepada organisasi dan brand yang menjadi sponsor kegiatan Januaride dan Sunday Market. \"Kami berterima kasih kepada semua pihak yang telah mendukung kegiatan Januaride dan Sunday Market ini, termasuk kepada organisasi dan brand yang menjadi sponsor kegiatan ini. Dukungan ini sangat berarti bagi kami dalam memajukan HIPMI Kota Cimahi dan juga masyarakat Cimahi secara umum,\" pungkasnya.</p>', 'fCH0CutzmGjA5K3zTw5IuMZ5d8eGKRf3hVq1Dogg.jpg', 1, '2023-04-28', '2023-05-03 19:30:04', '2023-05-03 19:30:04'),
(16, 'Es Kenyot, Tanpa Kamu Tetap Segar', 'es-kenyot-tanpa-kamu-tetap-segar', 1, '<p>Es mambo, minuman legendaris yang pernah populer pada tahun 90-an, kembali naik daun di kalangan masyarakat Indonesia. Tak hanya diminum oleh generasi X dan Y yang merindukan masa lalu, tetapi juga diminati oleh generasi milenial yang penasaran dengan rasanya.</p>', '<p>Es mambo, minuman legendaris yang pernah populer pada tahun 90-an, kembali naik daun di kalangan masyarakat Indonesia. Tak hanya diminum oleh generasi X dan Y yang merindukan masa lalu, tetapi juga diminati oleh generasi milenial yang penasaran dengan rasanya.</p><p>Fajri Fathurohman menangkap peluang ini, kemudian membuat sebuah brand bernama <i>Es Kenyot</i>. Kenyot dalam Bahasa Sunda memiliki arti hisap, karena cara menikmati es mambo tentu dengan cara dihisap (dikenyot). Sensasi menikmati Es Kenyot tentu berbeda dengan sensasi menikmati es krim biasa yang dijilat. Es Kenyot mempunyai penggemarnya sendiri.</p><p>“Saya menggagas <i>brand</i> Es Kenyot pada tahun 2014. Saat itu penggemar Es Kenyot cukup banyak, tak terkecuali generasi Z kota Bandung dan Cimahi. Karena satu dan lain hal pada tahun 2020 Es Kenyot mulai menghentikan produksinya, namun saat ini Es Kenyot memiliki beberapa gagasan baru dan varian rasa yang baru, sehingga Es Kenyot akan terlahir kembali untuk menyapa para penggemarnya”, ujar Fajri.</p><p>Varian rasa dari Es Kenyot ini sangat beragam, mulai dari rasa sirsak, anggur, mangga dan sebagainya. Dengan <i>tagline Tanpa Kamu Tetap Segar</i>, diharapkan Es Kenyot ini akan membawa kesegaran disegala situasi dan kondisi.</p><p>Dengan semakin populer kembali-nya es mambo, diharapkan Es Kenyot bisa membangkitkan kembali rasa kecintaan masyarakat Indonesia terhadap minuman tradisional yang kaya akan cita rasa dan sejarah.</p>', 'LCfFFRZ2ucld1e77FovWq6JYNoc3rs0Q2ZHSO6Ue.jpg', 1, '2023-05-03', '2023-05-06 16:46:07', '2023-05-06 16:46:07'),
(17, 'HIPMI Cimahi dan IQOS Menjalin Kolaborasi', 'hipmi-cimahi-dan-iqos-menjalin-kolaborasi', 1, '<p>Himpunan Pengusaha Muda Indonesia (HIPMI) Cimahi baru-baru ini menjalin kerja sama dengan perusahaan rokok elektronik, IQOS. Kerja sama tersebut bertujuan untuk mendukung kegiatan HIPMI dalam membina Usaha Kecil dan Menengah (UKM).</p>', '<p>Cimahi - Himpunan Pengusaha Muda Indonesia (HIPMI) Cimahi baru-baru ini menjalin kerja sama dengan perusahaan rokok elektronik, IQOS. Kerja sama tersebut bertujuan untuk mendukung kegiatan HIPMI dalam membina Usaha Kecil dan Menengah (UKM).</p><p><br>Dalam keterangan resminya, Ketua Umum HIPMI Cimahi, M. Firaldi Akbar Zulkarnain mengatakan, \"Kami sangat senang bisa menjalin kolaborasi dengan IQOS. Kami berharap, kerja sama ini dapat membantu HIPMI melakukan program kerja atau kegiatan-kegiatan positif lainya.\" HIPMI dan IQOS akan bekerja sama dalam berbagai kegiatan, salah satunya sponsorship yang diberikan oleh IQOS pada kegiatan-kegiatan HIPMI.<br><br>Rokok elektronik semakin populer di Indonesia dalam beberapa tahun terakhir, dengan peningkatan permintaan yang signifikan dari konsumen. Namun, pertumbuhan industri rokok elektronik masih dihadapkan pada berbagai tantangan, termasuk regulasi yang belum sepenuhnya jelas dan kurangnya pemahaman masyarakat mengenai produk tersebut.<br><br>Dengan adanya kolaborasi antara HIPMI dan IQOS, diharapkan dapat membantu terlaksananya kegiatan HIPMI sekaligus meningkatkan pemahaman dan kesadaran publik mengenai produk tersebut.</p><p><br>&nbsp;</p>', 'ah4MNINCuFz88vYuj7v23EesoVWFraAAM1gXYIrY.jpg', 1, '2023-05-04', '2023-05-06 16:47:05', '2023-05-06 16:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `prestasis`
--

CREATE TABLE `prestasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `image`, `name`, `slug`, `description`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ApwVgqnItUGSIcwZwLU74SvWMq84TQDa9J2g79V5.jpg', 'Program', 'program', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem necessitatibus</p>', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem necessitatibus</p>', NULL, '2023-02-03 00:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `rwrts`
--

CREATE TABLE `rwrts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutans`
--

INSERT INTO `sambutans` (`id`, `name`, `slug`, `title`, `image`, `description`, `video`, `created_at`, `updated_at`) VALUES
(1, 'M. Firaldi Akbar Zulkarnain S.Mn', 'm-firaldi-akbar-zulkarnain-smn', 'Ketua HIPMI Kota Cimahi', 'YAyc0ceEiqkdpzWRoTcJO8M0UCeyjvZph7IYiCWJ.jpg', 'Organisasi HIPMI (Himpunan Pengusaha Muda Indonesia) merupakan wadah bagi para pengusaha muda Indonesia yang ingin terlibat dalam pengembangan bisnis dan karirnya.\r\n\r\nKami menyediakan berbagai fasilitas dan pelatihan untuk membantu pengusaha muda meningkatkan kemampuan dan keterampilan mereka.\r\n\r\nSelain itu, kami juga menyelenggarakan berbagai acara dan program yang bertujuan untuk mempromosikan usaha pengusaha muda di Indonesia.\r\n\r\nKami percaya bahwa dengan membantu pengusaha muda mengembangkan bisnis mereka, kami dapat berkontribusi terhadap peningkatan ekonomi Indonesia.\r\n\r\n', 'AJleQuNUSMM', '2023-01-24 22:49:15', '2023-05-03 18:45:18');

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
(1, 'Capai Kesuksesan Bersama HIPMI Kota Cimahi', 'capai-kesuksesan-bersama-hipmi-kota-cimahi', '93rasTjT0j4AWvKs4yDCpX1xhTGf4mIJJlDcfysr.jpg', '<p>Ayo bergabung bersama kami di HIPMI dan dapatkan kesempatan untuk mengembangkan diri dan karier Anda. Bersama dengan komunitas yang solid dan dukungan dari para ahli industri, kami yakin Anda akan meraih kesuksesan yang luar biasa. Gabung sekarang dan raih kesempatan yang tak ternilai harganya</p>', 'Join Now', '#', '2023-01-25 01:12:58', '2023-05-03 19:51:35'),
(4, 'BANGKIT BERSAMA KAMI', 'bangkit-bersama-kami', 'zsPtszzoXCQh3Qin2PNqARNGRZoFttDyE9SXiTXu.jpg', '<p>Bergabunglah bersama organisasi pengusaha muda terbesar di Indonesia</p>', 'Gabung Sekarang!', 'https://hipmicimahi.com/formdaftar', '2023-04-15 00:12:33', '2023-05-04 16:31:27');

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
(4, 'Membangun Impian Menjadi Kenyataan: Kisah Anggraeni Nursari, Pengusaha Sukses di Bidang Teknologi', 'membangun-impian-menjadi-kenyataan-kisah-anggraeni-nursari-pengusaha-sukses-di-bidang-teknologi', 'Anggraeni Nursari', 'Anggraeni Studio', 'Cimahi Selatan', '<p>Anggraeni Nursari memulai bisnisnya dengan membuka toko online yang menjual produk-produk teknologi. Dia memfokuskan diri pada produk-produk dengan harga terjangkau dan kualitas yang baik. Bisnisnya berkembang pesat dan Anggraeni memutuskan untuk mengembangkan bisnisnya dengan membuka perusahaan teknologi.</p><p>Perusahaan Anggraeni memfokuskan diri pada pengembangan aplikasi dan perangkat lunak yang membantu pelanggan untuk mengelola bisnis mereka dengan lebih efisien. Berkat inovasi yang terus-menerus dan kualitas layanan yang tinggi, perusahaan Anggraeni berkembang pesat dan menjadi salah satu perusahaan teknologi terkemuka di kota.</p><p>Anggraeni juga memastikan bahwa perusahaannya mempekerjakan tenaga kerja yang kompeten dan berkomitmen terhadap kualitas layanan. Dia memastikan bahwa perusahaannya selalu berinovasi dan memperbarui produk-produknya sesuai dengan kebutuhan pelanggan.</p><p>Setelah 10 tahun berbisnis, Anggraeni membuka cabang perusahaan di beberapa kota lain dan meningkatkan omset bisnisnya hingga Rp 10 miliar per bulan. Kini, perusahaan Anggraeni dikenal sebagai salah satu perusahaan teknologi terkemuka dan Anggraeni dikenal sebagai salah satu pengusaha sukses di bidang teknologi.</p>', 'wpWj_rcfif4', '#', 'PuWdm0ZIwipaurdVo8skqzdSTFHPvJAJUQyWNeZV.jpg', '2023-01-30 16:56:55', '2023-01-31 15:28:51'),
(5, 'Sempat Bangkrut di Sektor F&B, Kini Sukses di Sektor Property Dengan Modal Relasi', 'sempat-bangkrut-di-sektor-fb-kini-sukses-di-sektor-property-dengan-modal-relasi', 'Utomo Putro', 'Property', 'Cimahi', '<p>Bisnis bergerak di bidang Property Development dan juga general trading. Berawal bisnis dari importir vape&nbsp; di Indonesia dan mencoba di bisnis F&amp;B yaitu coffee shop lalu sempat bangkrut. Setelah itu bertemu dengan Ketum dan saat itu mengajak untuk berbisnis bersama dalam bidang property. Modal awal yang saya manfaatkan awalnya bukan berup uang melainkan relation, pengalaman. Omset yang diperoleh adalah 10- 15 miliar pertahun dari tahun 2022 ke 2023. Saya berHIPMI tentu ajakan dari ketum Aldi dan sudah beberapakali berorganisasi walaupun sebelumnya dalam level kampus karena dalam berbisnis kita perlu berrelasi yang banyak sehingga organisasi itu penting.</p>', 'Dl1e_TUeD4M', '#', '9dbYIwUyZtOtYR0AZlphFd3rsv4vB5htSJ9N4wM3.jpg', '2023-05-03 19:45:01', '2023-05-03 19:45:01'),
(6, 'Sukses di Bidang Creative Industri dan F&B', 'sukses-di-bidang-creative-industri-dan-fb', 'Rindy Desiandy R, S.Ak.', 'R27 Creative Organizer', 'Cimahi', '<p>Bergerak di bidang F&amp;B, Mice, Creative Organizer, Fashion dan Property. Memulai bisnis di tahun 2014 di bidang fashion, 2019 di bidang property, 2021 di bidang F&amp;B, 2022 di bidang Creative organizer dan WO serta sekarang menjalankan di bidang Mice. Modal awal berbisnis di tahun 2014 yaitu 10 juta rupiah selebihnya bermitra dengan yang lainnya.</p>', 'pL4fLdg-kCo', '#', '0KSGBNHVMRuH5kyea4nkJshAXzYPHwzu8YokC5DC.jpg', '2023-05-03 19:46:15', '2023-05-03 19:46:15'),
(7, 'Sukses Mengembangkan Potensi Diri Berujung Sukses di Berbagai Sektor Bisnis', 'sukses-mengembangkan-potensi-diri-berujung-sukses-di-berbagai-sektor-bisnis', 'Arfinaldo Abdullah', 'PT. Salaam Amanna, CV Shintanur Indonesia', 'Cimahi', '<p>Bergerak di bisnis komoditi pangan minyak, beras dan lainnya serta bisnis percetakan packaging plastik. Bisnis awal merupakan kerjasama beberapa pihak baik bisnis percetakan yaitu PT. Salaam Amanna Indonesia dan CV. Shintanur sebagai bisnis komoditi pangan. Omset saat ini sudah mencapai 300 juta perbulan. Alasan mengikuti HIPMI adalah memaksimalkan potensi diri dan menjadikan diri lebih bermanfaat untuk teman teman dan masyarakat pada umumnyaserta mengembangkan potensi bisnis yang kita miliki dengan berkolaborasi dan kerjasama.</p>', '0xBwTYzs274', '#', 'c7S1iE9tIh1dbS1BpQnvRwqzkuMLqRZyGexkhpEE.jpg', '2023-05-03 19:47:19', '2023-05-03 19:47:19'),
(8, 'Mengelola Tambang Emas Sejak 2013', 'mengelola-tambang-emas-sejak-2013', 'Aria Putra Perdana', 'Goldman Indonesia', 'Jawa Barat', '<p>Mulai 2012 bekerja mengikuti orang tua yang bergerak di bidang pertambangan emas di Indonesia, sehingga pada tahun 2013 mendapatkan client pertama sebuah perusahaan pertambangan emas di Jawa Barat dan sudah menjadi kepala teknik tambang di perusahaan tersebut dan berakhir pada 2021 akhir. Pada 2022 bertemu Ketum Aldi dan mempercayakan tambang di Jawa Barat untuk dikelola. Saat ini bisnis sudah berjalan dengan omset 50 juta perbulan. Alasan saya ikut HIPMI adalah untuk mengembangkn usaha saya dan berbisnis dengan sesama anggota HIPMI.</p>', '6skJuPMyuQM', '#', 'Ip86Uw1JHjHUyLKYZg89sY7Juog3Ys7ArpGKXuZE.png', '2023-05-03 19:48:29', '2023-05-03 19:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `svgs`
--

CREATE TABLE `svgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `svgs`
--

INSERT INTO `svgs` (`id`, `image`, `name`, `nilai`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'uHW2n6sli0pMWccLqfkqyBfDJFRrbtIkyAglHiK0.png', 'Anggota Tergabung', 60, NULL, '2023-02-08 02:32:16', '2023-04-21 14:39:24'),
(2, 'is2lx6zMqlkJn2OZOckF74gHwz6Oimp4LFbmR1gM.png', 'Kerjasama MoU', 4, NULL, NULL, '2023-04-21 14:59:14'),
(3, 'OF8HpVhCyUyZuyi7LrVpJBbUmmZNGf1Nmi0WcNWj.png', 'Kolaborasi Bisnis', 33, NULL, NULL, '2023-04-21 14:59:34'),
(4, '5TVgVegekpivp4aW4gl7ArwsNk6eb4IV3YDytvKh.png', 'Program Aktif', 32, NULL, NULL, '2023-04-21 14:59:57');

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
  `yt_link` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `name`, `title`, `slug`, `content`, `image`, `yt_link`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Adanna Putri Rahayu', 'Owner', 'adanna-putri-rahayu', '<p>\"Sebelum bergabung dengan HIPMI Kota Cimahi, usaha kerajinan tanah liat saya sangat terbatas dan hanya dikenal di lingkungan sekitar saja. Namun setelah bergabung dengan HIPMI, saya mendapat dukungan berupa pelatihan tentang cara meningkatkan kualitas dan desain kerajinan tanah liat saya serta diberikan akses ke sumber daya seperti bahan baku yang berkualitas dan dijual dengan harga yang terjangkau. Selain itu, jaringan bisnis yang saya dapatkan melalui HIPMI sangat luas, sehingga produk kerajinan tanah liat saya bisa dijual ke berbagai wilayah di Kota Cimahi dan bahkan di luar kota. Akibatnya, penjualan dan profit usaha saya meningkat signifikan dan saya sangat berterima kasih kepada HIPMI Kota Cimahi atas dukungan yang telah diberikan.\"</p>', 'iobXWfgViHyeRV4AQA1WQx200itVWyd9ruUCavrq.jpg', '4nNSijph1to', 1, '2023-01-25 02:41:25', '2023-01-25 02:41:25'),
(2, 'Melinda', 'Owner', 'melinda', '<p>Bergabung dengan HIPMI Kota Cimahi telah meningkatkan usaha kerajinan anyaman saya secara signifikan. Dukungan pelatihan, akses sumber daya berkualitas dan jaringan bisnis luas yang saya dapatkan dari HIPMI memungkinkan saya untuk mempromosikan produk dan meningkatkan kualitas kerajinan anyaman saya serta menjual produk ke wilayah yang lebih luas. Akibatnya, penjualan dan profit usaha saya meningkat tajam dan saya sangat berterima kasih kepada HIPMI Kota Cimahi atas dukungan yang telah diberikan.</p>', 'lL5caRqMjcF0eKHvY29io3lqpWsjNranGDxzOOPZ.jpg', 'yr456-WsMCc', 1, '2023-01-25 03:03:44', '2023-01-25 03:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `ucapans`
--

CREATE TABLE `ucapans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ucapans`
--

INSERT INTO `ucapans` (`id`, `image`, `title`, `slug`, `jabatan`, `video`, `created_at`, `updated_at`) VALUES
(1, 'b4RFdMOOElP2CW2Pj2cVqIHGeg8sapkiTgytCBLY.jpg', 'Dr.H.R. Agung Laksono', 'drhr-agung-laksono', 'Anggota Dewan Pertimbangan Presiden RI', '0g6zEV5X-8c', '2023-04-30 18:56:57', '2023-05-06 16:05:33'),
(2, 'beXORZ8nXBpzVaAHrTXxeBlCkOyRfgl81lKhDpgS.jpg', 'Dr. (H.C) Ary Ginanjar Agustian', 'dr-hc-ary-ginanjar-agustian', 'Pendiri ESQ 165', 'eG6qgOig_4o', '2023-04-30 23:28:41', '2023-05-06 16:06:01'),
(3, 'rNy0ISZHUtkBqQekKzkGKEUeI98XVT4884bIEl4y.jpg', 'Ir. H. Aburizal Bakrie', 'ir-h-aburizal-bakrie', 'VVIP Guest', 'kuP2yl4Q9UQ', '2023-05-01 08:22:27', '2023-05-06 16:15:53'),
(4, 'DVqSgKLu3N6taUeZjdSJDQDR3hHWUOOSF3cEZ7fr.jpg', 'Dave Akbarshah F, B.A., M.E.', 'dave-akbarshah-f-ba-me', 'Ketua PPK Anggota DPR RI Fraksi I Golkar', 'ZvwJMLuzscQ', '2023-05-01 08:24:07', '2023-05-06 16:18:25'),
(5, 'JIPQT2MHXGTwu78IMvrEWeTkv51QVbReVO27hXxy.jpg', 'Prof. Dr. Zainudin Amali, S.E., M.Si.', 'prof-dr-zainudin-amali-se-msi', 'Menpora RI', 'AGaxBPwI4iM', '2023-05-01 08:26:03', '2023-05-06 16:22:11'),
(6, 'mIiLNLWfIPS84QfqdOvnjcmFeOn6xGiCwq0CXybe.jpg', 'Dr. Jerry Sambuaga', 'dr-jerry-sambuaga', 'Wakil Menteri Perdagangan', 'nef3QzSPHjg', '2023-05-01 08:27:18', '2023-05-06 16:24:24');

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
(1, 'Hipmi Cimahi', 'admin@hipmicimahi.com', '2023-01-24 19:33:20', '$2y$10$YVpF3almNT57XNXi2Rry7Ot4hoQLe6U46Q8mivGOZivmT5yls2p6y', NULL, NULL, NULL, 'avatar.png', NULL, '2023-01-24 19:33:20', '2023-01-24 19:33:20');

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
(1, 'WtAdMWpYpRF1hyY5cqMRH01TDxnVAGIHoJ9DANCz.png', 'KUhqzbDVEb4', '2023-01-29 12:25:14', '2023-01-29 22:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `visis`
--

CREATE TABLE `visis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visis`
--

INSERT INTO `visis` (`id`, `title`, `image`, `visi`, `created_at`, `updated_at`) VALUES
(1, 'Visi 2022-2027', 'qgCQyZFTkSYtXxET8fVQg2n9QF54zx93j7ewYJqD.jpg', '<p>Menjadikan Pengusaha Muda Sebagai Pelopor Kebangkitan Ekonomi Di Kota Cimahi, Membantu Perekonomian Cimahi Agar Bisa Maju dan Berkibar Di Jawa Barat dan Indonesia</p>', NULL, '2023-05-04 16:47:51');

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
(2, 'Kerajinan Go Ekspor', 'kerajinan-go-ekspor', 'Bidang 10 - Tata Ruang, Pekerjaan Umum, dan Pengembangan Desa', '<p>Program kerja <strong>KERAJINAN GO EKSPOR </strong>bertujuan untuk mengembangkan dan mempromosikan sektor kerajinan di Kota Cimahi untuk pasar domestik maupun ekspor. Meskipun Cimahi tidak memiliki lahan pertanian yang tersentralisasi, namun Kota Cimahi memiliki potensi yang cukup besar dalam sektor kerajinan.</p><p>Program ini akan memulai dengan melakukan penelitian terhadap sektor-sektor kerajinan yang memiliki kualitas dan keunggulan di Kota Cimahi. Selanjutnya, akan dilakukan pengembangan dan pembenahan terhadap sektor-sektor kerajinan tersebut agar lebih siap untuk masuk ke pasar domestik maupun ekspor.</p><p>Untuk mempromosikan sektor kerajinan ini, program \"KERAJINAN GO EKSPOR\" akan bekerja sama dengan berbagai pihak seperti asosiasi pengusaha, perusahaan ekspor-impor, dan instansi pemerintah terkait untuk melakukan promosi dan pemasaran produk-produk kerajinan dari Kota Cimahi.</p><p>Dalam pelaksanaannya, program ini akan memberikan pelatihan dan pendampingan kepada para pengusaha kerajinan di Kota Cimahi agar dapat mengembangkan keterampilan dan pengetahuan dalam bidang produksi dan pemasaran. Selain itu, program ini juga akan membantu para pengusaha kerajinan dalam memperoleh sertifikasi dan standar internasional yang diperlukan untuk masuk ke pasar ekspor.</p><p>Dengan program \"KERAJINAN GO EKSPOR\", diharapkan sektor kerajinan di Kota Cimahi dapat berkembang dan meningkatkan kontribusinya terhadap perekonomian daerah. Selain itu, program ini juga dapat membuka peluang baru bagi para pengusaha kerajinan di Kota Cimahi untuk memasarkan produk-produk mereka ke pasar global dan meningkatkan daya saing produk kerajinan Kota Cimahi di kancah internasional.</p>', 'wrUg9qhVuVwyUG8AbKGo36aolN8bYd0omROiNwnB.jpg', '2023-01-30 11:03:44', '2023-05-03 18:56:26'),
(3, 'HIPMI GOES TO SMK', 'hipmi-goes-to-smk', 'Bidang 11 - Bidang Ketenagakerjaan ,Vokasi dan Kesehatan', '<p>Program \"HIPMI GOES TO SMK\" adalah sebuah inisiatif yang bertujuan untuk menyalurkan virus berwirausaha kepada lulusan Sekolah Menengah Kejuruan (SMK) di Kota Cimahi, sehingga mereka dapat menjadi Entrepreneur Muda yang mandiri dan berdaya saing tinggi di masa depan.</p><p>Dalam pelaksanaannya, program ini akan berfokus pada dua hal utama. Pertama, program ini akan memberikan pelatihan dan pembekalan kepada lulusan SMK mengenai keterampilan dan pengetahuan dasar dalam berwirausaha. Pelatihan ini meliputi cara membuat bisnis plan, manajemen keuangan, pemasaran, hingga teknik negosiasi. Dengan adanya pelatihan ini, diharapkan lulusan SMK dapat memiliki bekal yang cukup untuk memulai dan mengembangkan bisnis mereka sendiri.</p><p>Kedua, program \"HIPMI GOES TO SMK\" juga bertujuan untuk menjembatani lulusan SMK dengan perusahaan atau industri yang sesuai dengan keahlian dan minat mereka. Hal ini bertujuan untuk membantu lulusan SMK mendapatkan pekerjaan yang sesuai dengan keahlian dan minat mereka, sehingga mereka dapat berkembang secara profesional dan membantu meningkatkan produktivitas perusahaan atau industri tempat mereka bekerja.</p><p>Dengan demikian, program \"HIPMI GOES TO SMK\" diharapkan dapat membantu meningkatkan kualitas lulusan SMK di Kota Cimahi dan membantu menciptakan generasi Entrepreneur Muda yang berdaya saing tinggi di masa depan. Selain itu, program ini juga diharapkan dapat memberikan kontribusi positif bagi perekonomian daerah dan menciptakan lapangan kerja yang lebih banyak di Kota Cimahi.</p>', 'B3fxoT87gevxieWTkGBdvBz1oYOooOvQdLCU0fEC.png', '2023-01-30 11:25:15', '2023-05-03 18:55:23'),
(4, 'Pelatihan Kerja', 'pelatihan-kerja', 'Bidang 11 - Bidang Ketenagakerjaan ,Vokasi dan Kesehatan', '<p>Program Pelatihan Kerja bertujuan untuk membantu masyarakat yang masih menganggur di Kota Cimahi agar memiliki keterampilan dan pengetahuan yang cukup untuk dapat bersaing dalam dunia kerja. Program ini akan memberikan pelatihan dan pembekalan kepada peserta mengenai keterampilan dan pengetahuan dasar dalam berkarir, seperti membuat CV yang baik, wawancara kerja, manajemen waktu, dan produktivitas.</p><p>Melalui pelatihan ini, diharapkan peserta dapat memiliki bekal yang cukup untuk mempersiapkan diri dan bersaing di dunia kerja. Selain itu, program \"Pelatihan Kerja\" juga akan mempermudah penyaluran tenaga kerja siap pakai ke perusahaan yang membutuhkan. Dalam hal ini, program ini akan berkolaborasi dengan perusahaan-perusahaan di dalam dan luar Kota Cimahi untuk menyalurkan tenaga kerja yang sesuai dengan kebutuhan mereka.</p><p>Dalam jangka panjang, program \"Pelatihan Kerja\" diharapkan dapat membantu mengurangi tingkat pengangguran di Kota Cimahi, meningkatkan kualitas sumber daya manusia yang dimiliki oleh daerah, dan membantu meningkatkan produktivitas dan daya saing perusahaan-perusahaan yang beroperasi di Kota Cimahi. Program ini juga dapat membuka peluang bagi peserta untuk bekerja di dalam maupun luar negeri, sehingga memberikan kontribusi positif bagi perekonomian daerah dan negara secara keseluruhan.</p>', 'vvympJGhQpwZCpr06uqnIpoPke6ZSSf3xsli5ruT.png', '2023-01-30 11:26:06', '2023-05-03 18:54:25'),
(5, 'HIPFEST', 'hipfest', 'Bidang 12 - Pendidikan, Riset, Sosial, Pemuda dan Olahraga', '<p>\"HIPFEST\" adalah sebuah program inovatif yang bertujuan untuk mencetak para wirausaha muda yang siap bersaing di era digitalisasi dan go global. Program ini akan mengembangkan kreativitas dan inovasi para peserta melalui pelatihan dan pendampingan yang intensif, serta memberikan akses ke jaringan bisnis dan pasar global.</p><p>Selain itu, program \"HIPFEST\" juga bertujuan untuk menjadikan HIPMI Cimahi sebagai strategic partner dalam pemanfaatan ruang dan inovasi, sehingga dapat membantu mempercepat pertumbuhan ekonomi daerah. Dalam hal ini, program ini akan mengadakan berbagai kegiatan seperti piala bergilir, culinary night fest, dan pensi yang akan menjadi program jargon dari HIPMI Cimahi.</p><p>Melalui program ini, diharapkan para peserta dapat mengembangkan keterampilan dan pengetahuan dalam berbisnis, sehingga dapat membuka peluang untuk memulai usaha mereka sendiri atau menjadi tenaga kerja yang handal. Program \"HIPFEST\" juga akan membantu meningkatkan daya saing HIPMI Cimahi di tingkat nasional dan internasional, serta memberikan kontribusi positif bagi perekonomian daerah dan negara secara keseluruhan.</p>', 'c4fgCrlkoz2W5HHKa7mqkkHW3QX0D9ZcNwWMFEOk.jpg', '2023-04-11 01:17:53', '2023-05-03 18:47:24'),
(6, 'Satu Workshop Satu Kecamatan', 'satu-workshop-satu-kecamatan', 'Bidang 10 - Tata Ruang, Pekerjaan Umum, dan Pengembangan Desa', '<p>SATU WORKSHOP SATU KECAMATAN bertujuan untuk meningkatkan keterampilan dan kualitas para pengusaha atau calon pengusaha lokal di Kota Cimahi melalui pelatihan dan workshop kewirausahaan.</p><p>Program ini akan membangun sebuah rumah atau gedung workshop kewirausahaan di setiap kecamatan di Kota Cimahi. Gedung workshop ini akan menjadi pusat pelatihan kewirausahaan bagi para pengusaha atau calon pengusaha lokal di setiap kecamatan.</p><p>Sumber dana untuk program ini akan berasal dari dana Corporate Social Responsibility (CSR) yang disumbangkan oleh perusahaan-perusahaan swasta yang beroperasi di Kota Cimahi. Selain itu, program ini juga akan bekerja sama dengan pemerintah setempat untuk mengoptimalkan penggunaan dana CSR.</p><p>Dalam pelaksanaan program \"SATU WORKSHOP SATU KECAMATAN\", HIPMI Kota Cimahi akan bekerja sama dengan para ahli kewirausahaan dan praktisi bisnis yang berpengalaman untuk memberikan pelatihan yang berkualitas kepada para peserta workshop. Pelatihan ini akan difokuskan pada pengembangan keterampilan dan pengetahuan bisnis seperti manajemen keuangan, pemasaran, manajemen sumber daya manusia, dan lain-lain.</p><p>Dengan program ini, diharapkan bahwa para pengusaha atau calon pengusaha lokal di Kota Cimahi akan mendapatkan pelatihan dan pendampingan yang berkualitas untuk mengembangkan bisnis mereka. Selain itu, program ini juga diharapkan dapat meningkatkan kualitas dan jumlah pengusaha lokal yang mampu berkontribusi positif terhadap perekonomian Kota Cimahi.</p>', 'NAA3MlaVEsqHhRUzT3wNXLbcJrln9JCAteVh2lLx.jpg', '2023-05-03 18:57:16', '2023-05-06 17:08:03'),
(7, 'MILENIAL PUNYA RUMAH', 'milenial-punya-rumah', 'Bidang 10 - Tata Ruang, Pekerjaan Umum, dan Pengembangan Desa', '<p>MILENIAL PUNYA RUMAH bertujuan untuk membantu kaum milenial di kota Cimahi memiliki akses kepemilikan rumah yang terjangkau. Program ini akan fokus pada pembangunan dan pengembangan perumahan yang ditargetkan untuk pasar milenial dengan harga yang terjangkau.</p><p>HIPMI Cimahi akan bekerja sama dengan pihak terkait, seperti pengembang properti, pemerintah daerah, dan lembaga keuangan untuk merancang dan membangun perumahan yang memenuhi kebutuhan kaum milenial. Perumahan ini akan menawarkan harga yang terjangkau, namun tetap memiliki fasilitas dan kualitas yang memadai, seperti akses ke pusat kota, transportasi, tempat rekreasi, dan fasilitas pendidikan.</p><p>HIPMI Cimahi juga akan berperan aktif dalam mempromosikan program MILENIAL PUNYA RUMAH kepada masyarakat, khususnya kaum milenial di kota Cimahi. Hal ini dilakukan dengan mengadakan kampanye sosial, seminar, dan kegiatan lainnya yang dapat meningkatkan kesadaran dan minat masyarakat untuk memiliki rumah sendiri.</p><p>Dalam melaksanakan program kerja ini, HIPMI Cimahi akan memperoleh dukungan dari pihak terkait, seperti pengembang properti, pemerintah daerah, dan lembaga keuangan. HIPMI Cimahi juga akan membentuk tim khusus yang bertanggung jawab untuk mengembangkan program ini dengan melaksanakan studi kelayakan, mengembangkan desain, dan membangun perumahan yang ditargetkan untuk pasar milenial dengan harga terjangkau.</p><p>Program MILENIAL PUNYA RUMAH akan memberikan manfaat yang besar bagi masyarakat kota Cimahi, khususnya kaum milenial yang kesulitan memiliki rumah sendiri karena tingginya harga properti. Dengan memiliki rumah sendiri, kaum milenial dapat meningkatkan kualitas hidup, merasa lebih aman dan nyaman, serta membangun masa depan yang lebih baik.</p>', 'd5JIdY8hq7dNHUGLv7UoMVdqXnSCy9ARU2OAk7xl.jpg', '2023-05-03 18:57:58', '2023-05-06 17:08:29'),
(8, 'HIPMI GO GLOBAL', 'hipmi-go-global', 'Bidang 9 - Investasi, Infokom dan Kerjasama Internasional', '<p>Program HIPMI GO GLOBAL memiliki tiga fokus utama. Pertama, program ini bertujuan untuk memfasilitasi anggota HIPMI Cimahi agar dapat berpartisipasi dalam kegiatan internasional. Hal ini dilakukan dengan memberikan informasi dan pelatihan mengenai peluang bisnis dan investasi di luar negeri serta membuka akses untuk berpartisipasi dalam event-event internasional.</p><p>Kedua, HIPMI Cimahi melalui program ini juga berupaya memfasilitasi kerjasama dengan kedutaan, lembaga, pemerintahan luar negeri dan pihak lainnya. Dengan membangun kerjasama, HIPMI Cimahi dapat membuka peluang bisnis dan investasi yang lebih luas, serta memperoleh informasi yang lebih akurat mengenai pasar global dan perkembangan bisnis internasional.</p><p>Ketiga, program ini bertujuan membawa HIPMI Cimahi ke panggung global. HIPMI Cimahi akan menjadi lebih dikenal dan diakui sebagai organisasi bisnis yang aktif dan berkontribusi dalam pengembangan ekonomi global. Hal ini dilakukan dengan berpartisipasi dalam event-event internasional, membangun jaringan bisnis internasional, dan mempromosikan produk dan jasa anggota HIPMI Cimahi di pasar global.</p><p>Dalam rangka mencapai tujuan program kerja ini, HIPMI Cimahi akan melaksanakan berbagai kegiatan seperti seminar dan pelatihan tentang pasar internasional, pameran bisnis internasional, kunjungan ke negara-negara tujuan bisnis, dan membangun jaringan bisnis internasional. HIPMI Cimahi juga akan terus berkoordinasi dengan lembaga dan pihak terkait lainnya untuk membangun kerjasama dalam rangka mengembangkan bisnis internasional anggota HIPMI Cimahi.</p>', 'aoXpGhfj83W3tWMe3vTde1hDZaSxv221sr2kTrHf.jpg', '2023-05-03 18:58:48', '2023-05-06 17:11:22'),
(9, 'HCMC (HIPMI CIMAHI MEDIA CENTER)', 'hcmc-hipmi-cimahi-media-center', 'Bidang 9 - Investasi, Infokom dan Kerjasama Internasional', '<p>HCMC bertujuan untuk membentuk sebuah pusat informasi yang mudah diakses oleh semua pihak terkait dengan organisasi HIPMI Cimahi. HCMC akan menjadi sumber informasi mengenai organisasi, anggota, program, kegiatan, dan informasi lainnya yang terkait dengan kegiatan HIPMI Cimahi.</p><p>Melalui HCMC, HIPMI Cimahi akan menyebarluaskan informasi secara luas dan mudah diakses oleh seluruh pihak yang membutuhkan. HCMC juga akan memberikan ruang dan kesempatan bagi interaksi antara anggota HIPMI Cimahi dan pihak lain yang ingin berinteraksi dengan organisasi tersebut.</p><p>Dengan adanya HCMC, diharapkan anggota HIPMI Cimahi akan lebih mudah untuk mengakses informasi dan terlibat dalam kegiatan organisasi. Selain itu, HCMC juga akan menjadi wadah untuk memperluas jaringan kerjasama dan mempromosikan HIPMI Cimahi kepada masyarakat luas.</p>', 'VlJ4fd9FsuohWHTTaUlIMMs6yy5Lp4bRENBx0Ikx.jpg', '2023-05-03 18:59:30', '2023-05-06 17:11:34'),
(10, 'Foreign Investment Forum', 'foreign-investment-forum', 'Bidang 9 - Investasi, Infokom dan Kerjasama Internasional', '<p>Foreign Investment Forum bertujuan untuk meningkatkan investasi asing di Kota Cimahi dan membantu anggota HIPMI Cimahi dalam mendapatkan modal baru untuk mendanai sektor bisnis mereka. Program ini akan melibatkan kerjasama dengan lembaga dalam maupun luar negeri yang bergerak dalam bidang investasi, serta memfasilitasi akses informasi, peluang, dan permodalan asing untuk anggota HIPMI Cimahi.</p><p>Melalui forum investasi ini, diharapkan akan terbentuk kerjasama dengan para investor asing dan mendapatkan pendanaan baru yang dapat membantu pengembangan bisnis di berbagai sektor di Kota Cimahi. Selain itu, program ini juga akan memberikan informasi mengenai peluang investasi di Kota Cimahi dan membantu para anggota HIPMI Cimahi dalam mengakses permodalan asing yang dibutuhkan.</p><p>Dengan adanya Foreign Investment Forum ini, diharapkan akan meningkatkan kerjasama internasional dan membuka peluang baru bagi anggota HIPMI Cimahi untuk memperluas jangkauan bisnis mereka secara global. Program ini juga diharapkan dapat membantu membentuk kemitraan yang saling menguntungkan antara anggota HIPMI Cimahi dan investor asing untuk mendukung pertumbuhan ekonomi di Kota Cimahi.</p>', 'K8nnYbTenuZRX7OvsHeH6rz33F0XYZgthva2wO5g.jpg', '2023-05-03 19:00:12', '2023-05-06 17:37:23'),
(11, 'IBAK (Inkubasi Bisnis dan Teknologi)', 'ibak-inkubasi-bisnis-dan-teknologi', 'Bidang 8 - Pariwisata, Ekonomi Kreatif, Koperasi dan UMKM', '<p>Program ini bertujuan untuk membantu anggota HIPMI dan UMKM di Cimahi untuk mengembangkan bisnis mereka dan meningkatkan daya saing di pasar internasional. Program ini akan dilaksanakan dengan melakukan kolaborasi dengan Disdagkoperin dan Cimahi Technopark.</p><p>Melalui program ini, peserta akan mendapatkan pelatihan dan pendampingan dalam mengembangkan bisnis dan teknologi mereka. Peserta juga akan mendapatkan akses ke sumber daya dan jaringan bisnis yang luas, sehingga dapat memperluas pasar dan meningkatkan kualitas produk/jasa yang ditawarkan. Selain itu, program ini juga menyediakan konsultasi bisnis bagi peserta inkubasi agar mereka dapat membuat strategi bisnis yang tepat.</p><p>Program inkubasi ini juga bertujuan untuk melahirkan para pengusaha asal Cimahi yang berdaya saing internasional. Peserta akan dibimbing untuk melakukan skala up produk/jasa mereka agar mampu bersaing di pasar global. Dengan adanya program ini, diharapkan anggota HIPMI dan UMKM di Cimahi dapat meningkatkan potensi bisnis mereka dan memperkuat ekonomi daerah.</p>', 'N5WPu4kE9sZDEKXiZIgmCnNJDsrGuCvZBePYTWMn.jpg', '2023-05-03 19:00:59', '2023-05-06 17:33:40'),
(12, 'PREMAN (Pastikan Merek Produkmu Aman)', 'preman-pastikan-merek-produkmu-aman', 'Bidang 8 - Pariwisata, Ekonomi Kreatif, Koperasi dan UMKM', '<p>Program ini bertujuan untuk memberikan pemahaman yang lebih baik mengenai pentingnya HAKI (Hak Kekayaan Intelektual) kepada anggota dan UMKM di Kota Cimahi. Melalui program ini, HIPMI Kota Cimahi akan berkolaborasi dengan Disdagkoperin (Dinas Perdagangan, Koperasi, dan Industri) dan Bappelitbangda (Badan Penelitian dan Pengembangan Daerah) Kota Cimahi untuk mengadakan pendampingan HAKI.</p><p>Dalam program ini, anggota dan UMKM yang ingin mengurus HAKI akan difasilitasi dan diberikan bantuan untuk mengurus proses tersebut. Selain itu, program ini juga akan memberikan konsultasi merek bagi produk atau jasa anggota, sehingga dapat membantu meningkatkan citra merek anggota dan UMKM di Cimahi.</p><p>Melalui program ini, HIPMI Kota Cimahi berharap dapat membantu anggota dan UMKM di Kota Cimahi dalam memahami pentingnya HAKI dalam memperkuat hak kekayaan intelektual produk atau jasa yang mereka miliki. Dengan demikian, program ini diharapkan dapat membantu anggota dan UMKM dalam meningkatkan daya saing dan keberlangsungan bisnis mereka di Kota Cimahi.</p><p>Selain itu, kolaborasi dengan Disdagkoperin dan Bappelitbangda Kota Cimahi juga diharapkan dapat membantu memperkuat jaringan dan sinergi antara HIPMI Kota Cimahi dan pihak-pihak terkait di Kota Cimahi. Melalui kolaborasi ini, program HAKI dapat menjadi bagian dari upaya memperkuat ekosistem bisnis yang mendukung pengembangan sektor Pariwisata, Ekonomi Kreatif, Koperasi, dan UMKM di Kota Cimahi.</p>', '2al61emOrf0VOmEU5K3w44MUDPmjfUqZgqs0LKQn.jpg', '2023-05-06 16:57:48', '2023-05-06 17:34:02'),
(13, 'JAJAN (Jalan-jalan tapi Cuan)', 'jajan-jalan-jalan-tapi-cuan', 'Bidang 8 - Pariwisata, Ekonomi Kreatif, Koperasi dan UMKM', '<p>Program ini bertujuan untuk menggali peluang kolaborasi dengan pengelola tempat wisata baik di Cimahi maupun di luar Cimahi. Dalam program ini, anggota HIPMI Kota Cimahi akan berkunjung ke tempat wisata tersebut dan bersilaturahmi dengan pengelola tempat wisata.</p><p>Melalui program ini, HIPMI Kota Cimahi berharap dapat memperluas jaringan bisnis anggotanya dengan membuka peluang untuk membuka tenant jualan produk atau jasa anggota di tempat wisata yang dikunjungi. Selain itu, program ini juga diharapkan dapat membuka peluang untuk membuka spot galeri pemasaran produk atau jasa anggota di tempat wisata tersebut.</p><p>Program ini juga diharapkan dapat menggali peluang kolaborasi acara di tempat wisata tersebut, sehingga dapat memperkuat kemitraan antara HIPMI Kota Cimahi dengan pengelola tempat wisata. Selain itu, program ini juga dapat membantu anggota HIPMI Kota Cimahi dalam mengidentifikasi kebutuhan logistik atau lainnya yang dapat disediakan oleh anggota.</p><p>Melalui program Jalan-jalan bersama ke tempat wisata, HIPMI Kota Cimahi juga berharap dapat mempererat silaturahmi antar anggota. Dalam program ini, anggota HIPMI Kota Cimahi dapat saling berbagi pengalaman dan mendiskusikan peluang bisnis yang ada di tempat wisata yang dikunjungi. Dengan demikian, program ini diharapkan dapat memperkuat solidaritas dan kebersamaan antar anggota HIPMI Kota Cimahi, serta membantu meningkatkan potensi bisnis anggota di sektor Pariwisata, Ekonomi Kreatif, Koperasi, dan UMKM.</p>', 'VNd8ScGpmQp3qvpWMRvXsAN6cIND9XQ53rxx2ZwX.jpg', '2023-05-06 16:58:30', '2023-05-06 17:34:31'),
(14, 'SABER (Saling Berkunjung)', 'saber-saling-berkunjung', 'Bidang 8 - Pariwisata, Ekonomi Kreatif, Koperasi dan UMKM', '<p>Program saling berkunjung lokasi usaha setiap pengurus bertujuan untuk memperkuat solidaritas internal pengurus, menggali peluang kolaborasi bisnis antar pengurus, serta membangun semangat tumbuh bersama. Program ini dilaksanakan dengan mengunjungi lokasi usaha masing-masing pengurus HIPMI Kota Cimahi.</p><p>Pada edisi perdana yang dilaksanakan pada tanggal 25 Februari 2023, program ini telah berhasil dilakukan dengan sukses. Seluruh pengurus HIPMI Kota Cimahi telah mengunjungi lokasi usaha masing-masing dan saling berbagi pengalaman serta kondisi usaha yang dijalankan. Dalam program ini, pengurus juga dapat memberikan masukan dan saran kepada sesama pengurus HIPMI Kota Cimahi mengenai potensi bisnis yang dapat dikembangkan.</p><p>Edisi kedua program ini dilaksanakan pada tanggal 10 Maret 2023, dengan tujuan untuk terus memperkuat solidaritas internal pengurus dan mengeksplorasi peluang kolaborasi bisnis yang ada. Dalam edisi kedua ini, diharapkan pengurus dapat menemukan ide-ide baru dan memperluas jaringan bisnis mereka dengan memanfaatkan peluang yang ada di sekitar mereka.</p><p>Melalui program Mangunjungi lokasi usaha setiap pengurus, HIPMI Kota Cimahi berharap dapat memperkuat solidaritas dan kebersamaan antar pengurus. Selain itu, program ini juga diharapkan dapat membantu pengurus dalam mengembangkan bisnis mereka dan memperluas jaringan bisnis di Kota Cimahi. Dengan demikian, HIPMI Kota Cimahi dapat memainkan peran penting dalam memajukan sektor Pariwisata, Ekonomi Kreatif, Koperasi, dan UMKM di Kota Cimahi.</p>', '9cdi9L6ZdrYP7IiDHVvm76tse6oLfqxQ7kIhwRPd.jpg', '2023-05-06 16:59:14', '2023-05-06 16:59:14'),
(15, 'Cimahi Blue Economy & Green Economy', 'cimahi-blue-economy-green-economy', 'Bidang 7 - Kemaritiman, Pertanian, Kehutanan, dan Lingkungan Hidup', '<p>Program kerja HIPMI Kota Cimahi bidang 7 - Kemaritiman, Pertanian, Kehutanan, dan Lingkungan Hidup bertujuan untuk mengoptimalkan potensi ekonomi di bidang tersebut menuju Cimahi Blue Economy &amp; Green Economy tahun 2025. Berikut ini adalah deskripsi dari program kerja yang akan dilakukan oleh BPC HIPMI Kota Cimahi:</p><ul><li>Cimahi Healthy Market&nbsp;</li></ul><p>Program Cimahi Healthy Market bertujuan untuk mengembangkan pasar sehat di Kota Cimahi. Pasar sehat ini akan menyediakan berbagai produk pertanian dan perikanan yang berkualitas tinggi dan sehat. HIPMI akan membantu para petani &nbsp;di sekitar Cimahi untuk memproduksi dan memasarkan produk mereka di pasar sehat ini.</p><ul><li>Cimahi Berenergi&nbsp;</li></ul><p>Program Cimahi Berenergi bertujuan untuk mempromosikan penggunaan energi terbarukan di Kota Cimahi. HIPMI akan berkolaborasi dengan perusahaan energi terbarukan dan pemerintah untuk mengadakan seminar dan pelatihan tentang penggunaan energi terbarukan. Selain itu, HIPMI juga akan membantu masyarakat untuk mendapatkan akses ke energi terbarukan dengan harga yang terjangkau.</p><ul><li>Pojok Kreatif Program&nbsp;</li></ul><p>Pojok Kreatif adalah program yang bertujuan untuk mendukung industri kreatif di Kota Cimahi. HIPMI akan menyediakan ruang kreatif bagi para pelaku industri kreatif di Cimahi. Selain itu, HIPMI juga akan membantu para pelaku industri kreatif untuk memasarkan produk mereka.</p><ul><li>Festival Makanan Minuman Sehat Cimahi&nbsp;</li></ul><p>Program Festival Makanan Minuman Sehat Cimahi adalah program yang bertujuan untuk mempromosikan makanan dan minuman sehat di Kota Cimahi. HIPMI akan mengadakan festival makanan dan minuman sehat di Cimahi yang akan menampilkan berbagai produk makanan dan minuman sehat dari petani dan produsen lokal.</p><ul><li>Festival Susu Cipageran&nbsp;</li></ul><p>Program Festival Susu Cipageran bertujuan untuk mempromosikan susu sapi yang dihasilkan oleh peternak di Cipageran. HIPMI akan mengadakan festival susu di Cipageran yang akan menampilkan berbagai produk susu sapi yang dihasilkan oleh peternak lokal.</p><ul><li>Cimahi Nature Festival&nbsp;</li></ul><p>Program Cimahi Nature Festival adalah program yang bertujuan untuk mempromosikan keindahan alam di Kota Cimahi. HIPMI akan mengadakan festival alam di Cimahi yang akan menampilkan berbagai potensi alam di Kota Cimahi, seperti hutan, sungai, dan gunung. Selain itu, festival ini juga akan menampilkan produk-produk ekowisata yang dihasilkan oleh masyarakat lokal.</p><p>Dengan program kerja di atas, diharapkan HIPMI Kota Cimahi dapat memperkuat sektor Kemaritiman, Pertanian, Kehutanan, dan Lingkungan Hidup di Kota Cimahi, dan mendorong pertumbuhan ekonomi yang berkelanjutan.</p>', '1PFkN8ShRKjQkhmf5kQroXMysUMjMokDdfM5fzIG.jpg', '2023-05-06 17:04:39', '2023-05-06 17:34:52'),
(16, 'Pendampingan Wirausaha', 'pendampingan-wirausaha', 'Bidang 5 - BUMN, BUMD dan BUMDes', '<p>Program HIPMI Kota Cimahi dalam bidang BUMN, BUMD, dan BUMDes ini bertujuan untuk membantu para anggota HIPMI Cimahi dalam mempersiapkan diri untuk dapat bersaing menjadi vendor perusahaan BUMN dan juga perusahaan Perhubungan yang ada di wilayah Kota Cimahi dan sekitarnya. Dalam program ini, anggota HIPMI Cimahi akan mendapatkan pendampingan dan pelatihan untuk memenuhi persyaratan dan standar yang dibutuhkan oleh perusahaan-perusahaan tersebut.</p><p>Pendampingan yang diberikan meliputi beberapa hal, seperti membuat proposal usaha yang baik dan sesuai dengan kebutuhan perusahaan, membuat dokumen administrasi yang lengkap dan akurat, mengenal persyaratan dan standar yang harus dipenuhi oleh perusahaan, serta mengetahui prosedur-prosedur yang berlaku dalam proses pengadaan barang dan jasa di perusahaan BUMN dan perusahaan Perhubungan.</p><p>Dalam program ini, anggota HIPMI Cimahi akan dibimbing oleh para ahli dan praktisi yang berpengalaman dalam bidang pengadaan barang dan jasa di perusahaan BUMN dan perusahaan Perhubungan. Para ahli dan praktisi ini akan membantu anggota HIPMI Cimahi dalam memahami persyaratan dan standar yang dibutuhkan serta memberikan contoh-contoh proposal usaha yang baik dan sukses dalam mendapatkan kontrak dari perusahaan-perusahaan tersebut.</p><p>Dengan program ini, diharapkan anggota HIPMI Cimahi dapat mempersiapkan diri dengan baik dan menjadi vendor yang kompetitif dan berkualitas di mata perusahaan BUMN dan perusahaan Perhubungan. Selain itu, program ini juga dapat membantu meningkatkan kualitas dan kapasitas para anggota HIPMI Cimahi dalam mengembangkan bisnis mereka, sehingga dapat memberikan manfaat yang lebih besar bagi masyarakat dan perekonomian di Kota Cimahi dan sekitarnya.</p>', 'rC8afzjtFQTFpeOYZ96207IGmiMWbJTjpPawtYY4.jpg', '2023-05-06 17:06:09', '2023-05-06 17:06:09'),
(17, 'Audiensi 11 BUMN dan 14 BUMD', 'audiensi-11-bumn-dan-14-bumd', 'Bidang 5 - BUMN, BUMD dan BUMDes', '<p>Program HIPMI Kota Cimahi dalam bidang BUMN, BUMD, dan BUMDes ini bertujuan untuk mempromosikan jenis-jenis usaha yang ada di tubuh HIPMI Cimahi kepada perusahaan-perusahaan BUMN dan BUMD yang ada di sekitar Kota Bandung dan Cimahi. Dalam program ini, anggota HIPMI Cimahi akan melakukan audiensi atau kunjungan langsung ke 11 BUMN dan 14 BUMD tersebut.</p><p>Dalam audiensi atau kunjungan tersebut, anggota HIPMI Cimahi akan mempresentasikan jenis-jenis usaha yang ada di dalam tubuh HIPMI Cimahi, serta manfaat dan potensi kerjasama yang bisa diperoleh oleh BUMN dan BUMD jika bekerjasama dengan HIPMI Cimahi. Selain itu, anggota HIPMI Cimahi juga akan memperkenalkan produk-produk atau layanan-layanan yang ditawarkan oleh anggota HIPMI Cimahi kepada BUMN dan BUMD yang dikunjungi.</p><p>Program ini diharapkan dapat memberikan manfaat bagi kedua belah pihak, yaitu BUMN dan BUMD serta anggota HIPMI Cimahi. Bagi BUMN dan BUMD, program ini dapat membantu mereka dalam mencari mitra bisnis yang potensial dan juga memberikan gambaran tentang jenis-jenis usaha yang sedang berkembang di Kota Cimahi. Sedangkan bagi anggota HIPMI Cimahi, program ini dapat membuka peluang baru untuk melakukan kerjasama bisnis dengan perusahaan-perusahaan BUMN dan BUMD tersebut serta meningkatkan brand awareness dari produk dan layanan yang ditawarkan oleh anggota HIPMI Cimahi.</p>', 'xr9ZqzVI0XH1kmyYK1Cf1UTvGnnuXTYdlPy1H6wy.jpg', '2023-05-06 17:37:11', '2023-05-06 17:37:11'),
(18, 'Pembuatan List Katalog Perusahaan', 'pembuatan-list-katalog-perusahaan', 'Bidang 5 - BUMN, BUMD dan BUMDes', '<p>Salah satu kegiatan yang akan dilakukan dalam program ini adalah menyusun dan mengumpulkan data base informasi usaha anggota HIPMI Kota Cimahi. Data base ini berisi informasi mengenai produk atau jasa yang ditawarkan oleh anggota HIPMI. Data base ini menjadi referensi bagi anggota HIPMI untuk mencari peluang kerjasama dan kolaborasi dengan BUMN, BUMD, dan BUMDes.&nbsp;</p><p>List Catalog dipersiapkan untuk kolaborasi dengan BUMN seperti wirausaha muda mandiri atau semacamnya. List catalog ini akan memudahkan BUMN, BUMD, atau BUMDes dalam mencari anggota HIPMI Kota Cimahi yang memiliki produk atau jasa yang sesuai dengan kebutuhan mereka. Dengan adanya program kerja ini, diharapkan anggota HIPMI Kota Cimahi dapat lebih mudah dalam mengembangkan usaha mereka dan menjalin kerjasama dengan BUMN, BUMD, dan BUMDes. Selain itu, program ini juga akan membantu meningkatkan daya saing anggota HIPMI Kota &nbsp;Cimahi dalam menghadapi persaingan pasar yang semakin ketat.</p>', 'MhowjHXFIjVpFtUhGdpv2CBGr3yKBvZxcvm6jhg9.jpg', '2023-05-06 17:38:02', '2023-05-06 17:38:02'),
(19, 'UMKM NGAHIJI', 'umkm-ngahiji', 'Bidang 4 - Perdagangan dan Perindustrian', '<p>HIPMI Bidang Perdagangan dan Perindustrian memiliki program kerja yang bertujuan untuk meningkatkan kualitas pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) di wilayah Kota Cimahi. Program kerja ini dinamakan \"UMKM Ngahiji\", dan bertujuan untuk membantu para pelaku UMKM di Kota Cimahi agar dapat naik kelas dan meningkatkan kualitas produk serta layanan mereka.</p><p>Salah satu langkah yang akan diambil dalam program kerja ini adalah dengan mengadakan program bazar karnaval. Program ini bertujuan untuk mempromosikan industri tekstil Cimahi agar lebih dikenal di kalangan masyarakat. Selain itu, program bazar karnaval juga diharapkan dapat meningkatkan kolaborasi bisnis antara HIPMI Kota Cimahi dengan para pengusaha tekstil lokal.</p><p>Dalam program UMKM Ngahiji, HIPMI Kota Cimahi Bidang Perdagangan dan Perindustrian akan memberikan dukungan dan bimbingan kepada pelaku UMKM dalam hal pengembangan produk, pemasaran, dan manajemen bisnis. Dukungan ini akan diberikan melalui berbagai kegiatan seperti pelatihan, workshop, dan konsultasi bisnis.</p><p>Dalam jangka panjang, HIPMI Bidang Perdagangan dan Perindustrian berharap program UMKM Ngahiji dapat membantu meningkatkan kualitas dan daya saing pelaku UMKM di Kota Cimahi. Dengan meningkatnya kualitas produk dan layanan yang ditawarkan, diharapkan UMKM dapat menjangkau pasar yang lebih luas dan meningkatkan pendapatan mereka. Selain itu, program ini juga diharapkan dapat membantu meningkatkan pertumbuhan industri tekstil di wilayah Cimahi dan menciptakan kolaborasi bisnis yang lebih baik antara HIPMI dan para pengusaha tekstil lokal.</p>', '1rzUGCenevmVy20yQzAwRHAKXyUOnZQWfmEQSx4H.jpg', '2023-05-06 17:38:36', '2023-05-06 17:38:36'),
(20, 'Pengelolaan Limbah Tambang Menjadi Nilai Tambah', 'pengelolaan-limbah-tambang-menjadi-nilai-tambah', 'Bidang 3 - Bidang Energi Sumber Daya Mineral dan Lingkungan Hidup & Kehutanan', '<p>HIPMI Kota Cimahi sangat konsen dalam pengelolaan limbah tambang. Salah satu program kerja kami adalah pengelolaan limbah tambang menjadi nilai tambah. Program kerja ini merupakan bagian dari upaya untuk mendorong pengusaha di bidang pertambangan untuk mengadopsi praktik bisnis yang lebih berkelanjutan dan ramah lingkungan.</p><p>Dalam program ini, HIPMI Kota Cimahi akan bekerja sama dengan pemerintah dan pengusaha di bidang pertambangan untuk mengadopsi praktik bisnis yang lebih berkelanjutan dalam pengelolaan limbah tambang. Salah satu langkah yang akan diambil adalah dengan mewajibkan setiap perusahaan tambang untuk membuat rencana kerja dan anggaran biaya (RKAB) tahunan berbasis digital atau video.</p><p>Untuk mewujudkan hal tersebut, HIPMI Kota Cimahi akan mengedukasi dan mengajak pengusaha di bidang pertambangan untuk menggunakan teknologi digital dalam pengelolaan limbah tambang. Dalam hal ini, HIPMI Kota Cimahi akan menjadi aplikator dalam pengdigitalisasian data laporan pertambangan di perusahaan-perusahaan tersebut.</p><p>Dalam menjalankan rencana ini, HIPMI Kota Cimahi menyadari bahwa tidaklah mudah dan membutuhkan kerjasama antara pengusaha dan pemerintah. Oleh karena itu, HIPMI Kota Cimahi akan mengadakan sosialisasi dan diskusi dengan pemerintah dan pengusaha di bidang pertambangan untuk mencari solusi terbaik dalam mengelola limbah tambang menjadi nilai tambah.</p><p>Dengan mengelola limbah tambang menjadi nilai tambah, diharapkan dapat memberikan manfaat yang maksimal bagi pengusaha di bidang pertambangan dan masyarakat Jawa Barat secara umum. Selain itu, praktik bisnis yang lebih berkelanjutan dalam pengelolaan limbah tambang juga dapat membantu dalam menjaga kelestarian lingkungan dan mendukung pembangunan berkelanjutan di wilayah Jawa Barat.</p>', 'I9WzjCDifBy0VRzAG90t7omc2XJ1npF0VD24bnLV.jpg', '2023-05-06 17:39:09', '2023-05-06 17:39:09'),
(21, 'Digitalisasi Pertambangan Di Jawa Barat', 'digitalisasi-pertambangan-di-jawa-barat', 'Bidang 3 - Bidang Energi Sumber Daya Mineral dan Lingkungan Hidup & Kehutanan', '<p>Dama mengembangkan bidang energi sumber daya mineral, HIPMI Kota Cimahi memiliki program kerja yang bertujuan untuk mendukung digitalisasi data laporan pertambangan di Jawa Barat. Program kerja ini bertujuan untuk mempercepat dan meningkatkan efektivitas pengambilan data kandungan tambang dengan menggunakan teknologi digital.</p><p>Dalam program ini, HIPMI Kota Cimahi bekerja sama dengan para ahli tambang untuk mengimplementasikan penggunaan teknologi digital dalam pengambilan data kandungan tambang. Metode yang digunakan dalam pengambilan data tersebut adalah penggunaan metode konvensional seperti geolistrik dan boring area tambang.</p><p>Setelah data-data kandungan tambang terkumpul, HIPMI Kota Cimahi menggunakan teknologi digital untuk mengolah data tersebut sehingga menghasilkan persentasi video visual tambang yang jelas dan detail. Persentasi video visual tambang ini dapat digunakan oleh para pihak terkait seperti investor, pemerintah, dan masyarakat untuk melihat kondisi tambang di wilayah Jawa Barat secara langsung.</p><p>Melalui program kerja ini, HIPMI Kota Cimahi bertujuan untuk mendukung digitalisasi data laporan pertambangan di Jawa Barat sehingga dapat meningkatkan efektivitas dan efisiensi pengelolaan tambang di wilayah tersebut. Selain itu, program kerja ini juga dapat membantu para pengusaha di bidang pertambangan untuk mendapatkan akses informasi yang lebih akurat dan cepat terkait kondisi tambang di wilayah Jawa Barat.</p><p>Dalam rangka mencapai tujuan tersebut, HIPMI Kota Cimahi akan berkolaborasi dengan para ahli tambang, institusi pendidikan dan pelatihan bidang pertambangan, serta lembaga-lembaga terkait lainnya. Dengan demikian, diharapkan program kerja ini dapat memberikan manfaat yang maksimal bagi pengusaha di bidang pertambangan dan masyarakat Jawa Barat secara umum.</p>', 'hpwcU57OMCvMumfZJjtWtTp7uPyzgEaw3bcjAICG.jpg', '2023-05-06 17:39:52', '2023-05-06 17:39:52'),
(22, 'Perbankan dan Fintech Festival', 'perbankan-dan-fintech-festival', 'Bidang 2 - Keuangan dan Perbankan', '<p><strong>Tujuan:</strong></p><ul><li>Membantu Pengusaha di HIPMI CImahi Untuk mendapatkan Akses Permodalan Melalui Perbankan dan Lembaga Lembaga Keuangan Lainnya</li><li>Mendorong Pengusaha Muda menjadi Next Level atau bahkan Menuju IPO</li><li>Menghadirkan serangkaian Program mulai dari Kurikulum Pengembangan Bisnis, Pelatihan sampai dengan Perkenalan Solusi Serta akses Keuangan Bagi Anggota HIPMI</li></ul><p>HIPMI Kota Cimahi mengadakan kegiatan Perbankan dan Fintech Festival dengan tujuan untuk membantu pengusaha di HIPMI Cimahi untuk mendapatkan akses permodalan melalui perbankan dan lembaga keuangan lainnya. Selain itu, kegiatan ini juga bertujuan untuk mendorong pengusaha muda menjadi next level atau bahkan menuju IPO.</p><p>Dalam kegiatan ini, HIPMI Kota Cimahi menghadirkan serangkaian program mulai dari kurikulum pengembangan bisnis, pelatihan sampai dengan perkenalan solusi serta akses keuangan bagi anggota HIPMI. Program-program ini dirancang untuk membantu para pengusaha dalam meningkatkan kualitas dan kapasitas bisnis mereka.</p><p>Dalam Perbankan dan Fintech Festival ini, para pengusaha akan diperkenalkan dengan solusi keuangan yang dapat membantu mereka dalam mengembangkan bisnis mereka. Selain itu, para peserta juga akan diberikan informasi tentang berbagai produk dan layanan perbankan dan lembaga keuangan lainnya yang dapat digunakan untuk mendapatkan modal usaha.</p><p>Dalam rangka mencapai tujuan tersebut, HIPMI Kota Cimahi akan berkolaborasi dengan berbagai pihak, seperti bank-bank dan lembaga keuangan lainnya, serta institusi pendidikan dan pelatihan bisnis. Dengan demikian, diharapkan kegiatan ini dapat memberikan manfaat yang maksimal bagi para pengusaha di HIPMI Cimahi.</p><p>&nbsp;</p>', 'oScC8ud9mYXlAULo9OQa0lKo3Ui9rii15Zuj14L8.png', '2023-05-06 17:40:30', '2023-05-06 17:40:30');

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
-- Indexes for table `catmembers`
--
ALTER TABLE `catmembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desas`
--
ALTER TABLE `desas`
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
-- Indexes for table `formdaftars`
--
ALTER TABLE `formdaftars`
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
-- Indexes for table `kabupatens`
--
ALTER TABLE `kabupatens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
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
-- Indexes for table `rwrts`
--
ALTER TABLE `rwrts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sambutans`
--
ALTER TABLE `sambutans`
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
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ucapans`
--
ALTER TABLE `ucapans`
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
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categoriprestasis`
--
ALTER TABLE `categoriprestasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catmembers`
--
ALTER TABLE `catmembers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desas`
--
ALTER TABLE `desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formdaftars`
--
ALTER TABLE `formdaftars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kabupatens`
--
ALTER TABLE `kabupatens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3278;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `openingstories`
--
ALTER TABLE `openingstories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ourteams`
--
ALTER TABLE `ourteams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prestasis`
--
ALTER TABLE `prestasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rwrts`
--
ALTER TABLE `rwrts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sambutans`
--
ALTER TABLE `sambutans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `svgs`
--
ALTER TABLE `svgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ucapans`
--
ALTER TABLE `ucapans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unggulans`
--
ALTER TABLE `unggulans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
