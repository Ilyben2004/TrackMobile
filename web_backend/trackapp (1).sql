-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 07:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trackapp`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_05_001824_create_phones_table', 2),
(6, '2024_05_07_145337_create_phone_locations_table', 3),
(7, '2024_05_09_150634_create_target_locations_table', 4),
(8, '2024_05_15_204701_add_visited_column_to_target_locations_table', 5),
(9, '2024_05_18_184916_add_description_to_target_locations_table', 6),
(10, '2024_05_19_003016_create_notifications_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'The user Osbaldo Hane reached the location with the description: ', '2024-05-18 23:42:59', '2024-05-18 23:42:59'),
(2, 'The user ayman el fadl reached the location with the description: sir tsoutni', '2024-06-03 21:44:05', '2024-06-03 21:44:05'),
(3, 'The user ayman el fadl reached the location with the description: sir tsoutni', '2024-06-03 21:49:32', '2024-06-03 21:49:32'),
(4, 'The user ayman el fadl reached the location with the description: sir tsoutni', '2024-06-03 21:49:38', '2024-06-03 21:49:38'),
(5, 'The user ayman el fadl reached the location with the description: voila', '2024-06-03 22:07:39', '2024-06-03 22:07:39'),
(6, 'The user test owner finished tha task with the  description: task descreption', '2024-06-04 12:48:01', '2024-06-04 12:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'e4db93b7196b96b5a37b09b52b71493aa677d45db0acafb11cb8ad6bc63e2940', '[\"*\"]', NULL, NULL, '2024-05-04 18:39:17', '2024-05-04 18:39:17'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '833fd25ddee92ba625c9a96377cbce0b7b2e8465e12da726cf7683ec4599b39b', '[\"*\"]', NULL, NULL, '2024-05-04 21:24:42', '2024-05-04 21:24:42'),
(3, 'App\\Models\\User', 1, 'API TOKEN', 'd0e28c4d751c1abb3e93ab75914e4d77990278d9fef027e5caae406b47b5a37e', '[\"*\"]', NULL, NULL, '2024-05-04 21:24:49', '2024-05-04 21:24:49'),
(4, 'App\\Models\\User', 1, 'API TOKEN', 'a37fcb2542c2899e9cf10f9357fd08d160328335206356c0c599ebb41cd106dc', '[\"*\"]', NULL, NULL, '2024-05-04 21:25:45', '2024-05-04 21:25:45'),
(5, 'App\\Models\\User', 1, 'API TOKEN', '63903c3b40c90c82ea89cdf7e0317e20d3cac856603accaff81024473502eb5d', '[\"*\"]', NULL, NULL, '2024-05-04 21:26:15', '2024-05-04 21:26:15'),
(6, 'App\\Models\\User', 1, 'API TOKEN', 'd2fb5b6447c5a1588222bc6a5d55908ac61ac37d887705e0713519881521b7c2', '[\"*\"]', NULL, NULL, '2024-05-04 21:30:41', '2024-05-04 21:30:41'),
(7, 'App\\Models\\User', 2, 'API TOKEN', 'cd8e7da8c78c8b02412204143c40f6939da58e591bba94520ba0009276a79248', '[\"*\"]', NULL, NULL, '2024-05-04 22:04:53', '2024-05-04 22:04:53'),
(8, 'App\\Models\\User', 3, 'API TOKEN', '8739658978cf648571ca2bc3fa3704501bd5dce87f1bca9047721b89eef94c2c', '[\"*\"]', NULL, NULL, '2024-05-04 22:14:00', '2024-05-04 22:14:00'),
(9, 'App\\Models\\User', 4, 'API TOKEN', '17396f636bdec0769a5f05b959a1d1a077eeb63ec0cd29b99237bdb69a08f81d', '[\"*\"]', NULL, NULL, '2024-05-19 11:22:10', '2024-05-19 11:22:10'),
(10, 'App\\Models\\User', 4, 'API TOKEN', '190528773d172b3bee26a7c48849d25b73b377c34f6b9b26d0c5290bf7f241c5', '[\"*\"]', NULL, NULL, '2024-05-19 11:22:45', '2024-05-19 11:22:45'),
(11, 'App\\Models\\User', 1, 'API TOKEN', 'bf88c0846f236e200dab71cdb5fa7c6be70ec36c3fe79477d3b38380b941b2ef', '[\"*\"]', NULL, NULL, '2024-05-19 11:23:21', '2024-05-19 11:23:21'),
(12, 'App\\Models\\User', 1, 'API TOKEN', 'fa6bc059b2b744908555e7ff1e5f90f77e532063be2600343af435686c700380', '[\"*\"]', NULL, NULL, '2024-05-21 03:07:50', '2024-05-21 03:07:50'),
(13, 'App\\Models\\User', 1, 'API TOKEN', '84482b8bfcf73f5c6bf7a290b3b04ae0657aa127fd2cf52724bdaafd1e00469f', '[\"*\"]', NULL, NULL, '2024-05-21 03:10:22', '2024-05-21 03:10:22'),
(14, 'App\\Models\\User', 1, 'API TOKEN', 'adabe06470d9965c8dc454e143f122b9bfe1cc967cbf59e413e7c749aaaf034b', '[\"*\"]', NULL, NULL, '2024-05-21 03:12:52', '2024-05-21 03:12:52'),
(15, 'App\\Models\\User', 1, 'API TOKEN', 'ad3915f41a241602fbea32351162cd9d5c5d8d199173a49f995d752a38ca5f29', '[\"*\"]', NULL, NULL, '2024-05-21 03:22:50', '2024-05-21 03:22:50'),
(16, 'App\\Models\\User', 1, 'API TOKEN', '4670e34e734aa7f34429aa1fa3bc4f14a54703b659a3d7d960c3959a39814081', '[\"*\"]', NULL, NULL, '2024-05-21 12:22:06', '2024-05-21 12:22:06'),
(17, 'App\\Models\\User', 1, 'API TOKEN', '1da5f70839076dc2ffaf88fea591e4c9c6c447f062c5e411101b8d3b836af3ec', '[\"*\"]', NULL, NULL, '2024-05-21 12:22:07', '2024-05-21 12:22:07'),
(18, 'App\\Models\\User', 1, 'API TOKEN', 'b3ba9dca63475329cfc4224d658fe94eefcd6c351fc6d12a79c598737e48baf7', '[\"*\"]', NULL, NULL, '2024-05-21 12:22:08', '2024-05-21 12:22:08'),
(19, 'App\\Models\\User', 1, 'API TOKEN', 'c241c34dd908a95602f52c629c0ced4cabb4c637ee1b7d703141eff8fae5cc04', '[\"*\"]', NULL, NULL, '2024-05-21 12:29:34', '2024-05-21 12:29:34'),
(20, 'App\\Models\\User', 1, 'API TOKEN', '0333bcdad4ff6018c65d50725304efddaa0fda1da69e426c922f86c93b667ada', '[\"*\"]', NULL, NULL, '2024-05-21 17:19:38', '2024-05-21 17:19:38'),
(21, 'App\\Models\\User', 1, 'API TOKEN', '1db84925fe48b44acfec261c451a8baa54833ee40978f76ee3825284d327dca7', '[\"*\"]', NULL, NULL, '2024-05-21 17:43:24', '2024-05-21 17:43:24'),
(22, 'App\\Models\\User', 1, 'API TOKEN', '9a30c01e3e561884e868fe19ccef1b93f40e2f136cf694031d730d7613fc0750', '[\"*\"]', NULL, NULL, '2024-06-02 22:17:08', '2024-06-02 22:17:08'),
(23, 'App\\Models\\User', 1, 'API TOKEN', 'af3933b937cdca35a3cb3f3eda9cb72e9ee855eb911bc50fd19ea175f7b25342', '[\"*\"]', NULL, NULL, '2024-06-02 22:26:38', '2024-06-02 22:26:38'),
(24, 'App\\Models\\User', 1, 'API TOKEN', '79afba6b2cdb9b822467c7ce9c0502bb1c95e2d86c00341336a70bb10ffbaf57', '[\"*\"]', NULL, NULL, '2024-06-02 22:29:07', '2024-06-02 22:29:07'),
(25, 'App\\Models\\User', 1, 'API TOKEN', '51b5c2261f3cdf0f7c3eb8a51bce4e03f0848ada189133a0ff91f6f150c1df5d', '[\"*\"]', NULL, NULL, '2024-06-02 22:30:42', '2024-06-02 22:30:42'),
(26, 'App\\Models\\User', 1, 'API TOKEN', '4f7adee5ee01366a0cdffc6f92f068c6ec9d2948350c0de5c875b053fe70132d', '[\"*\"]', NULL, NULL, '2024-06-03 21:33:31', '2024-06-03 21:33:31'),
(27, 'App\\Models\\User', 1, 'API TOKEN', '798561db234e3204c191788facd8b7b5cd511b762170cb5315e01da08754b921', '[\"*\"]', NULL, NULL, '2024-06-03 21:36:33', '2024-06-03 21:36:33'),
(28, 'App\\Models\\User', 1, 'API TOKEN', '8485c8ce21e126bfe7cac824d5d1cda9ec9c1a7d304ccccc022cc2c7b821b225', '[\"*\"]', NULL, NULL, '2024-06-04 12:05:22', '2024-06-04 12:05:22'),
(29, 'App\\Models\\User', 1, 'API TOKEN', 'e957522974fe3e66e0ef1cd5e22f4cbdbc0907a34f23331fc15412c776cc73d2', '[\"*\"]', NULL, NULL, '2024-06-04 12:49:03', '2024-06-04 12:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ownerName` varchar(255) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `ownerName`, `libelle`, `type`, `city`, `phoneNumber`, `email`, `created_at`, `updated_at`) VALUES
(10, 'test', 'test', 'test', 'test', '(test)', 'testt@example.com', '2024-05-05 19:14:01', '2024-05-07 10:59:52'),
(11, 'tajriba hh', 'itjriiib', 'tjir', 'tjj', '11111', 'tjribe@edddxample.com', '2024-05-05 19:14:01', '2024-05-07 11:03:34'),
(13, 'Emmanuelle Mooreee', 'quo', 'Smartphone', 'Rileyland', '+1-934-632-4519', 'glennie78@example.net', '2024-05-05 19:14:01', '2024-05-05 20:44:24'),
(14, 'Jewell Boehm', 'delectus', 'Smartphone', 'Lake Chandler', '272-495-0243', 'wilhelmine35@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(15, 'Abbie Koss', 'veritatis', 'Feature phone', 'Alvertaberg', '+16364537318', 'swaters@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(16, 'Faye Zulauf', 'placeat', 'Feature phone', 'Kiehnville', '(239) 915-5697', 'zbruen@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(17, 'Ms. Christa Kuhic', 'eveniet', 'Feature phone', 'West Maryse', '(930) 933-9402', 'solon99@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(18, 'Ms. Emie Welch', 'quis', 'Smartphone', 'Charityland', '646.891.5733', 'pherman@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(19, 'Dr. Pattie Treutel', 'deserunt', 'Smartphone', 'Krajcikfurt', '+1-859-957-3904', 'adela.murazik@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(20, 'Elmer Murphy IV', 'enim', 'Smartphone', 'Hegmannside', '914-414-4308', 'hand.cleo@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(21, 'Lori Crona', 'et', 'Smartphone', 'Evangelinemouth', '423.563.5288', 'kraig.schmeler@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(22, 'Michale Carter', 'enim', 'Feature phone', 'Volkmanbury', '+1-830-981-4244', 'torp.dorthy@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(23, 'Mr. Johnathon Labadie', 'id', 'Smartphone', 'West Nyah', '385-416-0295', 'lillie37@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(24, 'German Rippin', 'sed', 'Feature phone', 'New Fredrick', '1-325-205-9308', 'block.iva@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(25, 'Abdul VonRueden Sr.', 'delectus', 'Feature phone', 'Port Jaredfort', '1-248-338-0177', 'magnolia.marks@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(26, 'Prof. Isobel Durgan', 'temporibus', 'Smartphone', 'South Ivorymouth', '+1-470-470-2500', 'ssteuber@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(27, 'Darrell Greenfelder', 'hic', 'Smartphone', 'Percivaltown', '(440) 568-6174', 'berge.ryley@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(28, 'Newell Bosco', 'ullam', 'Smartphone', 'Port Favian', '+1-347-263-4237', 'marcelino.ondricka@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(29, 'Maymie Smith', 'non', 'Smartphone', 'Olenville', '+1-712-435-8150', 'levi.dibbert@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(30, 'Roy Kuvalis V', 'libero', 'Feature phone', 'Jacksonport', '720.873.5954', 'mckenzie.kennedy@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(31, 'Dr. Erin Jast MD', 'consectetur', 'Smartphone', 'Blairland', '1-863-207-2274', 'mose.schuppe@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(32, 'Angelina Lesch', 'similique', 'Smartphone', 'Swaniawskiland', '480-673-1708', 'mfadel@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(33, 'Lorenz Kilback', 'veniam', 'Feature phone', 'Gleichnerberg', '458-803-9045', 'nbauch@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(34, 'Ronny Yundt', 'quia', 'Feature phone', 'Littlebury', '352.521.7324', 'oankunding@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(35, 'Maureen Koelpin', 'rem', 'Smartphone', 'Lake Annaliseberg', '1-508-252-2370', 'mgislason@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(36, 'Dr. Otho Hagenes Jr.', 'ad', 'Smartphone', 'East Raleighton', '+1-240-264-1005', 'jane02@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(37, 'Wilfrid Heaney', 'eos', 'Feature phone', 'Vinniebury', '325-439-1556', 'freda.senger@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(38, 'Paula DuBuque', 'et', 'Smartphone', 'Ellaland', '(754) 834-2925', 'brody.spencer@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(39, 'Ms. Josie Reinger', 'eligendi', 'Smartphone', 'Westleyborough', '239-849-6825', 'rlittel@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(40, 'Victor Wilkinson', 'libero', 'Smartphone', 'Port Keely', '(351) 655-8460', 'alexandrea.blick@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(41, 'Velva Fay', 'adipisci', 'Smartphone', 'Tysonside', '1-720-502-1215', 'iflatley@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(42, 'Jettie Schiller', 'minima', 'Smartphone', 'Lucioton', '262-769-3268', 'beier.nicholaus@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(43, 'Dr. Casimer Ziemann Sr.', 'accusamus', 'Smartphone', 'Port Anita', '+1-669-538-1679', 'powlowski.bernadine@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(44, 'Tessie Zboncak', 'tenetur', 'Feature phone', 'West Ernestinastad', '1-620-528-0656', 'jeff.breitenberg@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(45, 'Jamel Gusikowski', 'voluptatem', 'Smartphone', 'North Gretchenmouth', '364-269-7265', 'demario09@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(46, 'Lottie Jones', 'voluptatibus', 'Feature phone', 'South Layne', '+1-681-846-7479', 'courtney35@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(47, 'Gerry Upton', 'dolor', 'Smartphone', 'Salmamouth', '+1 (678) 552-8921', 'boris.bogisich@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(48, 'Dr. Wayne Wintheiser', 'excepturi', 'Feature phone', 'New Arch', '+1.985.390.9252', 'gussie79@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(49, 'Loy Emmerich', 'eligendi', 'Feature phone', 'Dietrichfort', '740.475.8612', 'ubotsford@example.com', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(50, 'Larue Schoen', 'ad', 'Smartphone', 'Port Aureliaport', '+1 (458) 903-8614', 'naomie.runte@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(51, 'Justina Kertzmann', 'assumenda', 'Smartphone', 'South Leif', '+1-463-207-5719', 'eunice05@example.net', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(52, 'Osbaldo Hane', 'esse', 'Smartphone', 'Port Howell', '+1-440-423-2814', 'branson11@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(53, 'Abagail Ondricka', 'et', 'Smartphone', 'Mathiasburgh', '(218) 353-4377', 'arlene.connelly@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(55, 'Dr. Sylvia Marvin IV', 'autem', 'Smartphone', 'Alexandrastad', '+1 (215) 304-1395', 'khayes@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(56, 'Vito Smitham', 'laudantium', 'Smartphone', 'Lake Estelle', '+1-564-312-4883', 'ahowe@example.org', '2024-05-05 19:14:01', '2024-05-05 19:14:01'),
(59, 'hiyaaa', 'ghhh', 'android', 'casa', '6789765789', 'jamesnajeh@gmail.com', '2024-05-07 12:35:31', '2024-05-15 10:17:01'),
(61, 'isi', 'code', 'khra', 'sale', '796854367', 'khra@a.ma', '2024-05-15 10:25:01', '2024-05-15 10:25:01'),
(62, 'casa', '0658847440', 'khra', 'casa', '0658847440', 'dd@gmail.com', '2024-05-15 10:25:59', '2024-05-15 10:25:59'),
(63, 'dc', 'dc0', 'dc', 'dc', '08679', 'd@d.cs', '2024-05-15 10:27:09', '2024-05-15 10:27:09'),
(64, 'd', 'dd', 't687y9dc', 'dc', '67788', 'dsW@s.m', '2024-05-15 10:28:39', '2024-05-15 10:28:39'),
(65, 'ddddd', 'dc', 'khra', 'casa', 'dd', 'ilyenajeh@gmail.com', '2024-05-15 10:29:25', '2024-05-15 10:29:25'),
(66, 'nn', 'n', 'nnn', 'n', '6', 'j@f.l', '2024-05-15 10:30:57', '2024-05-15 10:30:57'),
(67, 'j', 'j', 'j', 'j', 'j', 'u@k.c', '2024-05-15 10:31:52', '2024-05-15 10:31:52'),
(68, 'casa', '0658847440', 'android', 'casa', '0658847440', 'benajeh@gmail.com', '2024-05-15 10:33:42', '2024-05-15 10:33:42'),
(69, 'casa', '0658847440', 'android', 'casa', '0658847440', 'ilajeh@gmail.com', '2024-05-15 10:34:49', '2024-05-15 10:34:49'),
(70, 'casa', '0658847440', 'android', 'casa', '0658847440', 'ilyajeh@gmail.com', '2024-05-15 10:35:35', '2024-05-15 10:35:35'),
(71, 'casa', '0658847440', 'android', 'casa', '0658847440', 'ilyasbenajeh@gmil.com', '2024-05-15 10:40:19', '2024-05-15 10:40:19'),
(72, 'casa', '0658847440', 'android', 'casa', '0658847440', 'dddd@gmail.com', '2024-05-15 10:44:01', '2024-05-15 10:44:01'),
(73, 'casa', '0658847440', 'android', 'casa', '0658847440', 'dddsd@gmail.com', '2024-05-15 10:45:14', '2024-05-15 10:45:14'),
(74, 'casaaa hhh', '0658847440', 'g', 'f', '778', 'ffk@ks.s', '2024-05-15 10:51:26', '2024-05-15 10:51:26'),
(75, 'casa ya casa', '0658847440', 'khra', 'casa', '0658847440', 'ilyacdajeh@gmail.com', '2024-05-15 10:52:24', '2024-05-15 10:52:24'),
(80, 'ilybna', '0658847440', 'd', 'dc', '76758798', 'dc@jxxx.xxx', '2024-05-18 19:31:16', '2024-05-18 19:31:16'),
(85, 'gu', 'jn', 'jh', 'gk', 'n07687', 'vvvvvajeh@gmail.com', '2024-05-19 12:01:12', '2024-05-19 12:01:12'),
(90, 'test owner', 'test phone name', 'test type', 'test city', '9876576466', 'test@test.test', '2024-06-04 12:06:59', '2024-06-04 12:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `phone_locations`
--

CREATE TABLE `phone_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `speed` decimal(8,2) NOT NULL,
  `id_phone` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_locations`
--

INSERT INTO `phone_locations` (`id`, `latitude`, `longitude`, `speed`, `id_phone`, `created_at`, `updated_at`) VALUES
(1, 16.4432370, 110.2744370, 25.88, 43, NULL, NULL),
(3, -69.5092450, 152.8123120, 91.95, 34, NULL, NULL),
(5, 55.0290800, -34.3590290, 88.60, 31, NULL, NULL),
(6, -39.9029720, -108.9800490, 45.94, 16, NULL, NULL),
(7, -65.8694300, 134.2511000, 11.69, 53, NULL, NULL),
(8, -7.8718500, -171.9908830, 97.00, 41, NULL, NULL),
(9, -81.5609190, -169.4031890, 34.27, 45, NULL, NULL),
(11, -70.9189290, 3.6707110, 38.87, 10, NULL, NULL),
(12, 86.6607650, 124.9385580, 90.72, 40, NULL, NULL),
(14, 34.0464339, -6.7976049, 89.52, 19, NULL, '2024-05-19 12:19:55'),
(15, 25.9713980, 22.0342060, 45.30, 52, NULL, NULL),
(16, 8.4655070, -50.1532600, 28.46, 44, NULL, NULL),
(17, 120.3736640, -177.5480000, 23.71, 59, NULL, NULL),
(18, 123.0000000, 123.0000000, 10.21, 27, NULL, '2024-05-18 15:30:29'),
(19, 455.0000000, -6.7975914, 69.72, 22, NULL, '2024-05-18 16:08:42'),
(20, -66.2706670, 158.8209460, 2.23, 38, NULL, NULL),
(24, 32.8198109, -8.5070640, 0.00, 90, '2024-06-04 12:06:59', '2024-06-04 12:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `target_locations`
--

CREATE TABLE `target_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_id` bigint(20) UNSIGNED NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visited` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `target_locations`
--

INSERT INTO `target_locations` (`id`, `phone_id`, `longitude`, `latitude`, `description`, `visited`, `created_at`, `updated_at`) VALUES
(1, 29, -3.8242210, 15.0791870, NULL, 1, '2024-05-09 14:20:53', '2024-05-18 16:27:44'),
(2, 34, 76.1390670, -23.4482400, NULL, 0, '2024-05-09 14:20:53', '2024-05-09 14:20:53'),
(3, 45, 36.8591730, 63.5692540, NULL, 0, '2024-05-09 14:20:53', '2024-05-09 14:20:53'),
(4, 52, -64.3442070, -36.2510990, NULL, 0, '2024-05-09 14:20:53', '2024-05-09 14:20:53'),
(7, 19, -73.0652957, 44.2694344, NULL, 0, '2024-05-09 14:47:17', '2024-05-09 14:47:17'),
(11, 52, 22.0029716, 25.9804353, NULL, 0, '2024-05-09 15:02:30', '2024-05-09 15:02:30'),
(12, 40, -73.0407551, 44.3084019, NULL, 0, '2024-05-09 17:50:40', '2024-05-09 17:50:40'),
(14, 52, 22.0396893, 25.9899998, NULL, 0, '2024-05-10 09:49:49', '2024-05-10 09:49:49'),
(15, 52, 0.0247900, 0.0540759, NULL, 0, '2024-05-10 10:22:19', '2024-05-10 10:22:19'),
(21, 45, -122.4194000, 37.7749000, 'test descreption', 0, '2024-05-18 19:58:35', '2024-05-18 19:58:35'),
(23, 19, -6.7424641, 34.0479013, 'sir lmatar ...', 0, '2024-05-19 12:01:58', '2024-05-19 12:01:58'),
(31, 90, -8.5068169, 32.8165860, 'task descreption', 1, '2024-06-04 12:44:05', '2024-06-04 12:48:01');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'ily@gmail.com', '2024-05-04 15:47:34', '$2y$12$4f.XmBcMCZeNJ5.nKyiWzu7dgd6DR0aqqVvnyJUg0gjUt7iCT8dcG', 'kefTNqUnCH', '2024-05-04 15:47:35', '2024-05-04 15:47:35'),
(2, 'sara', 'ilyy@gmail.com', NULL, '$2y$12$wlVAbTvQr4JpJntAqkn3c.Xuz3x8lytx3cOzqHI.YJThUeRCrxCLi', NULL, '2024-05-04 22:04:53', '2024-05-04 22:04:53'),
(3, 'sbsx', 'howa@ex.xom', NULL, '$2y$12$wdKJtTOHrBlhx1Na0HeBBerwEdiAubZlIlYQ40k0W1NgAbS7RNjqW', NULL, '2024-05-04 22:14:00', '2024-05-04 22:14:00'),
(4, 'Aissa Ouhadou Sara', 'aissaSara@gmail.com', NULL, '$2y$12$VJowxSdJ23v/qTYSR1RqvO9zU7BfGgRnGb0GDaYAtm6CNIGtE4nF6', NULL, '2024-05-19 11:22:10', '2024-05-19 11:22:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_locations`
--
ALTER TABLE `phone_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone_locations_id_phone_foreign` (`id_phone`);

--
-- Indexes for table `target_locations`
--
ALTER TABLE `target_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target_locations_phone_id_foreign` (`phone_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `phone_locations`
--
ALTER TABLE `phone_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `target_locations`
--
ALTER TABLE `target_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phone_locations`
--
ALTER TABLE `phone_locations`
  ADD CONSTRAINT `phone_locations_id_phone_foreign` FOREIGN KEY (`id_phone`) REFERENCES `phones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `target_locations`
--
ALTER TABLE `target_locations`
  ADD CONSTRAINT `target_locations_phone_id_foreign` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
