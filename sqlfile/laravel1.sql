-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 02:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(35, '0001_01_01_000000_create_users_table', 1),
(36, '0001_01_01_000001_create_cache_table', 1),
(37, '0001_01_01_000002_create_jobs_table', 1),
(38, '2024_07_01_005137_students_table', 1),
(39, '2024_07_03_002424_add_student_image_field', 2),
(40, '2024_07_03_023155_add_student_image_field', 3);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rA2zj8kcvZ2rT4BMRDdn2JIxlsEx5YsLB6nuDy7B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUEpkUFhyQ2s5THdPRUs1S1ZFSWUwZUtLc1lzdDVYOHYyNjFSY1A3WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1719987625);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `gender`, `age`, `email`, `created_at`, `updated_at`, `student_image`) VALUES
(1, 'Craig', 'Towne', 'Female', '18', 'julius.gorczany@example.com', '2024-06-30 17:10:59', '2024-07-02 19:19:46', 'png-transparent-pink-cross-stroke-ink-brush-pen-red-ink-brush-ink-leave-the-material-text_1719976786.png'),
(2, 'Hobart', 'Franecki', 'Female', '21', 'dgerlach@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(3, 'Reagan', 'Schinner', 'Female', '18', 'maxine58@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(4, 'Sarah', 'Konopelski', 'Female', '22', 'dianna10@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(5, 'King', 'Jenkins', 'Female', '20', 'fschmeler@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(6, 'Kaleigh', 'Hayes', 'Female', '18', 'ddeckow@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(7, 'Walker', 'Boyer', 'Female', '20', 'dach.kaela@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(8, 'Stefan', 'Schinner', 'Female', '19', 'spfannerstill@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(9, 'Erich', 'Leuschke', 'Male', '22', 'greg.fahey@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(10, 'Milford', 'Romaguera', 'Male', '20', 'federico66@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(11, 'Carlo', 'Goyette', 'Male', '18', 'brice65@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(12, 'Sandrine', 'Hilpert', 'Female', '18', 'diana.mcglynn@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(13, 'Brooklyn', 'Nolan', 'Male', '22', 'madilyn.crooks@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(14, 'Brannon', 'Lehner', 'Male', '19', 'carolina.maggio@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(15, 'Perry', 'Rolfson', 'Female', '19', 'vmosciski@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(16, 'Kay', 'Cummerata', 'Male', '19', 'waufderhar@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(17, 'Clifton', 'Steuber', 'Female', '19', 'guadalupe84@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(18, 'Domenica', 'Larson', 'Male', '18', 'malachi.pfannerstill@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(19, 'Jacques', 'Senger', 'Male', '20', 'moshe72@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(20, 'Hattie', 'Gusikowski', 'Female', '21', 'heidenreich.hal@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(21, 'Clotilde', 'Lebsack', 'Male', '20', 'ozieme@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(22, 'Elody', 'Lynch', 'Female', '20', 'kautzer.fabian@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(23, 'Kristin', 'Berge', 'Male', '20', 'lavon.purdy@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(24, 'Mabel', 'Padberg', 'Male', '22', 'achamplin@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(25, 'Christopher', 'Schulist', 'Female', '21', 'frida28@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(26, 'Einar', 'Wilkinson', 'Male', '22', 'wilber.wintheiser@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(27, 'Luella', 'Leffler', 'Female', '22', 'eddie.davis@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(28, 'Thalia', 'Gerhold', 'Male', '19', 'estel.parisian@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(29, 'Vernice', 'Hammes', 'Male', '21', 'beier.dangelo@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(30, 'Kenya', 'Wisozk', 'Male', '21', 'mstark@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(31, 'Aileen', 'Halvorson', 'Male', '21', 'nitzsche.keaton@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(32, 'Aileen', 'Robel', 'Male', '18', 'tconroy@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(33, 'Rowan', 'Davis', 'Female', '22', 'kcollier@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(34, 'Aimee', 'Gutmann', 'Male', '20', 'matt.mcclure@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(35, 'Gunnar', 'Bruen', 'Female', '18', 'ischamberger@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(36, 'Faye', 'West', 'Male', '20', 'clementine27@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(37, 'Dalton', 'Moen', 'Male', '22', 'csawayn@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(38, 'Randy', 'Paucek', 'Male', '19', 'jasmin01@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(39, 'Candelario', 'Pouros', 'Female', '22', 'ernser.isabelle@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(40, 'Eldon', 'Doyle', 'Female', '22', 'naomie59@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(41, 'Zander', 'Hyatt', 'Female', '19', 'harold.mills@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(42, 'Alena', 'Herzog', 'Male', '22', 'pnitzsche@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(43, 'Erin', 'Boyle', 'Male', '22', 'ernser.rachel@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(44, 'Davon', 'Murphy', 'Male', '18', 'mschinner@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(45, 'Wilhelmine', 'Bergnaum', 'Male', '22', 'dayton.medhurst@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(46, 'Gina', 'Ryan', 'Female', '20', 'shaniya60@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(47, 'Annalise', 'Conroy', 'Male', '21', 'white.elizabeth@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(48, 'Bell', 'Rolfson', 'Male', '22', 'reanna00@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(49, 'Cristina', 'Crooks', 'Male', '18', 'bayer.tabitha@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(50, 'Jack', 'Sawayn', 'Male', '21', 'luettgen.emerson@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(51, 'Bertrand', 'Senger', 'Female', '21', 'monique.stanton@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(52, 'Juanita', 'Okuneva', 'Male', '21', 'mara.monahan@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(53, 'Albina', 'Green', 'Male', '20', 'ferne92@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(54, 'Jeanie', 'Fisher', 'Female', '22', 'xmann@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(55, 'Toby', 'Lemke', 'Male', '19', 'antonio02@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(56, 'April', 'Padberg', 'Male', '22', 'acollier@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(57, 'Ivah', 'Kunze', 'Female', '20', 'elza.abernathy@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(58, 'Gene', 'Nader', 'Female', '18', 'krystal14@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(59, 'Penelope', 'Kuvalis', 'Female', '21', 'stoltenberg.clotilde@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(60, 'Lexie', 'Hammes', 'Female', '22', 'pherman@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(61, 'Wilfred', 'Padberg', 'Female', '19', 'claudine04@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(62, 'Waino', 'Funk', 'Male', '22', 'prosacco.johan@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(63, 'Amira', 'Cummings', 'Female', '21', 'rowe.clara@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(64, 'Cora', 'Mueller', 'Male', '18', 'miller.abagail@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(65, 'Madeline', 'Murray', 'Male', '20', 'zulauf.chelsea@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(66, 'Rodger', 'Lesch', 'Male', '18', 'litzy50@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(67, 'Dianna', 'Glover', 'Female', '22', 'langworth.ruth@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(68, 'Kyra', 'Morar', 'Female', '20', 'marlen74@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(69, 'Douglas', 'Wilkinson', 'Male', '21', 'nathen01@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(70, 'Spencer', 'Price', 'Female', '20', 'lance00@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(71, 'Fay', 'Rolfson', 'Male', '18', 'elyssa.reilly@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(72, 'Queenie', 'Koelpin', 'Female', '22', 'jay27@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(73, 'Ladarius', 'Bailey', 'Male', '22', 'qtorp@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(74, 'Remington', 'Davis', 'Male', '21', 'peter95@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(75, 'Danial', 'Kunde', 'Female', '19', 'sroberts@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(76, 'Leta', 'Jakubowski', 'Female', '21', 'hhauck@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(77, 'Reuben', 'Marvin', 'Male', '20', 'armando.keebler@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(78, 'Caleb', 'Nitzsche', 'Female', '18', 'maryse.considine@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(79, 'Demarcus', 'Ruecker', 'Male', '21', 'van58@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(80, 'Minnie', 'Hartmann', 'Female', '21', 'okon.lorna@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(81, 'Natalie', 'Smitham', 'Female', '22', 'koch.david@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(82, 'Darren', 'Davis', 'Female', '22', 'alvis.haley@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(83, 'Wilfrid', 'Mayer', 'Male', '22', 'goyette.salma@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(84, 'Katlynn', 'Lesch', 'Female', '22', 'mroberts@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(85, 'Bettye', 'Stanton', 'Female', '21', 'jacinthe79@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(86, 'Reggie', 'Leannon', 'Female', '22', 'angela28@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(87, 'Estella', 'Wolf', 'Female', '19', 'bethany87@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(88, 'Adalberto', 'Gorczany', 'Male', '20', 'leanna.hills@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(89, 'Lane', 'McKenzie', 'Male', '19', 'bert79@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(90, 'Hilario', 'Rath', 'Male', '18', 'valerie.bogan@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(91, 'Estella', 'Pfeffer', 'Male', '22', 'kayden61@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(92, 'Tina', 'Farrell', 'Female', '21', 'vkuhlman@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(93, 'Sylvan', 'Ledner', 'Male', '20', 'bprohaska@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(94, 'Kelton', 'Schoen', 'Male', '21', 'mossie61@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(95, 'Rosalee', 'Kassulke', 'Male', '20', 'herbert.mann@example.com', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(96, 'Lavinia', 'Corkery', 'Female', '19', 'hermina.russel@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(97, 'Ewald', 'Homenick', 'Male', '22', 'swift.stanley@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(98, 'Kyra', 'Wolff', 'Female', '18', 'sienna23@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(99, 'Althea', 'Schroeder', 'Male', '18', 'aiden.kuhn@example.net', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(100, 'Amber', 'Satterfield', 'Female', '19', 'udeckow@example.org', '2024-06-30 17:10:59', '2024-06-30 17:10:59', NULL),
(103, 'Janel', 'Lariba', 'Female', '21', 'janellaribar@gmail.com', '2024-07-01 23:29:33', '2024-07-02 19:34:31', 'janel lariba_1719977671.jpg'),
(104, 'Allyana', 'Cruz', 'Male', '20', 'allyanacruz@gmail.com', '2024-07-02 20:20:35', '2024-07-02 20:21:35', 'yana_1719980495.jpg'),
(105, 'Adrianne', 'Bagadiong', 'Male', '21', 'addybagadiong@gmail.com', '2024-07-02 20:38:45', '2024-07-02 20:39:30', 'addy_1719981570.PNG');

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
(1, 'Liam Aufderhar', 'carissa.johns@example.com', '2024-06-30 17:10:58', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'Mr0njW2q6n', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(2, 'Dr. Ericka Lueilwitz DDS', 'crawford.hegmann@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'QcLXhOBKgu', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(3, 'Alejandrin Stoltenberg', 'sonia44@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'b1nSlGmiST', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(4, 'Carter Jast', 'andre.veum@example.com', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'uSOK4u5Etz', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(5, 'Damian Dietrich', 'hheathcote@example.org', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'ogcn8zTaQM', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(6, 'Natalie Walter', 'xskiles@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'vxaysg3O0q', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(7, 'Devan Kemmer', 'lfunk@example.com', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'rIIe5uDspD', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(8, 'Prof. Dallin Schmidt', 'jerel50@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'q29mcfYFun', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(9, 'Tremaine Schowalter', 'gorczany.judy@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'yuMZ1UNo5C', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(10, 'Billy Hane', 'karine.franecki@example.net', '2024-06-30 17:10:59', '$2y$12$ssW9SzcblkPGBXtPd1znR.LQVVQwhgI4H7ilIqZbxy00Q6mN92uYa', 'NNIjBdCct0', '2024-06-30 17:10:59', '2024-06-30 17:10:59'),
(12, 'Aaron Alcuizar', 'aaron.alcuizar@gmail.com', NULL, '$2y$12$yIF1DIuIeQsYTKMxp2xsv.fFOv44ZXuSoCP1eBBEwjq5k6Fz8SgzC', NULL, '2024-07-01 16:31:16', '2024-07-01 16:31:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
