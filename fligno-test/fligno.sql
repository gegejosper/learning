-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2019 at 12:20 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fligno`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactnum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `usertype`, `address`, `profileimage`, `contactnum`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Colten Wiza', 'cortney77@example.org', 'mcclure.zelma', 'member', 'Aurora', 'profile.jpg', '9000000', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:31:48'),
(2, 'Mr. Furman Fahey DDS', 'alanis10@example.net', 'buck.hettinger', 'member', '450 Levi Greens\nNorth Haleigh, WA 48564-5291', 'profile.jpg', '+1813075244571', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(3, 'Cornelius Welch', 'tremaine12@example.org', 'grant.astrid', 'member', '529 Lakin Oval\nMohrton, WI 38612-4559', 'profile.jpg', '+9915588348993', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(4, 'Percy Medhurst', 'fkoch@example.com', 'mgleichner', 'member', '8962 Mireille Groves\nSouth Reyna, LA 54811', 'profile.jpg', '+1900041992107', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(5, 'Cruz Adams', 'max98@example.com', 'ibeatty', 'member', '77471 Koepp Keys\nLake Seanbury, CT 66586-6939', 'profile.jpg', '+8488064363699', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(6, 'Braden Gerhold', 'shill@example.net', 'dare.magnolia', 'member', '49407 Andre Stream\nNew Larissa, AK 23115-5477', 'profile.jpg', '+2102434407611', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(7, 'Prof. Elaina Skiles', 'lokeefe@example.org', 'carson.schuppe', 'member', '89051 Willms Pine Suite 801\nSouth Niko, IL 32482', 'profile.jpg', '+3659965067232', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(8, 'Prof. Joany Kemmer DVM', 'tito81@example.org', 'pacocha.alverta', 'member', '2380 Fritsch Greens\nGoodwinbury, MA 71501-1719', 'profile.jpg', '+8519915902526', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(9, 'Kylie Schowalter', 'gkautzer@example.org', 'sauer.delores', 'member', '32504 Guido Pike Apt. 228\nBertrandchester, SD 20190-4771', 'profile.jpg', '+4148852531911', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(10, 'Citlalli Haag', 'favian42@example.com', 'nbrekke', 'member', '498 Fahey Field Suite 362\nKilbackfort, VT 20701-9756', 'profile.jpg', '+7335413978519', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(11, 'Mae Buckridge', 'lacy.schamberger@example.org', 'vfeeney', 'member', '621 Bechtelar Stravenue\nPort Dion, OK 43311', 'profile.jpg', '+7609530090517', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(12, 'Duane Sipes', 'darron.abernathy@example.com', 'sydnie.prohaska', 'member', '4125 Domingo Dale\nSterlingfort, SC 17865', 'profile.jpg', '+4296450491206', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(13, 'Gina Connelly', 'kathryne.shields@example.net', 'gislason.mackenzie', 'member', '58486 Forrest Crest Suite 781\nAmeliaburgh, CT 14312', 'profile.jpg', '+3567705227924', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(14, 'Miss Clara Treutel MD', 'eichmann.rashawn@example.net', 'scruickshank', 'member', '6921 Mustafa Island Suite 769\nPort Destinmouth, NM 25021', 'profile.jpg', '+9094564748146', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(15, 'Ray Zieme', 'oquitzon@example.org', 'qkozey', 'member', '13005 Carmen Heights\nMurazikborough, PA 07809', 'profile.jpg', '+7538637736391', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(16, 'Rosetta Schaden', 'kfriesen@example.org', 'kimberly14', 'member', '966 Geo Run\nPort Francescaburgh, GA 87746-2065', 'profile.jpg', '+7257798096414', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(17, 'Zena Rath', 'kristopher.block@example.org', 'may.hill', 'member', '40640 Kira Hill\nSouth Augustashire, AK 13267-9023', 'profile.jpg', '+5766918846616', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(18, 'Mr. Cristina Legros DVM', 'stehr.victor@example.net', 'hettinger.madisen', 'member', '85761 Tyra Junctions Apt. 196\nWest Carmen, AZ 60666', 'profile.jpg', '+5076913063992', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(19, 'Donavon Smitham', 'murray.cedrick@example.com', 'rosetta32', 'member', '25429 Princess Isle Apt. 218\nWest Jerel, MA 72325', 'profile.jpg', '+3540443995709', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(20, 'Lizzie Deckow', 'randall.lehner@example.net', 'ysatterfield', 'member', '607 Hahn Groves Apt. 396\nLake Shaynemouth, MI 84614', 'profile.jpg', '+5064641637384', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(21, 'Rubye Reilly', 'pfannerstill.emanuel@example.net', 'icasper', 'member', '97350 Orval Landing\nMitchellside, GA 69759-4310', 'profile.jpg', '+9347533540528', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(22, 'Cornell Schaefer', 'oren.konopelski@example.org', 'senger.ernest', 'member', '914 Berry Path\nNorth Brando, NM 68408', 'profile.jpg', '+7480702282633', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(23, 'Clementina Walker', 'ashields@example.com', 'funk.enrique', 'member', '53259 O\'Hara Parkways Suite 420\nNew Narciso, IL 43152', 'profile.jpg', '+1565433611665', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(24, 'Nicolas Feil DDS', 'xvolkman@example.org', 'hegmann.libby', 'member', '78025 Carolanne Glens\nEast Gennaro, ID 56336-0997', 'profile.jpg', '+8785271797886', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(25, 'Kayley Grant', 'fay90@example.com', 'robyn93', 'member', '8057 Trystan Crest\nLinneachester, UT 95395', 'profile.jpg', '+6730839868887', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(26, 'Deanna Kovacek', 'gorczany.eldon@example.net', 'graham.vallie', 'member', '75834 Claudie Crescent\nKoeppside, AR 41032', 'profile.jpg', '+7023170199445', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(27, 'Emanuel Hilpert', 'dorthy77@example.org', 'jerome18', 'member', '37092 Dee Route Suite 076\nHettieburgh, WA 16206', 'profile.jpg', '+3973974098486', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(28, 'Stephan Hoppe', 'vdooley@example.com', 'eichmann.rupert', 'member', '97550 Martina Fort\nNorth Marques, MA 28615-6360', 'profile.jpg', '+9618174734740', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(29, 'Jany Adams', 'amely77@example.com', 'xdurgan', 'member', '85004 McKenzie Radial Suite 290\nKatherynfort, AL 88738-1869', 'profile.jpg', '+7608247519057', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(30, 'Jaylin DuBuque', 'dion62@example.com', 'luigi.abernathy', 'member', '5886 Lesch Ridges\nSouth Eunice, MO 26723', 'profile.jpg', '+7365274351371', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(31, 'Arnold Streich', 'herman.lavinia@example.com', 'swolff', 'member', '7701 Jasper Station\nPort Van, VT 45697', 'profile.jpg', '+8780457982913', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(32, 'Maggie Rice', 'ybotsford@example.com', 'royce.collier', 'member', '57764 Cathy Villages Apt. 578\nNorth Evalyn, OR 12868-7907', 'profile.jpg', '+4557125583757', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(33, 'Kaleb Ferry DDS', 'fwhite@example.com', 'haley.braun', 'member', '7284 Jacynthe Branch Apt. 651\nNew Cale, WA 18410-2925', 'profile.jpg', '+3610402786146', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(34, 'Kay Bayer', 'rollin49@example.org', 'hudson.wilma', 'member', '956 Bosco Harbors Suite 967\nSouth Catalinatown, GA 88058', 'profile.jpg', '+6705373974222', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(35, 'Abel Walter', 'elwin.kuvalis@example.net', 'zbotsford', 'member', '23460 Raleigh Lock Apt. 029\nEast Dangelofort, NM 71966', 'profile.jpg', '+1483446752089', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(36, 'Arielle Stoltenberg', 'felicita.denesik@example.org', 'theron07', 'member', '92226 Buckridge Forest\nPort Leilaniburgh, OR 64497', 'profile.jpg', '+4581593349763', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(37, 'Nickolas Parisian PhD', 'fbrekke@example.com', 'kunde.lavinia', 'member', '98801 Sauer Ranch Apt. 015\nNorth Dino, NH 11309', 'profile.jpg', '+9641371066718', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(38, 'Jacey Reichel', 'leannon.jackie@example.net', 'madge07', 'member', '113 Cullen Road Suite 905\nSouth Burdette, UT 03653-5796', 'profile.jpg', '+1357297320940', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(39, 'Luis Zulauf DDS', 'ngleason@example.net', 'nicola.jenkins', 'member', '74938 Hills Haven Apt. 718\nMabelchester, LA 69015-9036', 'profile.jpg', '+4623833801288', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(40, 'Mr. Chauncey Altenwerth II', 'chaim.schuppe@example.net', 'jmcglynn', 'member', '489 Newell Walks\nJonesshire, WA 54028-6972', 'profile.jpg', '+3717896432630', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(41, 'Imani Wilkinson', 'cbruen@example.net', 'bjacobson', 'member', '4236 Armstrong Plaza Apt. 104\nWest Buddy, DE 84156', 'profile.jpg', '+6256903889096', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(42, 'Mireille Zemlak I', 'nienow.edwin@example.net', 'vkonopelski', 'member', '59268 Dameon Lock\nIsidroside, FL 48407-6215', 'profile.jpg', '+9900635695544', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(43, 'Rene Kunze', 'damore.hallie@example.com', 'ublick', 'member', '447 Lubowitz Divide Suite 160\nMarlenetown, ID 76513-5613', 'profile.jpg', '+9330712537354', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(44, 'Terrance Hoeger', 'nelle.stroman@example.net', 'domenic.bergstrom', 'member', '994 Derick Union\nMosheside, MI 95152', 'profile.jpg', '+2748944301790', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(45, 'Colin Friesen', 'lakin.pietro@example.net', 'ooconnell', 'member', '470 Zulauf Streets\nKlingstad, WV 55120', 'profile.jpg', '+8724881458105', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(46, 'Prof. Keven Koepp', 'dcollins@example.org', 'bode.myrtice', 'member', '364 Graham Curve Apt. 306\nNorth Viviane, AL 29656', 'profile.jpg', '+6281652874581', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(47, 'Dr. Arianna Stiedemann II', 'okuneva.alene@example.net', 'rogers.kunze', 'member', '20086 Harris Crossing Apt. 597\nLake Vena, DE 43591', 'profile.jpg', '+1533855803409', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(48, 'Sid Hegmann', 'carlie87@example.net', 'dcrooks', 'member', '96973 Desmond Estate\nKuhlmanside, WA 27073-3854', 'profile.jpg', '+1466550146606', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(49, 'Prof. Alex Bechtelar', 'ottis66@example.net', 'caterina.upton', 'member', '11809 Clint Bypass Apt. 357\nPricemouth, IN 59198', 'profile.jpg', '+7129289578468', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(50, 'Quinton Halvorson', 'anna16@example.com', 'aron74', 'member', '8417 Steuber Tunnel\nStromanhaven, AL 63318-5661', 'profile.jpg', '+9930598436395', '2019-06-24 10:18:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2019-06-24 18:18:05', '2019-06-24 10:18:05', '2019-06-24 10:18:05'),
(53, 'Gegejosper Ceniza', 'gegejosper@gmail.com', 'gege', 'admin', 'Aurora', '1561400815.png', '0909000', NULL, '$2y$10$WF0wtLsm2ym79edt1Q5F0eYhKXWLCmjuVKHvlQ0oxFyS.gXvf.w4y', NULL, '2019-06-24 10:25:23', '2019-06-24 10:26:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
