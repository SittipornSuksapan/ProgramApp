-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2018 at 10:39 AM
-- Server version: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ziamthai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `zzz_admin_client_access`
--

CREATE TABLE `zzz_admin_client_access` (
  `access_user_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `access_user_id` int(11) NOT NULL DEFAULT '0',
  `access_user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_login_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `access_login_agent` text COLLATE utf8_unicode_ci,
  `access_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_last_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_last_agent` text COLLATE utf8_unicode_ci,
  `access_last_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_admin_client_access`
--

INSERT INTO `zzz_admin_client_access` (`access_user_key`, `access_user_id`, `access_user_name`, `access_login_time`, `access_login_agent`, `access_login_ip`, `access_last_time`, `access_last_agent`, `access_last_ip`) VALUES
('03e68b83994a678bac80422d9c1077ba', 2, 'User ', '1492485270', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492485270', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('092a4c54326d074bc76fbb488be9677f', 4, 'Bonsai Administrator', '1491211843', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491211843', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('097cdbc9b1122a3177b17d8f6c679263', 1, 'Administrator', '1491299017', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491299017', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('1265fd11303e9ba532877e58b5a612dc', 3, 'Dokbua Administrator', '1493882802', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1493951563', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('16cb983024b3ab2d6908c6b4c4a8c0de', 3, 'Dokbua Administrator', '1493264932', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493277688', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('16e51dc2065c530bb517dd41c4afcb19', 2, 'Ziamthai Admin', '1493278829', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493278829', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('1b2bf0040d25b3a56ce21a705f92191a', 2, 'User ', '1492533314', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.104', '1492533314', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.104'),
('1c30b61992ca87db8008eeedc42bcda0', 3, 'Dokbua Administrator', '1493026562', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493026562', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('1d1a8705fe491c9ec1d814f59a02dd71', 2, 'Ziamthai Admin', '1493181013', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493181013', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('240ac37549c661e1ed80284dc8c4beeb', 3, 'Dokbua Administrator', '1492484177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492484177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('26076bf8a152fea2d5c3cbae08d952f6', 3, 'Dokbua Administrator', '1494397613', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494472142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('285dfb5280d3bcc91cfe34396ff81cc9', 3, 'Dokbua Administrator', '1492483606', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492513686', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('2958c80267198d51c835423c862f2768', 3, 'Dokbua Administrator', '1491903181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491903181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('2a34a2c089ca9093ef1116a37fcc150a', 3, 'Dokbua Administrator', '1494472174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494472174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('2a48dac3a8f516f1dc18b7d042004fe7', 3, 'Dokbua Administrator', '1490882441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.133.134', '1490882441', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.133.134'),
('2f5c2e007371bd08248418d632509efa', 2, 'User ', '1491304194', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491304194', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('32e9c3c9bcae46eef7750dc1d6377c8b', 3, 'Dokbua Administrator', '1494579802', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494579802', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('396cb972882d5e75e22cd2ca18279c75', 2, 'Ziamthai Admin', '1493106343', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493106343', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('3afc3e04d11e93f454709607cc725e58', 2, 'Ziamthai Admin', '1494565232', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494565232', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('3d10f8ef8af39d59b9ee255bc53baa13', 2, 'User ', '1492770793', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492770793', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('400b255625046fd6c63e9697d5bd15f0', 2, 'Ziamthai Admin', '1494487507', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494487507', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('40d1994f74af6861f44f618c333a4494', 2, 'User ', '1492663761', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492663761', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('450adbeed71935ce629b68cb4101de3c', 2, 'User ', '1492509110', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492509110', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('46e2073da9b04e378192ca65141c89b7', 5, 'Khunkay Administrator', '1491297978', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491297978', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('49920fc094ced13a6f31ee56e1ee2c50', 3, 'Dokbua Administrator', '1491468438', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491468438', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('4add25130714645d7524089b6d0ec9f8', 3, 'Dokbua Administrator', '1493372622', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493372622', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('4b5621f7411d4eb49b6f53b9b4154853', 3, 'Dokbua Administrator', '1491402137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '182.52.129.156', '1491402137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '182.52.129.156'),
('4bf4cb109d1f84ddce5a93537828b28d', 3, 'Dokbua Administrator', '1490848301', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490926392', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('55f3e57da507d74908750633f8943593', 3, 'Dokbua Administrator', '1491206631', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491206631', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('5cdb153547dc04a1b77dfed5cbe754d9', 3, 'Dokbua Administrator', '1491895474', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491895474', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('5f96a59234c29a24e12f51b2d646fbca', 3, 'Dokbua Administrator', '1491300992', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491300992', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('5fe59ff722cedba77d0de7073e340b84', 3, 'Dokbua Administrator', '1491529385', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491547703', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('622893b055edbba36a9a9b5b41ab0346', 2, 'Ziamthai Admin', '1493265351', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493265351', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('6419c459e275c7ef8717e0bda808d36d', 2, 'User ', '1492499620', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492499620', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('6766ab6b509a52e0ef013dcd9355f343', 3, 'Dokbua Administrator', '1491100534', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.8.82.92', '1491100534', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.8.82.92'),
('6a3942bd2c70f1041f355095b346f6e3', 2, 'Ziamthai Admin', '1493006087', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493006087', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('6cf632620ecceb113f6940026429261b', 5, 'Khunkay Administrator', '1491289577', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491289577', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('73cfc87eda593b0e5e6b6782e1310eab', 2, 'User ', '1491448534', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491448534', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('7698907fd107b3188c9796c54a3fc97d', 2, 'User ', '1491299146', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491299146', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('7d2dc9dcdf181613efd772092759bb0d', 2, 'Ziamthai Admin', '1493361745', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493361745', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('7f9f64ff3cdcc035c8f43b14883f46ce', 3, 'Dokbua Administrator', '1490958566', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8', '58.9.70.93', '1490958566', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8', '58.9.70.93'),
('7ff1e21404d9c1ad08d4695db5a24b20', 3, 'Dokbua Administrator', '1491884159', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491895327', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('813f54806dd1533faeab9b8ac0e1e2c6', 3, 'Dokbua Administrator', '1494914776', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494914776', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('81844e9834171ab44994dfa12307a099', 2, 'User ', '1491365759', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491365759', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('874d81557988a06ac1ab3a5cad240609', 3, 'Dokbua Administrator', '1490861392', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.133.134', '1490861392', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.133.134'),
('8bb3ce4edb4803bc0c2892a54bf67dc6', 3, 'Dokbua Administrator', '1494907303', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494907303', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('90217c284146c0e695642e36e74f41c1', 3, 'Dokbua Administrator', '1492014095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.127', '1492014095', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.127'),
('94453df41dbdda3ad196c58b8260425c', 3, 'Dokbua Administrator', '1491796151', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491796151', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('9b2911e80fedad63cd1c9d367be9cd65', 3, 'Dokbua Administrator', '1494578007', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494578007', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('9de6ba4d8560cc721e2219ed50d0ceab', 2, 'Ziamthai Admin', '1493197737', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493197737', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('a10bd579d2310a3035385280a764ac75', 2, 'User ', '1491966257', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491966257', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('a762f3dd862d48661ac5f2fa2487782c', 3, 'Dokbua Administrator', '1494835002', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494835002', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('aa465e436de493de436db464b8c38b91', 2, 'Ziamthai Admin', '1492774288', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492774412', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('ad59c12e33a42818266a29344d0971df', 3, 'Dokbua Administrator', '1491131866', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '223.24.138.12', '1491131866', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '223.24.138.12'),
('b01e5f95eeb6a381dfde788c44f8c6d1', 3, 'Dokbua Administrator', '1494819086', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494819086', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('b25530c12b6498872c405d8799697e46', 3, 'Dokbua Administrator', '1494821600', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494821600', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('b853bd23511009869c1f071f888f321a', 3, 'Dokbua Administrator', '1492594487', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492594487', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('b893a058ef1ddce21e48721924f11bc3', 3, 'Dokbua Administrator', '1493369602', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493369602', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('bc7f27efbf7a7cdba23a108bbe87ba25', 3, 'Dokbua Administrator', '1491235974', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.108.150.177', '1491235974', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.108.150.177'),
('bc8b325a2338a2723028a76429b5f3b2', 3, 'Dokbua Administrator', '1490944243', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490944243', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('bd1360d87f53521a94452654e340e8ba', 3, 'Dokbua Administrator', '1491800474', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491877084', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('bfbca796052b3a73f9e79912750bca16', 3, 'Dokbua Administrator', '1491272087', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491358049', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('c47ffb58eaba0dc8989ccc2dfe93541b', 2, 'User ', '1492014114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.127', '1492014114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.127'),
('c5c30e4333ee6d417229c7b334e9a95c', 2, 'Ziamthai Admin', '1493002966', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493002966', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('c9350c3129df3aa91ac9ee2c935a92a2', 2, 'Ziamthai Admin', '1494497138', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494497138', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('ccae02708cb0163134e707e248ec395d', 3, 'Dokbua Administrator', '1493794191', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1493809088', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('cd143da96c8aba5ee19cb067ada4e3e2', 3, 'Dokbua Administrator', '1494302330', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494302330', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('cd19de0096d23942de81497186b210a7', 5, 'Khunkay Administrator', '1491278920', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491278920', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('cf9aa1a976d5244c5b5391ce1a14e127', 3, 'Dokbua Administrator', '1491905832', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491905832', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('d020acabd1844753dea809af92520916', 2, 'User ', '1492576568', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492585042', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('d1bdb5dc292a4c14397be4c829312e20', 2, 'User ', '1491796505', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491796505', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('d2bd0a2cc5baaadbe1e8a371a849c5b1', 3, 'Dokbua Administrator', '1491272585', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '27.55.106.45', '1491348443', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '223.24.19.221'),
('d2c3214852517c70f8b2e242646b2594', 2, 'User ', '1491923536', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.133.107', '1492005854', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.127'),
('d4feebeafdb7d257e1ec913e60f99ecb', 3, 'Dokbua Administrator', '1491373341', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491447013', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('d5036662b0b4a40a521f4617aacf0e3f', 3, 'Dokbua Administrator', '1493273317', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '58.9.70.93', '1493273317', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '58.9.70.93'),
('d75d6b6d2b2081af0903bfddef382f3e', 2, 'Ziamthai Admin', '1493347648', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493347648', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('d86a497081fb36e6cedbc42be0033c94', 3, 'Dokbua Administrator', '1494678163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '113.53.146.205', '1494688318', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '113.53.146.205'),
('d937b765733d880447f4becbd6b26e88', 2, 'User ', '1491878169', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491894090', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('da61145dc5e2b5d8bc1ce82afe3dc4c3', 3, 'Dokbua Administrator', '1492682951', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492760880', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('dc569262f8c4baada1d07e206fd08e24', 3, 'Dokbua Administrator', '1491531281', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491531281', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('decb5a2d31975779cb81ed23ebdb2115', 3, 'Dokbua Administrator', '1490929969', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490929969', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('e0ec238d74b53b9266c64e303db0a6de', 5, 'Khunkay Administrator', '1491211881', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1491211881', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('e51f5ad53b06cfb9da4acdb888ef8c8c', 3, 'Dokbua Administrator', '1494497169', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494497169', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('e8fe920303910c4cc8936edc8a7f157b', 3, 'Dokbua Administrator', '1491493115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.213', '1491493115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.217.213'),
('e95977bbe268bf454c532b84b2d8abe7', 2, 'Ziamthai Admin', '1493177454', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493177454', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('ed884396d06b9fd5ef9eb308ad1965b2', 2, 'Ziamthai Admin', '1494563182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494563182', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('ee85effbc0be534b2d92b44671b757a3', 3, 'Dokbua Administrator', '1494836285', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494836285', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('f66673d8a058fdfe55397c1473c20e5b', 3, 'Dokbua Administrator', '1490929854', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '223.24.16.14', '1490974579', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '27.55.64.105'),
('f7c6c46364b028e2bc385b61edc3a1e2', 3, 'Dokbua Administrator', '1494574215', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494574215', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_admin_client_user`
--

CREATE TABLE `zzz_admin_client_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` set('admin','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `user_forget_quest` text COLLATE utf8_unicode_ci NOT NULL,
  `user_forget_pass` text COLLATE utf8_unicode_ci NOT NULL,
  `user_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_admin_client_user`
--

INSERT INTO `zzz_admin_client_user` (`user_id`, `user_email`, `user_pass`, `user_name`, `user_type`, `user_forget_quest`, `user_forget_pass`, `user_active`) VALUES
(1, 'a@ziamthai.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'Administrator', 'admin', '', '', 1),
(2, 'user@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Ziamthai Admin', 'client', '', '', 1),
(3, 'dokbua@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Dokbua Administrator', 'client', '', '', 1),
(4, 'bonsai@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Bonsai Administrator', 'client', '', '', 1),
(5, 'khunkay@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Khunkay Administrator', 'client', '', '', 1),
(6, 'admin@ziamthai.com', 'fa376e383626491fb6f3b6b5c06b1c208bba702b', 'Administrator', 'admin', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_admin_panel_user`
--

CREATE TABLE `zzz_admin_panel_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` set('admin','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `user_forget_quest` text COLLATE utf8_unicode_ci NOT NULL,
  `user_forget_pass` text COLLATE utf8_unicode_ci NOT NULL,
  `user_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_admin_panel_user`
--

INSERT INTO `zzz_admin_panel_user` (`user_id`, `user_email`, `user_pass`, `user_name`, `user_type`, `user_forget_quest`, `user_forget_pass`, `user_active`) VALUES
(1, 'a@ziamthai.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'Administrator', 'admin', '', '', 1),
(2, 'user@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'User ', 'client', '', '', 1),
(3, 'dokbua@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Dokbua', 'client', '', '', 1),
(4, 'bonsai@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Bonsai', 'client', '', '', 1),
(5, 'khunkay@ziamthai.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Khunkay', 'client', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_api_access`
--

CREATE TABLE `zzz_api_access` (
  `access_auth_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_client_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_scope` tinytext COLLATE utf8_unicode_ci,
  `access_timeout` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `access_user_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `access_user_agent` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_api_access`
--

INSERT INTO `zzz_api_access` (`access_auth_code`, `access_token_key`, `access_client_id`, `access_scope`, `access_timeout`, `access_user_ip`, `access_user_agent`) VALUES
('027C195B3D49F8E609281445', 'ab58c59e91c7233075f58c977a03157d', '951753-postman', NULL, '1485662647', '58.9.70.218', 'PostmanRuntime/3.0.9'),
('600FE828861FD15FE01259EA', 'c9034ecb956e3314731978bb02d3cbe5', '951753-postman', '', '1485595263', '58.9.70.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Postman/4.9.3 Chrome/53.0.2785.143 Electron/1.4.12 Safari/537.36'),
('7FEC1F4182D77BE4FD650E9D', '27e5c2ca097011378c774e1ca12d1762', '951753-postman', '', '1485663373', '58.9.70.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Postman/4.9.3 Chrome/53.0.2785.143 Electron/1.4.12 Safari/537.36'),
('AC7E8C243C268394C90A904D', 'baa6c56fcad806eedb94f7ae2d390eae', '951753-postman', NULL, '1485663573', '58.9.70.218', 'PostmanRuntime/3.0.9'),
('D44634DF19EFB3DE40B45840', 'ba5fa40f5f2fe749f9b785dc8db3b90c', '951753-postman', NULL, '1485663571', '58.9.70.218', 'PostmanRuntime/3.0.9'),
('D52BE5A42E9810B81E7DF8FA', 'd50385503f2e65dcf7df1a7d7ea9d2fd', '951753-postman', '', '1485663362', '58.9.70.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Postman/4.9.3 Chrome/53.0.2785.143 Electron/1.4.12 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_api_client`
--

CREATE TABLE `zzz_api_client` (
  `client_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `client_domain` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_api_client`
--

INSERT INTO `zzz_api_client` (`client_id`, `client_name`, `client_secret`, `client_domain`) VALUES
('951753-postman', 'Postman Tester', '5dsf4g5daFgSh6s2d14tg12sdfg1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_article_category`
--

CREATE TABLE `zzz_article_category` (
  `artc_id` int(10) UNSIGNED NOT NULL,
  `atrc_bsth_id` int(10) UNSIGNED NOT NULL,
  `artc_pid` int(10) UNSIGNED NOT NULL COMMENT 'parent Id',
  `atrc_name` text COLLATE utf8_unicode_ci NOT NULL,
  `atrc_desc` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_article_header`
--

CREATE TABLE `zzz_article_header` (
  `arth_id` int(10) UNSIGNED NOT NULL,
  `arth_artc_id` int(10) UNSIGNED NOT NULL,
  `arth_title` text COLLATE utf8_unicode_ci NOT NULL,
  `arth_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arth_memh_id` int(11) NOT NULL,
  `arth_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `arth_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_article_promote`
--

CREATE TABLE `zzz_article_promote` (
  `artp_id` int(10) UNSIGNED NOT NULL,
  `artp_arth_id` int(10) UNSIGNED NOT NULL,
  `artp_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `artp_start` date NOT NULL DEFAULT '2016-01-01' COMMENT 'promote start',
  `artp_finish` date NOT NULL DEFAULT '2017-01-01' COMMENT 'promote stop'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_blog`
--

CREATE TABLE `zzz_business_blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `highlight` tinytext COLLATE utf8_unicode_ci,
  `tags` tinytext COLLATE utf8_unicode_ci,
  `img_cover` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `shop_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `c_uid` int(11) NOT NULL DEFAULT '0',
  `c_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_date` datetime DEFAULT NULL,
  `m_uid` int(11) NOT NULL DEFAULT '0',
  `m_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_blog`
--

INSERT INTO `zzz_business_blog` (`id`, `title`, `content`, `highlight`, `tags`, `img_cover`, `author_name`, `author_url`, `public`, `shop_id`, `shop_name`, `c_ip`, `c_date`, `c_uid`, `c_uname`, `c_ulog`, `m_ip`, `m_date`, `m_uid`, `m_uname`, `m_ulog`) VALUES
(1, 'แกงส้มผักรวมกุ้งสด', '<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-01.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-01.JPG" style="height:164px; width:214px" /></p>\r\n\r\n<p>ใครอยากกินแกงส้มผักรวมบ้างค๊า.า.า...า.า.&nbsp; ยกมือขึ้นเลยจ้า&nbsp; เอ๊าา !! ใครยกมือไว&nbsp; เรามีแถมปลาช่อนแดดเดียวทอด ไว้ให้กินแอ้มกับแกงส้มด้วยน๊า&nbsp; ^__^</p>\r\n\r\n<p>...... ถ้าถามพิมว่าอาหารอะไรที่แม่พิมกับน้องพิมเค้าชอบเหมือน ๆ กัน หนึ่งในนั้นก็คงจะต้องยกให้ &quot;แกงส้ม&quot; เค้าล่ะค่ะ</p>\r\n\r\n<p>สำหรับแม่พิมเนี่ย เวลาเค้าเบื่ออาหาร ไม่รู้ว่าจะกินอะไรดี เค้าก็จะนึกถึงแกงส้มก่อนเป็นอย่างแรกเลยค่ะ&nbsp; เพราะว่าแม่พิมน่ะชอบกินแกงส้มมาก&nbsp; โดยเฉพาะแกงส้มผักบุ้งไทย กินแอ้มกับปลาสลิดหรือปลาช่อนเค็มตัวเล็ก ๆ ทอด .... &nbsp; ถือได้ว่าเป็นกับข้าวชามโปรดของแม่พิมเลยค่ะ&nbsp; ส่วนน้องชายคนเล็กของพิมน่ะ ก็เหมือนๆ ว่าจะติดนิสัยความชอบบางอย่างจากแม่มา เพราะงั้นเวลาเค้าเบื่ออาหาร ไม่รู้จะกินอะไรดี&nbsp; เค้าก็นึกถึงแกงส้มเป็นอย่างแรก ๆ เหมือนกันค่ะ&nbsp; โดยเฉพาะแกงส้มผักบุ้งกับไข่เจียว&nbsp; อันนี้เนี่ยเป็นชามโปรดของเค้าเลยค่ะ&nbsp; หากทำเมื่อไหร่นะ น้องชายพิมจะกินข้าวทีนึงเป็นกาละมังเลยค่า ^^</p>\r\n\r\n<p>เมื่อพูดถึงแกงส้มเนี่ย ... จะว่าไป&nbsp; ถือเป็นอีกอาหารอย่างนึงที่พิมคุ้นเคยมาตั้งแต่เด็ก ๆ เลยนะคะ (ส่วนใหญ่ก็จะคุ้นเคยพวกแกง พวกอะไรที่ไทยๆ นี่แหละค่ะ)&nbsp; เพราะสมัยก่อน ..... อย่างที่พิมเคยบอกเคยเล่าให้ฟัง&nbsp;&nbsp; .... ตอนเด็ก ๆ บ้านพิมอยู่ติดคลองแสนแสบค่ะ&nbsp; แล้วคลองในสมัยก่อนนั้นเนี่ย&nbsp; (สมัยพิมยังเด็กเล็กๆ อ่ะ) น้ำใสในระดับนึงเลยค่ะ&nbsp; ยิ่งช่วงไหนหน้าฝน ฝนตกหนัก&nbsp; น้ำก็จะยิ่งใสมากขึ้น&nbsp; แล้วปลาก็จะเยอะค่ะ ทั้งปลาดุก ปลาหมอ ปลานิล ปลาสลิด ปลาช่อน ปลาตะเพียน ปลาสังฆวาส&nbsp; รวมไปถึงปลาเล็กปลาน้อยต่าง ๆ</p>\r\n\r\n<p>แล้วช่วงนั้นน่ะ ... ที่บ้านพิมจะมีอุปกรณ์หาปลาเยอะมาก&nbsp; หลากหลายชนิดค่ะ .... ก็คนริมคลองสมัยก่อนเน๊าะค่ะ นอกจากทำไร่ทำนาแล้วก็หาปลาเป็นงานอดิเรกหลักอ่ะ ... เพราะงั้นที่บ้านพิมเลยมีทั้งเบ็ดตกปลา เบ็ดทงปลา มีทั้งยอ ทั้งแห ทั้งตาข่าย ทั้งลอบ ทั้งไซ&nbsp; ... แม่พิมซึ่งปลูกผักบุ้งผักกระเฉดขายอยู่ตอนนั้น&nbsp; ช่วงเช้าก่อนจะออกไปจัดการงานนางานไร่&nbsp; ก็เลยมักจะหอบหิ้วเอาอุปกรณ์หาปลาทั้งหลายติดไม้ติดมือไปด้วย&nbsp;&nbsp; พอช่วงว่างจากเก็บผักกระเฉดเก็บผักบุ้ง แม่ก็จะวางข่ายริมคลองบ้าง วางลอบ ทงเบ็ดทิ้งไว้บ้าง&nbsp; หรือไม่ก็หากเด็ดร่มล่มดี ก็จะไปนั่งตกปลาอยู่ใต้ต้นทองหลางต้นใหญ่บ้าง .... ซึ่งพอตกเย็นกลับมา นอกจากแม่จะได้ผักบุ้งผักกระเฉดกลับมาแล้ว&nbsp; แม่ก็ยังจะมีปลาโน่นปลานี่ติดไม้ติดมือกลับมาบ้านด้วยเสมอ ๆ อ่ะค่ะ</p>\r\n\r\n<p>แล้วหนึ่งในเมนูในสมัยนั้นที่แม่พิม ยายพิมมักจะทำให้กินบ่อย ๆ ก็หนีไม่พ้น แกงส้มปลาช่อน-ปลาหมอ ใส่ผักบุ้งผักกระเฉดล่ะค่ะ เรียกว่ากินกันหน้าเป็นผักบุ้ง ตัวเป็นปลาเลยอ่ะ ฮ่ะๆ</p>\r\n\r\n<p>มาวันนี้ ..... ในโอกาสที่ทำแกงส้มกินในวันธรรมดา&nbsp; (ปกติทำแต่วันเสาร์อาทิตย์ค่ะ เพราะถ้าทำวันธรรมดา พิมกินคนเดียว คุณสามีพิมเค้าไม่กินแกงส้มภาคกลางอ่ะ)&nbsp; .... ก็เลยขอแว๊บเอาสูตรกับวิธีทำมาฝากเพื่อน ๆ ในครัวบ้านพิมซะหน่อยค่ะ เผื่อใครทำไม่เป็นแล้วอยากเอาไปเป็นแนวทางเน๊าะค่ะ ^^</p>\r\n\r\n<p>ก่อนอื่นตามธรรมเนียม .. ก็มาดูหน้าตากันก่อนเลยจ้า นี่ค่ะ &quot;แกงส้มผักรวมมิตร ใส่กุ้งสด&quot; ... ฝีมือพิม หน้าตาเป็นงี้เลยน๊า&nbsp; พอใช้ได้ม่ะค่ะ ^^</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-06.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-06.JPG" style="height:539px; width:714px" /><br />\r\n<img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-07.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-07.JPG" style="height:539px; width:714px" /><br />\r\n<img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-09.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-09.JPG" style="height:539px; width:714px" /><br />\r\n<img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-08.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-08.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ดูหน้าตาไปแล้ว ก็มาดูวิธีทำกันเลยดีกว่า ... แต่ก่อนจะไปลงมือทำแกงส้ม&nbsp; ก็มาตำพริกแกงกันไว้ก่อนดีกว่าค่ะ</p>\r\n\r\n<p><strong>:: ส่วนผสมสำหรับตำพริกแกงส้ม (สูตรของที่บ้านพิม) ::</strong></p>\r\n\r\n<p>- หอมแดง 8 หัว<br />\r\n- กระชาย 8 ราก<br />\r\n- พริกแห้งเม็ดใหญ่ป่นหยาบ 3 ชต.&nbsp;<br />\r\n- พริกขี้หนูแห้งป่นหยาบ 1 1/2 ชต.<br />\r\n- กะปิ 1 1/4 ชต.</p>\r\n\r\n<p>ป.ล. สำหรับส่วนผสมที่ใช้ตำพริกแกงส้มของแต่ละบ้านเนี่ย พิมเชื่อว่า &quot;ส่วนใหญ่...จะไม่เหมือนกัน&quot; นะคะ ...&nbsp; บางบ้านก็อาจจะใส่กระเทียมด้วย บางบ้านอาจจะใส่ขา ใส่ตะไคร้ บางบ้านอาจจะใส่ผิวมะกรูดด้วย และบางบ้านอาจจะหนักกะปิ&nbsp; บางบ้านอาจจะไม่ใส่กระชายเหมือนบ้านพิม&nbsp;&nbsp; ...... ก็แล้วแต่สูตรของแต่ละบ้านนะคะ ไม่มีอันไหนถูก ไม่มีอันไหนผิด ... ค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-12.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-12.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ก่อนจะลงมือตำพริกแกงก็มาดูส่วนผสมพริกแกงแต่ละอย่างก่อนนะคะ&nbsp; ..... อย่างแรกคือ หอมแดง ...&nbsp; พิมเลือกใช้หอมแดงของไทยเรานี่แหละค่ะ หัวขนาดประมาณปลายนิ้วหัวแม่มือ/ปลายนิ้วชี้&nbsp; ประมาณ 8 หัวค่ะ&nbsp; (ถ้าหัวเล็กหน่อยก็สัก 10 หัว)&nbsp; ปอกเปลือก ล้างน้ำ แล้วก็หั่นเป็นชิ้นเล็ก ๆ ไว้นะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-13.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-13.jpg" style="height:945px; width:714px" /></p>\r\n\r\n<p>กระชาย .... พิมเลือกใช้กระชายบ้านที่ปลูกเองค่ะ เพราะว่าเค้าจะหอมกว่ากระชายที่ซื้อตามตลาด&nbsp; เนื่องจากไม่ผ่านกระบวนการเร่งให้โต&nbsp; ... ก็เอากระชายมาล้างน้ำให้สะอาด (เอาแต่รากนะคะ หัวไม่เอา)&nbsp; ขูดผิวออกบ้าง แล้วก็หั่นเป็นชิ้นเล็ก ๆ พักไว้ก่อนค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-14.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-14.jpg" style="height:945px; width:714px" /></p>\r\n\r\n<p>ต่อมาก็เป็นพริกแห้งนะคะ .... ใครที่ไม่ค่อยชอบเผ็ด ก็ให้ใช้แต่พริกแห้งเม็ดใหญ่อย่างเดียวก็พอค่ะ&nbsp; (แต่เพิ่มปริมาณเป็นสัก 4 1/2 ชต.)&nbsp; แต่ใครที่ชอบให้แกงส้มเผ็ดหน่อย ๆ อย่างพิม ก็ใส่พริกขี้หนูแห้งผสมไปด้วยนะคะ&nbsp; .. ซึ่งสำหรับพริกทั้งสองอย่างเนี่ย ไม่ต้องคั่วก่อนนะคะ แค่เอาไปตากแดดจัด ๆ ให้กรอบนิดนึง แล้วเอามาโขลกหยาบๆ แบบในภาพไว้ก็ใช้ได้แล้วค่ะ</p>\r\n\r\n<p>ป.ล.&nbsp; สมัยโบราณเค้าจะใช้พริกแห้งเม็ดใหญ่หั่นเป็นชิ้นขนาดกว้างประมาณ 1.5&nbsp; ซม. เอาไปแช่น้ำเปล่าให้นิ่ม&nbsp; พอนิ่มดีก็เอามาโขลกรวมกับเครื่องแกงอย่างอื่น ซึ่งตอนโขลกก็จะใส่เกลือไปนิดหน่อยเพื่อให้กระเด็นน้อยลง&nbsp; ... ซึ่งถ้าใครไม่มีพริกป่นอยู่ จะใช้วิธีแบบสมัยโบราณนี่ก็ได้นะคะ&nbsp; ส่วนพิมขอใช้วิธีลัดเอาล่ะกันจ้า แบบว่าขี้เกียจอ่ะ &gt;_&lt;&#39;</p>\r\n\r\n<p>ป.ล. สำหรับพริกแห้งเม็ดใหญ่ ให้เลือกที่เม็ดสีออกส้ม ๆ หน่อยนะคะ&nbsp; เป็นสีส้มแดงก็ได้&nbsp; แกงส้มของเราจะได้ออกมาเป็นสีส้ม สมชื่ออ่ะค่ะ</p>\r\n\r\n<p>------------------------</p>\r\n\r\n<p>ส่วนกะปิ ก็เลือกกะปิดี&nbsp; ๆ นะคะ ใครที่ชอบกลิ่นกะปิมากน้อย อาจจะเพิ่มกะปิมากกว่าในสูตรสักหน่อยก็ได้ค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-15.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-15.jpg" style="height:945px; width:714px" /></p>\r\n\r\n<p>จากนั้นเมื่อเราเตรียมเครื่องแกงครบแล้ว ก็มาลงมือตำกันได้เลยค่ะ</p>\r\n\r\n<p>...... เริ่มต้นด้วยการโขลกหอมกับกระชายให้ละเอียด&nbsp;&nbsp; (จะเอาไปปั่นก็ได้น๊า หรือบดด้วยเครื่องบดก็ได้อ่ะค่ะ)&nbsp;&nbsp; ซึ่งพอละเอียดประมาณนึง&nbsp; ก็ใส่พริกป่นที่เราเตรียมไว้ลงไป&nbsp; ตามด้วยกะปิ&nbsp; แล้วก็โขลกให้เข้ากันแบบในภาพด้านล่าง ..... เราก็จะได้น้ำพริกแกงส้มมาแล้วนะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-16.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-16.jpg" /></p>\r\n\r\n<p><strong>:: ส่วนผสมและเครื่องปรุงสำหรับทำแกงส้ม ::</strong></p>\r\n\r\n<p>- น้ำพริกแกงส้ม 4 ชต.<br />\r\n- เนื้อปลา 100 กรัม&nbsp;<br />\r\n- น้ำซุป 4 1/2 ถ้วย<br />\r\n- มะขามเปียกชนิดไม่มีเม็ด 50 กรัม&nbsp; ...... (คั้นเอาน้ำมะขาม 1/2 ถ้วย)<br />\r\n- น้ำตาลปี๊บ 2 - 3 ชต.<br />\r\n- เกลือป่น&nbsp;&nbsp; 2 ชต.<br />\r\n- น้ำปลา 2 - 3&nbsp; ชต.<br />\r\n- มะนาวน้ำดีๆ&nbsp; 1 ลูก<br />\r\n- ผักต่างๆ ตามชอบ&nbsp;<br />\r\n- กุ้งสดแกะเปลือกแล้ว ปริมาณตามชอบ (พิมใส่ไปประมาณ 15 ตัว / ไม่มีรูปนะคะ)</p>\r\n\r\n<p>ป.ล. ปริมาณน้ำปลา + น้ำตาล + เกลือป่น + น้ำมะนาว ที่ใช้ ......... ขึ้นกับรสชาติมะขามเปียกด้วยนะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-17.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-17.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p><strong>:: วิธีทำ ::</strong></p>\r\n\r\n<p>เมื่อเตรียมเครื่องต่าง ๆ เรียบร้อยแล้ว ขั้นตอนต่อมาก็คือการลงมือทำ ลงมือปรุงนะคะ</p>\r\n\r\n<p>เริ่มต้นเลย ..... หากเรายังไม่ได้ต้มปลา&nbsp; ก็ให้เราเอาปลาไปต้มไว้ก่อนเลยนะคะ วิธีต้มปลาของพิมก็คือ ใส่น้ำลงไปในหม้อ นำหม้อไปตั้งไฟ จนน้ำเดือดก็ใส่ปลาลงไป ใส่เกลือตามไปหยิบมือนึง&nbsp; รอจนน้ำเดือดอีกครั้งและปลาสุกดี ก็ตักขึ้นพักไว้ให้เย็นค่ะ</p>\r\n\r\n<p>อ้อๆ ... สำหรับปลาเนี่ย ปกติพิมใช้ปลาช่อน ปลานิลนะคะ&nbsp; แต่เพื่อนๆ&nbsp; จะใช้ปลาอย่างอื่นที่มีในท้องถิ่นแทนก็ได้ (ที่คิดว่ามันน่าจะแทนกันได้อ่ะนะคะ)&nbsp; แล้วก็จะต้มแบบต้มทั้งตัวทั้งหัว&nbsp; แล้วค่อยมาแกะแก้งออกทีหลัง&nbsp; หรือต้มแบบแล่เอาเฉพาะแต่เนื้อมาต้มอย่างพิมนี่ก็ได้ค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-18.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-18.JPG" /><br />\r\n<img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-20.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-20.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>จากนั้นเมื่อต้มปลาเสร็จแล้ว หากเป็นการต้มแบบทั้งหัวทั้งตัว ก็แกะเอาแต่เนื้อออกมาให้เรียบร้อยนะคะ (ก้างไม่เอาจ้า ทิ้งไปเลย)&nbsp; แต่ถ้าเป็นการต้มแต่เนื้อปลาก็ไม่ต้องทำอะไร</p>\r\n\r\n<p>และเมื่อได้เนื้อปลาต้มมาแล้ว ก็เอาเนื้อปลาใส่ในครกนะคะ โขลกด้วยสากให้แหลก&nbsp; พอแหลกดีก็ใส่พริกแกงส้มตามลงไป โขลกอีกครั้งให้เข้ากันดีเป็นเนื้อเดียวกันอ่ะค่ะ .... (และก็พักเอาไว้ก่อน)</p>\r\n\r\n<p>ป.ล. จะใช้เนื้อกุ้งแทนเนื้อปลาก็ได้&nbsp; ตามชอบเลย</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-21.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-21.jpg" style="height:714px; width:714px" /></p>\r\n\r\n<p>ต่อมาก็หันมาแช่มะขามเปียกด้วยน้ำอุ่นหรือน้ำร้อน&nbsp; เพื่อทำน้ำมะขามเปียกกันนะคะ ..... สำหรับมะขามเปียกเนี่ย โดยปรกติจะมีรสเปรี้ยวนำมาก ๆ แต่ปัจจุบันบางทีซื้อมาก็เจอแบบรสเปรี้ยวอมหวานซะมากกว่า&nbsp; ยังไงก็ลองเลือก ๆ ดูนะคะ</p>\r\n\r\n<p>ป.ล. มะขามเปียกตอนนี้แพงมากเลยจ้า แถวบ้านพิมโลละ 100 อ่ะ&nbsp; ยังไงถ้าใครคั้นน้ำมะขามเปียกแล้วเหลือ&nbsp; ก็อย่าลืมเอาที่เหลือ + พร้อมเนื้อที่เหลือๆ ติดก้าน ผสมดินสอพองสักหน่อย ขมิ้นสักนิด คนด้วยปลายนิ้วให้เข้ากันดี แล้วเอาไปขัดตามข้อศอก หัวเข่า ซอกแขนขา ตาตุ่มดูนะคะ. ...&nbsp; รับรองผิวจะนุ่มเนียน ขาวนวลขึ้นจนรู้สึกได้เลยค่ะ ^^</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-19.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-19.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ส่วนผักที่พิมใช้ในวันนี้ ก็เป็นผักที่หาได้จากก้นตู้เย็นอ่ะค่ะ ไม่ได้ไปซื้อมาใหม่เลย ...... ก็มีกวางตุ้งดอก กระเจี๊ยบเขียว ถั่วพู ที่เหลือจากจิ้มน้ำพริกกะปิกุ้งสดวันก่อน&nbsp; มีถั่วฝักยาว แครอทที่เหลือจากน้องสาวเอามาตำส้ม&nbsp; และก็มีผักกาดขาวที่เหลือจากพิมแกงจืดเมื่ออาทิตย์ก่อนอ่ะค่ะ&nbsp;&nbsp; (รวมมิตรผักเหลือเลยนะเนี่ย) ...&nbsp; ก็เอาผักทั้งหมดล้างให้สะอาด และใส่ตะแกรงพักไว้ให้สะเด็ดน้ำนะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-26.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-26.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>สำหรับผักกาดขาว พิมใช้ประมาณ 4 กาบ &nbsp; ... ก็เอามาผ่าครึ่งตามยาว&nbsp; แล้วปั่นเป็นชิ้นย่อมๆ&nbsp; ค่ะ</p>\r\n\r\n<p>แครอท ... ก็ปอกเปลือกสักหน่อย แล้วใช้ที่ขูดเส้นมะละกอ&nbsp; ขูดให้เป็นร่องโดยรอบ ก่อนจะหั่นเป็นชิ้นบาง ๆ ให้ดูเหมือนดอกไม้แบบในภาพอ่ะค่ะ&nbsp; (ใส่เพื่อความสวยงามนะอันนี้)</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-27.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-27.jpg" style="height:714px; width:714px" /></p>\r\n\r\n<p>ถั่วพู .... ก็ตัดหัวตัดท้ายทิ้งนะคะ แล้วหั่นเป็นชิ้นย่อม ๆ ขนาดยาวสัก 1.5 ซม.อ่ะค่ะ&nbsp;&nbsp;<br />\r\nถั่วฝักยาว .... ก็ตัดหัวตัดท้ายทิ้งเหมือนถั่วพูนะคะ&nbsp; แล้วหั่นเป็นท่อนสั้น ๆ ยาวสักท่อนละ 1 นิ้วก็พอค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-28.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-28.jpg" style="height:714px; width:714px" /></p>\r\n\r\n<p>กวางตุ้งดอก ... ก็ตัดโคนแข็ง ๆ ที่แก่ ๆ ทิ้งไปนะคะ&nbsp; แล้วก็หั่นเป็นท่อนสั้น ยาวท่อนละสัก 1 นิ้วค่ะ&nbsp;<br />\r\nส่วนกระเจี๊ยบ ... ก็ตัดโคนแข็ง ๆ ทิ้งไปเหมือนกัน&nbsp; แล้วก็หั่นเป็นท่อนสั้น สักท่อนละ 1.5 ซม. นะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-29.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-29.jpg" style="height:714px; width:714px" /></p>\r\n\r\n<p>สุดท้ายเมื่อหั่นผักเสร็จทุกอย่าง ก็เอามาใส่รวมกันไว้ในกาละมังแบบนี้ค่ะ</p>\r\n\r\n<p>ป.ล. ถ้ามีผักบางอย่างที่เนื้อแข็งกว่าเพื่อน เช่น ดอกกะหล่ำ บร๊อคโคลี่ มะละกอ&nbsp; มะรุม ให้แยกไว้ต่างหากนะคะ&nbsp; เพราะเราจะต้องเอาลงไปลวกหรือต้มให้สุกก่อน ถึงค่อยใส่ผักที่สุกง่ายอย่างที่พิมใช้ลงไปอ่ะค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-30.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-30.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>จากนั้นก็มาเริ่มลงมือปรุงแกงส้มกันเลยค่ะ .... เริ่มต้นการด้วยใส่น้ำซุปลงในหม้อที่เราจะใช้แกง</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-22.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-22.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>รอให้น้ำซุปเดือดสักหน่อย</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-23.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-23.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ก็ตักน้ำซุปสัก 2 - 3&nbsp; ทัพพีใส่ลงในถ้วยพริกแกง&nbsp; (ที่เราโขลกรวมกับเนื้อปลาเอาไว้แล้ว)&nbsp;&nbsp; และก็เอาทัพพียี ๆ ให้พริกแกงแตกตัวออกจากกัน ไม่เกาะกันเป็นก้อนอ่ะนะคะ&nbsp; ... แล้วจึงค่อยเทส่วนผสมพริกแกงกับเนื้อปลาโขลก ใส่ลงไปในหม้อน้ำซุป ค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-24.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-24.jpg" style="height:945px; width:714px" /></p>\r\n\r\n<p>ต่อมาก็ทำการปรุงรสแกงส้มด้วยน้ำตาล (จะใช้น้ำตาลปี๊บหรือน้ำตาลทรายได้ค่ะ ตามสะดวก)&nbsp; เกลือป่น น้ำปลาดี ๆ และก็น้ำมะขามเปียก .... คนให้เข้ากัน แล้วชิมให้ได้สี่รสะแบบเข้มข้นหน่อย&nbsp; (แต่ว่าไม่ต้องถึงกับเข้มข้นสุดๆ)&nbsp; เพราะว่าเดี๋ยวพอใส่ผักไป มันจะจืดลงอีกนิดอ่ะค่ะ &nbsp; (เปรี้ยวนำ เผ็ดตามชอบ เค็มกับหวาน มีพอให้กลมกล่อม)</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-25.jpg" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-25.jpg" style="height:945px; width:714px" /></p>\r\n\r\n<p>แล้วเราก็จะได้น้ำแกงส้มออกมาประมาณนี้ค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-31.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-31.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>รอให้น้ำแกงส้มเดือดดีก็ใส่ผักที่เราเตรียมไว้ทั้งหมดลงไป ... ใช้ทัพพีกดๆ หน่อยให้ผักจมน้ำ</p>\r\n\r\n<p>ป.ล. ถ้าเป็นผักที่สุกยากอย่าง ดอกกะหล่ำ แครอท บร๊อคโคลี่ พวกนี้ ให้เราเอาไปต้มในน้ำเปล่า&nbsp; (แล้วเอาน้ำเปล่านั่นมาเป็นส่วนนึงของน้ำซุป เพราะมีความหวานจากผักที่เราเอาไปต้ม) หรือต้มในน้ำแกงส้มที่ยังไม่ได้ปรุงรส (แค่ละลายพริกแกงกับปลาลงไป) ให้สุกก่อน ถึงจะค่อยมาใส่พร้อมกับผักพวกนี้อีกทีนะคะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-32.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-32.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ตามด้วยกุ้งสดที่แกะเปลือกแล้ว ... ปริมาณตามชอบ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-33.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-33.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>และก็บีบมะนาวตามลงไปสัก 1 ลูก&nbsp; เพื่อชูรสเปรี้ยวให้เด่นชัดยิ่งขึ้น</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-34.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-34.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>จากนั้นก็ปล่อยให้เดือดอีกสักครั้งนึง ก่อนจะปิดไฟเตา .... ก็เป็นอันว่าเราทำแกงส้มผักรวมกุ้งสดเสร็จเรียบร้อยแล้วค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-11.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-11.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>และเมื่อถึงเวลาจะทาน ... ก็ตักใส่ชามแบบนี้นะคะ&nbsp; หรือถ้าใครชอบแบบราดหน้าไปเลย ก็ได้เช่นกันค่ะ ^^</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-08.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-08.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>แกงส้มแบบใส่ผักหลากหลายอย่างนี้เนี่ย .... พิมว่าสมัยนี้ถ้าไม่ทำกินเองตามบ้าน&nbsp; ก็จะหากินยากค่ะ เพราะไปไหนมาไหนส่วนใหญ่จะเจอแต่แกงส้มมะละกอกับกุ้งสดทั้งนั้น</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-09.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-09.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ยังไงถ้าเพื่อนๆ&nbsp; ชอบ ลองทำทานกันดูนะคะ .... ซึ่งหากใครไม่ชอบผักอย่างที่พิมบอกมา ก็เปลี่ยนเป็นผักที่ตัวเองชอบก็ได้ค่ะ เช่นผักบุ้ง ผักปลัง&nbsp; กะหล่ำ ผักกาดเขียว ดอกแค ชะอมชุบไข่ทอด&nbsp; ผักกระเฉด&nbsp; มะรุม บอน คูน หรือผักอื่น ๆ&nbsp; น่ะค่ะ</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-07.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-07.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>ก็... สนับสนุนให้ลองทำกันดูค่ะ&nbsp; แกงส้มร้อน ๆ กินกับไข่เจียวหรือปลาสลิด ปลาช่อนแดดเดียวทอดเนี่ย ... อร่อยสุดยอดมากๆ เลยนะคะ ^^&quot;&nbsp; ........ แล้วเจอกันอีกทีเมนูหน้าจ้า</p>\r\n\r\n<p><img alt="http://pim.in.th/images/all-side-dish-fish/kang-som/kangsom-06.JPG" src="https://www.pim.in.th/images/all-side-dish-fish/kang-som/kangsom-06.JPG" style="height:539px; width:714px" /></p>\r\n\r\n<p>หมายเหตุนิดนึง ...... สำหรับเคล็ดลับในการแกงส้มของพิม ก็คือ&nbsp;<br />\r\n<br />\r\n- หากตำพริกแกงเอง ให้เลือกพริกแห้งเม็ดใหญ่ที่ีสีออกแดงส้ม&nbsp; เวลาทำน้ำแกงออกมาแล้ว สีของน้ำแกงจะได้เป็นสีส้ม สมชื่อ &quot;แกงส้ม&quot; อ่ะค่ะ<br />\r\n<br />\r\n- สำหรับการปรุงรสเปรี้ยว พิมจะใช้น้ำมะขามเปียกเป็นหลัก และก็ใช้มะดัน หรือ น้ำมะนาว ในการชูรสเปรี้ยวให้เด่นชัด และมีความหอมยิ่งขึ้น<br />\r\n<br />\r\n- ผักที่สุกยาก เช่น ดอกกะหล่ำ มะละกอ&nbsp; มะรุม พิมจะเอาไปต้มให้สุกในน้ำเปล่าหรือน้ำซุปก่อน&nbsp; แล้วนำเอาน้ำซุปอันนั้นมาทำนำแกงส้มอีกที<br />\r\n<br />\r\n- หากจะใส่กุ้งเป็นตัวๆ&nbsp; พิมจะใส่ทีหลังตอนใกล้จะตักขึ้นมากิน&nbsp; โดยรอให้น้ำแกงเดือด แล้วใส่กุ้งลงไป พอน้ำแกงเดือดอีกทีนับ 1- 10 ใสใจ ก็ดับไฟแล้วตักแกงพร้อมกุ้งใส่ชามได้เลย&nbsp; เพื่อให้เนื้อกุ้งไม่สุกมากจนแข็งอ่ะค่ะ&nbsp;<br />\r\n<br />\r\n- สำหรับการปรุงรสเค็ม&nbsp; พิมจะใช้ทั้งเกลือและน้ำปลา&nbsp; เพราะโดยความรู้สึกส่วนตัวนะคะ น้ำปลาเนี่ยนอกจากจะทำให้เค็มแล้วยังทำให้หอม&nbsp; ส่วนเกลือนอกจากเค็มแล้ว ยังทำให้รสกล่อมกล่อมขึ้นอ่ะค่ะ<br />\r\n<br />\r\n- รสชาติที่พิมคิดว่าใช่สำหรับแกงส้มของพิมก็คือ เปรี้ยวนำ&nbsp; แต่ไม่ใช่เปรี้ยวโด่เด่ เผ็ดตามชอบ เค็มกับหวาน มีพอให้กลมกล่อม .......&nbsp; ซึ่งพิมก็พยายามที่จะปรุงให้ได้รสแบบนี้ทุกครั้งอ่ะค่ะ</p>\r\n', 'ใครอยากกินแกงส้มผักรวมบ้างค๊า.า.า...า.า.  ยกมือขึ้นเลยจ้า  เอ๊าา !! ใครยกมือไว  เรามีแถมปลาช่อน', 'แกงส้มผักรวม||แกงส้มกุ้งสด', '7fbbd6d454cf46b546b4c7b0622b4bd5.jpg', 'ครัวบ้านพิม', 'https://www.pim.in.th/side-dish-by-fish/399-kangsom-pakraum', 1, 35, NULL, '58.9.70.93', '2017-04-11 11:18:18', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-11 18:33:01', 3, 'Dokbua Administrator', NULL),
(2, '6 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้', '<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2016/wanwanat/0_edit/131858.jpg" style="height:600px; width:600px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><a href="https://cooking.kapook.com/view102693.html" target="_blank">หมูกรอบ</a>&nbsp;<a href="https://cooking.kapook.com/menu/thai" target="_blank">อาหารไทย</a>ที่เอ่ยชื่อเมื่อไรก็น้ำลายสอ ขอเอาใจคนอยู่เพื่อกินด้วย 5 วิธีทำหมูกรอบสุดฟิน อ้วนเป็นหมูก็ยอม</strong><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ใครที่กำลังตามหาหัวใจ เอ๊ย ตามหาสูตรหมูกรอบในดวงใจสุดอร่อยในปฐพี ไม่ต้องเปิดตำราอาหาร หรือเปิดหาสูตรจากแหล่งไหนให้เสียเวลา วันนี้กระปุกดอทคอมขอนำเสนอ 5 วิธีทำหมูกรอบไว้ที่นี่ที่เดียว เอาใจคนชอบกินหมูกรอบเป็นชีวิตจิตใจ แหม&hellip; ก็ถ้าใครได้ลองชิมเป็นต้องติดใจ ของเขาอร่อยจริง ยิ่งเวลาทอดเสร็จใหม่ ๆ หนังฟูกรอบ เนื้อนุ่ม อ้ำเข้าปากแล้วฟินเว่อร์ แล้วแบบนี้ใครจะอดใจไหวล่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-1.jpg" style="height:680px; width:600px" /></p>\r\n\r\n<p><br />\r\n<strong>1. สูตรหมูกรอบแบบง่าย</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; หมูกรอบหาที่อร่อย ๆ ยากเหมือนกันเนอะ เจอแต่หั่นชิ้นแบนตบแล้วตบอีกจนไม่เหลือเค้าเดิม เวลากินเมื่อไรกลัวปลิวลอยไปตามลม ลองมาทำหมูกรอบแบบง่าย สูตรจาก&nbsp;<a href="https://cooking.kapook.com/view113039.html" target="_blank">คุณ isweet สมาชิกเว็บไซต์พันทิปดอทคอม</a>&nbsp;กันดีกว่า เอาใจคนอยากกินหมูกรอบชิ้นใหญ่เต็มปากเต็มคำ พร้อมเคล็ดลับทาด้วยน้ำส้มสายชูให้ทั่วบริเวณหนังจากนั้นโรยเกลือทับให้หนา ๆ เพื่อไล่ความชื้นและทำให้หนังหมูตึงอีกด้วย<br />\r\n<br />\r\n<strong>ส่วนผสม หมูกรอบแบบง่าย</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;หมูสามชั้น (หั่นสี่เหลี่ยมขนาดตามชอบ)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;เหล้าจีน (ไม่มีก็ไม่ต้องใส่ค่ะ แต่ใส่แล้วจะหอมมาก โดยความร้อนจะทำให้แอลกอฮอล์ระเหยหมดเหลือแต่กลิ่นหอม ๆ ค่ะ)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำมันหอย (ตามชอบ)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;พริกไทย (ตามชอบ)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำส้มสายชู&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;เกลือป่น<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;กระดาษอะลูมิเนียมฟอยล์<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;หม้ออบลมร้อน<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;<strong>เคล็ดลับ : เลือกสามชั้นหนังหนา ๆ หากเพื่อน ๆ เลือกมาทำให้หาสามชั้นที่หนังหนา ๆ นิ่ม ๆ นะคะ มันน้อย ๆ เนื้อเยอะ ๆ ค่ะ&nbsp;</strong><br />\r\n<br />\r\n<strong>วิธีทำหมูกรอบแบบง่าย</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;1. ใช้มีดกรีดหนังหมูให้เป็นลายตารางเล็ก ๆ แล้วจิ้มให้พรุนเลย จากนั้นหมักด้วยเหล้าจีน น้ำมันหอย และพริกไทยตามชอบ หมักทิ้งไว้ในตู้เย็น 15-30 นาที<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;2. นำหมูสามชั้นหมักออกมาห่อด้วยกระดาษอะลูมิเนียมฟอยล์ แล้วทาด้วยน้ำส้มสายชูให้ทั่วบริเวณหนัง จากนั้นโรยเกลือทับให้หนา ๆ (เพื่อไล่ความชื้นและทำให้หนังหมูตึง)&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;3. นำหมูเข้าอบที่อุณหภูมิ 175 องศาเซลเซียส ประมาณ 30 นาที<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;หมายเหตุ : หากใครมีเกลือแกงเม็ดใหญ่ ๆ ให้ใช้แบบนั้นแล้วนำมาตำหยาบ ๆ จะดีกว่าค่ะ ความเค็มจะไม่เข้าไปในหมูมากนัก แต่หากใช้เกลือป่น ระวังเรื่องความเค็มด้วยนะคะ ตอนนำออกจากเตาให้เอาน้ำล้างออกหน่อยก็ดีแล้วผึ่งให้แห้งก่อนเข้าอบอีกครั้ง&nbsp;</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;4. นำหมูที่อบแล้วมากะเทาะเกลือออก จากนั้นนำกระดาษอะลูมิเนียมฟอยล์ออก (ขั้นตอนนี้มีแอบจิ้มหนังหมูอีกนิดด้วยกลัวไม่กรอบ) แล้วนำไปอบต่อ 15-20 นาที จนกว่าจะฟูกรอบตามชอบ<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>หมายเหตุ : คอยสังเกตอยู่ใกล้ ๆ ขณะทำด้วยนะคะ เพราะระดับความแรงของไฟเตาอบหม้ออบแต่ละบ้าน ไม่เท่ากัน (ตามสภาพใหม่เก่าและความคงที่ของอุณหภูมิที่อาจไม่เท่ากัน) หมั่นสังเกตจะดีกว่า เดี๋ยวเสียของเนอะ</strong><br />\r\n<br />\r\n<strong>&nbsp; &nbsp; &nbsp; &nbsp;+ ดูวิธีทำเพิ่มเติมได้ที่&nbsp;<a href="https://cooking.kapook.com/view113039.html" target="_blank">20 เมนูชวนอ้วน ภาพสวย ทำง่าย ๆ ไม่ต้องแคร์หุ่น</a></strong><br />\r\n&nbsp;</p>\r\n\r\n<p>+++++++++++++++++++++</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2.JPG" style="height:377px; width:500px" /></p>\r\n\r\n<p><br />\r\n<strong>2. สูตรหมูกรอบ แบบนังกรอบพิเศษ</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ถ้าใครชอบหนังหมูแบบกรอบ ๆ ต้องมาลองหมูกรอบสูตรหนังกรอบพิเศษจาก&nbsp;<a href="https://cooking.kapook.com/view69823.html" target="_blank">ครัวบ้านพิม</a>&nbsp;กันหน่อย สูตรนี้แม้หนังจะกรอบแต่หมูยังนุ่มอยู่นะคะ มาพร้อมเคล็ดลับการเลือกหมูสามชั้นอีกด้วย ยิ่งเห็นภาพหมูกรอบแล้วยิ่งน้ำลายสอ เริ่มต้นลงมือทำกันเลยดีกว่า&nbsp;<br />\r\n<br />\r\n<strong>ส่วนผสม หมูกรอบหนังกรอบ</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;หมูสามชั้น 1 แผ่น (น้ำหนักประมาณ 1.5 กิโลกรัม)<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำเปล่า 10 ถ้วย<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;เกลือป่น 85 กรัม<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำมันปาล์มสำหรับทอด (เยอะมาก ๆ)<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>เคล็ดลับ :&nbsp;</strong>วิธีเลือกหมูสามชั้นเลือกตรงส่วนพื้นท้อง เพราะหมูส่วนนี้จะนุ่มดีแล้วก็มีชั้นเนื้อชั้นไขมันที่ทอดออกมาแล้วจะไม่กระด้าง อีกทั้งสีสวยงามมากกว่าสามชั้นส่วนอื่น แล้วก็เลือกที่มีชั้นไขมันไม่มากนัก อีกทั้งมีชั้นไขมันสม่ำเสมอกัน&nbsp;<br />\r\n<br />\r\n<strong>วิธีทำหมูกรอบหนังกรอบ</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2-1.JPG" style="height:377px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. ใช้มีดโกนมาขูดขนอ่อน ๆ ที่หลงเหลือออกไปให้หมด หากมีคราบอะไรติดมาก็เอาแปรงสีฟันที่ไม่ได้ใช้แล้ว ขัด ๆ ออกให้หมด และก็นำไปล้างให้สะอาด จากนั้นก็บั้งแนวยาวเป็น 3 รอย&nbsp; (จริง ๆ ควรบั้งให้แต่ละช่วงมีขนาดเท่ากัน แต่มือพิมไม่เที่ยงเอง ตอนแรกตั้งใจจะบั้งให้ได้เป็น 4 ชิ้น แต่ไป ๆ มา ๆ เอาชิ้นใหญ่หน่อยให้เหลือ 3 ชิ้นก็พอ)<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2-2.JPG" style="height:377px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. ตั้งหม้อหรือกระทะบนเตาไฟ ใส่น้ำเปล่าลงไป ตามด้วยเกลือป่น (ใครชอบเค็มมาก ๆ ก็ใส่เยอะกว่านี้ได้ เพราะหากใส่ตามอัตราส่วนนี้จะเค็มอ่อน ๆ ค่ะ) รอน้ำเดือดก็ใส่หมูทั้งชิ้นลงไปต้ม (น้ำไม่ต้องท่วมหมูทั้งชิ้นก็ได้นะคะ แต่อย่างน้อยให้ท่วมมากกว่า 3/4 ส่วน) คว่ำด้านหนังลงต้ม 40 นาที แล้วค่อยพลิกเอาด้านเนื้อกลับลงไป และต้มต่ออีกประมาณ 5 นาที&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2-3.JPG" style="height:377px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. พอครบเวลาตามที่กำหนดไว้ก็ใช้ตะหลิวโปร่ง ๆ ตักชิ้นหมูขึ้นจากกระทะ เอาไปวางพักบนตะแกรงโปร่ง และนำไปตากแดดจัด หรืออบด้วยไฟอ่อน ๆ 1 ชั่วโมง หรือจนหนังหมูแห้ง<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2-4.JPG" style="height:377px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.จากนั้นก็นำมาทอดในน้ำมันเยอะหน่อย (ไม่ต้องให้น้ำมันท่วมหมูทั้งชิ้นก็ได้ อย่างน้อยให้ท่วมสักครึ่ง) โดยเอาด้านหนังลงไปทอดก่อน ซึ่งช่วงแรกใช้ไฟกลางค่อนมาทางแรงประมาณ 70% พอด้านหนังเหลืองดีก็พลิกกลับอีกด้านลงไปทอด และลดไฟลงเหลือประมาณ 60% ทอดต่อไปอีกสักหน่อย จนหมูเหลืองทั้งสองด้าน<br />\r\nป.ล. ปกติน้ำมันที่ใช้ทอดอาหารไม่ควรใช้เกิน 2 ครั้งนะคะ</p>\r\n\r\n<p><br />\r\n<img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-2-5.JPG" style="height:377px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp; หมายเหตุ : ระหว่างทอดช่วงนี้น้ำมันพยายามจะแทรกตัวเข้าไปในเนื้อหมู (เพื่อทำให้หมูกรอบ) น้ำจากเนื้อหมูจะซึมออกมาด้านนอก ทำให้น้ำมันกระเด็นได้ก็ให้เอาพวกฝาลังถึง หรือตะแกรงที่เค้ามีไว้กันกระเด็นโดยเฉพาะปิดเอาไว้นะคะ รอจนหายกระเด็นหรือให้กระเด็นน้อยหน่อย (ฟังจากเสียง) แล้วค่อยเปิดนะคะ</strong><br />\r\n<br />\r\n<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; +&nbsp;ดูวิธีทำเพิ่มเติมได้ที่&nbsp;<a href="https://cooking.kapook.com/view69823.html" target="_blank">วิธีทำหมูกรอบ และวิธีทำข้าวหมูกรอบ ทำเองได้ง่ายสมชื่อ</a></strong><br />\r\n&nbsp;</p>\r\n\r\n<p>+++++++++++++++++++++</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p><br />\r\n<strong>3. สูตรหมูกรอบ ฉบับเร่งด่วนใน 50 นาที</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เหลือเชื่อว่าจะสามารถทำหมูกรอบได้ภายในใน 50 นาทีเท่านั้น หมูกรอบสูตรที่ว่านี้มาจาก&nbsp;<a href="https://cooking.kapook.com/view102693.html" target="_blank">คุณอ้อมใจ รัก_ประจำทาง สมาชิกเว็บไซต์พันทิปดอทคอม</a>&nbsp;&nbsp;ไม่ต้องเอาไปทอดให้น้ำมันกระเด็นร้องกรี๊ด ๆ รู้ไหมว่า ทำง่าย ๆ ด้วยหม้ออบลมร้อน ผ่าง ผ่าง เสร็จแล้วก็ยังกรอบนุ่มเหมือนเอาไปทอดไม่ผิดเพี้ยน แถมยังแห้งกว่าการทอดเพราะไม่ใช้น้ำมันอีกด้วย&nbsp;<br />\r\n<br />\r\n<strong>ส่วนผสม หมูกรอบฉบับเร่งด่วน</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;หมูสามชั้น<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำส้มสายชู<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;น้ำปลา<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;เกลือป่น<br />\r\n<br />\r\n<strong>อุปกรณ์</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;มีดแกะสลัก<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&bull;&nbsp;หม้ออบลมร้อน<br />\r\n<br />\r\n<strong>วิธีทำหมูกรอบ</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้" src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-1.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull; ล้างหมูสามชั้นให้สะอาด (ลองชั่งดูได้น้ำหนัก 1.1 กิโลกรัม ชิ้นนี้ทำออกมาพอสุกแล้วเบาไป 4 ขีด)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-2.jpg" style="height:500px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;ใช้มีดแกะสลักจิ้มลงบนเนื้อหมูให้ทั่วจนเป็นรูพรุน (ยิ่งพรุนยิ่งกรอบ)<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-3.jpg" style="height:500px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;บั้งเนื้อหมูให้เป็นริ้ว ๆ (หน้าแคบ-หน้ากว้างตามชอบ ทั้งนี้เพื่อง่ายต่อการหั่นตอนสุก และกรอบไวขึ้นด้วยนะคะ)<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-4.jpg" style="height:500px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;นำเนื้อหมูที่บั้งแล้วไปแช่น้ำส้มสายชูผสมน้ำปลาค่ะ (ผสมกันเข้าไปเลยค่ะ ให้น้ำปลามากว่าน้ำส้มสายชูสักหน่อย) โดยแช่ด้านเนื้อแช่ประมาณ 5 นาที ส่วนด้านหนังให้ชุบแล้วนำขึ้นทันที<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เคล็ดลับ : น้ำปลาจะทำให้เค็มเข้าเนื้อ ส่วนน้ำส้มสายชูจะช่วยให้สีเหลืองสวย</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-5.jpg" style="height:500px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;ใส่เนื้อหมูลงในหม้ออบลมร้อนโดยหงายด้านเนื้อขึ้น ใช้อุณหภูมิที่ 220 องศาเซลเซียส อบนานประมาณ 20 นาทีจนด้านเนื้อสุก</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-3-6.jpg" style="height:500px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;หงายเอาด้านหนังขึ้น โรยเกลือลงไปเล็กน้อย จากนั้นอบต่ออีก 30 นาที พอครบเวลา นำออกจากหม้ออบ หั่นเป็นชิ้น ๆ จัดใส่จาน พร้อมเสิร์ฟ<br />\r\n<br />\r\n<strong>&nbsp; &nbsp; &nbsp; &nbsp; + ดูวิธีทำเพิ่มเติมได้ที่&nbsp;<a href="https://cooking.kapook.com/view102693.html" target="_blank">วิธีทำหมูกรอบใน 50 นาที สูตรเร่งรัดสำหรับคนใจร้อน</a>&nbsp;</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>++++++++++++++++++</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-4.jpg" style="height:375px; width:500px" /></p>\r\n\r\n<p><br />\r\n<strong>4. สูตรหมูกรอบ สูตรหมูสามชั้นหนังกรอบเนื้อไม่ด้าน</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; หมูสามชั้นทอดกรอบสูตรจาก&nbsp;<a href="https://cooking.kapook.com/view124785.html" target="_blank">คุณแต่งสวยแล้วอารมณ์ดี สมาชิกเว็บไซต์พันทิปดอทคอม</a>&nbsp;อีกหนึ่งสูตรที่อยากให้ลองทำกัน สูตรนี้หมูสามชั้นจะไม่อมน้ำมันด้วยนะคะ และมีเคล็ดลับเด็ดแค่ใส่น้ำโซดาลงไปในแป้งทำให้เวลาทอดแป้งกรอบกว่าเดิม อยากรู้ว่าอร่อยจริงสมคำร่ำลือหรือไม่ ต้องรีบพิสูจน์ค่ะ&nbsp;<br />\r\n<br />\r\n<strong>ส่วนผสม หมูสามชั้นทอดกรอบ</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;หมูสามชั้น 30 กรัม&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;น้ำปลาดี 2 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;พริกไทยป่น 1 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;แป้งทอดกรอบ 3 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;โซดาแช่เย็นจัด 1 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;น้ำเย็นจัด 3 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;น้ำส้มสายชู 1 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &bull;&nbsp;น้ำมันสำหรับทอด 1 ขวดเล็ก<br />\r\n<br />\r\n<strong>วิธีทำหมูสามชั้นทอดกรอบ</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; 1. หั่นหมูสามชั้นเป็นท่อน ๆ แล้วใช้มีดปลายแหลมจิ้มลงไปที่เนื้อหมูให้ทั่วชิ้น (เพื่อให้เครื่องปรุงเข้าไปในเนื้อและช่วยให้ทอดสุกทั่วด้วย) จากนั้นใส่น้ำปลาและพริกไทยป่นลงไป นวดผสมคลุกเคล้าให้เข้ากัน ประมาณ 2 นาที พักไว้<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-4-1.jpg" style="height:375px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 2. เตรียมแป้งทอดกรอบโดยใส่น้ำเย็นและน้ำโซดาลงไปในแป้ง (เคล็ดลับนี้จะทำให้เวลาทอดแป้งกรอบกว่าเดิม) เสร็จแล้วเอาหมูสามลงมาคลุกเคล้าให้เข้ากัน<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-4-2.jpg" style="height:375px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 3. ตั้งกระทะใส่น้ำส้มสายชูลงไปแล้วคนให้ทั่วกระทะจนกว่าน้ำส้มสายชูจะระเหยออกไปหมด (เคล็ดลับนี้จะทำให้เวลาทอดหมูสามชั้นแล้วจะไม่อมน้ำมัน) แล้วใส่น้ำมันพืชลงไปในกระทะ รอจนน้ำมันร้อนก็ใส่หมูสามชั้นลงไปทอดจนกรอบ&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="5 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้ " src="https://img.kapook.com/u/2015/surauch/cook1/crispy-pork-4-3.jpg" style="height:375px; width:500px" /><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 4. หั่นเป็นชิ้น พร้อมเสิร์ฟ<br />\r\n<br />\r\n<strong>&nbsp; &nbsp; &nbsp; &nbsp; + ดูวิธีทำเพิ่มเติมได้ที่&nbsp;<a href="https://cooking.kapook.com/view124785.html" target="_blank">หมูสามชั้นทอดกรอบ สูตรหนังกรอบเนื้อไม่ด้าน เจอแบบนี้ยอมอ้วนเลย</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>++++++++++++++++++++++</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/Health/pork3_1.jpg" style="height:282px; width:500px" /></p>\r\n\r\n<p><br />\r\n<strong>5. หมูกรอบทอดน้ำปลา</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; กร๊อบกรอบ ! แจกสูตรทำหมูกรอบทอดน้ำปลา อาหารไทยทำง่ายจากหมูสามชั้น อร่อยสองต่อ หนังฟูกรอบ เนื้อนุ่มฉ่ำ รสเค็มนิด ๆ อร่อยฟิน สูตรจาก&nbsp;<a href="http://pantip.com/topic/35372289" target="_blank">คุณ tukata001 สมาชิกเว็บไซต์พันทิปดอทคอม</a>&nbsp;มาพร้อมวิธีหมักหมูง่าย ๆ<br />\r\n<br />\r\n<strong>ส่วนผสม หมูกรอบทอดน้ำปลา</strong><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &bull; หมูสามชั้น 800 กรัม<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &bull; น้ำปลา 6 ช้อนโต๊ะ<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &bull; น้ำมันพืช (สำหรับทอด)<br />\r\n<br />\r\n<strong>วิธีทำหมูกรอบแช่น้ำปลา</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/Health/pork4_1.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1. นำหมูสามชั้นมาหั่นเป็นชิ้นหนาประมาณ 1 นิ้ว + 1/2 นิ้ว หรือตามชอบค่ะ ใส่น้ำปลาคลุกหมักทิ้งไว้ในตู้เย็น 30 นาที<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork5.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2. นำเข้าไปอบในเตาอบที่อุณหภูมิ 350 องศาฟาเรนไฮต์ ประมาณ 20 นาที อบแล้วเวลาทอดจะทำให้น้ำมันไม่กระเด็นออกมามากค่ะ หนังจะกรอบด้วย<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork6.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3. หลังจากอบผ่านไป 20 นาที ได้หมูสามชั้นแบบในรูปค่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork7.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4. เวลาทอดมีเทคนิคนิดหนึ่ง ตาจะเอาส่วนหนังลงจ่อในน้ำมันร้อนก่อนค่ะ น้ำมันร้อนจัดนะคะ ทอดส่วนหนังให้กรอบหนังเขาจะฟูกรอบค่ะ แล้วค่อยหย่อนทอดทั้งชิ้นค่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork8.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5. หนังฟูกรอบดีเหมือนกันนะคะ นี่ตาไม่ได้ใช้ส้อมจิ้มเลยนะคะ แต่ถ้าจิ้มหนังอาจจะกรอบมากกว่านี้ แต่ถ้าหมูสามชั้นแบบไม่ได้ต้มก่อน หนังเขาจะแข็ง จิ้มยากค่ะ ตาเลยไม่จิ้ม จะลองดูว่าหนังจะกรอบไหม ออกมากรอบฟูอย่างที่เห็นค่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork9.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6. หนังกรอบฟูสวยดี<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork10.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 7. นี่เป็นชิ้นที่ตาไม่ได้เข้าเตาอบค่ะ เอาออกมาจากตู้เย็นแล้วลองทอดเลย 1 ชิ้น ผลออกมาหนังไม่ค่อยกรอบเท่าไร แต่ว่าเนื้อด้านในนุ่มชุ่มฉ่ำมากเลยค่ะ ไม่แห้งอร่อยดี<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork11.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 8. ชิ้นนี้ลองหั่นมาให้ดู เป็นชิ้นที่อบก่อนลงทอดค่ะ ด้านในนุ่มชุ่มฉ่ำดีเหมือนกันเลย ด้านนอกกรอบดีค่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบทอดน้ำปลา" src="https://img.kapook.com/u/2016/surauch/home/pork12.jpg" style="height:337px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 9. ตาทำแล้วทานไม่หมด เก็บใส่แช่ช่องแข็ง เก็บไว้ใส่ผัดผักต่าง ๆ ใส่คะน้าหมูกรอบก็อร่อยสุด ๆ แต่ตาคงไม่รอค่ะ กินกับข้าวสวยร้อน ๆ น้ำจิ้มแจ่วหรือพริกน้ำปลาคลุกข้าวสวยร้อน ๆ อร่อยเลิศ ลองทำดูนะคะ สูตรนี้ไม่ยากเลยค่ะ อร่อยด้วย ไม่แห้ง เคี้ยวง่าย กรอบนอกนุ่มในค่ะ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>++++++++++++++++++++++++++</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/cook1/moo2_1.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. สูตรหมูกรอบง่าย ๆ ไม่ต้องตากแดด</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; ยอมอ้วนชวนอร่อยไปกับวิธีทำหมูกรอบอบหนังกรอบฟู เนื้อนุ่มฉ่ำ ทำง่าย ๆ กินได้แบบด่วนจี๋ สูตรจาก&nbsp;<a href="http://pantip.com/topic/35532274" target="_blank">คุณ tukata001 สมาชิกเว็บไซต์พันทิปดอทคอม</a>&nbsp;สูตรหมูกรอบเตาอบ ไม่ต้องต้ม ไม่ต้องวิ่งหาแดด อบพอสุกแล้วเอาไปทอดก็ได้หมูกร๊อบกรอบมากินกับน้ำจิ้มแจ่ว เอาไปทำเมนูข้าวหมูกรอบ หรือเมนูคะน้าหมูกรอบก็ได้ แถมกินไม่หมดก็แช่แข็งเก็บได้นานค่ะ&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>ส่วนผสม หมูกรอบ</strong><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; หมูสามชั้นหั่นยาว 4 ชิ้น (วันนี้ทำเยอะหน่อย เก็บแช่ช่องแข็ง)&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; เกลือ<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; น้ำส้มสายชู<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>หมายเหตุ : ปริมาณก็กะ ๆ เอาได้ค่ะ ไม่ต้องกลัวเค็มค่ะ</strong><br />\r\n<br />\r\n<strong>วิธีทำหมูกรอบ</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo4.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; นำหมูสามชั้นไปล้างให้สะอาด หั่นเป็นชิ้นยาวหรือสั้นตามชอบ (ถ้าหั่นชิ้นขนาดประมาณชิ้นในภาพ เวลาทอดจะสะดวก)<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo5.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; ใส่เกลือเลยลงไปประมาณ 1-2 ช้อนโต๊ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo6.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; ใส่น้ำส้มสายชูเลยลงไปที่หนังก่อน (ไม่ต้องกลัวว่าหมูกรอบจะเปรี้ยวนะคะ ปริมาณที่ตาใส่ก็เยอะนะ เวลาทอดแล้วไม่มีรสเปรี้ยวของน้ำส้มเลยค่ะ ไม่รู้หายไปไหนหมด)<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo7.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; นวดหมูสามชั้นกลับไปมาให้เกลือละลายเข้ากันแล้วหมักทิ้งไว้สัก 10 นาที<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo8.jpg" style="height:337px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; แบ่งหมูสามชั้นส่วนหนึ่งวางบนตะแกรงแล้วเอาเข้าเตาอบ วันนี้ใช้หม้ออบลมร้อนฝาบนแบบที่เห็นนะคะ&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo9.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; ใช้ความร้อนอ่อนสุดค่ะ อบประมาณ 30-40 นาทีค่ะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo10.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; ส่วนหมูสามชั้นที่เหลือก็เอาเข้าเตาอบค่ะ ตาใช้ความร้อนอ่อนสุด อบจนกว่าจะแห้ง ไม่ต้องทำให้สุกหมดนะคะ<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo11.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&bull; หลังจากเวลาผ่านไป 40 นาที หมูสามชั้นก็จะหน้าตาเกือบสุกแบบนี้ค่ะ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&bull; ขั้นตอนนี้หนังจะนิ่มแล้ว ใครอยากจะเอาของไม้แหลมจิ้มหนังก็เชิญได้ตอนนี้เลยค่ะ แต่ตาขี้เกียจ อยากจะลองดูว่าถ้าไม่จิ้มหนังเวลาเอาไปทอดเขาจะพองกรอบหรือเปล่าค่ะ ผลปรากฏว่าหนังกรอบฟูค่ะ แต่ถ้าจิ้มหนังน่าจะฟูกว่านี้นะคะ หากไม่จิ้มหนังก็ต้องปล่อยให้แห้งก่อนนะคะ อย่างเพิ่งไปทอดตอนนี้ จะเอาผึ่งลมหรือเป่าพัดลมให้แห้งเร็วก็ตามสะดวกค่ะ ตาวางไว้เฉย ๆ ตรงหน้าต่าง รอให้แห้งแล้วค่อยทอดค่ะ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo12.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; นำส่วนที่เป็นหนังลงทอดก่อน<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo13.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; วางส่วนหนังลงในกระทะใส่น้ำมัน<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo14.jpg" style="height:337px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; ทอดจนหนังกรอบฟู&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="หมูกรอบอบ" src="https://img.kapook.com/u/2016/surauch/Health/moo15.jpg" style="height:338px; width:600px" /></p>\r\n\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; &bull; กลับด้านเอาส่วนเนื้อลงทอดให้ครบทุกด้าน ทอดจนกรอบตามที่ต้องการ<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; &nbsp;ใช่เลย ! หมูกรอบชิ้นใหญ่แบบนี้ที่ตามหามานาน ถ้ารู้ว่าทำไม่ยากแบบนี้ทำเองตั้งนานแล้วเนอะ มีถึง 6 สูตรทำหมูกรอบไว้ให้เลือกตามชอบ ที่สำคัญสามชั้นชิ้นหนึ่งพอทอดออกมาแล้วหั่นแบ่งกินได้ทั้งครอบครัวเลย ถ้าหากไม่อยากกินเพียว ๆ ก็เอาไปราดข้าวก็ได้ อร่อยเหาะเชียวล่ะ</strong></p>\r\n', 'ครที่กำลังตามหาหัวใจ เอ๊ย ตามหาสูตรหมูกรอบในดวงใจสุดอร่อยในปฐพี ไม่ต้องเปิดตำราอาหาร หร', 'หมูกรอบ', '2e5745acac56bb0487b9e69b684db980.jpg', 'Kapook Cooking', 'https://cooking.kapook.com/view131858.html', 1, 35, NULL, '58.9.70.93', '2017-04-19 16:38:21', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-19 16:38:21', 3, 'Dokbua Administrator', NULL),
(3, 'วิธีทำหมูกรอบ ง่าย ๆ งบไม่ถึง 100 บาท', '<iframe width="854" height="480" src="https://www.youtube.com/embed/y89DgYT6E2M" frameborder="0" allowfullscreen></iframe>\r\nไม่ยากอย่างที่คิด ใช้งบค่นิดเดียว ไม่ยุ้งยาก ดูครั้งเดียวก็ทำได้แล้ว\r\nหมู 50 บาท น้ำส้มสายชู 15 บาท เกลือ 1 บาท นำ้มันพืช 38 (ใช้ไม่หมดหรอก) ก็แค่นี้แหละ ได้หมูกรอบไว้ทำกับข้าวแล้ว', 'วิธีทำหมูกรอบ ง่าย ๆ งบไม่ถึง 100 บาท', '', '55ed2e39a826d75c43b222d46a3ae7ea.png', 'Thailand lifestyle', 'https://www.youtube.com/channel/UCBo6-X_tkXJYkEiMYaa-i0A', 1, 35, NULL, '58.9.70.93', '2017-04-19 16:46:39', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-19 16:46:39', 3, 'Dokbua Administrator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_media_photo`
--

CREATE TABLE `zzz_business_media_photo` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `highlight` tinytext COLLATE utf8_unicode_ci,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(32) DEFAULT '0',
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `shop_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `c_uid` int(11) NOT NULL DEFAULT '0',
  `c_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_date` datetime DEFAULT NULL,
  `m_uid` int(11) NOT NULL DEFAULT '0',
  `m_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_media_photo`
--

INSERT INTO `zzz_business_media_photo` (`id`, `title`, `highlight`, `file`, `type`, `size`, `width`, `height`, `shop_id`, `shop_name`, `c_ip`, `c_date`, `c_uid`, `c_uname`, `c_ulog`, `m_ip`, `m_date`, `m_uid`, `m_uname`, `m_ulog`) VALUES
(1, 'big_buck_bunny.PNG', NULL, '4c413e9f03c77793926f874c78d8c98c.png', 'image/png', 630682, 638, 361, 35, 'Dok Bua Thai kitchen ', '182.52.129.156', '2017-04-06 01:49:30', 3, 'Dokbua Administrator', NULL, '182.52.129.156', '2017-04-06 01:49:30', 3, 'Dokbua Administrator', NULL),
(2, 'C2lkgW6UUAAIGJZ.jpg', NULL, '17c72ba872ad0348a74d836ee879048b.jpg', 'image/jpeg', 126204, 900, 1200, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL),
(3, 'Mask3_1.jpg', NULL, '6f20c3786a5fcaaebd54d58f1334358c.jpg', 'image/jpeg', 74177, 600, 400, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL),
(4, 'C2lkgW6UUAAIGJZ.jpg', NULL, 'f4f08dce3b129ca1ca47690b4375e468.jpg', 'image/jpeg', 126204, 900, 1200, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 17:53:01', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 17:53:01', 3, 'Dokbua Administrator', NULL),
(5, 'aHR0cDovL3AyLnMxc2YuY29tL3dvLzAvdWQvMTAvNTMzODkvZTMuanBn.jpg', NULL, 'daa24b61de460dc7bbacb4de02c0b671.jpg', 'image/jpeg', 79328, 700, 395, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL),
(6, 'maxresdefault (2).jpg', NULL, 'a2e5701ee7c543fdf35959d54ae393b0.jpg', 'image/jpeg', 258236, 1280, 720, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL),
(7, 'Image.jpeg', NULL, 'd460e8eee97c01312d5b1dbf60c9c86a.jpeg', 'image/jpeg', 118379, 700, 467, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL),
(8, 'maxresdefault (1).jpg', NULL, 'e22b2908f183a92251451adf6b28e2a1.jpg', 'image/jpeg', 83734, 1280, 720, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL),
(9, 'maxresdefault.jpg', NULL, '4cc4dc85a5ec8387f736834f3ac2314a.jpg', 'image/jpeg', 163675, 1280, 720, 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:42', 3, 'Dokbua Administrator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_media_video`
--

CREATE TABLE `zzz_business_media_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(32) DEFAULT '0',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `duration` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `shop_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `c_uid` int(11) NOT NULL DEFAULT '0',
  `c_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_date` datetime DEFAULT NULL,
  `m_uid` int(11) NOT NULL DEFAULT '0',
  `m_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_media_video`
--

INSERT INTO `zzz_business_media_video` (`id`, `title`, `content`, `file`, `type`, `size`, `width`, `height`, `duration`, `shop_id`, `shop_name`, `c_ip`, `c_date`, `c_uid`, `c_uname`, `c_ulog`, `m_ip`, `m_date`, `m_uid`, `m_uname`, `m_ulog`) VALUES
(1, 'big_buck_bunny.mp4', '', '48c01d999578158a47aef07954deb575.mp4', 'video/mp4', 5510872, 640, 360, '0:01:00.095000', 35, 'Dok Bua Thai kitchen ', '182.52.129.156', '2017-04-06 01:49:30', 3, 'Dokbua Administrator', NULL, '182.52.129.156', '2017-04-06 01:49:30', 3, 'Dokbua Administrator', NULL),
(2, 'big_buck_bunny.mp4', '', 'f2e31abe68a99b59b4c3c9cf8950b29d.mp4', 'video/mp4', 5510872, 640, 360, '0:01:00.095000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL),
(3, 'มือปืน - หน้ากากทุเรียน - THE MASK SINGER หน้ากากนักร้อง.mp4', '', 'c3469274857de75bda14c209f0f647d3.mp4', 'video/mp4', 102970075, 1280, 720, '0:06:13.240000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 10:32:36', 3, 'Dokbua Administrator', NULL),
(14, 'มือปืน - หน้ากากทุเรียน  THE MASK SINGER à¸«à¸™à¹‰à¸²à¸-à¸²à¸-à¸™à¸±à¸-à¸£à.mp4', '', '7373fb9db0dfab942a96569ab10fb6c4.mp4', 'video/mp4', 34340989, 640, 360, '0:06:13.240000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 17:53:01', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 17:53:01', 3, 'Dokbua Administrator', NULL),
(15, 'มือปืน - หน้ากากทุเรียน - THE MASK SINGER หน้ากากนักร้อง.mp4', '', 'ffa9d3b0d705700e1034983be97fc27d.mp4', 'video/mp4', 102970075, 1280, 720, '0:06:13.240000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:02:53', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:02:53', 3, 'Dokbua Administrator', NULL),
(16, '[ ไข่เจียวพระอาทิตย์ ] เมนูพระราชทาน จากในหลวง.mp4', '', '340bcd8556dc27c543f5b3d55a1ea7c5.mp4', 'video/mp4', 88913650, 1280, 720, '0:10:04.437167', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-06 18:08:28', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:08:28', 3, 'Dokbua Administrator', NULL),
(20, 'ฉันไม่มี - ทีที T_T [Official Lyric Video].mp4', '', 'aa2813426d430c57fd64f72a5aa5ebf9.mp4', 'video/mp4', 17784960, 640, 360, '0:04:25.320000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 14:58:26', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 14:58:26', 3, 'Dokbua Administrator', NULL),
(21, 'ใจกลางเมือง - LABANOON「Official MV」.mp4', '', '1526a10353bd8d1a8d052d3abb84d203.mp4', 'video/mp4', 20554949, 640, 360, '0:05:28.880000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 14:59:08', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 14:59:08', 3, 'Dokbua Administrator', NULL),
(22, '\'เสมอ\' พงษ์สิทธิ์ คำภีร์ Cover by Tom Room39.mp4', '', '8cff86195e2da9d5e0cc4d8bb770fc88.mp4', 'video/mp4', 16844922, 640, 360, '0:04:13.440000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 14:59:58', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 14:59:58', 3, 'Dokbua Administrator', NULL),
(23, 'Room39 - เป็นทุกอย่าง [Official MV].mp4', '', '881735cdc6e2a29159f542dfffd4e490.mp4', 'video/mp4', 25045136, 640, 360, '0:06:42.400000', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 15:02:07', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 15:02:07', 3, 'Dokbua Administrator', NULL),
(24, 'Bruno Mars - That’s What I Like [Official Video].mp4', '', '421c576ffc82c3b162d2812c257c0b1f.mp4', 'video/mp4', 12113771, 640, 360, '0:03:30.710500', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 15:03:14', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 15:03:14', 3, 'Dokbua Administrator', NULL),
(25, 'Ed Sheeran - Shape of You [Official Video].mp4', '', '2c4ca257daf7ae135d1a125f628f6b60.mp4', 'video/mp4', 15319751, 640, 360, '0:04:23.221292', 35, 'Dok Bua Thai kitchen ', '58.9.70.93', '2017-04-21 15:03:14', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 15:03:14', 3, 'Dokbua Administrator', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop`
--

CREATE TABLE `zzz_business_shop` (
  `bssh_id` int(10) UNSIGNED NOT NULL,
  `bssh_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bssh_bsth_id` int(10) UNSIGNED NOT NULL DEFAULT '101',
  `bssh_subcate` text COLLATE utf8_unicode_ci,
  `bssh_owner` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bssh_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bssh_force_online` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'force online order',
  `bssh_detail` text COLLATE utf8_unicode_ci,
  `bssh_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `bssh_address` text COLLATE utf8_unicode_ci NOT NULL,
  `addr1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `addr2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ' ',
  `state` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT ' ',
  `zipcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bssh_zipcode` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00000',
  `bssh_delivery_area` text COLLATE utf8_unicode_ci COMMENT 'split by double pipe II',
  `bssh_time_zone` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '+07:00' COMMENT 'local timezone of biz shop',
  `bssh_maps` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bssh_loc1` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USA',
  `bssh_loc2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bssh_loc3` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bssh_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bssh_mobile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bssh_website` text COLLATE utf8_unicode_ci,
  `bssh_email` text COLLATE utf8_unicode_ci,
  `bssh_imghead` text COLLATE utf8_unicode_ci NOT NULL,
  `bssh_imgfront` text COLLATE utf8_unicode_ci NOT NULL,
  `bssh_url_ios` text COLLATE utf8_unicode_ci COMMENT 'url for ios application',
  `bssh_url_apk` text COLLATE utf8_unicode_ci COMMENT 'url for android application',
  `tax_rate` decimal(8,5) NOT NULL DEFAULT '0.00000',
  `tax_delivery` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `delivery_charge` float NOT NULL DEFAULT '0',
  `bssh_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `bssh_cuser` int(10) UNSIGNED NOT NULL,
  `bssh_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bssh_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:00',
  `bssh_muser` int(10) UNSIGNED NOT NULL,
  `bssh_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop`
--

INSERT INTO `zzz_business_shop` (`bssh_id`, `bssh_active`, `bssh_bsth_id`, `bssh_subcate`, `bssh_owner`, `bssh_title`, `bssh_force_online`, `bssh_detail`, `bssh_desc`, `bssh_address`, `addr1`, `addr2`, `city`, `state`, `zipcode`, `bssh_zipcode`, `bssh_delivery_area`, `bssh_time_zone`, `bssh_maps`, `bssh_loc1`, `bssh_loc2`, `bssh_loc3`, `bssh_phone`, `bssh_mobile`, `bssh_website`, `bssh_email`, `bssh_imghead`, `bssh_imgfront`, `bssh_url_ios`, `bssh_url_apk`, `tax_rate`, `tax_delivery`, `delivery_charge`, `bssh_cdate`, `bssh_cuser`, `bssh_cip`, `bssh_mdate`, `bssh_muser`, `bssh_mip`) VALUES
(32, 1, 101, '104||102', 4, 'Bonsai Fusion Japanese Steak House ', 0, 'I must say that I really like this place. First impressions are already memorable as soon as you walk into the doors. They have very simple furniture which makes you feel like you\'re getting real Thai street food. I love the quotes they have on the wall as well. \r\n\r\nWe ordered some pad thai as well as Tom kha soup. Both weren\'t as spicy as we liked but that\'s okay since...I haven\'t actually been able to find any spicy thai food here compared to Portland. The flavor though was definitely great. The pad thai came in a rather large portion and was sauced well. It was definitely affordable at $12, but doesn\'t necessarily stand out like Osha Thais. \r\n\r\nThe tom kha though, was superb. It came out on a flaming pot, which is awesome because I hate when my soup cools down during my meal. It wasn\'t too much coconut like some places have, and slightly sour but they give you plenty of meat, as well as mushrooms. It was also a very large portion for only $12.95 and I had to take some home. \r\n\r\nOverall, this place is definitely homie and has decent Thai food. I would love to come back to try some of their speciality items, and their prices are a big selling point for me.', '', '8482 Hwy 6 N Houston, TX ', '8482 Hwy 6 N', '', 'Houston', ' TX', '77095', '77095', NULL, '+06:00', '29.904323, -95.631448', 'USA', 'TX', NULL, '(281) 856-0075', NULL, 'http://www.bonsaifusionsteakhouse.com', 'demo@ziamthai.com', '1487054372633624.jpg', '1485254802587414.jpg', NULL, NULL, '0.00000', 0, 0, '2016-07-21 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(34, 1, 101, NULL, 5, 'Khun Kay Thai Cafe ', 0, '		Just alright....I came here because I have been meaning to try it, as its close to my home. However, I always get turned off because there is always NO ONE in this restaurant when I walk by. Thats not a good sign right? Well, I don\'t judge a book by its cover. I went on a Friday night with my boyfriend around 7:30pm-8pm... supposedly a popular time to eat...However, when we arrived, there was just a single other table occupied. I ordered a tom yum noodle soup and my boyfriend ordered a beef noodle soup. To be honest, it tasted fine, nothing special but nothing too bad! I actually preferred my boyfriend\'s beef noodle soup more.\r\n\r\nEverything seemed ok but after I went home, a few hours later, my stomach started to hurt. I am not saying this place gave me this pain but I am not sure why I didn\'t feel great after eating here. I am willing to give this place another chance in a few months. However, food wise, it just tasted ok but not spectacular or 4 star worthy to me.', '', '1209 Montrose Blvd Houston, TX ', '1209', 'Montrose Blvd', 'Houston', ' TX', '77019', '77019', NULL, '-06:00', '29.756065, -95.391859', 'USA', 'SC', NULL, '', NULL, '', '', '1487128793546055.jpg', '1487300502870643.png', NULL, NULL, '0.75000', 1, 0, '2016-07-21 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(35, 1, 101, NULL, 3, 'Dok Bua Thai kitchen ', 1, '				Just alright....I came here because I have been meaning to try it, as its close to my home. However, I always get turned off because there is always NO ONE in this restaurant when I walk by. Thats not a good sign right? Well, I don\'t judge a book by its cover. I went on a Friday night with my boyfriend around 7:30pm-8pm... supposedly a popular time to eat...However, when we arrived, there was just a single other table occupied. I ordered a tom yum noodle soup and my boyfriend ordered a beef noodle soup. To be honest, it tasted fine, nothing special but nothing too bad! I actually preferred my boyfriend\'s beef noodle soup more.\r\n\r\nEverything seemed ok but after I went home, a few hours later, my stomach started to hurt. I am not saying this place gave me this pain but I am not sure why I didn\'t feel great after eating here. I am willing to give this place another chance in a few months. However, food wise, it just tasted ok but not spectacular or 4 star worthy to me.', '', '411 Harvard St Brookline, MA ', '411 Harvard St', '', 'Brookline', 'MA', '02466', '02446', NULL, '-05:00', '42.345395, -71.126785', 'USA', 'MA', NULL, '(617) 232-2955', NULL, '', '', '1487127387810619.jpg', '1486455038039221.jpg', NULL, NULL, '8.50000', 0, 0, '2016-09-14 10:16:34', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(70, 1, 101, NULL, 0, 'Thai Dishses', 0, '		Thai Dishes is a decent Thai restaurant on this side of town.  Added bonus for the free parking lot on the side of the restaurant.\r\n\r\nI was craving Thai food for lunch and decided to check out this place for take out. Lunch specials start from $9.50 that include selected entrees, an appetizer, white/brown rice and a salad or soup.  I ordered the pad thai lunch special at $9.50 which is a pretty good deal!  At the cashier counter, there\'s a little ipad device that you can enter in your phone number to check in to get deals. I checked in the first time and received a free thai iced tea coupon via text.\r\n\r\nOverall, the pad thai was decent - nothing special.  I found that the pad thai here is a little bit on the bland side, It could have used a bit more flavor and spice.  For some reason, the pad thai had a ketchupy taste to it.  Surprisingly, the lunch portions here are quite large. So large that I had leftovers the following day. \r\n\r\nIf I\'m craving Thai food again, I\'ll give this place another try and try out another dish!', 'thai food', '1015 N Sepulveda BlvdManhattan Beach', '1015 N', 'Sepulveda BlvdManhattan Beach', ' ', ' CA', '', 'CA 902', NULL, '+07:00', '33.886121, -118.396319', 'USA', 'WV', NULL, '', NULL, 'http://thaidishesmb.com', '-info@ziamthai.com', '1487068295152536.jpg', '1487300762964890.png', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(71, 1, 101, NULL, 0, 'Marnee Thai', 0, '						It was easy to book our reservation. We walked in with the fragrance of calla lilies. It was cozy but clean. We orders appetizer first for the hungry kids, and they served quickly. Pad Thai was good, we orders #33, the eggplant, some fried rice, and the avocado salad with prawns. All very good!', 'Thai Food', '2225 Irving StSan Franciscob/t 24th Ave & 23rd Ave Outer Sunset', '', '', ' ', ' ', '', ' CA 94', NULL, '+07:00', '37.763218, -122.481868', 'USA', 'NY', NULL, '(415) 665-9500', NULL, 'http://marneethaisf.com', '-info@ziamthai.com', '1487066106921289.jpg', '1487300981007691.png', NULL, NULL, '0.00000', 0, 0, '2016-09-14 10:22:50', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(72, 1, 101, NULL, 0, 'Amphawa', 0, '		Only got take out here but the service on the phone was friendly and quick. We got there around 10 p.m. (one of the few places open around that late on a weekday) and the place was surprisingly still pretty busy. The food was ready when we got there and someone greeted us right away. We paid with credit card. \r\n\r\nDelicious pad thai with shrimp and red curry with beef. The red curry with beef came with lots of veggies (green beans, carrots, red bell pepper, but too much bamboo) which made me happy. They also had brown rice which was made perfectly. The portions were very reasonable for the price.\r\n\r\nWe don\'t live in California, was here for vacation, but if we did live here, we\'d be back for more!', 'Thai Food', '5020 Geary BlvdSan Franciscob/t 14th Ave & 15th Ave Inner Richmond', '14th Ave & 15th Ave Inner Richmond', '5020 Geary BlvdSan Franciscob', ' ', ' CA', '', 'CA 941', NULL, '+07:00', '37.780823, -122.473271', 'USA', 'NM', NULL, '(415) 387-1299', NULL, 'http://amphawathai.com', 'info@ziamthai.com', '1487130196150960.jpg', '1487301287626445.png', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(73, 1, 101, NULL, 0, 'Lers Ros Thai', 0, '		I must say that I really like this place. First impressions are already memorable as soon as you walk into the doors. They have very simple furniture which makes you feel like you\'re getting real Thai street food. I love the quotes they have on the wall as well. \r\n\r\nWe ordered some pad thai as well as Tom kha soup. Both weren\'t as spicy as we liked but that\'s okay since...I haven\'t actually been able to find any spicy thai food here compared to Portland. The flavor though was definitely great. The pad thai came in a rather large portion and was sauced well. It was definitely affordable at $12, but doesn\'t necessarily stand out like Osha Thais. \r\n\r\nThe tom kha though, was superb. It came out on a flaming pot, which is awesome because I hate when my soup cools down during my meal. It wasn\'t too much coconut like some places have, and slightly sour but they give you plenty of meat, as well as mushrooms. It was also a very large portion for only $12.95 and I had to take some home. \r\n\r\nOverall, this place is definitely homie and has decent Thai food. I would love to come back to try some of their speciality items, and their prices are a big selling point for me.', 'Thai Food', '730 Larkin StSan Francisco, CA 94109b/t Olive St & Ellis St Tenderloin', 'Olive St & Ellis St Tenderloin', '730 Larkin StSan Francisco', ' ', ' CA', '94109', 'CA 941', NULL, '+07:00', '37.784766, -122.417694', 'USA', 'NJ', NULL, '(415) 931-6917', NULL, 'https://lersros.com', '-info@ziamthai.com', '1487065028602272.jpg', '1487041559417822.jpg', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(74, 1, 101, NULL, 0, 'Chaiya Thai Restaurant', 0, '				Hidden from the busier side of West Portal, Chaiya Thai is closer to the residential side of neighborhood and easy to miss. However, they offer decent Thai food in a low-key environment.\r\n\r\nWe started off with the Tom Yum soup, which was very warming on a cool, rainy day. It was nicely balanced with both sweet and sour flavors, both complimenting each other well. Mushrooms and protein (in our case, chicken) were plentiful.\r\n\r\nOne of our main entrees, the pineapple fried rice (which they call Hawaiian fried rice), was rather salty, despite the fact that they claim to not use MSG. The chicken was very dry and chewy too. I also felt like the kitchen threw this dish together too sloppily, as we had a few clusters of white rice and raisins stuck together, not distributed evenly throughout the whole dish. Our second entree, the grilled salmon in banana leaf, was also a little dry and unfortunately bland. The banana leaf was huge, given the impression the salmon filet would be a generous portion; however, upon unwrapping the leaf, the filet was actually small.\r\n\r\nWe finished off with the sweet sticky rice with mango dessert. The portion was huge and very rich and filling. After the Tom Yum, the dessert was probably the next best dish of the night.\r\n\r\nChaiya is quite spacious, modern, clean, and welcoming, and they\'re perfect for large groups. Service is very attentive and friendly, and our food came out quickly. Given the heavily-residential area, parking in this neighborhood is generally easy. Or if you\'re too lazy to drive here and find parking, they deliver too!', 'Thai Food', '272 Claremont BlvdSan Francisco, CA 94127b/t Ulloa St & Dorchester Way West Portal', '', '272 Claremont BlvdSan Francisco', ' Ulloa St & Dorchester Way West Portal', ' CA', '94127', 'CA 941', NULL, '+07:00', '37.741016, -122.464992', 'USA', 'MI', NULL, '(415) 999-0345', NULL, 'https://chaiyasf.com', '-info@ziamthai.com', '1487060749571795.jpg', '1485764505937382.png', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(75, 1, 101, NULL, 0, ' Navin Thai Restaurant', 0, '		Just alright....I came here because I have been meaning to try it, as its close to my home. However, I always get turned off because there is always NO ONE in this restaurant when I walk by. Thats not a good sign right? Well, I don\'t judge a book by its cover. I went on a Friday night with my boyfriend around 7:30pm-8pm... supposedly a popular time to eat...However, when we arrived, there was just a single other table occupied. I ordered a tom yum noodle soup and my boyfriend ordered a beef noodle soup. To be honest, it tasted fine, nothing special but nothing too bad! I actually preferred my boyfriend\'s beef noodle soup more.\r\n\r\nEverything seemed ok but after I went home, a few hours later, my stomach started to hurt. I am not saying this place gave me this pain but I am not sure why I didn\'t feel great after eating here. I am willing to give this place another chance in a few months. However, food wise, it just tasted ok but not spectacular or 4 star worthy to me.', 'Thai Food', '1059 Powell StSan Francisco, CA 94108b/t Washington St & Clay St Nob Hill', 'Washington St & Clay St Nob Hill', '1059 Powell StSan Francisco', ' ', ' CA', '94108', 'CA 941', NULL, '+07:00', '37.794515, -122.409913', 'USA', 'MA', NULL, '(415) 274-9948', NULL, 'http://navinthaisf.com', 'info@ziamthai.com', '1487131662004595.jpg', '1487299724015058.jpg', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(76, 1, 101, NULL, 0, 'Up Thai', 0, '						Pleasantly surprised from this Thai restaurant. I thought this would be one of those washed up Thai places where everything would be a total departure from Asian flavors. Granted, this place is not up to Thai restaurant in Queens yet when it comes down to authenticity BUT..whether this restaurant is authentic or or not, the quality of the food is undeniably high!\r\nRecommended: Claypot rice!!! Large portion, awesome flavor, reasonable price (for Manhattan). Only down side is this place can be a little loud and I\'m not too crazy of the pandan chicken appetizer (too little of a meat for an appetizer). Also, they could only accept up to 4 credit cards.. so if you go with a large group & happens to share food, be prepared to bring some cash or have Venmo to the rescue!!! \r\n\r\nVerdict: This is definitely an American friendly Thai restaurant (spice level moderate), but not if you want a more authentic dish and spice levels, go to Thai restaurant in Queens. However, food is solid and I would recommend this place..', 'Thai Food', '1411 2nd AveNew York, NY 10021b/t 73rd St & 74th St Yorkville, Upper East Side', '73rd St & 74th St Yorkville, Upper East Side', '1411 2nd AveNew York', ' ', ' NY', '10021', 'NY 100', NULL, '+07:00', '40.769923, -73.957852', 'USA', 'AL', NULL, '(212) 256-1188', NULL, 'http://Business website upthainyc.com', 'info@ziamthai.com', '1487132939760826.jpg', '1487215426327785.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-09 13:50:31', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(77, 1, 101, NULL, 0, 'JJ Thai Street Food', 0, '				So good! We went on a Saturday night. I ordered the cornish hen dish and it was delicious. Perfectly cooked and the sauce was spicy, but delicious. Love the sticky rice. It\'s BYOB too (with no corkage fee). Husband ordered a dish he normally gets here, but they brought him something different...he asked them why the dish looked totally different and they weren\'t sure what he was talking about. He said it was good, but not what he wanted. Maybe they ran out or something...who knows. Very cool place - and I don\'t generally consider myself someone who likes Thai food but I would eat here again for sure! Cute little atmosphere, small tables, cold water, very hip but also very good and a good value for the amount of food you get.', 'Thai Food', '1715 West Chicago AveChicago, IL 60622b/t Hermitage Ave & Paulina St West Town, Ukrainian Village', 'Hermitage Ave & Paulina St West Town, Ukrainian Village', '1715 West Chicago AveChicago', ' ', ' IL', '60622', 'IL 606', NULL, '+07:00', '41.895827, -87.670211', 'USA', 'IL', NULL, '(312) 929-4435', NULL, 'http://jjthaistreetfood.com', 'info@ziamthai.com', '1487134115641128.jpg', '1485400034158380.jpg', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(78, 1, 101, NULL, 0, 'Siam Thai & Sushi Restaurant', 0, '										Here is my 2 cents on the food.\r\nFirst the sweet tea. The tea is a Thai  version of american sweet tea. It sweet but has a flavor unique to Thailand. Free refills. Its good.\r\nEggs rolls were crispy and hot. Side sauce was sweet.. \r\nI decided on scallops and the entree Pring Khing. It was very good but there should have been more scallops. I was given a choice of 4 different hot spices.. BE Warned Folks of Florida DO NOT try this.Your palette is not ready for these.  They were wonderfully Delicious and make you sweat. It would make everyone just cry.  But I loved the choices.\r\nOver all a good place to eat. \r\n\r\nNow some chit chat. Its a rainy Tuesday. 12 PM or so.  I had stopped in 3 other eateries. Open signs on, no one around. I left frustrated. I used my new GPS. It led me here. A good choice. Located in a stripped mall near other places,(bbq- smoking wood is overwhelming) My server Criss was outstanding. Very attentive.  If you are a big sushi fan a LONG list of sushi available.\r\nGood decor good place.\r\nGive it it a try.', 'Thai Food', '13161 N Cleveland AveNorth Fort Myers, FL 33903', '13161 N Cleveland AveNorth Fort Myers', '', ' ', ' FL', '33903', 'FL 339', NULL, '+07:00', '43.311946, -73.646088', 'USA', 'AL', NULL, '(239) 995-5002', NULL, 'http://siamthainfm.com', 'info@ziamthai.com', '1487143776752035.jpg', '1487215961946327.jpg', NULL, NULL, '0.00000', 0, 0, '2016-08-16 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(82, 1, 101, NULL, 0, 'Line Thai', 0, 'The atmosphere was pleasant, the service was good, and the food tasted great. \r\nI will definitely be here again. If the service and food remains this good,  I\'ll up the rating to 5 stars. \r\nDefinitely a decent value for the money.', 'Thai Foods', '9805 W Bell RdSun City', '9805 W Bell RdSun City', '', ' ', ' AZ', '', 'AZ 853', NULL, '+07:00', '33.637820, -112.271215', 'USA', 'AZ', NULL, '(623) 977-8940', NULL, 'https://www.LineThai.com', '-info@ziamthai.com', '1487145721820584.jpg', '1487215766201318.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-07 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(83, 1, 101, NULL, 0, 'Phuket Thai', 0, '		Everybody was nice and we really appreciate it! The food was amazing and we probably ordered about six dishes! Which was great for later because that means we didn\'t have to cook! Thank you guys so much for your hospitality! We will definitely be back at a better hour! ', 'Thai Foods', '16612 Beach BlvdSte HHuntington Beach', '16612 Beach BlvdSte HHuntington Beach', '', ' ', ' CA ', '', 'CA 926', NULL, '+07:00', '33.721184, -117.988446', 'USA', 'CA', NULL, '(714) 842-1101', NULL, 'https://www.PhuketThai.com', '-info@ziamthai.com', '1487065447847641.jpg', '1487216633561590.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-08 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(84, 1, 101, NULL, 0, 'The Taste Kitchen', 0, '		The food was perfectly fine here, but nothing that blew my socks off. I got the crab fried rice and the pad see ew, both were large portions. We also got a thai tea, the large size, which was huge, probably close to 36 oz. Had no idea it was going to be that big.', 'Thai Foods', '3970 Sepulveda BlvdCulver City', '', '', ' ', ' ', '', 'CA 902', NULL, '+07:00', '34.009511, -118.414142', 'USA', 'CA', NULL, '(310) 391-7152', NULL, 'https://tastekitchenrestaurant.com', '-info@ziamthai.com', '1487068999231072.jpg', '1487041681000761.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-08 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(85, 1, 101, NULL, 0, 'TreeHouse Thai', 0, 'I was at work CRAVING Thai food and found this place on Yelp. The reviews were positive and the pictures looked good. I ordered through the app and my food was ready in 15 minutes flat. I got the Pad See Ewe combo spicy with beef and Thai tea. BEST THAI TEA EVER! It was sweet but not overly sweet and once the ice melted it was perfection. The noodles were at a level of spicy that was tasty and tolerable and the noodles came with a small side of dumpling soup (special surprise I was not expecting). It also came with a mini egg roll as well and a side of spicy garlic sauce. ', 'Thai Foods', '10200 Venice BlvdSte 207Culver City, 10200 Venice BlvdSte 207Culver City', '', '', ' ', ' ', '', ' CA 90', NULL, '+07:00', '34.021325, -118.401790', 'USA', 'CA', NULL, '(310) 558-8653', NULL, 'http://treehousethaila.com', 'info@ziamthai.com', '1487146855264328.jpg', '1487301443112080.png', NULL, NULL, '0.00000', 0, 0, '2016-09-09 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(86, 1, 101, NULL, 0, 'Toomie’s Thai', 0, 'This is definitely my favorite Thai restaurant in Alameda! The food is delicious and they are never super busy when I go. The pad thai, pad kee mow, and pad see ew are on a whole other level compared to some of the other thai places I eat at. For dessert, try their mango sticky rice! This is the only thai place that doesn\'t skimp out on mangos, rice and even the sweet coconut sauce. I highly recommend you try this place!', 'Thai Foods', '1433 Park StAlamedab/t Post Office Ct & Santa Clara Ave', '', '', ' ', ' ', '', ' CA 94', NULL, '+07:00', '37.765298, -122.242377', 'USA', 'CA', NULL, '(510) 865-8008', NULL, 'http://toomiesthai.com', 'info@ziamthai.com', '1487148575847102.jpg', '1487298926363528.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-09 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(87, 1, 101, NULL, 0, 'Plearn Thai', 0, 'There\'s some magic going on in that kitchen.  We ordered Som Tum to start.  It was fun to try a salad instead of going straight to our tried and true favorites.  Instead, we stayed away from what we knew.  Our salad had shaved green papaya, chicken and prawns on a bed of lettuce and roasted peanuts sprinkled on top.  It was delicious with the right amount of spicy dressing that had flakes of red pepper in it.  We were both very happy with this dish.', 'Thai Foods', '1923 University AveBerkeleyb/t Martin Luther King Jr Way & Bonita Ave Downtown Berkeley', '', '', ' ', ' ', '', 'CA 947', NULL, '+07:00', '37.871790, -122.272388', 'USA', 'CA', NULL, '(510) 549-9999', NULL, 'http://plearnthai.com', 'info@ziamthai.com', '1487151953707569.jpg', '1487301618135117.png', NULL, NULL, '0.00000', 0, 0, '2016-09-09 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(88, 1, 101, NULL, 0, 'Blue Bay Thai Cuisine', 0, 'I keep coming back to this place.. everything is good. . Its a good place and its price right.', 'Thai Foods', '13501 San Pablo AveSte BSan Pablo', '', '', ' ', ' ', '', 'CA 948', NULL, '+07:00', '37.955586, -122.336220', 'USA', 'CA', NULL, '(510) 232-4888', NULL, 'http://bluebaythai.com', 'info@ziamthai.com', '1487154525703460.jpg', '1487302554099924.png', NULL, NULL, '0.00000', 0, 0, '2016-09-09 14:02:05', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(89, 1, 101, NULL, 0, 'Cancoon Thai Restaurant', 0, 'This is one of Bellflower\'s hidden treasures. You can\'t go wrong with anything on the menu. From Moo-yang to any of their soups or regular classic thai dishes, they always hit home! \r\n\r\nBy the way, if your thinking of having any of the curry soups, have it at the restaurant, not take home. For whatever reason, we always end up with a bowl of bamboo shoots instead of everything else. ', 'Thai Foods', '9349 Alondra BlvdBellflower', '', '', ' ', ' ', '', 'CA 907', NULL, '+07:00', '33.889758, -118.134453', 'USA', 'CA', NULL, '(562) 925-0993', NULL, 'https://www.ziamthai.com', '-info@ziamthai.com', '1487155121942405.jpg', '1485761968678232.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-09 15:17:32', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(90, 1, 101, NULL, 0, 'veSTATION', 0, 'Look at all the rave reviews! I\'m not surprised bc this place is beyond delicious, but j thought invests my little hidden gem! I guess it\'s not as hidden as I thought. \r\nThis place is healthy and amazingly delicious. My regular dishes include the fresh spring rolls. OMG! What a treat! The dipping sauce is amazing too! \r\nWe also always get a curry bowl. It\'s creamy and delicious and has super fresh ingredients. You can taste the freshness! \r\nI love that\'s it\'s vegan and you don\'t feel heavy it bloated after eating. Other vegan places use so much oil abs fry the food which gives me a stomach ache but not this place! ', 'Thai Foods', '14435 Ventura BlvdSherman Oaks', '', '', ' ', ' ', '', 'CA 914', NULL, '+07:00', '34.151530, -118.447718', 'USA', 'CA', NULL, '(818) 784-8388', NULL, 'http://vestation.com', 'info@ziamthai.com', '1487156046992099.jpg', '1487302353640253.png', NULL, NULL, '0.00000', 0, 0, '2016-09-09 17:18:58', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(91, 1, 101, NULL, 0, 'Siamese Garden', 0, 'We picked up an order for Egg Rolls, Drunken Noodles (with chicken), Garlic Pepper Beef, and Vegetable Fried Rice from Siamese Garden. We were very happy with the quality of the food - everything was delicious. The portions were good sized (but not overly huge) so our order could easily feed 2-4 people. The pickup service was quick and easy, and the people at the counter were very friendly and nice. The restaurant itself is very cute - we will definitely want to try and eat there next time. My one complaint is that the food is a little over-priced. It is more expensive than your typical Thai restaurant in the area, but I think this is just because of the location on Washington near the pier - all of the restaurants over there (Baja Cantina, etc.) are a bit pricey for what you get. Overall, we were very happy with our decision to try Siamese Garden!', 'Thai Foods', '301 Washington BlvdMarina Del Rey', '', '', ' ', ' ', '', 'CA 902', NULL, '+07:00', '33.980672, -118.464726', 'USA', 'CA', NULL, '(310) 821-0098', NULL, 'http://siamesegardenca.com', 'info@ziamthai.com', '1487066123973896.jpg', '1487299160494602.png', NULL, NULL, '0.00000', 0, 0, '2016-09-12 11:43:28', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(92, 1, 101, NULL, 0, 'Vanida Thai Kitchen', 0, 'simply amazing!\r\nsuper sweet staff.. prompt service.. beautiful ambience.. amazingly delicious food.. what else do you expect from a restaurant!\r\nlove this place and will definitely be coming back more often..\r\n*seriously whoever was the chef.. thanks for the awesome food.. loved it!\r\n*last but not the least, loved the flower made out of straw cover on the straw with my drink.\r\ncheers!', 'Thai Foods', '3050 Taraval StSan Franciscob/t 40th Ave & 41st Ave Parkside', '', '', ' ', ' ', '', 'CA 941', NULL, '+07:00', '37.742216, -122.499028', 'USA', 'AL', NULL, '(415) 564-6766', NULL, 'http://vanidathaikitchen.com', 'info@ziamthai.com', '1487156141918023.jpg', '1487219836450062.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-12 13:45:48', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(93, 1, 101, NULL, 0, 'Lanna Thai Restaurant', 0, 'This turned out to be a really pleasant surprise for me! At a glance, the restaurant exterior might draw some skepticism about the quality and authenticity of the food. Caving in to hunger, I decided to give the place a try.\r\n\r\nNow I\'m purely reviewing the restaurant on its Thai menu, as I did not try any of their sushi. The interior was adorned by myriads of Hindu deities, sensual yellow-lit backlights, and beautiful waitresses in chut Thai dresses. The restaurant--with its ostentatious decor--gives off a pleasant and exciting atmosphere; however, the food was the main star. My partner and I ordered take out as we were staying in a hotel nearby and wanted to make the most of our beach view. Our food came out in a normal to fast pace, and was packaged with pretty good care. He ordered the beef green curry and satay chicken as appetizer, while I ordered the shrimp red curry. Our food was accompanied by heaping amounts of jasmine rice, something we eagerly welcomed as we are rice-lovers. The green curry had a nice kick of spice in it, masking away the iron taste that steak usually carries. My red curry was balanced between the richness of coconut milk and lean cut of the bamboo roots. I noticed that both of our curries were not as thick as ones served in other Thai restaurants. The natural thinness of the curry reassures me of the freshness of the ingredients, as well as the authenticity of their crafts as most restaurants rely on corn starch to render that thick, spaghetti sauce-like texture that most curries are associated with. \r\n\r\nI would definitely revisit this restaurant if I ever find myself in the area. My new favorite Thai place for sure!', 'Thai Foods', '4871 Park St NSaint PetersburgTyrone', '', '', ' ', ' ', '', 'FL 337', NULL, '+07:00', '27.816090, -82.753429', 'USA', 'FL', NULL, '(727) 545-3057', NULL, 'http://lannathaiandsushi.com', 'info@ziamthai.com', '1487060243237863.jpg', '1485420054998830.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-12 14:21:12', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(94, 1, 101, NULL, 0, 'Asian Street Sushi Thai Bar', 0, 'We found this amazing, easy to miss restaurant purely by luck while stopping to refuel our boat. A local told us about it and we were a little skeptical but willing give it a try. After all, there were few other options nearby.\r\n\r\nWe couldn\'t have been happier that we ate there. The menu includes a range of Thai and other SE Asian dishes, with all of your favorites and more. Better still, the kitchen is happy to modify to make customers happy (I asked for an eggplant dish that wasn\'t listed). \r\n\r\nHaving recently returned from BKK, I can tell you with confidence that the flavors and presentation were authentic. Add in the very friendly staff - who went out of their way -- Kim, especially -- to make sure we were happy. They even made us something special for our trip.\r\n\r\nThe biggest shocker was that the place was nearly empty on a Saturday night. It should be packed, for all the reasons mentioned.\r\n\r\nSo, if you are in the area and want a fantastic, well-priced taste of Thailand, make sure to visit. You won\'t be disappointed.', 'Thai Foods', '1000 U S Hwy 1North Palm Beach', '', '', ' ', ' ', '', 'FL 334', NULL, '+07:00', '26.828458, -80.060571', 'USA', 'FL', NULL, '(561) 507-1829', NULL, 'htttp://asianstreetsushithaibar.com', 'info@ziamthai.com', '1487154660574678.jpg', '1487299355367281.png', NULL, NULL, '0.00000', 0, 0, '2016-09-12 15:12:26', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(95, 1, 101, NULL, 0, 'Kai Thai Restaurant', 0, 'Ordered from this restaurant (To Go)\r\nTheir food is DELICIOUS!\r\nIt\'s a spectacular little restaurant that people seem to look over due to the location between other shopping stores, but I suggest popping in and giving it a try while you\'re doing your shopping, you won\'t regret it!\r\nIt is vegan friendly, almost all of their foods can be made vegan, their curry however is not.\r\nOutside of that, have at it!!\r\nI know this will be my go to when it comes to going out to eat and experiencing a great vegan meal in Milledgeville.', 'Thai Foods', '2600 N Columbia StSte C2Milledgeville', '', '', ' ', ' ', '', 'GA 310', NULL, '+07:00', '33.118414, -83.264290', 'USA', 'GA', NULL, '(478) 454-1237', NULL, 'htttp://ziamthai.com', 'info@ziamthai.com', '1487153300462665.jpg', '1485426364655210.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-12 15:58:48', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(96, 1, 101, NULL, 0, 'Thai Pepper', 0, 'This is one of the BEST places to eat here in Middle Georgia. The food is fresh, flavorful, and the portions are more than enough to split between 2 meals. \r\nTheir sushi menu is intense, so bring someone who knows what they\'re doing. ', 'Thai Foods', '1806 Russell PkwySte 1100Warner Robins', '', '', ' ', ' ', '', 'GA 310', NULL, '+07:00', '32.593866, -83.666015', 'USA', 'GA', NULL, '(478) 225-2609', NULL, 'http://thethaipepper.com', 'info@ziamthai.com', '1487151682208655.jpg', '1487151728993998.png', NULL, NULL, '0.00000', 0, 0, '2016-09-12 16:21:48', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(97, 1, 101, NULL, 0, ' Curry Curry Thai', 0, 'Stopped in here after biking on the silver comet trail--would have never gone without all the positive Yelp reviews. Felt I had to pass the word along.  There was only one other table on the restaurant, so the service was appropriately attentive. Decor is pretty nice and clean considering how affordable the food is.  \r\n\r\nI had the basil rolls for an appetizer and the cashew dish with tofu which were both very good. They give a complimentary soup during lunchtime, and the hot and sour and coconut soups were both delicious. Hands down best coconut soup I\'ve ever had. I think I\'ll try the Masaman curry the next time, but I\'ll be back in a heartbeat if I\'m ever in the area.', 'Thai Foods', '1385 Highlands Ridge RdSte DSmyrna', '', '', ' ', ' ', '', 'GA 300', NULL, '+07:00', '33.840627, -84.519724', 'USA', 'GA', NULL, '(770) 432-3555', NULL, 'https://currycurrythai.com', '-info@ziamthai.com', '1487151066272464.jpg', '1487150739465436.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-12 17:13:02', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(98, 1, 101, NULL, 0, 'Ginger Thai cuisine', 0, 'The pad thai was delicious! There isn\'t a lot of seating, so get take-out, but it\'s the best Thai food in the area.', 'Thai Foods', '111 W 2nd StCedar Falls', '', '', ' ', ' ', '', ' IA 50', NULL, '+07:00', '42.536994, -92.446091', 'USA', 'IO', NULL, '(319) 266-2150', NULL, 'http://gingerthai.org', 'info@ziamthai.com', '1487148535381497.jpg', '1487303004208477.png', NULL, NULL, '0.00000', 0, 0, '2016-09-12 17:37:58', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(99, 1, 101, NULL, 0, 'Thai Spice', 0, '				At last, a real Thai restaurant in Harford County! Thai owners and chef, just upgraded the menu and will refresh again soon. Trying hard to keep it authentic and very open to feedback. The flavors in the dishes we had were wonderful and the heat levels right on. I had a 5 (Thai hot) and it was wonderful, my wife had 3 hot but not killer.\r\nThe decor is very good and the staff friendly and knowledgeable. Highly reccomended, lets hope enough people appreciate this place to keep it open and encourage other ethnic places to come out to HC.\r\nA good sign was forks and spoons, no chopsticks and Thai familes eating there when we arrived.\r\nNo drink license yet but going through the usual HC long approval process. Still probably won\'t ever see Mekong (Thai whiskey) here but I live in hope', 'Thai Foods', '5 Bel Air S PkwyBel Air, MD 21015', '', '', ' ', ' ', '', 'MD 210', NULL, '+07:00', '39.495801, -76.327349', 'USA', 'MD', NULL, '(410) 670-3297', NULL, 'http://thaispicebelair.com', 'info@ziamthai.com', '1487067252588471.jpg', '1485428428807279.jpg', NULL, NULL, '0.00000', 0, 0, '2016-11-07 11:01:47', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(100, 1, 101, NULL, 0, 'Sabaidee Thai & Sushi Bar', 0, 'Best sushi I have had in a very long time! It\'s worth it trust the reviews and come here you will not be disappointed. Everyone loves their curry and basil duck too, but the sashimi and sushi here is by far the best', 'Thai Foods', '2204 S Main StSalisbury', '', '', ' ', ' ', '', 'NC 281', NULL, '+07:00', '35.650781, -80.500880', 'USA', 'NC', NULL, '(704) 637-0111', NULL, 'https://sabaideethaisushi.com', '-info@ziamthai.com', '1487067427269275.jpg', '1487303706511567.png', NULL, NULL, '0.00000', 0, 0, '2016-09-13 11:07:24', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(101, 1, 101, NULL, 0, 'Arawan Thai Bistro and Dessert', 0, 'Amazing service and really good food! I went with my family after seeing the blue man group. The place is located in a quiet area that looks deserted. The place is nicely decorated. ', 'Thai Foods', '953 E Sahara AveSte E-14Las Vegas', '', '', ' ', ' ', '', 'NV 891', NULL, '+07:00', '36.142326, -115.142356', 'USA', 'NV', NULL, '(725) 222-4275', NULL, 'https://arawanthaibistro.com', '-info@ziamthai.com', '1487148050932686.jpg', '1486443067565226.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-13 13:53:49', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(102, 1, 101, NULL, 0, 'Tik’s Thai Express', 0, 'This place is all right!  Prompt service and the best Pad Thai anywhere around. Nice, clean restrooms and they even run deals on local flavor.  The Boba tea is pretty amazing, too.  You should try the green melon flavor.', 'Thai Foods', '2808 Colonel Glenn HwyFairborn', '', '', ' ', ' ', '', 'OH 453', NULL, '+07:00', '39.777876, -84.058454', 'USA', 'OH', NULL, '(937) 912-5984', NULL, 'https://tiksthaiexpress.com', '-info@ziamthai.com', '1487069371086434.jpg', '1487303852526305.png', NULL, NULL, '0.00000', 0, 0, '2016-09-13 14:37:30', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(103, 1, 101, NULL, 0, 'Siam Lotus Asian Kitchen & Bar', 0, 'The first time we ate here we got dinner to go. It was ok. Then we went back for happy hour and the food has been really good since, so our first visit must have been an off night. It\'s not the best best best Thai food we\'ve ever had but it\'s good and consistent. \r\n\r\nTheir happy hour drinks are great as well. I\'m working my way through the list and have only come across one drink I didn\'t love - the basil gimlet - it was good but I don\'t love basil that much. The guavarita is excellent. The Siam lotus blossom is exquisite when it\'s made right - when it\'s not it\'s still really delicious!', 'Thai Foods', '12600 SW Crescent StSte 150Beaverton ', '', '', ' ', ' ', '', 'OR 970', NULL, '+07:00', '45.490902, -122.806159', 'USA', 'OR', NULL, '(503) 718-7101', NULL, 'https://Business website siamlotusoregon.com', '-info@ziamthai.com', '1487066768693435.jpg', '1487304092568501.png', NULL, NULL, '0.00000', 0, 0, '2016-09-13 17:41:30', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(104, 1, 101, NULL, 0, 'Red Onion', 0, 'THE first Thai place that I have been to that actually got my food spicy in just the way I like it! That has NEVER happened in all my years of eating Thai food. I say Thai hot and most places will just dump on extra red pepper flakes. Yes, it\'s ok, but what do slathering a meal with red pepper flakes really do? Not much. When I want hot, I want to taste it in the sauce, in the meat and veggies and quite simply, I want to have a good healthy sweat going as I eat some truly great food.\r\n\r\nRed Onion was that place. Several of us took in Red Onion after a five mile plus hike through Forest Park. My brother knew of this place and wanted to try it out. Great choice! Yellow curry, pan see ew, drunken noodles and rad na were ordered along with some Thai iced teas. I had the beef rad na and the sauce was more a broth than a thin sauce and it was excellent! Strips of beef, cauliflower, broccoli, carrots and spinach(?) in an oyster gravy sauce that was more broth and I used a spoon to drink up every spicy drop. Rad na is not normally a spicy dish. I did request it this was and as you can see, I was extremely thrilled how it came out. Everyone really enjoyed their meals and the others loved their Thai iced teas.\r\n\r\nIncredible food, great service and we WILL be back soon.\r\n\r\nEnjoy!', 'Thai Foods', '1123 NW 23rd AvePortlandAlphabet District, Northwest', '', '', ' ', ' ', '', 'OR 972', NULL, '+07:00', '45.531013, -122.698827', 'USA', 'OR', NULL, '(503) 208-2634', NULL, 'https://redonionportland.com', '-info@ziamthai.com', '1487067166808319.jpg', '1485745960522624.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-14 11:28:01', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(105, 1, 101, NULL, 0, 'City Thai', 1, '				I have loved the people, the food and the fact that they deliver, for a long time now. BUT, they just catered an event for me the other day and now I love them even more! The presentation was so pretty and so thoughtfully done that it made very easy to transfer onto my own serving dishes. Noom is the cutest delivery guy in the whole world!! They made an early morning delivery and an afternoon delivery so that everything would be fresh and lovely. Teem (I think that\'s how her name is spelled) is the owner I believe, was lovely to work with. She made great suggestions, called me back several times before my big day to check on the status of things, and worked with my budget!!\r\nMy clients were all new to City Thai\'s cuisine and they ALL ASKED again and again where we ordered from. We all loved the food!! Super delicious! \r\nThank you so much Teemy for taking such good care of us and making my annual event a total success!!! Muriel Stanton, owner of La Muse Spa', 'Thai Foods', '6341 SW Capitol Hwy,PortlandHillsdale, Southwest Portland OR\r\n', '6341', 'SW Capitol Hwy', 'Portland', 'OR', '97239', '97239', NULL, 'America/Los_Angeles', '45.479090, -122.695454', 'USA', 'OR', NULL, '(503) 293-7335', NULL, 'https://www.citythaiportland.com', 'boripat@revenue-express.com', '1497414920069255.jpg', '1497424873377924.png', NULL, NULL, '7.00000', 0, 0, '2016-09-14 16:44:11', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(106, 1, 101, NULL, 0, 'Dang’s Thai Kitchen', 0, 'Fantastic service! Love the food as well. Pad woon sen, pad thai, drunken noodles, and calamari are the rotating choices of our family! Whether dine in or take out, we are never disappointed.		', 'Thai Foods', '670 N State StLake Oswego', '', '', ' ', ' ', '', 'OR 970', NULL, '+07:00', '45.422784, -122.661964', 'USA', 'OR', NULL, '(503) 697-0779', NULL, 'https://www.dangsthaikitchen.com', '-info@ziamthai.com', '1487147095042040.jpg', '1487299584619222.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-15 11:34:29', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(107, 1, 101, NULL, 0, 'Mee Gin Soul Kitchen', 0, 'I really like this Thai restaurant. The ambiance of it is really relaxing. The first time eating here I had the khao soi gai which is a noodle curry with chicken and it was so good I had to come back and get it again. Ive also tried the crying tiger which was alright, I got tired of eating it after a few bites but if you love steak, then I think you\'ll love that dish. The Mee gin wings were very crispy and I thought the sauce was already going to be on it but it was on the side so that you can dip in it. Everything about this restaurant was amazing to me. Even their water was great and interesting because they infuse it with pandas leaves which is very unlike other Thai restaurants. It brings a whole different experience to it and I definitely would recommend it to anyone and everyone.', 'Thai Foods', '3616 SE Hawthorne BlvdPortlandSoutheast Portland, Hawthorne, Richmond', '', '', ' ', ' ', '', 'OR 972', NULL, '+07:00', '45.511877, -122.626297', 'USA', 'OR', NULL, '(503) 231-9898', NULL, 'https://www.ziamthai.com', '-info@ziamthai.com', '1487060602987412.jpg', '1486355103714245.png', NULL, NULL, '0.00000', 0, 0, '2016-09-15 15:10:35', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(108, 1, 101, NULL, 0, 'Thai Elephants Restaurant', 0, 'Amazing Thai place! The decor/furniture is one of a kind not to mention the food is great! The staff is very pleasant as well and added to our great dining experience	', 'Thai Foods', '915 Unit Q Folly RdCharlestonJames Island', '', '', ' ', ' ', '', 'SC 294', NULL, '+07:00', '32.733677, -79.969990', 'USA', 'SC', NULL, '(843) 619-0181', NULL, 'https://www.thaielephantscharleston.com', '-info@ziamthai.com', '1486715538065417.jpg', '1487065572560027.jpg', NULL, NULL, '0.00000', 0, 0, '2016-09-15 17:50:32', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(109, 1, 101, NULL, 0, 'Taste of Thai', 0, '29407', 'Thai Food', '874 Orleans RdUnit 6Charleston, SC 29407West Ashley', '', '', ' ', ' ', '', '29407', NULL, '+07:00', '32.796558, -80.027689', 'USA', 'SC', NULL, '(843) 573-8825', NULL, 'http:/charlestontasteofthai.com', '-info@ziamthai.com', '1487067760848689.jpg', '1486119185675044.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 15:25:55', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(110, 1, 101, NULL, 0, 'Bluefin Sushi Bar', 0, 'Very slow but worth it for some of the most authentic Japanese I have ever had. Sushi was', 'Thai Food', '874 Orleans RdUnit 1Charleston, SC 29407West Ashley', '', '', ' ', ' ', '', '29407', NULL, '+07:00', '32.796502, -80.027979', 'USA', 'SC', NULL, '(843) 952-7188', NULL, 'https://www.BluefinSushiBar.com', '-info@ziamthai.com', '1486715309067761.jpg', '1487305642570417.png', NULL, NULL, '0.00000', 0, 0, '2017-01-06 15:38:36', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(111, 1, 101, NULL, 0, 'Tasty Fusion', 0, 'We have amazing food! We specialize in Thai, Sushi, American, wings, ribeye, duck, seafood, burgers, and more. We offer a kids\' menu. You have a choice of the dining room, sports\'.', 'Thai Food', '109 Holiday DrSummerville, SC 29483', '', '', ' ', ' ', '', '29483', NULL, '+07:00', '33.038331, -80.153902', 'USA', 'SC', NULL, '(843) 494-5756', NULL, 'http://tastythaiandsushi.com/', '-info@ziamthai.com', '1487067872877967.jpg', '1487041862866321.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 15:43:55', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(112, 1, 101, NULL, 0, 'Bangkok Alley', 0, 'This is a must visit whenever we\'re in town visiting my in-laws. So far I\'ve tried the pad Thai, pad', 'Thai Food', '2150 W Poplar AveCollierville, TN 38017Germantown', '', '', ' ', ' ', '', '38017', NULL, '+07:00', '35.053414, -89.734871', 'USA', 'TN', NULL, '(901) 854-8748', NULL, 'https://www.bangkokalley.com', '-info@ziamthai.com', '1487067909747044.jpg', '1487067909747044.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 15:49:20', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(113, 1, 101, NULL, 0, 'Madam Mam\'s', 0, 'Vegetarian Entrees, Gluten Free, No MSG added, Fusion Thai such as Green Apple Salad, Homemade Special Sauces, Special Curries and Thai Tea and Coffee. We also provide the option of ', 'Thai Food', '2700 W Anderson LnSte 419Austin, TX 78757', '', '', ' ', ' ', '', '78757', NULL, '+07:00', '30.359492, -97.734556', 'USA', 'TX', NULL, '(512) 371-9930', NULL, 'https://www.madammam.com', '-info@ziamthai.com', '1486717624696420.jpg', '1486118207815566.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 15:59:24', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(114, 1, 101, NULL, 0, 'La Ong Thai Bistro', 0, 'I tend to eat vegan food and was happy when the waiters told us we could get our entrees without', 'Thai Food', '2521 John Milton DrHerndon, VA 20171', '', '', ' ', ' ', '', '20171', NULL, '+07:00', '38.927775, -77.375204', 'USA', 'VA', NULL, '(703) 429-4056', NULL, 'https://www.Business website laongthai.com', '-info@ziamthai.com', '1487068722306155.jpg', '1487304977845966.png', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:11:11', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(115, 1, 101, NULL, 0, 'Thai 99', 0, 'Thai cuisine, we offers fresh ingredients in our own authentic recipes. vegetarians friendly', 'Thai Food', '1937 S Military HwyChesapeake, VA 23320', '1937', 'S Military', 'HwyChesapeake', 'VA', '23320', '23320', NULL, '+07:00', '36.787542, -76.252481', 'USA', 'VA', NULL, '(757) 543-9116', NULL, 'http://gothai99.com', '-info@ziamthai.com', '1487068031743385.jpg', '1487042078203305.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:15:56', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(116, 1, 101, NULL, 0, 'Bangkok Garden', 0, 'This was our to go to Thai Food place until another Thai Restaurant opened up closer to home. We…', 'Thai Food', '417 W 21st StNorfolk, VA 23517', '', '', ' ', ' ', '', '23517', NULL, '+07:00', '36.868585, -76.290771', 'USA', 'VA', NULL, '(757) 622-5047', NULL, 'http://Business website bangkokgardenva.com', '-info@ziamthai.com', '1487068458585856.jpg', '1486115944075921.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:18:57', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(117, 1, 101, NULL, 0, 'Thaijindesu', 0, 'Best curry in VA. Having eaten in Thailand this doesn\'t match the flavor, but it comes close. Had…', 'Thai Food', '2180 William Styron Sq SNewport News, VA 23606', '', '', ' ', ' ', '', '23606', NULL, '+07:00', '37.083203, -76.487946', 'USA', 'VA', NULL, '(757) 595-8410', NULL, 'http://thaijindesu.com', '-info@ziamthai.com', '1487068692014335.jpg', '1486117060956035.png', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:25:37', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(118, 1, 101, NULL, 0, 'Lanna Thai', 0, ' VERY GOOD FOOD! Had Cashew Chicken stir fry! A really good place to eat. Coconut ice cream free with…', 'Thai Food', '7825 Evergreen WayEverett, WA 98203', '', '', ' ', ' ', '', '98203', NULL, '+07:00', '47.926665, -122.222298', 'USA', 'WA', NULL, '(425) 438-3888', NULL, 'https://www.lannathaieverett.com', '-info@ziamthai.com', '1487127434337827.jpg', '1487306121713642.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:30:26', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1');
INSERT INTO `zzz_business_shop` (`bssh_id`, `bssh_active`, `bssh_bsth_id`, `bssh_subcate`, `bssh_owner`, `bssh_title`, `bssh_force_online`, `bssh_detail`, `bssh_desc`, `bssh_address`, `addr1`, `addr2`, `city`, `state`, `zipcode`, `bssh_zipcode`, `bssh_delivery_area`, `bssh_time_zone`, `bssh_maps`, `bssh_loc1`, `bssh_loc2`, `bssh_loc3`, `bssh_phone`, `bssh_mobile`, `bssh_website`, `bssh_email`, `bssh_imghead`, `bssh_imgfront`, `bssh_url_ios`, `bssh_url_apk`, `tax_rate`, `tax_delivery`, `delivery_charge`, `bssh_cdate`, `bssh_cuser`, `bssh_cip`, `bssh_mdate`, `bssh_muser`, `bssh_mip`) VALUES
(119, 1, 101, NULL, 0, 'Irene Thai Cuisine', 0, 'Not the best Thai in the area. The sweet and sour chicken I ordered had tiny pieces of pineapple,…', 'Thai Food', '17530 132nd Ave NESte FWoodinville, WA 98072b/t 175th St & N Woodinville Snohomish Rd', '', '', ' ', ' ', '', '98072', NULL, '+07:00', '47.755405, -122.162572', 'USA', 'WA', NULL, '(425) 402-8228', NULL, 'http://irenesthaicuisine.com', '-info@ziamthai.com', '1487061163051552.jpg', '1487042344073006.png', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:34:50', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(120, 1, 101, NULL, 0, 'Manao Thai Street Eats', 0, 'Manao. In Thai, it\'s the word for lime. In Seattle, Manao is an exciting new way to experience authentic and delicious Thai food in vibrant east Capitol Hill, located on the corner', 'Thai Food', '1222 E Pine StSte CSeattle, WA 98122b/t 13th Ave & 12th Ave Capitol Hill', '', '', ' ', ' ', '', '98122', NULL, '+07:00', '47.615524, -122.315931', 'USA', 'WA', NULL, '(206) 556-2964', NULL, 'https://www.manaothai.com', '-info@ziamthai.com', '1487131308359884.jpg', '1487131084532124.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:38:28', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(121, 1, 101, NULL, 0, '2C Thai Bistro', 0, 'Thai Restaurant', 'Thai Food', '12506 Lake City Way NESeattle, WA 98125b/t N 31st Ave & 127th St', '', '', ' ', ' ', '', '98125', NULL, '+07:00', '47.719559, -122.294797', 'USA', 'WA', NULL, '(206) 739-5909', NULL, 'http://2cthai.com', '-info@ziamthai.com', '1487056637447577.jpg', '1487228118901285.png', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:49:06', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(122, 1, 101, NULL, 0, 'Djan’s Thai Restaurant ', 0, 'The Japanese gyoza, Thai iced tea and black sticky rice pudding were great. I also ordered the pad', 'Thai Food', '264 NE 45th StSeattle, WA 98105b/t N Latona Ave & N Thackeray Pl Wallingford', '', '', ' ', ' ', '', '98105', NULL, '+07:00', '47.661500, -122.325411', 'USA', 'WA', NULL, '(206) 633-3526', NULL, 'https://www.djans.com', '-info@ziamthai.com', '1487127147587677.jpg', '1487305276339916.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:45:38', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(123, 1, 101, NULL, 0, 'Pinto Thai Bistro & Sushi Bar', 0, 'Pinto Bistro offers traditional and modern Thai dishes and a full Sushi bar.', 'Thai Food', '408 Broadway ESeattle, WA 98102b/t Republican St & Harrison St Capitol Hill', '', '', ' ', ' ', '', '98102', NULL, '+07:00', '47.622267, -122.320589', 'USA', 'WA', NULL, '(206) 724-0559', NULL, 'http://pintobistro.com', '-info@ziamthai.com', '1487066825228770.jpg', '1487042472957845.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:49:16', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(124, 1, 101, NULL, 0, 'Noodle Nation', 0, 'Decent option for Thai food at U-District. I\'ve tried a lot of things from their menu (noodle soup, rice dishes, noodle dishes, and curry). Not the best but definitely flavorful.\r\n', 'Thai Food', '4232 University Way NESeattle, WA 98105b/t 42nd St & 43rd St University District', '', '', ' ', ' ', '', '98105', NULL, '+07:00', '47.659264, -122.312951', 'USA', 'WA', NULL, '(206) 632-5833', NULL, 'https://www.NoodleNation.com', '-info@ziamthai.com', '1487132461082993.jpg', '1487132558845686.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:52:11', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(125, 1, 101, NULL, 0, 'All Rice Thai Hut', 0, 'Everything we got was flavorful and well prepared, they were really accommodating of needing to be…', 'Thai  Food', '520 128th St SWEverett, WA 98204', '', '', ' ', ' ', '', '98204', NULL, '+07:00', '47.880729, -122.240445', 'USA', 'WA', NULL, '(425) 263-9956', NULL, 'http://allricethaihut.com', '-info@ziamthai.com', '1487058122608393.jpg', '1487215043992128.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 16:56:12', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(126, 1, 101, NULL, 0, 'Pung Kang Noodle Place', 0, 'My experience here just wasn\'t all that good. I came in for a late lunch and several of the tables', 'Thai Food', '517 Queen Anne Ave NSeattle, WA 98109b/t Republican St & Mercer St Lower Queen Anne', '', '', ' ', ' ', '', '98109', NULL, '+07:00', '47.623847, -122.356988', 'USA', 'WA', NULL, '(206) 284-3700', NULL, 'https://www.pungkangnoodle.com', '-info@ziamthai.com', '1487133538664129.jpg', '1487133538664129.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 17:43:11', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(127, 1, 101, NULL, 0, 'Bang Bar Thai Restaurant', 0, 'Really great atmosphere and food! Crispy Garlic Chicken is a must have. We had a side of panang…', 'Thai Food', '4750 California Ave SWSeattle, WA 98116b/t Alaska St & Edmunds St Fairmount Park, Junction', '', '', ' ', ' ', '', '98116', NULL, '+07:00', '47.559570, -122.386652', 'USA', 'WA', NULL, '(206) 935-8888', NULL, 'http://bangbarthai.com', '-info@ziamthai.com', '1487059336270679.jpg', '1487042623078698.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-06 17:47:54', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(128, 1, 101, NULL, 0, 'Zab Thai', 0, ' So The Zab is the best thai restaurant I\'ve eaten at so far,just ordered the basics of course', 'Thai Food', '11108 Evergreen WaySte AEverett, WA 98204', '', '', ' ', ' ', '', '98204', NULL, '+07:00', '47.897209, -122.251710', 'USA', 'WA', NULL, '(425) 356-3200', NULL, 'https://www.zabon99.com', '-info@ziamthai.com', '1487134404882719.jpg', '1486117950646964.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 10:47:52', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(129, 1, 101, NULL, 0, 'Chaiyo', 0, 'Mochi N. ATMOSPHERE: Pleasant with background chatter. Going during busier times like weekend nights will…', 'Thai  Food', '11749 15th Ave NESeattle, WA 98125b/t 117th St & 120th St Pinehurst', '', '', ' ', ' ', '', '98125', NULL, '+07:00', '47.715432, -122.312870', 'USA', 'WA', NULL, '(206) 361-8888', NULL, 'https://www.chaiyonorthgate.com', '-info@ziamthai.com', '1487126576204740.jpg', '1486116638550651.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:01:48', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(130, 1, 101, NULL, 0, 'Bangkok Garden Thai Restaurant', 0, 'Bangkok Garden Thai Restaurant', 'Thai Food', '31509 Pacific Hwy SFederal Way, WA 98003b/t 312th St & 316th St', '', '', ' ', ' ', '', '98003', NULL, '+07:00', '47.319653, -122.315280', 'USA', 'WA', NULL, '(253) 946-8833', NULL, 'http://Bangkok Garden Thai Restaurant.com', '-info@ziamthai.com', '1487145205843340.jpg', '1486118707144213.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:05:24', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(131, 1, 101, NULL, 0, 'Mae Phim Thai', 0, 'The Thai iced tea is delicious. I also greatly enjoyed the Larb Kai, and the Tom Kha soup. My wife…', 'Thai Food', '1212 E State AveMarysville, WA 98270', '', '', ' ', ' ', '', '98270', NULL, '+07:00', '48.061799, -122.176207', 'USA', 'WA', NULL, '(360) 653-8954', NULL, 'http://maephim.com/5719/index.html', '-info@ziamthai.com', '1487065408759734.jpg', '1486349551645586.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:09:09', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(132, 1, 101, NULL, 0, 'Mae Phim Thai', 0, 'The Thai iced tea is delicious. I also greatly enjoyed the Larb Kai, and the Tom Kha soup. My wife…', 'Thai Food', '213 Pike StSeattle, WA 98101b/t 3rd Ave & 2nd Ave Downtown', '', '', ' ', ' ', '', '98101', NULL, '+07:00', '47.609464, -122.338221', 'USA', 'WA', NULL, '(206) 623-7453', NULL, 'http://maephim.com', '-info@ziamthai.com', '1487129782910224.jpg', '1486351133255602.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:13:45', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(133, 1, 101, NULL, 0, 'Mae Ploy', 0, 'Simple Thai home cooking dish at a reasonable price.', 'Thai Food', '6421 15th Ave NWSeattle, WA 98107Ballard', '', '', ' ', ' ', '', '98107', NULL, '+07:00', '47.675861, -122.376602', 'USA', 'WA', NULL, '(206) 784-0899', NULL, 'https://www.maeployballard.com', '-info@ziamthai.com', '1487128728844327.jpg', '1487299825690156.png', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:17:09', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(134, 1, 101, NULL, 0, 'Northshore Thai', 0, 'Came here the day after visiting L&L to compare. I got the…"', 'Thai Food', '34024 Hoyt Rd SWSte FFederal Way, WA 98023at 340th St', '', '', ' ', ' ', '', '98023', NULL, '+07:00', '47.296230, -122.381313', 'USA', 'WA', NULL, '(253) 874-7707', NULL, 'http://northshorethaicuisine.com', '-info@ziamthai.com', '1487066393915064.jpg', '1487042914405580.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:19:45', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(135, 1, 101, NULL, 0, 'Ban SomTum', 0, 'Great, authentic Thai food, that comes from the Northeastern region of Thailand, known as (Isaan), has been a cultivating experience to our guest. Great food, different styles', 'Thai Food', '35109 Pacific Hwy SFederal Way, WA 98003b/t 350th St & 351st St', '', '', ' ', ' ', '', '98003', NULL, '+07:00', '47.286493, -122.320343', 'USA', 'WA', NULL, '(253) 517-5519', NULL, 'https://www.bansomtum.com', '-info@ziamthai.com', '1486713506981126.jpg', '1487299980388855.png', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:21:54', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(136, 1, 101, NULL, 0, 'Sing Tong Thai Cuisine', 0, 'At Sing Tong restaurant, we take great care in preparing cuisine from recipes handed down for centuries, adjusted to today\'s taste and served in an authentic modern manner. For …', 'Thai Food', 'Hillcrest Square 24605 NE 4th StRenton, WA 98059', '', '', ' ', ' ', '', '98059', NULL, '+07:00', '47.488317, -122.157289', 'USA', 'WA', NULL, '(206) 673-2290', NULL, 'http://Sing Tong Thai Cuisine.com', '-info@ziamthai.com', '1487055046931459.jpg', '1486116570427521.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:24:21', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(137, 1, 101, NULL, 0, 'Thai Eatery', 0, 'So this place is absolutely adored by locals and many out of towners but it\'s never really stuck with me. One of the big reasons is that it is always busy, especially on weekends.', 'Thai Food', '8020 Douglas Ave SESnoqualmie, WA 98065', '', '', ' ', ' ', '', '98065', NULL, '+07:00', '47.528596, -121.876441', 'USA', 'WA', NULL, '(425) 888-2025', NULL, 'https://www.ThaiEatery.com', '-info@ziamthai.com', '1487300778012089.jpg', '1487300778012089.jpg', NULL, NULL, '0.00000', 0, 0, '2017-01-09 11:26:02', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(138, 1, 101, NULL, 0, ' Navin Thai Restaurant', 0, '		Just alright....I came here because I have been meaning to try it, as its close to my home. However, I always get turned off because there is always NO ONE in this restaurant when I walk by. Thats not a good sign right? Well, I don\'t judge a book by its cover. I went on a Friday night with my boyfriend around 7:30pm-8pm... supposedly a popular time to eat...However, when we arrived, there was just a single other table occupied. I ordered a tom yum noodle soup and my boyfriend ordered a beef noodle soup. To be honest, it tasted fine, nothing special but nothing too bad! I actually preferred my boyfriend\'s beef noodle soup more.\r\n\r\nEverything seemed ok but after I went home, a few hours later, my stomach started to hurt. I am not saying this place gave me this pain but I am not sure why I didn\'t feel great after eating here. I am willing to give this place another chance in a few months. However, food wise, it just tasted ok but not spectacular or 4 star worthy to me.', 'Thai Food', '1059 Powell StSan Francisco, CA 94108b/t Washington St & Clay St Nob Hill', '', '', ' ', ' ', '', '00000', NULL, '+07:00', '37.794515, -122.409913', 'USA', 'AL', NULL, '(415) 274-9948', NULL, 'http://navinthaisf.com', 'demo@ziamthaI.COM', '1487143501697473.jpg', '1487143501697473.png', NULL, NULL, '0.00000', 0, 0, '2016-01-01 00:00:00', 0, '127.0.0.1', '2016-01-01 00:00:00', 0, '127.0.0.1'),
(139, 0, 101, '||106||104||102', 2, 'Test 3', 1, 'Shop Descriptio', 'Shop Slogan', 'Addres', 'street address', 'apartment', 'city', 'TX', '', '12150', NULL, '+07:00', '123,123', 'USA', 'Test', NULL, '0897811326', '+66897811326', 'http://www.ziamthai.com', 'demo@ziamthai.com', '1497432269381446.jpg', '1497432046830443.png', NULL, NULL, '0.76000', 0, 0, '2017-01-24 02:59:19', 1, '58.9.90.39', '2017-01-24 02:59:19', 1, '58.9.90.39');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_images`
--

CREATE TABLE `zzz_business_shop_images` (
  `bssi_id` int(10) UNSIGNED NOT NULL,
  `bssi_bssh_id` int(10) UNSIGNED NOT NULL,
  `bssi_imgt_id` int(10) UNSIGNED NOT NULL,
  `bssi_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bssi_desc` text COLLATE utf8_unicode_ci,
  `bssi_file` text COLLATE utf8_unicode_ci NOT NULL,
  `bssi_cdate` date NOT NULL DEFAULT '2016-01-01',
  `bssi_cuser` int(10) UNSIGNED NOT NULL,
  `bssi_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bssi_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bssi_muser` int(10) UNSIGNED NOT NULL,
  `bssi_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_images`
--

INSERT INTO `zzz_business_shop_images` (`bssi_id`, `bssi_bssh_id`, `bssi_imgt_id`, `bssi_title`, `bssi_desc`, `bssi_file`, `bssi_cdate`, `bssi_cuser`, `bssi_cip`, `bssi_mdate`, `bssi_muser`, `bssi_mip`) VALUES
(20, 32, 101, 'Bonsai Fusion Japanese Steak House ', NULL, '20160726151906020572.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(21, 32, 104, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622163403.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(22, 32, 104, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622264219.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(23, 32, 104, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622298090.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(24, 32, 104, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622331506.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(25, 32, 103, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622364909.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(26, 32, 103, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622398329.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(27, 32, 103, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622431754.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(28, 32, 103, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622465170.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(29, 32, 103, 'Bonsai Fusion Japanese Steak House ', NULL, '20160721140622498596.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(31, 34, 101, 'Khun Kay Thai Cafe ', NULL, '20160726152808507774.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(32, 34, 104, 'Khun Kay Thai Cafe ', NULL, '20160721155409440805.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(33, 34, 104, 'Khun Kay Thai Cafe ', NULL, '20160721155409490876.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(34, 34, 104, 'Khun Kay Thai Cafe ', NULL, '20160721155409532665.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(35, 34, 104, 'Khun Kay Thai Cafe ', NULL, '20160721155409574404.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(36, 34, 103, 'Khun Kay Thai Cafe ', NULL, '20160721155409616225.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(37, 34, 103, 'Khun Kay Thai Cafe ', NULL, '20160721155409899752.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(38, 34, 103, 'Khun Kay Thai Cafe ', NULL, '20160721155409983292.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(39, 34, 103, 'Khun Kay Thai Cafe ', NULL, '20160721155410025062.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(40, 34, 103, 'Khun Kay Thai Cafe ', NULL, '20160721155410108592.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(41, 35, 101, 'Dok Bua Thai kitchen ', NULL, '20160726152914592733.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(42, 35, 104, 'Dok Bua Thai kitchen ', NULL, '20160721161203108385.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(43, 35, 104, 'Dok Bua Thai kitchen ', NULL, '20160721161203150112.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(44, 35, 104, 'Dok Bua Thai kitchen ', NULL, '20160721161203191963.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(45, 35, 104, 'Dok Bua Thai kitchen ', NULL, '20160721161203233685.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(46, 35, 103, 'Dok Bua Thai kitchen ', NULL, '20160721161203275419.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(47, 35, 103, 'Dok Bua Thai kitchen ', NULL, '20160721161203317183.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(48, 35, 103, 'Dok Bua Thai kitchen ', NULL, '20160721161203358952.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(49, 35, 103, 'Dok Bua Thai kitchen ', NULL, '20160721161203400704.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(50, 35, 103, 'Dok Bua Thai kitchen ', NULL, '20160721161203442571.jpg', '2016-07-21', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(78, 65, 102, 'Test-BPP', NULL, '20160727170719263277.jpg', '2016-07-27', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(79, 65, 103, 'Test-BPP', NULL, '20160727170719371878.jpg', '2016-07-27', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(80, 65, 104, 'Test-BPP', NULL, '20160727170719548812.jpg', '2016-07-27', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(81, 65, 105, 'Test-BPP', NULL, '20160727170719722634.jpg', '2016-07-27', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(82, 66, 103, 'Test-BPP2', NULL, '20160728100756811859.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(83, 66, 103, 'Test-BPP2', NULL, '20160728100756853584.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(84, 66, 104, 'Test-BPP2', NULL, '20160728100756895318.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(85, 66, 104, 'Test-BPP2', NULL, '20160728100756953729.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(86, 66, 105, 'Test-BPP2', NULL, '20160728100756995545.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(87, 67, 103, 'Test-BPP2', NULL, '20160728101139923430.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(88, 67, 103, 'Test-BPP2', NULL, '20160728101140006827.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(89, 67, 104, 'Test-BPP2', NULL, '20160728101140048578.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(90, 67, 104, 'Test-BPP2', NULL, '20160728101140090352.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(91, 67, 105, 'Test-BPP2', NULL, '20160728101140132085.jpg', '2016-07-28', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(95, 70, 102, 'Thai Dishses', NULL, '20160816113755735234.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(96, 70, 103, 'Thai Dishses', NULL, '20160816113756025847.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(97, 70, 103, 'Thai Dishses', NULL, '20160816113756059303.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(98, 70, 103, 'Thai Dishses', NULL, '20160816113756092780.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(99, 70, 103, 'Thai Dishses', NULL, '20160816113756126139.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(100, 71, 102, 'Marnee Thai', NULL, '20160816121033105455.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(101, 71, 103, 'Marnee Thai', NULL, '20160816121033188998.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(102, 71, 103, 'Marnee Thai', NULL, '20160816121033305926.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(103, 72, 102, 'Amphawa', NULL, '20160816150831216688.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(104, 72, 102, 'Amphawa', NULL, '20160816150831291797.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(105, 72, 102, 'Amphawa', NULL, '20160816150831325207.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(106, 72, 102, 'Amphawa', NULL, '20160816150831358656.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(107, 72, 102, 'Amphawa', NULL, '20160816150831392069.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(108, 73, 102, 'Lers Ros Thai', NULL, '20160816154014923679.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(109, 73, 103, 'Lers Ros Thai', NULL, '20160816154014982207.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(110, 73, 103, 'Lers Ros Thai', NULL, '20160816154015040686.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(111, 73, 103, 'Lers Ros Thai', NULL, '20160816154015082519.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(112, 73, 103, 'Lers Ros Thai', NULL, '20160816154015117264.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(113, 74, 102, 'Chaiya Thai Restaurant', NULL, '20160816161252863763.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(114, 74, 103, 'Chaiya Thai Restaurant', NULL, '20160816161252983354.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(115, 74, 103, 'Chaiya Thai Restaurant', NULL, '20160816161253046105.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(116, 74, 103, 'Chaiya Thai Restaurant', NULL, '20160816161253127065.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(117, 74, 103, 'Chaiya Thai Restaurant', NULL, '20160816161253207207.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(118, 75, 102, ' Navin Thai Restaurant', NULL, '20160816163701857731.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(119, 75, 103, ' Navin Thai Restaurant', NULL, '20160816163701899504.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(120, 75, 103, ' Navin Thai Restaurant', NULL, '20160816163701941231.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(121, 75, 103, ' Navin Thai Restaurant', NULL, '20160816163702032998.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(122, 75, 102, ' Navin Thai Restaurant', NULL, '20160816163702099882.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(123, 76, 102, 'Up Thai', NULL, '20160816170545934659.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(124, 76, 103, 'Up Thai', NULL, '20160816170545984746.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(125, 76, 103, 'Up Thai', NULL, '20160816170546018172.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(126, 76, 103, 'Up Thai', NULL, '20160816170546051620.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(127, 76, 103, 'Up Thai', NULL, '20160816170546085102.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(128, 76, 103, 'Up Thai', NULL, '20160816170546118533.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(129, 77, 102, 'JJ Thai Street Food', NULL, '20160816173548139696.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(130, 77, 103, 'JJ Thai Street Food', NULL, '20160816173548181472.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(131, 77, 103, 'JJ Thai Street Food', NULL, '20160816173548223194.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(132, 77, 103, 'JJ Thai Street Food', NULL, '20160816173548264984.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(133, 77, 103, 'JJ Thai Street Food', NULL, '20160816173548415686.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(134, 77, 103, 'JJ Thai Street Food', NULL, '20160816173548540413.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(135, 78, 102, 'Siam Thai & Sushi Restaurant', NULL, '20160816174711026095.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(136, 78, 103, 'Siam Thai & Sushi Restaurant', NULL, '20160816174711067818.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(137, 78, 103, 'Siam Thai & Sushi Restaurant', NULL, '20160816174711109577.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(138, 78, 103, 'Siam Thai & Sushi Restaurant', NULL, '20160816174711151333.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(139, 78, 103, 'Siam Thai & Sushi Restaurant', NULL, '20160816174711193128.jpg', '2016-08-16', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(140, 82, 102, 'Line Thai', NULL, '20160907161055708453.jpg', '2016-09-07', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(141, 82, 103, 'Line Thai', NULL, '20160907161055783655.jpg', '2016-09-07', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(142, 82, 103, 'Line Thai', NULL, '20160907161055817024.jpg', '2016-09-07', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(143, 82, 103, 'Line Thai', NULL, '20160907161055853476.jpg', '2016-09-07', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(144, 82, 104, 'Line Thai', NULL, '20160907161055883906.jpg', '2016-09-07', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(145, 83, 102, 'Phuket Thai', NULL, '20160908115015379244.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(146, 83, 103, 'Phuket Thai', NULL, '20160908115015504377.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(147, 83, 103, 'Phuket Thai', NULL, '20160908115015546110.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(148, 83, 103, 'Phuket Thai', NULL, '20160908115015587872.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(149, 83, 104, 'Phuket Thai', NULL, '20160908115015629612.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(150, 84, 102, 'The Taste Kitchen', NULL, '20160908163929671962.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(151, 84, 103, 'The Taste Kitchen', NULL, '20160908163929730349.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(152, 84, 103, 'The Taste Kitchen', NULL, '20160908163929772134.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(153, 84, 103, 'The Taste Kitchen', NULL, '20160908163929813905.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(154, 84, 103, 'The Taste Kitchen', NULL, '20160908163929855649.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(155, 84, 103, 'The Taste Kitchen', NULL, '20160908163929898643.jpg', '2016-09-08', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(156, 85, 102, 'TreeHouse Thai', NULL, '20160909102825261252.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(157, 85, 102, 'TreeHouse Thai', NULL, '20160909102825304110.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(158, 85, 103, 'TreeHouse Thai', NULL, '20160909102825344760.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(159, 85, 103, 'TreeHouse Thai', NULL, '20160909102825386532.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(160, 85, 103, 'TreeHouse Thai', NULL, '20160909102825428304.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(161, 85, 103, 'TreeHouse Thai', NULL, '20160909102825470052.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(162, 85, 103, 'TreeHouse Thai', NULL, '20160909102825511809.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(163, 86, 102, 'Toomie’s Thai', NULL, '20160909110351675046.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(164, 86, 102, 'Toomie’s Thai', NULL, '20160909110351716769.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(165, 86, 102, 'Toomie’s Thai', NULL, '20160909110351817003.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(166, 86, 102, 'Toomie’s Thai', NULL, '20160909110351867052.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(167, 87, 102, 'Plearn Thai', NULL, '20160909114305463140.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(168, 87, 103, 'Plearn Thai', NULL, '20160909114305504906.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(169, 87, 103, 'Plearn Thai', NULL, '20160909114305546611.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(170, 87, 103, 'Plearn Thai', NULL, '20160909114305588434.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(171, 87, 103, 'Plearn Thai', NULL, '20160909114305671894.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(172, 87, 103, 'Plearn Thai', NULL, '20160909114305713684.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(173, 87, 103, 'Plearn Thai', NULL, '20160909114305797152.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(174, 88, 102, 'Blue Bay Thai Cuisine', NULL, '20160909140205566957.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(175, 88, 103, 'Blue Bay Thai Cuisine', NULL, '20160909140205608717.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(176, 88, 103, 'Blue Bay Thai Cuisine', NULL, '20160909140205650473.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(177, 88, 103, 'Blue Bay Thai Cuisine', NULL, '20160909140205692228.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(178, 88, 103, 'Blue Bay Thai Cuisine', NULL, '20160909140205733972.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(179, 88, 103, 'Blue Bay Thai Cuisine', NULL, '20160909140205775779.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(180, 89, 102, 'Cancoon Thai Restaurant', NULL, '20160909151732456719.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(181, 89, 103, 'Cancoon Thai Restaurant', NULL, '20160909151732498466.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(182, 89, 103, 'Cancoon Thai Restaurant', NULL, '20160909151732540280.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(183, 89, 103, 'Cancoon Thai Restaurant', NULL, '20160909151732581982.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(184, 89, 103, 'Cancoon Thai Restaurant', NULL, '20160909151732623755.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(185, 90, 102, 'veSTATION', NULL, '20160909171858102823.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(186, 90, 102, 'veSTATION', NULL, '20160909171858144589.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(187, 90, 103, 'veSTATION', NULL, '20160909171858186353.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(188, 90, 103, 'veSTATION', NULL, '20160909171858228113.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(189, 90, 103, 'veSTATION', NULL, '20160909171858261530.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(190, 90, 103, 'veSTATION', NULL, '20160909171858294977.jpg', '2016-09-09', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(191, 91, 102, 'Siamese Garden', NULL, '20160912114328675893.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(192, 91, 102, 'Siamese Garden', NULL, '20160912114328918025.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(193, 91, 103, 'Siamese Garden', NULL, '20160912114329009570.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(194, 91, 103, 'Siamese Garden', NULL, '20160912114329084668.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(195, 91, 103, 'Siamese Garden', NULL, '20160912114329243549.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(196, 91, 102, 'Siamese Garden', NULL, '20160912114329469920.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(197, 92, 102, 'Vanida Thai Kitchen', NULL, '20160912134548254275.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(198, 92, 102, 'Vanida Thai Kitchen', NULL, '20160912134548296079.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(199, 92, 103, 'Vanida Thai Kitchen', NULL, '20160912134548337837.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(200, 92, 103, 'Vanida Thai Kitchen', NULL, '20160912134548380015.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(201, 92, 103, 'Vanida Thai Kitchen', NULL, '20160912134548421394.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(202, 92, 103, 'Vanida Thai Kitchen', NULL, '20160912134548463112.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(203, 92, 103, 'Vanida Thai Kitchen', NULL, '20160912134548504873.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(204, 93, 102, 'Lanna Thai Restaurant', NULL, '20160912142112206915.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(205, 93, 102, 'Lanna Thai Restaurant', NULL, '20160912142112248291.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(206, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112290102.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(207, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112331837.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(208, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112373586.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(209, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112432024.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(210, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112473813.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(211, 93, 103, 'Lanna Thai Restaurant', NULL, '20160912142112515514.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(212, 94, 102, 'Asian Street Sushi Thai Bar', NULL, '20160912151227083394.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(213, 94, 102, 'Asian Street Sushi Thai Bar', NULL, '20160912151227125145.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(214, 94, 103, 'Asian Street Sushi Thai Bar', NULL, '20160912151227166891.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(215, 94, 103, 'Asian Street Sushi Thai Bar', NULL, '20160912151227275327.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(216, 94, 103, 'Asian Street Sushi Thai Bar', NULL, '20160912151227442202.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(217, 94, 103, 'Asian Street Sushi Thai Bar', NULL, '20160912151227483950.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(218, 94, 103, 'Asian Street Sushi Thai Bar', NULL, '20160912151227525734.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(219, 95, 103, 'Kai Thai Restaurant', NULL, '20160912155848415795.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(220, 95, 103, 'Kai Thai Restaurant', NULL, '20160912155848465888.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(221, 95, 103, 'Kai Thai Restaurant', NULL, '20160912155848499340.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(222, 95, 103, 'Kai Thai Restaurant', NULL, '20160912155848532813.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(223, 95, 103, 'Kai Thai Restaurant', NULL, '20160912155848566231.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(224, 95, 102, 'Kai Thai Restaurant', NULL, '20160912155848607972.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(225, 95, 102, 'Kai Thai Restaurant', NULL, '20160912155848666439.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(226, 96, 102, 'Thai Pepper', NULL, '20160912162149075264.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(227, 96, 103, 'Thai Pepper', NULL, '20160912162149192065.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(228, 96, 103, 'Thai Pepper', NULL, '20160912162149258844.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(229, 96, 103, 'Thai Pepper', NULL, '20160912162149300610.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(230, 96, 103, 'Thai Pepper', NULL, '20160912162149384159.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(231, 96, 103, 'Thai Pepper', NULL, '20160912162149425921.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(232, 96, 103, 'Thai Pepper', NULL, '20160912162149467687.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(233, 97, 102, ' Curry Curry Thai', NULL, '20160912171302792567.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(234, 97, 102, ' Curry Curry Thai', NULL, '20160912171302834323.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(235, 97, 102, ' Curry Curry Thai', NULL, '20160912171302876075.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(236, 97, 102, ' Curry Curry Thai', NULL, '20160912171302917833.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(237, 97, 102, ' Curry Curry Thai', NULL, '20160912171302959589.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(238, 98, 102, 'Ginger Thai cuisine', NULL, '20160912173554207057.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(239, 98, 102, 'Ginger Thai cuisine', NULL, '20160912173554257204.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(240, 98, 102, 'Ginger Thai cuisine', NULL, '20160912173554299050.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(241, 98, 103, 'Ginger Thai cuisine', NULL, '20160912173554340835.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(242, 98, 103, 'Ginger Thai cuisine', NULL, '20160912173554382598.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(243, 98, 103, 'Ginger Thai cuisine', NULL, '20160912173554424344.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(244, 98, 103, 'Ginger Thai cuisine', NULL, '20160912173554466144.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(245, 99, 102, 'Thai Spice', NULL, '20160912180343650770.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(246, 99, 102, 'Thai Spice', NULL, '20160912180343693905.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(247, 99, 102, 'Thai Spice', NULL, '20160912180343734259.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(248, 99, 103, 'Thai Spice', NULL, '20160912180343826143.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(249, 99, 103, 'Thai Spice', NULL, '20160912180343867957.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(250, 99, 103, 'Thai Spice', NULL, '20160912180343909699.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(251, 99, 103, 'Thai Spice', NULL, '20160912180343951467.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(252, 99, 103, 'Thai Spice', NULL, '20160912180343993228.jpg', '2016-09-12', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(253, 100, 102, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725111906.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(254, 100, 102, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725236960.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(255, 100, 102, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725270423.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(256, 100, 103, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725303785.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(257, 100, 103, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725345551.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(258, 100, 103, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725412411.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(259, 100, 103, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725445820.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(260, 100, 104, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725479281.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(261, 100, 103, 'Sabaidee Thai & Sushi Bar', NULL, '20160913110725521202.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(262, 101, 102, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349730029.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(263, 101, 102, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349780116.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(264, 101, 103, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349821861.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(265, 101, 103, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349863647.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(266, 101, 103, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349905392.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(267, 101, 103, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349955458.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(268, 101, 103, 'Arawan Thai Bistro and Dessert', NULL, '20160913135349997222.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(269, 102, 102, 'Tik’s Thai Express', NULL, '20160913143730921252.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(270, 102, 102, 'Tik’s Thai Express', NULL, '20160913143730962985.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(271, 102, 103, 'Tik’s Thai Express', NULL, '20160913143731046572.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(272, 102, 103, 'Tik’s Thai Express', NULL, '20160913143731130158.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(273, 102, 103, 'Tik’s Thai Express', NULL, '20160913143731180247.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(274, 102, 103, 'Tik’s Thai Express', NULL, '20160913143731222009.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(275, 103, 102, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130704292.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(276, 103, 102, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130779362.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(277, 103, 103, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130821206.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(278, 103, 103, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130887948.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(279, 103, 103, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130929671.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(280, 103, 103, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174130971391.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(281, 103, 103, 'Siam Lotus Asian Kitchen & Bar', NULL, '20160913174131013190.jpg', '2016-09-13', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(282, 104, 102, 'Red Onion', NULL, '20160914112801951117.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(283, 104, 103, 'Red Onion', NULL, '20160914112802109013.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(284, 104, 103, 'Red Onion', NULL, '20160914112802150812.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(285, 104, 103, 'Red Onion', NULL, '20160914112802200898.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(286, 104, 103, 'Red Onion', NULL, '20160914112802234327.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(287, 104, 103, 'Red Onion', NULL, '20160914112802267719.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(294, 105, 102, 'City Thai Portland', NULL, '20160914164411185740.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(295, 105, 102, 'City Thai Portland', NULL, '20160914164411226744.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(296, 105, 102, 'City Thai Portland', NULL, '20160914164411268559.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(297, 105, 102, 'City Thai Portland', NULL, '20160914164411310293.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(298, 105, 102, 'City Thai Portland', NULL, '20160914164411352092.jpg', '2016-09-14', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(299, 106, 102, 'Dang’s Thai Kitchen', NULL, '20160915112739886040.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(300, 106, 102, 'Dang’s Thai Kitchen', NULL, '20160915112740069665.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(301, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740186560.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(302, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740228315.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(303, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740403519.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(304, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740511831.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(305, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740553571.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(306, 106, 103, 'Dang’s Thai Kitchen', NULL, '20160915112740587008.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(307, 107, 102, 'Mee Gin Soul Kitchen', NULL, '20160915151035315822.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(308, 107, 102, 'Mee Gin Soul Kitchen', NULL, '20160915151035457724.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(309, 107, 103, 'Mee Gin Soul Kitchen', NULL, '20160915151035499458.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(310, 107, 103, 'Mee Gin Soul Kitchen', NULL, '20160915151035591185.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(311, 107, 103, 'Mee Gin Soul Kitchen', NULL, '20160915151035632981.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(312, 107, 103, 'Mee Gin Soul Kitchen', NULL, '20160915151035674716.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(313, 107, 103, 'Mee Gin Soul Kitchen', NULL, '20160915151035716530.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(314, 108, 102, 'Thai Elephants Restaurant', NULL, '20160915174909149057.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(315, 108, 103, 'Thai Elephants Restaurant', NULL, '20160915174909190812.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(316, 108, 103, 'Thai Elephants Restaurant', NULL, '20160915174909232558.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(317, 108, 104, 'Thai Elephants Restaurant', NULL, '20160915174909274316.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(318, 108, 103, 'Thai Elephants Restaurant', NULL, '20160915174909316012.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(319, 108, 103, 'Thai Elephants Restaurant', NULL, '20160915174909357832.jpg', '2016-09-15', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(320, 115, 104, '11111111111111111111', NULL, '115_20170119234835.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:48:35', 1, '58.9.217.90'),
(321, 115, 104, '222222222222222222', NULL, '115_20170119234835.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:48:35', 1, '58.9.217.90'),
(322, 115, 104, '333333333333333333', NULL, '115_20170119234835.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:48:35', 1, '58.9.217.90'),
(323, 115, 104, 'Desc1', NULL, '115_.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:51:15', 1, '58.9.217.90'),
(324, 115, 104, 'Desc2', NULL, '115_.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:51:15', 1, '58.9.217.90'),
(325, 115, 104, 'Desc3', NULL, '115_.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:51:15', 1, '58.9.217.90'),
(326, 115, 104, 'Desc1', NULL, '115_0.93105600 1484845081.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:58:01', 1, '58.9.217.90'),
(327, 115, 104, 'Desc2', NULL, '115_0.94217600 1484845081.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:58:01', 1, '58.9.217.90'),
(328, 115, 104, 'Desc3', NULL, '115_0.94921900 1484845081.jpg', '2017-01-19', 1, '58.9.217.90', '2017-01-19 11:58:01', 1, '58.9.217.90'),
(329, 115, 104, 'Desc1', NULL, '115_1484845359756644.jpg', '2017-01-20', 1, '58.9.217.90', '2017-01-20 12:02:39', 1, '58.9.217.90'),
(330, 115, 104, 'Desc2', NULL, '115_1484845359781276.jpg', '2017-01-20', 1, '58.9.217.90', '2017-01-20 12:02:39', 1, '58.9.217.90'),
(331, 115, 104, 'Desc3', NULL, '115_1484845359797142.jpg', '2017-01-20', 1, '58.9.217.90', '2017-01-20 12:02:39', 1, '58.9.217.90'),
(335, 35, 104, '', NULL, '35_1486536396124867.jpg', '2017-02-08', 1, '58.9.70.186', '2017-02-08 01:46:36', 1, '58.9.70.186'),
(336, 35, 104, '', NULL, '35_1486536396222329.jpg', '2017-02-08', 1, '58.9.70.186', '2017-02-08 01:46:36', 1, '58.9.70.186'),
(337, 35, 104, '', NULL, '35_1486536396289278.jpg', '2017-02-08', 1, '58.9.70.186', '2017-02-08 01:46:36', 1, '58.9.70.186'),
(349, 139, 105, '', NULL, '139_1486537923676125.jpg', '2017-02-08', 1, '58.9.70.186', '2017-02-08 02:12:03', 1, '58.9.70.186');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_item_category`
--

CREATE TABLE `zzz_business_shop_item_category` (
  `bsic_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bsic_bssh_id` int(10) UNSIGNED NOT NULL,
  `bsic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bsic_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `bsic_image` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'keep image',
  `bsic_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tstart` time NOT NULL DEFAULT '00:00:00',
  `tstop` time NOT NULL DEFAULT '00:00:00',
  `bsic_active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1',
  `bsic_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsic_cuser` int(10) UNSIGNED NOT NULL,
  `bsic_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsic_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsic_muser` int(10) UNSIGNED NOT NULL,
  `bsic_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_item_category`
--

INSERT INTO `zzz_business_shop_item_category` (`bsic_id`, `pid`, `bsic_bssh_id`, `bsic_name`, `bsic_desc`, `bsic_image`, `bsic_order`, `tstart`, `tstop`, `bsic_active`, `bsic_cdate`, `bsic_cuser`, `bsic_cip`, `bsic_mdate`, `bsic_muser`, `bsic_mip`) VALUES
(5, 0, 32, 'FULL MENU', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(6, 0, 35, 'FULL MENU', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-05-04 05:39:04', 3, '58.9.70.251'),
(7, 0, 139, 'FULL MENU', 'Full menu description', '', 0, '00:05:00', '23:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-04-20 02:39:51', 2, '58.9.70.93'),
(10, 6, 35, 'Appetizers', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(20, 6, 35, 'Soup', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-05-04 05:38:24', 3, '58.9.70.251'),
(30, 5, 32, 'Appetizers', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(40, 5, 32, 'Noodle & Soup', '', '', 0, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(41, 7, 139, 'Apetizer', 'Apetizer', '', 1, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-04-24 10:43:08', 2, '58.9.70.93'),
(42, 7, 139, 'Category III', 'Test Category III', '', 1, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(50, 7, 139, 'Category I', 'Test Category I', '', 2, '00:00:00', '00:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-04-24 10:42:26', 2, '58.9.70.93'),
(63, 0, 139, 'Test Menu 114', 'Menu Description 114', '', 3, '00:01:00', '23:50:00', 1, '2017-04-18 06:29:50', 1, '58.9.70.93', '2017-04-20 02:48:29', 2, '58.9.70.93'),
(64, 7, 139, 'Section 112', 'Description', '', 99, '00:00:00', '00:00:00', 1, '2017-04-19 11:35:36', 1, '58.9.70.93', '2017-04-19 11:35:36', 1, '58.9.70.93'),
(65, 7, 139, 'Section 113', 'Description 113', '', 1, '00:00:00', '00:00:00', 1, '2017-04-19 11:37:24', 1, '58.9.70.93', '2017-04-19 01:54:03', 1, '58.9.70.93'),
(66, 63, 139, 'Section 115', 'Descripton 115', '', 7, '00:00:00', '00:00:00', 1, '2017-04-20 03:04:32', 2, '58.9.70.93', '2017-04-20 06:07:59', 2, '58.9.70.93'),
(70, 7, 139, 'Main 1', 'Main 1', '', 1, '00:00:00', '00:00:00', 1, '2017-04-24 11:49:38', 2, '58.9.70.93', '2017-04-24 11:49:38', 2, '58.9.70.93'),
(71, 0, 105, 'FULL MENU', 'Full menu description', '', 0, '00:05:00', '23:00:00', 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-04-20 02:39:51', 2, '58.9.70.93'),
(72, 71, 105, 'Beverages', '', '', 1, '00:00:00', '00:00:00', 1, '2017-06-07 08:27:19', 27, '58.9.70.251', '2017-06-07 08:27:19', 27, '58.9.70.251'),
(73, 71, 105, 'Nibbles', '', '', 2, '00:00:00', '00:00:00', 1, '2017-06-07 08:27:35', 27, '58.9.70.251', '2017-06-07 08:28:34', 27, '58.9.70.251'),
(74, 71, 105, 'Tossed Greens', '', '', 4, '00:00:00', '00:00:00', 1, '2017-06-07 08:27:56', 27, '58.9.70.251', '2017-06-07 08:29:30', 27, '58.9.70.251'),
(75, 71, 105, 'Noodles', '', '', 5, '00:00:00', '00:00:00', 1, '2017-06-07 08:28:12', 27, '58.9.70.251', '2017-06-07 08:29:55', 27, '58.9.70.251'),
(76, 71, 105, 'Soup', '', '', 3, '00:00:00', '00:00:00', 1, '2017-06-07 08:29:21', 27, '58.9.70.251', '2017-06-07 08:29:21', 27, '58.9.70.251'),
(77, 71, 105, 'Rice', '', '', 6, '00:00:00', '00:00:00', 1, '2017-06-07 08:30:12', 27, '58.9.70.251', '2017-06-07 08:30:12', 27, '58.9.70.251'),
(78, 71, 105, 'Classic Curry', '', '', 7, '00:00:00', '00:00:00', 1, '2017-06-07 08:30:37', 27, '58.9.70.251', '2017-06-07 08:30:51', 27, '58.9.70.251'),
(79, 71, 105, 'City Thai Lovers', '', '', 8, '00:00:00', '00:00:00', 1, '2017-06-07 08:31:12', 27, '58.9.70.251', '2017-06-07 08:31:12', 27, '58.9.70.251'),
(80, 71, 105, 'Wok', '', '', 9, '00:00:00', '00:00:00', 1, '2017-06-07 08:31:24', 27, '58.9.70.251', '2017-06-07 08:31:24', 27, '58.9.70.251'),
(81, 71, 105, 'Sides', '', '', 10, '00:00:00', '00:00:00', 1, '2017-06-07 08:31:36', 27, '58.9.70.251', '2017-06-07 08:31:36', 27, '58.9.70.251'),
(82, 71, 105, 'Sweets', '', '', 11, '00:00:00', '00:00:00', 1, '2017-06-07 08:31:47', 27, '58.9.70.251', '2017-06-07 08:31:47', 27, '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_item_header`
--

CREATE TABLE `zzz_business_shop_item_header` (
  `bsih_id` int(10) UNSIGNED NOT NULL,
  `bsih_bssh_id` int(11) NOT NULL DEFAULT '0',
  `bsih_bsic_id` int(10) UNSIGNED NOT NULL,
  `bsih_pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bsih_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bsih_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bsih_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `bsih_photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bsih_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `bsih_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'display ordering',
  `bsih_recommend` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `bsih_online` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'online order',
  `bsih_active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1',
  `bsih_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsih_cuser` int(10) UNSIGNED NOT NULL,
  `bsih_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsih_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsih_muser` int(10) UNSIGNED NOT NULL,
  `bsih_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_item_header`
--

INSERT INTO `zzz_business_shop_item_header` (`bsih_id`, `bsih_bssh_id`, `bsih_bsic_id`, `bsih_pid`, `bsih_code`, `bsih_name`, `bsih_desc`, `bsih_photo`, `bsih_price`, `bsih_order`, `bsih_recommend`, `bsih_online`, `bsih_active`, `bsih_cdate`, `bsih_cuser`, `bsih_cip`, `bsih_mdate`, `bsih_muser`, `bsih_mip`) VALUES
(1, 35, 20, 0, NULL, 'Tom Yum Shrimp Soup', 'Spicy shrimp lemon grass soup with mushroom, green onion, cilantro.', '01_large.PNG', '4.95', 1, 1, 1, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(2, 35, 20, 0, NULL, 'Tom Ka Chicken Soup', 'Coconut chicken soup with mushroom, green onion, cilantro.', '02_large.PNG', '4.95', 1, 1, 1, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(3, 35, 10, 0, NULL, 'Crispy Thai Spring Roll', 'Slice cabbages and carrot rolled with spring roll wrapper, served with Thai sweet and sour sauce.', '03_large.PNG', '4.95', 1, 1, 1, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-02-27 02:42:45', 1, '58.9.70.93'),
(4, 35, 10, 0, NULL, 'Chicken Wing', 'Deep fried chicken wings prepared Thai style, served with sweet and sour sauce.', '04_large.PNG', '6.95', 1, 1, 1, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2017-04-28 05:45:23', 3, '58.9.70.93'),
(5, 32, 30, 0, NULL, 'Tempura', '', 'tempura_large.jpg', '8.00', 1, 1, 0, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(6, 32, 30, 0, NULL, 'Gyoza', '', 'gyoza_large.jpg', '8.00', 1, 1, 0, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(7, 32, 40, 0, NULL, 'YAKISOBA', '', 'yakisoba_large.jpg', '11.00', 1, 1, 0, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(8, 32, 40, 0, NULL, 'YAKI UDON', '', 'yakiudon_large.jpg', '11.00', 1, 1, 0, 1, '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(9, 139, 50, 0, NULL, 'Menu 1 Menu 1 Menu1 Menu1', 'Menu 1', '1488251592807780.png', '1.00', 1, 1, 1, 1, '2017-02-28 10:13:12', 1, '58.9.70.93', '2017-02-28 10:20:22', 1, '58.9.70.93'),
(12, 139, 65, 0, NULL, 'Item Test', '', NULL, '0.00', 0, 1, 1, 1, '2017-04-20 11:50:08', 1, '58.9.70.93', '2017-04-20 11:50:08', 1, '58.9.70.93'),
(13, 139, 65, 0, NULL, 'Item Test', 'Description 113', NULL, '2.00', 1, 1, 1, 1, '2017-04-20 11:52:50', 1, '58.9.70.93', '2017-04-20 11:52:50', 1, '58.9.70.93'),
(14, 139, 65, 0, NULL, 'Item Test', 'Description 113', NULL, '2.00', 1, 0, 0, 0, '2017-04-20 11:53:20', 1, '58.9.70.93', '2017-04-20 11:53:20', 1, '58.9.70.93'),
(15, 139, 65, 0, NULL, 'Item Test', 'Description 113', NULL, '2.00', 0, 0, 0, 1, '2017-04-20 11:55:28', 1, '58.9.70.93', '2017-04-20 01:56:25', 1, '58.9.70.93'),
(18, 139, 66, 0, NULL, 'Item 115-0', 'Desc 115-0', '1492685562471734.jpg', '1.00', 0, 1, 1, 1, '2017-04-20 05:52:42', 2, '58.9.70.93', '2017-04-20 07:13:35', 2, '58.9.70.93'),
(19, 139, 66, 0, NULL, 'Item 115-1', 'Item Desc 115-1', NULL, '1.00', 9, 1, 1, 0, '2017-04-20 06:27:28', 2, '58.9.70.93', '2017-04-20 07:17:39', 2, '58.9.70.93'),
(20, 139, 41, 0, NULL, 'spring roll', 'spring roll', '1493005443849693.jpg', '1.30', 5, 1, 0, 1, '2017-04-24 10:44:03', 2, '58.9.70.93', '2017-04-24 10:48:02', 2, '58.9.70.93'),
(21, 105, 77, 0, NULL, 'Combination Fried Rice', 'Combination of shrimp, chicken, pork and beef with egg, pea, carrot, onion and tomato.', '1497327464817239.jpg', '11.50', 1, 1, 1, 1, '2017-06-13 05:17:44', 27, '58.9.70.251', '2017-09-12 05:24:36', 108, '58.9.70.251'),
(22, 105, 79, 0, NULL, 'Three Flavored Fish', 'Lightly battered tilapia with garlic and chili in three flavored sauce, onion, bell pepper, corn, carrot and basil leaves.', '1497327815863189.jpg', '14.00', 1, 1, 1, 1, '2017-06-13 05:23:35', 27, '58.9.70.251', '2017-09-12 05:24:40', 108, '58.9.70.251'),
(23, 105, 72, 0, NULL, 'Main Menu1', 'Main Menu1', '1497337164733560.jpg', '1.00', 1, 0, 1, 1, '2017-06-13 07:59:24', 27, '58.9.70.251', '2017-09-12 05:24:20', 108, '58.9.70.251'),
(24, 105, 73, 0, NULL, 'Main Item 2', 'Main Item 2', '1497337529119783.jpg', '1.00', 1, 0, 1, 1, '2017-06-13 08:05:29', 27, '58.9.70.251', '2017-09-12 05:24:30', 108, '58.9.70.251'),
(25, 105, 72, 0, NULL, 'Main Item 3', 'Main Item 3', '1497338045436084.jpg', '1.00', 9, 0, 1, 1, '2017-06-13 08:14:05', 27, '58.9.70.251', '2017-09-12 05:24:26', 108, '58.9.70.251'),
(43, 139, 42, 0, NULL, 'Test Item 1', 'Test Item 1', '1497413459655434.jpg', '1.00', 1, 0, 0, 1, '2017-06-14 05:10:59', 74, '58.9.70.251', '2017-06-14 05:10:59', 74, '58.9.70.251'),
(44, 139, 42, 0, NULL, 'Test Item 1', 'Test Item 1', '1497413568549250.jpg', '1.00', 1, 0, 0, 1, '2017-06-14 05:12:48', 74, '58.9.70.251', '2017-06-14 05:12:48', 74, '58.9.70.251'),
(45, 139, 42, 0, NULL, 'Test ITem 3', 'Test ITem 3', '1497413766902650.jpg', '1.00', 1, 1, 1, 1, '2017-06-14 05:16:07', 74, '58.9.70.251', '2017-06-14 10:28:39', 74, '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_item_media`
--

CREATE TABLE `zzz_business_shop_item_media` (
  `bsim_id` int(10) UNSIGNED NOT NULL,
  `bsim_bsih_id` int(10) UNSIGNED NOT NULL,
  `bsim_title` text COLLATE utf8_unicode_ci NOT NULL,
  `bsim_desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `bsim_file` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_item_option`
--

CREATE TABLE `zzz_business_shop_item_option` (
  `bsio_id` int(10) UNSIGNED NOT NULL,
  `bsio_bsih_id` int(10) UNSIGNED NOT NULL,
  `bsio_name` text COLLATE utf8_unicode_ci NOT NULL,
  `bsio_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_item_promotion`
--

CREATE TABLE `zzz_business_shop_item_promotion` (
  `bsip_id` int(10) UNSIGNED NOT NULL,
  `bsip_bsih_id` int(10) UNSIGNED NOT NULL,
  `bsip_price` decimal(10,0) DEFAULT '0' COMMENT 'promotion price',
  `bsip_discount` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'promotion discount',
  `bsip_sdate` date NOT NULL DEFAULT '2016-01-01' COMMENT 'promotion start date',
  `bsip_fdate` date NOT NULL DEFAULT '2016-01-01' COMMENT 'promotion finish date',
  `bsip_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsip_cuser` int(10) UNSIGNED NOT NULL,
  `bsip_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsip_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsip_muser` int(10) UNSIGNED NOT NULL,
  `bsip_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_option`
--

CREATE TABLE `zzz_business_shop_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_option`
--

INSERT INTO `zzz_business_shop_option` (`id`, `shop_id`, `name`, `value`) VALUES
(2, 35, 'points_exchange_rate', '10'),
(3, 35, 'expire_date', '2018-01-01'),
(4, 139, 'points_exchange_rate', '10'),
(5, 105, 'points_exchange_rate', '10');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_review_header`
--

CREATE TABLE `zzz_business_shop_review_header` (
  `bsrh_id` int(10) UNSIGNED NOT NULL,
  `bsrh_bssh_id` int(10) UNSIGNED NOT NULL,
  `bsrh_title` text COLLATE utf8_unicode_ci NOT NULL,
  `bsrh_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `bsrh_score` int(10) UNSIGNED NOT NULL DEFAULT '5',
  `bsrh_price_rate` tinyint(4) NOT NULL DEFAULT '1',
  `bsrh_cover_image` int(11) NOT NULL DEFAULT '0' COMMENT 'cover image refer to bsri_id',
  `bsrh_menu_recommend` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bsrh_public` tinyint(1) NOT NULL DEFAULT '0',
  `bsrh_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsrh_cuser` int(10) UNSIGNED NOT NULL,
  `bsrh_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsrh_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsrh_muser` int(10) UNSIGNED NOT NULL,
  `bsrh_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_review_header`
--

INSERT INTO `zzz_business_shop_review_header` (`bsrh_id`, `bsrh_bssh_id`, `bsrh_title`, `bsrh_desc`, `bsrh_score`, `bsrh_price_rate`, `bsrh_cover_image`, `bsrh_menu_recommend`, `bsrh_public`, `bsrh_cdate`, `bsrh_cuser`, `bsrh_cip`, `bsrh_mdate`, `bsrh_muser`, `bsrh_mip`) VALUES
(1, 35, 'perfect ', 'Good , low price', 4, 5, 1, '3||2||1', 0, '2017-02-03 14:16:22', 41, '27.55.65.211', '2017-03-22 13:58:19', 3, '58.9.70.93'),
(2, 35, 'test test', 'test test test test test test test test test test test test test test test test', 4, 1, 0, '', 0, '2017-03-15 15:52:53', 2, '58.9.70.93', '2017-03-22 13:58:28', 3, '58.9.70.93'),
(3, 35, 'sddsfdsf', 'Sdfdsfdsfdfs', 3, 3, 0, '4||2||1', 0, '2017-03-15 15:55:20', 61, '58.9.70.93', '2017-03-22 13:58:26', 3, '58.9.70.93'),
(4, 35, 'mix test', 'Test', 2, 3, 5, '3||2', 0, '2017-01-16 13:59:38', 40, '58.9.70.93', '2017-03-22 13:58:18', 3, '58.9.70.93'),
(5, 35, 'test', 'Testttt', 2, 3, 0, '1||3', 0, '2017-02-16 14:01:41', 40, '58.9.70.93', '2017-03-22 13:58:20', 3, '58.9.70.93'),
(6, 35, 'แนะนำเลยครับ', 'อาหารอร่อย ราคาไม่แพงครับ ส่วนตัวชอบต้มยำกุ้งครับ กุ้งตัวใหญ่ดีครับ', 5, 1, 8, '1', 1, '2017-03-27 04:29:37', 1, '27.55.125.206', '2017-03-27 04:29:37', 1, '27.55.125.206'),
(7, 35, 'อร่อย', 'อร่อยมาก', 3, 3, 9, '2||4', 0, '2017-03-27 10:03:05', 64, '27.55.73.112', '2017-03-27 10:03:05', 64, '27.55.73.112'),
(8, 138, 'กาแฟเข้มลงพุง', 'บรรยากาศดีครับ', 4, 1, 13, '', 0, '2017-03-31 22:42:43', 1, '27.55.64.105', '2017-03-31 22:42:43', 1, '27.55.64.105'),
(9, 35, 'แนะนำเมนูใหม่ ไข่พระอาทิตย์', 'วันนี้พาเด็กๆ มากินเมนู\nพระราชทาน ข้าวไข่พระอาทิตย์\nต้มยำกุ้งน้ำเข้มข้นมาก\nกุ้งตัวใหญ่ด้วย!!!!!', 5, 1, 15, '1||3', 0, '2017-04-10 15:22:46', 1, '58.9.70.93', '2017-04-10 15:22:46', 1, '58.9.70.93'),
(14, 35, 'มากินข้าวเหนียวทุเรียน', 'อร่อยมากเลย กินเหนียวทุเรียน หน้ามะม่วงเนี่ยะ', 4, 1, 16, '1', 1, '2017-04-18 17:25:30', 1, '58.9.70.93', '2017-04-18 17:25:30', 1, '58.9.70.93'),
(15, 35, 'worth to try', 'i fly from Lipe thailand, to meet someone special. so that i need some place soecial.', 5, 5, 0, '1||4', 1, '2017-04-20 06:13:31', 47, '182.232.244.238', '2017-04-20 06:13:31', 47, '182.232.244.238'),
(16, 35, 'good choice ', 'Good taste save Cost', 5, 5, 0, '1||4', 1, '2017-04-20 09:07:13', 41, '58.9.70.93', '2017-04-20 09:07:13', 41, '58.9.70.93'),
(17, 35, 'good price', 'Savvvvvvvv', 4, 4, 0, '2||3||1', 1, '2017-04-20 09:19:35', 41, '58.9.70.93', '2017-04-20 09:19:35', 41, '58.9.70.93'),
(18, 35, 'goooood', 'Ok work', 3, 4, 0, '3||2||1||4', 1, '2017-04-20 09:21:08', 41, '58.9.70.93', '2017-04-20 09:21:08', 41, '58.9.70.93'),
(19, 35, 'อร่อยที่สุดในสามโลก', 'ไม่แพงด้วย', 1, 1, 0, '', 1, '2017-04-20 10:42:35', 1, '58.9.70.93', '2017-04-20 10:42:35', 1, '58.9.70.93'),
(20, 35, 'Good Service', 'The Best Of service', 5, 5, 19, '2||4||3||1', 1, '2017-04-20 11:51:08', 61, '27.55.122.173', '2017-04-20 11:51:08', 61, '27.55.122.173'),
(21, 35, 'เข้ากันได้เลยที่เดียว', 'แมนซั่ม กับ ตั้มยำ ', 4, 1, 20, '1', 1, '2017-04-21 12:19:34', 1, '58.9.70.93', '2017-04-21 12:19:34', 1, '58.9.70.93'),
(22, 35, 'อาหารอร่อยไหม ถามใจเธอดู', 'ดูจากภาพน่าจะรู้นะ', 5, 1, 23, '', 1, '2017-04-21 12:56:15', 1, '223.24.135.252', '2017-04-21 12:56:15', 1, '223.24.135.252'),
(23, 35, 'delicious', 'My mouth is watering.\r\n\r\nอิ่มอร่อย โดยอาไท การันตี...!!!!!\r\n\r\n', 5, 1, 24, '', 1, '2017-04-24 11:40:51', 10, '58.9.70.93', '2017-04-24 11:40:51', 10, '58.9.70.93'),
(24, 32, 'อร่อยเลย.....', 'เชิญมากินได้เลยยยยย', 5, 1, 25, '', 1, '2017-04-24 16:32:52', 32, '58.9.70.93', '2017-04-24 16:32:52', 32, '58.9.70.93'),
(25, 35, 'สปริงโรลลลลลล', 'อร๊อยยยนยอร่อยยยยยยยยย', 4, 5, 26, '', 1, '2017-04-27 15:21:09', 41, '58.9.70.93', '2017-04-27 15:21:09', 41, '58.9.70.93'),
(26, 35, 'ร้านนี้ดี๊ดี', 'อร๊อยยยยยอร่อยยยย', 5, 5, 29, '1||3', 1, '2017-04-27 15:52:14', 41, '223.24.98.173', '2017-04-27 15:52:14', 41, '223.24.98.173'),
(27, 35, 'เชิญชวนเพื่อนมากินอาหารเพราะอร่อย', 'ความอร่อยที่หยุดไม่ได้', 3, 3, 30, '1||2||4', 1, '2017-04-27 18:37:05', 32, '223.24.101.250', '2017-04-27 18:37:05', 32, '223.24.101.250'),
(28, 35, 'P.Ton ยังชอบบ', 'ร้านมันดี อาหารเฟี่ยว  การันตี โดย Choo Back', 5, 5, 31, '1||4', 1, '2017-04-28 17:27:26', 40, '27.55.122.58', '2017-04-28 17:27:26', 40, '27.55.122.58'),
(29, 35, 'first time on my mobile, many comments ', 'On iPhone 5SE 1)heading picture doesn\'t seem in its proper ratio. 2) tell --> call 3) I can\'t enter to new role in comment free text box.  For note in back log 3.3 should be able to edit comment like under comment box(seem tricky but user has very unhappy experiences)', 2, 3, 32, '1||2||3', 1, '2017-05-04 05:35:08', 68, '49.49.247.154', '2017-05-04 05:35:08', 68, '49.49.247.154'),
(30, 35, 'what happen in this country', 'https://www.facebook.com/NowThisPolitics/videos/1542632039101614/', 5, 5, 36, '1||2||3', 1, '2017-05-05 17:28:06', 68, '49.49.233.78', '2017-05-05 17:28:06', 68, '49.49.233.78'),
(31, 35, 'ทดสอบ', 'พ่านสาสวา้่สม้สส้่ีรายาวสาา่่่าาวสสาา่่่่ว่่่', 5, 5, 0, '', 1, '2017-05-08 14:21:32', 61, '58.9.70.251', '2017-05-08 14:21:32', 61, '58.9.70.251'),
(32, 35, 'test test', 'test test test test test test test test test test test test test test test test', 4, 1, 0, '', 1, '2017-05-08 15:01:55', 2, '58.9.70.251', '2017-05-08 15:01:55', 2, '58.9.70.251'),
(33, 35, 'test test', 'test test test test test test test test test test test test test test test test', 1, 1, 0, '', 1, '2017-05-08 15:02:38', 2, '58.9.70.251', '2017-05-08 15:02:38', 2, '58.9.70.251'),
(34, 35, 'new roll', 'New\nRoll\n', 1, 1, 0, '', 1, '2017-05-09 10:29:23', 61, '58.9.70.251', '2017-05-09 10:29:23', 61, '58.9.70.251'),
(35, 35, 'new roll', 'New line\nNa\nNan\nNan\nNaaaaaaaaaa', 1, 5, 0, '1||2||3||4', 1, '2017-05-09 10:31:12', 61, '58.9.70.251', '2017-05-09 10:31:12', 61, '58.9.70.251'),
(36, 35, 'test test', 'test test test test test test test test test test test test test test test test', 4, 1, 0, '', 0, '2017-05-11 13:03:40', 2, '114.109.156.94', '2017-05-11 13:03:40', 2, '114.109.156.94'),
(37, 35, 'ทดสอบระบบชั่วคราวววว', '1234567890', 2, 2, 37, '1||2||3||4', 1, '2017-05-12 11:30:06', 32, '58.9.70.251', '2017-05-12 11:30:06', 32, '58.9.70.251'),
(38, 35, 'ต้มโคร้ง ร้านเจ้ตุ๋ม', 'อาหารสะอาดถูกหนักอนามัย และรสชาติถูกปากมากครับ เหมาะสำหรับเพื่อนๆที่มาเป็นหมู่คณะครับ', 5, 5, 0, '1', 1, '2017-05-15 13:49:58', 4, '58.9.70.251', '2017-05-15 13:49:58', 4, '58.9.70.251'),
(39, 35, 'ต้มยำ', 'อร่อยสุดๆๆ', 3, 3, 39, '1', 1, '2017-05-15 13:51:51', 4, '58.9.70.251', '2017-05-15 13:51:51', 4, '58.9.70.251'),
(40, 35, 'เทสสสสสสสสส', '1234567890', 2, 2, 39, '1', 1, '2017-05-15 13:52:42', 4, '58.9.70.251', '2017-05-15 13:52:42', 4, '58.9.70.251'),
(41, 35, 'เราสามคน', '55555555', 5, 5, 39, '1||3||2', 1, '2017-05-15 13:55:16', 4, '58.9.70.251', '2017-05-15 13:55:16', 4, '58.9.70.251'),
(42, 35, 'เทส1', 'งดงามอาหารดี', 4, 4, 0, '1', 1, '2017-05-15 13:58:11', 4, '58.9.70.251', '2017-05-15 13:58:11', 4, '58.9.70.251'),
(43, 35, 'Jelelight', 'P.j ไล่โค้ดอย่างเมามันส์', 5, 1, 41, '1||3', 1, '2017-05-15 13:58:35', 41, '27.55.82.90', '2017-05-15 13:58:35', 41, '27.55.82.90'),
(44, 35, 'อยากลองชิมอาหาร', '123456789', 3, 3, 42, '1', 1, '2017-05-15 13:58:36', 64, '58.9.70.251', '2017-05-15 13:58:36', 64, '58.9.70.251'),
(45, 35, 'เทสสสส333', 'อร่อยยยยจัง', 3, 3, 0, '1', 1, '2017-05-15 13:59:38', 4, '58.9.70.251', '2017-05-15 13:59:38', 4, '58.9.70.251'),
(46, 35, 'รักเทอไปทุกวัน', '123456', 3, 3, 42, '1||2||3', 1, '2017-05-15 14:00:02', 64, '58.9.70.251', '2017-05-15 14:00:02', 64, '58.9.70.251'),
(47, 35, '555555', '22222', 3, 3, 45, '1', 1, '2017-05-15 14:10:23', 64, '27.55.82.184', '2017-05-15 14:10:23', 64, '27.55.82.184'),
(48, 35, '1111111111111', '1111111111', 1, 1, 46, '1||3', 1, '2017-05-15 14:14:46', 64, '27.55.82.184', '2017-05-15 14:14:46', 64, '27.55.82.184'),
(49, 35, '44444444', '444444', 3, 3, 47, '1||3', 1, '2017-05-15 14:15:47', 64, '27.55.82.184', '2017-05-15 14:15:47', 64, '27.55.82.184'),
(50, 35, 'mmmmmmmmmmmm', 'mmmmmmmmmm', 3, 3, 48, '1', 1, '2017-05-15 14:18:57', 4, '58.9.70.251', '2017-05-15 14:18:57', 4, '58.9.70.251'),
(51, 35, 'nnnnnnnnnnnn', 'nnnnnnnnnnnn', 3, 3, 49, '1', 1, '2017-05-15 14:19:43', 4, '58.9.70.251', '2017-05-15 14:19:43', 4, '58.9.70.251'),
(52, 35, '', 'เทสส', 4, 4, 0, '1||2||3||4', 1, '2017-05-15 14:21:34', 41, '27.55.82.90', '2017-05-15 14:21:34', 41, '27.55.82.90'),
(53, 35, 'สุดติ้ง', 'ไอ่เลิฟยู', 4, 4, 50, '1', 1, '2017-05-15 14:22:05', 4, '58.9.70.251', '2017-05-15 14:22:05', 4, '58.9.70.251'),
(54, 35, '', 'หมู', 5, 5, 0, '1||2||3||4', 1, '2017-05-15 14:22:18', 41, '27.55.82.90', '2017-05-15 14:22:18', 41, '27.55.82.90'),
(55, 35, 'เทสสสสน้าาา', 'ความอร่อยคือความงดงาม', 3, 3, 51, '1', 1, '2017-05-15 14:26:20', 4, '58.9.70.251', '2017-05-15 14:26:20', 4, '58.9.70.251'),
(56, 35, 'เทสครั้งที่ 4', '15 พค.', 4, 4, 56, '1', 1, '2017-05-15 14:50:18', 4, '58.9.70.251', '2017-05-15 14:50:18', 4, '58.9.70.251'),
(57, 35, 'ดีงามพระรามเก้า', 'อิอิ', 2, 2, 57, '1', 1, '2017-05-16 14:22:18', 4, '58.9.70.251', '2017-05-16 14:22:18', 4, '58.9.70.251'),
(58, 35, '11111', '22222', 2, 2, 58, '1', 1, '2017-05-18 11:46:06', 32, '58.9.70.251', '2017-05-18 11:46:06', 32, '58.9.70.251'),
(59, 35, 'หิว', 'เล่นแอพละหิวเลย', 5, 5, 0, '1', 1, '2017-05-25 05:20:02', 61, '223.24.96.23', '2017-05-25 05:20:02', 61, '223.24.96.23'),
(60, 35, 'ทดสอบ', 'ทดสอบ', 3, 3, 60, '1||2||3||4', 1, '2017-05-25 05:29:08', 33, '58.9.70.251', '2017-05-25 05:29:08', 33, '58.9.70.251'),
(61, 35, 'good job', 'good', 5, 5, 62, '1', 1, '2017-05-25 05:51:17', 10, '58.9.70.251', '2017-05-25 05:51:17', 10, '58.9.70.251'),
(62, 35, 'good job', 'good', 5, 5, 0, '', 1, '2017-05-25 05:51:27', 10, '58.9.70.251', '2017-05-25 05:51:27', 10, '58.9.70.251'),
(63, 35, 'ghgghhh', 'nbnjjnnnn', 3, 5, 0, '1||2||3||4', 1, '2017-05-25 06:34:54', 61, '114.109.156.94', '2017-05-25 06:34:54', 61, '114.109.156.94'),
(64, 35, 'หิวหิวหิว', 'เล่นละหิวต้องทำไงคะ', 5, 5, 0, '1', 1, '2017-05-25 06:56:10', 81, '223.24.96.23', '2017-05-25 06:56:10', 81, '223.24.96.23'),
(65, 35, 'login with fb is back to normal', 'User needs to delete the app and re install. login with fb is back to normal\n\n', 5, 5, 65, '1||2||3||4', 1, '2017-05-30 03:26:57', 90, '49.49.246.242', '2017-05-30 03:26:57', 90, '49.49.246.242'),
(66, 35, 'ก๋วยเตี้ยวหมู', 'อร่อยจนต้องขอ2', 5, 1, 66, '', 1, '2017-05-31 06:32:55', 41, '223.24.64.63', '2017-05-31 06:32:55', 41, '223.24.64.63'),
(67, 35, 'test', '\n\n', 5, 5, 0, '1||2||3||4', 1, '2017-05-31 10:18:14', 41, '58.9.70.251', '2017-05-31 10:18:14', 41, '58.9.70.251'),
(68, 35, 'title', 'Desc', 1, 1, 0, '', 1, '2017-05-31 10:18:29', 41, '58.9.70.251', '2017-05-31 10:18:29', 41, '58.9.70.251'),
(69, 35, 'title', 'Pim', 1, 1, 0, '', 1, '2017-05-31 10:19:40', 41, '58.9.70.251', '2017-05-31 10:19:40', 41, '58.9.70.251'),
(70, 35, 'นกหนักมาก', 'อยากกินมันแกวดีกว่า', 5, 5, 0, '1||2||3||4', 1, '2017-05-31 10:22:55', 94, '58.9.70.251', '2017-05-31 10:22:55', 94, '58.9.70.251'),
(71, 35, 'จุ๊บจิ๊บกุ๊กกุ๊ก', 'อยากกินข้าวเหนียวมะม่วง\n\n', 5, 5, 71, '1||2||3||4', 1, '2017-05-31 10:26:12', 94, '58.9.70.251', '2017-05-31 10:26:12', 94, '58.9.70.251'),
(72, 35, 'ห้าห้าห้าห้า', 'หกหกหกหก', 3, 3, 72, '1', 1, '2017-05-31 10:41:46', 32, '58.9.70.251', '2017-05-31 10:41:46', 32, '58.9.70.251'),
(73, 35, 'ร้านเด็ดอีกแล้ว', 'หิวละสิ', 5, 1, 73, '1', 1, '2017-06-01 06:35:16', 41, '27.55.36.10', '2017-06-01 06:35:16', 41, '27.55.36.10'),
(74, 35, 'รีวิววนไปจ่ะ', 'บรรยาได้ อาหารได้ ครบจ้าา', 5, 5, 76, '1', 1, '2017-06-01 06:35:46', 49, '223.24.41.187', '2017-06-01 06:35:46', 49, '223.24.41.187'),
(75, 35, 'รีวิววนไปจ่ะ', 'บรรยาได้ อาหารได้ ครบจ้าา', 5, 5, 0, '', 1, '2017-06-01 06:35:48', 49, '223.24.41.187', '2017-06-01 06:35:48', 49, '223.24.41.187'),
(76, 35, 'สุดพลัง', 'สุดพลังกสำยพสดมกสหบฟเทสๆๆๆๆุๆุๆุๆุๆุๆๆนๆยุๆสุๆสุๆสุๆมุๆมมๆาๆาๆาๆุาๆุาๆุาๆุมๆุมๆุมๆมๆมุๆใัใๆใๆุใๆัวๆัใำัใกสปยอาัำยัหยัำยัยำัยไัยไัยไัยไัยไไสไยยไไยไสยไยุลุำุไุลำไยไนไนไน', 5, 5, 0, '1', 1, '2017-06-01 08:32:48', 49, '58.9.70.251', '2017-06-01 08:32:48', 49, '58.9.70.251'),
(77, 35, '', 'หิว!!!', 5, 2, 0, '1||2||3||4', 1, '2017-06-02 14:31:20', 98, '27.130.216.164', '2017-06-02 14:31:20', 98, '27.130.216.164'),
(78, 35, 'หน่วง Room 39', 'ทำไมเวลาเลื่อนลงต้องมีสัญลักษณ์ load ข้อมูล และหน่วงๆอ่ะค้าบ\n', 2, 1, 0, '1||2||3||4', 1, '2017-06-02 14:36:01', 98, '27.130.216.164', '2017-06-02 14:36:01', 98, '27.130.216.164'),
(79, 35, 'เหนื่อยจร้าหิวแล้ววววว', 'อยากออกไปกินข้าว', 2, 2, 79, '1||2||4', 1, '2017-06-05 06:01:23', 49, '58.9.70.251', '2017-06-05 06:01:23', 49, '58.9.70.251'),
(80, 35, 'ทดสอบระบบ', 'อาหารอร่อยมากๆ', 3, 3, 81, '1||2', 1, '2017-06-07 08:59:47', 2, '223.24.8.146', '2017-06-07 08:59:47', 2, '223.24.8.146'),
(81, 105, 'ทดสอบ by MIX', 'อ้ายสิฮิ', 5, 1, 0, '21||22', 1, '2017-06-13 07:56:52', 41, '58.9.70.251', '2017-06-13 07:56:52', 41, '58.9.70.251'),
(82, 105, 'test', 'test', 4, 4, 92, '21||22', 1, '2017-06-13 09:01:36', 73, '58.9.70.251', '2017-06-13 09:01:36', 73, '58.9.70.251'),
(83, 35, 'นิวววววว', 'จ้า\n', 5, 1, 113, '1||4||3', 1, '2017-06-13 10:23:54', 41, '58.9.70.251', '2017-06-13 10:23:54', 41, '58.9.70.251'),
(84, 35, 'เปรี้ยวตลาดแตก', 'ก๊ากกกกกกกกกกกกกกกก', 3, 3, 118, '1||2||3||4', 1, '2017-06-13 11:04:59', 73, '58.9.70.251', '2017-06-13 11:04:59', 73, '58.9.70.251'),
(85, 35, 'เปรี้ยวตลาดแตก', 'ก๊ากกกกกกกกกกกกกกกก', 3, 3, 118, '1||2||3||4', 1, '2017-06-13 11:05:14', 73, '58.9.70.251', '2017-06-13 11:05:14', 73, '58.9.70.251'),
(86, 35, 'มีน้ำหอมขายมั้ย', 'lol\n', 5, 5, 122, '1||2||3||4', 1, '2017-06-14 07:50:49', 94, '58.9.70.251', '2017-06-14 07:50:49', 94, '58.9.70.251'),
(87, 105, 'ทดสอบบบบบ', 'ทดสอบบบบบ', 3, 3, 123, '21||22||23||24||25', 1, '2017-06-14 08:46:23', 32, '27.55.117.77', '2017-06-14 08:46:23', 32, '27.55.117.77'),
(88, 105, 'Save Choise', 'Best Service', 5, 3, 129, '22||21', 1, '2017-06-15 03:44:24', 41, '58.9.70.251', '2017-06-15 03:44:24', 41, '58.9.70.251'),
(89, 35, 'อิ่มอร่อย', 'จุงเบย', 4, 4, 133, '1||2||3||4', 1, '2017-06-15 05:10:47', 32, '58.9.70.251', '2017-06-15 05:10:47', 32, '58.9.70.251'),
(90, 35, '1234', '5678', 5, 5, 134, '1||2||4', 1, '2017-06-15 05:26:18', 10, '223.24.74.125', '2017-06-15 05:26:18', 10, '223.24.74.125'),
(91, 105, 'รู้สึกง่วงนอนนน', 'อยากหลับ', 1, 1, 0, '', 1, '2017-06-15 05:28:59', 32, '58.9.70.251', '2017-06-15 05:28:59', 32, '58.9.70.251'),
(92, 105, 'รีิวิว', 'นะจ๊ะ', 1, 1, 0, '21||22||23||24||25', 1, '2017-06-15 07:48:30', 87, '58.9.70.251', '2017-06-15 07:48:30', 87, '58.9.70.251'),
(93, 35, 'รีวิว', 'นะ', 1, 1, 0, '4', 1, '2017-06-15 07:49:29', 87, '58.9.70.251', '2017-06-15 07:49:29', 87, '58.9.70.251'),
(94, 35, 'รีวิว', 'นะ', 1, 1, 0, '1||2||3||4', 1, '2017-06-15 07:50:38', 87, '58.9.70.251', '2017-06-15 07:50:38', 87, '58.9.70.251'),
(95, 35, 'อีกที', 'นะจ๊ะ', 1, 1, 0, '1||2||3||4', 1, '2017-06-15 07:52:36', 87, '58.9.70.251', '2017-06-15 07:52:36', 87, '58.9.70.251'),
(96, 35, 'อีกทีนะ', 'ไม่เปนไรหรอกเนอะ', 1, 1, 0, '1||2||3||4', 1, '2017-06-15 07:53:33', 87, '58.9.70.251', '2017-06-15 07:53:33', 87, '58.9.70.251'),
(97, 35, 'ดีบักโค้ดก่อนนะ', 'แปปปเดียววววเอง', 1, 3, 0, '1', 1, '2017-06-15 07:55:33', 87, '58.9.70.251', '2017-06-15 07:55:33', 87, '58.9.70.251'),
(98, 35, 'แก้แล้วนะ ', 'ไม่พังแล้วนะ', 5, 5, 0, '1', 1, '2017-06-15 08:08:29', 87, '58.9.70.251', '2017-06-15 08:08:29', 87, '58.9.70.251'),
(99, 32, 'อาหารโคตรน่ากินเลยยยยย', 'ลองมาขิมแล้วจะรุ้ว่าอร่อย', 1, 1, 0, '5||6||7||8', 1, '2017-06-15 11:27:04', 32, '58.9.70.251', '2017-06-15 11:27:04', 32, '58.9.70.251'),
(100, 105, 'จากtestflight', 'นะนะน\n', 5, 1, 138, '21||22||23', 1, '2017-06-16 08:43:42', 109, '223.24.19.223', '2017-06-16 08:43:42', 109, '223.24.19.223'),
(101, 105, 'fix upload image', 'Image', 5, 5, 157, '21', 1, '2017-06-16 09:54:23', 41, '58.9.70.251', '2017-06-16 09:54:23', 41, '58.9.70.251'),
(102, 105, 'from emu', 'Not Brick', 5, 5, 176, '21||25', 1, '2017-06-16 10:32:22', 109, '58.9.70.251', '2017-06-16 10:32:22', 109, '58.9.70.251'),
(103, 105, 'เงิบบบบ', 'สิจ๊ะ', 5, 5, 190, '21||24||23', 1, '2017-06-16 11:10:47', 41, '58.9.70.251', '2017-06-16 11:10:47', 41, '58.9.70.251'),
(104, 105, 'เครื่องเชฐ', 'ได้ทุกสิ่ง\n', 5, 5, 200, '21||22||23', 1, '2017-06-16 11:43:42', 110, '58.9.70.251', '2017-06-16 11:43:42', 110, '58.9.70.251'),
(105, 105, 'มากับเพื่ือน', 'อาหารถูก', 2, 2, 203, '21||22||23||24||25', 1, '2017-06-16 11:55:42', 2, '58.9.70.251', '2017-06-16 11:55:42', 2, '58.9.70.251'),
(106, 35, 'ลองดู', 'น่ากิน', 4, 4, 206, '1', 1, '2017-06-17 06:30:09', 103, '1.0.201.143', '2017-06-17 06:30:09', 103, '1.0.201.143'),
(107, 105, 'to ', 'Tooloo\n\n', 5, 1, 208, '21||23||22', 1, '2017-11-10 16:33:32', 109, '223.24.156.146', '2017-11-10 16:33:32', 109, '223.24.156.146');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_review_image`
--

CREATE TABLE `zzz_business_shop_review_image` (
  `bsri_id` int(10) UNSIGNED NOT NULL,
  `bsri_bssh_id` int(11) NOT NULL DEFAULT '0',
  `bsri_bsrh_id` int(10) UNSIGNED NOT NULL,
  `bsri_imgt_id` int(10) UNSIGNED DEFAULT NULL,
  `bsri_file` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(32) NOT NULL DEFAULT '0',
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `bsri_caption` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bsri_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsri_cuser` int(10) UNSIGNED NOT NULL,
  `bsri_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsri_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsri_muser` int(10) UNSIGNED NOT NULL,
  `bsri_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_review_image`
--

INSERT INTO `zzz_business_shop_review_image` (`bsri_id`, `bsri_bssh_id`, `bsri_bsrh_id`, `bsri_imgt_id`, `bsri_file`, `type`, `size`, `width`, `height`, `bsri_caption`, `bsri_cdate`, `bsri_cuser`, `bsri_cip`, `bsri_mdate`, `bsri_muser`, `bsri_mip`) VALUES
(1, 35, 1, 101, '35_101_1488525377_review.jpeg', NULL, 0, 0, 0, 'ถูกหวยเลยมากินหน่อย', '2017-02-03 14:16:18', 41, '27.55.65.211', '2017-02-03 14:16:18', 41, '27.55.65.211'),
(5, 35, 4, 101, '35_101_1489647487_review.jpeg', NULL, 0, 0, 0, '', '2017-01-16 13:58:08', 40, '58.9.70.93', '2017-01-16 13:58:08', 40, '58.9.70.93'),
(8, 35, 6, 103, '35_103_1490563751_review.jpg', NULL, 0, 0, 0, 'กุ้งตัวใหญ่มากกกก', '2017-04-27 04:29:11', 1, '27.55.125.206', '2017-04-27 04:29:11', 1, '27.55.125.206'),
(9, 35, 7, 105, '35_105_1490583758_review.png', NULL, 0, 0, 0, 'good', '2017-10-27 10:02:38', 64, '27.55.73.112', '2017-10-27 10:02:38', 64, '27.55.73.112'),
(13, 138, 8, 104, '138_104_1490974893_review.jpg', NULL, 0, 0, 0, 'ลาเต้ เย็น', '2017-10-31 22:41:34', 1, '27.55.64.105', '2017-10-31 22:41:34', 1, '27.55.64.105'),
(14, 35, 9, 104, '35_104_1491812218_review.jpeg', 'image/jpeg', 118379, 700, 467, 'ไข่เจียวกรอบๆ', '2017-03-10 15:16:58', 1, '58.9.70.93', '2017-03-10 15:16:58', 1, '58.9.70.93'),
(15, 35, 9, 104, '35_104_1491812304_review.jpg', 'image/jpeg', 163675, 1280, 720, 'ข้าวไข่พระอาทิตย์', '2017-03-10 15:18:24', 1, '58.9.70.93', '2017-03-10 15:18:24', 1, '58.9.70.93'),
(16, 35, 14, 105, '35_105_1492510900_review.jpeg', 'image/jpeg', 5294, 225, 225, 'มากินทุเรียน', '2017-05-18 17:21:40', 1, '58.9.70.93', '2017-05-18 17:21:40', 1, '58.9.70.93'),
(17, 35, 0, 101, '35_101_1492514190_review.jpeg', 'image/jpeg', 1050168, 3000, 2002, '', '2017-06-18 18:16:30', 0, '58.9.70.93', '2017-06-18 18:16:30', 0, '58.9.70.93'),
(19, 35, 20, 101, '35_101_1492663863_review.jpeg', 'image/jpeg', 1097716, 3024, 4032, 'sappe ', '2017-11-20 11:51:04', 61, '27.55.122.173', '2017-11-20 11:51:04', 61, '27.55.122.173'),
(20, 35, 21, 104, '35_104_1492751818_review.jpg', 'image/jpeg', 1823544, 3264, 2448, 'ตามหาแมนซั่น', '2017-12-21 12:16:59', 1, '58.9.70.93', '2017-12-21 12:16:59', 1, '58.9.70.93'),
(21, 35, 22, 104, '35_104_1492753896_review.jpg', 'image/jpeg', 2403260, 3264, 2448, 'กระเพราหมูกรอบ', '2017-12-21 12:51:37', 1, '223.24.135.252', '2017-12-21 12:51:37', 1, '223.24.135.252'),
(22, 35, 22, 104, '35_104_1492754063_review.jpg', 'image/jpeg', 2703331, 3264, 2448, 'หมูพริกแกงใต้', '2017-12-21 12:54:24', 1, '223.24.135.252', '2017-12-21 12:54:24', 1, '223.24.135.252'),
(23, 35, 22, 104, '35_104_1492754101_review.jpg', 'image/jpeg', 2219962, 3264, 2448, 'ข้าวผัดแหนม', '2017-12-21 12:55:01', 1, '223.24.135.252', '2017-12-21 12:55:01', 1, '223.24.135.252'),
(24, 35, 23, 101, '35_101_1493008801_review.jpg', 'image/jpeg', 39762, 94, 126, 'อิ่มอร่อย อาไท การันตี อีกแล้วครับท่าน', '2017-11-24 11:40:01', 10, '58.9.70.93', '2017-11-24 11:40:01', 10, '58.9.70.93'),
(25, 32, 24, 105, '32_105_1493026362_review.jpg', 'image/jpeg', 210476, 1108, 1478, 'รถติด', '2017-04-24 16:32:42', 32, '58.9.70.93', '2017-04-24 16:32:42', 32, '58.9.70.93'),
(26, 35, 25, 101, '35_101_1493281230_review.jpeg', 'image/jpeg', 1050168, 3000, 2002, 'น้ำตกอีกแล้ว', '2017-03-27 15:20:31', 41, '58.9.70.93', '2017-03-27 15:20:31', 41, '58.9.70.93'),
(27, 35, 0, 101, '35_101_1493281762_review.jpeg', 'image/jpeg', 250234, 1080, 1920, 'วิตตามีนซี', '2017-03-27 15:29:22', 41, '223.24.98.173', '2017-03-27 15:29:22', 41, '223.24.98.173'),
(28, 35, 0, 101, '35_101_1493281920_review.jpeg', 'image/jpeg', 250234, 1080, 1920, 'วิตตามินซี', '2017-03-27 15:32:00', 41, '223.24.98.173', '2017-03-27 15:32:00', 41, '223.24.98.173'),
(29, 35, 26, 101, '35_101_1493283130_review.jpeg', 'image/jpeg', 250234, 1080, 1920, 'วิตตามิน', '2017-03-27 15:52:11', 41, '223.24.98.173', '2017-03-27 15:52:11', 41, '223.24.98.173'),
(30, 35, 27, 105, '35_105_1493293015_review.png', 'image/png', 22046, 720, 369, 'ทดสอบ', '2017-06-27 18:36:55', 32, '223.24.101.250', '2017-06-27 18:36:55', 32, '223.24.101.250'),
(31, 35, 28, 101, '35_101_1493375243_review.jpeg', 'image/jpeg', 214114, 1080, 1920, 'Is CHOO', '2017-05-28 17:27:23', 40, '27.55.122.58', '2017-05-28 17:27:23', 40, '27.55.122.58'),
(32, 35, 29, 101, '35_101_1493850885_review.jpeg', 'image/jpeg', 438954, 1704, 2272, 'Philadelphia roll', '2017-05-04 05:34:45', 68, '49.49.247.154', '2017-05-04 05:34:45', 68, '49.49.247.154'),
(34, 35, 0, 101, '35_101_1493873643_review.jpeg', 'image/jpeg', 222778, 1080, 1920, '', '2017-11-04 11:54:03', 41, '27.55.142.236', '2017-11-04 11:54:03', 41, '27.55.142.236'),
(35, 35, 0, 101, '35_101_1493979930_review.jpeg', 'image/jpeg', 114638, 960, 662, '', '2017-05-05 17:25:30', 68, '49.49.233.78', '2017-05-05 17:25:30', 68, '49.49.233.78'),
(36, 35, 30, 101, '35_101_1493980074_review.jpeg', 'image/jpeg', 114638, 960, 662, '', '2017-05-05 17:27:54', 68, '49.49.233.78', '2017-05-05 17:27:54', 68, '49.49.233.78'),
(37, 35, 37, 105, '35_105_1494563364_review.png', 'image/png', 39946, 640, 1137, 'น่ารัก', '2017-11-12 11:29:24', 32, '58.9.70.251', '2017-11-12 11:29:24', 32, '58.9.70.251'),
(38, 35, 37, 105, '35_105_1494563397_review.png', 'image/png', 22046, 720, 369, 'การเขียนโปรแกรม', '2017-11-12 11:29:57', 32, '58.9.70.251', '2017-11-12 11:29:57', 32, '58.9.70.251'),
(39, 35, 41, 105, '35_105_1494831076_review.png', 'image/png', 196134, 1108, 1477, 'หนุ่มหล่อไทยลาว โหวตกันเยอะๆครับ ', '2017-01-15 13:51:16', 4, '58.9.70.251', '2017-01-15 13:51:16', 4, '58.9.70.251'),
(40, 35, 41, 105, '35_105_1494831306_review.png', 'image/png', 2832299, 2772, 1872, 'อร่อยสด', '2017-01-15 13:55:07', 4, '58.9.70.251', '2017-01-15 13:55:07', 4, '58.9.70.251'),
(41, 35, 43, 101, '35_101_1494831512_review.jpeg', 'image/jpeg', 162913, 1080, 1920, 'ใจเย็นๆๆ', '2017-01-15 13:58:32', 41, '27.55.82.90', '2017-01-15 13:58:32', 41, '27.55.82.90'),
(42, 35, 46, 105, '35_105_1494831513_review.png', 'image/png', 22046, 720, 369, '123456', '2017-01-15 13:58:33', 64, '58.9.70.251', '2017-01-15 13:58:33', 64, '58.9.70.251'),
(43, 35, 46, 105, '35_105_1494831595_review.png', 'image/png', 22046, 720, 369, '123456789', '2017-01-15 13:59:55', 64, '58.9.70.251', '2017-01-15 13:59:55', 64, '58.9.70.251'),
(44, 35, 0, 105, '35_105_1494831949_review.png', 'image/png', 39946, 640, 1137, '111', '2017-02-15 14:05:49', 64, '27.55.82.184', '2017-02-15 14:05:49', 64, '27.55.82.184'),
(45, 35, 47, 105, '35_105_1494832180_review.png', 'image/png', 39946, 640, 1137, '222', '2017-02-15 14:09:40', 64, '27.55.82.184', '2017-02-15 14:09:40', 64, '27.55.82.184'),
(46, 35, 48, 105, '35_105_1494832470_review.png', 'image/png', 39946, 640, 1137, '22222', '2017-02-15 14:14:30', 64, '27.55.82.184', '2017-02-15 14:14:30', 64, '27.55.82.184'),
(47, 35, 49, 105, '35_105_1494832539_review.png', 'image/png', 39946, 640, 1137, '4444444', '2017-02-15 14:15:39', 64, '27.55.82.184', '2017-02-15 14:15:39', 64, '27.55.82.184'),
(48, 35, 50, 105, '35_105_1494832733_review.png', 'image/png', 105417, 672, 720, 'เงินหมด', '2017-02-15 14:18:53', 4, '58.9.70.251', '2017-02-15 14:18:53', 4, '58.9.70.251'),
(49, 35, 51, 105, '35_105_1494832779_review.png', 'image/png', 105417, 672, 720, 'เงินเยอะ', '2017-02-15 14:19:39', 4, '58.9.70.251', '2017-02-15 14:19:39', 4, '58.9.70.251'),
(50, 35, 53, 105, '35_105_1494832924_review.png', 'image/png', 65607, 717, 960, 'น่ารักจ้าา', '2017-02-15 14:22:04', 4, '58.9.70.251', '2017-02-15 14:22:04', 4, '58.9.70.251'),
(51, 35, 55, 105, '35_105_1494833083_review.png', 'image/png', 69251, 540, 960, '1150', '2017-02-15 14:24:43', 4, '58.9.70.251', '2017-02-15 14:24:43', 4, '58.9.70.251'),
(52, 35, 55, 105, '35_105_1494833101_review.png', 'image/png', 20348, 539, 960, '11120', '2017-02-15 14:25:01', 4, '58.9.70.251', '2017-02-15 14:25:01', 4, '58.9.70.251'),
(53, 35, 55, 105, '35_105_1494833121_review.png', 'image/png', 82103, 720, 720, 'haha', '2017-02-15 14:25:21', 4, '58.9.70.251', '2017-02-15 14:25:21', 4, '58.9.70.251'),
(54, 35, 55, 105, '35_105_1494833136_review.png', 'image/png', 27041, 540, 960, 'plsss', '2017-02-15 14:25:36', 4, '58.9.70.251', '2017-02-15 14:25:36', 4, '58.9.70.251'),
(55, 35, 55, 105, '35_105_1494833176_review.png', 'image/png', 37352, 540, 960, 'เมาคลี', '2017-02-15 14:26:16', 4, '58.9.70.251', '2017-02-15 14:26:16', 4, '58.9.70.251'),
(56, 35, 56, 105, '35_105_1494834618_review.png', 'image/png', 180528, 1184, 888, 'หอมหวานอร่อย', '2017-02-15 14:50:18', 4, '58.9.70.251', '2017-02-15 14:50:18', 4, '58.9.70.251'),
(57, 35, 57, 105, '35_105_1494919328_review.png', 'image/png', 2832299, 2772, 1872, 'สายยยยเมา', '2017-02-16 14:22:09', 4, '58.9.70.251', '2017-02-16 14:22:09', 4, '58.9.70.251'),
(58, 35, 58, 105, '35_105_1495082763_review.png', 'image/png', 22046, 720, 369, '33333', '2017-11-18 11:46:03', 32, '58.9.70.251', '2017-11-18 11:46:03', 32, '58.9.70.251'),
(59, 35, 0, 101, '35_101_1495686420_review.jpeg', 'image/jpeg', 493434, 2000, 2668, 'ยิ้มสู้', '2017-05-25 05:27:00', 0, '58.9.70.251', '2017-05-25 05:27:00', 0, '58.9.70.251'),
(60, 35, 60, 101, '35_101_1495686515_review.jpeg', 'image/jpeg', 493434, 2000, 2668, 'ยิ้มสู้', '2017-05-25 05:28:35', 33, '58.9.70.251', '2017-05-25 05:28:35', 33, '58.9.70.251'),
(61, 35, 60, 101, '35_101_1495686546_review.jpeg', 'image/jpeg', 568608, 2000, 2668, 'เละตุ้มเปะ', '2017-05-25 05:29:07', 33, '58.9.70.251', '2017-05-25 05:29:07', 33, '58.9.70.251'),
(62, 35, 61, 105, '35_105_1495687871_review.png', 'image/png', 516857, 1280, 720, 'good', '2017-05-25 05:51:11', 10, '58.9.70.251', '2017-05-25 05:51:11', 10, '58.9.70.251'),
(63, 35, 0, 105, '35_105_1496032842_review.png', 'image/png', 46596, 720, 720, '55555', '2017-05-29 05:40:42', 32, '58.9.70.251', '2017-05-29 05:40:42', 32, '58.9.70.251'),
(64, 35, 0, 105, '35_105_1496033062_review.png', 'image/png', 46596, 720, 720, '', '2017-05-29 05:44:22', 32, '58.9.70.251', '2017-05-29 05:44:22', 32, '58.9.70.251'),
(65, 35, 65, 101, '35_101_1496111198_review.jpeg', 'image/jpeg', 103107, 640, 1136, '', '2017-03-30 03:26:38', 90, '49.49.246.242', '2017-03-30 03:26:38', 90, '49.49.246.242'),
(66, 35, 66, 101, '35_101_1496208770_review.jpeg', 'image/jpeg', 234666, 1080, 1920, 'งามไส้', '0000-00-00 00:00:00', 41, '223.24.64.63', '0000-00-00 00:00:00', 41, '223.24.64.63'),
(71, 35, 71, 101, '35_101_1496222758_review.jpeg', 'image/jpeg', 115491, 1242, 2208, 'สดชื่นเหมือนเดิม', '2017-10-31 10:25:58', 94, '58.9.70.251', '2017-10-31 10:25:58', 94, '58.9.70.251'),
(72, 35, 72, 105, '35_105_1496223688_review.png', 'image/png', 46596, 720, 720, 'ทดสอบทดสอบ', '2017-10-31 10:41:28', 32, '58.9.70.251', '2017-10-31 10:41:28', 32, '58.9.70.251'),
(73, 35, 73, 101, '35_101_1496295286_review.jpeg', 'image/jpeg', 272018, 1080, 1920, 'น้ำตกหมู', '2017-06-01 06:34:46', 41, '27.55.36.10', '2017-06-01 06:34:46', 41, '27.55.36.10'),
(74, 35, 73, 101, '35_101_1496295300_review.jpeg', 'image/jpeg', 280975, 1080, 1920, 'เกาเหลาหมู', '2017-06-01 06:35:00', 41, '27.55.36.10', '2017-06-01 06:35:00', 41, '27.55.36.10'),
(75, 35, 73, 101, '35_101_1496295315_review.jpeg', 'image/jpeg', 234585, 1080, 1920, 'ต้มแซ่บบบบบบ', '2017-06-01 06:35:15', 41, '27.55.36.10', '2017-06-01 06:35:15', 41, '27.55.36.10'),
(76, 35, 74, 105, '35_105_1496295328_review.png', 'image/png', 2331625, 1872, 3328, 'เนื้อตุ๋น ไส้อั่ว', '2017-06-01 06:35:28', 49, '223.24.41.187', '2017-06-01 06:35:28', 49, '223.24.41.187'),
(78, 35, 0, 101, '35_101_1496295501_review.jpeg', 'image/jpeg', 255021, 1080, 1920, 'แค่น้ำซุปก็ถึงใจแล้ว', '2017-06-01 06:38:21', 2, '223.24.114.253', '2017-06-01 06:38:21', 2, '223.24.114.253'),
(79, 35, 79, 105, '35_105_1496638846_review.png', 'image/png', 1015656, 1872, 2340, 'อาย่อย', '2017-06-05 06:00:46', 49, '58.9.70.251', '2017-06-05 06:00:46', 49, '58.9.70.251'),
(80, 35, 79, 105, '35_105_1496638879_review.png', 'image/png', 814459, 1872, 2340, 'เส้นทั้งน้าน', '2017-06-05 06:01:19', 49, '58.9.70.251', '2017-06-05 06:01:19', 49, '58.9.70.251'),
(81, 35, 80, 105, '35_105_1496822385_review.png', 'image/png', 99134, 672, 720, 'เงินเติม', '2017-08-07 08:59:45', 2, '223.24.8.146', '2017-08-07 08:59:45', 2, '223.24.8.146'),
(82, 35, 0, 101, '35_101_1497338769_review.jpeg', 'image/jpeg', 698032, 2000, 2668, 'ยิ้มกริ่ม', '2017-08-13 08:26:09', 33, '58.9.70.251', '2017-08-13 08:26:09', 33, '58.9.70.251'),
(83, 105, 0, 105, '105_105_1497338788_review.png', 'image/png', 2653424, 3120, 3120, '111', '2017-08-13 08:26:29', 32, '27.55.77.122', '2017-08-13 08:26:29', 32, '27.55.77.122'),
(84, 35, 0, 101, '35_101_1497339863_review.jpeg', 'image/jpeg', 589642, 3024, 4032, '', '2017-08-13 08:44:24', 83, '223.24.22.67', '2017-08-13 08:44:24', 83, '223.24.22.67'),
(85, 35, 0, 101, '35_101_1497339879_review.jpeg', 'image/jpeg', 762589, 3024, 4032, '', '2017-08-13 08:44:39', 83, '223.24.22.67', '2017-08-13 08:44:39', 83, '223.24.22.67'),
(86, 35, 0, 101, '35_101_1497339916_review.jpeg', 'image/jpeg', 1075907, 3024, 4032, '', '2017-08-13 08:45:16', 83, '223.24.22.67', '2017-08-13 08:45:16', 83, '223.24.22.67'),
(87, 35, 0, 101, '35_101_1497339953_review.jpeg', 'image/jpeg', 1439680, 3024, 4032, '', '2017-08-13 08:45:53', 83, '223.24.22.67', '2017-08-13 08:45:53', 83, '223.24.22.67'),
(88, 105, 0, 105, '105_105_1497340582_review.png', 'image/png', 123472, 720, 1280, '1', '2017-08-13 08:56:22', 32, '27.55.77.122', '2017-08-13 08:56:22', 32, '27.55.77.122'),
(89, 105, 0, 105, '105_105_1497340602_review.png', 'image/png', 193120, 720, 1280, '2222', '2017-08-13 08:56:42', 32, '27.55.77.122', '2017-08-13 08:56:42', 32, '27.55.77.122'),
(90, 105, 0, 105, '105_105_1497340772_review.png', 'image/png', 158462, 720, 1280, '', '2017-08-13 08:59:32', 32, '27.55.77.122', '2017-08-13 08:59:32', 32, '27.55.77.122'),
(91, 105, 0, 105, '105_105_1497340779_review.png', 'image/png', 193120, 720, 1280, '', '2017-08-13 08:59:39', 32, '27.55.77.122', '2017-08-13 08:59:39', 32, '27.55.77.122'),
(92, 105, 82, 105, '105_105_1497340813_review.png', 'image/png', 1530014, 3264, 2448, 'สวยสังหาร เปรี๊ยว', '2017-09-13 09:00:13', 73, '58.9.70.251', '2017-09-13 09:00:13', 73, '58.9.70.251'),
(93, 105, 82, 105, '105_105_1497340889_review.png', 'image/png', 2460041, 3264, 2448, 'เล้ง เวอร์วัง', '2017-09-13 09:01:30', 73, '58.9.70.251', '2017-09-13 09:01:30', 73, '58.9.70.251'),
(94, 105, 0, 105, '105_105_1497340945_review.png', 'image/png', 158462, 720, 1280, '', '2017-09-13 09:02:25', 32, '27.55.77.122', '2017-09-13 09:02:25', 32, '27.55.77.122'),
(95, 105, 0, 105, '105_105_1497340949_review.png', 'image/png', 193120, 720, 1280, '', '2017-09-13 09:02:30', 32, '27.55.77.122', '2017-09-13 09:02:30', 32, '27.55.77.122'),
(96, 105, 0, 105, '105_105_1497340959_review.png', 'image/png', 132193, 720, 1280, '', '2017-09-13 09:02:40', 32, '27.55.77.122', '2017-09-13 09:02:40', 32, '27.55.77.122'),
(97, 105, 0, 105, '105_105_1497341537_review.png', 'image/png', 123472, 720, 1280, '', '2017-09-13 09:12:17', 32, '27.55.77.122', '2017-09-13 09:12:17', 32, '27.55.77.122'),
(98, 105, 0, 105, '105_105_1497341541_review.png', 'image/png', 158462, 720, 1280, '', '2017-09-13 09:12:21', 32, '27.55.77.122', '2017-09-13 09:12:21', 32, '27.55.77.122'),
(99, 105, 0, 105, '105_105_1497341545_review.png', 'image/png', 190203, 720, 1280, '', '2017-09-13 09:12:25', 32, '27.55.77.122', '2017-09-13 09:12:25', 32, '27.55.77.122'),
(100, 105, 0, 105, '105_105_1497341549_review.png', 'image/png', 193120, 720, 1280, '', '2017-09-13 09:12:29', 32, '27.55.77.122', '2017-09-13 09:12:29', 32, '27.55.77.122'),
(101, 105, 0, 105, '105_105_1497341553_review.png', 'image/png', 132193, 720, 1280, '', '2017-09-13 09:12:33', 32, '27.55.77.122', '2017-09-13 09:12:33', 32, '27.55.77.122'),
(102, 35, 0, 105, '35_105_1497342598_review.png', 'image/png', 158462, 720, 1280, '', '2017-09-13 09:29:58', 2, '27.55.77.122', '2017-09-13 09:29:58', 2, '27.55.77.122'),
(103, 35, 0, 105, '35_105_1497342601_review.png', 'image/png', 123472, 720, 1280, '', '2017-09-13 09:30:02', 2, '27.55.77.122', '2017-09-13 09:30:02', 2, '27.55.77.122'),
(104, 35, 0, 105, '35_105_1497342605_review.png', 'image/png', 193120, 720, 1280, '', '2017-09-13 09:30:06', 2, '27.55.77.122', '2017-09-13 09:30:06', 2, '27.55.77.122'),
(105, 35, 0, 101, '35_101_1497345471_review.jpeg', 'image/jpeg', 405486, 1515, 2272, '', '2017-10-13 10:17:51', 41, '58.9.70.251', '2017-10-13 10:17:51', 41, '58.9.70.251'),
(106, 35, 0, 101, '35_101_1497345476_review.jpeg', 'image/jpeg', 417668, 2272, 1516, '', '2017-10-13 10:17:57', 41, '58.9.70.251', '2017-10-13 10:17:57', 41, '58.9.70.251'),
(107, 35, 0, 101, '35_101_1497345483_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-10-13 10:18:03', 41, '58.9.70.251', '2017-10-13 10:18:03', 41, '58.9.70.251'),
(109, 35, 0, 101, '35_101_1497345676_review.jpeg', 'image/jpeg', 417668, 2272, 1516, '', '2017-10-13 10:21:17', 41, '58.9.70.251', '2017-10-13 10:21:17', 41, '58.9.70.251'),
(110, 35, 0, 101, '35_101_1497345683_review.jpeg', 'image/jpeg', 405486, 1515, 2272, '', '2017-10-13 10:21:23', 41, '58.9.70.251', '2017-10-13 10:21:23', 41, '58.9.70.251'),
(111, 35, 0, 101, '35_101_1497345691_review.jpeg', 'image/jpeg', 417668, 2272, 1516, '', '2017-10-13 10:21:31', 41, '58.9.70.251', '2017-10-13 10:21:31', 41, '58.9.70.251'),
(112, 35, 0, 101, '35_101_1497345702_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-10-13 10:21:42', 41, '58.9.70.251', '2017-10-13 10:21:42', 41, '58.9.70.251'),
(113, 35, 83, 101, '35_101_1497345758_review.jpeg', 'image/jpeg', 417668, 2272, 1516, '', '2017-10-13 10:22:38', 41, '58.9.70.251', '2017-10-13 10:22:38', 41, '58.9.70.251'),
(114, 35, 83, 101, '35_101_1497345763_review.jpeg', 'image/jpeg', 405486, 1515, 2272, '', '2017-10-13 10:22:43', 41, '58.9.70.251', '2017-10-13 10:22:43', 41, '58.9.70.251'),
(115, 35, 83, 101, '35_101_1497345769_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-10-13 10:22:49', 41, '58.9.70.251', '2017-10-13 10:22:49', 41, '58.9.70.251'),
(116, 35, 83, 101, '35_101_1497345778_review.jpeg', 'image/jpeg', 247178, 2272, 1509, '', '2017-10-13 10:22:58', 41, '58.9.70.251', '2017-10-13 10:22:58', 41, '58.9.70.251'),
(117, 35, 83, 101, '35_101_1497345792_review.jpeg', 'image/jpeg', 253748, 2272, 1509, '', '2017-10-13 10:23:12', 41, '58.9.70.251', '2017-10-13 10:23:12', 41, '58.9.70.251'),
(118, 35, 85, 105, '35_105_1497348253_review.png', 'image/png', 1616342, 3264, 2448, '55555', '2017-11-13 11:04:13', 73, '58.9.70.251', '2017-11-13 11:04:13', 73, '58.9.70.251'),
(119, 35, 0, 101, '35_101_1497414946_review.jpeg', 'image/jpeg', 405486, 1515, 2272, '', '2017-05-14 05:35:46', 41, '58.9.70.251', '2017-05-14 05:35:46', 41, '58.9.70.251'),
(120, 35, 0, 101, '35_101_1497414960_review.jpeg', 'image/jpeg', 417668, 2272, 1516, '', '2017-05-14 05:36:00', 41, '58.9.70.251', '2017-05-14 05:36:00', 41, '58.9.70.251'),
(121, 35, 0, 101, '35_101_1497414975_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-05-14 05:36:15', 41, '58.9.70.251', '2017-05-14 05:36:15', 41, '58.9.70.251'),
(122, 35, 86, 101, '35_101_1497423004_review.jpeg', 'image/jpeg', 36036, 450, 450, '', '2017-07-14 07:50:04', 94, '58.9.70.251', '2017-07-14 07:50:04', 94, '58.9.70.251'),
(123, 105, 87, 105, '105_105_1497426338_review.png', 'image/png', 123472, 720, 1280, '1', '2017-08-14 08:45:38', 32, '27.55.117.77', '2017-08-14 08:45:38', 32, '27.55.117.77'),
(124, 105, 87, 105, '105_105_1497426348_review.png', 'image/png', 158462, 720, 1280, '2', '2017-08-14 08:45:48', 32, '27.55.117.77', '2017-08-14 08:45:48', 32, '27.55.117.77'),
(125, 105, 87, 105, '105_105_1497426357_review.png', 'image/png', 190203, 720, 1280, '3', '2017-08-14 08:45:57', 32, '27.55.117.77', '2017-08-14 08:45:57', 32, '27.55.117.77'),
(126, 105, 87, 105, '105_105_1497426367_review.png', 'image/png', 193120, 720, 1280, '4', '2017-08-14 08:46:07', 32, '27.55.117.77', '2017-08-14 08:46:07', 32, '27.55.117.77'),
(127, 105, 87, 105, '105_105_1497426379_review.png', 'image/png', 132193, 720, 1280, '5', '2017-08-14 08:46:19', 32, '27.55.117.77', '2017-08-14 08:46:19', 32, '27.55.117.77'),
(128, 105, 0, 105, '105_105_1497434901_review.png', 'image/png', 866297, 1280, 720, '1111', '2017-11-14 11:08:21', 73, '223.24.29.196', '2017-11-14 11:08:21', 73, '223.24.29.196'),
(129, 105, 88, 101, '105_101_1497494654_review.jpeg', 'image/jpeg', 692289, 4288, 2848, 'Around Store', '2017-03-15 03:44:15', 41, '58.9.70.251', '2017-03-15 03:44:15', 41, '58.9.70.251'),
(130, 35, 0, 105, '35_105_1497495062_review.png', 'image/png', 866297, 1280, 720, 'มุ้งมิ้ง', '2017-03-15 03:51:02', 10, '223.24.69.169', '2017-03-15 03:51:02', 10, '223.24.69.169'),
(131, 35, 0, 105, '35_105_1497495099_review.png', 'image/png', 516857, 1280, 720, 'ดอกไม้', '2017-03-15 03:51:39', 10, '223.24.69.169', '2017-03-15 03:51:39', 10, '223.24.69.169'),
(132, 35, 0, 101, '35_101_1497495736_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-04-15 04:02:16', 83, '58.9.70.251', '2017-04-15 04:02:16', 83, '58.9.70.251'),
(133, 35, 89, 105, '35_105_1497499842_review.png', 'image/png', 124172, 720, 1280, 'จุงเบย', '2017-05-15 05:10:42', 32, '58.9.70.251', '2017-05-15 05:10:42', 32, '58.9.70.251'),
(134, 35, 90, 105, '35_105_1497500732_review.png', 'image/png', 865664, 1280, 720, '^ ^', '2017-05-15 05:25:32', 10, '223.24.74.125', '2017-05-15 05:25:32', 10, '223.24.74.125'),
(135, 35, 90, 105, '35_105_1497500769_review.png', 'image/png', 12884, 367, 401, 'มะม่วง', '2017-05-15 05:26:09', 10, '223.24.74.125', '2017-05-15 05:26:09', 10, '223.24.74.125'),
(136, 35, 0, 101, '35_101_1497501499_review.jpeg', 'image/jpeg', 627207, 2272, 1516, '', '2017-05-15 05:38:19', 87, '58.9.70.251', '2017-05-15 05:38:19', 87, '58.9.70.251'),
(137, 35, 0, 105, '35_105_1497514789_review.png', 'image/png', 12884, 367, 401, 'w', '2017-09-15 09:19:49', 10, '223.24.74.125', '2017-09-15 09:19:49', 10, '223.24.74.125'),
(138, 105, 100, 101, '105_101_1497598992_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-08-16 08:43:13', 109, '223.24.19.223', '2017-08-16 08:43:13', 109, '223.24.19.223'),
(139, 105, 0, 101, '105_101_1497599116_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-08-16 08:45:17', 41, '58.9.70.251', '2017-08-16 08:45:17', 41, '58.9.70.251'),
(141, 105, 0, 101, '105_101_1497599643_review.jpeg', 'image/jpeg', 954626, 3024, 4032, 'แอด', '2017-08-16 08:54:04', 109, '223.24.19.223', '2017-08-16 08:54:04', 109, '223.24.19.223'),
(142, 105, 0, 101, '105_101_1497599723_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-08-16 08:55:24', 109, '223.24.19.223', '2017-08-16 08:55:24', 109, '223.24.19.223'),
(143, 105, 0, 101, '105_101_1497599805_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-08-16 08:56:46', 109, '223.24.19.223', '2017-08-16 08:56:46', 109, '223.24.19.223'),
(144, 105, 0, 101, '105_101_1497599941_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-08-16 08:59:02', 109, '223.24.19.223', '2017-08-16 08:59:02', 109, '223.24.19.223'),
(145, 105, 0, 101, '105_101_1497600023_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:00:24', 109, '223.24.19.223', '2017-09-16 09:00:24', 109, '223.24.19.223'),
(146, 105, 0, 101, '105_101_1497600184_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:03:05', 109, '223.24.19.223', '2017-09-16 09:03:05', 109, '223.24.19.223'),
(147, 105, 0, 101, '105_101_1497600581_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:09:42', 109, '223.24.19.223', '2017-09-16 09:09:42', 109, '223.24.19.223'),
(148, 105, 0, 101, '105_101_1497600714_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:11:55', 109, '223.24.19.223', '2017-09-16 09:11:55', 109, '223.24.19.223'),
(149, 105, 0, 101, '105_101_1497600910_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:15:10', 109, '223.24.19.223', '2017-09-16 09:15:10', 109, '223.24.19.223'),
(150, 105, 0, 101, '105_101_1497601127_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:18:47', 109, '223.24.19.223', '2017-09-16 09:18:47', 109, '223.24.19.223'),
(151, 105, 0, 101, '105_101_1497601157_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:19:18', 109, '223.24.19.223', '2017-09-16 09:19:18', 109, '223.24.19.223'),
(152, 105, 0, 101, '105_101_1497601263_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:21:04', 109, '223.24.19.223', '2017-09-16 09:21:04', 109, '223.24.19.223'),
(153, 105, 0, 101, '105_101_1497602890_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-09-16 09:48:10', 109, '223.24.19.223', '2017-09-16 09:48:10', 109, '223.24.19.223'),
(154, 35, 0, 101, '35_101_1497602995_review.jpeg', 'image/jpeg', 555018, 2668, 1780, '', '2017-09-16 09:49:55', 83, '58.9.70.251', '2017-09-16 09:49:55', 83, '58.9.70.251'),
(155, 35, 0, 101, '35_101_1497603004_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-09-16 09:50:04', 83, '58.9.70.251', '2017-09-16 09:50:04', 83, '58.9.70.251'),
(156, 35, 0, 101, '35_101_1497603013_review.jpeg', 'image/jpeg', 328007, 2668, 1772, '', '2017-09-16 09:50:13', 83, '58.9.70.251', '2017-09-16 09:50:13', 83, '58.9.70.251'),
(157, 105, 101, 101, '105_101_1497603192_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-09-16 09:53:12', 41, '58.9.70.251', '2017-09-16 09:53:12', 41, '58.9.70.251'),
(158, 105, 101, 101, '105_101_1497603197_review.jpeg', 'image/jpeg', 496658, 1668, 2500, '', '2017-09-16 09:53:17', 41, '58.9.70.251', '2017-09-16 09:53:17', 41, '58.9.70.251'),
(160, 105, 0, 101, '105_101_1497603368_review.jpeg', 'image/jpeg', 496658, 1668, 2500, '', '2017-09-16 09:56:08', 41, '58.9.70.251', '2017-09-16 09:56:08', 41, '58.9.70.251'),
(161, 105, 0, 101, '105_101_1497603374_review.jpeg', 'image/jpeg', 555018, 2668, 1780, '', '2017-09-16 09:56:14', 41, '58.9.70.251', '2017-09-16 09:56:14', 41, '58.9.70.251'),
(162, 105, 0, 101, '105_101_1497603383_review.jpeg', 'image/jpeg', 328007, 2668, 1772, '', '2017-09-16 09:56:23', 41, '58.9.70.251', '2017-09-16 09:56:23', 41, '58.9.70.251'),
(163, 105, 0, 101, '105_101_1497603574_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '1', '2017-09-16 09:59:34', 109, '223.24.19.223', '2017-09-16 09:59:34', 109, '223.24.19.223'),
(164, 105, 0, 101, '105_101_1497603649_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:00:50', 109, '223.24.19.223', '2017-10-16 10:00:50', 109, '223.24.19.223'),
(165, 105, 0, 101, '105_101_1497603727_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-10-16 10:02:07', 41, '58.9.70.251', '2017-10-16 10:02:07', 41, '58.9.70.251'),
(166, 105, 0, 101, '105_101_1497603732_review.jpeg', 'image/jpeg', 555018, 2668, 1780, '', '2017-10-16 10:02:12', 41, '58.9.70.251', '2017-10-16 10:02:12', 41, '58.9.70.251'),
(167, 105, 0, 101, '105_101_1497603740_review.jpeg', 'image/jpeg', 328007, 2668, 1772, '', '2017-10-16 10:02:20', 41, '58.9.70.251', '2017-10-16 10:02:20', 41, '58.9.70.251'),
(168, 105, 0, 101, '105_101_1497603765_review.jpeg', 'image/jpeg', 962570, 4032, 3024, '', '2017-10-16 10:02:45', 109, '27.55.203.66', '2017-10-16 10:02:45', 109, '27.55.203.66'),
(169, 105, 0, 101, '105_101_1497603819_review.jpeg', 'image/jpeg', 602033, 2000, 2668, '', '2017-10-16 10:03:39', 110, '58.9.70.251', '2017-10-16 10:03:39', 110, '58.9.70.251'),
(170, 105, 0, 101, '105_101_1497603826_review.jpeg', 'image/jpeg', 403399, 1932, 2576, '', '2017-10-16 10:03:46', 110, '58.9.70.251', '2017-10-16 10:03:46', 110, '58.9.70.251'),
(171, 105, 0, 101, '105_101_1497604629_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:17:09', 109, '58.9.70.251', '2017-10-16 10:17:09', 109, '58.9.70.251'),
(172, 35, 0, 101, '35_101_1497604915_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:21:56', 83, '58.9.70.251', '2017-10-16 10:21:56', 83, '58.9.70.251'),
(176, 105, 102, 101, '105_101_1497605482_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-10-16 10:31:23', 109, '58.9.70.251', '2017-10-16 10:31:23', 109, '58.9.70.251'),
(177, 105, 102, 101, '105_101_1497605489_review.jpeg', 'image/jpeg', 555018, 2668, 1780, '', '2017-10-16 10:31:29', 109, '58.9.70.251', '2017-10-16 10:31:29', 109, '58.9.70.251'),
(178, 105, 102, 101, '105_101_1497605498_review.jpeg', 'image/jpeg', 313762, 2668, 1772, '', '2017-10-16 10:31:39', 109, '58.9.70.251', '2017-10-16 10:31:39', 109, '58.9.70.251'),
(179, 105, 102, 101, '105_101_1497605507_review.jpeg', 'image/jpeg', 496658, 1668, 2500, '', '2017-10-16 10:31:47', 109, '58.9.70.251', '2017-10-16 10:31:47', 109, '58.9.70.251'),
(180, 105, 102, 101, '105_101_1497605515_review.jpeg', 'image/jpeg', 328007, 2668, 1772, '', '2017-10-16 10:31:55', 109, '58.9.70.251', '2017-10-16 10:31:55', 109, '58.9.70.251'),
(181, 105, 0, 101, '105_101_1497606104_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:41:44', 41, '58.9.70.251', '2017-10-16 10:41:44', 41, '58.9.70.251'),
(182, 105, 0, 101, '105_101_1497606546_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:49:06', 41, '58.9.70.251', '2017-10-16 10:49:06', 41, '58.9.70.251'),
(183, 105, 0, 101, '105_101_1497606819_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:53:39', 41, '58.9.70.251', '2017-10-16 10:53:39', 41, '58.9.70.251'),
(184, 105, 0, 101, '105_101_1497607023_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-10-16 10:57:03', 41, '58.9.70.251', '2017-10-16 10:57:03', 41, '58.9.70.251'),
(186, 105, 0, 101, '105_101_1497607366_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-11-16 11:02:47', 41, '58.9.70.251', '2017-11-16 11:02:47', 41, '58.9.70.251'),
(187, 105, 0, 101, '105_101_1497607448_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-11-16 11:04:08', 41, '58.9.70.251', '2017-11-16 11:04:08', 41, '58.9.70.251'),
(188, 105, 0, 101, '105_101_1497607534_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-11-16 11:05:34', 41, '58.9.70.251', '2017-11-16 11:05:34', 41, '58.9.70.251'),
(189, 105, 0, 101, '105_101_1497607651_review.jpeg', 'image/jpeg', 954626, 3024, 4032, '', '2017-11-16 11:07:32', 41, '58.9.70.251', '2017-11-16 11:07:32', 41, '58.9.70.251'),
(190, 105, 103, 101, '105_101_1497607799_review.jpeg', 'image/jpeg', 196877, 1080, 1920, '', '2017-11-16 11:09:59', 41, '58.9.70.251', '2017-11-16 11:09:59', 41, '58.9.70.251'),
(191, 105, 103, 101, '105_101_1497607811_review.jpeg', 'image/jpeg', 211192, 1080, 1920, '', '2017-11-16 11:10:11', 41, '58.9.70.251', '2017-11-16 11:10:11', 41, '58.9.70.251'),
(192, 105, 103, 101, '105_101_1497607819_review.jpeg', 'image/jpeg', 203760, 1080, 1920, '', '2017-11-16 11:10:20', 41, '58.9.70.251', '2017-11-16 11:10:20', 41, '58.9.70.251'),
(197, 105, 0, 101, '105_101_1497608177_review.jpeg', 'image/jpeg', 313762, 2668, 1772, '', '2017-11-16 11:16:17', 109, '58.9.70.251', '2017-11-16 11:16:17', 109, '58.9.70.251'),
(198, 105, 0, 101, '105_101_1497609471_review.jpeg', 'image/jpeg', 823600, 2668, 1780, '', '2017-11-16 11:37:51', 109, '58.9.70.251', '2017-11-16 11:37:51', 109, '58.9.70.251'),
(199, 105, 0, 101, '105_101_1497609482_review.jpeg', 'image/jpeg', 555018, 2668, 1780, '', '2017-11-16 11:38:02', 109, '58.9.70.251', '2017-11-16 11:38:02', 109, '58.9.70.251'),
(200, 105, 104, 101, '105_101_1497609777_review.jpeg', 'image/jpeg', 602033, 2000, 2668, '', '2017-11-16 11:42:57', 110, '58.9.70.251', '2017-11-16 11:42:57', 110, '58.9.70.251'),
(201, 105, 104, 101, '105_101_1497609791_review.jpeg', 'image/jpeg', 403399, 1932, 2576, '', '2017-11-16 11:43:11', 110, '58.9.70.251', '2017-11-16 11:43:11', 110, '58.9.70.251'),
(202, 105, 104, 101, '105_101_1497609802_review.jpeg', 'image/jpeg', 223897, 1080, 1920, '', '2017-11-16 11:43:22', 110, '58.9.70.251', '2017-11-16 11:43:22', 110, '58.9.70.251'),
(203, 105, 105, 105, '105_105_1497610425_review.png', 'image/png', 1447920, 3264, 1836, 'น่ากินป่ะล่ะ', '2017-11-16 11:53:45', 2, '58.9.70.251', '2017-11-16 11:53:45', 2, '58.9.70.251'),
(204, 105, 105, 105, '105_105_1497610522_review.png', 'image/png', 1097917, 1836, 3264, 'หมูทอด', '2017-11-16 11:55:22', 2, '58.9.70.251', '2017-11-16 11:55:22', 2, '58.9.70.251'),
(205, 105, 105, 105, '105_105_1497610538_review.png', 'image/png', 772746, 1836, 1837, 'ม่าม่าผัด', '2017-11-16 11:55:38', 2, '58.9.70.251', '2017-11-16 11:55:38', 2, '58.9.70.251'),
(206, 35, 106, 105, '35_105_1497677401_review.png', 'image/png', 36544, 720, 720, '', '2017-06-17 06:30:01', 103, '1.0.201.143', '2017-06-17 06:30:01', 103, '1.0.201.143'),
(207, 105, 0, 101, '105_101_1510115324_review.jpeg', 'image/jpeg', 374573, 1728, 3072, 'ข้าวผัดแหนมมมม', '2017-04-08 04:28:44', 109, '58.9.70.251', '2017-04-08 04:28:44', 109, '58.9.70.251'),
(208, 105, 107, 101, '105_101_1510331559_review.jpeg', 'image/jpeg', 472828, 1728, 3072, 'save', '2017-04-10 16:32:39', 109, '223.24.156.146', '2017-04-10 16:32:39', 109, '223.24.156.146'),
(209, 105, 0, 101, '105_101_1513928100_review.jpeg', 'image/jpeg', 1050168, 3000, 2002, '', '2017-07-22 07:35:00', 41, '58.9.71.180', '2017-07-22 07:35:00', 41, '58.9.71.180');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_review_price`
--

CREATE TABLE `zzz_business_shop_review_price` (
  `bsrp_id` int(10) UNSIGNED NOT NULL,
  `bsrp_bsth_id` int(10) UNSIGNED NOT NULL COMMENT 'business type header id',
  `bsrp_rate` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bsrp_name` text COLLATE utf8_unicode_ci NOT NULL,
  `bsrp_icon` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'URL to Icon',
  `bsrp_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsrp_cuser` int(10) UNSIGNED NOT NULL,
  `bsrp_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsrp_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsrp_muser` int(10) UNSIGNED NOT NULL,
  `bsrp_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_review_price`
--

INSERT INTO `zzz_business_shop_review_price` (`bsrp_id`, `bsrp_bsth_id`, `bsrp_rate`, `bsrp_name`, `bsrp_icon`, `bsrp_cdate`, `bsrp_cuser`, `bsrp_cip`, `bsrp_mdate`, `bsrp_muser`, `bsrp_mip`) VALUES
(1, 101, 1, '$', 'icon/101/p10.jpg', '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(2, 101, 2, '$$', 'icon/101/p20.jpg', '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(3, 101, 3, '$$$', 'icon/101/p30.jpg', '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(4, 101, 4, '$$$$', 'icon/101/p40.jpg', '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1'),
(5, 101, 5, '$$$$$', 'icon/101/p50.jpg', '2016-01-01 00:00:01', 1, '127.0.0.1', '2016-01-01 00:00:01', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_score`
--

CREATE TABLE `zzz_business_shop_score` (
  `score_id` int(10) UNSIGNED NOT NULL,
  `score_bssh_id` int(10) UNSIGNED NOT NULL,
  `score_total_review` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `score_value` decimal(10,2) NOT NULL DEFAULT '5.00',
  `score_date` date NOT NULL DEFAULT '2016-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_theme`
--

CREATE TABLE `zzz_business_shop_theme` (
  `id` int(11) UNSIGNED NOT NULL,
  `shop_id` int(11) UNSIGNED NOT NULL COMMENT 'shop id',
  `logo_url` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'url to download logo image',
  `splash_url` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'url to download logo splash screen',
  `login_url` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'url to download login background',
  `back_color` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000' COMMENT 'background color',
  `font_color` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#FFFFFF' COMMENT 'font color',
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2017010199' COMMENT 'version updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_theme`
--

INSERT INTO `zzz_business_shop_theme` (`id`, `shop_id`, `logo_url`, `splash_url`, `login_url`, `back_color`, `font_color`, `version`) VALUES
(99, 0, 'http://dev.ziamthai.com/uploads/themes/0/logo.png', 'http://dev.ziamthai.com/uploads/themes/0/logo.png', 'http://dev.ziamthai.com/uploads/themes/0/login.jpg', '#1374b6', '#FFFFFF', '2017010199'),
(100, 105, 'https://dev.ziamthai.com/uploads/themes/105/logo_20170928092631.jpg', 'https://dev.ziamthai.com/uploads/themes/105/splash_20170928092631.jpg', 'https://dev.ziamthai.com/uploads/themes/105/login_20170928092631.jpg', '#785447', '#FFFFFF', '20171222142305'),
(101, 106, 'http://dev.ziamthai.com/uploads/themes/105/logo.png', 'http://dev.ziamthai.com/uploads/themes/105/logo.png', 'http://dev.ziamthai.com/uploads/themes/105/login.jpg', '#785447', '#FFFFFF', '2017010199');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_shop_workhour`
--

CREATE TABLE `zzz_business_shop_workhour` (
  `bssw_id` int(11) NOT NULL,
  `bssw_bssh_id` int(11) NOT NULL DEFAULT '0',
  `bssw_day_week` set('0','1','2','3','4','5','6') COLLATE utf8_unicode_ci DEFAULT NULL,
  `bssw_open_time` time DEFAULT NULL,
  `bssw_close_time` time DEFAULT NULL,
  `bssw_online` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'online order type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_shop_workhour`
--

INSERT INTO `zzz_business_shop_workhour` (`bssw_id`, `bssw_bssh_id`, `bssw_day_week`, `bssw_open_time`, `bssw_close_time`, `bssw_online`) VALUES
(1, 35, '0', '11:00:00', '22:30:00', 0),
(2, 35, '1', '11:00:00', '22:30:00', 0),
(3, 35, '2', '11:00:00', '22:30:00', 0),
(4, 35, '3', '11:00:00', '17:00:00', 0),
(5, 35, '4', '11:00:00', '22:30:00', 0),
(6, 35, '5', '11:00:00', '22:30:00', 0),
(7, 35, '6', '11:00:00', '22:30:00', 0),
(8, 32, '1', '11:00:00', '14:30:00', 0),
(9, 32, '1', '16:30:00', '21:30:00', 0),
(10, 32, '2', '11:00:00', '14:30:00', 0),
(11, 32, '2', '16:30:00', '21:30:00', 0),
(12, 32, '0', '12:00:00', '20:30:00', 0),
(13, 32, '6', '12:00:00', '20:30:00', 0),
(14, 32, '3', '11:00:00', '14:30:00', 0),
(15, 32, '3', '16:30:00', '21:30:00', 0),
(16, 32, '4', '11:00:00', '14:30:00', 0),
(17, 32, '4', '16:30:00', '21:30:00', 0),
(18, 32, '5', '11:00:00', '14:30:00', 0),
(19, 32, '5', '16:30:00', '21:30:00', 0),
(37, 139, '5', '08:00:00', '20:00:00', 0),
(40, 139, '0', '00:00:00', '23:59:59', 0),
(41, 139, '2', '00:00:00', '23:59:59', 0),
(42, 139, '3', '00:00:00', '23:59:59', 0),
(44, 139, '1', '08:00:00', '20:00:00', 1),
(47, 105, '1', '11:00:00', '15:00:00', 0),
(48, 105, '1', '16:30:00', '21:30:00', 0),
(49, 105, '2', '11:00:00', '15:00:00', 0),
(50, 105, '3', '11:00:00', '15:00:00', 0),
(52, 105, '5', '11:00:00', '15:00:00', 0),
(53, 105, '2', '16:30:00', '21:30:00', 0),
(54, 105, '3', '16:30:00', '21:30:00', 0),
(56, 105, '5', '16:30:00', '21:30:00', 0),
(57, 139, '4', '00:00:00', '23:59:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_timeline_comment`
--

CREATE TABLE `zzz_business_timeline_comment` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'แสดง/ไม่แสดงผล',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'สถานะอื่นๆ',
  `c_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_date` date NOT NULL,
  `c_user` int(11) NOT NULL DEFAULT '0',
  `c_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_date` date NOT NULL,
  `m_user` int(11) NOT NULL DEFAULT '0',
  `m_uname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ulog` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_timeline_like`
--

CREATE TABLE `zzz_business_timeline_like` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `shop_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(11) NOT NULL DEFAULT '0',
  `member_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posts_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_timeline_posts`
--

CREATE TABLE `zzz_business_timeline_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_type` set('blog','photo','video','review','posts') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'posts',
  `ref_id` int(11) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL DEFAULT '0',
  `shop_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `shop_address` tinytext COLLATE utf8_unicode_ci,
  `shop_rating` tinyint(4) NOT NULL DEFAULT '3',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `highlight` text COLLATE utf8_unicode_ci,
  `img_cover` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media` mediumtext COLLATE utf8_unicode_ci,
  `like_score` mediumint(9) NOT NULL DEFAULT '0',
  `author_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_menu` text COLLATE utf8_unicode_ci,
  `review_score` tinyint(4) NOT NULL DEFAULT '1',
  `review_price_rate` tinyint(4) NOT NULL DEFAULT '1',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `stick_top` tinyint(4) NOT NULL DEFAULT '0',
  `c_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_date` datetime NOT NULL,
  `c_uid` int(11) NOT NULL DEFAULT '0',
  `c_uname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_ulog` datetime DEFAULT NULL,
  `m_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_date` datetime NOT NULL,
  `m_uid` int(11) NOT NULL DEFAULT '0',
  `m_uname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_ulog` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_timeline_posts`
--

INSERT INTO `zzz_business_timeline_posts` (`id`, `ref_type`, `ref_id`, `shop_id`, `shop_name`, `shop_address`, `shop_rating`, `title`, `highlight`, `img_cover`, `media`, `like_score`, `author_name`, `author_url`, `review_menu`, `review_score`, `review_price_rate`, `public`, `stick_top`, `c_ip`, `c_date`, `c_uid`, `c_uname`, `c_ulog`, `m_ip`, `m_date`, `m_uid`, `m_uname`, `m_ulog`) VALUES
(1, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, 'พาเด็กๆ มาดูการ์ตูนกัน\nBig Buck Bunny', NULL, '1--48c01d999578158a47aef07954deb575.mp4--video/mp4--video--640--360--0:01:00.095000||1--4c413e9f03c77793926f874c78d8c98c.png--image/png--photo--638--361--0||1--4c413e9f03c77793926f874c78d8c98c.png--image/png--photo--638--361--0||g1--48c01d999578158a47aef07954deb575.mp4--video/mp4--video--640--360--0:01:00.095000', 0, NULL, NULL, NULL, 1, 1, 1, 0, '182.52.129.156', '2017-04-06 01:50:49', 3, 'Dokbua Administrator', NULL, '182.52.129.156', '2017-04-06 01:50:49', 3, 'Dokbua Administrator', NULL),
(2, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, 'The Mask Singer', NULL, '3--6f20c3786a5fcaaebd54d58f1334358c.jpg--image/jpeg--photo--600--400--0||3--c3469274857de75bda14c209f0f647d3.mp4--video/mp4--video--1280--720--0:06:13.240000||2--17c72ba872ad0348a74d836ee879048b.jpg--image/jpeg--photo--900--1200--0', 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-06 10:33:23', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 10:33:23', 3, 'Dokbua Administrator', NULL),
(3, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, '#หน้ากากทุเรียน', NULL, '4--f4f08dce3b129ca1ca47690b4375e468.jpg--image/jpeg--photo--900--1200--0||14--7373fb9db0dfab942a96569ab10fb6c4.mp4--video/mp4--video--640--360--0:06:13.240000', 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-06 17:53:06', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 17:53:06', 3, 'Dokbua Administrator', NULL),
(4, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, 'มือปืน - หน้ากากทุเรียน\n\n#themasksinger', NULL, '15--ffa9d3b0d705700e1034983be97fc27d.mp4--video/mp4--video--1280--720--0:06:13.240000', 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-06 18:03:23', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:03:23', 3, 'Dokbua Administrator', NULL),
(5, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, '[ ไข่เจียวพระอาทิตย์ ] เมนูพระราชทาน จากในหลวง ร.๙', NULL, '6--a2e5701ee7c543fdf35959d54ae393b0.jpg--image/jpeg--photo--1280--720--0||16--340bcd8556dc27c543f5b3d55a1ea7c5.mp4--video/mp4--video--1280--720--0:10:04.437167||5--daa24b61de460dc7bbacb4de02c0b671.jpg--image/jpeg--photo--700--395--0||7--d460e8eee97c01312d5b1dbf60c9c86a.jpeg--image/jpeg--photo--700--467--0||8--e22b2908f183a92251451adf6b28e2a1.jpg--image/jpeg--photo--1280--720--0||9--4cc4dc85a5ec8387f736834f3ac2314a.jpg--image/jpeg--photo--1280--720--0', 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-06 18:09:58', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-06 18:09:58', 3, 'Dokbua Administrator', NULL),
(6, 'review', 9, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'แนะนำเมนูใหม่ ไข่พระอาทิตย์', 'วันนี้พาเด็กๆ มากินเมนู\nพระราชทาน ข้าวไข่พระอาทิตย์\nต้มยำกุ้งน้ำเข้มข้นมาก\nกุ้งตัวใหญ่ด้วย!!!!!', NULL, '14--35_104_1491812218_review.jpeg--image/jpeg--photo--700--467--0||15--35_104_1491812304_review.jpg--image/jpeg--photo--1280--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll', 5, 1, 0, 1, '58.9.70.93', '2017-04-10 15:22:46', 1, 'Team Worapong', NULL, '58.9.70.93', '2017-04-11 17:45:56', 3, 'Dokbua Administrator', NULL),
(7, 'blog', 1, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'แกงส้มผักรวมกุ้งสด', 'ใครอยากกินแกงส้มผักรวมบ้างค๊า.า.า...า.า.  ยกมือขึ้นเลยจ้า  เอ๊าา !! ใครยกมือไว  เรามีแถมปลาช่อน', '7fbbd6d454cf46b546b4c7b0622b4bd5.jpg', NULL, 0, 'ครัวบ้านพิม', 'https://www.pim.in.th/side-dish-by-fish/399-kangsom-pakraum', NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-11 18:33:01', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-11 18:33:01', 3, 'Dokbua Administrator', NULL),
(8, 'review', 1, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'perfect ', 'Good , low price', NULL, '1--35_101_1488525377_review.jpeg----photo--0--0--0', 0, NULL, NULL, 'Crispy Thai Spring Roll||Tom Ka Chicken Soup||Tom Yum Shrimp Soup', 4, 5, 0, 0, '27.55.65.211', '2017-02-03 14:16:22', 41, 'Sitichai Mixzer', NULL, '58.9.70.93', '2017-04-11 15:56:41', 3, 'Dokbua Administrator', NULL),
(9, 'review', 6, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'แนะนำเลยครับ', 'อาหารอร่อย ราคาไม่แพงครับ ส่วนตัวชอบต้มยำกุ้งครับ กุ้งตัวใหญ่ดีครับ', NULL, '8--35_103_1490563751_review.jpg----photo--0--0--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 1, 1, 0, '27.55.125.206', '2017-04-27 04:29:37', 1, 'Team Worapong', NULL, '58.9.70.93', '2017-04-18 17:27:24', 3, 'Dokbua Administrator', NULL),
(10, 'review', 7, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อร่อย', 'อร่อยมาก', NULL, '9--35_105_1490583758_review.png----photo--0--0--0', 0, NULL, NULL, 'Tom Ka Chicken Soup||Chicken Wing', 3, 3, 0, 0, '27.55.73.112', '2017-10-27 10:03:05', 64, 'Chaleamsuk Sremaung', NULL, '58.9.70.93', '2017-04-11 15:56:45', 3, 'Dokbua Administrator', NULL),
(12, 'review', 14, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'มากินข้าวเหนียวทุเรียน', 'อร่อยมากเลย กินเหนียวทุเรียน หน้ามะม่วงเนี่ยะ', NULL, '16--35_105_1492510900_review.jpeg--image/jpeg--photo--225--225--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 1, 1, 0, '58.9.70.93', '2017-05-18 17:25:30', 1, 'Team Worapong', NULL, '58.9.70.93', '2017-04-18 17:27:10', 3, 'Dokbua Administrator', NULL),
(13, 'blog', 2, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '6 วิธีทำหมูกรอบ หนังกรอบเนื้อฟู ยอมเป็นหมูก็คราวนี้', 'ครที่กำลังตามหาหัวใจ เอ๊ย ตามหาสูตรหมูกรอบในดวงใจสุดอร่อยในปฐพี ไม่ต้องเปิดตำราอาหาร หรือเปิดหาสูตรจากแหล่งไหนให้เสียเวลา วันนี้กระปุกดอทคอมขอนำเสนอ 5 วิธีทำหมูกรอบไว้ที่นี่ที่เดียว เอาใจคนชอบกินหมูกรอบเป็นชีวิตจิตใจ', '2e5745acac56bb0487b9e69b684db980.jpg', NULL, 0, 'Kapook Cooking', 'https://cooking.kapook.com/view131858.html', NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-19 16:38:21', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-19 16:38:21', 3, 'Dokbua Administrator', NULL),
(14, 'blog', 3, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'วิธีทำหมูกรอบ ง่าย ๆ งบไม่ถึง 100 บาท', 'วิธีทำหมูกรอบ ง่าย ๆ งบไม่ถึง 100 บาท', '55ed2e39a826d75c43b222d46a3ae7ea.png', NULL, 0, 'Thailand lifestyle', 'https://www.youtube.com/channel/UCBo6-X_tkXJYkEiMYaa-i0A', NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-19 16:46:39', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-19 16:46:39', 3, 'Dokbua Administrator', NULL),
(15, 'review', 15, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'worth to try', 'i fly from Lipe thailand, to meet someone special. so that i need some place soecial.', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Chicken Wing', 5, 5, 1, 0, '182.232.244.238', '2017-04-20 06:13:31', 47, 'Piyarat Toomsap', NULL, '182.232.244.238', '2017-04-20 06:13:31', 47, 'Piyarat Toomsap', NULL),
(16, 'review', 16, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'good choice ', 'Good taste save Cost', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Chicken Wing', 5, 5, 1, 0, '58.9.70.93', '2017-04-20 09:07:13', 41, 'Sitichai Bin', NULL, '58.9.70.93', '2017-04-20 09:07:13', 41, 'Sitichai Bin', NULL),
(17, 'review', 17, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'good price', 'Savvvvvvvv', NULL, NULL, 0, NULL, NULL, 'Tom Ka Chicken Soup||Crispy Thai Spring Roll||Tom Yum Shrimp Soup', 4, 4, 1, 0, '58.9.70.93', '2017-04-20 09:19:35', 41, 'Sitichai Bin', NULL, '58.9.70.93', '2017-04-20 09:19:35', 41, 'Sitichai Bin', NULL),
(18, 'review', 18, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'goooood', 'Ok work', NULL, NULL, 0, NULL, NULL, 'Crispy Thai Spring Roll||Tom Ka Chicken Soup||Tom Yum Shrimp Soup||Chicken Wing', 3, 4, 1, 0, '58.9.70.93', '2017-04-20 09:21:08', 41, 'Sitichai Bin', NULL, '58.9.70.93', '2017-04-20 09:21:08', 41, 'Sitichai Bin', NULL),
(19, 'review', 19, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อร่อยที่สุดในสามโลก', 'ไม่แพงด้วย', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-20 10:42:35', 1, 'Team Worapong', NULL, '58.9.70.93', '2017-04-20 10:42:35', 1, 'Team Worapong', NULL),
(20, 'review', 20, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'Good Service', 'The Best Of service', NULL, '19--35_101_1492663863_review.jpeg--image/jpeg--photo--3024--4032--0', 0, NULL, NULL, 'Tom Ka Chicken Soup||Chicken Wing||Crispy Thai Spring Roll||Tom Yum Shrimp Soup', 5, 5, 1, 0, '27.55.122.173', '2017-04-20 11:51:08', 61, 'Mixzer', NULL, '27.55.122.173', '2017-04-20 11:51:08', 61, 'Mixzer', NULL),
(21, 'review', 21, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เข้ากันได้เลยที่เดียว', 'แมนซั่ม กับ ตั้มยำ ', NULL, '20--35_104_1492751818_review.jpg--image/jpeg--photo--3264--2448--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 1, 1, 0, '58.9.70.93', '2017-04-21 12:19:34', 1, 'Team Worapong', NULL, '58.9.70.93', '2017-04-21 12:19:34', 1, 'Team Worapong', NULL),
(22, 'review', 22, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อาหารอร่อยไหม ถามใจเธอดู', 'ดูจากภาพน่าจะรู้นะ', NULL, '21--35_104_1492753896_review.jpg--image/jpeg--photo--3264--2448--0||22--35_104_1492754063_review.jpg--image/jpeg--photo--3264--2448--0||23--35_104_1492754101_review.jpg--image/jpeg--photo--3264--2448--0', 0, NULL, NULL, NULL, 5, 1, 1, 0, '223.24.135.252', '2017-04-21 12:56:15', 1, 'Team Worapong', NULL, '223.24.135.252', '2017-04-21 12:56:15', 1, 'Team Worapong', NULL),
(23, 'posts', 0, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, NULL, 'ฟังเพลงรัวๆ', NULL, '21--1526a10353bd8d1a8d052d3abb84d203.mp4--video/mp4--video--640--360--0:05:28.880000||20--aa2813426d430c57fd64f72a5aa5ebf9.mp4--video/mp4--video--640--360--0:04:25.320000||22--8cff86195e2da9d5e0cc4d8bb770fc88.mp4--video/mp4--video--640--360--0:04:13.440000||23--881735cdc6e2a29159f542dfffd4e490.mp4--video/mp4--video--640--360--0:06:42.400000||25--2c4ca257daf7ae135d1a125f628f6b60.mp4--video/mp4--video--640--360--0:04:23.221292||24--421c576ffc82c3b162d2812c257c0b1f.mp4--video/mp4--video--640--360--0:03:30.710500', 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.93', '2017-04-21 15:03:36', 3, 'Dokbua Administrator', NULL, '58.9.70.93', '2017-04-21 15:03:36', 3, 'Dokbua Administrator', NULL),
(24, 'review', 23, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'delicious', 'My mouth is watering.\r\n\r\nอิ่มอร่อย โดยอาไท การันตี...!!!!!\r\n\r\n', NULL, '24--35_101_1493008801_review.jpg--image/jpeg--photo--94--126--0', 0, NULL, NULL, NULL, 5, 1, 1, 0, '58.9.70.93', '2017-04-24 11:40:51', 10, 'Choo Black', NULL, '58.9.70.93', '2017-04-24 11:40:51', 10, 'Choo Black', NULL),
(25, 'review', 24, 32, 'Bonsai Fusion Japanese Steak House ', 'Houston, TX', 1, 'อร่อยเลย.....', 'เชิญมากินได้เลยยยยย', NULL, '25--32_105_1493026362_review.jpg--image/jpeg--photo--1108--1478--0', 0, NULL, NULL, NULL, 5, 1, 1, 0, '58.9.70.93', '2017-04-24 16:32:52', 32, 'Chaleamsuk', NULL, '58.9.70.93', '2017-04-24 16:32:52', 32, 'Chaleamsuk', NULL),
(26, 'review', 25, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'สปริงโรลลลลลล', 'อร๊อยยยนยอร่อยยยยยยยยย', NULL, '26--35_101_1493281230_review.jpeg--image/jpeg--photo--3000--2002--0', 0, NULL, NULL, NULL, 4, 5, 1, 0, '58.9.70.93', '2017-04-27 15:21:09', 41, 'Sitichai Mix', NULL, '58.9.70.93', '2017-04-27 15:21:09', 41, 'Sitichai Mix', NULL),
(27, 'review', 26, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ร้านนี้ดี๊ดี', 'อร๊อยยยยยอร่อยยยย', NULL, '29--35_101_1493283130_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll', 5, 5, 1, 0, '223.24.98.173', '2017-04-27 15:52:14', 41, 'Sitichai Mix', NULL, '223.24.98.173', '2017-04-27 15:52:14', 41, 'Sitichai Mix', NULL),
(28, 'review', 27, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เชิญชวนเพื่อนมากินอาหารเพราะอร่อย', 'ความอร่อยที่หยุดไม่ได้', NULL, '30--35_105_1493293015_review.png--image/png--photo--720--369--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Chicken Wing', 3, 3, 1, 0, '223.24.101.250', '2017-04-27 18:37:05', 32, 'Chaleamsuk1', NULL, '223.24.101.250', '2017-04-27 18:37:05', 32, 'Chaleamsuk1', NULL),
(29, 'review', 28, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'P.Ton ยังชอบบ', 'ร้านมันดี อาหารเฟี่ยว  การันตี โดย Choo Back', NULL, '31--35_101_1493375243_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Chicken Wing', 5, 5, 1, 0, '27.55.122.58', '2017-04-28 17:27:26', 40, 'E24NDA', NULL, '27.55.122.58', '2017-04-28 17:27:26', 40, 'E24NDA', NULL),
(30, 'review', 29, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'first time on my mobile, many comments ', 'On iPhone 5SE 1)heading picture doesn\'t seem in its proper ratio. 2) tell --> call 3) I can\'t enter to new role in comment free text box.  For note in back log 3.3 should be able to edit comment like...', NULL, '32--35_101_1493850885_review.jpeg--image/jpeg--photo--1704--2272--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll', 2, 3, 1, 0, '49.49.247.154', '2017-05-04 05:35:08', 68, 'Boatty PT', NULL, '49.49.247.154', '2017-05-04 05:35:08', 68, 'Boatty PT', NULL),
(31, 'review', 30, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'what happen in this country', 'https://www.facebook.com/NowThisPolitics/videos/1542632039101614/', NULL, '36--35_101_1493980074_review.jpeg--image/jpeg--photo--960--662--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll', 5, 5, 1, 0, '49.49.233.78', '2017-05-05 17:28:06', 68, 'Boatty PT', NULL, '49.49.233.78', '2017-05-05 17:28:06', 68, 'Boatty PT', NULL),
(32, 'review', 31, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ทดสอบ', 'พ่านสาสวา้่สม้สส้่ีรายาวสาา่่่าาวสสาา่่่่ว่่่', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, 1, 0, '58.9.70.251', '2017-05-08 14:21:32', 61, 'Mixzer', NULL, '58.9.70.251', '2017-05-08 14:21:32', 61, 'Mixzer', NULL),
(33, 'review', 32, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'test test', 'test test test test test test test test test test test test test test test test', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, 1, 0, '58.9.70.251', '2017-05-08 15:01:55', 2, 'chaleamsuk sremaung', NULL, '58.9.70.251', '2017-05-08 15:01:55', 2, 'chaleamsuk sremaung', NULL),
(34, 'review', 33, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'test test', 'test test test test test test test test test test test test test test test test', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.251', '2017-05-08 15:02:38', 2, 'chaleamsuk sremaung', NULL, '58.9.70.251', '2017-05-08 15:02:38', 2, 'chaleamsuk sremaung', NULL),
(35, 'review', 34, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'new roll', 'New\nRoll\n', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.251', '2017-05-09 10:29:23', 61, 'Mixzer', NULL, '58.9.70.251', '2017-05-09 10:29:23', 61, 'Mixzer', NULL),
(36, 'review', 35, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'new roll', 'New line\nNa\nNan\nNan\nNaaaaaaaaaa', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 1, 5, 1, 0, '58.9.70.251', '2017-05-09 10:31:12', 61, 'Mixzer', NULL, '58.9.70.251', '2017-05-09 10:31:12', 61, 'Mixzer', NULL),
(37, 'review', 36, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'test test', 'test test test test test test test test test test test test test test test test', NULL, NULL, 0, NULL, NULL, NULL, 4, 1, 0, 0, '114.109.156.94', '2017-05-11 13:03:40', 2, 'chaleamsuk sremaung', NULL, '114.109.156.94', '2017-05-11 13:03:40', 2, 'chaleamsuk sremaung', NULL),
(38, 'review', 37, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ทดสอบระบบชั่วคราวววว', '1234567890', NULL, '37--35_105_1494563364_review.png--image/png--photo--640--1137--0||38--35_105_1494563397_review.png--image/png--photo--720--369--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 2, 2, 1, 0, '58.9.70.251', '2017-05-12 11:30:06', 32, 'Chaleamsuk1', NULL, '58.9.70.251', '2017-05-12 11:30:06', 32, 'Chaleamsuk1', NULL),
(39, 'review', 38, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ต้มโคร้ง ร้านเจ้ตุ๋ม', 'อาหารสะอาดถูกหนักอนามัย และรสชาติถูกปากมากครับ เหมาะสำหรับเพื่อนๆที่มาเป็นหมู่คณะครับ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '58.9.70.251', '2017-05-15 13:49:58', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:49:58', 4, 'บอสเองน่ะ', NULL),
(40, 'review', 39, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ต้มยำ', 'อร่อยสุดๆๆ', NULL, '39--35_105_1494831076_review.png--image/png--photo--1108--1477--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 13:51:51', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:51:51', 4, 'บอสเองน่ะ', NULL),
(41, 'review', 40, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เทสสสสสสสสส', '1234567890', NULL, '39--35_105_1494831076_review.png--image/png--photo--1108--1477--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 2, 2, 1, 0, '58.9.70.251', '2017-05-15 13:52:42', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:52:42', 4, 'บอสเองน่ะ', NULL),
(42, 'review', 41, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เราสามคน', '55555555', NULL, '39--35_105_1494831076_review.png--image/png--photo--1108--1477--0||40--35_105_1494831306_review.png--image/png--photo--2772--1872--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll||Tom Ka Chicken Soup', 5, 5, 1, 0, '58.9.70.251', '2017-05-15 13:55:16', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:55:16', 4, 'บอสเองน่ะ', NULL),
(43, 'review', 42, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เทส1', 'งดงามอาหารดี', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 4, 1, 0, '58.9.70.251', '2017-05-15 13:58:11', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:58:11', 4, 'บอสเองน่ะ', NULL),
(44, 'review', 43, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'Jelelight', 'P.j ไล่โค้ดอย่างเมามันส์', NULL, '41--35_101_1494831512_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll', 5, 1, 1, 0, '27.55.82.90', '2017-05-15 13:58:35', 41, 'Sitichai', NULL, '27.55.82.90', '2017-05-15 13:58:35', 41, 'Sitichai', NULL),
(45, 'review', 44, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อยากลองชิมอาหาร', '123456789', NULL, '42--35_105_1494831513_review.png--image/png--photo--720--369--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 13:58:36', 64, 'Chaleamsuk Sremaung', NULL, '58.9.70.251', '2017-05-15 13:58:36', 64, 'Chaleamsuk Sremaung', NULL),
(46, 'review', 45, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เทสสสส333', 'อร่อยยยยจัง', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 13:59:38', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 13:59:38', 4, 'บอสเองน่ะ', NULL),
(47, 'review', 46, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'รักเทอไปทุกวัน', '123456', NULL, '42--35_105_1494831513_review.png--image/png--photo--720--369--0||43--35_105_1494831595_review.png--image/png--photo--720--369--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 14:00:02', 64, 'Chaleamsuk Sremaung', NULL, '58.9.70.251', '2017-05-15 14:00:02', 64, 'Chaleamsuk Sremaung', NULL),
(48, 'review', 47, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '555555', '22222', NULL, '45--35_105_1494832180_review.png--image/png--photo--640--1137--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '27.55.82.184', '2017-05-15 14:10:23', 64, 'Chaleamsuk Sremaung', NULL, '27.55.82.184', '2017-05-15 14:10:23', 64, 'Chaleamsuk Sremaung', NULL),
(49, 'review', 48, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '1111111111111', '1111111111', NULL, '46--35_105_1494832470_review.png--image/png--photo--640--1137--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll', 1, 1, 1, 0, '27.55.82.184', '2017-05-15 14:14:46', 64, 'Chaleamsuk Sremaung', NULL, '27.55.82.184', '2017-05-15 14:14:46', 64, 'Chaleamsuk Sremaung', NULL),
(50, 'review', 49, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '44444444', '444444', NULL, '47--35_105_1494832539_review.png--image/png--photo--640--1137--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Crispy Thai Spring Roll', 3, 3, 1, 0, '27.55.82.184', '2017-05-15 14:15:47', 64, 'Chaleamsuk Sremaung', NULL, '27.55.82.184', '2017-05-15 14:15:47', 64, 'Chaleamsuk Sremaung', NULL),
(51, 'review', 50, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'mmmmmmmmmmmm', 'mmmmmmmmmm', NULL, '48--35_105_1494832733_review.png--image/png--photo--672--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 14:18:57', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 14:18:57', 4, 'บอสเองน่ะ', NULL),
(52, 'review', 51, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'nnnnnnnnnnnn', 'nnnnnnnnnnnn', NULL, '49--35_105_1494832779_review.png--image/png--photo--672--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 14:19:43', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 14:19:43', 4, 'บอสเองน่ะ', NULL),
(53, 'review', 52, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '', 'เทสส', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 4, 4, 1, 0, '27.55.82.90', '2017-05-15 14:21:34', 41, 'Sitichai', NULL, '27.55.82.90', '2017-05-15 14:21:34', 41, 'Sitichai', NULL),
(54, 'review', 53, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'สุดติ้ง', 'ไอ่เลิฟยู', NULL, '50--35_105_1494832924_review.png--image/png--photo--717--960--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 4, 1, 0, '58.9.70.251', '2017-05-15 14:22:05', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 14:22:05', 4, 'บอสเองน่ะ', NULL),
(55, 'review', 54, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '', 'หมู', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '27.55.82.90', '2017-05-15 14:22:18', 41, 'Sitichai', NULL, '27.55.82.90', '2017-05-15 14:22:18', 41, 'Sitichai', NULL),
(56, 'review', 55, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เทสสสสน้าาา', 'ความอร่อยคือความงดงาม', NULL, '51--35_105_1494833083_review.png--image/png--photo--540--960--0||52--35_105_1494833101_review.png--image/png--photo--539--960--0||53--35_105_1494833121_review.png--image/png--photo--720--720--0||54--35_105_1494833136_review.png--image/png--photo--540--960--0||55--35_105_1494833176_review.png--image/png--photo--540--960--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-15 14:26:20', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 14:26:20', 4, 'บอสเองน่ะ', NULL),
(57, 'review', 56, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เทสครั้งที่ 4', '15 พค.', NULL, '56--35_105_1494834618_review.png--image/png--photo--1184--888--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 4, 1, 0, '58.9.70.251', '2017-05-15 14:50:18', 4, 'บอสเองน่ะ', NULL, '58.9.70.251', '2017-05-15 14:50:18', 4, 'บอสเองน่ะ', NULL),
(58, 'review', 57, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ดีงามพระรามเก้า', 'อิอิ', NULL, '57--35_105_1494919328_review.png--image/png--photo--2772--1872--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 2, 2, 1, 0, '58.9.70.251', '2017-05-16 14:22:18', 4, 'พี่เพค', NULL, '58.9.70.251', '2017-05-16 14:22:18', 4, 'พี่เพค', NULL),
(59, 'review', 58, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '11111', '22222', NULL, '58--35_105_1495082763_review.png--image/png--photo--720--369--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 2, 2, 1, 0, '58.9.70.251', '2017-05-18 11:46:06', 32, 'Chaleamsuk1', NULL, '58.9.70.251', '2017-05-18 11:46:06', 32, 'Chaleamsuk1', NULL),
(60, 'review', 59, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'หิว', 'เล่นแอพละหิวเลย', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '223.24.96.23', '2017-05-25 05:20:02', 61, 'Mixzer', NULL, '223.24.96.23', '2017-05-25 05:20:02', 61, 'Mixzer', NULL),
(61, 'review', 60, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ทดสอบ', 'ทดสอบ', NULL, '60--35_101_1495686515_review.jpeg--image/jpeg--photo--2000--2668--0||61--35_101_1495686546_review.jpeg--image/jpeg--photo--2000--2668--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 3, 3, 1, 0, '58.9.70.251', '2017-05-25 05:29:08', 33, 'Chet Surachet', NULL, '58.9.70.251', '2017-05-25 05:29:08', 33, 'Chet Surachet', NULL),
(62, 'review', 61, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'good job', 'good', NULL, '62--35_105_1495687871_review.png--image/png--photo--1280--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '58.9.70.251', '2017-05-25 05:51:17', 10, 'Choo Black', NULL, '58.9.70.251', '2017-05-25 05:51:17', 10, 'Choo Black', NULL),
(63, 'review', 62, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'good job', 'good', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, 1, 0, '58.9.70.251', '2017-05-25 05:51:27', 10, 'Choo Black', NULL, '58.9.70.251', '2017-05-25 05:51:27', 10, 'Choo Black', NULL),
(64, 'review', 63, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ghgghhh', 'nbnjjnnnn', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 3, 5, 1, 0, '114.109.156.94', '2017-05-25 06:34:54', 61, 'Mixzer', NULL, '114.109.156.94', '2017-05-25 06:34:54', 61, 'Mixzer', NULL),
(65, 'review', 64, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'หิวหิวหิว', 'เล่นละหิวต้องทำไงคะ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '223.24.96.23', '2017-05-25 06:56:10', 81, 'Kanun Singprasert', NULL, '223.24.96.23', '2017-05-25 06:56:10', 81, 'Kanun Singprasert', NULL),
(66, 'review', 65, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'login with fb is back to normal', 'User needs to delete the app and re install. login with fb is back to normal\n\n', NULL, '65--35_101_1496111198_review.jpeg--image/jpeg--photo--640--1136--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '49.49.246.242', '2017-05-30 03:26:57', 90, 'Boatty PT', NULL, '49.49.246.242', '2017-05-30 03:26:57', 90, 'Boatty PT', NULL),
(67, 'review', 66, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ก๋วยเตี้ยวหมู', 'อร่อยจนต้องขอ2', NULL, '66--35_101_1496208770_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, NULL, 5, 1, 1, 0, '223.24.64.63', '2017-05-31 06:32:55', 41, 'Sitichai', NULL, '223.24.64.63', '2017-05-31 06:32:55', 41, 'Sitichai', NULL),
(68, 'review', 67, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'test', '\n\n', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '58.9.70.251', '2017-05-31 10:18:14', 41, 'Sitichai', NULL, '58.9.70.251', '2017-05-31 10:18:14', 41, 'Sitichai', NULL),
(69, 'review', 68, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'title', 'Desc', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.251', '2017-05-31 10:18:29', 41, 'Sitichai', NULL, '58.9.70.251', '2017-05-31 10:18:29', 41, 'Sitichai', NULL),
(70, 'review', 69, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'title', 'Pim', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.251', '2017-05-31 10:19:40', 41, 'Sitichai', NULL, '58.9.70.251', '2017-05-31 10:19:40', 41, 'Sitichai', NULL),
(71, 'review', 70, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'นกหนักมาก', 'อยากกินมันแกวดีกว่า', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '58.9.70.251', '2017-05-31 10:22:55', 94, 'Kritsamon Salayut', NULL, '58.9.70.251', '2017-05-31 10:22:55', 94, 'Kritsamon Salayut', NULL),
(72, 'review', 71, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'จุ๊บจิ๊บกุ๊กกุ๊ก', 'อยากกินข้าวเหนียวมะม่วง\n\n', NULL, '71--35_101_1496222758_review.jpeg--image/jpeg--photo--1242--2208--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '58.9.70.251', '2017-05-31 10:26:12', 94, 'Kritsamon Salayut', NULL, '58.9.70.251', '2017-05-31 10:26:12', 94, 'Kritsamon Salayut', NULL),
(73, 'review', 72, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ห้าห้าห้าห้า', 'หกหกหกหก', NULL, '72--35_105_1496223688_review.png--image/png--photo--720--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 3, 3, 1, 0, '58.9.70.251', '2017-05-31 10:41:46', 32, 'นายพราน111', NULL, '58.9.70.251', '2017-05-31 10:41:46', 32, 'นายพราน111', NULL),
(74, 'review', 73, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ร้านเด็ดอีกแล้ว', 'หิวละสิ', NULL, '73--35_101_1496295286_review.jpeg--image/jpeg--photo--1080--1920--0||74--35_101_1496295300_review.jpeg--image/jpeg--photo--1080--1920--0||75--35_101_1496295315_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 1, 1, 0, '27.55.36.10', '2017-06-01 06:35:16', 41, 'Sitichai', NULL, '27.55.36.10', '2017-06-01 06:35:16', 41, 'Sitichai', NULL),
(75, 'review', 74, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'รีวิววนไปจ่ะ', 'บรรยาได้ อาหารได้ ครบจ้าา', NULL, '76--35_105_1496295328_review.png--image/png--photo--1872--3328--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '223.24.41.187', '2017-06-01 06:35:46', 49, 'ราชา ทีเด็ด', NULL, '223.24.41.187', '2017-06-01 06:35:46', 49, 'ราชา ทีเด็ด', NULL),
(76, 'review', 75, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'รีวิววนไปจ่ะ', 'บรรยาได้ อาหารได้ ครบจ้าา', NULL, NULL, 0, NULL, NULL, NULL, 5, 5, 1, 0, '223.24.41.187', '2017-06-01 06:35:48', 49, 'ราชา ทีเด็ด', NULL, '223.24.41.187', '2017-06-01 06:35:48', 49, 'ราชา ทีเด็ด', NULL),
(77, 'review', 76, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'สุดพลัง', 'สุดพลังกสำยพสดมกสหบฟเทสๆๆๆๆุๆุๆุๆุๆุๆๆนๆยุๆสุๆสุๆสุๆมุๆมมๆาๆาๆาๆุาๆุาๆุาๆุมๆุมๆุมๆมๆมุๆใัใๆใๆุใๆัวๆัใำัใกสปยอาัำยัหยัำยัยำัยไัยไัยไัยไัยไไสไยยไไยไสยไยุลุำุไุลำไยไนไนไน', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '58.9.70.251', '2017-06-01 08:32:48', 49, 'ราชา ทีเด็ด', NULL, '58.9.70.251', '2017-06-01 08:32:48', 49, 'ราชา ทีเด็ด', NULL),
(78, 'review', 77, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '', 'หิว!!!', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 2, 1, 0, '27.130.216.164', '2017-06-02 14:31:20', 98, 'Atom AP', NULL, '27.130.216.164', '2017-06-02 14:31:20', 98, 'Atom AP', NULL),
(79, 'review', 78, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'หน่วง Room 39', 'ทำไมเวลาเลื่อนลงต้องมีสัญลักษณ์ load ข้อมูล และหน่วงๆอ่ะค้าบ\n', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 2, 1, 1, 0, '27.130.216.164', '2017-06-02 14:36:01', 98, 'Atom AP', NULL, '27.130.216.164', '2017-06-02 14:36:01', 98, 'Atom AP', NULL),
(80, 'review', 79, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เหนื่อยจร้าหิวแล้ววววว', 'อยากออกไปกินข้าว', NULL, '79--35_105_1496638846_review.png--image/png--photo--1872--2340--0||80--35_105_1496638879_review.png--image/png--photo--1872--2340--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Chicken Wing', 2, 2, 1, 0, '58.9.70.251', '2017-06-05 06:01:23', 49, 'botnoi', NULL, '58.9.70.251', '2017-06-05 06:01:23', 49, 'botnoi', NULL),
(81, 'review', 80, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ทดสอบระบบ', 'อาหารอร่อยมากๆ', NULL, '81--35_105_1496822385_review.png--image/png--photo--672--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup', 3, 3, 1, 0, '223.24.8.146', '2017-06-07 08:59:47', 2, 'chaleamsuk sremaung', NULL, '223.24.8.146', '2017-06-07 08:59:47', 2, 'chaleamsuk sremaung', NULL),
(82, 'review', 81, 105, 'City Thai', 'Portland,OR', 5, 'ทดสอบ by MIX', 'อ้ายสิฮิ', NULL, NULL, 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish', 5, 1, 1, 0, '58.9.70.251', '2017-06-13 07:56:52', 41, 'MIX FULL NAME', NULL, '58.9.70.251', '2017-06-13 07:56:52', 41, 'MIX FULL NAME', NULL),
(83, 'review', 82, 105, 'City Thai', 'Portland,OR', 5, 'test', 'test', NULL, '92--105_105_1497340813_review.png--image/png--photo--3264--2448--0||93--105_105_1497340889_review.png--image/png--photo--3264--2448--0', 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish', 4, 4, 1, 0, '58.9.70.251', '2017-06-13 09:01:36', 73, 'สมชาย ศรชัย', NULL, '58.9.70.251', '2017-06-13 09:01:36', 73, 'สมชาย ศรชัย', NULL),
(84, 'review', 83, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'นิวววววว', 'จ้า\n', NULL, '113--35_101_1497345758_review.jpeg--image/jpeg--photo--2272--1516--0||114--35_101_1497345763_review.jpeg--image/jpeg--photo--1515--2272--0||115--35_101_1497345769_review.jpeg--image/jpeg--photo--2272--1516--0||116--35_101_1497345778_review.jpeg--image/jpeg--photo--2272--1509--0||117--35_101_1497345792_review.jpeg--image/jpeg--photo--2272--1509--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Chicken Wing||Crispy Thai Spring Roll', 5, 1, 1, 0, '58.9.70.251', '2017-06-13 10:23:54', 41, 'CityThai', NULL, '58.9.70.251', '2017-06-13 10:23:54', 41, 'CityThai', NULL),
(85, 'review', 84, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เปรี้ยวตลาดแตก', 'ก๊ากกกกกกกกกกกกกกกก', NULL, '118--35_105_1497348253_review.png--image/png--photo--3264--2448--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 3, 3, 1, 0, '58.9.70.251', '2017-06-13 11:04:59', 73, 'สมชาย ศรชัย', NULL, '58.9.70.251', '2017-06-13 11:04:59', 73, 'สมชาย ศรชัย', NULL),
(86, 'review', 85, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'เปรี้ยวตลาดแตก', 'ก๊ากกกกกกกกกกกกกกกก', NULL, '118--35_105_1497348253_review.png--image/png--photo--3264--2448--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 3, 3, 1, 0, '58.9.70.251', '2017-06-13 11:05:14', 73, 'สมชาย ศรชัย', NULL, '58.9.70.251', '2017-06-13 11:05:14', 73, 'สมชาย ศรชัย', NULL),
(87, 'review', 86, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'มีน้ำหอมขายมั้ย', 'lol\n', NULL, '122--35_101_1497423004_review.jpeg--image/jpeg--photo--450--450--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 5, 5, 1, 0, '58.9.70.251', '2017-06-14 07:50:49', 94, 'Kritsamon Salayut', NULL, '58.9.70.251', '2017-06-14 07:50:49', 94, 'Kritsamon Salayut', NULL),
(88, 'review', 87, 105, 'City Thai', 'Portland,OR', 5, 'ทดสอบบบบบ', 'ทดสอบบบบบ', NULL, '123--105_105_1497426338_review.png--image/png--photo--720--1280--0||124--105_105_1497426348_review.png--image/png--photo--720--1280--0||125--105_105_1497426357_review.png--image/png--photo--720--1280--0||126--105_105_1497426367_review.png--image/png--photo--720--1280--0||127--105_105_1497426379_review.png--image/png--photo--720--1280--0', 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish||Main Menu1||Main Item 2||Main Item 3', 3, 3, 1, 0, '27.55.117.77', '2017-06-14 08:46:23', 32, 'นายเจ', NULL, '27.55.117.77', '2017-06-14 08:46:23', 32, 'นายเจ', NULL),
(89, 'review', 88, 105, 'City Thai', 'Portland,OR', 5, 'Save Choise', 'Best Service', NULL, '129--105_101_1497494654_review.jpeg--image/jpeg--photo--4288--2848--0', 0, NULL, NULL, 'Three Flavored Fish||Combination Fried Rice', 5, 3, 1, 0, '58.9.70.251', '2017-06-15 03:44:24', 41, 'SITI', NULL, '58.9.70.251', '2017-06-15 03:44:24', 41, 'SITI', NULL),
(90, 'review', 89, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อิ่มอร่อย', 'จุงเบย', NULL, '133--35_105_1497499842_review.png--image/png--photo--720--1280--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 4, 4, 1, 0, '58.9.70.251', '2017-06-15 05:10:47', 32, 'นายเจ', NULL, '58.9.70.251', '2017-06-15 05:10:47', 32, 'นายเจ', NULL),
(91, 'review', 90, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, '1234', '5678', NULL, '134--35_105_1497500732_review.png--image/png--photo--1280--720--0||135--35_105_1497500769_review.png--image/png--photo--367--401--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Chicken Wing', 5, 5, 1, 0, '223.24.74.125', '2017-06-15 05:26:18', 10, 'ศักรินทร์ แจะ แจะ', NULL, '223.24.74.125', '2017-06-15 05:26:18', 10, 'ศักรินทร์ แจะ แจะ', NULL),
(92, 'review', 91, 105, 'City Thai', 'Portland,OR', 5, 'รู้สึกง่วงนอนนน', 'อยากหลับ', NULL, NULL, 0, NULL, NULL, NULL, 1, 1, 1, 0, '58.9.70.251', '2017-06-15 05:28:59', 32, 'นายเจ', NULL, '58.9.70.251', '2017-06-15 05:28:59', 32, 'นายเจ', NULL),
(93, 'review', 92, 105, 'City Thai', 'Portland,OR', 5, 'รีิวิว', 'นะจ๊ะ', NULL, NULL, 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish||Main Menu1||Main Item 2||Main Item 3', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 07:48:30', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:48:30', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(94, 'review', 93, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'รีวิว', 'นะ', NULL, NULL, 0, NULL, NULL, 'Chicken Wing', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 07:49:29', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:49:29', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(95, 'review', 94, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'รีวิว', 'นะ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 07:50:38', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:50:38', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(96, 'review', 95, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อีกที', 'นะจ๊ะ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 07:52:36', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:52:36', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(97, 'review', 96, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'อีกทีนะ', 'ไม่เปนไรหรอกเนอะ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup||Tom Ka Chicken Soup||Crispy Thai Spring Roll||Chicken Wing', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 07:53:33', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:53:33', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(98, 'review', 97, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ดีบักโค้ดก่อนนะ', 'แปปปเดียววววเอง', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 1, 3, 1, 0, '58.9.70.251', '2017-06-15 07:55:33', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 07:55:33', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(99, 'review', 98, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'แก้แล้วนะ ', 'ไม่พังแล้วนะ', NULL, NULL, 0, NULL, NULL, 'Tom Yum Shrimp Soup', 5, 5, 1, 0, '58.9.70.251', '2017-06-15 08:08:29', 87, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-15 08:08:29', 87, 'สิทธิชัย ชุ่มใจ', NULL),
(100, 'review', 99, 32, 'Bonsai Fusion Japanese Steak House ', 'Houston, TX', 1, 'อาหารโคตรน่ากินเลยยยยย', 'ลองมาขิมแล้วจะรุ้ว่าอร่อย', NULL, NULL, 0, NULL, NULL, 'Tempura||Gyoza||YAKISOBA||YAKI UDON', 1, 1, 1, 0, '58.9.70.251', '2017-06-15 11:27:04', 32, 'นายเจ', NULL, '58.9.70.251', '2017-06-15 11:27:04', 32, 'นายเจ', NULL),
(101, 'review', 100, 105, 'City Thai', 'Portland,OR', 5, 'จากtestflight', 'นะนะน\n', NULL, '138--105_101_1497598992_review.jpeg--image/jpeg--photo--3024--4032--0', 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish||Main Menu1', 5, 1, 1, 0, '223.24.19.223', '2017-06-16 08:43:42', 109, 'สิทธิชัย ชุ่มใจ', NULL, '223.24.19.223', '2017-06-16 08:43:42', 109, 'สิทธิชัย ชุ่มใจ', NULL),
(102, 'review', 101, 105, 'City Thai', 'Portland,OR', 5, 'fix upload image', 'Image', NULL, '157--105_101_1497603192_review.jpeg--image/jpeg--photo--2668--1780--0||158--105_101_1497603197_review.jpeg--image/jpeg--photo--1668--2500--0', 0, NULL, NULL, 'Combination Fried Rice', 5, 5, 1, 0, '58.9.70.251', '2017-06-16 09:54:23', 41, 'MIX E-MAIL', NULL, '58.9.70.251', '2017-06-16 09:54:23', 41, 'MIX E-MAIL', NULL),
(103, 'review', 102, 105, 'City Thai', 'Portland,OR', 5, 'from emu', 'Not Brick', NULL, '176--105_101_1497605482_review.jpeg--image/jpeg--photo--2668--1780--0||177--105_101_1497605489_review.jpeg--image/jpeg--photo--2668--1780--0||178--105_101_1497605498_review.jpeg--image/jpeg--photo--2668--1772--0||179--105_101_1497605507_review.jpeg--image/jpeg--photo--1668--2500--0||180--105_101_1497605515_review.jpeg--image/jpeg--photo--2668--1772--0', 0, NULL, NULL, 'Combination Fried Rice||Main Item 3', 5, 5, 1, 0, '58.9.70.251', '2017-06-16 10:32:22', 109, 'สิทธิชัย ชุ่มใจ', NULL, '58.9.70.251', '2017-06-16 10:32:22', 109, 'สิทธิชัย ชุ่มใจ', NULL),
(104, 'review', 103, 105, 'City Thai', 'Portland,OR', 5, 'เงิบบบบ', 'สิจ๊ะ', NULL, '190--105_101_1497607799_review.jpeg--image/jpeg--photo--1080--1920--0||191--105_101_1497607811_review.jpeg--image/jpeg--photo--1080--1920--0||192--105_101_1497607819_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Combination Fried Rice||Main Item 2||Main Menu1', 5, 5, 1, 0, '58.9.70.251', '2017-06-16 11:10:47', 41, 'MIX E-MAIL', NULL, '58.9.70.251', '2017-06-16 11:10:47', 41, 'MIX E-MAIL', NULL),
(105, 'review', 104, 105, 'City Thai', 'Portland,OR', 5, 'เครื่องเชฐ', 'ได้ทุกสิ่ง\n', NULL, '200--105_101_1497609777_review.jpeg--image/jpeg--photo--2000--2668--0||201--105_101_1497609791_review.jpeg--image/jpeg--photo--1932--2576--0||202--105_101_1497609802_review.jpeg--image/jpeg--photo--1080--1920--0', 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish||Main Menu1', 5, 5, 1, 0, '58.9.70.251', '2017-06-16 11:43:42', 110, 'Chet Surachet', NULL, '58.9.70.251', '2017-06-16 11:43:42', 110, 'Chet Surachet', NULL),
(106, 'review', 105, 105, 'City Thai', 'Portland,OR', 5, 'มากับเพื่ือน', 'อาหารถูก', NULL, '203--105_105_1497610425_review.png--image/png--photo--3264--1836--0||204--105_105_1497610522_review.png--image/png--photo--1836--3264--0||205--105_105_1497610538_review.png--image/png--photo--1836--1837--0', 0, NULL, NULL, 'Combination Fried Rice||Three Flavored Fish||Main Menu1||Main Item 2||Main Item 3', 2, 2, 1, 0, '58.9.70.251', '2017-06-16 11:55:42', 2, 'chaleamsuk sremaung', NULL, '58.9.70.251', '2017-06-16 11:55:42', 2, 'chaleamsuk sremaung', NULL),
(107, 'review', 106, 35, 'Dok Bua Thai kitchen ', 'Brookline,MA', 3, 'ลองดู', 'น่ากิน', NULL, '206--35_105_1497677401_review.png--image/png--photo--720--720--0', 0, NULL, NULL, 'Tom Yum Shrimp Soup', 4, 4, 1, 0, '1.0.201.143', '2017-06-17 06:30:09', 103, 'Teera Pong', NULL, '1.0.201.143', '2017-06-17 06:30:09', 103, 'Teera Pong', NULL),
(108, 'review', 107, 105, 'City Thai', 'Portland,OR', 5, 'to ', 'Tooloo\n\n', NULL, '208--105_101_1510331559_review.jpeg--image/jpeg--photo--1728--3072--0', 0, NULL, NULL, 'Combination Fried Rice||Main Menu1||Three Flavored Fish', 5, 1, 1, 0, '223.24.156.146', '2017-11-10 16:33:32', 109, 'สิทธิชัย ชุ่มใจ', NULL, '223.24.156.146', '2017-11-10 16:33:32', 109, 'สิทธิชัย ชุ่มใจ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_type`
--

CREATE TABLE `zzz_business_type` (
  `bsth_id` int(10) UNSIGNED NOT NULL,
  `bsth_pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `bsth_code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bsth_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bsth_detail` text COLLATE utf8_unicode_ci,
  `bsth_icon` text COLLATE utf8_unicode_ci COMMENT 'icon for category',
  `bsth_active` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `bsth_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsth_cuser` int(10) UNSIGNED NOT NULL,
  `bsth_cip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  `bsth_mdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `bsth_muser` int(10) UNSIGNED NOT NULL,
  `bsth_mip` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_type`
--

INSERT INTO `zzz_business_type` (`bsth_id`, `bsth_pid`, `bsth_code`, `bsth_title`, `bsth_detail`, `bsth_icon`, `bsth_active`, `bsth_cdate`, `bsth_cuser`, `bsth_cip`, `bsth_mdate`, `bsth_muser`, `bsth_mip`) VALUES
(101, 0, 'Restaurant', 'Restaurant', 'ธุรกิจร้านอาหาร', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(102, 101, 'Thai foods', 'Thai foods', 'อาหารไทย', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2016-01-01 00:00:01', 0, '127.0.0.1'),
(103, 101, 'Italian foods', 'Italian foods', 'อาหารอิตาเลี่ยน', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2017-02-15 05:14:43', 1, '58.9.70.186'),
(104, 101, 'Japanese foods', 'Japanese foods', 'อาหารญี่ปุ่น', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2017-02-15 05:14:46', 1, '58.9.70.186'),
(105, 101, 'Indian foods', 'Indian foods', 'อาหารอินเดีย', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2017-02-15 05:14:49', 1, '58.9.70.186'),
(106, 101, 'Chinese foods', 'Chinese foods', 'อาหารจีน', NULL, 1, '2016-01-01 00:00:01', 0, '127.0.0.1', '2017-02-15 05:14:52', 1, '58.9.70.186'),
(120, 0, 'Beauty & Spa111', 'Beauty & Spa111', 'ธุรกิจเสริมสวยและสปา111', '1486714867573785.jpg', 0, '2017-02-10 03:21:07', 1, '58.9.70.186', '2017-02-15 03:51:15', 1, '58.9.70.186'),
(121, 0, 'Jobs', 'Jobs', 'ธุรกิจจัดหางาน', NULL, 0, '2017-02-10 03:22:53', 1, '58.9.70.186', '2017-02-15 03:51:19', 1, '58.9.70.186'),
(122, 0, 'Educate', 'Educate', 'ธุรกิจการศึกษา', NULL, 0, '2017-02-10 03:25:33', 1, '58.9.70.186', '2017-02-15 03:51:22', 1, '58.9.70.186'),
(123, 0, 'Garage', 'Garage', 'ธุรกิจกลุ่มซ่อมยนต์', NULL, 0, '2017-02-10 03:28:28', 1, '58.9.70.186', '2017-02-15 03:51:25', 1, '58.9.70.186'),
(124, 0, 'RRRR1', 'RRRR1', 'RRRR1', '1486723334697898.jpg', 0, '2017-02-10 05:42:14', 1, '58.9.70.186', '2017-02-15 03:51:29', 1, '58.9.70.186'),
(125, 124, 'RRRR6', 'RRRR6', 'RRRR6', '125_1487065108463424.jpg', 1, '2017-02-10 05:44:24', 1, '58.9.70.186', '2017-02-15 03:50:59', 1, '58.9.70.186'),
(126, 0, 'TTTT', 'TTTT', 'TTTT', '126_1487059788753249.jpg', 0, '2017-02-14 10:44:49', 1, '58.9.70.186', '2017-02-15 03:51:32', 1, '58.9.70.186');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_business_type_category`
--

CREATE TABLE `zzz_business_type_category` (
  `bsct_id` int(10) UNSIGNED NOT NULL,
  `bsct_bsth_id` int(10) UNSIGNED NOT NULL,
  `bsct_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bsct_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `bsct_icon` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_business_type_category`
--

INSERT INTO `zzz_business_type_category` (`bsct_id`, `bsct_bsth_id`, `bsct_name`, `bsct_desc`, `bsct_icon`) VALUES
(1, 101, 'Thai foods', 'อาหารไทย', ''),
(2, 101, 'Italian foods', 'อาหารอิตาเลี่ยน', ''),
(3, 101, 'Japanese foods', 'อาหารญี่ปุ่น', ''),
(4, 101, 'Indian foods', 'อาหารอินเดีย', '');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_article_cate`
--

CREATE TABLE `zzz_cmnty_article_cate` (
  `cate_id` tinyint(3) UNSIGNED NOT NULL,
  `cate_parent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cate_level` set('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_forum_cate`
--

CREATE TABLE `zzz_cmnty_forum_cate` (
  `cate_id` tinyint(3) UNSIGNED NOT NULL,
  `cate_parent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cate_level` set('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_menu`
--

CREATE TABLE `zzz_cmnty_menu` (
  `menu_id` tinyint(3) UNSIGNED NOT NULL,
  `menu_parent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `menu_level` set('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `menu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_news`
--

CREATE TABLE `zzz_cmnty_news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `news_cate_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `news_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_desc` tinytext COLLATE utf8_unicode_ci,
  `news_tags` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_daily` tinyint(1) NOT NULL DEFAULT '0',
  `news_hilight` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` mediumint(9) NOT NULL DEFAULT '0',
  `news_cdate` datetime NOT NULL,
  `news_cuid` int(11) NOT NULL DEFAULT '0',
  `news_mdate` datetime DEFAULT NULL,
  `news_muid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_news_cate`
--

CREATE TABLE `zzz_cmnty_news_cate` (
  `cate_id` tinyint(3) UNSIGNED NOT NULL,
  `cate_parent` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cate_level` tinyint(1) NOT NULL DEFAULT '0',
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_cmnty_user`
--

CREATE TABLE `zzz_cmnty_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` set('admin','editor','writer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'writer',
  `user_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_config_head`
--

CREATE TABLE `zzz_config_head` (
  `cfgh_id` int(10) UNSIGNED NOT NULL,
  `cfgh_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `cfgh_active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_config_head`
--

INSERT INTO `zzz_config_head` (`cfgh_id`, `cfgh_name`, `cfgh_active`) VALUES
(1, 'strNearby', 1),
(2, 'strRestaurant', 1),
(3, 'strState', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_config_lang`
--

CREATE TABLE `zzz_config_lang` (
  `cfgl_id` int(10) UNSIGNED NOT NULL,
  `cfgl_cfgh_id` int(10) UNSIGNED NOT NULL,
  `cfgl_lang` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EN',
  `cfgl_value` text COLLATE utf8_unicode_ci NOT NULL,
  `cfgl_active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_config_lang`
--

INSERT INTO `zzz_config_lang` (`cfgl_id`, `cfgl_cfgh_id`, `cfgl_lang`, `cfgl_value`, `cfgl_active`) VALUES
(1, 1, 'EN', 'Nearby', 1),
(2, 2, 'EN', 'Restaurant', 1),
(3, 3, 'EN', 'State', 1),
(4, 1, 'TH', 'ใกล้เคียง', 1),
(5, 2, 'TH', 'ร้านอาหาร', 1),
(6, 3, 'TH', 'รัฐ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_content_editor`
--

CREATE TABLE `zzz_content_editor` (
  `coed_id` int(10) UNSIGNED NOT NULL,
  `coed_login` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `coed_pass` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `coed_name` text COLLATE utf8_unicode_ci NOT NULL,
  `coed_level` tinyint(2) UNSIGNED NOT NULL DEFAULT '5',
  `coed_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_info`
--

CREATE TABLE `zzz_customer_info` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'customer id',
  `shop_id` int(10) UNSIGNED NOT NULL,
  `expired` date NOT NULL DEFAULT '2017-01-01' COMMENT 'expired date',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'active status',
  `cdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'create datetime',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'create user',
  `cip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'create ipaddress',
  `mdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'modify datetime',
  `muser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'modify user',
  `mip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'modify ipaddress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_info`
--

INSERT INTO `zzz_customer_info` (`id`, `shop_id`, `expired`, `active`, `cdate`, `cuser`, `cip`, `mdate`, `muser`, `mip`) VALUES
(101, 139, '2018-01-01', 1, '2017-01-01 00:00:01', 1, '127.0.0.1', '2017-01-01 00:00:01', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_member`
--

CREATE TABLE `zzz_customer_member` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'customer member id',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'shop id',
  `mem_id` int(10) UNSIGNED NOT NULL COMMENT 'ziamthai_member id',
  `level` tinyint(2) UNSIGNED NOT NULL DEFAULT '5' COMMENT 'level (1-Sys,3-Adm,5-Ope)',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'active status',
  `cdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'create datetime',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'create user',
  `cip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'create ipaddress',
  `mdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'modify datetime',
  `muser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'modify user',
  `mip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'modify ipaddress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_member`
--

INSERT INTO `zzz_customer_member` (`id`, `shop_id`, `mem_id`, `level`, `active`, `cdate`, `cuser`, `cip`, `mdate`, `muser`, `mip`) VALUES
(102, 35, 1, 1, 1, '2017-01-01 00:00:01', 1, '127.0.0.1', '2017-01-01 00:00:01', 1, '127.0.0.1'),
(132, 139, 74, 1, 1, '2017-05-18 05:11:40', 27, '58.9.70.251', '2017-05-18 05:11:40', 27, '58.9.70.251'),
(133, 35, 25, 5, 1, '2017-05-29 05:14:22', 27, '58.9.70.251', '2017-05-29 05:14:22', 27, '58.9.70.251'),
(134, 35, 37, 5, 1, '2017-05-29 05:15:09', 27, '58.9.70.251', '2017-05-29 05:15:09', 27, '58.9.70.251'),
(135, 35, 3, 5, 1, '2017-05-29 05:25:18', 27, '58.9.70.251', '2017-05-29 05:25:18', 27, '58.9.70.251'),
(136, 105, 27, 1, 1, '2017-01-01 00:00:01', 1, '127.0.0.1', '2017-01-01 00:00:01', 1, '127.0.0.1'),
(137, 105, 68, 3, 1, '2017-06-13 05:36:00', 27, '58.9.70.251', '2017-06-13 05:36:00', 27, '58.9.70.251'),
(138, 105, 53, 3, 1, '2017-06-13 05:36:00', 27, '58.9.70.251', '2017-06-13 05:36:00', 27, '58.9.70.251'),
(139, 105, 108, 3, 1, '2017-06-13 05:36:00', 27, '58.9.70.251', '2017-06-13 05:36:00', 27, '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_member_role`
--

CREATE TABLE `zzz_customer_member_role` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'member group id',
  `mid` int(10) UNSIGNED NOT NULL COMMENT 'member ref id',
  `gid` int(10) UNSIGNED NOT NULL COMMENT 'policy group id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_member_role`
--

INSERT INTO `zzz_customer_member_role` (`id`, `mid`, `gid`) VALUES
(101, 101, 101);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_option`
--

CREATE TABLE `zzz_customer_option` (
  `cuso_id` int(10) UNSIGNED NOT NULL,
  `cuso_cush_id` int(10) UNSIGNED NOT NULL,
  `cuso_name` text COLLATE utf8_unicode_ci NOT NULL,
  `cuso_value` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'create datetime',
  `cuser` int(10) UNSIGNED NOT NULL COMMENT 'create user',
  `cip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'create ipaddress',
  `mdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'modify datetime',
  `muser` int(10) UNSIGNED NOT NULL COMMENT 'modify user',
  `mip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'modify ipaddress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_policy`
--

CREATE TABLE `zzz_customer_policy` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Auto Number',
  `head_order` int(10) UNSIGNED NOT NULL DEFAULT '99' COMMENT 'head order',
  `head_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'parent code',
  `policy_order` int(10) UNSIGNED NOT NULL DEFAULT '99' COMMENT 'policy order',
  `policy_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'policy code',
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'policy description',
  `tname` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'table name',
  `fname` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'field name',
  `ordering` int(10) UNSIGNED NOT NULL DEFAULT '11' COMMENT 'ordering',
  `active` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'active status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_policy`
--

INSERT INTO `zzz_customer_policy` (`id`, `head_order`, `head_name`, `policy_order`, `policy_name`, `detail`, `tname`, `fname`, `ordering`, `active`) VALUES
(300, 1, 'billing', 1, 'sales_order', 'Sales Order', '', '', 11, 1),
(301, 1, 'billing', 2, 'sales_report', 'Sales Report', '', '', 11, 1),
(302, 2, 'reward', 1, 'reward_receive', 'Reward Receive Point', '', '', 11, 1),
(303, 2, 'reward', 2, 'reward_redeem', 'Reward Redeem Point', '', '', 11, 1),
(304, 2, 'reward', 3, 'reward_setup', 'Reward Setup Price to Point', '', '', 11, 1),
(305, 3, 'review', 1, 'review', 'Review', '', '', 11, 1),
(306, 4, 'timeline', 1, 'timeline_feed', 'Timeline Feed', '', '', 11, 1),
(307, 4, 'timeline', 2, 'timeline_publish', 'Timeline publish management', '', '', 11, 1),
(308, 5, 'blog', 1, 'blog_new', 'Create Blog', '', '', 11, 1),
(309, 5, 'blog', 2, 'blog_search', 'Search Blog', '', '', 11, 1),
(310, 6, 'media', 1, 'media_photo', 'uploaded photo', '', '', 11, 1),
(311, 6, 'media', 2, 'media_video', 'uploaded video', '', '', 11, 1),
(312, 7, 'business', 1, 'business_shop', 'shop information', '', '', 11, 1),
(313, 7, 'business', 2, 'business_menu_item', 'menu item information', '', '', 11, 1),
(314, 7, 'business', 3, 'business_work_hour', 'business work hour information', '', '', 11, 1),
(315, 8, 'member', 3, 'member_manage', 'Member Management', '', '', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_role`
--

CREATE TABLE `zzz_customer_role` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'customer group id',
  `shop_id` int(10) UNSIGNED NOT NULL COMMENT 'shop id',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'group name',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'group desc',
  `active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'active status',
  `cdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'create datetime',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'create user',
  `cip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'create ipaddress',
  `mdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'modify datetime',
  `muser` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'modify user',
  `mip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'modify ipaddress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_role`
--

INSERT INTO `zzz_customer_role` (`id`, `shop_id`, `name`, `detail`, `active`, `cdate`, `cuser`, `cip`, `mdate`, `muser`, `mip`) VALUES
(101, 139, 'Shop Administrator', 'Group Shop Administrator', 1, '2017-01-01 00:00:01', 1, '127.0.0.1', '2017-01-01 00:00:01', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_customer_role_policy`
--

CREATE TABLE `zzz_customer_role_policy` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Auto Number',
  `shop_id` int(10) UNSIGNED NOT NULL COMMENT 'shop id',
  `mem_id` int(10) UNSIGNED NOT NULL COMMENT 'member id',
  `policy_id` int(10) UNSIGNED NOT NULL COMMENT 'policy id',
  `pcreate` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'create permission',
  `pread` tinyint(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'read permission',
  `pupdate` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'update permission',
  `pdelete` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'delete permission',
  `active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'active status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_customer_role_policy`
--

INSERT INTO `zzz_customer_role_policy` (`id`, `shop_id`, `mem_id`, `policy_id`, `pcreate`, `pread`, `pupdate`, `pdelete`, `active`) VALUES
(230, 35, 74, 301, 0, 1, 0, 0, 1),
(231, 35, 74, 302, 0, 1, 0, 0, 1),
(232, 35, 74, 303, 0, 1, 0, 0, 1),
(233, 35, 74, 307, 0, 1, 0, 0, 1),
(234, 35, 74, 309, 0, 1, 0, 0, 1),
(235, 35, 74, 313, 0, 1, 0, 0, 1),
(236, 35, 25, 302, 0, 1, 0, 0, 1),
(237, 35, 25, 303, 0, 1, 0, 0, 1),
(238, 35, 37, 300, 0, 1, 0, 0, 1),
(239, 35, 37, 301, 0, 1, 0, 0, 1),
(240, 35, 37, 304, 0, 1, 0, 0, 1),
(241, 35, 37, 312, 0, 1, 0, 0, 1),
(242, 35, 37, 313, 0, 1, 0, 0, 1),
(243, 35, 37, 314, 0, 1, 0, 0, 1),
(244, 35, 3, 305, 0, 1, 0, 0, 1),
(245, 35, 3, 306, 0, 1, 0, 0, 1),
(246, 35, 3, 307, 0, 1, 0, 0, 1),
(247, 35, 3, 308, 0, 1, 0, 0, 1),
(248, 35, 3, 309, 0, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_foods_order`
--

CREATE TABLE `zzz_foods_order` (
  `order_id` int(11) NOT NULL,
  `order_bssh_id` int(11) NOT NULL DEFAULT '0',
  `order_memh_id` int(11) NOT NULL DEFAULT '0',
  `order_date` datetime NOT NULL,
  `order_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_tel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_zipcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_delivery_type` set('pickup','delivery') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pickup',
  `order_delivery_charge` float NOT NULL DEFAULT '0',
  `order_sub_total` float NOT NULL DEFAULT '0',
  `order_tax_rate` float NOT NULL DEFAULT '0',
  `order_tax_amount` float NOT NULL DEFAULT '0',
  `order_grand_total` float NOT NULL DEFAULT '0',
  `order_qty_total` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Total Quantity',
  `order_authencode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000-0000000000' COMMENT 'authen-refnum',
  `order_payment` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'flag_payment',
  `order_pay_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'payment_date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_foods_order`
--

INSERT INTO `zzz_foods_order` (`order_id`, `order_bssh_id`, `order_memh_id`, `order_date`, `order_name`, `order_email`, `order_tel`, `order_street`, `order_address`, `order_city`, `order_state`, `order_zipcode`, `order_delivery_type`, `order_delivery_charge`, `order_sub_total`, `order_tax_rate`, `order_tax_amount`, `order_grand_total`, `order_qty_total`, `order_authencode`, `order_payment`, `order_pay_date`) VALUES
(153, 35, 1, '2017-04-27 16:54:00', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 18.85, 8.5, 1.60225, 20.4522, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(154, 35, 1, '2017-04-27 16:55:29', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 18.85, 8.5, 1.60225, 20.4522, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(155, 35, 1, '2017-04-27 16:56:23', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 18.85, 8.5, 1.60225, 20.4522, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(156, 35, 41, '2017-04-27 16:58:07', 'Sitichai Mix', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 33.7, 8.5, 2.8645, 36.5645, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(157, 35, 1, '2017-04-28 17:19:27', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(158, 35, 1, '2017-04-28 17:20:22', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 19.8, 8.5, 1.683, 21.483, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(159, 35, 1, '2017-04-28 17:23:03', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(160, 35, 1, '2017-04-28 17:26:37', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(161, 35, 1, '2017-04-28 17:27:37', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 29.7, 8.5, 2.5245, 32.2245, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(162, 35, 1, '2017-04-28 17:29:55', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(163, 35, 1, '2017-04-28 17:34:11', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(164, 35, 1, '2017-04-28 17:36:54', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', '', '', '', '', '', 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(165, 35, 1, '2017-04-28 17:40:39', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', '', '', '', '', '', 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(166, 35, 1, '2017-04-28 17:46:25', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', '', '', '', '', '', 'pickup', 0, 21.8, 8.5, 1.853, 23.653, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(167, 35, 1, '2017-04-28 17:49:49', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 13.9, 8.5, 1.1815, 15.0815, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(168, 35, 1, '2017-04-28 17:52:47', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(169, 35, 1, '2017-04-28 17:55:25', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(170, 35, 1, '2017-04-28 17:56:16', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 23.8, 8.5, 2.023, 25.823, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(171, 35, 1, '2017-04-28 17:57:57', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 13.9, 8.5, 1.1815, 15.0815, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(172, 35, 1, '2017-04-28 18:01:04', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(173, 35, 1, '2017-04-28 18:02:49', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 13.9, 8.5, 1.1815, 15.0815, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(174, 35, 1, '2017-04-28 18:04:52', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(175, 35, 1, '2017-04-28 18:06:30', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(176, 35, 1, '2017-05-03 16:28:39', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(177, 35, 68, '2017-05-04 05:36:51', 'Boatty PT', 'theboatty@hotmail.com', '10865532292 ', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(178, 35, 41, '2017-05-04 09:37:08', 'Sitichai', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 14.85, 8.5, 1.26225, 16.1122, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(179, 35, 32, '2017-05-23 07:48:33', 'Chaleamsuk1', 'chaleamsuk.tawelap@gmail.com', '0952314567', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 235.05, 8.5, 19.9792, 255.029, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(180, 35, 32, '2017-05-23 07:54:29', 'Chaleamsuk1', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(181, 35, 32, '2017-05-23 07:58:56', 'Chaleamsuk1', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(182, 35, 1, '2017-05-29 10:16:46', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(183, 35, 1, '2017-05-29 10:16:57', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(184, 35, 1, '2017-05-29 10:17:27', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(185, 35, 1, '2017-05-29 10:18:34', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 23.8, 8.5, 2.023, 25.823, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(186, 35, 1, '2017-05-29 10:21:21', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(187, 35, 1, '2017-05-29 10:23:05', 'Team Worapong', 'worapong@revenue-express.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 13.9, 8.5, 1.1815, 15.0815, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(188, 35, 47, '2017-05-30 00:09:17', 'Piyarat Toomsap', 'p.toomsap@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(189, 35, 89, '2017-05-30 00:17:47', 'piyarat test e-mail PT', 'piyaratt_t@yahoo.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(190, 35, 1, '2017-05-30 01:35:01', 'Team Worapong', 'worapong@revenue-express.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 6.95, 8.5, 0.59075, 7.54075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(191, 35, 1, '2017-05-30 01:51:20', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(192, 35, 1, '2017-05-30 01:51:55', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(193, 35, 1, '2017-05-30 01:52:45', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(194, 35, 1, '2017-05-30 01:53:24', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(195, 35, 1, '2017-05-30 01:54:32', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(196, 35, 1, '2017-05-30 01:55:54', 'Team Worapong', 'worapong@revenue-express.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(197, 35, 1, '2017-05-30 01:59:04', 'Team Worapong', 'worapong@revenue-express.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(198, 35, 1, '2017-05-30 02:04:41', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(199, 35, 47, '2017-05-30 02:57:45', 'Piyarat Toomsap', 'p.toomsap@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 28.75, 8.5, 2.44375, 31.1938, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(200, 35, 47, '2017-05-30 03:23:06', 'Piyarat Toomsap', 'p.toomsap@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 6.95, 8.5, 0.59075, 7.54075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(201, 35, 90, '2017-05-30 03:29:46', 'Boatty PT', 'theboatty@hotmail.com', '66863304545', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 20.85, 8.5, 1.77225, 22.6222, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(202, 35, 94, '2017-05-31 10:24:19', 'Kritsamon Salayut', 'kritsamonsalayut@gmail.com', '0991234567', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 53.5, 8.5, 4.5475, 58.0475, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(203, 35, 96, '2017-06-02 07:31:43', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(204, 35, 96, '2017-06-02 07:31:45', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(205, 35, 96, '2017-06-02 07:31:45', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(206, 35, 96, '2017-06-02 07:31:45', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(207, 35, 96, '2017-06-02 07:31:46', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(208, 35, 96, '2017-06-02 07:31:47', 'Kannika Chaipun', 'kannika@revenue-express.com', '0923248331', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 34.65, 8.5, 2.94525, 37.5952, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(209, 35, 98, '2017-06-02 14:27:30', 'Atom AP', 'aa@hotmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 29.7, 8.5, 2.5245, 32.2245, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(210, 35, 98, '2017-06-02 14:29:11', 'Atom AP', 'aa@hotmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4.95, 8.5, 0.42075, 5.37075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(211, 35, 98, '2017-06-02 14:29:32', 'Atom AP', 'aa@hotmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(212, 35, 103, '2017-06-05 11:42:42', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 6.95, 8.5, 0.59075, 7.54075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(213, 35, 103, '2017-06-05 11:42:44', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 6.95, 8.5, 0.59075, 7.54075, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(214, 35, 94, '2017-06-14 07:48:40', 'Kritsamon Salayut', 'aasss@gmail.com', '1223444555', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(215, 105, 41, '2017-06-15 03:44:45', 'SITI', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(216, 105, 32, '2017-06-15 09:45:52', 'นายเจ', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 61, 0, 0, 61, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(217, 35, 103, '2017-06-17 06:32:42', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46.55, 8.5, 3.95675, 50.5067, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(218, 35, 103, '2017-06-17 06:32:44', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46.55, 8.5, 3.95675, 50.5067, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(219, 35, 103, '2017-06-17 06:32:45', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46.55, 8.5, 3.95675, 50.5067, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(220, 35, 103, '2017-06-17 06:32:45', 'Teera Pong', 'teerawat@revenue-express.com', '0834246126', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46.55, 8.5, 3.95675, 50.5067, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(221, 35, 32, '2017-06-20 05:05:35', 'นายเจ', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 13.9, 8.5, 1.1815, 15.0815, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(222, 105, 32, '2017-06-20 05:26:57', 'นายเจ', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(223, 105, 32, '2017-06-20 05:27:50', 'นายเจ', 'chaleamsuk.tawelap@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 28.5, 0, 0, 28.5, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(224, 35, 1, '2017-06-28 07:34:06', 'Team Worapong', 'worapong@revenue-express.com', '', '', '', '', '', '', 'pickup', 0, 11.9, 8.5, 1.0115, 12.9115, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(225, 35, 83, '2017-06-28 07:39:45', 'MIX', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 9.9, 8.5, 0.8415, 10.7415, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(226, 105, 109, '2017-06-28 10:30:09', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(227, 32, 109, '2017-08-25 05:07:53', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(228, 32, 109, '2017-08-25 05:07:56', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(229, 32, 109, '2017-08-25 05:08:06', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(230, 32, 109, '2017-08-25 05:13:01', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(231, 105, 109, '2017-08-25 05:15:48', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(232, 105, 109, '2017-08-25 07:51:15', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(233, 105, 109, '2017-08-25 07:52:09', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(234, 105, 109, '2017-08-25 07:53:55', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(235, 105, 109, '2017-08-25 07:56:25', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(236, 105, 109, '2017-08-25 08:01:29', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(237, 105, 109, '2017-08-25 08:06:03', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(238, 105, 109, '2017-08-25 08:06:05', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(239, 105, 109, '2017-08-25 08:07:16', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(240, 105, 109, '2017-08-25 08:16:01', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(241, 105, 109, '2017-08-25 08:48:52', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(242, 105, 109, '2017-08-25 08:51:21', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(243, 105, 6, '2017-08-25 08:56:35', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(244, 105, 109, '2017-08-25 09:40:18', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(245, 105, 109, '2017-08-25 09:44:30', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(246, 105, 6, '2017-08-25 10:07:04', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(247, 105, 6, '2017-08-25 10:07:48', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(248, 105, 6, '2017-08-25 11:55:03', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(249, 105, 109, '2017-08-25 12:01:46', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(250, 105, 109, '2017-08-25 12:02:27', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(251, 105, 109, '2017-08-25 12:04:50', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(252, 105, 109, '2017-08-25 12:09:25', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(253, 105, 109, '2017-08-25 12:11:30', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(254, 105, 109, '2017-08-25 12:11:59', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(255, 105, 109, '2017-08-25 12:17:35', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(256, 105, 109, '2017-08-25 12:24:55', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(257, 105, 109, '2017-08-25 12:25:36', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(258, 105, 109, '2017-08-25 12:27:35', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(259, 105, 109, '2017-08-25 12:31:36', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(260, 105, 109, '2017-08-25 12:33:03', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(261, 105, 109, '2017-08-25 12:33:34', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(262, 105, 109, '2017-08-25 12:34:44', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(263, 105, 109, '2017-08-25 12:36:52', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(264, 105, 109, '2017-08-25 14:09:54', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(265, 105, 109, '2017-08-25 14:28:35', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(266, 105, 109, '2017-08-28 04:04:22', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(267, 105, 109, '2017-08-28 04:05:06', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(268, 105, 109, '2017-08-28 05:21:29', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(269, 105, 109, '2017-08-28 05:21:53', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(270, 105, 109, '2017-08-28 07:48:08', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(271, 105, 109, '2017-08-29 03:40:38', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(272, 105, 109, '2017-08-29 03:53:20', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(273, 105, 109, '2017-08-29 03:59:01', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(274, 105, 109, '2017-08-29 04:00:27', 'สิทธิชัย ', 'meeed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(275, 105, 109, '2017-08-29 04:07:52', 'สิทธิชั', 'meeed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(276, 105, 109, '2017-08-29 04:09:27', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(277, 105, 109, '2017-08-29 04:09:34', 'สิทธิชัย', 'meeed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(278, 105, 109, '2017-08-29 04:16:12', 'สิทธิชั', 'yyyyy@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(279, 105, 109, '2017-08-29 04:17:59', 'สิทธิชัย', 'mmmmm@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(280, 105, 109, '2017-08-29 04:19:05', 'สิทธิชัย', 'nnnnnn@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(281, 105, 109, '2017-08-29 04:20:08', 'สิทธิชั', 'thgjjh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(282, 105, 109, '2017-08-29 04:31:41', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '182090-1659241512', 1, '2017-08-29 09:00:34'),
(283, 105, 109, '2017-08-29 04:33:21', 'สิทธิชัย ', 'tyytt@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(284, 105, 109, '2017-08-29 04:45:14', 'สิทธิชัย', 'hhhhhh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(285, 105, 109, '2017-08-29 04:47:02', 'สิทธิชัย', 'hhhh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(286, 105, 109, '2017-08-29 04:50:00', 'สิทธิชัย', 'gggg@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(287, 105, 6, '2017-08-29 04:52:30', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(288, 105, 6, '2017-08-29 04:59:46', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1211111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(289, 105, 109, '2017-08-29 05:03:35', 'สิทธิชัย', 'ffffvv@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(290, 105, 109, '2017-08-29 05:05:25', 'สิทธิชัย', 'yyyy@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(291, 105, 6, '2017-08-29 05:07:20', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(292, 105, 109, '2017-08-29 05:08:39', 'สิทธิชัย', 'uuuu@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(293, 105, 6, '2017-08-29 05:12:31', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(294, 105, 109, '2017-08-29 05:15:39', 'สิทธิชัย ', 'yyyy@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(295, 105, 6, '2017-08-29 05:16:40', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(296, 105, 109, '2017-08-29 05:18:04', 'สิทธิชัย', 'uuuuuu@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(297, 105, 6, '2017-08-29 05:20:00', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(298, 105, 109, '2017-08-29 05:20:48', 'สิทธิชัย ', 'yyyy@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(299, 105, 6, '2017-08-29 05:21:27', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(300, 105, 6, '2017-08-29 05:21:57', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(301, 105, 109, '2017-08-29 05:22:45', 'สิทธิชัย', 'hhhh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(302, 105, 109, '2017-08-29 05:22:54', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(303, 105, 109, '2017-08-29 05:29:34', 'Team Worapong', 'worapong@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(304, 105, 6, '2017-08-29 05:31:15', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(305, 105, 6, '2017-08-29 05:31:48', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(306, 105, 6, '2017-08-29 05:32:24', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(307, 105, 6, '2017-08-29 05:32:32', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(308, 105, 6, '2017-08-29 05:32:34', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(309, 105, 6, '2017-08-29 05:32:37', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(310, 105, 109, '2017-08-29 05:34:17', 'สิทธิชัย', 'tttt@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(311, 105, 6, '2017-08-29 05:37:16', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111114', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(312, 105, 6, '2017-08-29 05:40:38', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(313, 105, 6, '2017-08-29 06:06:07', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(314, 105, 6, '2017-08-29 06:07:02', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(315, 105, 6, '2017-08-29 06:10:45', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(316, 105, 109, '2017-08-29 07:06:03', 'สิทธิชัย', 'mm@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(317, 105, 109, '2017-08-29 07:10:12', 'ggg', 'ggg@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(318, 105, 6, '2017-08-29 07:10:15', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(319, 105, 109, '2017-08-29 07:14:43', 'สิทธิชัย', 'meed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(320, 105, 6, '2017-08-29 07:20:17', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(321, 105, 109, '2017-08-29 07:22:59', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(322, 105, 109, '2017-08-29 07:29:58', 'สิทธิชัย', 'meed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(323, 105, 6, '2017-08-29 07:30:05', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(324, 105, 109, '2017-08-29 07:31:30', 'สิทธิชัย', 'mfff@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(325, 105, 6, '2017-08-29 07:35:09', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(326, 105, 109, '2017-08-29 07:37:58', 'สิทธิชัย', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(327, 105, 6, '2017-08-29 07:46:32', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(328, 105, 109, '2017-08-29 07:47:24', 'สิทธิชัย', 'mmmm@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(329, 105, 109, '2017-08-29 07:50:46', 'สิทธิชัย', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(330, 105, 109, '2017-08-29 07:53:34', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(331, 105, 6, '2017-08-29 07:54:41', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(332, 105, 109, '2017-08-29 07:55:10', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(333, 105, 6, '2017-08-29 07:55:48', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(334, 105, 109, '2017-08-29 07:57:34', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(335, 105, 109, '2017-08-29 07:59:53', 'สิทธิชั', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(336, 105, 109, '2017-08-29 08:05:29', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '001718-1659232094', 1, '2017-08-29 08:06:30'),
(337, 105, 6, '2017-08-29 08:10:03', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(338, 105, 6, '2017-08-29 08:14:17', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(339, 105, 6, '2017-08-29 08:17:18', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '003655-1659234611', 1, '2017-08-29 08:18:49'),
(340, 105, 109, '2017-08-29 08:18:09', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(341, 105, 109, '2017-08-29 08:19:36', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 3, 0, 0, 3, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(342, 105, 109, '2017-08-29 08:25:36', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(343, 105, 6, '2017-08-29 08:49:11', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(344, 105, 6, '2017-08-29 08:55:51', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(345, 105, 109, '2017-08-30 05:39:56', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(346, 105, 109, '2017-08-30 05:50:45', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(347, 105, 109, '2017-08-30 05:53:07', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(348, 105, 109, '2017-08-30 05:55:55', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(349, 105, 6, '2017-08-31 08:24:25', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(350, 105, 109, '2017-08-31 08:34:35', 'สิทธิชัย ชุ่มใจ', 'meed@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 4, 0, 0, 4, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(351, 105, 41, '2017-08-31 10:56:18', 'MIX E-MAIL', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(352, 105, 6, '2017-09-01 04:21:32', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(353, 105, 6, '2017-09-01 04:24:05', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(354, 105, 109, '2017-09-01 04:40:10', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 18, 0, 0, 18, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(355, 105, 109, '2017-09-01 05:12:04', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(356, 105, 109, '2017-09-01 05:18:22', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(357, 105, 109, '2017-09-01 05:20:54', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(358, 105, 109, '2017-09-01 05:33:57', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(359, 105, 109, '2017-09-01 05:36:47', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(360, 105, 109, '2017-09-01 05:40:01', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(361, 105, 109, '2017-09-01 05:42:59', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(362, 105, 109, '2017-09-01 06:11:50', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(363, 105, 109, '2017-09-01 06:15:53', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(364, 105, 109, '2017-09-01 06:18:33', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(365, 105, 109, '2017-09-01 06:20:19', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(366, 105, 109, '2017-09-01 07:23:04', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(367, 105, 109, '2017-09-01 07:38:37', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(368, 105, 109, '2017-09-01 07:55:27', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(369, 105, 109, '2017-09-01 07:59:11', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(370, 105, 109, '2017-09-01 08:07:36', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(371, 105, 109, '2017-09-01 08:10:53', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(372, 105, 109, '2017-09-01 08:13:57', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(373, 105, 109, '2017-09-01 08:16:07', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(374, 105, 109, '2017-09-01 08:17:54', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(375, 105, 109, '2017-09-01 08:25:08', 'สิทธิชัย', 'fgggh@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(376, 105, 109, '2017-09-01 08:28:04', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(377, 105, 109, '2017-09-01 08:37:00', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(378, 105, 109, '2017-09-01 08:38:31', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(379, 105, 109, '2017-09-01 08:40:27', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(380, 105, 109, '2017-09-01 08:46:02', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(381, 105, 109, '2017-09-01 09:05:09', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(382, 105, 109, '2017-09-01 09:18:57', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(383, 105, 109, '2017-09-01 09:22:27', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(384, 105, 109, '2017-09-01 09:26:25', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(385, 105, 109, '2017-09-01 09:31:50', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(386, 105, 109, '2017-09-01 09:48:05', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(387, 105, 109, '2017-09-01 09:54:13', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(388, 105, 109, '2017-09-01 10:02:31', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(389, 105, 6, '2017-09-01 10:21:01', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(390, 105, 109, '2017-09-01 10:24:01', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(391, 105, 6, '2017-09-01 10:30:31', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(392, 105, 6, '2017-09-01 10:35:24', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(393, 105, 6, '2017-09-01 10:43:25', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(394, 105, 6, '2017-09-01 10:47:18', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(395, 105, 6, '2017-09-01 10:50:49', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(396, 105, 6, '2017-09-01 10:53:48', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(397, 105, 6, '2017-09-01 10:55:20', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(398, 105, 6, '2017-09-01 11:05:30', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(399, 105, 6, '2017-09-01 11:09:55', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(400, 105, 6, '2017-09-01 11:13:23', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(401, 105, 6, '2017-09-01 11:23:36', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(402, 105, 6, '2017-09-01 11:37:11', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(403, 105, 6, '2017-09-01 11:54:52', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01');
INSERT INTO `zzz_foods_order` (`order_id`, `order_bssh_id`, `order_memh_id`, `order_date`, `order_name`, `order_email`, `order_tel`, `order_street`, `order_address`, `order_city`, `order_state`, `order_zipcode`, `order_delivery_type`, `order_delivery_charge`, `order_sub_total`, `order_tax_rate`, `order_tax_amount`, `order_grand_total`, `order_qty_total`, `order_authencode`, `order_payment`, `order_pay_date`) VALUES
(404, 105, 6, '2017-09-01 11:57:02', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(405, 105, 6, '2017-09-01 12:11:37', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(406, 105, 6, '2017-09-01 12:13:41', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1121122', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(407, 105, 6, '2017-09-01 12:18:15', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(408, 105, 6, '2017-09-01 12:21:59', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(409, 105, 6, '2017-09-01 12:23:43', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(410, 105, 109, '2017-09-04 04:44:37', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(411, 105, 109, '2017-09-04 05:04:18', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(412, 105, 109, '2017-09-04 05:13:44', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(413, 105, 6, '2017-09-04 05:20:40', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11112', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(414, 105, 6, '2017-09-04 05:22:25', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11112', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(415, 105, 109, '2017-09-04 05:25:47', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(416, 105, 6, '2017-09-04 05:32:30', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(417, 105, 109, '2017-09-04 05:38:56', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(418, 105, 6, '2017-09-04 05:39:10', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '12112', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(419, 105, 6, '2017-09-04 05:45:54', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(420, 105, 6, '2017-09-04 05:47:47', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(421, 105, 6, '2017-09-04 05:55:27', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(422, 105, 6, '2017-09-04 06:00:16', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(423, 105, 6, '2017-09-04 06:04:56', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '211112', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(424, 105, 6, '2017-09-04 08:42:06', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(425, 105, 6, '2017-09-04 08:57:35', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(426, 105, 6, '2017-09-04 09:10:44', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(427, 105, 6, '2017-09-04 09:16:57', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(428, 105, 6, '2017-09-04 09:34:55', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(429, 105, 109, '2017-09-04 09:46:28', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(430, 105, 6, '2017-09-04 09:46:46', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(431, 105, 109, '2017-09-04 09:57:05', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(432, 105, 109, '2017-09-04 09:58:49', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(433, 105, 6, '2017-09-04 09:59:15', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(434, 105, 6, '2017-09-04 10:08:30', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '11111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(435, 105, 6, '2017-09-04 10:10:47', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '21111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(436, 105, 6, '2017-09-04 10:20:16', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(437, 105, 6, '2017-09-04 10:21:09', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(438, 105, 109, '2017-09-04 10:23:58', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(439, 105, 109, '2017-09-04 10:28:58', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(440, 105, 6, '2017-09-04 10:34:49', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(441, 105, 6, '2017-09-04 10:48:21', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(442, 105, 109, '2017-09-04 10:49:33', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(443, 105, 109, '2017-09-04 10:55:13', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(444, 105, 6, '2017-09-04 10:59:22', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '1111111', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(445, 105, 109, '2017-09-05 04:42:19', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(446, 105, 109, '2017-09-05 04:54:51', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(447, 105, 109, '2017-09-05 04:56:32', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(448, 105, 109, '2017-09-05 05:04:07', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(449, 105, 109, '2017-09-05 05:12:01', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(450, 105, 109, '2017-09-05 05:17:33', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(451, 105, 109, '2017-09-05 05:20:31', 'สิทธิชัย ชุ่มใจ', 'meed96@gmail.com', '', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(452, 105, 6, '2017-10-04 06:40:37', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '0000000000', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 2, 0, 0, 2, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(453, 105, 6, '2017-10-04 06:50:18', 'Boripat Petchkaew', 'mr.boripat2@gmail.com', '000000', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 1, 0, 0, 1, 0, '000000-0000000000', 0, '2017-01-01 00:00:01'),
(454, 105, 109, '2017-11-30 03:56:43', 'Team Worapong', 'boripat@revenue-express.com', '0869293050', NULL, NULL, NULL, NULL, NULL, 'pickup', 0, 46, 0, 0, 46, 0, '000000-0000000000', 0, '2017-01-01 00:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_foods_order_list`
--

CREATE TABLE `zzz_foods_order_list` (
  `list_id` int(11) NOT NULL,
  `list_order_id` int(11) NOT NULL DEFAULT '0',
  `list_bssh_id` int(11) NOT NULL DEFAULT '0',
  `list_bsih_id` int(11) NOT NULL DEFAULT '0',
  `list_detail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `list_instruction` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_price` float NOT NULL DEFAULT '0',
  `list_qty` smallint(6) NOT NULL DEFAULT '0',
  `list_total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_foods_order_list`
--

INSERT INTO `zzz_foods_order_list` (`list_id`, `list_order_id`, `list_bssh_id`, `list_bsih_id`, `list_detail`, `list_instruction`, `list_price`, `list_qty`, `list_total`) VALUES
(1, 1, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(2, 1, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(3, 2, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(4, 2, 35, 3, 'Crispy Thai Spring Roll', 'no chicken', 4.95, 2, 9.9),
(5, 3, 35, 4, 'Chicken Wing', 'no chilli', 6.95, 2, 13.9),
(6, 3, 35, 1, 'Tom Yum Shrimp Soup', 'with coconut milk', 4.95, 1, 4.95),
(7, 4, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(8, 5, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(9, 6, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(10, 7, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(11, 8, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(12, 9, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(13, 10, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(14, 11, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(15, 12, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(16, 13, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(17, 14, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(18, 15, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(19, 16, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(20, 17, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(21, 18, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(22, 18, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(23, 18, 35, 1, 'Tom Yum Shrimp Soup', 'with coconut milk', 4.95, 1, 4.95),
(24, 19, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(25, 19, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(26, 20, 32, 5, 'Tempura', 'ืno powder', 8, 5, 40),
(27, 20, 32, 6, 'Gyoza', '', 8, 6, 48),
(28, 21, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(29, 22, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(30, 22, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(31, 22, 35, 1, 'Tom Yum Shrimp Soup', 'no coconut milk', 4.95, 1, 4.95),
(32, 22, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(33, 23, 32, 6, 'Gyoza', '', 8, 1, 8),
(34, 24, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(35, 24, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(36, 25, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(37, 26, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(38, 33, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(39, 34, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(40, 35, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(41, 36, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(42, 37, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(43, 38, 32, 1, 'aaa', 'aaaaa', 12.5, 2, 25),
(44, 39, 32, 1, 'aaa', 'aaaaa', 12.5, 2, 25),
(45, 40, 32, 1, 'aaa', 'aaaaa', 12.5, 2, 25),
(46, 41, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(47, 42, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(48, 43, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(49, 44, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(50, 45, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(51, 46, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(52, 47, 32, 6, 'Gyoza', 'null', 8, 2, 16),
(53, 48, 32, 6, 'Gyoza', 'null', 8, 5, 40),
(54, 48, 32, 7, 'YAKISOBA', 'null', 11, 3, 33),
(55, 49, 32, 5, 'Tempura', 'null', 8, 1, 8),
(56, 49, 32, 6, 'Gyoza', 'null', 8, 1, 8),
(57, 49, 32, 8, 'YAKI UDON', 'null', 11, 4, 44),
(58, 50, 32, 5, 'Tempura', 'null', 8, 1, 8),
(59, 50, 32, 6, 'Gyoza', 'null', 8, 1, 8),
(60, 50, 32, 8, 'YAKI UDON', 'null', 11, 4, 44),
(61, 51, 32, 1, 'Gyoza', 'a', 2, 2, 4),
(62, 52, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(63, 53, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 6, 29.7),
(64, 54, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(65, 54, 35, 4, 'Chicken Wing', 'null', 6.95, 8, 55.6),
(66, 55, 35, 4, 'Chicken Wing', 'null', 6.95, 4, 27.8),
(67, 55, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 3, 14.85),
(68, 56, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(69, 56, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 1, 4.95),
(70, 57, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(71, 58, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(72, 59, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(73, 60, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(74, 61, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(75, 62, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(76, 62, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(77, 62, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(78, 62, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(79, 63, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(80, 63, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(81, 63, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(82, 63, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(83, 64, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(84, 64, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(85, 64, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(86, 64, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(87, 65, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(88, 65, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(89, 65, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(90, 65, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(91, 66, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(92, 66, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(93, 66, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(94, 66, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(95, 67, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(96, 67, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(97, 67, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(98, 67, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(99, 68, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 3, 14.85),
(100, 68, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(101, 68, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(102, 68, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(103, 69, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(104, 69, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(105, 70, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(106, 71, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(107, 71, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(108, 72, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(109, 73, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(110, 74, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(111, 75, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(112, 75, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(113, 76, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(114, 76, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(115, 77, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(116, 77, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(117, 78, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(118, 78, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(119, 79, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(120, 79, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(121, 80, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(122, 81, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(123, 82, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(124, 83, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(125, 84, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(126, 85, 35, 4, 'Chicken Wing', 'null', 6.95, 2, 13.9),
(127, 86, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(128, 87, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 2, 9.9),
(129, 88, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 3, 14.85),
(130, 89, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 10, 49.5),
(131, 89, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 4, 19.8),
(132, 89, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 4, 19.8),
(133, 90, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 10, 49.5),
(134, 90, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 4, 19.8),
(135, 90, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 4, 19.8),
(136, 91, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 7, 34.65),
(137, 91, 35, 4, 'Chicken Wing', 'null', 6.95, 7, 48.65),
(138, 92, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 7, 34.65),
(139, 92, 35, 4, 'Chicken Wing', 'null', 6.95, 7, 48.65),
(140, 93, 35, 1, 'Tom Yum Shrimp Soup', 'null', 4.95, 2, 9.9),
(141, 94, 32, 5, 'Tempura', 'null', 8, 7, 56),
(142, 94, 32, 6, 'Gyoza', 'null', 8, 6, 48),
(143, 95, 35, 2, 'Tom Ka Chicken Soup', 'null', 4.95, 10, 49.5),
(144, 96, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 4, 19.8),
(145, 97, 35, 4, 'Chicken Wing', 'null', 6.95, 5, 34.75),
(146, 98, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(147, 98, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(148, 99, 35, 3, 'Crispy Thai Spring Roll', 'null', 4.95, 1, 4.95),
(149, 99, 35, 4, 'Chicken Wing', 'null', 6.95, 1, 6.95),
(150, 100, 35, 3, 'Crispy Thai Spring Roll', 'testnull', 4.95, 1, 4.95),
(151, 101, 35, 3, 'Crispy Thai Spring Roll', 'test1null', 4.95, 1, 4.95),
(152, 102, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(153, 103, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(154, 104, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(155, 104, 32, 2, 'temp', 'อร่อยๆ', 20, 1, 20),
(156, 105, 32, 5, 'Tempura', '', 8, 1, 8),
(157, 105, 32, 7, 'YAKISOBA', '', 11, 2, 22),
(158, 106, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 4, 19.8),
(159, 107, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(160, 108, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(161, 109, 3, 0, 'Optional("Crispy Thai Spring Roll")', 'Optional("")', 0, 0, 0),
(162, 110, 35, 0, 'Optional("Crispy Thai Spring Roll")', 'Optional("")', 0, 0, 0),
(163, 111, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(164, 112, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(165, 113, 35, 4, 'Chicken Wing', '', 6.95, 3, 20.85),
(166, 114, 35, 4, 'Chicken Wing', '', 6.95, 5, 34.75),
(167, 115, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 6, 29.7),
(168, 116, 35, 4, 'Chicken Wing', '', 6.95, 5, 34.75),
(169, 117, 35, 4, 'Chicken Wing', '', 6.95, 3, 20.85),
(170, 118, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(171, 118, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(172, 119, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(173, 119, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 3, 14.85),
(174, 120, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(175, 121, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(176, 121, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(177, 122, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(178, 123, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(179, 123, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(180, 124, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(181, 125, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(182, 126, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 7, 34.65),
(183, 126, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 5, 24.75),
(184, 126, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 4, 19.8),
(185, 126, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(186, 127, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(187, 128, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(188, 128, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(189, 129, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 50, 247.5),
(190, 129, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 50, 247.5),
(191, 129, 35, 4, 'Chicken Wing', '', 6.95, 50, 347.5),
(192, 129, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 50, 247.5),
(193, 130, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 6, 29.7),
(194, 131, 35, 4, 'Chicken Wing', 'ไม่กินเนื้อ', 6.95, 3, 20.85),
(195, 131, 35, 1, 'Tom Yum Shrimp Soup', 'ไม่เอากุ้ง', 4.95, 1, 4.95),
(196, 132, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(197, 133, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(198, 134, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(199, 135, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(200, 136, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(201, 137, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(202, 138, 32, 6, 'Gyoza', '', 8, 1, 8),
(203, 138, 32, 5, 'Tempura', '', 8, 1, 8),
(204, 139, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(205, 140, 35, 3, 'Crispy Thai Spring Roll', 'เพิ่มเติม', 4.95, 3, 14.85),
(206, 141, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(207, 142, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(208, 143, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(209, 143, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(210, 144, 35, 3, 'Crispy Thai Spring Roll', 'เผ็ดน้อย', 4.95, 3, 14.85),
(211, 144, 35, 4, 'Chicken Wing', '', 6.95, 4, 27.8),
(212, 145, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(213, 146, 35, 3, 'Crispy Thai Spring Roll', 'ไม่เอาไก่', 4.95, 2, 9.9),
(214, 147, 35, 4, 'Chicken Wing', 'good', 6.95, 3, 20.85),
(215, 147, 35, 2, 'Tom Ka Chicken Soup', 'very good', 4.95, 4, 19.8),
(216, 148, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(217, 148, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(218, 149, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(219, 149, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(220, 150, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(221, 151, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 2, 9.9),
(222, 151, 35, 4, 'Chicken Wing', 'เอาไหม้ไหม้', 6.95, 1, 6.95),
(223, 152, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(224, 152, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(225, 152, 35, 1, 'Tom Yum Shrimp Soup', 'น้ำข้น', 4.95, 2, 9.9),
(226, 153, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(227, 153, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(228, 154, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(229, 154, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(230, 155, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(231, 155, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(232, 156, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(233, 156, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 4, 19.8),
(234, 157, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(235, 157, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(236, 158, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(237, 158, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 2, 9.9),
(238, 159, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(239, 160, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(240, 160, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(241, 161, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 6, 29.7),
(242, 162, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(243, 163, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(244, 164, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(245, 164, 35, 1, 'Tom Yum Shrimp Soup', 'with coconut milk', 4.95, 1, 4.95),
(246, 165, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(247, 166, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(248, 166, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(249, 166, 35, 1, 'Tom Yum Shrimp Soup', 'with coconut milk', 4.95, 1, 4.95),
(250, 166, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(251, 167, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(252, 168, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(253, 168, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(254, 169, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(255, 170, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(256, 170, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(257, 171, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(258, 172, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(259, 172, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(260, 173, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(261, 174, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(262, 174, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(263, 175, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(264, 175, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(265, 176, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(266, 176, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(267, 177, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(268, 178, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 3, 14.85),
(269, 179, 35, 4, 'Chicken Wing', '', 6.95, 21, 145.95),
(270, 179, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 9, 44.55),
(271, 179, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 9, 44.55),
(272, 180, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(273, 180, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(274, 181, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(275, 181, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(276, 182, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(277, 182, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(278, 183, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(279, 183, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(280, 184, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(281, 184, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(282, 185, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(283, 185, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(284, 186, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(285, 187, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(286, 188, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(287, 188, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(288, 189, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(289, 189, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(290, 190, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(291, 191, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(292, 192, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(293, 193, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(294, 194, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(295, 195, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(296, 196, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(297, 197, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(298, 197, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(299, 198, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(300, 199, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(301, 199, 35, 2, 'Tom Ka Chicken Soup', 'เผ็ดน้อยค่ะ ไก่หั่นชิ้นเล็กๆ', 4.95, 1, 4.95),
(302, 199, 35, 1, 'Tom Yum Shrimp Soup', 'เผ็ดน้อย เห็ดเยอะค่ะ', 4.95, 1, 4.95),
(303, 199, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(304, 200, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(305, 201, 35, 4, 'Chicken Wing', 'I can\'t see the instructions box when typing ', 6.95, 3, 20.85),
(306, 202, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(307, 202, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(308, 202, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(309, 202, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(310, 202, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(311, 203, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(312, 204, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(313, 205, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(314, 206, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(315, 207, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(316, 208, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 7, 34.65),
(317, 209, 35, 2, 'Tom Ka Chicken Soup', 'เค้าจะพิม แต่คีย์บอร์ดมันบังอ่ะ เสียใจ ต้องกกรีเทิร์นถึงจะอ่านได้', 4.95, 6, 29.7),
(318, 210, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 1, 4.95),
(319, 211, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(320, 212, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(321, 213, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(322, 214, 35, 3, 'Crispy Thai Spring Roll', 'ขอพิเศษ', 4.95, 1, 4.95),
(323, 214, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(324, 215, 105, 25, 'Main Item 3', '', 1, 2, 2),
(325, 216, 105, 22, 'Three Flavored Fish', '', 14, 4, 56),
(326, 216, 105, 25, 'Main Item 3', '', 1, 2, 2),
(327, 216, 105, 24, 'Main Item 2', '', 1, 3, 3),
(328, 217, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(329, 217, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(330, 217, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(331, 217, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(332, 218, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(333, 218, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(334, 218, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(335, 218, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(336, 219, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(337, 219, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(338, 219, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(339, 219, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(340, 220, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 5, 24.75),
(341, 220, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(342, 220, 35, 1, 'Tom Yum Shrimp Soup', '', 4.95, 2, 9.9),
(343, 220, 35, 2, 'Tom Ka Chicken Soup', '', 4.95, 1, 4.95),
(344, 221, 35, 4, 'Chicken Wing', '', 6.95, 2, 13.9),
(345, 222, 105, 25, 'Main Item 3', '', 1, 2, 2),
(346, 223, 105, 23, 'Main Menu1', '', 1, 1, 1),
(347, 223, 105, 25, 'Main Item 3', '', 1, 1, 1),
(348, 223, 105, 22, 'Three Flavored Fish', '', 14, 1, 14),
(349, 223, 105, 24, 'Main Item 2', '', 1, 1, 1),
(350, 223, 105, 21, 'Combination Fried Rice', '', 11.5, 1, 11.5),
(351, 224, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 1, 4.95),
(352, 224, 35, 4, 'Chicken Wing', '', 6.95, 1, 6.95),
(353, 225, 35, 3, 'Crispy Thai Spring Roll', '', 4.95, 2, 9.9),
(354, 226, 105, 23, 'Main Menu1', '', 1, 1, 1),
(355, 227, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(356, 228, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(357, 229, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(358, 230, 32, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(359, 231, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(360, 232, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(361, 233, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(362, 234, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(363, 235, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(364, 236, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(365, 237, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(366, 238, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(367, 239, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(368, 240, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(369, 241, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(370, 242, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(371, 243, 105, 23, 'Main Menu1', '', 1, 2, 2),
(372, 244, 105, 23, 'Main Menu1', '', 1, 1, 1),
(373, 245, 105, 23, 'Main Menu1', '', 1, 2, 2),
(374, 246, 105, 23, 'Main Menu1', '', 1, 2, 2),
(375, 247, 105, 23, 'Main Menu1', '', 1, 2, 2),
(376, 248, 105, 23, 'Main Menu1', '', 1, 2, 2),
(377, 249, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(378, 250, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(379, 251, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(380, 252, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(381, 253, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(382, 254, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(383, 255, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(384, 255, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(385, 256, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(386, 256, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(387, 257, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(388, 257, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(389, 258, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(390, 258, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(391, 259, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(392, 259, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(393, 260, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(394, 260, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(395, 261, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(396, 261, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(397, 262, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(398, 262, 105, 22, 'Menu2', '0', 11.5, 3, 34.5),
(399, 263, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(400, 263, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(401, 264, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(402, 264, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(403, 265, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(404, 265, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(405, 266, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(406, 266, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(407, 267, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(408, 267, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(409, 268, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(410, 268, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(411, 269, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(412, 269, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(413, 270, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(414, 270, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(415, 271, 105, 23, 'Main Menu1', '', 1, 1, 1),
(416, 272, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(417, 272, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(418, 273, 105, 23, 'Main Menu1', '', 1, 2, 2),
(419, 274, 105, 23, 'Main Menu1', '', 1, 2, 2),
(420, 275, 105, 23, 'Main Menu1', '', 1, 1, 1),
(421, 276, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(422, 276, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(423, 277, 105, 23, 'Main Menu1', '', 1, 1, 1),
(424, 278, 105, 23, 'Main Menu1', '', 1, 1, 1),
(425, 279, 105, 23, 'Main Menu1', '', 1, 1, 1),
(426, 280, 105, 23, 'Main Menu1', '', 1, 1, 1),
(427, 281, 105, 23, 'Main Menu1', '', 1, 1, 1),
(428, 282, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(429, 282, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(430, 283, 105, 23, 'Main Menu1', '', 1, 1, 1),
(431, 284, 105, 23, 'Main Menu1', '', 1, 1, 1),
(432, 285, 105, 23, 'Main Menu1', '', 1, 1, 1),
(433, 286, 105, 23, 'Main Menu1', '', 1, 1, 1),
(434, 287, 105, 23, 'Main Menu1', '', 1, 2, 2),
(435, 288, 105, 23, 'Main Menu1', '', 1, 2, 2),
(436, 289, 105, 23, 'Main Menu1', '', 1, 1, 1),
(437, 290, 105, 23, 'Main Menu1', '', 1, 1, 1),
(438, 291, 105, 23, 'Main Menu1', '', 1, 2, 2),
(439, 292, 105, 23, 'Main Menu1', '', 1, 1, 1),
(440, 293, 105, 23, 'Main Menu1', '', 1, 2, 2),
(441, 294, 105, 23, 'Main Menu1', '', 1, 1, 1),
(442, 295, 105, 23, 'Main Menu1', '', 1, 2, 2),
(443, 296, 105, 23, 'Main Menu1', '', 1, 1, 1),
(444, 297, 105, 23, 'Main Menu1', '', 1, 2, 2),
(445, 298, 105, 23, 'Main Menu1', '', 1, 1, 1),
(446, 299, 105, 23, 'Main Menu1', '', 1, 2, 2),
(447, 300, 105, 23, 'Main Menu1', '', 1, 2, 2),
(448, 301, 105, 23, 'Main Menu1', '', 1, 1, 1),
(449, 302, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(450, 303, 105, 1, 'Gyoza', 'เอากรอบๆ', 2, 2, 4),
(451, 304, 105, 23, 'Main Menu1', '', 1, 2, 2),
(452, 305, 105, 23, 'Main Menu1', '', 1, 2, 2),
(453, 306, 105, 23, 'Main Menu1', '', 1, 2, 2),
(454, 307, 105, 23, 'Main Menu1', '', 1, 2, 2),
(455, 308, 105, 23, 'Main Menu1', '', 1, 2, 2),
(456, 309, 105, 23, 'Main Menu1', '', 1, 2, 2),
(457, 310, 105, 23, 'Main Menu1', '', 1, 1, 1),
(458, 311, 105, 23, 'Main Menu1', '', 1, 2, 2),
(459, 312, 105, 23, 'Main Menu1', '', 1, 2, 2),
(460, 313, 105, 23, 'Main Menu1', '', 1, 2, 2),
(461, 314, 105, 23, 'Main Menu1', '', 1, 2, 2),
(462, 315, 105, 23, 'Main Menu1', '', 1, 2, 2),
(463, 316, 105, 23, 'Main Menu1', '', 1, 1, 1),
(464, 317, 105, 23, 'Main Menu1', '', 1, 1, 1),
(465, 318, 105, 23, 'Main Menu1', '', 1, 1, 1),
(466, 319, 105, 23, 'Main Menu1', '', 1, 1, 1),
(467, 320, 105, 23, 'Main Menu1', '', 1, 1, 1),
(468, 321, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(469, 321, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(470, 322, 105, 23, 'Main Menu1', '', 1, 1, 1),
(471, 323, 105, 23, 'Main Menu1', '', 1, 1, 1),
(472, 324, 105, 23, 'Main Menu1', '', 1, 1, 1),
(473, 325, 105, 23, 'Main Menu1', '', 1, 1, 1),
(474, 326, 105, 23, 'Main Menu1', '', 1, 1, 1),
(475, 327, 105, 23, 'Main Menu1', '', 1, 1, 1),
(476, 328, 105, 23, 'Main Menu1', '', 1, 1, 1),
(477, 329, 105, 23, 'Main Menu1', '', 1, 1, 1),
(478, 330, 105, 23, 'Main Menu1', '', 1, 1, 1),
(479, 331, 105, 23, 'Main Menu1', '', 1, 1, 1),
(480, 332, 105, 23, 'Main Menu1', '', 1, 1, 1),
(481, 333, 105, 23, 'Main Menu1', '', 1, 1, 1),
(482, 334, 105, 23, 'Main Menu1', '', 1, 1, 1),
(483, 335, 105, 23, 'Main Menu1', '', 1, 1, 1),
(484, 336, 105, 23, 'Main Menu1', '', 1, 1, 1),
(485, 337, 105, 23, 'Main Menu1', '', 1, 1, 1),
(486, 338, 105, 23, 'Main Menu1', '', 1, 1, 1),
(487, 339, 105, 23, 'Main Menu1', '', 1, 1, 1),
(488, 340, 105, 23, 'Main Menu1', '', 1, 1, 1),
(489, 340, 105, 25, 'Main Item 3', '', 1, 1, 1),
(490, 341, 105, 23, 'Main Menu1', '', 1, 1, 1),
(491, 341, 105, 25, 'Main Item 3', '', 1, 1, 1),
(492, 341, 105, 23, 'Main Menu1', '', 1, 1, 1),
(493, 342, 105, 23, 'Main Menu1', '', 1, 2, 2),
(494, 343, 105, 23, 'Main Menu1', '', 1, 1, 1),
(495, 344, 105, 23, 'Main Menu1', '', 1, 1, 1),
(496, 345, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(497, 345, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(498, 346, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(499, 346, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(500, 347, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(501, 347, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(502, 348, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(503, 348, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5),
(504, 349, 105, 23, 'Main Menu1', '', 1, 1, 1),
(505, 350, 105, 23, 'Main Menu1', '', 1, 1, 1),
(506, 350, 105, 25, 'Main Item 3', '', 1, 1, 1),
(507, 350, 105, 23, 'Main Menu1', '', 1, 1, 1),
(508, 350, 105, 23, 'Main Menu1', '', 1, 1, 1),
(509, 351, 105, 23, 'Main Menu1', '', 1, 1, 1),
(510, 352, 105, 23, 'Main Menu1', '', 1, 1, 1),
(511, 353, 105, 23, 'Main Menu1', '', 1, 1, 1),
(512, 354, 105, 23, 'Main Menu1', '', 1, 1, 1),
(513, 354, 105, 25, 'Main Item 3', '', 1, 1, 1),
(514, 354, 105, 23, 'Main Menu1', '', 1, 1, 1),
(515, 354, 105, 23, 'Main Menu1', '', 1, 1, 1),
(516, 354, 105, 22, 'Three Flavored Fish', '', 14, 1, 14),
(517, 355, 105, 23, 'Main Menu1', '', 1, 1, 1),
(518, 356, 105, 23, 'Main Menu1', '', 1, 1, 1),
(519, 357, 105, 23, 'Main Menu1', '', 1, 1, 1),
(520, 358, 105, 23, 'Main Menu1', '', 1, 1, 1),
(521, 359, 105, 23, 'Main Menu1', '', 1, 1, 1),
(522, 360, 105, 23, 'Main Menu1', '', 1, 1, 1),
(523, 361, 105, 23, 'Main Menu1', '', 1, 1, 1),
(524, 362, 105, 23, 'Main Menu1', '', 1, 1, 1),
(525, 363, 105, 23, 'Main Menu1', '', 1, 1, 1),
(526, 364, 105, 23, 'Main Menu1', '', 1, 1, 1),
(527, 365, 105, 23, 'Main Menu1', '', 1, 1, 1),
(528, 366, 105, 23, 'Main Menu1', '', 1, 1, 1),
(529, 367, 105, 23, 'Main Menu1', '', 1, 1, 1),
(530, 368, 105, 23, 'Main Menu1', '', 1, 1, 1),
(531, 369, 105, 23, 'Main Menu1', '', 1, 1, 1),
(532, 370, 105, 23, 'Main Menu1', '', 1, 1, 1),
(533, 371, 105, 23, 'Main Menu1', '', 1, 1, 1),
(534, 372, 105, 23, 'Main Menu1', '', 1, 1, 1),
(535, 373, 105, 23, 'Main Menu1', '', 1, 1, 1),
(536, 374, 105, 23, 'Main Menu1', '', 1, 1, 1),
(537, 375, 105, 23, 'Main Menu1', '', 1, 1, 1),
(538, 376, 105, 23, 'Main Menu1', '', 1, 1, 1),
(539, 377, 105, 23, 'Main Menu1', '', 1, 1, 1),
(540, 378, 105, 23, 'Main Menu1', '', 1, 1, 1),
(541, 379, 105, 23, 'Main Menu1', '', 1, 1, 1),
(542, 380, 105, 23, 'Main Menu1', '', 1, 1, 1),
(543, 381, 105, 23, 'Main Menu1', '', 1, 1, 1),
(544, 382, 105, 23, 'Main Menu1', '', 1, 1, 1),
(545, 383, 105, 23, 'Main Menu1', '', 1, 1, 1),
(546, 384, 105, 23, 'Main Menu1', '', 1, 1, 1),
(547, 385, 105, 23, 'Main Menu1', '', 1, 1, 1),
(548, 386, 105, 23, 'Main Menu1', '', 1, 1, 1),
(549, 387, 105, 23, 'Main Menu1', '', 1, 1, 1),
(550, 388, 105, 23, 'Main Menu1', '', 1, 1, 1),
(551, 389, 105, 23, 'Main Menu1', '', 1, 1, 1),
(552, 390, 105, 23, 'Main Menu1', '', 1, 1, 1),
(553, 391, 105, 23, 'Main Menu1', '', 1, 1, 1),
(554, 392, 105, 23, 'Main Menu1', '', 1, 1, 1),
(555, 393, 105, 23, 'Main Menu1', '', 1, 1, 1),
(556, 394, 105, 23, 'Main Menu1', '', 1, 1, 1),
(557, 395, 105, 23, 'Main Menu1', '', 1, 1, 1),
(558, 396, 105, 23, 'Main Menu1', '', 1, 1, 1),
(559, 397, 105, 23, 'Main Menu1', '', 1, 1, 1),
(560, 398, 105, 23, 'Main Menu1', '', 1, 1, 1),
(561, 399, 105, 23, 'Main Menu1', '', 1, 1, 1),
(562, 400, 105, 23, 'Main Menu1', '', 1, 1, 1),
(563, 401, 105, 23, 'Main Menu1', '', 1, 1, 1),
(564, 402, 105, 23, 'Main Menu1', '', 1, 1, 1),
(565, 403, 105, 23, 'Main Menu1', '', 1, 1, 1),
(566, 404, 105, 23, 'Main Menu1', '', 1, 1, 1),
(567, 405, 105, 23, 'Main Menu1', '', 1, 1, 1),
(568, 406, 105, 23, 'Main Menu1', '', 1, 1, 1),
(569, 407, 105, 23, 'Main Menu1', '', 1, 1, 1),
(570, 408, 105, 23, 'Main Menu1', '', 1, 1, 1),
(571, 409, 105, 23, 'Main Menu1', '', 1, 1, 1),
(572, 410, 105, 23, 'Main Menu1', '', 1, 1, 1),
(573, 411, 105, 23, 'Main Menu1', '', 1, 1, 1),
(574, 412, 105, 23, 'Main Menu1', '', 1, 1, 1),
(575, 413, 105, 23, 'Main Menu1', '', 1, 1, 1),
(576, 414, 105, 23, 'Main Menu1', '', 1, 1, 1),
(577, 415, 105, 23, 'Main Menu1', '', 1, 1, 1),
(578, 416, 105, 23, 'Main Menu1', '', 1, 1, 1),
(579, 417, 105, 23, 'Main Menu1', '', 1, 1, 1),
(580, 418, 105, 23, 'Main Menu1', '', 1, 1, 1),
(581, 419, 105, 23, 'Main Menu1', '', 1, 1, 1),
(582, 420, 105, 23, 'Main Menu1', '', 1, 1, 1),
(583, 421, 105, 23, 'Main Menu1', '', 1, 1, 1),
(584, 422, 105, 23, 'Main Menu1', '', 1, 1, 1),
(585, 423, 105, 23, 'Main Menu1', '', 1, 1, 1),
(586, 424, 105, 23, 'Main Menu1', '', 1, 1, 1),
(587, 425, 105, 23, 'Main Menu1', '', 1, 1, 1),
(588, 426, 105, 23, 'Main Menu1', '', 1, 1, 1),
(589, 427, 105, 23, 'Main Menu1', '', 1, 1, 1),
(590, 428, 105, 23, 'Main Menu1', '', 1, 1, 1),
(591, 429, 105, 23, 'Main Menu1', '', 1, 1, 1),
(592, 430, 105, 23, 'Main Menu1', '', 1, 1, 1),
(593, 431, 105, 23, 'Main Menu1', '', 1, 1, 1),
(594, 432, 105, 23, 'Main Menu1', '', 1, 1, 1),
(595, 433, 105, 23, 'Main Menu1', '', 1, 1, 1),
(596, 434, 105, 23, 'Main Menu1', '', 1, 1, 1),
(597, 435, 105, 23, 'Main Menu1', '', 1, 1, 1),
(598, 436, 105, 23, 'Main Menu1', '', 1, 1, 1),
(599, 437, 105, 23, 'Main Menu1', '', 1, 1, 1),
(600, 437, 105, 23, 'Main Menu1', '', 1, 1, 1),
(601, 438, 105, 23, 'Main Menu1', '', 1, 1, 1),
(602, 439, 105, 23, 'Main Menu1', '', 1, 1, 1),
(603, 440, 105, 23, 'Main Menu1', '', 1, 1, 1),
(604, 441, 105, 23, 'Main Menu1', '', 1, 1, 1),
(605, 442, 105, 23, 'Main Menu1', '', 1, 1, 1),
(606, 443, 105, 23, 'Main Menu1', '', 1, 1, 1),
(607, 444, 105, 23, 'Main Menu1', '', 1, 1, 1),
(608, 445, 105, 23, 'Main Menu1', '', 1, 1, 1),
(609, 446, 105, 23, 'Main Menu1', '', 1, 1, 1),
(610, 447, 105, 23, 'Main Menu1', '', 1, 1, 1),
(611, 448, 105, 23, 'Main Menu1', '', 1, 1, 1),
(612, 449, 105, 23, 'Main Menu1', '', 1, 1, 1),
(613, 450, 105, 23, 'Main Menu1', '', 1, 1, 1),
(614, 451, 105, 23, 'Main Menu1', '', 1, 1, 1),
(615, 452, 105, 24, 'Main Item 2', '', 1, 2, 2),
(616, 453, 105, 23, 'Main Menu1', '', 1, 1, 1),
(617, 454, 105, 21, 'Menu1', 'เอากรอบๆ', 5.75, 2, 11.5),
(618, 454, 105, 22, 'Menu2', 'เอากรอบๆ', 11.5, 3, 34.5);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_image_type`
--

CREATE TABLE `zzz_image_type` (
  `imgt_id` int(10) UNSIGNED NOT NULL,
  `imgt_bsth_id` int(10) UNSIGNED NOT NULL DEFAULT '101',
  `imgt_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `imgt_detail` text COLLATE utf8_unicode_ci,
  `imgt_path` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_image_type`
--

INSERT INTO `zzz_image_type` (`imgt_id`, `imgt_bsth_id`, `imgt_name`, `imgt_detail`, `imgt_path`) VALUES
(101, 101, 'Front', NULL, 'front'),
(102, 101, 'Environment', NULL, 'environment'),
(103, 101, 'Menu', NULL, 'menu'),
(104, 101, 'Foods & Drink', NULL, 'food'),
(105, 101, 'Others', NULL, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_item_option`
--

CREATE TABLE `zzz_item_option` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `item_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสรายการอาหาร',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อตัวเลือก',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียดตัวเลือก',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ประเภทตัวเลือก (radio/checkbox/dropdown)',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตัวเลือกของรายการอาหาร';

--
-- Dumping data for table `zzz_item_option`
--

INSERT INTO `zzz_item_option` (`id`, `item_id`, `name`, `detail`, `type`, `seq_num`, `active`) VALUES
(99, 99, 'How Spicy?', NULL, 0, 0, 1),
(100, 99, 'Make it with', NULL, 0, 0, 1),
(101, 99, 'Add Extra', NULL, 1, 0, 1),
(102, 101, 'Make it with', NULL, 0, 0, 1),
(103, 104, 'Make it with', NULL, 0, 0, 1),
(104, 105, 'Make it with', NULL, 0, 0, 1),
(105, 115, 'Make it with', NULL, 0, 0, 1),
(106, 101, 'How Spicy?', NULL, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_item_option_data`
--

CREATE TABLE `zzz_item_option_data` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `option_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสตัวเลือกรายการอาหาร',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อข้อมูลตัวเลือก',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'คำอธิบายข้อมูลตัวเลือก',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ข้อมูลตัวเลือกรายการอาหาร';

--
-- Dumping data for table `zzz_item_option_data`
--

INSERT INTO `zzz_item_option_data` (`id`, `option_id`, `name`, `detail`, `seq_num`, `active`) VALUES
(99, 99, 'Not Spicy', NULL, 0, 1),
(100, 99, 'Mild', NULL, 1, 1),
(101, 99, 'Medium', NULL, 2, 1),
(102, 99, 'Spicy', NULL, 3, 1),
(103, 99, 'Very Spicy', NULL, 4, 1),
(104, 100, 'Tofu', NULL, 0, 1),
(105, 100, 'Pork', NULL, 1, 1),
(106, 100, 'Chicken', NULL, 2, 1),
(107, 100, 'Meat', NULL, 3, 1),
(108, 101, 'Tofu', NULL, 0, 1),
(109, 101, 'Pork', NULL, 1, 1),
(110, 101, 'Chicken', NULL, 2, 1),
(111, 101, 'Meat', NULL, 3, 1),
(112, 102, 'Tofu', NULL, 1, 1),
(113, 102, 'Mix Veggies', NULL, 2, 1),
(114, 102, 'Chicken', NULL, 3, 1),
(115, 102, 'Pork', NULL, 4, 1),
(116, 102, 'Beef', NULL, 5, 1),
(117, 102, 'Soy Curls', NULL, 6, 1),
(118, 102, 'Seafood', NULL, 7, 1),
(119, 102, 'Shrimp', NULL, 8, 1),
(120, 102, 'Squid', NULL, 9, 1),
(121, 102, 'Scallop', NULL, 10, 1),
(122, 103, 'Tofu', NULL, 1, 1),
(123, 103, 'Mix Veggies', NULL, 2, 1),
(124, 103, 'Chicken', NULL, 3, 1),
(125, 103, 'Pork', NULL, 4, 1),
(126, 103, 'Beef', NULL, 5, 1),
(127, 103, 'Soy Curls', NULL, 6, 1),
(128, 103, 'Seafood', NULL, 7, 1),
(129, 103, 'Shrimp', NULL, 8, 1),
(130, 103, 'Squid', NULL, 9, 1),
(131, 103, 'Scallop', NULL, 10, 1),
(132, 104, 'Shrimp', NULL, 1, 1),
(133, 104, 'Tilapia', NULL, 2, 1),
(134, 104, 'Red Snapper Fish', NULL, 3, 1),
(135, 105, 'Tofu', NULL, 1, 1),
(136, 105, 'Mix Veggies', NULL, 2, 1),
(137, 105, 'Chicken', NULL, 3, 1),
(138, 105, 'Pork', NULL, 4, 1),
(139, 105, 'Beef', NULL, 5, 1),
(140, 105, 'Soy Curls', NULL, 6, 1),
(141, 105, 'Seafood', NULL, 7, 1),
(142, 105, 'Shrimp', NULL, 8, 1),
(143, 105, 'Squid', NULL, 9, 1),
(144, 105, 'Scallop', NULL, 10, 1),
(145, 106, 'No Spicy', NULL, 1, 1),
(146, 106, 'Spicy', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_item_option_default`
--

CREATE TABLE `zzz_item_option_default` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `option_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสตัวเลือกรายการอาหาร',
  `default_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสข้อมูลตัวเลือก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตั้งค่าตั้งต้นสำหรับตัวเลือกรายการอาหาร';

--
-- Dumping data for table `zzz_item_option_default`
--

INSERT INTO `zzz_item_option_default` (`id`, `option_id`, `default_id`) VALUES
(99, 99, 100),
(100, 100, 104),
(101, 102, 112),
(102, 103, 122),
(103, 104, 132),
(104, 105, 135),
(105, 106, 145);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_item_option_price`
--

CREATE TABLE `zzz_item_option_price` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `data_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสข้อมูลตัวเลือก',
  `size_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสขนาดรายการอาหาร',
  `price` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาข้อมุลตัวเลือก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ราคาข้อมูลตัวเลือกตามขนาด';

--
-- Dumping data for table `zzz_item_option_price`
--

INSERT INTO `zzz_item_option_price` (`id`, `data_id`, `size_id`, `price`) VALUES
(99, 99, 99, '0.00'),
(100, 100, 99, '0.00'),
(101, 101, 99, '0.00'),
(102, 102, 99, '0.00'),
(103, 103, 99, '0.00'),
(104, 104, 99, '0.00'),
(105, 105, 99, '0.00'),
(106, 106, 99, '0.00'),
(107, 107, 99, '1.00'),
(108, 108, 99, '2.00'),
(109, 109, 99, '2.00'),
(110, 110, 99, '2.00'),
(111, 111, 99, '3.00'),
(112, 99, 101, '1.00'),
(113, 99, 102, '2.00'),
(114, 112, 103, '0.00'),
(115, 113, 103, '0.00'),
(116, 114, 103, '0.00'),
(117, 115, 103, '0.00'),
(118, 116, 103, '0.00'),
(119, 117, 103, '1.00'),
(120, 118, 103, '4.00'),
(121, 119, 103, '3.00'),
(122, 120, 103, '3.00'),
(123, 121, 103, '3.00'),
(124, 145, 103, '0.00'),
(125, 146, 103, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_location_head`
--

CREATE TABLE `zzz_location_head` (
  `loch_id` int(10) UNSIGNED NOT NULL,
  `loch_pid` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'location parent id',
  `loch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'location name',
  `loch_abrv` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'abbrivation word',
  `loch_timezone` varchar(127) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Asia/Bangkok' COMMENT 'timezone'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_location_head`
--

INSERT INTO `zzz_location_head` (`loch_id`, `loch_pid`, `loch_name`, `loch_abrv`, `loch_timezone`) VALUES
(1, 0, 'CITY', NULL, 'America/City'),
(10, 1, 'United State of America', 'USA', 'America/United state of america'),
(11, 1, 'THAILAND', 'THAI', 'America/Thailand'),
(101, 10, 'ALABAMA', 'AL', 'America/Alabama'),
(102, 10, 'ALASKA', 'AK', 'America/Alaska'),
(103, 10, 'ARIZONA', 'AZ', 'America/Arizona'),
(104, 10, 'ARKANASA', 'AR', 'America/Arkanasa'),
(105, 10, 'CALIFONIA', 'CA', 'America/Califonia'),
(106, 10, 'COLORADO', 'CO', 'America/Colorado'),
(107, 10, 'CONNECTICUT', 'CT', 'America/Connecticut'),
(108, 10, 'DELAWARE', 'DE', 'America/Delaware'),
(109, 10, 'FLORIDA', 'FL', 'America/Florida'),
(110, 10, 'GEORGIA', 'GA', 'America/Georgia'),
(111, 10, 'HAWAII', 'HI', 'America/Hawaii'),
(112, 10, 'IDAHO', 'ID', 'America/Idaho'),
(113, 10, 'ILLINOIS', 'IL', 'America/Illinois'),
(114, 10, 'INDIANA', 'IN', 'America/Indiana'),
(115, 10, 'IOWA', 'IO', 'America/Iowa'),
(116, 10, 'KANSAS', 'KS', 'America/Kansas'),
(117, 10, 'KENTUCKY', 'KY', 'America/Kentucky'),
(118, 10, 'LOUISIANA', 'LA', 'America/Louisiana'),
(119, 10, 'MAINE', 'ME', 'America/Maine'),
(120, 10, 'MARYLAND', 'MD', 'America/Maryland'),
(121, 10, 'MASSACHUSETS', 'MA', 'America/Massachusets'),
(122, 10, 'MICHIGAN', 'MI', 'America/Michigan'),
(123, 10, 'MINESOTA', 'MN', 'America/Minesota'),
(124, 10, 'MISSISSIPPI', 'MS', 'America/Mississippi'),
(125, 10, 'MISSOURI', 'MO', 'America/Missouri'),
(126, 10, 'MONTANA', 'MT', 'America/Montana'),
(127, 10, 'NEBRASKA', 'NE', 'America/Nebraska'),
(128, 10, 'NEVADA', 'NV', 'America/Nevada'),
(129, 10, 'NEW HAMSPSHIRE', 'NH', 'America/New hamspshire'),
(130, 10, 'NEW JERSEY', 'NJ', 'America/New jersey'),
(131, 10, 'NEW MEXICO', 'NM', 'America/New mexico'),
(132, 10, 'NEW YORK', 'NY', 'America/New york'),
(133, 10, 'NORTH CAROLINA', 'NC', 'America/North carolina'),
(134, 10, 'NORTH DAKOTA', 'ND', 'America/North dakota'),
(135, 10, 'OHIO', 'OH', 'America/Ohio'),
(136, 10, 'OKLAHOMA', 'OK', 'America/Oklahoma'),
(137, 10, 'OREGON', 'OR', 'America/Los_Angeles'),
(138, 10, 'PENNSYLVANIA', 'PA', 'America/Pennsylvania'),
(139, 10, 'RHODE ISLAND', 'RI', 'America/Rhode island'),
(140, 10, 'SOUTH CAROLINA', 'SC', 'America/South carolina'),
(141, 10, 'SOUTH DAKOTA', 'SD', 'America/South dakota'),
(142, 10, 'TENNESSEE', 'TN', 'America/Tennessee'),
(143, 10, 'TEXAS', 'TX', 'America/Texas'),
(144, 10, 'UTAH', 'UT', 'America/Utah'),
(145, 10, 'VERMONT', 'VT', 'America/Vermont'),
(146, 10, 'VIGINIA', 'VA', 'America/Viginia'),
(147, 10, 'WASHINGTON', 'WA', 'America/Washington'),
(148, 10, 'WEST VIRGINIA', 'WV', 'America/West virginia'),
(149, 10, 'WISCONSIN', 'WI', 'America/Wisconsin'),
(150, 10, 'WYOMING', 'WY', 'America/Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_master_category`
--

CREATE TABLE `zzz_master_category` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '99' COMMENT 'ID ของ Parent',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทอาหาร',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_master_timezone`
--

CREATE TABLE `zzz_master_timezone` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `zone` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'โซนของ Timezone',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชือ TimeZone',
  `full` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเต็มของ Timezone'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_master_timezone`
--

INSERT INTO `zzz_master_timezone` (`id`, `zone`, `name`, `full`) VALUES
(1, 'Africa', 'Abidjan', 'Africa/Abidjan'),
(2, 'Africa', 'Accra', 'Africa/Accra'),
(3, 'Africa', 'Addis_Ababa', 'Africa/Addis_Ababa'),
(4, 'Africa', 'Algiers', 'Africa/Algiers'),
(5, 'Africa', 'Asmara', 'Africa/Asmara'),
(6, 'Africa', 'Bamako', 'Africa/Bamako'),
(7, 'Africa', 'Bangui', 'Africa/Bangui'),
(8, 'Africa', 'Banjul', 'Africa/Banjul'),
(9, 'Africa', 'Bissau', 'Africa/Bissau'),
(10, 'Africa', 'Blantyre', 'Africa/Blantyre'),
(11, 'Africa', 'Brazzaville', 'Africa/Brazzaville'),
(12, 'Africa', 'Bujumbura', 'Africa/Bujumbura'),
(13, 'Africa', 'Cairo', 'Africa/Cairo'),
(14, 'Africa', 'Casablanca', 'Africa/Casablanca'),
(15, 'Africa', 'Ceuta', 'Africa/Ceuta'),
(16, 'Africa', 'Conakry', 'Africa/Conakry'),
(17, 'Africa', 'Dakar', 'Africa/Dakar'),
(18, 'Africa', 'Dar_es_Salaam', 'Africa/Dar_es_Salaam'),
(19, 'Africa', 'Djibouti', 'Africa/Djibouti'),
(20, 'Africa', 'Douala', 'Africa/Douala'),
(21, 'Africa', 'El_Aaiun', 'Africa/El_Aaiun'),
(22, 'Africa', 'Freetown', 'Africa/Freetown'),
(23, 'Africa', 'Gaborone', 'Africa/Gaborone'),
(24, 'Africa', 'Harare', 'Africa/Harare'),
(25, 'Africa', 'Johannesburg', 'Africa/Johannesburg'),
(26, 'Africa', 'Juba', 'Africa/Juba'),
(27, 'Africa', 'Kampala', 'Africa/Kampala'),
(28, 'Africa', 'Khartoum', 'Africa/Khartoum'),
(29, 'Africa', 'Kigali', 'Africa/Kigali'),
(30, 'Africa', 'Kinshasa', 'Africa/Kinshasa'),
(31, 'Africa', 'Lagos', 'Africa/Lagos'),
(32, 'Africa', 'Libreville', 'Africa/Libreville'),
(33, 'Africa', 'Lome', 'Africa/Lome'),
(34, 'Africa', 'Luanda', 'Africa/Luanda'),
(35, 'Africa', 'Lubumbashi', 'Africa/Lubumbashi'),
(36, 'Africa', 'Lusaka', 'Africa/Lusaka'),
(37, 'Africa', 'Malabo', 'Africa/Malabo'),
(38, 'Africa', 'Maputo', 'Africa/Maputo'),
(39, 'Africa', 'Maseru', 'Africa/Maseru'),
(40, 'Africa', 'Mbabane', 'Africa/Mbabane'),
(41, 'Africa', 'Mogadishu', 'Africa/Mogadishu'),
(42, 'Africa', 'Monrovia', 'Africa/Monrovia'),
(43, 'Africa', 'Nairobi', 'Africa/Nairobi'),
(44, 'Africa', 'Ndjamena', 'Africa/Ndjamena'),
(45, 'Africa', 'Niamey', 'Africa/Niamey'),
(46, 'Africa', 'Nouakchott', 'Africa/Nouakchott'),
(47, 'Africa', 'Ouagadougou', 'Africa/Ouagadougou'),
(48, 'Africa', 'Porto-Novo', 'Africa/Porto-Novo'),
(49, 'Africa', 'Sao_Tome', 'Africa/Sao_Tome'),
(50, 'Africa', 'Tripoli', 'Africa/Tripoli'),
(51, 'Africa', 'Tunis', 'Africa/Tunis'),
(52, 'Africa', 'Windhoek', 'Africa/Windhoek'),
(53, 'America', 'Adak', 'America/Adak'),
(54, 'America', 'Anchorage', 'America/Anchorage'),
(55, 'America', 'Anguilla', 'America/Anguilla'),
(56, 'America', 'Antigua', 'America/Antigua'),
(57, 'America', 'Araguaina', 'America/Araguaina'),
(58, 'America', 'Argentina/Buenos_Aires', 'America/Argentina/Buenos_Aires'),
(59, 'America', 'Argentina/Catamarca', 'America/Argentina/Catamarca'),
(60, 'America', 'Argentina/Cordoba', 'America/Argentina/Cordoba'),
(61, 'America', 'Argentina/Jujuy', 'America/Argentina/Jujuy'),
(62, 'America', 'Argentina/La_Rioja', 'America/Argentina/La_Rioja'),
(63, 'America', 'Argentina/Mendoza', 'America/Argentina/Mendoza'),
(64, 'America', 'Argentina/Rio_Gallegos', 'America/Argentina/Rio_Gallegos'),
(65, 'America', 'Argentina/Salta', 'America/Argentina/Salta'),
(66, 'America', 'Argentina/San_Juan', 'America/Argentina/San_Juan'),
(67, 'America', 'Argentina/San_Luis', 'America/Argentina/San_Luis'),
(68, 'America', 'Argentina/Tucuman', 'America/Argentina/Tucuman'),
(69, 'America', 'Argentina/Ushuaia', 'America/Argentina/Ushuaia'),
(70, 'America', 'Aruba', 'America/Aruba'),
(71, 'America', 'Asuncion', 'America/Asuncion'),
(72, 'America', 'Atikokan', 'America/Atikokan'),
(73, 'America', 'Bahia', 'America/Bahia'),
(74, 'America', 'Bahia_Banderas', 'America/Bahia_Banderas'),
(75, 'America', 'Barbados', 'America/Barbados'),
(76, 'America', 'Belem', 'America/Belem'),
(77, 'America', 'Belize', 'America/Belize'),
(78, 'America', 'Blanc-Sablon', 'America/Blanc-Sablon'),
(79, 'America', 'Boa_Vista', 'America/Boa_Vista'),
(80, 'America', 'Bogota', 'America/Bogota'),
(81, 'America', 'Boise', 'America/Boise'),
(82, 'America', 'Cambridge_Bay', 'America/Cambridge_Bay'),
(83, 'America', 'Campo_Grande', 'America/Campo_Grande'),
(84, 'America', 'Cancun', 'America/Cancun'),
(85, 'America', 'Caracas', 'America/Caracas'),
(86, 'America', 'Cayenne', 'America/Cayenne'),
(87, 'America', 'Cayman', 'America/Cayman'),
(88, 'America', 'Chicago', 'America/Chicago'),
(89, 'America', 'Chihuahua', 'America/Chihuahua'),
(90, 'America', 'Costa_Rica', 'America/Costa_Rica'),
(91, 'America', 'Creston', 'America/Creston'),
(92, 'America', 'Cuiaba', 'America/Cuiaba'),
(93, 'America', 'Curacao', 'America/Curacao'),
(94, 'America', 'Danmarkshavn', 'America/Danmarkshavn'),
(95, 'America', 'Dawson', 'America/Dawson'),
(96, 'America', 'Dawson_Creek', 'America/Dawson_Creek'),
(97, 'America', 'Denver', 'America/Denver'),
(98, 'America', 'Detroit', 'America/Detroit'),
(99, 'America', 'Dominica', 'America/Dominica'),
(100, 'America', 'Edmonton', 'America/Edmonton'),
(101, 'America', 'Eirunepe', 'America/Eirunepe'),
(102, 'America', 'El_Salvador', 'America/El_Salvador'),
(103, 'America', 'Fortaleza', 'America/Fortaleza'),
(104, 'America', 'Fort_Nelson', 'America/Fort_Nelson'),
(105, 'America', 'Glace_Bay', 'America/Glace_Bay'),
(106, 'America', 'Godthab', 'America/Godthab'),
(107, 'America', 'Goose_Bay', 'America/Goose_Bay'),
(108, 'America', 'Grand_Turk', 'America/Grand_Turk'),
(109, 'America', 'Grenada', 'America/Grenada'),
(110, 'America', 'Guadeloupe', 'America/Guadeloupe'),
(111, 'America', 'Guatemala', 'America/Guatemala'),
(112, 'America', 'Guayaquil', 'America/Guayaquil'),
(113, 'America', 'Guyana', 'America/Guyana'),
(114, 'America', 'Halifax', 'America/Halifax'),
(115, 'America', 'Havana', 'America/Havana'),
(116, 'America', 'Hermosillo', 'America/Hermosillo'),
(117, 'America', 'Indiana/Indianapolis', 'America/Indiana/Indianapolis'),
(118, 'America', 'Indiana/Knox', 'America/Indiana/Knox'),
(119, 'America', 'Indiana/Marengo', 'America/Indiana/Marengo'),
(120, 'America', 'Indiana/Petersburg', 'America/Indiana/Petersburg'),
(121, 'America', 'Indiana/Tell_City', 'America/Indiana/Tell_City'),
(122, 'America', 'Indiana/Vevay', 'America/Indiana/Vevay'),
(123, 'America', 'Indiana/Vincennes', 'America/Indiana/Vincennes'),
(124, 'America', 'Indiana/Winamac', 'America/Indiana/Winamac'),
(125, 'America', 'Inuvik', 'America/Inuvik'),
(126, 'America', 'Iqaluit', 'America/Iqaluit'),
(127, 'America', 'Jamaica', 'America/Jamaica'),
(128, 'America', 'Juneau', 'America/Juneau'),
(129, 'America', 'Kentucky/Louisville', 'America/Kentucky/Louisville'),
(130, 'America', 'Kentucky/Monticello', 'America/Kentucky/Monticello'),
(131, 'America', 'Kralendijk', 'America/Kralendijk'),
(132, 'America', 'La_Paz', 'America/La_Paz'),
(133, 'America', 'Lima', 'America/Lima'),
(134, 'America', 'Los_Angeles', 'America/Los_Angeles'),
(135, 'America', 'Lower_Princes', 'America/Lower_Princes'),
(136, 'America', 'Maceio', 'America/Maceio'),
(137, 'America', 'Managua', 'America/Managua'),
(138, 'America', 'Manaus', 'America/Manaus'),
(139, 'America', 'Marigot', 'America/Marigot'),
(140, 'America', 'Martinique', 'America/Martinique'),
(141, 'America', 'Matamoros', 'America/Matamoros'),
(142, 'America', 'Mazatlan', 'America/Mazatlan'),
(143, 'America', 'Menominee', 'America/Menominee'),
(144, 'America', 'Merida', 'America/Merida'),
(145, 'America', 'Metlakatla', 'America/Metlakatla'),
(146, 'America', 'Mexico_City', 'America/Mexico_City'),
(147, 'America', 'Miquelon', 'America/Miquelon'),
(148, 'America', 'Moncton', 'America/Moncton'),
(149, 'America', 'Monterrey', 'America/Monterrey'),
(150, 'America', 'Montevideo', 'America/Montevideo'),
(151, 'America', 'Montserrat', 'America/Montserrat'),
(152, 'America', 'Nassau', 'America/Nassau'),
(153, 'America', 'New_York', 'America/New_York'),
(154, 'America', 'Nipigon', 'America/Nipigon'),
(155, 'America', 'Nome', 'America/Nome'),
(156, 'America', 'Noronha', 'America/Noronha'),
(157, 'America', 'North_Dakota/Beulah', 'America/North_Dakota/Beulah'),
(158, 'America', 'North_Dakota/Center', 'America/North_Dakota/Center'),
(159, 'America', 'North_Dakota/New_Salem', 'America/North_Dakota/New_Salem'),
(160, 'America', 'Ojinaga', 'America/Ojinaga'),
(161, 'America', 'Panama', 'America/Panama'),
(162, 'America', 'Pangnirtung', 'America/Pangnirtung'),
(163, 'America', 'Paramaribo', 'America/Paramaribo'),
(164, 'America', 'Phoenix', 'America/Phoenix'),
(165, 'America', 'Port-au-Prince', 'America/Port-au-Prince'),
(166, 'America', 'Port_of_Spain', 'America/Port_of_Spain'),
(167, 'America', 'Porto_Velho', 'America/Porto_Velho'),
(168, 'America', 'Puerto_Rico', 'America/Puerto_Rico'),
(169, 'America', 'Punta_Arenas', 'America/Punta_Arenas'),
(170, 'America', 'Rainy_River', 'America/Rainy_River'),
(171, 'America', 'Rankin_Inlet', 'America/Rankin_Inlet'),
(172, 'America', 'Recife', 'America/Recife'),
(173, 'America', 'Regina', 'America/Regina'),
(174, 'America', 'Resolute', 'America/Resolute'),
(175, 'America', 'Rio_Branco', 'America/Rio_Branco'),
(176, 'America', 'Santarem', 'America/Santarem'),
(177, 'America', 'Santiago', 'America/Santiago'),
(178, 'America', 'Santo_Domingo', 'America/Santo_Domingo'),
(179, 'America', 'Sao_Paulo', 'America/Sao_Paulo'),
(180, 'America', 'Scoresbysund', 'America/Scoresbysund'),
(181, 'America', 'Sitka', 'America/Sitka'),
(182, 'America', 'St_Barthelemy', 'America/St_Barthelemy'),
(183, 'America', 'St_Johns', 'America/St_Johns'),
(184, 'America', 'St_Kitts', 'America/St_Kitts'),
(185, 'America', 'St_Lucia', 'America/St_Lucia'),
(186, 'America', 'St_Thomas', 'America/St_Thomas'),
(187, 'America', 'St_Vincent', 'America/St_Vincent'),
(188, 'America', 'Swift_Current', 'America/Swift_Current'),
(189, 'America', 'Tegucigalpa', 'America/Tegucigalpa'),
(190, 'America', 'Thule', 'America/Thule'),
(191, 'America', 'Thunder_Bay', 'America/Thunder_Bay'),
(192, 'America', 'Tijuana', 'America/Tijuana'),
(193, 'America', 'Toronto', 'America/Toronto'),
(194, 'America', 'Tortola', 'America/Tortola'),
(195, 'America', 'Vancouver', 'America/Vancouver'),
(196, 'America', 'Whitehorse', 'America/Whitehorse'),
(197, 'America', 'Winnipeg', 'America/Winnipeg'),
(198, 'America', 'Yakutat', 'America/Yakutat'),
(199, 'America', 'Yellowknife', 'America/Yellowknife'),
(200, 'Antarctica', 'Casey', 'Antarctica/Casey'),
(201, 'Antarctica', 'Davis', 'Antarctica/Davis'),
(202, 'Antarctica', 'DumontDUrville', 'Antarctica/DumontDUrville'),
(203, 'Antarctica', 'Macquarie', 'Antarctica/Macquarie'),
(204, 'Antarctica', 'Mawson', 'Antarctica/Mawson'),
(205, 'Antarctica', 'McMurdo', 'Antarctica/McMurdo'),
(206, 'Antarctica', 'Palmer', 'Antarctica/Palmer'),
(207, 'Antarctica', 'Rothera', 'Antarctica/Rothera'),
(208, 'Antarctica', 'Syowa', 'Antarctica/Syowa'),
(209, 'Antarctica', 'Troll', 'Antarctica/Troll'),
(210, 'Antarctica', 'Vostok', 'Antarctica/Vostok'),
(211, 'Arctic', 'Longyearbyen', 'Arctic/Longyearbyen'),
(212, 'Asia', 'Aden', 'Asia/Aden'),
(213, 'Asia', 'Almaty', 'Asia/Almaty'),
(214, 'Asia', 'Amman', 'Asia/Amman'),
(215, 'Asia', 'Anadyr', 'Asia/Anadyr'),
(216, 'Asia', 'Aqtau', 'Asia/Aqtau'),
(217, 'Asia', 'Aqtobe', 'Asia/Aqtobe'),
(218, 'Asia', 'Ashgabat', 'Asia/Ashgabat'),
(219, 'Asia', 'Atyrau', 'Asia/Atyrau'),
(220, 'Asia', 'Baghdad', 'Asia/Baghdad'),
(221, 'Asia', 'Bahrain', 'Asia/Bahrain'),
(222, 'Asia', 'Baku', 'Asia/Baku'),
(223, 'Asia', 'Bangkok', 'Asia/Bangkok'),
(224, 'Asia', 'Barnaul', 'Asia/Barnaul'),
(225, 'Asia', 'Beirut', 'Asia/Beirut'),
(226, 'Asia', 'Bishkek', 'Asia/Bishkek'),
(227, 'Asia', 'Brunei', 'Asia/Brunei'),
(228, 'Asia', 'Chita', 'Asia/Chita'),
(229, 'Asia', 'Choibalsan', 'Asia/Choibalsan'),
(230, 'Asia', 'Colombo', 'Asia/Colombo'),
(231, 'Asia', 'Damascus', 'Asia/Damascus'),
(232, 'Asia', 'Dhaka', 'Asia/Dhaka'),
(233, 'Asia', 'Dili', 'Asia/Dili'),
(234, 'Asia', 'Dubai', 'Asia/Dubai'),
(235, 'Asia', 'Dushanbe', 'Asia/Dushanbe'),
(236, 'Asia', 'Famagusta', 'Asia/Famagusta'),
(237, 'Asia', 'Gaza', 'Asia/Gaza'),
(238, 'Asia', 'Hebron', 'Asia/Hebron'),
(239, 'Asia', 'Ho_Chi_Minh', 'Asia/Ho_Chi_Minh'),
(240, 'Asia', 'Hong_Kong', 'Asia/Hong_Kong'),
(241, 'Asia', 'Hovd', 'Asia/Hovd'),
(242, 'Asia', 'Irkutsk', 'Asia/Irkutsk'),
(243, 'Asia', 'Jakarta', 'Asia/Jakarta'),
(244, 'Asia', 'Jayapura', 'Asia/Jayapura'),
(245, 'Asia', 'Jerusalem', 'Asia/Jerusalem'),
(246, 'Asia', 'Kabul', 'Asia/Kabul'),
(247, 'Asia', 'Kamchatka', 'Asia/Kamchatka'),
(248, 'Asia', 'Karachi', 'Asia/Karachi'),
(249, 'Asia', 'Kathmandu', 'Asia/Kathmandu'),
(250, 'Asia', 'Khandyga', 'Asia/Khandyga'),
(251, 'Asia', 'Kolkata', 'Asia/Kolkata'),
(252, 'Asia', 'Krasnoyarsk', 'Asia/Krasnoyarsk'),
(253, 'Asia', 'Kuala_Lumpur', 'Asia/Kuala_Lumpur'),
(254, 'Asia', 'Kuching', 'Asia/Kuching'),
(255, 'Asia', 'Kuwait', 'Asia/Kuwait'),
(256, 'Asia', 'Macau', 'Asia/Macau'),
(257, 'Asia', 'Magadan', 'Asia/Magadan'),
(258, 'Asia', 'Makassar', 'Asia/Makassar'),
(259, 'Asia', 'Manila', 'Asia/Manila'),
(260, 'Asia', 'Muscat', 'Asia/Muscat'),
(261, 'Asia', 'Nicosia', 'Asia/Nicosia'),
(262, 'Asia', 'Novokuznetsk', 'Asia/Novokuznetsk'),
(263, 'Asia', 'Novosibirsk', 'Asia/Novosibirsk'),
(264, 'Asia', 'Omsk', 'Asia/Omsk'),
(265, 'Asia', 'Oral', 'Asia/Oral'),
(266, 'Asia', 'Phnom_Penh', 'Asia/Phnom_Penh'),
(267, 'Asia', 'Pontianak', 'Asia/Pontianak'),
(268, 'Asia', 'Pyongyang', 'Asia/Pyongyang'),
(269, 'Asia', 'Qatar', 'Asia/Qatar'),
(270, 'Asia', 'Qyzylorda', 'Asia/Qyzylorda'),
(271, 'Asia', 'Riyadh', 'Asia/Riyadh'),
(272, 'Asia', 'Sakhalin', 'Asia/Sakhalin'),
(273, 'Asia', 'Samarkand', 'Asia/Samarkand'),
(274, 'Asia', 'Seoul', 'Asia/Seoul'),
(275, 'Asia', 'Shanghai', 'Asia/Shanghai'),
(276, 'Asia', 'Singapore', 'Asia/Singapore'),
(277, 'Asia', 'Srednekolymsk', 'Asia/Srednekolymsk'),
(278, 'Asia', 'Taipei', 'Asia/Taipei'),
(279, 'Asia', 'Tashkent', 'Asia/Tashkent'),
(280, 'Asia', 'Tbilisi', 'Asia/Tbilisi'),
(281, 'Asia', 'Tehran', 'Asia/Tehran'),
(282, 'Asia', 'Thimphu', 'Asia/Thimphu'),
(283, 'Asia', 'Tokyo', 'Asia/Tokyo'),
(284, 'Asia', 'Tomsk', 'Asia/Tomsk'),
(285, 'Asia', 'Ulaanbaatar', 'Asia/Ulaanbaatar'),
(286, 'Asia', 'Urumqi', 'Asia/Urumqi'),
(287, 'Asia', 'Ust-Nera', 'Asia/Ust-Nera'),
(288, 'Asia', 'Vientiane', 'Asia/Vientiane'),
(289, 'Asia', 'Vladivostok', 'Asia/Vladivostok'),
(290, 'Asia', 'Yakutsk', 'Asia/Yakutsk'),
(291, 'Asia', 'Yangon', 'Asia/Yangon'),
(292, 'Asia', 'Yekaterinburg', 'Asia/Yekaterinburg'),
(293, 'Asia', 'Yerevan', 'Asia/Yerevan'),
(294, 'Atlantic', 'Azores', 'Atlantic/Azores'),
(295, 'Atlantic', 'Bermuda', 'Atlantic/Bermuda'),
(296, 'Atlantic', 'Canary', 'Atlantic/Canary'),
(297, 'Atlantic', 'Cape_Verde', 'Atlantic/Cape_Verde'),
(298, 'Atlantic', 'Faroe', 'Atlantic/Faroe'),
(299, 'Atlantic', 'Madeira', 'Atlantic/Madeira'),
(300, 'Atlantic', 'Reykjavik', 'Atlantic/Reykjavik'),
(301, 'Atlantic', 'South_Georgia', 'Atlantic/South_Georgia'),
(302, 'Atlantic', 'Stanley', 'Atlantic/Stanley'),
(303, 'Atlantic', 'St_Helena', 'Atlantic/St_Helena'),
(304, 'Australia', 'Adelaide', 'Australia/Adelaide'),
(305, 'Australia', 'Brisbane', 'Australia/Brisbane'),
(306, 'Australia', 'Broken_Hill', 'Australia/Broken_Hill'),
(307, 'Australia', 'Currie', 'Australia/Currie'),
(308, 'Australia', 'Darwin', 'Australia/Darwin'),
(309, 'Australia', 'Eucla', 'Australia/Eucla'),
(310, 'Australia', 'Hobart', 'Australia/Hobart'),
(311, 'Australia', 'Lindeman', 'Australia/Lindeman'),
(312, 'Australia', 'Lord_Howe', 'Australia/Lord_Howe'),
(313, 'Australia', 'Melbourne', 'Australia/Melbourne'),
(314, 'Australia', 'Perth', 'Australia/Perth'),
(315, 'Australia', 'Sydney', 'Australia/Sydney'),
(316, 'Europe', 'Amsterdam', 'Europe/Amsterdam'),
(317, 'Europe', 'Andorra', 'Europe/Andorra'),
(318, 'Europe', 'Astrakhan', 'Europe/Astrakhan'),
(319, 'Europe', 'Athens', 'Europe/Athens'),
(320, 'Europe', 'Belgrade', 'Europe/Belgrade'),
(321, 'Europe', 'Berlin', 'Europe/Berlin'),
(322, 'Europe', 'Bratislava', 'Europe/Bratislava'),
(323, 'Europe', 'Brussels', 'Europe/Brussels'),
(324, 'Europe', 'Bucharest', 'Europe/Bucharest'),
(325, 'Europe', 'Budapest', 'Europe/Budapest'),
(326, 'Europe', 'Busingen', 'Europe/Busingen'),
(327, 'Europe', 'Chisinau', 'Europe/Chisinau'),
(328, 'Europe', 'Copenhagen', 'Europe/Copenhagen'),
(329, 'Europe', 'Dublin', 'Europe/Dublin'),
(330, 'Europe', 'Gibraltar', 'Europe/Gibraltar'),
(331, 'Europe', 'Guernsey', 'Europe/Guernsey'),
(332, 'Europe', 'Helsinki', 'Europe/Helsinki'),
(333, 'Europe', 'Isle_of_Man', 'Europe/Isle_of_Man'),
(334, 'Europe', 'Istanbul', 'Europe/Istanbul'),
(335, 'Europe', 'Jersey', 'Europe/Jersey'),
(336, 'Europe', 'Kaliningrad', 'Europe/Kaliningrad'),
(337, 'Europe', 'Kiev', 'Europe/Kiev'),
(338, 'Europe', 'Kirov', 'Europe/Kirov'),
(339, 'Europe', 'Lisbon', 'Europe/Lisbon'),
(340, 'Europe', 'Ljubljana', 'Europe/Ljubljana'),
(341, 'Europe', 'London', 'Europe/London'),
(342, 'Europe', 'Luxembourg', 'Europe/Luxembourg'),
(343, 'Europe', 'Madrid', 'Europe/Madrid'),
(344, 'Europe', 'Malta', 'Europe/Malta'),
(345, 'Europe', 'Mariehamn', 'Europe/Mariehamn'),
(346, 'Europe', 'Minsk', 'Europe/Minsk'),
(347, 'Europe', 'Monaco', 'Europe/Monaco'),
(348, 'Europe', 'Moscow', 'Europe/Moscow'),
(349, 'Europe', 'Oslo', 'Europe/Oslo'),
(350, 'Europe', 'Paris', 'Europe/Paris'),
(351, 'Europe', 'Podgorica', 'Europe/Podgorica'),
(352, 'Europe', 'Prague', 'Europe/Prague'),
(353, 'Europe', 'Riga', 'Europe/Riga'),
(354, 'Europe', 'Rome', 'Europe/Rome'),
(355, 'Europe', 'Samara', 'Europe/Samara'),
(356, 'Europe', 'San_Marino', 'Europe/San_Marino'),
(357, 'Europe', 'Sarajevo', 'Europe/Sarajevo'),
(358, 'Europe', 'Saratov', 'Europe/Saratov'),
(359, 'Europe', 'Simferopol', 'Europe/Simferopol'),
(360, 'Europe', 'Skopje', 'Europe/Skopje'),
(361, 'Europe', 'Sofia', 'Europe/Sofia'),
(362, 'Europe', 'Stockholm', 'Europe/Stockholm'),
(363, 'Europe', 'Tallinn', 'Europe/Tallinn'),
(364, 'Europe', 'Tirane', 'Europe/Tirane'),
(365, 'Europe', 'Ulyanovsk', 'Europe/Ulyanovsk'),
(366, 'Europe', 'Uzhgorod', 'Europe/Uzhgorod'),
(367, 'Europe', 'Vaduz', 'Europe/Vaduz'),
(368, 'Europe', 'Vatican', 'Europe/Vatican'),
(369, 'Europe', 'Vienna', 'Europe/Vienna'),
(370, 'Europe', 'Vilnius', 'Europe/Vilnius'),
(371, 'Europe', 'Volgograd', 'Europe/Volgograd'),
(372, 'Europe', 'Warsaw', 'Europe/Warsaw'),
(373, 'Europe', 'Zagreb', 'Europe/Zagreb'),
(374, 'Europe', 'Zaporozhye', 'Europe/Zaporozhye'),
(375, 'Europe', 'Zurich', 'Europe/Zurich'),
(376, 'Indian', 'Antananarivo', 'Indian/Antananarivo'),
(377, 'Indian', 'Chagos', 'Indian/Chagos'),
(378, 'Indian', 'Christmas', 'Indian/Christmas'),
(379, 'Indian', 'Cocos', 'Indian/Cocos'),
(380, 'Indian', 'Comoro', 'Indian/Comoro'),
(381, 'Indian', 'Kerguelen', 'Indian/Kerguelen'),
(382, 'Indian', 'Mahe', 'Indian/Mahe'),
(383, 'Indian', 'Maldives', 'Indian/Maldives'),
(384, 'Indian', 'Mauritius', 'Indian/Mauritius'),
(385, 'Indian', 'Mayotte', 'Indian/Mayotte'),
(386, 'Indian', 'Reunion', 'Indian/Reunion'),
(387, 'Pacific', 'Apia', 'Pacific/Apia'),
(388, 'Pacific', 'Auckland', 'Pacific/Auckland'),
(389, 'Pacific', 'Bougainville', 'Pacific/Bougainville'),
(390, 'Pacific', 'Chatham', 'Pacific/Chatham'),
(391, 'Pacific', 'Chuuk', 'Pacific/Chuuk'),
(392, 'Pacific', 'Easter', 'Pacific/Easter'),
(393, 'Pacific', 'Efate', 'Pacific/Efate'),
(394, 'Pacific', 'Enderbury', 'Pacific/Enderbury'),
(395, 'Pacific', 'Fakaofo', 'Pacific/Fakaofo'),
(396, 'Pacific', 'Fiji', 'Pacific/Fiji'),
(397, 'Pacific', 'Funafuti', 'Pacific/Funafuti'),
(398, 'Pacific', 'Galapagos', 'Pacific/Galapagos'),
(399, 'Pacific', 'Gambier', 'Pacific/Gambier'),
(400, 'Pacific', 'Guadalcanal', 'Pacific/Guadalcanal'),
(401, 'Pacific', 'Guam', 'Pacific/Guam'),
(402, 'Pacific', 'Honolulu', 'Pacific/Honolulu'),
(403, 'Pacific', 'Kiritimati', 'Pacific/Kiritimati'),
(404, 'Pacific', 'Kosrae', 'Pacific/Kosrae'),
(405, 'Pacific', 'Kwajalein', 'Pacific/Kwajalein'),
(406, 'Pacific', 'Majuro', 'Pacific/Majuro'),
(407, 'Pacific', 'Marquesas', 'Pacific/Marquesas'),
(408, 'Pacific', 'Midway', 'Pacific/Midway'),
(409, 'Pacific', 'Nauru', 'Pacific/Nauru'),
(410, 'Pacific', 'Niue', 'Pacific/Niue'),
(411, 'Pacific', 'Norfolk', 'Pacific/Norfolk'),
(412, 'Pacific', 'Noumea', 'Pacific/Noumea'),
(413, 'Pacific', 'Pago_Pago', 'Pacific/Pago_Pago'),
(414, 'Pacific', 'Palau', 'Pacific/Palau'),
(415, 'Pacific', 'Pitcairn', 'Pacific/Pitcairn'),
(416, 'Pacific', 'Pohnpei', 'Pacific/Pohnpei'),
(417, 'Pacific', 'Port_Moresby', 'Pacific/Port_Moresby'),
(418, 'Pacific', 'Rarotonga', 'Pacific/Rarotonga'),
(419, 'Pacific', 'Saipan', 'Pacific/Saipan'),
(420, 'Pacific', 'Tahiti', 'Pacific/Tahiti'),
(421, 'Pacific', 'Tarawa', 'Pacific/Tarawa'),
(422, 'Pacific', 'Tongatapu', 'Pacific/Tongatapu'),
(423, 'Pacific', 'Wake', 'Pacific/Wake'),
(424, 'Pacific', 'Wallis', 'Pacific/Wallis');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_member_access`
--

CREATE TABLE `zzz_member_access` (
  `mema_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mema_memh_id` int(11) NOT NULL DEFAULT '0',
  `mema_memh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mema_login_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mema_login_agent` text COLLATE utf8_unicode_ci,
  `mema_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mema_last_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mema_last_agent` text COLLATE utf8_unicode_ci,
  `mema_last_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_member_access`
--

INSERT INTO `zzz_member_access` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('00d1562928c368ddd3b2120d15a4982d', 6, 'Boripat Petchkaew', '1509965990', 'okhttp/3.5.0', '27.55.81.25', '1509965990', 'okhttp/3.5.0', '27.55.81.25'),
('04812d4c5095b77d6d1f97210aba673a', 108, 'CITYTHAI ADMINISTATOR', '1505273473', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505273473', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('0ade6aee91d2a11fc9d9e37d611e992f', 109, 'สิทธิชัย ชุ่มใจ', '1505272584', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505272970', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('0b06e4c6062ed84622762186f687ec00', 6, 'Boripat Petchkaew', '1504235274', 'okhttp/3.5.0', '58.9.70.251', '1504235274', 'okhttp/3.5.0', '58.9.70.251'),
('0b9e55a1f3182911a78e705784418e60', 10, 'ศักรินทร์ แจะ แจะ', '1513927919', 'okhttp/3.5.0', '58.9.71.180', '1513927919', 'okhttp/3.5.0', '58.9.71.180'),
('0c7dc81d499ac9c4b178e9b0ecef5a53', 109, 'สิทธิชัย ชุ่มใจ', '1510114896', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.3) Alamofire/4.5.0', '58.9.70.251', '1510117595', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.3) Alamofire/4.5.0', '58.9.70.251'),
('0d22ff66a1ba0d4b93fb554b43c96d66', 33, 'Chet Surachet', '1510108294', 'okhttp/3.5.0', '58.9.70.251', '1510108294', 'okhttp/3.5.0', '58.9.70.251'),
('0d4677001324e7132705aa6af5e406f7', 27, 'Boripat Love Thai Rama IX', '1509962430', 'okhttp/3.5.0', '27.55.81.25', '1509962430', 'okhttp/3.5.0', '27.55.81.25'),
('0f0a903425afb5b2bac887501438406f', 27, 'Boripat Love Thai Rama IX', '1509961123', 'okhttp/3.5.0', '27.55.81.25', '1509961123', 'okhttp/3.5.0', '27.55.81.25'),
('0f7321254afaff47d696b230d9929d9f', 27, 'Boripat Love Thai Rama IX', '1509959525', 'okhttp/3.5.0', '27.55.81.25', '1509959525', 'okhttp/3.5.0', '27.55.81.25'),
('107b272a7a7b3aa70e29db8f2139803d', 27, 'Boripat Love Thai Rama IX', '1510052094', 'okhttp/3.5.0', '223.24.163.32', '1510052094', 'okhttp/3.5.0', '223.24.163.32'),
('1201e1849069fa5af0241fadf822b7e4', 6, 'Boripat Petchkaew', '1504510872', 'okhttp/3.5.0', '58.9.70.251', '1504519162', 'okhttp/3.5.0', '58.9.70.251'),
('131e38fe144f2607aa75c19a0d030162', 6, 'Boripat Petchkaew', '1509965629', 'okhttp/3.5.0', '27.55.81.25', '1509965629', 'okhttp/3.5.0', '27.55.81.25'),
('13228a27ccb14c0cc2bc3cda46b8096d', 108, 'CITYTHAI ADMINISTATOR', '1506485486', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1506485486', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('14b22f6649e35d86113a8d9177fe6d94', 6, 'Boripat Petchkaew', '1509952187', 'okhttp/3.5.0', '27.55.81.25', '1509952187', 'okhttp/3.5.0', '27.55.81.25'),
('15d241761e5a8dd1db0dbf49ec51fcfa', 41, 'MIX E-MAIL', '1514350556', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1514350973', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('16f6c6ffc95bf1734f54bd9ef0774892', 27, 'Boripat Love Thai Rama IX', '1510052505', 'okhttp/3.5.0', '223.24.163.32', '1510052505', 'okhttp/3.5.0', '223.24.163.32'),
('170dd9fdffa2200bf812a0865665a869', 6, 'Boripat Petchkaew', '1505125011', 'okhttp/3.5.0', '58.9.70.251', '1505128911', 'okhttp/3.5.0', '58.9.70.251'),
('1a876b9d5300aa81c5f07c3355947881', 6, 'Boripat Petchkaew', '1510112125', 'okhttp/3.5.0', '27.55.102.13', '1510112125', 'okhttp/3.5.0', '27.55.102.13'),
('1b90aef9bf0291527f1a001fda6b5e4e', 109, 'สิทธิชัย ชุ่มใจ', '1505191986', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505191986', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('1bfe245e9e97bcd13c6787c40a5709e4', 109, 'สิทธิชัย ชุ่มใจ', '1505118934', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505119930', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('1cd7920152158595f4d724be111790df', 6, 'Boripat Petchkaew', '1510040462', 'okhttp/3.5.0', '27.55.117.67', '1510040462', 'okhttp/3.5.0', '27.55.117.67'),
('1d26e1f5012827cabed2a3cab896ec42', 6, 'Boripat Petchkaew', '1504235983', 'okhttp/3.5.0', '58.9.70.251', '1504499950', 'okhttp/3.5.0', '58.9.70.251'),
('236f4a5f0a03f1f43b7edeaa46ffb8c1', 27, 'Boripat Love Thai Rama IX', '1510052326', 'okhttp/3.5.0', '223.24.163.32', '1510052326', 'okhttp/3.5.0', '223.24.163.32'),
('23d3cd8b4507b3fc7f84e8554b062856', 41, 'MIX E-MAIL', '1513579803', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513841021', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('2609b8c1deb3bfb472600e8cd503d889', 27, 'Boripat Love Thai Rama IX', '1509960281', 'okhttp/3.5.0', '27.55.81.25', '1509960281', 'okhttp/3.5.0', '27.55.81.25'),
('267a8d5aa70608a9d5979dd00e721253', 6, 'Boripat Petchkaew', '1509948570', 'okhttp/3.5.0', '27.55.81.25', '1509948570', 'okhttp/3.5.0', '27.55.81.25'),
('270018c0d59ee7be4c53bc94b120fa1d', 10, 'ศักรินทร์ แจะ แจะ', '1513307517', 'okhttp/3.5.0', '58.9.71.180', '1513926894', 'okhttp/3.5.0', '58.9.71.180'),
('2888550aa3ebd23ad319c3ee8a45cbb3', 6, 'Boripat Petchkaew', '1510112037', 'okhttp/3.5.0', '27.55.102.13', '1510112037', 'okhttp/3.5.0', '27.55.102.13'),
('295a246cb04c3bd11554bd2cce1676ee', 33, 'Chet Surachet', '1510108038', 'okhttp/3.5.0', '58.9.70.251', '1510108038', 'okhttp/3.5.0', '58.9.70.251'),
('2cb1c8ffc25849d073fd285656628a27', 10, 'ศักรินทร์ แจะ แจะ', '1513927955', 'okhttp/3.5.0', '58.9.71.180', '1513927955', 'okhttp/3.5.0', '58.9.71.180'),
('2d333b3a78305341697e3898f51354e4', 10, 'ศักรินทร์ แจะ แจะ', '1513927934', 'okhttp/3.5.0', '58.9.71.180', '1513927934', 'okhttp/3.5.0', '58.9.71.180'),
('2e94c3c777034fe1467be82e2ca53617', 114, 'Chanyut Butsambor', '1505387477', 'okhttp/3.5.0', '58.9.70.251', '1505387477', 'okhttp/3.5.0', '58.9.70.251'),
('310d08fa6b8addafeec4abf0aaf6defc', 109, 'สิทธิชัย ชุ่มใจ', '1505115091', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505117381', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('32644f11ccc7dc5098111e011fdc1e63', 10, 'ศักรินทร์ แจะ แจะ', '1513927978', 'okhttp/3.5.0', '58.9.71.180', '1513927978', 'okhttp/3.5.0', '58.9.71.180'),
('339980a436a4d537cec8681ca952b8a0', 109, 'สิทธิชัย ชุ่มใจ', '1510223641', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.3) Alamofire/4.5.0', '223.24.74.88', '1513412578', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.2.1) Alamofire/4.5.0', '119.76.28.18'),
('342781fce71a2d871b7ffca8d7003ac8', 108, 'CITYTHAI ADMINISTATOR', '1506395672', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251', '1506395672', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251'),
('36cdc65512942635c1e0a7cfbd5deee4', 27, 'Boripat Love Thai Rama IX', '1509966217', 'okhttp/3.5.0', '27.55.81.25', '1509966217', 'okhttp/3.5.0', '27.55.81.25'),
('388e78762661646d1ba905278022b689', 108, 'CITYTHAI ADMINISTATOR', '1505190020', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505190020', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('3902d237d5f295c90a5b1dd8c4dbe5c4', 113, 'Worapong Sriwichian', '1498922894', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '27.145.176.3', '1498922896', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '27.145.176.3'),
('3c365bc165520a34430ec829158c679e', 6, 'Boripat Petchkaew', '1509962944', 'okhttp/3.5.0', '27.55.81.25', '1509962944', 'okhttp/3.5.0', '27.55.81.25'),
('3ccfc11451c3b4f2d3a2378d6c601d4b', 6, 'Boripat Petchkaew', '1505370631', 'okhttp/3.5.0', '58.9.70.251', '1505370631', 'okhttp/3.5.0', '58.9.70.251'),
('3d842a5c8ad89dd862d65179e833dda2', 108, 'CITYTHAI ADMINISTATOR', '1505117973', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505117973', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('3d907792525deabbc1b5abf1211ed98a', 41, 'MIX E-MAIL', '1513571553', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513571568', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('3f8652d5728a0833a5fecd51e5b0a402', 109, 'สิทธิชัย ชุ่มใจ', '1503650391', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1503980974', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '58.9.70.251'),
('420cb10da9eb88918c12e4f0e6f6f99e', 109, 'สิทธิชัย ชุ่มใจ', '1505123480', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505123757', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('4288650a279502aa7dc58183d662ad1b', 41, 'MIX E-MAIL', '1513927031', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513929047', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('449c085f761d5247796b957d375e514b', 6, 'Boripat Petchkaew', '1507091342', 'okhttp/3.5.0', '1.46.198.86', '1507096218', 'okhttp/3.5.0', '1.46.198.86'),
('4fdec2a1a87d689bb8f1db1ddd683ce7', 108, 'CITYTHAI ADMINISTATOR', '1505360311', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505360311', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('504ab0577081bbc7b1aba4b39b442542', 41, 'MIX E-MAIL', '1503458896', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1503459834', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('5151ebf2e88a72da702c4924e7a055c1', 88, 'สุรเชษฐ์ แจ้งวัง', '1509941422', 'okhttp/3.5.0', '58.9.70.251', '1509941422', 'okhttp/3.5.0', '58.9.70.251'),
('5264455dc0328c795f334a4c46c76bfb', 115, 'Sitichai Chumjai', '1513841141', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1514346085', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('545990eab6a416ff00960a0073680098', 27, 'Boripat Love Thai Rama IX', '1509966452', 'okhttp/3.5.0', '27.55.81.25', '1509966452', 'okhttp/3.5.0', '27.55.81.25'),
('5817a4a5c1855507a46ab323c2085865', 41, 'MIX E-MAIL', '1504172874', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251', '1504175462', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251'),
('599c4b06e1ff6adf01fe6423fdfbfc15', 27, 'Boripat Love Thai Rama IX', '1510040396', 'okhttp/3.5.0', '27.55.117.67', '1510040396', 'okhttp/3.5.0', '27.55.117.67'),
('59a64187eecf691c868d68f641f2b4d2', 6, 'Boripat Petchkaew', '1509953247', 'okhttp/3.5.0', '27.55.81.25', '1509953247', 'okhttp/3.5.0', '27.55.81.25'),
('5a13ba963df4a5ba23628e1c84775aea', 6, 'Boripat Petchkaew', '1509964462', 'okhttp/3.5.0', '27.55.81.25', '1509964462', 'okhttp/3.5.0', '27.55.81.25'),
('5b348519bf87664b31f4f832e526d7f3', 27, 'Boripat Love Thai Rama IX', '1509960629', 'okhttp/3.5.0', '27.55.81.25', '1509960629', 'okhttp/3.5.0', '27.55.81.25'),
('5e43593e903070fc6c877d0c10e67796', 6, 'Boripat Petchkaew', '1509965994', 'okhttp/3.5.0', '27.55.81.25', '1509965994', 'okhttp/3.5.0', '27.55.81.25'),
('5ee1d460c7dfcf5b83f81e692e90cf87', 41, 'MIX E-MAIL', '1513571855', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513572380', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('6416b59c6bfc1fe46e3db43809839be6', 6, 'Boripat Petchkaew', '1510112076', 'okhttp/3.5.0', '27.55.102.13', '1510112076', 'okhttp/3.5.0', '27.55.102.13'),
('663215c5eb775b8672c06b119a1686c5', 41, 'MIX E-MAIL', '1503459845', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1503460100', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('6764a4cff7a999d632be4f963aea5431', 6, 'Boripat Petchkaew', '1510112491', 'okhttp/3.5.0', '27.55.102.13', '1510112491', 'okhttp/3.5.0', '27.55.102.13'),
('6a7a6e8668c318bc496d858a732d09af', 27, 'Boripat Love Thai Rama IX', '1509962494', 'okhttp/3.5.0', '27.55.81.25', '1509962494', 'okhttp/3.5.0', '27.55.81.25'),
('6a7b1cfc0a19981be70d6371c2231ee4', 6, 'Boripat Petchkaew', '1510040493', 'okhttp/3.5.0', '27.55.117.67', '1510040493', 'okhttp/3.5.0', '27.55.117.67'),
('6ee701e52f302a893814283b072172bc', 108, 'CITYTHAI ADMINISTATOR', '1506680676', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '58.9.70.251', '1506680676', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '58.9.70.251'),
('709ebfd8d8be7db6161417b76947250c', 115, 'Sitichai Chumjai', '1513841103', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513841103', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('734cff307d35694c1752b7cd9ead07f5', 6, 'Boripat Petchkaew', '1504174848', 'okhttp/3.5.0', '58.9.70.251', '1504174848', 'okhttp/3.5.0', '58.9.70.251'),
('73a664172f5efc876e48cbb6ad7e714f', 108, 'CITYTHAI ADMINISTATOR', '1506414933', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251', '1506414933', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251'),
('75a1a8d9fdfaab0ec536373b45a1ef3b', 27, 'Boripat Love Thai Rama IX', '1510214728', 'okhttp/3.5.0', '58.9.70.251', '1510214728', 'okhttp/3.5.0', '58.9.70.251'),
('76a8fe5e1c28914998e8ee0c75eee791', 27, 'Boripat Love Thai Rama IX', '1509962622', 'okhttp/3.5.0', '27.55.81.25', '1509962622', 'okhttp/3.5.0', '27.55.81.25'),
('7a995b912fc1fc7e4508d9a4b72c4a23', 10, 'ศักรินทร์ แจะ แจะ', '1513927506', 'okhttp/3.5.0', '58.9.71.180', '1513927506', 'okhttp/3.5.0', '58.9.71.180'),
('7bcb6e7e4ab63a9a73fde62432b5b69a', 6, 'Boripat Petchkaew', '1505287017', 'okhttp/3.5.0', '58.9.70.251', '1505363935', 'okhttp/3.5.0', '58.9.70.251'),
('7be9d0d34f144777a9d90af826480fcd', 10, 'ศักรินทร์ แจะ แจะ', '1513929533', 'okhttp/3.5.0', '58.9.71.180', '1513929533', 'okhttp/3.5.0', '58.9.71.180'),
('7e109d383127776cb6a95b58025715b5', 108, 'CITYTHAI ADMINISTATOR', '1506570103', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1506570103', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('7e5f3da9156c70e1a5bb5fc844e336b4', 6, 'Boripat Petchkaew', '1510112513', 'okhttp/3.5.0', '27.55.102.13', '1510112513', 'okhttp/3.5.0', '27.55.102.13'),
('7fd856ba827f9bb3dadc0ca2c603f191', 87, 'สิทธิชัย ชุ่มใจ', '1505807160', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505809469', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('810c2ab1681ec2024561a2e21330faf1', 6, 'Boripat Petchkaew', '1510040691', 'okhttp/3.5.0', '27.55.117.67', '1510040691', 'okhttp/3.5.0', '27.55.117.67'),
('8d58e380faeeab1c52ad9e05edd4dc7b', 10, 'ศักรินทร์ แจะ แจะ', '1502253729', 'okhttp/3.5.0', '58.9.70.251', '1502253729', 'okhttp/3.5.0', '58.9.70.251'),
('8d838b5315d4822220200913230d18c8', 6, 'Boripat Petchkaew', '1509965975', 'okhttp/3.5.0', '27.55.81.25', '1509965975', 'okhttp/3.5.0', '27.55.81.25'),
('8d965fc226d2d744baca8fd50b0480d3', 10, 'ศักรินทร์ แจะ แจะ', '1513927838', 'okhttp/3.5.0', '58.9.71.180', '1513927838', 'okhttp/3.5.0', '58.9.71.180'),
('8e168fac75cf8de6ce14da610aa107ff', 108, 'CITYTHAI ADMINISTATOR', '1506406612', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251', '1506406612', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251'),
('8e1b41c9db8487f4e428d3f4dc418a96', 10, 'ศักรินทร์ แจะ แจะ', '1513927706', 'okhttp/3.5.0', '58.9.71.180', '1513927706', 'okhttp/3.5.0', '58.9.71.180'),
('8ec6c48242788f3987b52c1f47bebac5', 6, 'Boripat Petchkaew', '1510042571', 'okhttp/3.5.0', '27.55.117.67', '1510042571', 'okhttp/3.5.0', '27.55.117.67'),
('90bb440067d13275ead51ccf92d180ed', 41, 'MIX E-MAIL', '1509938769', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251', '1509938868', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251'),
('90cd3183d384f76ff550047d31362883', 27, 'Boripat Love Thai Rama IX', '1509959057', 'PostmanRuntime/6.4.1', '58.9.70.251', '1509959057', 'PostmanRuntime/6.4.1', '58.9.70.251'),
('923500d1864e39a5c5f50721eaedf4d9', 88, 'สุรเชษฐ์ แจ้งวัง', '1509942740', 'okhttp/3.5.0', '58.9.70.251', '1509942740', 'okhttp/3.5.0', '58.9.70.251'),
('9384e944344219570c8dcb04742122bb', 109, 'สิทธิชัย ชุ่มใจ', '1503991501', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1503991566', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('97f022755fb5b8805e231a36b51048d1', 109, 'สิทธิชัย ชุ่มใจ', '1503460113', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1514948811', 'PostmanRuntime/7.1.1', '58.9.71.180'),
('992669b12cd7b12b2da4b1e40e51b1bc', 108, 'CITYTHAI ADMINISTATOR', '1505448025', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505448025', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('9a3acb9bdeae638676364d72d74fa108', 10, 'ศักรินทร์ แจะ แจะ', '1503458831', 'okhttp/3.5.0', '58.9.70.251', '1503460208', 'okhttp/3.5.0', '58.9.70.251'),
('9cf49201d761552b25cd55b4a8c92aa6', 41, 'MIX E-MAIL', '1513572768', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180', '1513579493', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.71.180'),
('9deadc37ba64b2c8f112ef94aa8eb2fc', 1, 'Team Worapong', '1498801607', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '114.109.156.94', '1498806702', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '114.109.156.94'),
('a75509dbb311b2add047ba60e0727ee9', 6, 'Boripat Petchkaew', '1504164247', 'okhttp/3.5.0', '58.9.70.251', '1504164265', 'okhttp/3.5.0', '58.9.70.251'),
('a7f5740f5b0f5118458d0651870fa628', 109, 'สิทธิชัย ชุ่มใจ', '1505192339', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505199713', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('a804d836aee254c85582a13a3cd2e0be', 6, 'Boripat Petchkaew', '1509965579', 'okhttp/3.5.0', '27.55.81.25', '1509965579', 'okhttp/3.5.0', '27.55.81.25'),
('a97bfd5b02c6775200151a9668cb7921', 10, 'ศักรินทร์ แจะ แจะ', '1513927476', 'okhttp/3.5.0', '58.9.71.180', '1513927476', 'okhttp/3.5.0', '58.9.71.180'),
('a9cf38b8e035bd2842740572839ab9cf', 108, 'CITYTHAI ADMINISTATOR', '1505372218', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251', '1505372218', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251'),
('abcd94e61218e9ec4e8e08370329a477', 27, 'Boripat Love Thai Rama IX', '1510108486', 'okhttp/3.5.0', '27.55.102.13', '1510108486', 'okhttp/3.5.0', '27.55.102.13'),
('ad61c41b8f600ff4e8e0bcd5db5d9194', 27, 'Boripat Love Thai Rama IX', '1509959031', 'PostmanRuntime/6.4.1', '58.9.70.251', '1509959031', 'PostmanRuntime/6.4.1', '58.9.70.251'),
('af4f969fc34de44a1d6a7d559bb666ff', 6, 'Boripat Petchkaew', '1505274071', 'okhttp/3.5.0', '58.9.70.251', '1505274071', 'okhttp/3.5.0', '58.9.70.251'),
('afb2a8269810e0a902c6a9186d6cdb83', 27, 'Boripat Love Thai Rama IX', '1512704543', 'okhttp/3.5.0', '27.55.69.136', '1512732068', 'okhttp/3.5.0', '223.24.159.38'),
('b45b223297dff1d7e94a274f84739e37', 88, 'สุรเชษฐ์ แจ้งวัง', '1509940864', 'okhttp/3.5.0', '58.9.70.251', '1509940864', 'okhttp/3.5.0', '58.9.70.251'),
('b5e06087e1afbc7575acc6a4326371e4', 6, 'Boripat Petchkaew', '1505190199', 'okhttp/3.5.0', '223.24.153.180', '1505370198', 'okhttp/3.5.0', '1.47.9.112'),
('b639cf6a06a505fb51da240367a094bb', 88, 'สุรเชษฐ์ แจ้งวัง', '1509942528', 'okhttp/3.5.0', '58.9.70.251', '1509942528', 'okhttp/3.5.0', '58.9.70.251'),
('b9af0ec4fed53fbd5a7cffc78fb051ba', 88, 'สุรเชษฐ์ แจ้งวัง', '1509696739', 'okhttp/3.5.0', '58.9.70.251', '1509696739', 'okhttp/3.5.0', '58.9.70.251'),
('ba3f818dba3f4a9420791c14595050cc', 109, 'สิทธิชัย ชุ่มใจ', '1503981231', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1504585231', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('bb6c1ff46756423d81d014002547b020', 27, 'Boripat Love Thai Rama IX', '1509966231', 'okhttp/3.5.0', '27.55.81.25', '1509966231', 'okhttp/3.5.0', '27.55.81.25'),
('bc8571953ad56f8acebca622aae90382', 1, 'Team Worapong', '1498809133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', '27.55.24.110', '1498809133', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1', '27.55.24.110'),
('bd2869ccd235f553525d979b33296993', 6, 'Boripat Petchkaew', '1510051966', 'okhttp/3.5.0', '223.24.163.32', '1510051966', 'okhttp/3.5.0', '223.24.163.32'),
('bfaa02459bfbfe0654df58c8c3c495dd', 10, 'ศักรินทร์ แจะ แจะ', '1513928531', 'okhttp/3.5.0', '58.9.71.180', '1513928531', 'okhttp/3.5.0', '58.9.71.180'),
('c07c3700661f7ccf5f5a8e7bd0ce0e50', 6, 'Boripat Petchkaew', '1509964419', 'okhttp/3.5.0', '27.55.81.25', '1509964419', 'okhttp/3.5.0', '27.55.81.25'),
('c174d9c4cfab0883f2463b7de596cf7d', 10, 'ศักรินทร์ แจะ แจะ', '1513928565', 'okhttp/3.5.0', '58.9.71.180', '1513928565', 'okhttp/3.5.0', '58.9.71.180'),
('c18e97ef17a1456f8bf971c4788be35c', 27, 'Boripat Love Thai Rama IX', '1509959247', 'okhttp/3.5.0', '27.55.81.25', '1509959247', 'okhttp/3.5.0', '27.55.81.25'),
('c5549403b7bf8e9f0e0ca86a4c197d46', 6, 'Boripat Petchkaew', '1509950313', 'okhttp/3.5.0', '27.55.81.25', '1509950313', 'okhttp/3.5.0', '27.55.81.25'),
('c6992b9e1387aa57ea8e31597c724cf6', 6, 'Boripat Petchkaew', '1509948554', 'okhttp/3.5.0', '27.55.81.25', '1509948554', 'okhttp/3.5.0', '27.55.81.25'),
('cd2bcbe0b1f7d1c67a2e31de53de8013', 6, 'Boripat Petchkaew', '1510042543', 'okhttp/3.5.0', '27.55.117.67', '1510042543', 'okhttp/3.5.0', '27.55.117.67'),
('ce136f58f6fa54f0b8f087ea8c8ed07d', 6, 'Boripat Petchkaew', '1509964550', 'okhttp/3.5.0', '27.55.81.25', '1509964550', 'okhttp/3.5.0', '27.55.81.25'),
('ce479a6d636b72c88a9ceb83960abb79', 27, 'Boripat Love Thai Rama IX', '1512636500', 'okhttp/3.5.0', '223.24.51.83', '1512636500', 'okhttp/3.5.0', '223.24.51.83'),
('cf2e5ebd254ec8e08e308d942c87dd53', 27, 'Boripat Love Thai Rama IX', '1509962671', 'okhttp/3.5.0', '27.55.81.25', '1509962671', 'okhttp/3.5.0', '27.55.81.25'),
('cf9668ca21e8546c7435d42baa765d4b', 6, 'Boripat Petchkaew', '1506320615', 'okhttp/3.5.0', '58.9.70.251', '1506320615', 'okhttp/3.5.0', '58.9.70.251'),
('d02195c87b8b414c7e544e51bd86bac9', 108, 'CITYTHAI ADMINISTATOR', '1506579401', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1506579401', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('d15a710a5fc0d921f86f9def37b3faf0', 10, 'ศักรินทร์ แจะ แจะ', '1513926965', 'okhttp/3.5.0', '58.9.71.180', '1513927012', 'okhttp/3.5.0', '58.9.71.180'),
('d21491a1d07eed67989afb599b4c14b8', 108, 'CITYTHAI ADMINISTATOR', '1505706513', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505706513', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('d3701567f14d7d9a92827d38cb817f09', 27, 'Boripat Love Thai Rama IX', '1511406373', 'okhttp/3.5.0', '223.24.129.107', '1511406398', 'okhttp/3.5.0', '223.24.129.107'),
('d5874b54afb57a2cba5eb56e4d0928ba', 27, 'Boripat Love Thai Rama IX', '1510111964', 'okhttp/3.5.0', '27.55.102.13', '1510111964', 'okhttp/3.5.0', '27.55.102.13'),
('d5aa00e5ab6f3406f5595bfc8af94544', 109, 'สิทธิชัย ชุ่มใจ', '1505125091', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505190040', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('d623c8c195045cbe81275ac44a534333', 6, 'Boripat Petchkaew', '1504500326', 'okhttp/3.5.0', '58.9.70.251', '1504501496', 'okhttp/3.5.0', '58.9.70.251'),
('d71e4c4de15d035a02afb0f03757f235', 10, 'ศักรินทร์ แจะ แจะ', '1512544157', 'okhttp/3.5.0', '58.9.70.251', '1512544157', 'okhttp/3.5.0', '58.9.70.251'),
('d81e87f417bd818fdd14045a54265b70', 10, 'ศักรินทร์ แจะ แจะ', '1513927944', 'okhttp/3.5.0', '58.9.71.180', '1513927944', 'okhttp/3.5.0', '58.9.71.180'),
('da785addd18000d7c1ced7ca0e9f4049', 41, 'MIX E-MAIL', '1509938499', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251', '1509938518', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251'),
('dd74314415f4d6b99a0feb0f5af09cbe', 27, 'Boripat Love Thai Rama IX', '1509962061', 'okhttp/3.5.0', '27.55.81.25', '1509962061', 'okhttp/3.5.0', '27.55.81.25'),
('dd938349c19c8aa5a441d05512dc9ffe', 108, 'CITYTHAI ADMINISTATOR', '1506655509', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '58.9.70.251', '1506655509', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '58.9.70.251'),
('e4b0ad3a016dc2204f9fcea3612ac9ea', 41, 'MIX E-MAIL', '1512619934', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.70.251', '1512703036', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.1.0) Alamofire/4.5.0', '58.9.70.251'),
('e540a3b702902f3e1e80a5202c747d89', 6, 'Boripat Petchkaew', '1510112420', 'okhttp/3.5.0', '27.55.102.13', '1510112420', 'okhttp/3.5.0', '27.55.102.13'),
('e677ff96a68d002dd9aa6db6279e86ed', 27, 'Boripat Love Thai Rama IX', '1510109938', 'okhttp/3.5.0', '27.55.102.13', '1510109938', 'okhttp/3.5.0', '27.55.102.13'),
('e6a3f7736e0c55eedb749eaa77518978', 10, 'ศักรินทร์ แจะ แจะ', '1513926985', 'okhttp/3.5.0', '58.9.71.180', '1513926985', 'okhttp/3.5.0', '58.9.71.180'),
('e704dbe494ec17ec1b3bbef807643ee3', 6, 'Boripat Petchkaew', '1509953232', 'okhttp/3.5.0', '27.55.81.25', '1509953232', 'okhttp/3.5.0', '27.55.81.25'),
('e781ee510e5997a911dc64ca6a12e56f', 88, 'สุรเชษฐ์ แจ้งวัง', '1509943207', 'okhttp/3.5.0', '58.9.70.251', '1509943207', 'okhttp/3.5.0', '58.9.70.251'),
('e9c4f0b7b4b85534aed4226b08f61334', 6, 'Boripat Petchkaew', '1509965312', 'okhttp/3.5.0', '27.55.81.25', '1509965312', 'okhttp/3.5.0', '27.55.81.25'),
('eaa85fedf2857104154ff4e10ffc0c95', 6, 'Boripat Petchkaew', '1509965751', 'okhttp/3.5.0', '27.55.81.25', '1509965751', 'okhttp/3.5.0', '27.55.81.25'),
('eabe5770511d197267ca9d4da48c4e13', 10, 'ศักรินทร์ แจะ แจะ', '1513927693', 'okhttp/3.5.0', '58.9.71.180', '1513927693', 'okhttp/3.5.0', '58.9.71.180'),
('ec10ddb1848b9ff0146798e439e66bc1', 109, 'สิทธิชัย ชุ่มใจ', '1505124752', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1505125082', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('ed4e0385e8a0cd2a130bee1dbb72ab56', 108, 'CITYTHAI ADMINISTATOR', '1505207608', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251', '1505207608', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '58.9.70.251'),
('ee10d79d0a4eb5b1f97dfde74888e5fb', 10, 'ศักรินทร์ แจะ แจะ', '1513928723', 'okhttp/3.5.0', '58.9.71.180', '1513928910', 'okhttp/3.5.0', '58.9.71.180'),
('eeb8b4c8e2eaf27451714d965413d5c4', 87, 'สิทธิชัย ชุ่มใจ', '1504172844', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251', '1504172844', 'ZiamFoods/1.0 (com.revenue.express.ZiamFoodsss; build:1.0.3; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251'),
('efae7fb2973143b6403431227462bad8', 27, 'Boripat Love Thai Rama IX', '1510052631', 'okhttp/3.5.0', '223.24.163.32', '1510052631', 'okhttp/3.5.0', '223.24.163.32'),
('f020ea26c50599bbad40045503538668', 10, 'ศักรินทร์ แจะ แจะ', '1512544149', 'okhttp/3.5.0', '58.9.70.251', '1512544149', 'okhttp/3.5.0', '58.9.70.251'),
('f1816fd8630c0517cc06aa39a3fed8c1', 41, 'MIX E-MAIL', '1504173320', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251', '1504235151', 'ZiamFoods/1.0 (com.revenue-express.CityThai; build:1.0.0; iOS 10.3.3) Alamofire/4.3.0', '58.9.70.251'),
('f2b86295552e27d826cb0147af75b0b6', 6, 'Boripat Petchkaew', '1503457026', 'okhttp/3.5.0', '58.9.70.251', '1503993351', 'okhttp/3.5.0', '58.9.70.251'),
('f48337ed93ed4e40fc571a63daa6177a', 6, 'Boripat Petchkaew', '1505375996', 'okhttp/3.5.0', '58.9.70.251', '1505376036', 'okhttp/3.5.0', '58.9.70.251'),
('f4b419a32904c52b65aa53b6333e2198', 27, 'Boripat Love Thai Rama IX', '1509962344', 'okhttp/3.5.0', '27.55.81.25', '1509962344', 'okhttp/3.5.0', '27.55.81.25'),
('f63f79cfc81bafbf0a471ba5c354f26e', 27, 'Boripat Love Thai Rama IX', '1510111735', 'okhttp/3.5.0', '27.55.102.13', '1510111735', 'okhttp/3.5.0', '27.55.102.13'),
('f8a42235768f14e8159488c0bf79752c', 10, 'ศักรินทร์ แจะ แจะ', '1513928547', 'okhttp/3.5.0', '58.9.71.180', '1513928547', 'okhttp/3.5.0', '58.9.71.180'),
('fb5dfb8e8a0da2f0a533e94b036b53ed', 6, 'Boripat Petchkaew', '1509965761', 'okhttp/3.5.0', '27.55.81.25', '1509965761', 'okhttp/3.5.0', '27.55.81.25'),
('fb75b7a0ffcc9c4e5b610c1f6d14f724', 10, 'ศักรินทร์ แจะ แจะ', '1513932171', 'okhttp/3.5.0', '58.9.71.180', '1513932195', 'okhttp/3.5.0', '58.9.71.180'),
('fbabe5727f4e1ade210ce0ee879c1e85', 109, 'สิทธิชัย ชุ่มใจ', '1509954435', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251', '1509954436', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251'),
('fbde430f3ffdb6e363b70d883ff38d2f', 109, 'สิทธิชัย ชุ่มใจ', '1510633090', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251', '1511233733', 'CityThai/1.0 (com.revenue-express.CityThai; build:1.0.3; iOS 11.0.1) Alamofire/4.5.0', '58.9.70.251'),
('fd7e5395b42040d30b0e91a965eb0a18', 6, 'Boripat Petchkaew', '1510040446', 'okhttp/3.5.0', '27.55.117.67', '1510040446', 'okhttp/3.5.0', '27.55.117.67'),
('fe1190c3679460225fa5a85bb2411a7b', 27, 'Boripat Love Thai Rama IX', '1509966011', 'okhttp/3.5.0', '27.55.81.25', '1509966011', 'okhttp/3.5.0', '27.55.81.25'),
('feb82c45f7921d88024091c1a746d63d', 1, 'Team Worapong', '1498922874', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '27.145.176.3', '1498922875', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '27.145.176.3'),
('ffc96b1961e3a03d2cd2b6732eb8c808', 27, 'Boripat Love Thai Rama IX', '1509962276', 'okhttp/3.5.0', '27.55.81.25', '1509962276', 'okhttp/3.5.0', '27.55.81.25'),
('ffed5c04cc3aefac11fdb9e978c97223', 108, 'CITYTHAI ADMINISTATOR', '1505299956', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251', '1505299956', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Mobile Safari/537.36', '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_member_access_back`
--

CREATE TABLE `zzz_member_access_back` (
  `mema_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mema_memh_id` int(11) NOT NULL DEFAULT '0',
  `mema_memh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mema_login_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mema_login_agent` text COLLATE utf8_unicode_ci,
  `mema_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mema_last_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mema_last_agent` text COLLATE utf8_unicode_ci,
  `mema_last_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_member_access_back`
--

INSERT INTO `zzz_member_access_back` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('006d5460dee18f805fe71a0d466dc13b', 2, 'chaleamsuk sremaung sremaung', '1484813035', NULL, '27.55.159.204', '1484813035', NULL, '27.55.159.204'),
('00bca92f74f5769e57143e0db4e33cc7', 52, 'Boripat P', '1490087030', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490087285', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('00c85024e07785f4672f24528d87be38', 1, 'Team Worapong', '1486455790', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1494494887', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('0137a57787a5c9b39d6d4cbe523d4fc9', 34, 'Chaleamsuk Sremaung', '1487135522', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135522', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('0138b60007020eb77625905511588227', 2, 'chaleamsuk sremaung', '1487048468', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1487048468', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('015755be1a5947dac00af14c58136229', 2, 'chaleamsuk sremaung', '1486640578', NULL, '58.9.70.186', '1486640578', NULL, '58.9.70.186'),
('01d56179fd634dfe6b007cd7231c75b9', 2, 'chaleamsuk sremaung sremaung', '1484628419', NULL, '223.24.17.9', '1484628419', NULL, '223.24.17.9'),
('01f096c9a9bc693908583bd7fbbdecde', 41, 'Sitichai', '1493865422', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236', '1493876376', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236'),
('01fff936561f451ee0cace411584a828', 61, 'Mixzer', '1494557252', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557252', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('0256ec6ecceacb48bb403883c312c8a5', 25, 'surachet cheangwang', '1488163851', 'okhttp/3.5.0', '58.9.70.93', '1488163857', 'okhttp/3.5.0', '58.9.70.93'),
('027e7b676ed490a495da82f7a307d5af', 2, 'chaleamsuk sremaung', '1486440665', NULL, '58.9.70.38', '1486540558', NULL, '58.9.70.186'),
('02971024cc19e5dd1dad93317cb08262', 32, 'Chaleamsuk1', '1494562575', 'okhttp/3.5.0', '223.24.41.171', '1494565642', 'okhttp/3.5.0', '58.9.70.251'),
('02b8c0216e97db7fc008285c287129a1', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1488164981', 'okhttp/3.4.0', '58.9.70.93', '1488194150', 'okhttp/3.4.0', '58.9.70.93'),
('02c4545cf04570bf1f6c7f1d182e4c03', 33, 'Chet Surachet', '1488275095', 'okhttp/3.5.0', '58.9.70.93', '1488366697', 'okhttp/3.5.0', '58.9.70.93'),
('030a128ca9d80b4e38cd7d3687a05f74', 32, 'Chaleamsuk', '1493026102', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo V3 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.132 Mobile Safari/537.36', '58.9.70.93', '1493027085', 'Mozilla/5.0 (Linux; Android 5.1.1; vivo V3 Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.132 Mobile Safari/537.36', '58.9.70.93'),
('032f5c7d86723508b8add8e1ca4cb40c', 61, 'Mixzer', '1495621025', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621025', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('0339f4560ce54dfee70c0d6b4dbeb18f', 65, 'Narathip Prabpairin', '1490158063', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490170286', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('033cde4581a07bddac96601deb064620', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487913463', 'okhttp/3.4.0', '58.9.70.93', '1487913463', 'okhttp/3.4.0', '58.9.70.93'),
('039b85f91aa454536c0f1262f7e260b0', 1, 'Team Worapong', '1485333075', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1487819818', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('03ca899dad581dfc5812e7fc7684e5a3', 2, 'chaleamsuk sremaung', '1484732696', NULL, '58.9.90.39', '1490169865', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('03caddb5d231fb4e6b59b0ffc3b8f7fd', 64, 'Chaleamsuk Sremaung', '1495088644', 'okhttp/3.5.0', '58.9.70.251', '1495088719', 'okhttp/3.5.0', '58.9.70.251'),
('03cb216542bc8c881d2d01226ae7841f', 25, 'surachet cheangwang', '1488163025', 'okhttp/3.5.0', '58.9.70.93', '1488163025', 'okhttp/3.5.0', '58.9.70.93'),
('041edbe04ad83e08d235add46b5ff996', 41, 'Sitichai', '1493700234', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.251', '1493700234', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.251'),
('04e754fb27d592f1108ed2626454f175', 39, 'สุดารัตน์ แจ้งวัง', '1487146072', NULL, '58.9.70.186', '1487146072', NULL, '58.9.70.186'),
('04fadc658bf8d54289e5aec0d746a060', 1, 'Ziam Thai Thai', '1484619978', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484619978', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('05e895e7f0cc18a0deeca8b1564f3393', 52, 'Boripat P', '1490086427', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490086427', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('067f3e33d6c9fcd4fa74d6f74e98dfe6', 2, 'chaleamsuk sremaung 555', '1484801952', NULL, '27.55.159.204', '1484801952', NULL, '27.55.159.204'),
('06a99784a3f2745229e255a363db8441', 1, 'Team Worapong', '1490583439', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490600706', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('06cd51fc4e7036a816ea9fdebba31cba', 8, 'ziamthai.com', '1485541867', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485541867', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('06d1f9ab5a8fbe2973fffd3eef636dc2', 68, 'Boatty PT', '1491842154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '49.49.241.86', '1491842292', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '49.49.241.86'),
('071858f6841fbc027c5ccf29b19a1c4f', 40, 'สิทธิชัย ชุ่มใจ', '1488363708', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31', '1488450505', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.135.121'),
('073cca8d53a32bd50305aac0ff5d5ada', 33, 'Chet Surachet', '1487748760', 'okhttp/3.5.0', '58.9.70.93', '1488169076', 'PostmanRuntime/3.0.9', '58.9.70.93'),
('07fac842da4910b3b7ed6fd7a28a45e2', 30, 'Chet Surachet', '1486719565', NULL, '58.9.70.186', '1486719565', NULL, '58.9.70.186'),
('081b5ebf236ba9a3122c5ca034f2b938', 32, 'Chaleamsuk1', '1493292891', 'okhttp/3.5.0', '223.24.101.250', '1493959888', 'okhttp/3.5.0', '223.24.58.219'),
('086569fa3ed857c186298134b81f66b1', 32, 'Chaleamsuk1', '1495079340', 'okhttp/3.5.0', '58.9.70.251', '1495079347', 'okhttp/3.5.0', '58.9.70.251'),
('08668afca9b927854c6d87bf81e71412', 61, 'Mixzer', '1494557759', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494557759', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('08d3e3f941d0efd2caf2f9e187bf628b', 6, 'Boripat Petchkaew', '1495432845', 'okhttp/3.5.0', '1.46.199.232', '1495432845', 'okhttp/3.5.0', '1.46.199.232'),
('090a2eb39ad063e1bd1e9895fa670adf', 32, 'Chaleamsuk', '1490668625', 'okhttp/3.5.0', '58.9.70.93', '1490862056', 'okhttp/3.5.0', '58.9.70.93'),
('094861ff43663644862fdb119ea4a8e0', 6, 'Boripat Petchkaew', '1493097228', 'okhttp/3.5.0', '58.9.70.93', '1493097228', 'okhttp/3.5.0', '58.9.70.93'),
('0972573db83b2ebadd8eb4f33a8455d1', 8, 'ziamthai.com', '1495189115', 'okhttp/3.5.0', '58.9.70.251', '1495189222', 'okhttp/3.5.0', '58.9.70.251'),
('0b04f063247e412cfa3b36fb996a08d4', 25, 'surachet cheangwang', '1487326350', NULL, '58.9.70.186', '1487326350', NULL, '58.9.70.186'),
('0b1fed927121ea9ee597f61dee2a388d', 41, 'Sitichai .Cumjai', '1487218051', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254', '1490157558', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.93'),
('0b726c914da364050c53de1a0b616279', 40, 'สิทธิชัย ชุ่มใจ', '1488439430', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1489567529', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('0b74270e1b0ec540a58cbc7bf1ea39f0', 40, 'สิทธิชัย ชุ่มใจ', '1488167077', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488172374', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('0b93e8abb3cbee88abd39b5c054eeb9f', 1, 'Team Worapong', '1494917492', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494917492', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('0c216a428bd4b6add36f481efef29b74', 41, 'Sitichai .Cumjai', '1488356655', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31', '1488362566', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31'),
('0d0bfc4ac3f48309d419a54b96103150', 32, 'Chaleamsuk Sremaung', '1487135624', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135624', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('0df850c734acdcc36cf4322b79989f2b', 33, 'Chet Surachet', '1487132743', NULL, '58.9.70.186', '1487143456', NULL, '58.9.70.186'),
('0e370469914e6576ab5e7cffdfa28d2b', 2, 'chaleamsuk sremaung sremaung', '1484638400', NULL, '223.24.17.9', '1484638400', NULL, '223.24.17.9'),
('0edc67b56022bdd44c75f47692061fc8', 1, 'Team Worapong', '1487305284', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1487326268', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('0f1cfb421bdccfd31aaa58355e923c1d', 1, 'Team Worapong', '1487578859', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1487585558', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('0f500a25e657510faaad50f6fca90c05', 61, 'Sitichai Chumjai', '1490156017', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490156147', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('0fb2ea2c3b1061bb7efeea3ac52c0466', 32, 'Chaleamsuk Sremaung', '1487055838', NULL, '58.9.70.186', '1487072691', NULL, '58.9.70.186'),
('0fb34046f64eb384ffd502a0a7876410', 61, 'Mixzer', '1495613036', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495613072', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('1114b299455a9d09f66f94675ec5c689', 31, 'Chaleamsuk Sremaung', '1486718870', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718870', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('11c3cb98a4a84989a84953c902839752', 32, 'Chaleamsuk', '1493103739', 'okhttp/3.5.0', '58.9.70.93', '1493106062', 'okhttp/3.5.0', '27.55.19.186'),
('11c977a55e3c898960123d2d97f47f77', 41, 'Sitichai Mixzer', '1490590471', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490590893', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('11ddc0b0cf7f21dc50128aa88e0ba69d', 41, 'Sitichai', '1494561823', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561823', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('11ea7aa69533938283b737349c52164f', 4, 'บอสเองน่ะ', '1494832679', 'okhttp/3.5.0', '58.9.70.251', '1494834620', 'okhttp/3.5.0', '58.9.70.251'),
('11f4835c8e2e782c2d837c5e6c20e9a4', 34, 'Chaleamsuk Sremaung', '1487135433', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135433', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('1255c7ba91d61d851a50b5dd9283762a', 32, 'Chaleamsuk1', '1495528073', 'okhttp/3.5.0', '27.55.45.144', '1495595665', 'okhttp/3.5.0', '223.24.113.141'),
('12665c6483b0a883c58b65228d2d0175', 61, 'Sitichai Chumjai', '1488165858', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488165887', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('12889fe922028f527d8dcf5fc99921b5', 2, 'chaleamsuk sremaung sremaung', '1484654851', NULL, '58.9.90.39', '1484654851', NULL, '58.9.90.39'),
('12948403d6fa2334b65dd6bd9fac3a64', 25, 'surachet cheangwang', '1488165911', 'okhttp/3.5.0', '58.9.70.93', '1488165911', 'okhttp/3.5.0', '58.9.70.93'),
('1359a2f877c4cd261484e6d2e4a32a65', 28, 'Chet Surachet', '1486717840', NULL, '58.9.70.186', '1486717840', NULL, '58.9.70.186'),
('13d695b69257394db7c5cc73ba7ef77f', 2, 'chaleamsuk sremaung', '1486357043', NULL, '223.24.77.26', '1486357043', NULL, '223.24.77.26'),
('164993f5d34642d827ffec0fd08dc72e', 61, 'Mixzer', '1495600799', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495601198', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('16b9fe064cb4437aebd3e1230235af22', 34, 'Chaleamsuk Sremaung', '1487134648', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134648', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('16ccb30c06431669058b514595319987', 33, 'Chet Surachet', '1495612411', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495612490', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('17a99a19d2d567d3b943ccc3963c31d1', 1, 'Worapong Sriwichian', '1486455382', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455382', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('17f0d978650f353136a99f0c110afa8b', 1, 'Team Worapong', '1488462397', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.192.148', '1488462407', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.192.148'),
('180d7323cdacf8091dc9e5e1393e6f06', 1, 'Team Worapong', '1488161322', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1488161322', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('180dd27aa6031d06cbcff3664a118d8a', 27, 'Boripat Love Thai Rama IX', '1486717050', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486717051', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('18545b088ad3b23bd2f21cfeff8b1724', 1, 'Team Worapong', '1487910186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1487934889', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('18e0b8214934bc65cf72e064a889c634', 1, 'Team Worapong', '1489398241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489398241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('190515264af09753aac3b62d36d081d4', 1, 'Team Worapong', '1488449123', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.192.148', '1488449278', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.192.148'),
('1980f224f3c2f947fb472cc13bc67696', 41, 'Sitichai', '1495446251', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495446429', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('1996b612fbd32725581d03d97813b221', 2, 'chaleamsuk sremaung sremaung', '1484625130', 'PostmanRuntime/3.0.9', '58.9.90.39', '1484625130', 'PostmanRuntime/3.0.9', '58.9.90.39'),
('19aec2039bb7089be9d929bd931f11aa', 61, 'Mixzer', '1495597221', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495597289', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('19be0606b12d17aeee6e4e25c53ed2ea', 27, 'Boripat Love Thai Rama IX', '1495427594', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495427594', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('19c0858c94fa895d2d296eb73b861117', 33, 'Chet Surachet', '1488122290', 'okhttp/3.5.0', '49.230.204.47', '1488122290', 'okhttp/3.5.0', '49.230.204.47'),
('1b26c053c788668fca01629df107b993', 41, 'Sitichai', '1493968067', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '223.24.137.116', '1495087752', 'ZiamFoods/1.0.3 CFNetwork/811.4.18 Darwin/16.5.0', '223.24.15.124'),
('1b63b0e4dc48eb0e42d5b99f1e7e5893', 26, 'Chaleamsuk Sremaung', '1486716730', NULL, '58.9.70.186', '1486716730', NULL, '58.9.70.186'),
('1b9094f6ccb7ef10a09ad8633597831e', 8, 'ziamthai.com', '1488186745', 'okhttp/3.4.0', '58.9.70.93', '1488193466', 'okhttp/3.4.0', '58.9.70.93'),
('1ba3ea174cc6dce9ec11cff0bc58c2de', 6, 'Boripat Petchkaew', '1492659513', 'okhttp/3.5.0', '58.9.70.93', '1492659513', 'okhttp/3.5.0', '58.9.70.93'),
('1ba49f063973c44cc019ce4b1b06b502', 34, 'Chaleamsuk Sremaung', '1487128515', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487128515', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('1bdf4069c10a343f1e3dce10130786d9', 34, 'Chaleamsuk Sremaung', '1487135789', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135837', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('1bfd7e2335a123cf4c754f552aa1530f', 4, 'joesak naree', '1487909679', 'okhttp/3.4.0', '58.9.70.93', '1487909817', 'okhttp/3.4.0', '58.9.70.93'),
('1c44b3a2893cfb0988555f85b4d1f3e3', 25, 'surachet cheangwang', '1488165017', 'okhttp/3.5.0', '58.9.70.93', '1488165017', 'okhttp/3.5.0', '58.9.70.93'),
('1c57eb6bc2637a56f577f274b34f2b03', 2, 'chaleamsuk sremaung sremaung', '1484809291', NULL, '27.55.159.204', '1484809291', NULL, '27.55.159.204'),
('1ca06f9ca8763a44b8d40419a2b0fb2d', 1, 'Worapong Sriwichian', '1486455389', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455389', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('1cc1e236c09e8f5b5271082d698b7e81', 2, 'chaleamsuk sremaung sremaung', '1484731551', NULL, '58.9.90.39', '1484731551', NULL, '58.9.90.39'),
('1cdc209ec1ca6fe9bbfed0600f46f873', 61, 'Mixzer', '1494559609', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559609', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('1e2bbff1bd0c34523b101242b750f178', 41, 'Sitichai Bin', '1492574570', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1492654868', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('1f2e16083f08adad8960705a4076f2ee', 33, 'Chet Surachet', '1495537166', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495537499', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('1f5e61a4b52bc3e7ed51dbcc4e9ac15b', 34, 'Chaleamsuk Sremaung', '1487134157', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134157', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('1f8ca5c116e2846b429155b635c37fe4', 1, 'Team Worapong', '1494482612', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494482612', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('2008b5d620d84627cfb7c34fd61a703f', 61, 'Mixzer', '1493863368', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '172.58.46.254', '1493864393', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '172.58.46.254'),
('2068833a23b7e5ab0db9a8cdaafe3f41', 61, 'Sitichai Chumjai', '1488439413', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488439414', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('20f354bfefd3ee9edeee61614e513733', 27, 'Boripat Love Thai Rama IX', '1494920762', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494920762', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('218e3922e2a0c1b5677812aeeb47d074', 10, 'Choo Black', '1486700693', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '58.9.70.186', '1486700694', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '58.9.70.186'),
('21acdb80d9551e746036b7096c607827', 41, 'Sitichai .Cumjai', '1487222290', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254', '1487307859', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.153.78'),
('2236f3fda71dfbfa3a6e604f30e718a0', 27, 'Boripat Love Thai Rama IX', '1494996993', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494996993', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('22d20fca68c8e9d4ed2d84952e148df8', 1, 'Team Worapong', '1494984182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494997239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('22eb8e7930d6588338d155591b4daa8a', 33, 'Chet Surachet', '1486719756', NULL, '58.9.70.186', '1487674897', 'okhttp/3.5.0', '58.9.70.93'),
('230309f27bf19780aed1058de0e4d327', 2, 'chaleamsuk sremaung', '1490169547', 'okhttp/3.5.0', '223.24.65.13', '1490169547', 'okhttp/3.5.0', '223.24.65.13'),
('231aa325b5880791282d44fe1dbb3b32', 34, 'Chaleamsuk Sremaung', '1487135476', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135476', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('231abf41d7bb3a24ea92cc5d62fd5383', 40, 'สิทธิชัย ชุ่มใจ', '1487573730', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487584711', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('235b22a2986c7ce0e9634548cf30ac51', 61, 'Sitichai Chumjai', '1490156158', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490156292', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('23b0efb340656574017f046fd94a4378', 2, 'chaleamsuk sremaung', '1487055588', NULL, '58.9.70.186', '1487055620', NULL, '58.9.70.186'),
('23dbe2f6f5d725fcb087a44b5b5b8604', 1, 'Team Worapong', '1489399607', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489402758', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('240176cfc58c22c5d86d589d0621fadb', 33, 'Chet Surachet', '1487056229', NULL, '58.9.70.186', '1487132228', NULL, '58.9.70.186'),
('24b4ab56e8d4c145837b6485f9c7b93f', 61, 'Mixzer', '1495537746', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '223.24.135.245', '1495537747', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '223.24.135.245'),
('24d5348ea420ed233bb68fdb6ec18513', 27, 'Boripat Love Thai Rama IX', '1495162453', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495162742', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('2502c640019a93a35ea1772c18337091', 41, 'Sitichai', '1495600196', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600197', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('25411938bf1d3a881c9d520fe6c23e27', 32, 'Chaleamsuk Sremaung', '1487136189', NULL, '58.9.70.186', '1487136189', NULL, '58.9.70.186'),
('257100d4be9064b6c8eb21a1fbf21076', 38, 'WOR INTER TRADE CORP', '1487156354', NULL, '58.9.70.186', '1487156354', NULL, '58.9.70.186'),
('25c96ceb65fabb5cf9e0832345c30ed0', 74, 'บริพัตร เพชรแก้ว', '1495186140', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495186140', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('26020ecd5751ae8176f83f9d8c70a0f4', 61, 'Mixzer', '1495600206', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600764', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('261fb132826f05e43db84454cbd4f77c', 41, 'Sitichai .Cumjai', '1490170015', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490170071', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('26955b7d8bc68b4fbcca8cd765be9eec', 33, 'Chet Surachet', '1488161943', 'okhttp/3.5.0', '58.9.70.93', '1488161943', 'okhttp/3.5.0', '58.9.70.93'),
('26a12fc2ac8acdb5553c5f392a3b495d', 1, 'Team Worapong', '1487823280', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1487823280', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('26b9f20136dd73ca9cc0f2af28b47bf9', 41, 'Sitichai', '1494819071', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494819072', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('278b749e0b5ff2d80d37aed511193e49', 27, 'Boripat Love Thai Rama IX', '1487932614', 'okhttp/3.4.0', '58.9.70.93', '1487935525', 'okhttp/3.4.0', '58.9.70.93'),
('27aea000558ab3c7c4bebaf737c239bb', 34, 'Chaleamsuk Sremaung', '1487135575', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135575', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('280ffc21f115be1f82a2b83058a422ef', 40, 'สิทธิชัย ชุ่มใจ', '1487309192', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.153.78', '1487421815', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '119.76.28.234'),
('288c32849e8f9763aee951e2607a97d5', 34, 'Chaleamsuk Sremaung', '1487141655', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487141655', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('28989ec342c66ced93f6b34695a873f0', 33, 'Chet Surachet', '1487832716', 'okhttp/3.4.0', '58.9.70.93', '1487832751', 'okhttp/3.4.0', '58.9.70.93'),
('28d66845ef07ccab50ba1386b329b4fb', 41, 'Sitichai', '1495445571', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495523063', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('29c57ba3f0b4396e3ea3a6d6c05c64c9', 2, 'chaleamsuk sremaung', '1486633527', NULL, '58.9.70.186', '1486633527', NULL, '58.9.70.186'),
('29d3f3818239672436ee5897bb80a893', 2, 'chaleamsuk sremaung', '1486716744', NULL, '58.9.70.186', '1486716759', NULL, '58.9.70.186'),
('2a69c6759eea76caf08fbcc0f1ee8e3f', 10, 'Choo Black', '1495098163', 'okhttp/3.5.0', '58.9.70.251', '1495098163', 'okhttp/3.5.0', '58.9.70.251'),
('2b2a5b2d86ee88f143f9c19543ca434d', 1, 'Team Worapong', '1489399357', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489399362', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('2b6a29a11b66b8f1d1bc4e52d48400ac', 34, 'Chaleamsuk Sremaung', '1487134961', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134961', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('2be31f09c28e43e46d99ea00d15245f5', 68, 'Boatty PT', '1491912562', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '49.49.241.86', '1491912563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '49.49.241.86'),
('2c8dda4353da4acc026fced1a73fe3ac', 8, 'ziamthai.com', '1485536691', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536691', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('2ccff089ac8e7b088aa00cf22051dcf0', 41, 'Sitichai Mix', '1492751979', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.87.107', '1493283262', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.98.173'),
('2d2cb285c9012d3393282489eed6c969', 64, 'Chaleamsuk Sremaung', '1494559812', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494559812', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('2daf2e99f3e366593f0f7b4134579382', 40, 'สิทธิชัย ชุ่มใจ', '1487584782', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487585142', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('2e0efdf9f35158a580a0f0fb0e972ea2', 61, 'Mixzer', '1494562933', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494562933', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('2e53029ba75d94a28ae0715fca64d67c', 64, 'Chaleamsuk Sremaung', '1494559859', 'okhttp/3.5.0', '223.24.41.171', '1494559859', 'okhttp/3.5.0', '223.24.41.171'),
('2edbbd096aa9b1d3a9850d18baf95d51', 74, 'บริพัตร เพชรแก้ว', '1495428160', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495428160', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('2f6e7b4bee978ffaa126fd8d229ca771', 2, 'chaleamsuk sremaung sremaung', '1484636407', NULL, '223.24.17.9', '1484636407', NULL, '223.24.17.9'),
('2fa6a8b7fcbd90bc0b7fa57a71afb412', 61, 'Mixzer', '1495424305', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495436339', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('3003fa085ba926c9c0cf53cddf90a8d8', 34, 'Chaleamsuk Sremaung', '1487134216', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134216', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('303fcd73ed7c82e668bb026de7f9a987', 2, 'chaleamsuk sremaung sremaung', '1484637122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484637122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('305535b9cf36d0e4447ba00ebd945108', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487303785', NULL, '58.9.70.186', '1487329789', NULL, '58.9.70.186'),
('3069cef210dde13b130b6e32a2829ff5', 28, 'Chet Surachet', '1486717999', NULL, '58.9.70.186', '1486717999', NULL, '58.9.70.186'),
('310a7f6aecc7d1d1e942851e7613d628', 2, 'chaleamsuk sremaung sremaung', '1484808815', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484808815', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('31cf5030713aa91f29dd45681d65c2ad', 33, 'Chet Surachet', '1487834050', 'okhttp/3.4.0', '58.9.70.93', '1488171759', 'okhttp/3.4.0', '58.9.70.93'),
('31ef6d9ec2056c1d39499221d0c8ddfa', 61, 'Mixzer', '1495621362', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621362', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('32fe327b4b8a77766341da60d4996de4', 61, 'Sitichai Chumjai', '1489220153', 'okhttp/3.5.0', '49.229.49.195', '1489220153', 'okhttp/3.5.0', '49.229.49.195'),
('33355fb1df5a32bf2737c9749996f5c3', 6, 'Boripat Petchkaew', '1487323974', 'Mozilla/5.0 (Linux; Android 6.0.1; ASUS_Z00UD Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Mobile Safari/537.36', '58.9.70.186', '1487323992', 'Mozilla/5.0 (Linux; Android 6.0.1; ASUS_Z00UD Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Mobile Safari/537.36', '58.9.70.186'),
('3388fbe8d7f85b50081192f8604cfed2', 1, 'Ziam Thai', '1485536283', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536283', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('33a227430187d0c5316860c4d8881896', 41, 'Sitichai', '1494561894', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494561894', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('346bd8d28625b267d1b51fa37944d53e', 61, 'MIXZER', '1490158423', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490169812', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('34795fd7c5bace50198839d7e58f3fa6', 1, 'Team Worapong', '1493365899', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493370027', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('34807096cd9d176bd9e57688f603e91b', 32, 'Chaleamsuk Sremaung', '1486721395', NULL, '58.9.70.186', '1486721395', NULL, '58.9.70.186'),
('34d4e89834e3b57d2d424f8d6463814a', 6, 'Boripat Petchkaew', '1487146590', NULL, '58.9.70.186', '1487146590', NULL, '58.9.70.186'),
('35440cfe95279ae0a22d1b0e3102d7ed', 74, 'บริพัตร เพชรแก้ว', '1495426456', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495426456', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('363eaf5f750ce08bc53f1f1886bbf4a6', 1, 'Worapong Sriwichian', '1486455758', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455758', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('365c1782e2fb7baa0b18767723dccc06', 1, 'Team Worapong', '1486611523', 'PostmanRuntime/3.0.9', '58.9.70.186', '1494846657', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('365f6ae33cce921988a6023696c649eb', 27, 'Boripat Love Thai Rama IX', '1495595357', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495595357', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('367ebf49fa89cfe5ff8ff75293e4adbd', 40, 'สิทธิชัย ชุ่มใจ', '1487585380', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487586510', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('371a99ffaaf1a3328e0adc6aa9fb9ef3', 41, 'Sitichai', '1494561670', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561670', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('37c9876e600440475a2b496a8366a311', 41, 'Sitichai', '1494557314', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557314', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('383234f0b5e63f6cfdffa3c4cdded56a', 34, 'Chaleamsuk Sremaung', '1487133630', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487133630', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('3883ba45db8f11ca2ffeef14320082a2', 27, 'Boripat Love Thai Rama IX', '1495426928', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495426928', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251'),
('388e7caef44e064ecc25ef4532080c80', 1, 'Team Worapong', '1492659564', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492688994', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('38a2a8c95a1d3f2ee21aba8ee31fdf0d', 61, 'SITICHAI', '1490587383', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.217.227', '1490587789', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.217.227'),
('38b2cb50b338a9621dff4f974b1c83ff', 2, 'chaleamsuk sremaung sremaung', '1484731676', NULL, '58.9.90.39', '1484731676', NULL, '58.9.90.39'),
('38dbf4d9565bf5cef7aae20d0b2069bc', 74, 'บริพัตร เพชรแก้ว', '1495162767', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495162826', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('38fc35b1ab59bd5d0934d232a229243d', 1, 'Ziam Thai Thai', '1484547783', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484547783', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('392f48b7cad6c51ac3f9057b4369a8c0', 61, 'Sitichai Chumjai', '1490072301', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490072555', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('39b3c8f10f3a70029c9702b74bc1b733', 74, 'บริพัตร เพชรแก้ว', '1495428245', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495428245', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('3a2370752d09db851c5c5126a10aaf8f', 1, 'Team Worapong', '1487320704', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '58.9.70.186', '1487332897', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.200.134'),
('3a43105518780a0b70de304e85ce65b1', 2, 'chaleamsuk sremaung', '1486615777', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486615777', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('3b47b63d29857f1493307cdbce9fafe5', 40, 'สิทธิชัย ชุ่มใจ', '1487758509', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.94.201', '1488172903', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.16.28'),
('3be5a3b0e08a87c4f115f05c935583e8', 61, 'Mixzer', '1494563478', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494817288', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('3c0a3310df5499338d27947979fe211f', 2, 'chaleamsuk sremaung sremaung', '1484625186', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484625186', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('3c1cf4b1c9f9e79c25ba304640630334', 63, 'Team Gmail', '1492752838', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '27.55.133.170', '1492772836', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '27.55.239.207'),
('3c39b65f4024385fe935c55c656c19cf', 41, 'Sitichai', '1494819113', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494823037', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('3cc96e3df52c5c478dc7e689a2d77062', 2, 'chaleamsuk sremaung', '1486636040', NULL, '58.9.70.186', '1486640555', NULL, '58.9.70.186'),
('3cedc5edf864e493bdd219341204447e', 41, 'Sitichai Test', '1491374665', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1492504205', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('3cf317f89abdd1b4a13b74a7b0c4fb79', 27, 'Boripat Love Thai Rama IX', '1495182624', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495182624', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251'),
('3d06036a7f1237d90fdb11b14cd588be', 6, 'Boripat Petchkaew', '1487906272', 'okhttp/3.4.0', '58.9.70.93', '1487906272', 'okhttp/3.4.0', '58.9.70.93'),
('3d1ef5adb73d9ecf6b652453b23f0641', 33, 'Chet Surachet', '1487326319', NULL, '58.9.70.186', '1487326319', NULL, '58.9.70.186'),
('3d78ee5962a2cec72c81e835262bcac2', 27, 'Boripat Love Thai Rama IX', '1493096748', 'okhttp/3.5.0', '58.9.70.93', '1493096748', 'okhttp/3.5.0', '58.9.70.93'),
('3d8ea1e78d4187a02f08112245cb26e3', 2, 'chaleamsuk sremaung', '1484732158', NULL, '58.9.90.39', '1495177508', 'Dalvik/2.1.0 (Linux; U; Android 5.1.1; vivo V3 Build/LMY47V)', '58.9.70.251'),
('3ee96c81bffd734959c2bd0811f08bdc', 2, 'chaleamsuk sremaung 555', '1484801431', NULL, '27.55.159.204', '1484801431', NULL, '27.55.159.204'),
('3f93a9a2125aece1aa7cdbd05d3c69d5', 47, 'Piyarat Toomsap', '1495620850', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495620850', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('3faa00b8caf7d8c91c1b2325ba4802f2', 10, 'Choo Black', '1489550373', 'okhttp/3.5.0', '58.9.70.93', '1489550373', 'okhttp/3.5.0', '58.9.70.93'),
('3fc123542839689afa4187fe8b065b71', 61, 'Mixzer', '1494561833', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561917', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('40522003fd85e18be2a04c276718ab59', 61, 'Sitichai Chumjai', '1488430793', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488439327', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('4062fd59f0116afc43cb4a3fcd6d75ba', 32, 'Chaleamsuk', '1490155957', 'okhttp/3.5.0', '223.24.65.13', '1490159080', 'okhttp/3.5.0', '223.24.65.13'),
('4073ca986b9ba8b4ef83ff8dea836ca4', 4, 'บอสเองน่ะ', '1494843853', 'okhttp/3.5.0', '58.9.70.251', '1494919254', 'okhttp/3.5.0', '58.9.70.251'),
('40aaebcb5d367bd387ac5ea45512de2a', 2, 'chaleamsuk sremaung sremaung', '1484723353', NULL, '223.24.10.209', '1484723353', NULL, '223.24.10.209'),
('40f2cfaeed3590f85c77c0c8b56d58c2', 22, 'Worapong Sriwichian', '1486457013', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486457014', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('4134795cefbe2c4b882c1580911f9dbd', 75, 'boatty toomsap', '1495621342', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621342', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('41a4f09bc50084722b9351dffbeb1105', 61, 'Mixzer', '1492682336', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93', '1492686517', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('41d0d894b0fcc034b7c1417f9e6edcaf', 61, 'Mixzer', '1495087773', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '223.24.15.124', '1495178022', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '223.24.50.210');
INSERT INTO `zzz_member_access_back` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('41d6ad29f789fa077cc3e7fdf204803b', 41, 'Sitichai', '1494561852', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494561852', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('4242efa3f4e80bf4ec5704623ca23866', 1, 'Ziam Thai Thai', '1484703819', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484703819', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('4247ae507b21b64a54f173f6d67881da', 34, 'Chaleamsuk Sremaung', '1487216603', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487216604', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('42a83381249ea19bbe27fe4e884d5f31', 32, 'Chaleamsuk Sremaung', '1486718888', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718888', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('42b33150df1e7046366fc84f5a1e5378', 2, 'chaleamsuk sremaung sremaung', '1484809455', NULL, '27.55.159.204', '1484809455', NULL, '27.55.159.204'),
('42f48071a6c2c375b20b2894fba75360', 2, 'chaleamsuk sremaung', '1484636970', NULL, '223.24.17.9', '1485513375', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('4325d006addd001732c8605a066d6120', 1, 'Ziam Thai', '1485536392', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536392', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('43362acc057a6cb450b20c061701255b', 1, 'Team Worapong', '1493880418', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1493894272', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('439da7a037d18f2033016e5396deea2b', 33, 'Chet Surachet', '1487148142', NULL, '58.9.70.186', '1487148142', NULL, '58.9.70.186'),
('43da86490cb3759c80f19956b7d702e9', 64, 'Chaleamsuk Sremaung', '1495083037', 'okhttp/3.5.0', '58.9.70.251', '1495083037', 'okhttp/3.5.0', '58.9.70.251'),
('43e35f8b34a297e124c86b46b78f8414', 1, 'Ziam Thai', '1485536503', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536503', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('455fd64e6ad21ade5e13b3d56e235f90', 2, 'chaleamsuk sremaung', '1486633623', NULL, '58.9.70.186', '1486633623', NULL, '58.9.70.186'),
('4571c6d8d3f4dd20e3ee1a8ffb7dc626', 34, 'Chaleamsuk Sremaung', '1487749868', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.74.139', '1487749868', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.74.139'),
('45a6405c0882af40f1b031f0b82d6b81', 41, 'Sitichai', '1494557185', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557185', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('45cd787fb2773d26db441cc0073fc296', 74, 'บริพัตร เพชรแก้ว', '1495427834', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495427834', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('45d76958280986d40b3a76a2bd62ce32', 34, 'Chaleamsuk Sremaung', '1487135904', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135929', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('45fa448c193f90ed1fd0bf8ce6e6235a', 32, 'Chaleamsuk1', '1494317723', 'okhttp/3.5.0', '223.24.108.59', '1494320495', 'okhttp/3.5.0', '223.24.108.59'),
('463b7a75b9cf6d39db5bf66c37082f3a', 6, 'Boripat Petchkaew', '1492660201', 'okhttp/3.5.0', '58.9.70.93', '1492660201', 'okhttp/3.5.0', '58.9.70.93'),
('46cfa2a0d001155aef841491cbad5023', 41, 'Sitichai Mixzer', '1491296946', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1491365550', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('476d307d16503cba869a2dfe0b749d16', 28, 'Chet Surachet', '1486717769', NULL, '58.9.70.186', '1486717769', NULL, '58.9.70.186'),
('4794bbed7f8ddf52cc3662de73b70dc3', 61, 'Mixzer', '1495597251', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495597261', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('47a77eca6ae4fa9ec271930c0784e9f9', 1, 'Team Worapong', '1487837839', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1487849329', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('484298a7c94edd0538034cabf692d470', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487763361', 'okhttp/3.4.0', '58.9.70.93', '1487874837', 'okhttp/3.4.0', '180.183.103.57'),
('486394d0706ba991106363ec1862978a', 1, 'Team Worapong', '1487228117', 'Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '58.9.70.186', '1487243689', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('486416299f909cc2e58e3a954c5c5719', 25, 'surachet cheangwang', '1488165952', 'okhttp/3.5.0', '58.9.70.93', '1488165952', 'okhttp/3.5.0', '58.9.70.93'),
('48a83706917df070b05adb65d3f53c40', 40, 'สิทธิชัย ชุ่มใจ', '1488365549', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488365967', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('48c347b8ebeb60f01a703fb29fdacd05', 61, 'Mixzer', '1494819101', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494819101', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('49129cec56a943486e578e069e7ce5bd', 2, 'chaleamsuk sremaung', '1486633338', NULL, '58.9.70.186', '1486633338', NULL, '58.9.70.186'),
('49381c4a90b3632f9ebd54f4632f6c31', 2, 'chaleamsuk sremaung 555', '1484739228', NULL, '223.24.11.170', '1484739228', NULL, '223.24.11.170'),
('493efc0674e4c40f823ead0779db2bb9', 2, 'chaleamsuk sremaung sremaung', '1484739207', NULL, '223.24.11.170', '1484739207', NULL, '223.24.11.170'),
('49aa8405ba9d40f9fec2bb52974d2d3f', 61, 'Mixzer', '1495597759', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495597759', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('49d4098e3fee69715a82e02eae4bf0f5', 1, 'Team Worapong', '1489397694', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489397792', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('49f602ac8d3c3c0f5a02e7a87754bb76', 34, 'Chaleamsuk Sremaung', '1487134731', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134731', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('4a349ced0f3b848f284094a22a19b9b2', 40, 'สิทธิชัย ชุ่มใจ', '1487831692', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488364152', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('4ae47550db8de6a330fd6a259c3ecb9d', 61, 'xyz', '1490344736', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490353733', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('4b624087cf3c4187e63a6ec16f06a3ed', 41, 'Sitichai Pure', '1492655030', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.12.230', '1492663548', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.122.173'),
('4b70e7a03b3d4ec3e71caa6ca2794d4f', 64, 'Chaleamsuk Sremaung', '1495079003', 'okhttp/3.5.0', '58.9.70.251', '1495079020', 'okhttp/3.5.0', '58.9.70.251'),
('4bb5ff04e308ae6b4130d48d75a36e94', 32, 'Chaleamsuk', '1490169625', 'okhttp/3.5.0', '223.24.65.13', '1490169918', 'okhttp/3.5.0', '223.24.65.13'),
('4bba6b45664561ccb8ef34dc89e628a5', 40, 'สิทธิชัย ชุ่มใจ', '1488166088', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166088', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('4c0584ed8346602c9647a54a3252cebe', 2, 'chaleamsuk sremaung sremaung', '1484628502', NULL, '223.24.17.9', '1484628502', NULL, '223.24.17.9'),
('4c0cbe7c477f62931cdcbe78f6ea443f', 49, 'ราชา ทีเด็ด', '1492749675', 'okhttp/3.5.0', '58.9.70.93', '1492749678', 'okhttp/3.5.0', '58.9.70.93'),
('4c598bced6f5004c28a6b38b3f9fcd58', 2, 'chaleamsuk sremaung', '1486634836', NULL, '58.9.70.186', '1486635596', NULL, '58.9.70.186'),
('4c62e4845919a632ec6f221e70f56739', 32, 'Chaleamsuk', '1490242530', 'okhttp/3.5.0', '27.55.207.185', '1490242531', 'okhttp/3.5.0', '27.55.207.185'),
('4d0de025a466c24100042f90f7a11e85', 61, 'SITICHAI', '1490586072', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490589976', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('4d4d22258edfb61b0a44b6323a2149ca', 61, 'Mixzer', '1494559588', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559588', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('4d995491b827bf845af3824ca705a468', 1, 'Team Worapong', '1490563488', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.125.206', '1490563801', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.125.206'),
('4dca667c96ca9fec8dde3ded7faad959', 26, 'Chaleamsuk Sremaung', '1486716512', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486716512', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('4e0f101316ec12aa43db276e2defc061', 32, 'Chaleamsuk Sremaung', '1487672691', 'okhttp/3.5.0', '58.9.70.93', '1487763316', 'okhttp/3.4.0', '58.9.70.93'),
('4eed63a882f324b8b2a42fd901e34052', 40, 'สิทธิชัย ชุ่มใจ', '1487653272', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487664909', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('4f572d57b505d39f0618afb52a57719b', 61, 'Mixzer', '1494559768', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559768', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('4f5bd292772f6b35640dbaf4b96640bf', 34, 'Chaleamsuk Sremaung', '1487135386', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135386', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('50adc77e13d4e914cf613d8df4062bc8', 6, 'Boripat Petchkaew', '1495432864', 'okhttp/3.5.0', '1.46.199.232', '1495432864', 'okhttp/3.5.0', '1.46.199.232'),
('50e559541d2b694b9e672270ef8154d6', 41, 'Sitichai', '1494562533', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494562533', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('516648f2c30ebcb9ef767c92abfdabe0', 40, 'สิทธิชัย ชุ่มใจ', '1487732047', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1487747896', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('5166a1d31493bd53b75efa73c9da01df', 27, 'Boripat Love Thai Rama IX', '1495187844', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495187844', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251'),
('51d9eafdab650f864ba42a7d924347c9', 64, 'Chaleamsuk Sremaung', '1490155945', 'okhttp/3.5.0', '223.24.65.13', '1490155946', 'okhttp/3.5.0', '223.24.65.13'),
('521847a6d84fd26ce5ccd74e720cd4d4', 34, 'Chaleamsuk Sremaung', '1487141742', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487144492', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('5359a1c1ebb26da47eccd0a49b3e4949', 61, 'Mixzer', '1494563364', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494563452', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('53f3cd8ccdd64cca4b08f20b2d162016', 33, 'Chet Surachet', '1487155440', NULL, '58.9.70.186', '1487243631', NULL, '58.9.70.186'),
('545dbc69d3d63b7f819bc8688647339b', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487142177', NULL, '58.9.70.186', '1487147547', NULL, '58.9.70.186'),
('54a72500fc19ad8108adfd427bcc24c6', 1, 'Team Worapong', '1494482502', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494482502', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('55076e88c08dcae7683ffa75f73ba83a', 33, 'Chet Surachet', '1487055817', NULL, '58.9.70.186', '1487055853', NULL, '58.9.70.186'),
('554b8409a536416e4b3fda71671150f8', 2, 'chaleamsuk sremaung sremaung', '1484290250', 'runscope/0.1', '54.198.151.156', '1484290250', 'runscope/0.1', '54.198.151.156'),
('559bded7d0d15253f2f777665c719778', 61, 'Mixzer', '1495619827', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495619926', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('55ca2fe40e44af47083347add9a9384f', 2, 'chaleamsuk sremaung', '1486633983', NULL, '58.9.70.186', '1486633983', NULL, '58.9.70.186'),
('55d52dae8ffd312001239607d9a300e8', 27, 'Boripat Love Thai Rama IX', '1495617296', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495617296', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('564d6644a9d4c2282bfbd49a48fbd2af', 1, 'Team Worapong', '1487748991', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1487759401', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '58.9.70.93'),
('566a4ef5fa4268996623b3867449bc06', 32, 'Chaleamsuk Sremaung', '1487141988', NULL, '58.9.70.186', '1487141988', NULL, '58.9.70.186'),
('573d0ec6b536b6bffcee840b106b1389', 2, 'chaleamsuk sremaung', '1486349747', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.38', '1486349747', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.38'),
('57473ab0e767301636a4663b0320a2d9', 1, 'Team Worapong', '1490974852', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '27.55.64.105', '1490975317', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '27.55.64.105'),
('57604fadbc6fef9c1d319902f5e1f0de', 74, 'บริพัตร เพชรแก้ว', '1495188261', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495188261', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('577830b8ad5618f764cddfca06be16b8', 2, 'chaleamsuk sremaung', '1486637002', NULL, '58.9.70.186', '1486637152', NULL, '58.9.70.186'),
('58590ea0a112dfee6193d2067d2b0e21', 61, 'Mixzer', '1495607662', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495607698', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('58696742285fbd8ba44b81bb8b948b47', 49, 'ราชา ทีเด็ด', '1487909921', 'okhttp/3.4.0', '58.9.70.93', '1487921465', 'okhttp/3.4.0', '58.9.70.93'),
('590b1e4660fdd8cec0aa71b516391abb', 6, 'Boripat Petchkaew', '1495432850', 'okhttp/3.5.0', '1.46.199.232', '1495432850', 'okhttp/3.5.0', '1.46.199.232'),
('5910f665fe5ccf873b16446a4c016264', 52, 'Boripat P', '1490089404', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490155802', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('5916fe76f838486bfdba45a07c053ad4', 61, 'Sitichai Chumjai', '1489567719', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1489571814', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('592ac71afd469d03d3f96ed1270a2d89', 61, 'Mixzer', '1495598463', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600067', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('593b7053e735e4273013f854eb1f2643', 2, 'chaleamsuk sremaung 555', '1484722899', 'PostmanRuntime/3.0.9', '58.9.90.39', '1484801982', NULL, '27.55.159.204'),
('597b3dd801459668a0c4d1f66e8efc47', 34, 'Chaleamsuk Sremaung', '1487144863', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487144898', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('598bb42441518ef2c52f6d64e2fc2468', 32, 'Chaleamsuk', '1493197458', 'okhttp/3.5.0', '223.24.49.102', '1493206119', 'okhttp/3.5.0', '223.24.89.164'),
('59929c6330a6af7316bcee61cbcc0d07', 61, 'Mixzer', '1494557367', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557367', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('59cbc231f9816310231ea0d68eca6afd', 2, 'chaleamsuk sremaung', '1484901079', NULL, '27.55.149.8', '1484901079', NULL, '27.55.149.8'),
('59d60bee880f92353634d57050a4ae69', 1, 'Team Worapong', '1492751065', 'okhttp/3.5.0', '58.9.70.93', '1492751409', 'okhttp/3.5.0', '58.9.70.93'),
('5a1e6c6ba55320cb152c9a9d6e85a206', 40, 'สิทธิชัย ชุ่มใจ', '1488340977', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31', '1488356645', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31'),
('5bad63901e44f1db22847d480a6ed17c', 64, 'Chaleamsuk Sremaung', '1490242549', 'okhttp/3.5.0', '27.55.207.185', '1490243074', 'okhttp/3.5.0', '27.55.207.185'),
('5bc5330384850945d76daa58312ba720', 1, 'Team Worapong', '1494836575', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1494836583', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('5c9e92071cc3df6ebf413ad1b04a9cfd', 1, 'Ziam Thai Thai', '1484729360', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', '58.9.90.39', '1484732538', 'PostmanRuntime/3.0.9', '58.9.90.39'),
('5ca548b60f2c72926b6f7874acf1cacc', 61, 'Sitichai Chumjai', '1488172384', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488172384', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('5cc8f7c5060ff997810677c119fd40b4', 61, 'Mixzer', '1494560059', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494561181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('5d305cecfc205f2fb74b95e85b471b7b', 41, 'Sitichai', '1493968066', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '223.24.137.116', '1493968067', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '223.24.137.116'),
('5dbd7d034ec6429a606f4052164b17ac', 1, 'Team Worapong', '1487558634', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '58.9.70.186', '1487565164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('5dee2c4299a749c556d5240d791b6336', 61, 'Mixzer', '1495601304', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495607557', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('5ee4c84ed3c35051249f41b7d428db50', 2, 'chaleamsuk sremaung sremaung', '1484824034', NULL, '58.9.90.39', '1484824034', NULL, '58.9.90.39'),
('5f15a6ae7a6372049d48154e41bc0db2', 61, 'Mixzer', '1494557967', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494557967', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('5f179287afed176e03340355d9a922aa', 2, 'chaleamsuk sremaung sremaung', '1484638982', NULL, '223.24.17.9', '1484638982', NULL, '223.24.17.9'),
('5f69976e29d1877d9a8290a5321a10f2', 61, 'Sitichai Chumjai', '1488364449', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488365218', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('5f6d4fbc85588c538cc121b2c9eb6886', 61, 'Sitichai Chumjai', '1490073187', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490084363', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('5fd4ea84d0afa9a40fd23c1e4ae3b401', 61, 'SITICHAI', '1490934400', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.234.136', '1492568648', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('60cb40fc47e70c4022464a61c9ea75a6', 61, 'SITICHAI', '1490244424', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93', '1490668605', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('611ed3b3dbcdbf970995650f02fa72f8', 1, 'Team Worapong', '1493802755', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1493802882', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('612b9a003e0556ef0bf88fb2bebd8fa2', 1, 'Team Worapong', '1486608589', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486614037', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('6136d218e469effa21ddf65df1e4609d', 1, 'Team Worapong', '1494495275', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494495275', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('61384241ba56e2314b2745385dfe7d1d', 61, 'Mixzer', '1495620414', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495620508', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('614444faa23547c163d24a9119d6a701', 1, 'Team Worapong', '1493868857', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251', '1493872495', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', '58.9.70.251'),
('61bad253c1fe63378fcc3d6eaa3eb1d3', 34, 'Chaleamsuk Sremaung', '1487134696', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134696', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('621e6cc09d67a35b7989fc7eeb227f47', 25, 'surachet cheangwang', '1495537764', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495538253', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('6289d41646380dc5b533dfff44322681', 1, 'Team Worapong', '1489399313', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489399315', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('6293ff3dcf4548500e7510ace734be11', 74, 'บริพัตร เพชรแก้ว', '1495427787', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495427787', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('6336da46ce2212178cec839f151f9ea1', 2, 'chaleamsuk sremaung', '1486634689', NULL, '58.9.70.186', '1486634689', NULL, '58.9.70.186'),
('646d1bf60b1e3a911c2f4b20bc3ac4d6', 52, 'Team Worapong', '1490086571', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490087008', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('64d7157109ddd9e0c08c968470b4f194', 10, 'Choo Black', '1493023482', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '58.9.70.93', '1493025561', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '58.9.70.93'),
('64e49d2c7a8620dccff3fa9477a29aaf', 32, 'Chaleamsuk1', '1495083052', 'okhttp/3.5.0', '58.9.70.251', '1495083060', 'okhttp/3.5.0', '58.9.70.251'),
('651c351e84306e92340ca66e259b9995', 32, 'Chaleamsuk', '1493108222', 'okhttp/3.5.0', '27.55.19.186', '1493192855', 'okhttp/3.5.0', '58.9.70.93'),
('65544464ad083db8d5e8b6f3ea2a88c2', 6, 'Boripat Petchkaew', '1487910115', 'okhttp/3.4.0', '58.9.70.93', '1487910205', 'okhttp/3.4.0', '58.9.70.93'),
('6554d2ecce93712d961b68b9cbb0a885', 41, 'Sitichai .Cumjai', '1488524307', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.65.211', '1488525029', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.65.211'),
('655890b1b8870ef7b9fce6e9528e963a', 61, 'Mixzer', '1495620883', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495620914', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('659c7814b3cf29fbcacb3df03c57e2d8', 2, 'chaleamsuk sremaung sremaung', '1484639040', NULL, '223.24.17.9', '1484639040', NULL, '223.24.17.9'),
('65c793d6a197d362ec9f8b5678e4e32d', 1, 'Ziam Thai', '1485409263', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27', '27.55.64.29', '1485409263', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27', '27.55.64.29'),
('66b4030f7d15c82aa0dd0e9b112f64e1', 1, 'Team Worapong', '1486613765', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486613765', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('66ec4320ad4c1485f684e0e764a397ba', 33, 'Chet Surachet', '1487326880', NULL, '58.9.70.186', '1487326880', NULL, '58.9.70.186'),
('66f19c64fccd35d59ed6fd4952e5f657', 34, 'Chaleamsuk Sremaung', '1487134802', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134802', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('6776ecb3bf5343c40282100766ee8f74', 2, 'chaleamsuk sremaung sremaung', '1484723762', NULL, '223.24.10.209', '1484723762', NULL, '223.24.10.209'),
('67e7bfaf0e2756c4b8c228de308b6a7c', 61, 'Mixzer', '1495074955', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495082306', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('687d8d0ca3b0d3255babfcd2578a0175', 8, 'ziamthai.com', '1485541846', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485541846', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('690094012908e586ddce66e8a3b95d49', 2, 'chaleamsuk sremaung', '1486548007', NULL, '58.9.70.186', '1486607390', NULL, '58.9.70.186'),
('693a142353d0687bfe0a80c2c4025320', 1, 'Team Worapong', '1492759102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492760185', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('69623ad3bded8162a47bb9ec5c5e0a75', 40, 'E24ND', '1495621296', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495621725', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('69b671dca8914c0f21f7da1a48b651a4', 41, 'Sitichai', '1494561677', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561677', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('6a305edb0bedbbbc3055f559e60dce8e', 25, 'surachet cheangwang', '1488163735', 'okhttp/3.5.0', '58.9.70.93', '1488163755', 'okhttp/3.5.0', '58.9.70.93'),
('6a6c492ab802657bfa922877fdb394b4', 27, 'Boripat Love Thai Rama IX', '1495177427', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495178440', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('6aff5b01224a7ef5f2466b7406e43517', 27, 'Boripat Love Thai Rama IX', '1495182483', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495182483', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('6b905f0627415788d7dd59f0c82ce4fd', 40, 'สิทธิชัย ชุ่มใจ', '1488173241', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.16.28', '1488173489', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.16.28'),
('6b912039b7c02172ed8927b2684cf190', 27, 'Boripat Love Thai Rama IX', '1495009280', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495009280', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('6b957e4ca3618f146a3eb7db2e3693e3', 32, 'Chaleamsuk Sremaung', '1487055699', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487055699', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('6c655b99ba0f152aee40c8a43da429cb', 32, 'Chaleamsuk1', '1494558038', 'okhttp/3.5.0', '223.24.41.171', '1494558038', 'okhttp/3.5.0', '223.24.41.171'),
('6cc93adf46aa9122d3b892f7ff9d6b9a', 41, 'Sitichai', '1494906025', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494908261', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('6cd3b937c2ffd0f23d8eb5575f5666f5', 1, 'Team Worapong', '1494579698', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '114.109.156.94', '1495528782', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '27.145.176.112'),
('6cdd1f3cccf743dda121aeafb61a6b77', 1, 'Worapong Sriwichian', '1486548880', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486550579', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('6d9db7b692ada585902b362e9bbc9384', 1, 'Team Worapong', '1495183502', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94', '1495183502', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94'),
('6db10661c9edc9821d3d22cb7d191fb5', 32, 'Chaleamsuk Sremaung', '1487135684', NULL, '58.9.70.186', '1487135684', NULL, '58.9.70.186'),
('6df2455723329c55f02f69efcb1ee47d', 27, 'Boripat Love Thai Rama IX', '1487906327', 'okhttp/3.4.0', '58.9.70.93', '1487906327', 'okhttp/3.4.0', '58.9.70.93'),
('6e01d460bf956f36499dbb1951ab63f3', 40, 'สิทธิชัย ชุ่มใจ', '1487216618', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487559645', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('6e0b41b7c83b2bd0549f7e0d4b1801ec', 32, 'Chaleamsuk1', '1494260375', 'okhttp/3.5.0', '27.55.162.109', '1494260472', 'okhttp/3.5.0', '27.55.162.109'),
('6ea8058a0c230bbb49606f65889a96d5', 61, 'Mixzer', '1494560106', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561638', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('6eaf964b1b65240deca5a7a2bca54315', 2, 'chaleamsuk sremaung sremaung', '1484708304', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484708304', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('6f0132b43888983ef95e703aefd41127', 32, 'Chaleamsuk1', '1494574201', 'okhttp/3.5.0', '223.24.45.229', '1494585889', 'okhttp/3.5.0', '27.55.87.138'),
('6f6287827294e496046728ce29036a32', 2, 'chaleamsuk sremaung sremaung', '1484637138', NULL, '223.24.17.9', '1484637138', NULL, '223.24.17.9'),
('6f91961b2bf314af4a2de144e61e6cd9', 1, 'Team Worapong', '1493803649', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '58.9.70.251', '1493808976', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '223.24.106.88'),
('7083632fd96afb6d2f726900b31fd452', 40, 'สิทธิชัย ชุ่มใจ', '1487924922', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1487929904', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('70864f7f516061963bc11f39138bbae6', 40, 'E24ND', '1493787154', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.251', '1493787251', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.251'),
('70ac91e02bf26f46fb84b3921700ebb4', 4, 'joesak naree naree', '1484538959', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '58.9.90.39', '1484538959', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '58.9.90.39'),
('7120cc5ab7762f5ff1431578a4fe6ef6', 40, 'สิทธิชัย ชุ่มใจ', '1491366086', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1491369127', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('713c38ff548348a447b11d63d7424e6f', 63, 'Team Gmail', '1490690993', 'okhttp/3.5.0', '223.24.71.229', '1490692766', 'okhttp/3.5.0', '223.24.71.229'),
('7151085581bfd64e6a26b1fec0bf13e4', 41, 'Sitichai', '1495185446', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495185490', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('7159d56cc5cdd1be17afb50b399ed463', 1, 'Team Worapong', '1495183271', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94', '1495183276', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94'),
('71cd8833e8781a0387426cad40d5e401', 26, 'Chaleamsuk Sremaung', '1486716650', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486716650', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('73061803f374dc232c9881a90577dd35', 52, 'Boripat P', '1487918710', 'okhttp/3.4.0', '58.9.70.93', '1487918754', 'okhttp/3.4.0', '58.9.70.93'),
('731a174e1b8be1631d44907321f0ab47', 61, 'Sitichai Chumjai', '1488279719', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.110.129', '1488340919', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.112.31'),
('7326b7cab27fb286ec21e4f39c21f523', 61, 'Mixzer', '1494824979', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494842746', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('73c371e0d416305db3c5a557e1f81892', 74, 'บริพัตร เพชรแก้ว', '1495178493', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495180028', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('73c83c2a8bbd2602f23cac7905838e9f', 8, 'ziamthai.com', '1495426859', 'okhttp/3.5.0', '58.9.70.251', '1495426859', 'okhttp/3.5.0', '58.9.70.251'),
('73d7d14a1ecf5ee3c90daa7a5cbc06e0', 4, 'บอสเองน่ะ', '1494830801', 'okhttp/3.5.0', '58.9.70.251', '1494830867', 'okhttp/3.5.0', '58.9.70.251'),
('73e9a33d2366e654db5ceedc82cf92ea', 40, 'สิทธิชัย ชุ่มใจ', '1488172396', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488253766', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('74940bb38b7125d6e97c1b6bb94bc2d0', 2, 'chaleamsuk sremaung sremaung', '1484811510', NULL, '27.55.159.204', '1484811510', NULL, '27.55.159.204'),
('7565ba7b267815a758a11bf4148edf6e', 74, 'บริพัตร เพชรแก้ว', '1495188292', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495188292', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('7589429241489740407ed7b838e0f7ba', 34, 'Chaleamsuk Sremaung', '1487132734', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487132734', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('75894e6e73e5e207f0679b1060ce6615', 38, 'WOR INTER TRADE CORP', '1487145797', NULL, '58.9.70.186', '1487145797', NULL, '58.9.70.186'),
('75fa8b0f6f7faa559e20abdfb8ea19a2', 74, 'บริพัตร เพชรแก้ว', '1495427005', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495427005', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('761c4e4f1a90b0494f31846dbaed9937', 40, 'สิทธิชัย ชุ่มใจ', '1489571855', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1489573242', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('763c2195a848ebc4e369ad3d31326f9f', 1, 'Team Worapong', '1486716685', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486716685', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('763e137c9b8232528d64ebdd6e089852', 8, 'ziamthai.com', '1488254983', 'okhttp/3.4.0', '58.9.70.93', '1488254986', 'okhttp/3.4.0', '58.9.70.93'),
('76a2d279af9fed3b76d27bb100bb9414', 2, 'chaleamsuk sremaung', '1490683935', 'okhttp/3.5.0', '58.9.70.93', '1490684194', 'okhttp/3.5.0', '58.9.70.93'),
('76a8a254629ba2592dad55e7ef6102ad', 32, 'Chaleamsuk1', '1494477539', 'okhttp/3.5.0', '58.9.70.251', '1494556684', 'okhttp/3.5.0', '223.24.41.171'),
('76c2ea68e9eb812675f3cbc703be54f8', 41, 'Sitichai Mix', '1493005015', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1493367256', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('7753c930c9ed524ee7a35c2f69523e55', 41, 'Sitichai', '1494842859', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494843776', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('778a58e909d0a1005469ae0b43617df0', 6, 'Boripat Petchkaew', '1492660396', 'okhttp/3.5.0', '58.9.70.93', '1492660396', 'okhttp/3.5.0', '58.9.70.93'),
('779f118b41564999a03f2f9596efbde7', 61, 'SITICHAI', '1491287872', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1491294272', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('781e9a4cf8f06675af3c1c63723f6f15', 32, 'Chaleamsuk Sremaung', '1488515377', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.93', '1488515377', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.93'),
('782ea941f2a4f762d53cbaea4ec24e17', 1, 'Worapong Sriwichian', '1486456600', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486456600', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('7883911cddc00ef5fb9c1f5753d2fde7', 34, 'Chaleamsuk Sremaung', '1487129677', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487129677', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('788dd9d99bbbba8119d23eda3149ee8f', 34, 'Chaleamsuk Sremaung', '1487135702', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135763', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('78ced7e3d3d168072e7ef7b00ee724b8', 1, 'Worapong Sriwichian', '1486522465', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486547892', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('790e712a606946b295b93da7ef58a5ba', 61, 'Sitichai Chumjai', '1488439378', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488439379', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('79563287f456a3e26cfea43e2e4a1880', 61, 'Mixzer', '1493876519', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236', '1493876528', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236'),
('79e2cf912852ee235232b8355f24d35e', 73, 'สมชาย ศรชัย', '1495084505', 'okhttp/3.5.0', '58.9.70.251', '1495084596', 'okhttp/3.5.0', '58.9.70.251'),
('7a54ed8ee56c8e280e705d2909badf4b', 33, 'Chet Surachet', '1495177236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495177297', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('7b8e2d2e6e43b0ea4230e33f44404e08', 32, 'Chaleamsuk Sremaung', '1488515321', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.93', '1488515321', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.93'),
('7b9a6da354abc5f3d7cc76e552b8a98d', 1, 'Ziam Thai Thai', '1484878900', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484878900', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('7bca244a9bdac0a435c9f80919cadc51', 2, 'chaleamsuk sremaung sremaung', '1484290593', 'PostmanRuntime/3.0.9', '58.9.90.39', '1484290593', 'PostmanRuntime/3.0.9', '58.9.90.39'),
('7be85789105434c6711fb62c55e6fb4f', 1, 'Team Worapong', '1494578371', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494578371', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('7c2c58e941257439510ee67d6dfac0a9', 1, 'Worapong Sriwichian', '1486455680', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455680', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('7c4b88c5b9390e43923346ae715e7a79', 27, 'Boripat Love Thai Rama IX', '1487910087', 'okhttp/3.4.0', '58.9.70.93', '1487910087', 'okhttp/3.4.0', '58.9.70.93'),
('7c4eed2a47165d40c664b2e0d21797f8', 25, 'surachet cheangwang', '1488166325', 'okhttp/3.5.0', '58.9.70.93', '1488180923', 'okhttp/3.5.0', '58.9.70.93'),
('7c5136c2b284f1d666f129e00bde1803', 32, 'Chaleamsuk Sremaung', '1486718896', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718896', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('7c548fe28cc4586a60d135a6d67f0428', 1, 'Team Worapong', '1494578367', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494578367', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('7cc3b509252ba8d74fc8fead754060a8', 1, 'Worapong Sriwichian', '1486031161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', '58.9.70.218', '1486031161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', '58.9.70.218'),
('7d05ea32f4be8ed91ccce03ee64b07b3', 6, 'Boripat Petchkaew', '1492658939', 'okhttp/3.5.0', '58.9.70.93', '1492658939', 'okhttp/3.5.0', '58.9.70.93'),
('7ded76ca5870e22a986d89468da1a27e', 41, 'Sitichai', '1495601269', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495601293', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('7e45e5bf18f3ec13c98e7816f0aa3377', 61, 'Mixzer', '1494559806', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559806', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('7eb62127b87bed2d545a6a4573c211a7', 61, 'SITICHAI', '1490590019', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490590432', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('7ebc87e4af5de3852660b2a0400af0f9', 41, 'Sitichai Pure', '1492663568', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.122.173', '1492663568', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.122.173'),
('7ef5e8a42bf354f1414fec2d85bb45a3', 33, 'Chet Surachet', '1487666254', 'okhttp/3.5.0', '58.9.70.186', '1487666254', 'okhttp/3.5.0', '58.9.70.186');
INSERT INTO `zzz_member_access_back` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('7f850414982b101dc4981d74177a6ba3', 61, 'Sitichai Chumjai', '1490156302', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490156536', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('7f86258ff7e13f9d669bf8536087166e', 61, 'Mixzer', '1495595468', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495595468', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('7f91995883db5882cba3a490a4585f0d', 1, 'Team Worapong', '1495082039', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1495082039', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('801789eee449e6667fb4df23af9bb3b0', 61, 'Mixzer', '1494563143', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494563143', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('804a7f9b164c62bb11c11972e6016f11', 8, 'ziamthai.com', '1495427103', 'okhttp/3.5.0', '58.9.70.251', '1495427103', 'okhttp/3.5.0', '58.9.70.251'),
('807bf17035c9a08f6a292aa8267b8352', 8, 'ziamthai.com', '1486091880', 'PostmanRuntime/3.0.9', '58.9.70.218', '1486091880', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('80a5e89e176afb1cd9f48d9f67a7751f', 2, 'chaleamsuk sremaung', '1490683461', 'okhttp/3.5.0', '58.9.70.93', '1490683772', 'okhttp/3.5.0', '58.9.70.93'),
('80f58a51c28d32c1dc86c88f01dfd7d7', 66, 'Chaleamsuk Sremaung', '1490603286', 'okhttp/3.5.0', '223.24.51.79', '1490931701', 'okhttp/3.5.0', '223.24.55.51'),
('80f6f8cc91c212fab771cfdd9fa8e711', 52, 'Boripat P', '1487918655', 'Mozilla/5.0 (Linux; Android 6.0.1; ASUS_Z00UD Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '58.9.70.93', '1487918655', 'Mozilla/5.0 (Linux; Android 6.0.1; ASUS_Z00UD Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '58.9.70.93'),
('81325ded818d42af0c26edef12a89e83', 34, 'Chaleamsuk Sremaung', '1487222050', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254', '1487222050', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254'),
('8140642fad14348a54d7bc85f8b83283', 64, 'Chaleamsuk Sremaung', '1492586477', 'okhttp/3.5.0', '223.24.16.115', '1492651668', 'okhttp/3.5.0', '223.24.73.239'),
('81569021155be58673bf2aefe837337d', 6, 'Boripat Petchkaew', '1495432816', 'okhttp/3.5.0', '1.46.199.232', '1495432816', 'okhttp/3.5.0', '1.46.199.232'),
('81de3526f2fc420137db177358213fd6', 68, 'Boatty PT', '1493850373', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.247.154', '1495528582', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('81ea754741513982533ba72a566bb084', 40, 'สิทธิชัย ชุ่มใจ', '1487151183', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151183', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('825975690c420f448ddfdf01a164a59c', 41, 'Sitichai .Cumjai', '1488450888', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.135.121', '1488452801', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.135.121'),
('828d9fd020aae205ccacf53ad3101d31', 1, 'Ziam Thai', '1485349117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '58.9.90.39', '1485349117', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '58.9.90.39'),
('82908e31792b0f375548644c86f93dc7', 34, 'Chaleamsuk Sremaung', '1487135012', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135012', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('829613e431f6ffbc20209c3e03943929', 4, 'บอสเองน่ะ', '1494830889', 'okhttp/3.5.0', '58.9.70.251', '1494831579', 'okhttp/3.5.0', '58.9.70.251'),
('83b244faff8b20f67ce32b1de20311dd', 2, 'chaleamsuk sremaung sremaung', '1484638937', NULL, '223.24.17.9', '1484638937', NULL, '223.24.17.9'),
('83c589d571d4d4eb3ec505161ae67418', 32, 'Chaleamsuk', '1493005180', 'okhttp/3.5.0', '27.55.118.7', '1493051966', 'okhttp/3.5.0', '223.24.68.158'),
('83cbb55c8e80a0cf0f508545d350b912', 47, 'Piyarat Toomsap', '1495621377', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621377', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('83d686618ee6c7fc071337fd2234e48c', 44, 'อั้ม\' อิ้อ้า.', '1487900295', NULL, '49.49.250.97', '1487900400', NULL, '49.49.250.97'),
('842bf1ed768f563b767e24df862be43b', 41, 'Sitichai .Cumjai', '1488525135', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.65.211', '1488525143', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.65.211'),
('84d478878f313ed1639387afc9fa1d2e', 1, 'Team Worapong', '1494494981', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494494981', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('851b386c26c928203e120afa7359b14f', 1, 'Team Worapong', '1494482456', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494482456', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('8541211f83206ceef63d4e4318a494e1', 61, 'Mixzer', '1495082694', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495082728', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('859918b7eded93331db059ae2c654a69', 61, 'Mixzer', '1494214075', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494214716', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('85e3eb0c8a7bb7d49ecafbb2547c1752', 27, 'Boripat Love Thai Rama IX', '1493097199', 'okhttp/3.5.0', '58.9.70.93', '1493097199', 'okhttp/3.5.0', '58.9.70.93'),
('8600e1075acdff28f2ff1e12fbc94b6e', 2, 'chaleamsuk sremaung', '1486349735', 'PostmanRuntime/3.0.9', '58.9.70.38', '1486349735', 'PostmanRuntime/3.0.9', '58.9.70.38'),
('86dd18ee328dc2ed137186fccfb69e93', 26, 'Chaleamsuk Sremaung', '1486716752', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486716752', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('870569444d540a5e88232685659aa1a6', 1, 'Team Worapong', '1490853710', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '223.24.26.147', '1490853711', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E277 Safari/602.1', '223.24.26.147'),
('87593ef3f08ea9a21d1153f055eeba30', 28, 'Chet Surachet', '1486717408', NULL, '58.9.70.186', '1486717408', NULL, '58.9.70.186'),
('875bce867b79371c994dbfb1194c9229', 34, 'Chaleamsuk Sremaung', '1487129610', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487129610', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('87973c37d769acceb3286689012ed1b9', 1, 'Team Worapong', '1488521537', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93', '1488521597', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('88199b7b694fd84941f49b196b533069', 1, 'Ziam Thai', '1485536289', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536289', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('88cbcf0072f7c3ccea2135e586e1f683', 1, 'Ziam Thai', '1485534655', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485534655', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('891259dcf6d8e07b99f6225d0581ed0f', 32, 'Chaleamsuk Sremaung', '1487663760', NULL, '58.9.70.186', '1487663760', NULL, '58.9.70.186'),
('89be2e520ebdf983542b9ce3c98c14fb', 1, 'Team Worapong', '1493374753', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493377641', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('89d3ea7b7bf3db8080afbbb35b31b310', 1, 'Ziam Thai', '1485536290', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536290', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('8a154253fc543a87fff6bb816df2fe10', 33, 'Chet Surachet', '1495620708', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495620721', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('8aa5e3886d80e02073d4161db5c2d668', 2, 'chaleamsuk sremaung sremaung', '1484732254', NULL, '58.9.90.39', '1484732254', NULL, '58.9.90.39'),
('8b451e7834335b1dfe7e4e7064bbf82b', 61, 'Mixzer', '1494558159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494558159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('8b65e805ba0bb6fa56c158be7d175041', 64, 'Chaleamsuk Sremaung', '1493097248', 'okhttp/3.5.0', '58.9.70.93', '1493097248', 'okhttp/3.5.0', '58.9.70.93'),
('8c7dddd5c34f37520ebc3f866e29774f', 74, 'บริพัตร เพชรแก้ว', '1495186071', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495186071', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('8d82d10b0b0adf05c8fbf77e3eddaebd', 1, 'Team Worapong', '1493277556', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93', '1493290518', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('8e933163709ccd3bc5cd28927cfb931f', 61, 'Mixzer', '1494214842', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494214954', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('8ea101580429e5bcbd154fa675a945f6', 61, 'MIXZER', '1490236106', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490236376', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('8f15e5af52083458b34859ea6e8364e7', 1, 'Team', '1489654204', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '223.24.61.87', '1489654226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '223.24.61.87'),
('8f53284b6a12756e2e710286a3ef153c', 1, 'Worapong Sriwichian', '1486455520', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455520', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('905f08b3ea37fa296e018e8dadc92bda', 1, 'Team Worapong', '1491812169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1491822187', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('90db0e4fcfe16fae9bc40c854454f41f', 34, 'Chaleamsuk Sremaung', '1487135150', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135150', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('90dda5ea618895c0881af2f9f514c14d', 40, 'สิทธิชัย ชุ่มใจ', '1488166120', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166194', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('912a01e27c4a1899a20334085f621188', 44, 'อั้ม\' อิ้อ้า.', '1487899812', NULL, '49.49.250.97', '1487899812', NULL, '49.49.250.97'),
('918eed026e8e1b130e31f8c85515ef86', 32, 'Chaleamsuk1', '1494558042', 'okhttp/3.5.0', '223.24.41.171', '1494558042', 'okhttp/3.5.0', '223.24.41.171'),
('91a56bf4e6d91a7e9e0b6fc28b2b2e95', 61, 'Mixzer', '1495607387', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495607651', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('91be25790bf4d9bc9cddce098808a160', 1, 'Ziam Thai Thai', '1484636657', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484636657', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('9251639374bf988f116b7d5fbe8f0743', 32, 'Chaleamsuk1', '1494843363', 'okhttp/3.5.0', '27.55.82.184', '1494977764', 'okhttp/3.5.0', '27.55.91.231'),
('9275c4dee2aa6e7b7ae584b0a9197b26', 74, 'บริพัตร เพชรแก้ว', '1495187054', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495187054', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('9347b850c2bc83f15cbab98142f8d7c8', 40, 'สิทธิชัย ชุ่มใจ', '1487148544', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487148544', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('93511aa5d83880d2e5bd259c317fb6b2', 61, 'Mixzer', '1493876492', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236', '1493876504', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236'),
('937d97dd7664a142ae2e0f2281d9fd56', 61, 'Mixzer', '1495619687', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495619707', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('9387754df0873dab604b479175738494', 64, 'Chaleamsuk Sremaung', '1490169939', 'okhttp/3.5.0', '223.24.65.13', '1490242501', 'okhttp/3.5.0', '27.55.207.185'),
('939318e30746ad61bc1663897830d463', 41, 'Sitichai', '1495185072', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495185291', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('93a7043aef26319451680dda851040e7', 34, 'Chaleamsuk Sremaung', '1487132959', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487132959', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('940102c8c5286bf735cd5eea188803fa', 1, 'Team Worapong', '1494919996', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494919996', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('94e35fddbe958e5e8cccd9174fe42ba7', 40, 'E24ND', '1493375131', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.122.58', '1493696299', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.108.223'),
('951d2ab34326251bd22b57df27b69931', 32, 'Chaleamsuk1', '1494558049', 'okhttp/3.5.0', '223.24.41.171', '1494558049', 'okhttp/3.5.0', '223.24.41.171'),
('958470c4947fea44b5c3d672bedfe16f', 28, 'Chet Surachet', '1486717685', NULL, '58.9.70.186', '1486717685', NULL, '58.9.70.186'),
('962ef8862e1b2ae18356d7ed163e0a9f', 32, 'Chaleamsuk Sremaung', '1487135769', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135769', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('96b3e7e71ebbe70cf35135e0ded8b2b2', 1, 'Worapong Sriwichian', '1486457208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486466978', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('96bb5d1708403cb9604b05113896568a', 2, 'chaleamsuk sremaung sremaung', '1484812046', NULL, '27.55.159.204', '1484812046', NULL, '27.55.159.204'),
('96c2e84889b73cc0c9b7faca6f188fd1', 1, 'Team', '1489550507', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489567985', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('96f3ea5d6ed2654e4ed3c1c34932de68', 2, 'chaleamsuk sremaung', '1486365104', NULL, '58.9.70.38', '1486365104', NULL, '58.9.70.38'),
('97a7899c5bf7dd711c3f438224d79337', 2, 'chaleamsuk sremaung sremaung', '1484739191', NULL, '223.24.11.170', '1484739191', NULL, '223.24.11.170'),
('97e0f303570163ef77bb8af64a5aa8de', 2, 'chaleamsuk sremaung sremaung', '1484639787', NULL, '223.24.17.9', '1484639787', NULL, '223.24.17.9'),
('986331024e693287ebbf6bef75ba3c35', 61, 'SITICHAI', '1490668613', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93', '1490668614', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('9868c36bb00eab4d223f5f887d503319', 41, 'Sitichai', '1494561890', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494561890', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('98b93a0325a49a0fc2cbda013b66e753', 6, 'Boripat Petchkaew', '1487906356', 'okhttp/3.4.0', '58.9.70.93', '1487918219', 'okhttp/3.4.0', '58.9.70.93'),
('98fed52dea7c4b8ac1c40c7ebd3304e3', 6, 'Boripat Petchkaew', '1495432843', 'okhttp/3.5.0', '1.46.199.232', '1495432843', 'okhttp/3.5.0', '1.46.199.232'),
('99506529b466fd7b52d0ec8f886b56d7', 61, 'Sitichai Chumjai', '1488165742', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488165742', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('999220b66235ac28453e4051a8c191cc', 2, 'chaleamsuk sremaung sremaung', '1484879543', NULL, '223.24.42.139', '1484879543', NULL, '223.24.42.139'),
('99d0eaa739deba53304e554ddeaf6a85', 10, 'Choo Black', '1493006846', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '58.9.70.93', '1493009021', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '58.9.70.93'),
('99f2889d944211fbcb0833153338ddb5', 41, 'Sitichai .Cumjai', '1488525186', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.65.211', '1490587104', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.217.227'),
('9aba33b63b835cae5c43f869045b77f4', 33, 'Chet Surachet', '1495620749', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495620773', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('9ac28cda6a9dcb355e73d056b44b04d6', 74, 'บริพัตร เพชรแก้ว', '1495187401', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495187401', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('9b70a29051df5ec43ba9b68338a14e1f', 2, 'chaleamsuk sremaung sremaung', '1484731113', NULL, '58.9.90.39', '1484731113', NULL, '58.9.90.39'),
('9bfa6f8c17e9a0058e66dd644a196b18', 1, 'Ziam Thai Thai', '1484724609', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484724609', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('9c197b3fa3512105fe006ef4653b17b1', 32, 'Chaleamsuk Sremaung', '1487135967', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135967', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('9c42ea5c4daee4dec19f371e351a3c20', 64, 'Chaleamsuk Sremaung', '1495185668', 'okhttp/3.5.0', '27.55.3.24', '1495190183', 'okhttp/3.5.0', '58.9.70.251'),
('9c5af25f7211bb8744308628cc9e929f', 1, 'Team Worapong', '1488072664', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Safari/537.36', '27.55.162.217', '1488072664', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Safari/537.36', '27.55.162.217'),
('9ca340ba263584d7a626a18e8e554c25', 2, 'chaleamsuk sremaung', '1487048840', NULL, '58.9.70.186', '1487048840', NULL, '58.9.70.186'),
('9caecca40aa08d9e476ba958607ba78f', 66, 'Chaleamsuk Sremaung', '1490583080', 'okhttp/3.5.0', '27.55.73.112', '1490603089', 'okhttp/3.5.0', '223.24.51.79'),
('9cde9a711cc41f4137de7c360dd5fe2d', 41, 'Sitichai', '1494557153', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557153', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('9d1436bae38dd88de7e8c9c9b8bb9c44', 6, 'Boripat Petchkaew', '1492659627', 'okhttp/3.5.0', '58.9.70.93', '1492659627', 'okhttp/3.5.0', '58.9.70.93'),
('9d786daebabb6eced2fd1fc44cb4f0f2', 6, 'Boripat Petchkaew', '1495432836', 'okhttp/3.5.0', '1.46.199.232', '1495432836', 'okhttp/3.5.0', '1.46.199.232'),
('9f096cb5f60f17c372989e1f0db32ee2', 2, 'chaleamsuk sremaung sremaung', '1484662031', NULL, '223.24.85.243', '1484662031', NULL, '223.24.85.243'),
('9f9172c92045cfdb5f3853a896128391', 1, 'Team Worapong', '1492512389', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492514303', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('9fdc32f6234aeeb2a951f259b585b6ec', 41, 'Sitichai', '1494557184', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557184', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a01f06af61c43ac19da7274414165b5f', 61, 'MIXZER', '1490170126', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490172017', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('a037ae5c9b88b49423af5754b535a941', 27, 'Boripat Love Thai Rama IX', '1494917717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94', '1494917717', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '114.109.156.94'),
('a06dc5b9bc033d764cd047ea1680715a', 61, 'Mixzer', '1494842831', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494842850', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a07642fc26550561b21ebd01284a9f6c', 28, 'Chet Surachet', '1486718295', NULL, '58.9.70.186', '1486718295', NULL, '58.9.70.186'),
('a0e1c39d7cde06a7ec0c0feecb0a9c05', 61, 'Mixzer', '1493374652', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.22.124', '1493374691', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.22.124'),
('a19c2e6c5b49b61e289069136f3a7f6c', 2, 'chaleamsuk sremaung', '1486356326', NULL, '223.24.77.26', '1486356326', NULL, '223.24.77.26'),
('a1de4c0c9a5556fdcbcecd76bc96f17d', 41, 'Sitichai', '1494561833', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494561833', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('a22119850d069cdc2f8893ed92f43b73', 2, 'chaleamsuk sremaung', '1486633044', NULL, '58.9.70.186', '1486633044', NULL, '58.9.70.186'),
('a265e825ccaba351ee129aa7950f5fb2', 10, 'Choo Black', '1489550393', 'okhttp/3.5.0', '58.9.70.93', '1494903402', 'okhttp/3.5.0', '58.9.70.251'),
('a2c353bfeb1d73128098ca9ea4f0c7ad', 1, 'Team', '1489455749', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489482475', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('a379479f6d2f6c1040f4757db1419086', 2, 'chaleamsuk sremaung sremaung', '1484880370', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484880370', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('a3b4b5647319c3888b0066ce2c115fe5', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487860953', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '180.183.103.57', '1487860955', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '180.183.103.57'),
('a42949dd9e7329ea31be9ba6472776c6', 64, 'Chaleamsuk Sremaung', '1495082798', 'okhttp/3.5.0', '58.9.70.251', '1495082798', 'okhttp/3.5.0', '58.9.70.251'),
('a435a2338db83ff74fc3009273ccdb91', 1, 'Team Worapong', '1486716745', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486716745', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('a467a4115a58ea91eccb00582dfb2412', 33, 'Chet Surachet', '1495618689', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495620658', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('a52bdda0581cfa8d2be20921d831a744', 34, 'Chaleamsuk Sremaung', '1487132899', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487132899', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('a54488daeead91d025d340c5b7a83e33', 61, 'Mixzer', '1494902306', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494905272', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a59eb954eeece6c4af0d2c32c5599dd1', 34, 'Chaleamsuk Sremaung', '1487133476', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487133476', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('a5b6411bb3db4b092b7361001fb65df7', 61, 'Mixzer', '1493785669', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.1; iOS 10.2.1) Alamofire/4.3.0', '223.24.18.137', '1493785678', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.1; iOS 10.2.1) Alamofire/4.3.0', '223.24.18.137'),
('a5bea525a0677e2fc666a1311145e9cd', 61, 'Mixzer', '1494214985', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494474464', 'ZiamFoods/1.0.2 CFNetwork/811.4.18 Darwin/16.4.0', '58.9.70.251'),
('a5ec6d1ce59c774dc33554b9b73e3353', 41, 'Sitichai', '1495600100', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600179', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a6c97126f4c6e09dbb2153bcc910dd0e', 61, 'SITICHAI', '1490841264', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.114.5', '1490842164', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.114.5'),
('a6e23957d84a66eef9a8c6b461d0bdb4', 61, 'Mixzer', '1495596790', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495596813', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a86a32a66e30f2c255f26c7b5f3586b2', 61, 'Mixzer', '1495600086', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600086', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('a891fc720599db591d0dde7ad2b2b91e', 1, 'Team Worapong', '1488165022', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1488169504', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('a96cb93a19a5efb07e735b968639b465', 32, 'Chaleamsuk1', '1495601764', 'okhttp/3.5.0', '223.24.123.93', '1495601764', 'okhttp/3.5.0', '223.24.123.93'),
('a9735bbf5de92f259f221abc23cecf75', 32, 'Chaleamsuk1', '1495524487', 'okhttp/3.5.0', '27.55.45.144', '1495524487', 'okhttp/3.5.0', '27.55.45.144'),
('a979c81cca6ea4a1fee377adb4a1acc6', 32, 'Chaleamsuk1', '1495190204', 'okhttp/3.5.0', '58.9.70.251', '1495522736', 'okhttp/3.5.0', '223.24.94.122'),
('a97e73f844079e4ac7f541bd6ca70cb5', 32, 'Chaleamsuk Sremaung', '1489569926', 'okhttp/3.4.0', '58.9.70.93', '1489573940', 'okhttp/3.4.0', '27.55.27.240'),
('a9baafcc30236bfd9eeeae17b5c2e16e', 61, 'Sitichai Chumjai', '1490156549', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490157327', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('a9c9629a9f27c966674ade34071fab29', 74, 'บริพัตร เพชรแก้ว', '1495429047', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495429883', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('a9cec551ed24953b53ba8b895e0ef0b9', 41, 'Sitichai Mixzer', '1491294328', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1491295283', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('aa1486d63f98fd9ada3e1eaa7b4a134c', 2, 'chaleamsuk sremaung sremaung', '1484639386', NULL, '223.24.17.9', '1484639386', NULL, '223.24.17.9'),
('aa3337b5ed4aea04ce7f67c6b481be31', 1, 'Team Worapong', '1489399334', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489399335', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('aa68550df06fe373d9c23ef1d3eaec14', 64, 'Chaleamsuk Sremaung', '1490243343', 'okhttp/3.5.0', '27.55.207.185', '1490326904', 'okhttp/3.5.0', '27.55.209.214'),
('ab55bfdf77d0e12759431ddb9dfde40d', 1, 'Team Worapong', '1495183101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94', '1495183101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94'),
('ab61ea6bcb88beca30c18061f0cc4b50', 74, 'บริพัตร เพชรแก้ว', '1495187548', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495187548', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('ab6583fe4ba3d9c025d8e0e0baeab83b', 61, 'Mixzer', '1495620667', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.251', '1495620718', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.5; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.251'),
('ab8f24d5980a8985c42d92e7ba8a3043', 40, 'สิทธิชัย ชุ่มใจ', '1487749877', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.74.139', '1487758485', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.94.201'),
('ac1a4a66b148f6df3b2df265f836ddb8', 1, 'Team Worapong', '1487760468', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '58.9.70.93', '1487761746', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '223.24.113.87'),
('ac28dd638ad4f68897d32d9ce6fa30b8', 32, 'Chaleamsuk Sremaung', '1487672668', 'okhttp/3.5.0', '58.9.70.93', '1487672668', 'okhttp/3.5.0', '58.9.70.93'),
('aca50c33939685cf50ba857512f2d874', 26, 'Chaleamsuk Sremaung', '1486718180', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718180', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('ad32771e9585e1c72a0edda64990ffd4', 21, 'worapong', '1486455790', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455790', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('ad60171e498996fdb2f8e8caf05e6229', 2, 'chaleamsuk sremaung sremaung', '1484723848', NULL, '223.24.10.209', '1484723848', NULL, '223.24.10.209'),
('ae12ee0a08248dd7b2afb890dd3f0845', 32, 'Chaleamsuk1', '1494558028', 'okhttp/3.5.0', '223.24.41.171', '1494558028', 'okhttp/3.5.0', '223.24.41.171'),
('ae4b2c209f590fbd16da98bac9024e8b', 32, 'Chaleamsuk Sremaung', '1487147833', NULL, '58.9.70.186', '1487148393', NULL, '58.9.70.186'),
('ae89e13ece90b8d1d9bea4218632c4f6', 61, 'Mixzer', '1495184446', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495185344', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('aed34b52584ebaa041d6bd05d0b694be', 34, 'Chaleamsuk Sremaung', '1487133235', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487133235', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('af2951fb9783adbe82a38ce998c76537', 1, 'Team Worapong', '1495109547', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '27.145.176.57', '1495109547', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '27.145.176.57'),
('af4d2d30061aa25e6b979e94cc475fdc', 61, 'Mixzer', '1493876555', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236', '1493878864', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.2.1) Alamofire/4.3.0', '27.55.142.236'),
('af9c0d9cf851a041772dd99cb7b47d5a', 2, 'chaleamsuk sremaung sremaung', '1484726232', NULL, '223.24.10.209', '1484726232', NULL, '223.24.10.209'),
('b0c776c9d8d6f52a2fe8f1b7cdc2d751', 10, 'Choo Black', '1495510537', 'okhttp/3.5.0', '58.9.70.251', '1495510537', 'okhttp/3.5.0', '58.9.70.251'),
('b0e129704e97caa5368156eca0d65a43', 32, 'Chaleamsuk', '1493094879', 'okhttp/3.5.0', '58.9.70.93', '1493094879', 'okhttp/3.5.0', '58.9.70.93'),
('b13437056ea664eaf7e1b9f02b2afb06', 32, 'Chaleamsuk Sremaung', '1487666409', NULL, '58.9.70.186', '1487671463', 'okhttp/3.5.0', '58.9.70.93'),
('b13715df5b76f2bcd317cd19305c173b', 61, 'Mixzer', '1495600781', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495600786', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('b1a4669267945b98a96a6b722e3bffce', 47, 'Piyarat Toomsap', '1495620870', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495620871', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('b1d4a4ca401d201b21a85d765dff7f4a', 2, 'chaleamsuk sremaung 555', '1484739729', NULL, '223.24.11.170', '1484739729', NULL, '223.24.11.170'),
('b22a9f982393d82acc4c64d7197f1162', 40, 'สิทธิชัย ชุ่มใจ', '1487747912', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488365428', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('b279bd1d15e91e7b0ba236ea4ffeb325', 30, 'Chet Surachet', '1486718468', NULL, '58.9.70.186', '1486718468', NULL, '58.9.70.186'),
('b27b4606121a67e27f86dcb29a502974', 34, 'Chaleamsuk Sremaung', '1487144852', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487144852', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('b29af2b9b77dee50846a88d2d90fec9b', 32, 'Chaleamsuk Sremaung', '1487141935', NULL, '58.9.70.186', '1487141935', NULL, '58.9.70.186'),
('b3553b006e3b88f8faecb73d27e99099', 40, 'สิทธิชัย ชุ่มใจ', '1487653677', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487911083', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('b377ca9f221e97bdde8d09c524e39b61', 2, 'chaleamsuk sremaung sremaung', '1484802241', NULL, '27.55.159.204', '1484802241', NULL, '27.55.159.204'),
('b3b6dbdc114f4052a4e9006492b1eaf6', 61, 'Mixzer', '1494563045', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494563045', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('b3d4d5f69123974be81354bb4bc63d2e', 26, 'Chaleamsuk Sremaung', '1486717548', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486717548', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('b3e069e7c2aa2ace8ceaf14ebe209fb8', 1, 'Worapong Sriwichian', '1486455372', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455372', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('b3fef80bb8a11b2a5ea9452bb508cb69', 10, 'Choo Black', '1495084485', 'okhttp/3.5.0', '58.9.70.251', '1495084485', 'okhttp/3.5.0', '58.9.70.251'),
('b436d3ec0d322d21e4be11d66662fa94', 61, 'Mixzer', '1494562846', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494562875', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('b448fbbad5e23754c1a47c213a732c75', 2, 'chaleamsuk sremaung', '1487060949', NULL, '58.9.70.186', '1487061658', NULL, '58.9.70.186'),
('b4ff531fe694e0f2d69db4174409907f', 6, 'Boripat Petchkaew', '1492659983', 'okhttp/3.5.0', '58.9.70.93', '1492659983', 'okhttp/3.5.0', '58.9.70.93'),
('b55854c8332d71cda4c47662b2abcbe4', 64, 'Chaleamsuk Sremaung', '1490243108', 'okhttp/3.5.0', '27.55.207.185', '1490243317', 'okhttp/3.5.0', '27.55.207.185'),
('b5800d08366fa8194ea3904a60e74ff1', 64, 'Chaleamsuk Sremaung', '1489651010', 'okhttp/3.4.0', '223.24.14.227', '1489662430', 'okhttp/3.4.0', '58.9.70.93'),
('b5de02a266a31c999b1f7d95256c9f33', 8, 'ziamthai.com', '1495182515', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495182515', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251'),
('b60f0c2631bb178ad089a4b63b16c1a1', 1, 'Team Worapong', '1494495061', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494495061', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('b636a26a5fb605f447ecba41f208609a', 6, 'Boripat Petchkaew', '1495432840', 'okhttp/3.5.0', '1.46.199.232', '1495432840', 'okhttp/3.5.0', '1.46.199.232'),
('b683fa73805a5f0fab0bf26086d3fcea', 40, 'สิทธิชัย ชุ่มใจ', '1487586596', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487587821', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('b690f813df65ce7a96972aee3a75a1ed', 25, 'surachet cheangwang', '1495537840', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495537902', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('b6c44f24c571d2888efc53c190d16251', 33, 'Chet Surachet', '1487326363', NULL, '58.9.70.186', '1487326363', NULL, '58.9.70.186'),
('b7963db5f9d55f6b0265c6365f201973', 2, 'chaleamsuk sremaung sremaung', '1484812990', NULL, '27.55.159.204', '1484812990', NULL, '27.55.159.204'),
('b7d3abb4c3e01f0b56900dd59cfe6cc2', 40, 'สิทธิชัย ชุ่มใจ', '1489722447', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490072200', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('b86cad79ec6fcc4017fe53db60bf0912', 32, 'Chaleamsuk1', '1495600332', 'okhttp/3.5.0', '223.24.123.93', '1495600332', 'okhttp/3.5.0', '223.24.123.93'),
('b8b8f5d19388d1124224305710133d65', 2, 'chaleamsuk sremaung sremaung', '1484809439', NULL, '27.55.159.204', '1484809439', NULL, '27.55.159.204'),
('b8f0910c0287faf5ecefdf9674e59b3c', 61, 'Sitichai Chumjai', '1489551634', 'ZiamFoods/1.0 (com.revenue-express.dokbua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1489553208', 'ZiamFoods/1.0 (com.revenue-express.dokbua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('b90927a4017f526b23f388c37fa3e2a5', 32, 'Chaleamsuk', '1493097842', 'okhttp/3.5.0', '58.9.70.93', '1493097842', 'okhttp/3.5.0', '58.9.70.93'),
('b90f30d62119996e51968b88b99d4b4e', 1, 'Ziam Thai', '1485536291', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536291', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('b9339a6cc99cc10ea15f8c31a2ffdfcf', 47, 'Piyarat Toomsap', '1487904815', NULL, '49.49.250.97', '1487910268', 'okhttp/3.5.0', '49.49.250.97'),
('b93612386d2bb6605377eaa95c0ec360', 34, 'Chaleamsuk Sremaung', '1487309181', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.153.78', '1487309182', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.153.78'),
('b9b52f1e8326a5476f3526afb07a327e', 2, 'chaleamsuk sremaung sremaung', '1484723240', NULL, '223.24.10.209', '1484723240', NULL, '223.24.10.209'),
('b9bb816aea141c0db746598ccd029d3b', 2, 'chaleamsuk sremaung sremaung', '1484813120', NULL, '27.55.159.204', '1484813120', NULL, '27.55.159.204'),
('ba109ae26ef0ba5398dededaeb466bab', 2, 'chaleamsuk sremaung', '1486711725', NULL, '58.9.70.186', '1486711725', NULL, '58.9.70.186'),
('ba1458c0e7b8b9b39ed401226651155d', 32, 'Chaleamsuk1', '1495082713', 'okhttp/3.5.0', '58.9.70.251', '1495082768', 'okhttp/3.5.0', '58.9.70.251'),
('ba27b5dfe06699862c1299a4dc94c60f', 70, 'นราธิป ปราบไพรินทร์', '1493095229', 'okhttp/3.5.0', '1.46.73.117', '1493095388', 'okhttp/3.5.0', '1.46.73.117'),
('ba8c8d13353e4effec3285bf7d2b5b69', 61, 'Mixzer', '1494559719', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559719', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('bb21fbbc2018c054397dd993d5d504c1', 41, 'Sitichai', '1494561863', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494561863', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('bb616b3e0ae2c98352774b8510a4e684', 2, 'chaleamsuk sremaung', '1486371693', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.38', '1486371693', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.38'),
('bbe2395bfcf4e2b420da8a6d4e50125d', 64, 'Chaleamsuk Sremaung', '1489721384', 'okhttp/3.4.0', '223.24.32.182', '1490083913', 'okhttp/3.5.0', '27.55.92.123'),
('bc5917e2bd586839030a918ca47a4139', 2, 'chaleamsuk sremaung sremaung', '1484738126', NULL, '58.9.90.39', '1484738126', NULL, '58.9.90.39'),
('bc5e228a58c39263917f45395c4b2787', 34, 'Chaleamsuk Sremaung', '1487134396', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134396', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('bd13d09bbe2d8ffb285d3d2aaad7bbd1', 32, 'Chaleamsuk Sremaung', '1488194715', 'okhttp/3.4.0', '58.9.70.93', '1488273340', 'okhttp/3.4.0', '27.55.114.138'),
('bd940367d3f5ca0b5120e579dfecc738', 34, 'Chaleamsuk Sremaung', '1487151032', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151032', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('bdde3673522d1f933350fa337167afce', 6, 'Boripat Petchkaew', '1487300507', NULL, '58.9.70.186', '1494501690', 'okhttp/3.5.0', '58.9.70.251'),
('bec85755070c72624b20ae4d21515542', 40, 'สิทธิชัย ชุ่มใจ', '1488254033', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488254033', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('bece03c6f9e7d44a4df612908cc81958', 25, 'surachet cheangwang', '1488165520', 'okhttp/3.5.0', '58.9.70.93', '1488165520', 'okhttp/3.5.0', '58.9.70.93'),
('bf07f9f82cbcb9e3ce660a4e22bc9e48', 37, 'เฉลิมศักดิ์ ศรีเมือง', '1487936731', 'okhttp/3.4.0', '58.9.70.93', '1488162627', 'okhttp/3.4.0', '58.9.70.93'),
('bf9d257c52dcf66095eb03bb6bc3c60e', 1, 'Team Worapong', '1494578361', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494578361', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('c00e102898615d26bf670108c7c224bf', 1, 'Team Worapong', '1490929591', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490931443', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('c017a090f0d0db33e59ceacef27aa382', 41, 'Sitichai', '1494561925', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494561925', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('c03272c0de6b84232e2ab0ffcb264e3e', 64, 'Chaleamsuk Sremaung', '1495600356', 'okhttp/3.5.0', '223.24.123.93', '1495600356', 'okhttp/3.5.0', '223.24.123.93'),
('c03eaaa7a82c2d409c8b0457af83ea61', 10, 'Choo Black', '1495081535', 'okhttp/3.5.0', '58.9.70.251', '1495081535', 'okhttp/3.5.0', '58.9.70.251'),
('c0586e11fedce91c238c335ff0417c76', 2, 'chaleamsuk sremaung', '1485492487', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.218', '1485492487', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.218'),
('c065d94c74868302a7182604753e6871', 31, 'Chaleamsuk Sremaung', '1486718543', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718543', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('c1447ec4625b5975b419e791a345e803', 61, 'Mixzer', '1495620530', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495620530', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('c1621f48d7a0a63fa19a4e4a80a76405', 47, 'Piyarat Toomsap', '1492613711', 'okhttp/3.5.0', '182.232.244.238', '1492646759', 'okhttp/3.5.0', '182.232.244.238'),
('c1b6c0b0d15c0ddbfc29214fe7ede704', 38, 'WOR INTER TRADE CORP', '1487907092', 'okhttp/3.4.0', '58.9.70.93', '1487907092', 'okhttp/3.4.0', '58.9.70.93'),
('c1eaa785c48a713263171aa00649318e', 74, 'บริพัตร เพชรแก้ว', '1495426882', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495426882', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251');
INSERT INTO `zzz_member_access_back` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('c26a507328b919ff78446b2b00e4fd2b', 33, 'Chet Surachet', '1495537533', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495537654', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.0; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('c281a863a4ac19640513ec4a46e05fdf', 32, 'Chaleamsuk1', '1495595969', 'okhttp/3.5.0', '223.24.113.141', '1495595969', 'okhttp/3.5.0', '223.24.113.141'),
('c2b9c2b82474ebb10115974c35826608', 33, 'Chet Surachet', '1487148476', NULL, '58.9.70.186', '1487148476', NULL, '58.9.70.186'),
('c2e800f5887cd37b1e4a8c2dbb6cc16b', 1, 'Ziam Thai Thai', '1484653467', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', '223.24.96.84', '1484653467', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', '223.24.96.84'),
('c3059589a31cf946ca2cfbb6ece26d37', 32, 'Chaleamsuk1', '1493276385', 'okhttp/3.5.0', '27.55.70.17', '1493292855', 'okhttp/3.5.0', '223.24.101.250'),
('c32033ee16c703d716d53c16bae87276', 2, 'chaleamsuk sremaung sremaung', '1484628574', NULL, '223.24.17.9', '1484628574', NULL, '223.24.17.9'),
('c34a1aa6e44703407e2d48bb612c9ea6', 27, 'Boripat Love Thai Rama IX', '1495425021', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495425021', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('c363e59eacedfe3b92ad771ac2086119', 2, 'chaleamsuk sremaung', '1487043718', NULL, '223.24.41.64', '1487307500', NULL, '223.24.114.30'),
('c4532bc6b62dc476a3401483f2e80de2', 64, 'Chaleamsuk Sremaung', '1495082386', 'okhttp/3.5.0', '58.9.70.251', '1495082395', 'okhttp/3.5.0', '58.9.70.251'),
('c57371689e729f47888edff3e02394fa', 2, 'chaleamsuk sremaung sremaung', '1484739183', NULL, '223.24.11.170', '1484739183', NULL, '223.24.11.170'),
('c5ca72068d3c05ea975100995fc86df8', 6, 'Boripat Petchkaew', '1495432837', 'okhttp/3.5.0', '1.46.199.232', '1495432837', 'okhttp/3.5.0', '1.46.199.232'),
('c66146b6e70587ae174b0eb380aa75a2', 69, 'วรพงศ์ ศรีวิเชียร', '1492685270', 'okhttp/3.5.0', '58.9.70.93', '1492685278', 'okhttp/3.5.0', '58.9.70.93'),
('c67d44c080795b0dc6f7e0ad27535a79', 34, 'Chaleamsuk Sremaung', '1487134906', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487134906', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('c68a4bc6b8777ed329067a956543bca9', 1, 'Team Worapong', '1487847558', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.71.85', '1487855537', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.71.85'),
('c69eb160082462d24fc27acdbb0e248a', 1, 'Ziam Thai', '1485348704', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1485348704', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('c6d40627d0aa9427c48d343828c1d37d', 1, 'Worapong Sriwichian', '1486455366', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455366', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('c6d95c4d7309b343663e6438968bffbe', 1, 'Team Worapong', '1486718858', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718858', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('c6da7be754430b29ffed75636e454819', 40, 'สิทธิชัย ชุ่มใจ', '1487151062', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151062', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('c7233ca707c41dc5a522b32470b4021e', 61, 'Mixzer', '1494559621', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559621', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('c7a1c7c89277e4dcfce865b573295ba2', 34, 'Chaleamsuk Sremaung', '1487132685', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487132685', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('c83e2d331737bd3d00effd49b6cb8d6e', 6, 'Boripat Petchkaew', '1495432831', 'okhttp/3.5.0', '1.46.199.232', '1495432831', 'okhttp/3.5.0', '1.46.199.232'),
('c8b1281f9e5e115ed5f33d6ae938d33e', 1, 'Team Worapong', '1495187491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94', '1495187491', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '114.109.156.94'),
('c8c66b2ebb037dd43be7b2d33574c421', 2, 'chaleamsuk sremaung', '1486695891', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486695891', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('c8d1c70b2491f9a4bc652357a30105ec', 8, 'ziamthai.com', '1485536695', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485536695', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('c98dd266f8413bb5bb2a37d943aa1b7c', 61, 'Mixzer', '1495621272', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621272', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('ca87f49f44f40add31387e65edd7ce9a', 32, 'Chaleamsuk Sremaung', '1487135973', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135973', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('cab6faa066f9a55fdd20fbbfb4b1396b', 74, 'บริพัตร เพชรแก้ว', '1495163690', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495163692', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('cae663b2e8a564d17e6284772520eef1', 74, 'บริพัตร เพชรแก้ว', '1495187915', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495187915', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('cb56693778dd7f0069f1954a4414175b', 61, 'Sitichai Chumjai', '1488166202', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166202', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('cba3b4068a6356d6f3fb929471bdc68b', 2, 'chaleamsuk sremaung sremaung', '1484289970', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484289970', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('cbfbccb8d0639664804061ffc88aa29e', 8, 'ziamthai.com', '1495427101', 'okhttp/3.5.0', '58.9.70.251', '1495427101', 'okhttp/3.5.0', '58.9.70.251'),
('cc60439c3ac64ce80024c9645ac217ad', 40, 'สิทธิชัย ชุ่มใจ', '1487151132', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151174', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('cc6f91626d26cd0ce399640a219b5a93', 32, 'Chaleamsuk Sremaung', '1487060653', NULL, '58.9.70.186', '1487060653', NULL, '58.9.70.186'),
('ccc47bcf9a3827b3b97d3cae12ad6803', 8, 'ziamthai.com', '1485585815', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485585815', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('cded37d6025f3d883165129126dc6a50', 2, 'chaleamsuk sremaung', '1485745933', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.218', '1485745933', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.70.218'),
('cead2186d1425b35a085d47a3add5686', 31, 'Chaleamsuk Sremaung', '1486718603', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718603', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('cedc41b1e240e6febd8df53b3fd2f74f', 50, 'Kao Kouay Saeyang', '1487911245', NULL, '24.74.100.83', '1488663801', 'okhttp/3.5.0', '24.74.100.83'),
('cf7efe15333baa14ddb7b07dc39d9d51', 61, 'Mixzer', '1495178183', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '223.24.50.210', '1495296228', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.1) Alamofire/4.3.0', '58.8.227.214'),
('cf80c71841c6525593d1f1d02a313abe', 8, 'ziamthai.com', '1485851839', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485851839', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('d0435d0bcfb256cac538268aaecb25ed', 32, 'Chaleamsuk Sremaung', '1489563802', 'okhttp/3.4.0', '27.55.29.133', '1489566745', 'okhttp/3.4.0', '58.9.70.93'),
('d05ac1f07e0aba6be893a75647d05a90', 40, 'สิทธิชัย ชุ่มใจ', '1487731641', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1487761540', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d0c982a181413e85223d2fbbb55d83fb', 61, 'Mixzer', '1494217493', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494218287', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('d0d9a2d973153f4fbb67e784fbd6a78a', 8, 'ziamthai.com', '1495186885', 'okhttp/3.5.0', '58.9.70.251', '1495188514', 'okhttp/3.5.0', '58.9.70.251'),
('d16a084ae8d502f9a2cb2108aac088f2', 1, 'Team Worapong', '1494573091', 'okhttp/3.5.0', '223.24.45.229', '1494573091', 'okhttp/3.5.0', '223.24.45.229'),
('d1d007217272ba417c89006c9eef57f4', 64, 'Chaleamsuk Sremaung', '1489580654', 'okhttp/3.4.0', '27.55.27.240', '1489650685', 'okhttp/3.4.0', '223.24.14.227'),
('d22269c90c638475ac230642e651fdde', 26, 'Chaleamsuk Sremaung', '1486717477', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486717477', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('d27115b7cf90cb60f223f7ab77efca52', 32, 'Chaleamsuk Sremaung', '1487904794', 'okhttp/3.4.0', '58.9.70.93', '1487905335', 'okhttp/3.4.0', '58.9.70.93'),
('d30170c725b5dc7a64ca51332d57a37b', 61, 'SITICHAI', '1490604924', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490604925', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d31e68e7ec2a31e011b50cfc744853c7', 2, 'chaleamsuk sremaung', '1486697836', NULL, '58.9.70.186', '1486697836', NULL, '58.9.70.186'),
('d327d36df88c6a16abc23a3f6be20e0d', 1, 'Worapong Sriwichian', '1486455278', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455278', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('d36bd470da871f4be21d6ed8dd24dab5', 2, 'chaleamsuk sremaung', '1484885055', NULL, '223.24.42.139', '1484885055', NULL, '223.24.42.139'),
('d38f72bfe72094c50116e8d5469807db', 7, 'Chet Surachet', '1486716957', NULL, '58.9.70.186', '1486716957', NULL, '58.9.70.186'),
('d46ac275145ca2e87046fd27d495b7b5', 6, 'Boripat Petchkaew', '1495432847', 'okhttp/3.5.0', '1.46.199.232', '1495432847', 'okhttp/3.5.0', '1.46.199.232'),
('d4890350d7b107a5aafafac1cfee6b0e', 61, 'Mixzer', '1494559695', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494559695', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('d49e8c828c5128111e43e1c44bb4bea3', 8, 'ziamthai.com', '1487153180', NULL, '58.9.70.186', '1487832550', 'okhttp/3.4.0', '58.9.70.93'),
('d4b028915a12043d6c3d6490634e9a44', 41, 'Sitichai .Cumjai', '1490236453', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490236470', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d51061e52fc57e28c9710fb66dcc29c3', 40, 'สิทธิชัย ชุ่มใจ', '1487151121', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151121', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('d55c3f3473496799c140cb96b56476eb', 40, 'สิทธิชัย ชุ่มใจ', '1488254130', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488429763', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d5ce27962fdeb15b245acedf636ca84f', 32, 'Chaleamsuk', '1493210256', 'okhttp/3.5.0', '223.24.89.164', '1493210256', 'okhttp/3.5.0', '223.24.89.164'),
('d65dc334a969c1e5ff5c5d8842877518', 1, 'Team Worapong', '1494572452', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251', '1494572452', 'PostmanRuntime/3.0.11-hotfix.2', '58.9.70.251'),
('d6eb5154cf25b545a377565608d56e67', 40, 'สิทธิชัย ชุ่มใจ', '1487150907', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487150907', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('d6f8f9ac9c4a4179661571f92946ea73', 1, 'Team Worapong', '1490686102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490688578', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('d6fb020196c7558639f7bbf49049791e', 4, 'พี่เพค', '1494919267', 'okhttp/3.5.0', '58.9.70.251', '1495122245', 'okhttp/3.5.0', '58.9.71.46'),
('d6fdcf1d4a9531c9a7b9415697ae552d', 61, 'xyz', '1490172033', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490344648', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d713bf7d93d3da01412dcd8b0c2c3502', 74, 'บริพัตร เพชรแก้ว', '1495188012', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495188012', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('d74c9536e914470724d323d376c2ebdb', 2, 'chaleamsuk sremaung 555', '1484795362', NULL, '58.9.90.39', '1484795362', NULL, '58.9.90.39'),
('d791e5cd54ddda680929dd7404dd4b23', 34, 'Chaleamsuk Sremaung', '1487129260', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487129260', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('d7b262a6f2b2d707a5b4459acd496969', 28, 'Chet Surachet', '1486717145', NULL, '58.9.70.186', '1486717145', NULL, '58.9.70.186'),
('d820ffae814594e4f52eb8178e5a331e', 74, 'บริพัตร เพชรแก้ว', '1495187433', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495187433', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('d85233fc4e5d8347540f863e42185444', 2, 'chaleamsuk sremaung sremaung', '1484723191', NULL, '223.24.10.209', '1484723191', NULL, '223.24.10.209'),
('d92dc5698f82df4c66a58f367d17c4f1', 40, 'สิทธิชัย ชุ่มใจ', '1487930155', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488161170', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('d9ac70c15d75a27e11b7e7491f9a4326', 1, 'Ziam Thai Thai', '1484289899', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1484289899', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('d9e7aef50425ac4936d0cf1cc0bb1eca', 1, 'Team Worapong', '1494562626', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1494562626', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('d9f0134854d8e7ac0319a8cf3f7ca8e4', 71, 'พลพล พลพล', '1493183003', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493183004', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('da0c55c0a86ac18b18ea27ad62ed89a9', 1, 'Team Worapong', '1492510823', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1492511593', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93'),
('da4f08610e2681ae1918c45a5e9511b3', 61, 'Mixzer', '1495620814', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1495620842', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('da967f43317f2a70f788e7f38f7a5cf2', 41, 'Sitichai Mixzer', '1490605171', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490859808', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('dacb9faae913a93cb53ab4626b7498a6', 2, 'chaleamsuk sremaung sremaung', '1484801982', NULL, '27.55.159.204', '1484801982', NULL, '27.55.159.204'),
('db3cb41c8fc3e2aa658cdf5e21df51e3', 32, 'Chaleamsuk Sremaung', '1488275176', 'okhttp/3.4.0', '27.55.114.138', '1489474828', 'okhttp/3.4.0', '223.24.58.159'),
('db9d71279e7fa807ee21f45c7c0227de', 32, 'Chaleamsuk Sremaung', '1487151429', NULL, '58.9.70.186', '1487560923', 'okhttp/3.5.0', '58.9.70.186'),
('dbba354a43ce07b5fd201fcf9c42dc53', 32, 'Chaleamsuk1', '1495088964', 'okhttp/3.5.0', '58.9.70.251', '1495185381', 'okhttp/3.5.0', '27.55.3.24'),
('dbce9121f5dcfef81768b0e4c3e68644', 2, 'chaleamsuk sremaung', '1486695908', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486695910', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('dc37d691c28fa2091ae0353164a87531', 8, 'ziamthai.com', '1485541862', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485541862', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('dcd5c60d3b3ea0b839c98ad167c74a23', 2, 'chaleamsuk sremaung 555', '1484801958', NULL, '27.55.159.204', '1484801958', NULL, '27.55.159.204'),
('dcd954b81fa6506e674b20567900e667', 2, 'chaleamsuk sremaung', '1486635018', NULL, '58.9.70.186', '1486635018', NULL, '58.9.70.186'),
('dcfb59a219277dc166f7d314d8a42b40', 40, 'สิทธิชัย ชุ่มใจ', '1489647443', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1489722405', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('dd051668df0fbc561c8ac10d30c077e3', 32, 'Chaleamsuk Sremaung', '1490155928', 'okhttp/3.5.0', '223.24.65.13', '1490155929', 'okhttp/3.5.0', '223.24.65.13'),
('dd49f6e63c215953db6b8df94e831350', 61, 'mix', '1490580842', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490581919', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('dda97fea6ade8bf02de6ca6fabf16e58', 63, 'Team Gmail', '1489399284', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '58.9.70.93', '1489406363', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1', '27.55.26.124'),
('dde1ff47d8d1078c1cc7d2649f8559f1', 61, 'Mixzer', '1494561051', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494562654', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('ddeb93c0d153cf5f5c85c2d5e8a9ec56', 41, 'Sitichai .Cumjai', '1487217524', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254', '1487217524', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254'),
('de6a8cfe1ff7352cf06a85a048dc032e', 33, 'Chet Surachet', '1488187324', 'okhttp/3.5.0', '58.9.70.93', '1488257654', 'okhttp/3.5.0', '58.9.70.93'),
('de8034834f96ab065fe9dc347531f86b', 32, 'Chaleamsuk1', '1495082352', 'okhttp/3.5.0', '58.9.70.251', '1495082371', 'okhttp/3.5.0', '58.9.70.251'),
('de8407e49cdb9f1744564394ef819aff', 61, 'SITICHAI', '1490604997', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490605296', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('ded80c1419347c21121921a95ec1e7ea', 2, 'chaleamsuk sremaung', '1486640173', NULL, '58.9.70.186', '1486640173', NULL, '58.9.70.186'),
('def7fc1a758ec897a905373a9145404c', 61, 'Mixzer', '1494215071', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494216332', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('df30ee874d61244a24f01705a2809c21', 1, 'Team Worapong', '1494482513', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94', '1494482513', 'PostmanRuntime/3.0.11-hotfix.2', '114.109.156.94'),
('dfb629aca0acab4b3c08592a06f4e510', 9, 'Worapong Sriwichian', '1486456770', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486456771', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('dfd6f3406fbf7e572ae7d78ed8ceef38', 1, 'Team Worapong', '1492751615', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.132 Safari/537.36', '58.9.70.93', '1492754639', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.132 Safari/537.36', '223.24.135.252'),
('e05f25f175ff4a859051f9af7e19664c', 65, 'Narathip Prabpairin', '1490157929', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490157931', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('e08df2d77bb0829818c14b11b291d8aa', 61, 'Sitichai Chumjai', '1490157358', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490158170', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('e0d8793cb94ba93bbfd9ee1852475b46', 40, 'สิทธิชัย ชุ่มใจ', '1487151245', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151245', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('e11b5f19c44b497c86b7485cdc70e13f', 61, 'SITICHAI', '1490627967', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '208.54.86.179', '1490756706', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '172.56.12.133'),
('e180286b2a49beaebdb2a0079249fa14', 40, 'สิทธิชัย ชุ่มใจ', '1487156231', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487216264', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('e1d9072672e2fae68c1e937536e1901d', 2, 'chaleamsuk sremaung', '1486634730', NULL, '58.9.70.186', '1486634730', NULL, '58.9.70.186'),
('e1f788e6bdc675c90ba72649394462f2', 41, 'Sitichai .Cumjai', '1490236401', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490236444', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('e1f792b67af35c532d17c7e10a7dec72', 58, 'adam sanler', '1487922115', 'okhttp/3.4.0', '58.9.70.93', '1487926256', 'okhttp/3.4.0', '58.9.70.93'),
('e26f0b4105796f30a21a39f4ae458940', 2, 'chaleamsuk sremaung sremaung', '1484731752', NULL, '58.9.90.39', '1484731752', NULL, '58.9.90.39'),
('e284541ab4e8400308cca76ae9ed90b7', 1, 'Team Worapong', '1493352967', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '58.9.70.93', '1493352969', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', '58.9.70.93'),
('e2db45b14249b504c40cafd29ba070a3', 40, 'สิทธิชัย ชุ่มใจ', '1487824418', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1487827105', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('e30d0464a59ef73e4be7c4ad6f27d8bf', 2, 'chaleamsuk sremaung 555', '1484801550', NULL, '27.55.159.204', '1484801550', NULL, '27.55.159.204'),
('e4197286ecf9a7bd1c5e2b57b0223323', 40, 'สิทธิชัย ชุ่มใจ', '1487589741', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.4.25', '1487589805', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.4.25'),
('e4215bc548feff8bf4856c4d818e042f', 41, 'Sitichai', '1495612803', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495612803', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e4a434d34b922022bcd48abb9bad59b6', 74, 'บริพัตร เพชรแก้ว', '1495430937', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495430937', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('e4bf2e158395f9eef7651020b9bd8bf2', 1, 'Team Worapong', '1486719373', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486719373', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('e4cf2a15dfcd53254a8e6efc0dc3aea5', 61, 'Mixzer', '1494557099', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557099', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e5bd338fb7bd70098253bda973e6479a', 41, 'Sitichai Pure', '1492655226', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1492658625', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('e608f0f7d6dd99a63ec99ceb3af76032', 2, 'chaleamsuk sremaung', '1486541091', NULL, '58.9.70.186', '1486545468', NULL, '58.9.70.186'),
('e62d0332b4a8234f3398b0415632abe9', 40, 'สิทธิชัย ชุ่มใจ', '1487151044', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151044', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('e64c6231ab82ddab86b822a31da1aec7', 29, 'Chaleamsuk Sremaung', '1486718203', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486718203', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('e656c0a20de2d6218fc54aaa0aebbcf5', 61, 'Mixzer', '1494557190', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494557190', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e6e3cccc3fdcaf0d12947d607908a15b', 1, 'Ziam Thai', '1485252832', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1485252832', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('e764958a4a16c2bc4a66b394baee854e', 41, 'Sitichai', '1495596777', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495596777', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e76aa81f5ae3a7b878b4e8b1717d57cd', 27, 'Boripat Love Thai Rama IX', '1495162880', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495163646', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('e77c04e9c17c1f46053061b5fed70bef', 1, 'Team Worapong', '1487674763', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1487676522', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('e7f51a2068b0587d4085edde4c547603', 61, 'Mixzer', '1494843785', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494843926', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e8120b1b999fcdd8e0cb9760856880c1', 26, 'Chaleamsuk Sremaung', '1486717675', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486717675', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('e82d6892bee9a7c9cae3a635dffe4656', 10, 'Choo Black', '1493097221', 'okhttp/3.5.0', '223.24.133.159', '1493097221', 'okhttp/3.5.0', '223.24.133.159'),
('e89a8c793d0e8f0704130e706a339916', 2, 'chaleamsuk sremaung', '1486908478', NULL, '49.230.230.219', '1487054389', NULL, '58.9.70.186'),
('e8ab00c8e4eeb3e4184ea319f9202564', 1, 'Team Worapong', '1494573317', 'okhttp/3.5.0', '223.24.45.229', '1494573317', 'okhttp/3.5.0', '223.24.45.229'),
('e8aec96a026f79ffec678edf49749f54', 61, 'Mixzer', '1495597801', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495597815', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('e8b1aeaa5ce1d08d6d45906adb94eee1', 6, 'Boripat Petchkaew', '1487935702', 'okhttp/3.4.0', '58.9.70.93', '1487935702', 'okhttp/3.4.0', '58.9.70.93'),
('e8e057bb7e37cba4f501f92dc43998de', 2, 'chaleamsuk sremaung sremaung', '1484732816', NULL, '58.9.90.39', '1484732816', NULL, '58.9.90.39'),
('ea03414883ee0f203756ca09ad01ab15', 1, 'Worapong Sriwichian', '1486455279', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38', '1486455279', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.38'),
('ea0646bc8b2495994c340f304959536f', 72, 'Sittichai Chumjai', '1493780110', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.251', '1493780110', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.251'),
('eaa8ac672e67ea56d9d1c4cfbeb92cf2', 61, 'MIX543', '1489722287', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.141.78', '1490244415', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('eab58346c9bd2b93cab66121d3b89df4', 61, 'Mixzer', '1494557926', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494557926', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('eb51ff9d24d2a6cbd5e5dece47df786b', 2, 'chaleamsuk sremaung', '1486612367', NULL, '58.9.70.186', '1486612367', NULL, '58.9.70.186'),
('eb7f8af3f8a62ac2598232950b2eb1ee', 2, 'chaleamsuk sremaung sremaung', '1484732674', NULL, '58.9.90.39', '1484732674', NULL, '58.9.90.39'),
('eb8fb104a660dc28fe4b375bf5a39772', 64, 'Chaleamsuk Sremaung', '1494831459', 'okhttp/3.5.0', '58.9.70.251', '1494843327', 'okhttp/3.5.0', '27.55.82.184'),
('ec3a9b59324a100239c640feccd55a18', 1, 'Team Worapong', '1493261660', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '58.9.70.93', '1493265444', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36', '58.9.70.93'),
('ec80076ee50a247116c99ad61cb1ec4a', 32, 'Chaleamsuk Sremaung', '1487135814', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487135814', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('ecc95d583723ca0729403051c276aeae', 1, 'Team Worapong', '1489399139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489399140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('ecdaf71ffec55d77c05c63889634de12', 61, 'Mixzer', '1495601256', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495601256', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('ecdb052a7a5efd334719164580db827d', 61, 'Mixzer', '1492663583', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.122.173', '1492682307', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('ed72db2d840b71e86656d3363062e243', 67, 'Worapong Sriwichian', '1490668632', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8', '58.9.70.93', '1490669139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8', '58.9.70.93'),
('edc6eba6d0905e0cbed197a1619970dc', 25, 'surachet cheangwang', '1486622929', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186', '1486622961', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.186'),
('edd90628322db230ae23024fcf16b533', 61, 'Mixzer', '1495596477', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495596477', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('ee7dd3f9e8609eb667eea139597a8edc', 61, 'Mixzer', '1494557814', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251', '1494557814', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.3.1) Alamofire/4.3.0', '58.9.70.251'),
('ee8c1f97690a1abef830c6f8e1da4db3', 1, 'Team Worapong', '1489243569', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '125.25.252.181', '1489243571', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '125.25.252.181'),
('ee981fa2be4a5aa4d7146cd78885fb9d', 34, 'Chaleamsuk Sremaung', '1486785077', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '180.183.125.5', '1486787943', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '180.183.125.5'),
('eea38bba2acb0ce0a74159e2875313eb', 40, 'สิทธิชัย ชุ่มใจ', '1488450042', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488452735', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('eeb08c90e372b84fc007fa352511ab6c', 74, 'บริพัตร เพชรแก้ว', '1495427756', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495427756', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('eed8225535ac2bc7b6298a264cd7518f', 8, 'ziamthai.com', '1485851871', 'PostmanRuntime/3.0.9', '58.9.70.218', '1485851871', 'PostmanRuntime/3.0.9', '58.9.70.218'),
('ef0b9076b7a963f3d61e2e46754690c2', 34, 'Chaleamsuk Sremaung', '1487135206', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135206', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('ef212d0bbbc0d302037ccc0614fc98eb', 64, 'Chaleamsuk Sremaung', '1490328815', 'okhttp/3.5.0', '27.55.209.214', '1490668609', 'okhttp/3.5.0', '58.9.70.93'),
('ef60c627e96d71e611b13e6b41cbb228', 48, 'Worapong Sriwichian', '1487907109', 'okhttp/3.4.0', '58.9.70.93', '1487907192', 'okhttp/3.4.0', '58.9.70.93'),
('ef8ef0438c2d4fe2bd668dbc402b381b', 61, 'SITICHAI', '1490590463', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1490590463', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('ef90057d64f6486159e5d5380371de6c', 34, 'Chaleamsuk Sremaung', '1487637934', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '114.109.132.202', '1487749825', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '27.55.74.139'),
('f01bcb9a655d9ad3ecab14bf1af81b5c', 41, 'Sitichai Bin', '1492568672', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93', '1492576851', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoodsDokBua; build:1; iOS 10.2.1) Alamofire/4.3.0', '58.9.70.93'),
('f069c3b10d9c7f6c3dc3fe1d4a2b14d6', 32, 'Chaleamsuk Sremaung', '1487135533', NULL, '58.9.70.186', '1487135533', NULL, '58.9.70.186'),
('f09c20b57d67f16a0cb17975616d79ad', 34, 'Chaleamsuk Sremaung', '1487129570', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487129570', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('f0d9db69c0ce6eeae15f78d8e4bdb68b', 34, 'Chaleamsuk Sremaung', '1487151205', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487151205', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('f1b595d50aeaf7da64111e91804740bb', 32, 'Chaleamsuk1', '1495088816', 'okhttp/3.5.0', '58.9.70.251', '1495088823', 'okhttp/3.5.0', '58.9.70.251'),
('f1eb0537020ef03bf1c8cdc15c5fc794', 32, 'Chaleamsuk', '1492585880', 'okhttp/3.5.0', '223.24.16.115', '1492585880', 'okhttp/3.5.0', '223.24.16.115'),
('f208be7e45ab4be307ee4aa1b64f2b56', 25, 'surachet cheangwang', '1488165253', 'okhttp/3.5.0', '58.9.70.93', '1488165253', 'okhttp/3.5.0', '58.9.70.93'),
('f2190d1c554cf372621297040b42ba59', 34, 'Chaleamsuk Sremaung', '1487133193', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487133193', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('f298ae05cba104afcdc61bf1f1e3568b', 33, 'Chet Surachet', '1487745871', 'okhttp/3.5.0', '58.9.70.93', '1487745871', 'okhttp/3.5.0', '58.9.70.93'),
('f38c5aa13d4048c5b541b9f25ab48179', 61, 'Mixzer', '1494820875', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.2; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1494820894', 'ZiamFoods/1.0.2 CFNetwork/811.4.18 Darwin/16.4.0', '58.9.70.251'),
('f3a35b1450f2151311e324265cf2139a', 6, 'Boripat Petchkaew', '1492662694', 'okhttp/3.5.0', '58.9.70.93', '1492662779', 'okhttp/3.5.0', '58.9.70.93'),
('f3f6f2b5ae1f3914ff99a375463a341d', 32, 'Chaleamsuk Sremaung', '1486721672', NULL, '58.9.70.186', '1487048574', NULL, '58.9.70.186'),
('f4233586196e74d8763e8f6753e5afd5', 10, 'Choo Black', '1493096980', 'okhttp/3.5.0', '223.24.133.159', '1493096980', 'okhttp/3.5.0', '223.24.133.159'),
('f44503c23511f66cfddf168e2b8a4f73', 61, 'Sitichai Chumjai', '1488166234', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166234', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('f46094bf9e2ff00d9f7605bbcfa8a4e3', 2, 'chaleamsuk sremaung', '1486625208', NULL, '58.9.70.186', '1486625870', NULL, '58.9.70.186'),
('f49844d9c088f1d86847117930000e8e', 32, 'Chaleamsuk Sremaung', '1487136220', NULL, '58.9.70.186', '1487136220', NULL, '58.9.70.186'),
('f4bad4370f80b2f7c869abf456c9f7a0', 32, 'Chaleamsuk1', '1495600369', 'okhttp/3.5.0', '223.24.123.93', '1495600369', 'okhttp/3.5.0', '223.24.123.93'),
('f4dc3385c55bcd4f8d78f88edbc93d42', 34, 'Chaleamsuk Sremaung', '1487217487', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254', '1487217488', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.1) Alamofire/4.3.0', '223.24.124.254'),
('f4f9d8455d5ed47bb72169e27ab19cc8', 40, 'สิทธิชัย ชุ่มใจ', '1487819003', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1487824124', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('f5da217d06e9faa7b2d2611c09d7bf9a', 72, 'Sittichai Chumjai', '1493816198', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0; iOS 10.3.1) Alamofire/4.3.0', '17.200.2.214', '1493816199', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0; iOS 10.3.1) Alamofire/4.3.0', '17.200.2.214'),
('f73a4b5113bbe208cd8c98474b235f3a', 2, 'chaleamsuk sremaung', '1486546875', NULL, '223.24.56.12', '1486546875', NULL, '223.24.56.12'),
('f75399efd723dd88d6e7a3e1fa3aeeaa', 32, 'Chaleamsuk Sremaung', '1487661355', NULL, '58.9.70.186', '1487661464', 'okhttp/3.5.0', '58.9.70.186'),
('f77cd1cf41ba8b33d7755c1469e3e710', 1, 'Team Worapong', '1494573516', 'okhttp/3.5.0', '223.24.45.229', '1494573884', 'okhttp/3.5.0', '223.24.45.229'),
('f790c245d48f30b44a8cbb740923b292', 40, 'สิทธิชัย ชุ่มใจ', '1487151303', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487156196', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('f7da55d1a74635005b9f0e52a3b24f99', 3, 'choosit', '1486455627', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '58.9.70.38', '1486455627', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '58.9.70.38'),
('f81733e8ef705484473936716e3f28d3', 1, 'Team Worapong', '1490758199', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1490759263', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('f82dd2af7296c49a32fdf7a94a9ef9d6', 32, 'Chaleamsuk Sremaung', '1487661551', NULL, '58.9.70.186', '1487661867', 'okhttp/3.5.0', '58.9.70.186'),
('f83251a495473f3e50f6db6ac4927bdc', 1, 'Ziam Thai', '1485318729', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39', '1485318729', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '58.9.90.39'),
('f8cbd53501a556ec6d4816e094cfb6cd', 33, 'Chet Surachet', '1487327073', NULL, '58.9.70.186', '1487664832', NULL, '58.9.70.186'),
('f939af546d97d9ed1ebd564bbb5dec7b', 34, 'Chaleamsuk Sremaung', '1487135070', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186', '1487135070', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.186'),
('f96c169ceed0a145d55d3e95812a833c', 27, 'Boripat Love Thai Rama IX', '1495077009', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495077009', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('f97660a7f986b0f0041115d70d8ec521', 74, 'บริพัตร เพชรแก้ว', '1495182455', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251', '1495182455', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '58.9.70.251'),
('f9836c98171d1f0b531f14307107e2d6', 38, 'WOR INTER TRADE CORP', '1487148093', NULL, '58.9.70.186', '1487157942', NULL, '58.9.70.186'),
('f9d891848a9d74b8953d737019e172d9', 40, 'สิทธิชัย ชุ่มใจ', '1488166242', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166243', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('fa3a4a943997cdf52cb78833c4f821aa', 40, 'สิทธิชัย ชุ่มใจ', '1488166217', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93', '1488166217', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '58.9.70.93'),
('faef5281065881a70136ba37dc6a7d91', 1, 'Team Worapong', '1489399157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93', '1489399158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.9.70.93'),
('fb860020dfd5f70b924ba5ded865fd0b', 32, 'Chaleamsuk Sremaung', '1487136178', 'PostmanRuntime/3.0.9', '58.9.70.186', '1487136178', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('fbdadcca9659e4c6ef8a9a54c82843cc', 1, 'Team Worapong', '1488072687', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Safari/537.36', '27.55.162.217', '1488072692', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-T705 Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.91 Safari/537.36', '27.55.162.217'),
('fcc406dd484b56cd7d1e47876c0164e6', 27, 'Boripat Love Thai Rama IX', '1495176097', 'Mozilla/5.0 (Linux; Android 6.0.1; P024 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Safari/537.36', '58.9.70.251', '1495176097', 'Mozilla/5.0 (Linux; Android 6.0.1; P024 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Safari/537.36', '58.9.70.251'),
('fcef8d5e09627afae41e6fd4fa66f18a', 64, 'Chaleamsuk Sremaung', '1494843345', 'okhttp/3.5.0', '27.55.82.184', '1494843345', 'okhttp/3.5.0', '27.55.82.184'),
('fd8af34fd7dcd9dbc38b17001d978ea9', 2, 'chaleamsuk sremaung', '1486354455', NULL, '58.9.70.38', '1486354455', NULL, '58.9.70.38'),
('fd9800c07b28ac1912c49a042a7f32b2', 75, 'boatty toomsap', '1495621403', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161', '1495621404', 'ZiamFoods/1.0 (com.revenue.express.ZiamFood; build:1.0.2; iOS 10.3.1) Alamofire/4.3.0', '49.49.238.161'),
('fdb8fe00c2d4d66f801675316b0de59d', 1, 'Team Worapong', '1486613699', 'PostmanRuntime/3.0.9', '58.9.70.186', '1486613699', 'PostmanRuntime/3.0.9', '58.9.70.186'),
('fdcb0ef074a73689f33b954552cbed55', 40, 'สิทธิชัย ชุ่มใจ', '1487389657', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '114.109.132.202', '1487389702', 'ZiamFoods/1.0 (com.revenue-express.ZiamFoods; build:1; iOS 10.2.0) Alamofire/4.3.0', '114.109.132.202'),
('ff785892d501b6b0ebc3359d85f568a2', 41, 'Sitichai', '1495523123', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.3; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251', '1495531379', 'ZiamFoods/1.0 (com.revenue-express.DokBua; build:1.0.4; iOS 10.3.0) Alamofire/4.3.0', '58.9.70.251'),
('ffacd3b5c2c66deb5cf96cc32a6d8a0a', 28, 'Chet Surachet', '1486718260', NULL, '58.9.70.186', '1486718260', NULL, '58.9.70.186');
INSERT INTO `zzz_member_access_back` (`mema_key`, `mema_memh_id`, `mema_memh_name`, `mema_login_time`, `mema_login_agent`, `mema_login_ip`, `mema_last_time`, `mema_last_agent`, `mema_last_ip`) VALUES
('ffbaeb1097851b231af4ccc4001341bc', 27, 'Boripat Love Thai Rama IX', '1495439411', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251', '1495439411', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '58.9.70.251');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_member_header`
--

CREATE TABLE `zzz_member_header` (
  `memh_id` int(10) UNSIGNED NOT NULL,
  `memh_idn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memh_provider` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'website',
  `memh_fb_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memh_gg_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memh_email` text COLLATE utf8_unicode_ci NOT NULL,
  `memh_password` text COLLATE utf8_unicode_ci,
  `memh_display` text COLLATE utf8_unicode_ci NOT NULL,
  `memh_firstname` text COLLATE utf8_unicode_ci,
  `memh_lastname` text COLLATE utf8_unicode_ci,
  `memh_level` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'newbies',
  `memh_avatar` text COLLATE utf8_unicode_ci,
  `memh_gender` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memh_photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `memh_profileUrl` text COLLATE utf8_unicode_ci NOT NULL,
  `memh_pictureUrl` text COLLATE utf8_unicode_ci NOT NULL,
  `memh_locale` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'EN',
  `memh_activated` tinyint(4) NOT NULL DEFAULT '1',
  `memh_cdate` datetime NOT NULL DEFAULT '2015-12-31 23:59:59',
  `memh_mdate` datetime NOT NULL DEFAULT '2015-12-31 23:59:59',
  `memh_status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_member_header`
--

INSERT INTO `zzz_member_header` (`memh_id`, `memh_idn`, `memh_provider`, `memh_fb_id`, `memh_gg_id`, `memh_email`, `memh_password`, `memh_display`, `memh_firstname`, `memh_lastname`, `memh_level`, `memh_avatar`, `memh_gender`, `memh_photo`, `memh_profileUrl`, `memh_pictureUrl`, `memh_locale`, `memh_activated`, `memh_cdate`, `memh_mdate`, `memh_status`) VALUES
(1, '0117000000011', 'google', '', '112324546684249295299', 'worapong@revenue-express.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'Team Worapong', 'Worapong', 'Sriwichian', 'newbies', NULL, '', '1_1490584767_member.jpg', '', 'http://graph.facebook.com/240311833075100/picture?type=large', 'EN', 1, '2017-01-13 09:11:00', '2017-02-26 08:31:04', '1'),
(2, '0117000000022', 'website', '', NULL, 'j@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'chaleamsuk sremaung', 'chaleamsuk1', 'sremaung', 'newbies', NULL, 'male', '2_1496402613_member.png', '', '', 'EN', 1, '2017-01-13 13:44:06', '2017-02-14 12:01:08', '1'),
(3, NULL, 'google', '', '111318894770213943432', 'choosit@revenue-express.com', '', 'choosit', '', '', 'newbies', NULL, NULL, NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-01-13 14:28:16', '2015-12-31 23:59:59', '1'),
(4, '0117000000044', 'website', '1677737452266973', NULL, 'ba_by-jung@hotmail.com', 'e6ff3dc528798b34a30097436f7b0c1e79b23326', 'เอ็ม', 'joesak', 'naree', 'newbies', NULL, 'male', '4_1496394897_member.png', '', '', 'EN', 1, '2017-01-16 10:54:01', '2017-01-16 10:55:59', '1'),
(5, NULL, 'facebook', '1363971253676246', NULL, 'nonpolyec.04@hotmail.com', '', 'จ่อย พาราไดซ์', 'panomkorn', 'promhom', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1363971253676246/picture?type=large', 'EN', 1, '2017-01-16 10:56:05', '2015-12-31 23:59:59', '1'),
(6, '0117000000066', 'google', '', '114934050400926935383', 'mr.boripat2@gmail.com', '', 'Boripat Petchkaew', 'Boripat', 'Petchkaew', 'newbies', NULL, NULL, NULL, '', 'https://lh6.googleusercontent.com/-xnGX_zsoVxo/AAAAAAAAAAI/AAAAAAAAAGk/xN0Xuvy7K7A/photo.jpg', 'EN', 1, '2017-01-17 18:51:06', '2015-12-31 23:59:59', '1'),
(8, '0117000000088', 'google', '', '108570118203209690681', 'ziamthai.com@gmail.com', '48efc4851e15940af5d477d3c0ce99211a70a3be', 'ziamthai.com', '', '', 'newbies', NULL, NULL, NULL, '', 'https://lh3.googleusercontent.com/-RWNoerNfbdo/AAAAAAAAAAI/AAAAAAAAABQ/rtwRaLaDYYg/photo.jpg', 'EN', 1, '2017-01-27 15:10:11', '2015-12-31 23:59:59', '1'),
(10, '01170000001010', 'facebook', '1946250982362762', '118037448174114411914', 'choochoo1503@gmail.com', '', 'ศักรินทร์ แจะ แจะ', 'sakkarin', 'hayhayhay', 'newbies', NULL, 'male', '10_1497260283_member.png', '', 'http://graph.facebook.com/1773636629624199/picture?type=large', 'EN', 1, '2017-01-30 16:41:43', '2015-12-31 23:59:59', '1'),
(25, '01170000002525', 'website', '', '116299237070569908648', 'surachet@revenue-express.com', '011c945f30ce2cbafc452f39840f025693339c42', 'surachet cheangwang', 'surachet', 'cheangwang', 'newbies', NULL, NULL, NULL, '', 'https://lh6.googleusercontent.com/-TDHoEeKCLDM/AAAAAAAAAAI/AAAAAAAAAAo/0KARLlwGnTI/photo.jpg', 'EN', 1, '2017-02-08 16:35:20', '2015-12-31 23:59:59', '1'),
(27, '01170000002727', 'facebook', '1612131265517959', NULL, 'mr.boripat@yahoo.co.th', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Boripat Love Thai Rama IX', '', '', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1218433724887717/picture?type=large', 'EN', 1, '2017-02-10 15:57:30', '2015-12-31 23:59:59', '1'),
(32, '01170000003232', 'facebook', '1530475213670643', '109888079896952811732', 'chaleamsuk.tawelap@gmail.com', '', 'นายเจ', 'Chaleamsuk', 'Sremaung', 'newbies', NULL, 'male', '32_1496203565_member.png', '', 'http://graph.facebook.com/1404185766299589/picture?type=large', 'EN', 1, '2017-02-10 16:28:08', '2015-12-31 23:59:59', '1'),
(33, '01170000003333', 'facebook', '1567519633309167', NULL, 'chet_sj@hotmail.com', '', 'Chet Surachet', 'Surachet', 'chet', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1306404136087386/picture?type=large', 'EN', 1, '2017-02-10 16:42:36', '2015-12-31 23:59:59', '1'),
(35, NULL, 'website', '', NULL, 'fsdf@com.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mix na', 'mix', 'na', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-15 09:25:13', '2015-12-31 23:59:59', '1'),
(36, NULL, 'website', '', NULL, 'fdf@com.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'mix na', 'mix', 'na', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-15 09:26:19', '2015-12-31 23:59:59', '1'),
(37, NULL, 'google', '', '109102360437228524367', 'chaleamsuk@revenue-express.com', '', 'เฉลิมศักดิ์ ศรีเมือง', 'เฉลิมศักดิ์', 'ศรีเมือง', 'newbies', NULL, '', NULL, '', 'https://lh6.googleusercontent.com/-FBrrWeF4fc0/AAAAAAAAAAI/AAAAAAAAACg/Lb4waJF6kvg/photo.jpg', 'EN', 1, '2017-02-15 14:02:57', '2015-12-31 23:59:59', '1'),
(39, NULL, 'google', '', '110298881091259746142', 'pla.sudarat1999@gmail.com', '', 'สุดารัตน์ แจ้งวัง', 'สุดารัตน์', 'แจ้งวัง', 'newbies', NULL, '', NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-02-15 15:07:52', '2015-12-31 23:59:59', '1'),
(40, '01170000004040', 'google', '', '116129365237305061713', 'sittichai@revenue-express.com', '', 'E24ND', 'สิทธิชัย', 'ชุ่มใจ', 'newbies', NULL, '', '40_1493375412_member.jpeg', '', 'https://lh3.googleusercontent.com/-0gcyL36x4qg/AAAAAAAAAAI/AAAAAAAAAAo/AIFJCFYQ0tc/photo.jpg', 'EN', 1, '2017-02-15 15:49:04', '2015-12-31 23:59:59', '1'),
(41, '01170000004141', 'google', '', '108686369413318206479', 'meed96@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'MIX E-MAIL', 'Sitichai', '.Chumjai', 'newbies', NULL, 'Male', '41_1492752136_member.jpeg', '', 'https://lh6.googleusercontent.com/-7KBeLwJ76Fo/AAAAAAAAAAI/AAAAAAAAAQU/fPUg_bgYD90/photo.jpg', 'EN', 1, '2017-02-16 10:58:44', '2015-12-31 23:59:59', '1'),
(43, NULL, 'website', '', NULL, 'chaleamsuk1@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'adam sanler', 'adam', 'sanler', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-21 15:08:54', '2015-12-31 23:59:59', '1'),
(44, NULL, 'facebook', '377840492608867', NULL, 'armarm0302@gmail.com', '', 'อั้ม\' อิ้อ้า.', 'อั้ม\'', 'อิ้อ้า.', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/377838969275686/picture?type=large', 'EN', 1, '2017-02-24 08:30:12', '2015-12-31 23:59:59', '1'),
(47, '01170000004747', 'google', '', '114598288679097287946', 'p.toomsap@gmail.com', '', 'Piyarat Toomsap', 'Piyarat', 'Toomsap', 'newbies', NULL, 'Female', '47_1497680687_member.jpeg', '', 'https://lh5.googleusercontent.com/-jhcJarw8rhM/AAAAAAAAAAI/AAAAAAAALgA/xQN8vS5KhpA/photo.jpg', 'EN', 1, '2017-02-24 09:53:35', '2015-12-31 23:59:59', '1'),
(49, '01170000004949', 'google', '', '102560061069529285865', 'chanyut1122@gmail.com', '', 'botnoi', 'แอนนา', 'ทอนาโด', 'newbies', NULL, 'male', '49_1496725482_member.png', '', 'https://lh6.googleusercontent.com/-EWpLhUiWXMI/AAAAAAAAAAI/AAAAAAAAACQ/DAw6pKgmPZU/photo.jpg', 'EN', 1, '2017-02-24 11:18:41', '2015-12-31 23:59:59', '1'),
(50, NULL, 'facebook', '1554016797944304', NULL, 'fongkao6@hotmail.com', '', 'Kao Kouay Saeyang', 'Kao', 'Saeyang', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1554016797944304/picture?type=large', 'EN', 1, '2017-02-24 11:40:45', '2015-12-31 23:59:59', '1'),
(52, NULL, 'website', NULL, NULL, 'mr.boripat@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'Boripat P', 'Boripat', 'P', 'newbies', NULL, '', NULL, '', '', 'EN', 1, '2017-02-24 13:42:23', '2017-02-24 13:44:15', '1'),
(53, NULL, 'website', '', NULL, 'boatland2000@yahoo.com', '6f0179c78c19c896abf478785283768080523714', 'boatty pt', 'boatty', 'pt', 'newbies', NULL, NULL, NULL, '', '', 'EN', 1, '2017-02-24 13:45:56', '2015-12-31 23:59:59', '1'),
(54, NULL, 'website', '', NULL, 'boat@mcom.com', '6f0179c78c19c896abf478785283768080523714', 'boatty pt', 'boatty', 'pt', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-24 13:47:32', '2015-12-31 23:59:59', '1'),
(55, NULL, 'website', NULL, NULL, 'chaleamsuk2@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'san ler', 'san', 'ler', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-24 13:49:55', '2015-12-31 23:59:59', '1'),
(56, NULL, 'website', NULL, NULL, 'chaleamsuk3@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'san ler', 'san', 'ler', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-24 13:53:40', '2015-12-31 23:59:59', '1'),
(57, NULL, 'website', NULL, NULL, 'chaleamsuk4@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'san ler', 'san', 'ler', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-24 13:56:49', '2015-12-31 23:59:59', '1'),
(58, NULL, 'website', NULL, NULL, 'chaleamsuk@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'adam sanler', 'adam', 'sanler', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/1404185766299589/picture?type=large', 'EN', 1, '2017-02-24 14:03:44', '2015-12-31 23:59:59', '1'),
(59, NULL, 'website', NULL, NULL, 'dasads@cc.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Firstname Lastname', 'Firstname', 'Lastname', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-27 09:36:44', '2015-12-31 23:59:59', '1'),
(60, NULL, 'website', NULL, NULL, 'qwert@qw.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'dads add asdasdads', 'dads add', 'asdasdads', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-02-27 10:08:38', '2015-12-31 23:59:59', '1'),
(61, '01170000006161', 'facebook', '1341362505953428', NULL, '', '', 'Mixzer', 'Sitichai', 'Chumjai', 'newbies', NULL, 'male', '61_1495179157_member.jpeg', '', 'http://graph.facebook.com/10210062918503624/picture?type=large', 'EN', 1, '2017-02-27 10:22:22', '2015-12-31 23:59:59', '1'),
(62, NULL, 'website', '10210062918503624', NULL, 'weewe@ewew.con', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'we we\'re', 'we', 'we\'re', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/10210062918503624/picture?type=large', 'EN', 1, '2017-02-27 10:41:43', '2015-12-31 23:59:59', '1'),
(64, '01170000006464', 'google', '1158025431010414', '115616768260056741729', 'chaleamsuk.sremaung@gmail.com', '', 'Chaleamsuk Sremaung', 'Chaleamsuk', 'Sremaung', 'newbies', NULL, 'male', '64_1490419495_member.png', '', 'https://lh6.googleusercontent.com/-74eD8jslcOE/AAAAAAAAAAI/AAAAAAAAAUE/suIQoJAdHUk/photo.jpg', 'EN', 1, '2017-03-15 19:24:14', '2015-12-31 23:59:59', '1'),
(65, NULL, 'facebook', '136121783582912', NULL, 'marketing@revenue-express.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Narathip Prabpairin', '', '', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/136121783582912/picture?type=large', 'EN', 1, '2017-03-22 11:45:29', '2015-12-31 23:59:59', '1'),
(66, NULL, 'facebook', '1353600768024756', NULL, 'chaleamsuk.sremaung@hotmail.com', '', 'Chaleamsuk Sremaung', 'Chaleamsuk', 'Sremaung', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1353600768024756/picture?type=large', 'EN', 1, '2017-03-27 09:51:20', '2015-12-31 23:59:59', '1'),
(68, '01170000006868', 'facebook', '10155201935739595', NULL, 'theboatty@hotmail.com', '', 'Boatty PT', '', '', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/10155201935739595/picture?type=large', 'EN', 1, '2017-04-10 23:35:54', '2015-12-31 23:59:59', '1'),
(70, NULL, 'google', NULL, '100295745601958790243', 'narathip@revenue-express.com', '', 'นราธิป ปราบไพรินทร์', 'นราธิป', 'ปราบไพรินทร์', 'newbies', NULL, 'male', NULL, '', 'https://lh4.googleusercontent.com/-OOtgeNj6h3c/AAAAAAAAAAI/AAAAAAAACqk/txRBQhXxOBk/photo.jpg', 'EN', 1, '2017-04-25 11:40:29', '2015-12-31 23:59:59', '1'),
(71, NULL, 'facebook', '788759221291379', NULL, 'suteem@hotmail.com', '', 'พลพล พลพล', '', '', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/788759221291379/picture?type=large', 'EN', 1, '2017-04-26 12:03:23', '2015-12-31 23:59:59', '1'),
(72, NULL, 'website', NULL, NULL, 'mixza789@hotmail.co.th', 'f4d29f7382c252de41b4ca8826363871fb7e0dee', 'Sittichai Chumjai', 'Sittichai', 'Chumjai', 'newbies', NULL, NULL, NULL, '', '', 'EN', 1, '2017-05-03 09:54:10', '2015-12-31 23:59:59', '1'),
(73, '01170000007373', 'google', NULL, '106483475694087462130', 'somchai533509@gmail.com', '', 'สมชาย ศรชัย', 'สมชาย', 'ศรชัย', 'newbies', NULL, 'male', NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-05-18 12:15:05', '2015-12-31 23:59:59', '1'),
(74, '01170000007474', 'google', NULL, '110631023395675466342', 'boripat@revenue-express.com', '', 'บริพัตร เพชรแก้ว', 'บริพัตร', 'เพชรแก้ว', 'newbies', NULL, 'male', NULL, '', 'https://lh4.googleusercontent.com/-iQ3ZKAIa3d8/AAAAAAAAAAI/AAAAAAAAABA/6My8NjhSrwk/photo.jpg', 'EN', 1, '2017-05-19 03:59:27', '2015-12-31 23:59:59', '1'),
(75, '01170000007575', 'website', '10155345618589595', NULL, 'ptoomsap@yahoo.co.th', '2ece3c8d13c7520171ca50cd870c7ebf07d9bff3', 'boatty toomsap', 'boatty', 'toomsap', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/10155345618589595/picture?type=large', 'EN', 1, '2017-05-24 11:21:58', '2015-12-31 23:59:59', '1'),
(76, NULL, 'facebook', '1325585504143176', NULL, 'naphang_5222@hotmail.com', '', 'Noodang Naphang', 'Noodang', 'Naphang', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/1325585504143176/picture?type=large', 'EN', 1, '2017-05-25 05:06:11', '2015-12-31 23:59:59', '1'),
(77, NULL, 'facebook', '1531667270185935', NULL, 'phoomphat@hotmail.com', '', 'Phoomphat Ruangrit', 'Phoomphat', 'Ruangrit', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1531667270185935/picture?type=large', 'EN', 1, '2017-05-25 05:28:59', '2015-12-31 23:59:59', '1'),
(81, '01170000008181', 'facebook', '10208822276814009', NULL, '', '', 'Kanun Singprasert', 'Kanun', 'Singprasert', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/10208822276814009/picture?type=large', 'EN', 1, '2017-05-25 06:52:34', '2015-12-31 23:59:59', '1'),
(82, NULL, 'facebook', '10208822316975013', NULL, '', '', 'Kanun Singprasert', 'Kanun', 'Singprasert', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/10208822316975013/picture?type=large', 'EN', 1, '2017-05-25 06:53:01', '2015-12-31 23:59:59', '1'),
(83, '01170000008383', 'facebook', '10210936453541454', NULL, '', '', 'MIX', 'สิทธิชัย', 'ชุ่มใจ', 'newbies', NULL, 'Male', '83_1496134125_member.jpeg', '', 'http://graph.facebook.com/10210936453541454/picture?type=large', 'EN', 1, '2017-05-25 06:55:04', '2015-12-31 23:59:59', '1'),
(84, '01170000008484', 'google', NULL, '112726428779016197161', 'deathcrusader@gmail.com', '', 'Keng Naja', 'Keng', 'Naja', 'newbies', NULL, 'male', NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-05-25 06:55:35', '2015-12-31 23:59:59', '1'),
(86, '01170000008686', 'facebook', '1341348905954788', NULL, '', '', 'Worapong Sriwichian', 'Worapong', 'Sriwichian', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1341348905954788/picture?type=large', 'EN', 1, '2017-05-25 07:18:47', '2015-12-31 23:59:59', '1'),
(87, '01170000008787', 'facebook', '10210937692012415', NULL, '', '', 'สิทธิชัย ชุ่มใจ', 'สิทธิชัย', 'ชุ่มใจ', 'newbies', NULL, 'Male', NULL, '', 'http://graph.facebook.com/10210937692012415/picture?type=large', 'EN', 1, '2017-05-25 07:50:34', '2015-12-31 23:59:59', '1'),
(88, '01170000008888', 'google', NULL, '104268115958942032616', 'surachet.jw@gmail.com', '', 'สุรเชษฐ์ แจ้งวัง', 'สุรเชษฐ์', 'แจ้งวัง', 'newbies', NULL, 'male', '88_1496035930_member.jpeg', '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-05-29 06:05:21', '2015-12-31 23:59:59', '1'),
(89, '01170000008989', 'website', NULL, NULL, 'piyaratt_t@yahoo.com', '2ece3c8d13c7520171ca50cd870c7ebf07d9bff3', 'piyarat test e-mail PT', 'piyarat test e-mail', 'PT', 'newbies', NULL, NULL, NULL, '', '', 'EN', 1, '2017-05-30 00:14:16', '2015-12-31 23:59:59', '1'),
(90, '01170000009090', 'facebook', '10155363890424595', NULL, '', '', 'Boatty PT', 'Boatty', 'PT', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/10155363890424595/picture?type=large', 'EN', 1, '2017-05-30 03:24:04', '2015-12-31 23:59:59', '1'),
(91, '01170000009191', 'facebook', '1424396560963021', NULL, '', '', 'Cotton Apollonian', 'Cotton', 'Apollonian', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/1424396560963021/picture?type=large', 'EN', 1, '2017-05-31 09:30:52', '2015-12-31 23:59:59', '1'),
(92, '01170000009292', 'facebook', '1424401587629185', NULL, '', '', 'Cotton Apollonian', 'Cotton', 'Apollonian', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/1424401587629185/picture?type=large', 'EN', 1, '2017-05-31 09:42:52', '2015-12-31 23:59:59', '1'),
(93, '01170000009393', 'google', NULL, '116487100845418457912', 'boomthirawut@gmail.com', '', 'Thirawut Bowonthawiwong', 'Thirawut', 'Bowonthawiwong', 'newbies', NULL, 'male', NULL, '', 'https://lh6.googleusercontent.com/-d62PK7Ogni8/AAAAAAAAAAI/AAAAAAAAJeg/4nESPsED5F4/photo.jpg', 'EN', 1, '2017-05-31 09:44:33', '2015-12-31 23:59:59', '1'),
(94, '01170000009494', 'facebook', '10209056524750422', NULL, '', '', 'Kritsamon Salayut', 'Kritsamon', 'Salayut', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/10209056524750422/picture?type=large', 'EN', 1, '2017-05-31 10:06:29', '2015-12-31 23:59:59', '1'),
(95, '01170000009595', 'facebook', '10209112838518231', NULL, '', '', 'Kritsamon Salayut', 'Kritsamon', 'Salayut', 'newbies', NULL, 'female', '95_1497421989_member.jpeg', '', 'http://graph.facebook.com/10209112838518231/picture?type=large', 'EN', 1, '2017-05-31 10:27:49', '2015-12-31 23:59:59', '1'),
(96, '01170000009696', 'facebook', '1574084849276614', NULL, '', '', 'Kannika Chaipun', 'Kannika', 'Chaipun', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/1574084849276614/picture?type=large', 'EN', 1, '2017-06-02 07:30:38', '2015-12-31 23:59:59', '1'),
(97, '01170000009797', 'facebook', '227201247773571', NULL, 'yod.montri@gmail.com', '', 'Mamalittlepig Comeback', 'Mamalittlepig', 'Comeback', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/227201181106911/picture?type=large', 'EN', 1, '2017-06-02 08:28:21', '2015-12-31 23:59:59', '1'),
(98, '01170000009898', 'facebook', '629106270628181', NULL, '', '', 'Atom AP', 'Atom', 'AP', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/629106270628181/picture?type=large', 'EN', 1, '2017-06-02 11:12:48', '2015-12-31 23:59:59', '1'),
(99, '01170000009999', 'facebook', '629161237289351', NULL, '', '', 'Atom AP', 'Atom', 'AP', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/629161237289351/picture?type=large', 'EN', 1, '2017-06-02 14:52:05', '2015-12-31 23:59:59', '1'),
(100, '011700000100100', 'website', NULL, NULL, 'teerawat@revenue-express.com', 'bfcc2b956d2349e19a62793d2914645d27963f99', 'teerawat pongkaew', 'teerawat', 'pongkaew', 'newbies', NULL, NULL, NULL, '', '', 'EN', 1, '2017-06-04 11:29:11', '2015-12-31 23:59:59', '1'),
(101, '011700000101101', 'facebook', '1324938400921914', NULL, '', '', 'Jutamat Phookaokaew', 'Jutamat', 'Phookaokaew', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/1324938400921914/picture?type=large', 'EN', 1, '2017-06-05 07:26:53', '2015-12-31 23:59:59', '1'),
(102, NULL, 'facebook', '796531393848519', NULL, '', '', 'Chaowalit Champea', 'Chaowalit', 'Champea', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/796531393848519/picture?type=large', 'EN', 1, '2017-06-05 08:09:05', '2015-12-31 23:59:59', '1'),
(103, '011700000103103', 'facebook', '10212060732249858', NULL, '', '', 'Teera Pong', 'Teera', 'Pong', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/10212060732249858/picture?type=large', 'EN', 1, '2017-06-05 11:38:23', '2015-12-31 23:59:59', '1'),
(104, NULL, 'website', NULL, NULL, 'amagrada@yahoo.com', '5060c64c6093caf045a34fb7be620f931e9e1f56', 'Jak t', 'Jak', 't', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-06-05 17:50:55', '2015-12-31 23:59:59', '1'),
(105, '011700000105105', 'website', '10210937692012415', NULL, 'mixza789@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'mix Naha', 'mix', 'Naha', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/10210937692012415/picture?type=large', 'EN', 1, '2017-06-12 04:48:11', '2015-12-31 23:59:59', '1'),
(106, NULL, 'website', NULL, NULL, 'mixmixmix@mix.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc nana', 'abc', 'nana', 'newbies', NULL, NULL, NULL, '', '', 'EN', 0, '2017-06-12 10:51:59', '2015-12-31 23:59:59', '1'),
(107, NULL, 'facebook', '1357861460929275', NULL, '', '', 'Prachak Temrangsitornrat', 'Prachak', 'Temrangsitornrat', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1357861460929275/picture?type=large', 'EN', 1, '2017-06-13 13:46:14', '2015-12-31 23:59:59', '1'),
(108, '011700000108108', 'website', '', NULL, 'citythaiportland@revenue-express.com', '21bd12dc183f740ee76f27b78eb39c8ad972a757', 'CITYTHAI ADMINISTATOR', 'CITYTHAI', 'ADMINISTATOR', 'newbies', NULL, NULL, NULL, '', '', 'EN', 1, '2017-06-14 10:39:00', '2015-12-31 23:59:59', '1'),
(109, '011700000109109', 'facebook', '10211120324058102', NULL, '', '', 'สิทธิชัย ชุ่มใจ', 'สิทธิชัย', 'ชุ่มใจ', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/10211120324058102/picture?type=large', 'EN', 1, '2017-06-14 11:10:04', '2015-12-31 23:59:59', '1'),
(110, '011700000110110', 'facebook', '1438655339528931', NULL, '', '', 'Chet Surachet', 'Surachet', 'chet', 'newbies', NULL, 'male', NULL, '', 'http://graph.facebook.com/1438655339528931/picture?type=large', 'EN', 1, '2017-06-16 05:44:39', '2015-12-31 23:59:59', '1'),
(111, '011700000111111', 'facebook', '10155425805874595', NULL, '', '', 'Boatty PT', 'Boatty', 'PT', 'newbies', NULL, 'female', NULL, '', 'http://graph.facebook.com/10155425805874595/picture?type=large', 'EN', 1, '2017-06-17 07:25:32', '2015-12-31 23:59:59', '1'),
(112, '011700000112112', 'website', '10155425805874595', NULL, 'agentboss@gmail.com', '2ece3c8d13c7520171ca50cd870c7ebf07d9bff3', 'PT', 'Piyarat', 'Toomsap', 'newbies', NULL, 'Female', NULL, '', 'http://graph.facebook.com/10155425805874595/picture?type=large', 'EN', 1, '2017-06-17 07:32:00', '2015-12-31 23:59:59', '1'),
(113, '0117000001131', 'facebook', '1154344044655276', NULL, 'teemsu@live.com', '', 'Worapong Sriwichian', '', '', 'newbies', NULL, NULL, NULL, '', 'http://graph.facebook.com/1154344044655276/picture?type=large', 'EN', 1, '2017-07-01 16:28:14', '2015-12-31 23:59:59', '1'),
(114, NULL, 'google', NULL, '118185784568727533457', 'chanyut@revenue-express.com', '', 'Chanyut Butsambor', 'Chanyut', 'Butsambor', 'newbies', NULL, '', NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-09-14 12:11:17', '2015-12-31 23:59:59', '1'),
(115, '0117000001151', 'google', NULL, '114240018688329132937', 'mixzer012@gmail.com', '', 'Sitichai Chumjai', 'Sitichai', 'Chumjai', 'newbies', NULL, '', NULL, '', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg', 'EN', 1, '2017-12-21 07:25:03', '2015-12-31 23:59:59', '1');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_member_reward_history`
--

CREATE TABLE `zzz_member_reward_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL COMMENT 'customer member id',
  `shop_id` int(10) UNSIGNED NOT NULL COMMENT 'shop id',
  `action` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'action method receive,redeem,adjust,etc',
  `point` smallint(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_amount` float NOT NULL DEFAULT '0',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'detail of this history',
  `auser` int(10) NOT NULL DEFAULT '2' COMMENT 'action user id',
  `aname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aip` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1' COMMENT 'action ip address',
  `adate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'action date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_member_reward_history`
--

INSERT INTO `zzz_member_reward_history` (`id`, `member_id`, `shop_id`, `action`, `point`, `order_no`, `order_amount`, `detail`, `auser`, `aname`, `aip`, `adate`) VALUES
(4, 27, 139, 'receive', 10, '123456', 100, '', 2, 'Ziamthai Admin', '58.9.70.251', '2017-05-12 14:29:02'),
(5, 32, 139, 'receive', 10, '', 100, '', 2, 'Ziamthai Admin', '58.9.70.251', '2017-05-12 14:29:19'),
(6, 32, 35, 'receive', 10, '', 100, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-12 14:30:27'),
(10, 27, 35, 'receive', 10, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 10:50:16'),
(11, 27, 35, 'redeem', 5, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 10:51:51'),
(12, 1, 35, 'receive', 20, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 14:56:56'),
(13, 1, 35, 'redeem', 10, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 14:57:05'),
(14, 61, 35, 'receive', 20, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 16:14:12'),
(15, 32, 35, 'receive', 10, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 17:07:04'),
(16, 4, 35, 'receive', 10, '', 0, '', 3, 'Dokbua Administrator', '58.9.70.251', '2017-05-15 17:24:40'),
(17, 32, 139, 'receive', 100, '', 1000, '', 74, 'บริพัตร เพชรแก้ว', '58.9.70.251', '2017-05-19 09:01:01'),
(18, 1, 35, 'receive', 3, NULL, 12.9115, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:16:46'),
(19, 1, 35, 'receive', 3, NULL, 12.9115, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:16:57'),
(20, 1, 35, 'receive', 3, '184', 12.9115, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:17:27'),
(21, 1, 35, 'receive', 5, '185', 25.823, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:18:34'),
(22, 1, 35, 'receive', 1, '186', 5.37075, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:21:21'),
(23, 1, 35, 'receive', 3, '187', 15.0815, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-29 10:23:05'),
(24, 47, 35, 'receive', 3, '188', 12.9115, NULL, 0, 'Online Order', '49.49.246.242', '2017-05-30 00:09:17'),
(25, 89, 35, 'receive', 3, '189', 12.9115, NULL, 0, 'Online Order', '49.49.246.242', '2017-05-30 00:17:47'),
(26, 1, 35, 'receive', 2, '190', 7.54075, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-30 01:35:01'),
(27, 1, 35, 'receive', 1, '196', 5.37075, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-30 01:55:54'),
(28, 1, 35, 'receive', 2, '197', 12.9115, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-30 01:59:04'),
(29, 1, 35, 'receive', 1, '198', 5.37075, NULL, 0, 'Online Order', '114.109.156.94', '2017-05-30 02:04:41'),
(30, 47, 35, 'receive', 6, '199', 31.1938, NULL, 0, 'Online Order', '49.49.246.242', '2017-05-30 02:57:45'),
(31, 47, 35, 'receive', 1, '200', 7.54075, NULL, 0, 'Online Order', '49.49.246.242', '2017-05-30 03:23:06'),
(32, 90, 35, 'receive', 4, '201', 22.6222, NULL, 0, 'Online Order', '49.49.246.242', '2017-05-30 03:29:46'),
(33, 94, 35, 'receive', 5, '202', 58.0475, NULL, 0, 'Online Order', '58.9.70.251', '2017-05-31 10:24:19'),
(34, 96, 35, 'receive', 3, '203', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:43'),
(35, 96, 35, 'receive', 3, '204', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:45'),
(36, 96, 35, 'receive', 3, '205', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:45'),
(37, 96, 35, 'receive', 3, '206', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:45'),
(38, 96, 35, 'receive', 3, '207', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:46'),
(39, 96, 35, 'receive', 3, '208', 37.5952, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-02 07:31:47'),
(40, 98, 35, 'receive', 3, '209', 32.2245, NULL, 0, 'Online Order', '27.130.216.164', '2017-06-02 14:27:30'),
(41, 98, 35, 'receive', 0, '210', 5.37075, NULL, 0, 'Online Order', '27.130.216.164', '2017-06-02 14:29:11'),
(42, 98, 35, 'receive', 1, '211', 10.7415, NULL, 0, 'Online Order', '27.130.216.164', '2017-06-02 14:29:32'),
(43, 103, 35, 'receive', 0, '212', 7.54075, NULL, 0, 'Online Order', '49.49.250.33', '2017-06-05 11:42:42'),
(44, 103, 35, 'receive', 0, '213', 7.54075, NULL, 0, 'Online Order', '49.49.250.33', '2017-06-05 11:42:44'),
(45, 94, 35, 'receive', 1, '214', 12.9115, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-14 07:48:40'),
(46, 41, 105, 'receive', 0, '215', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-15 03:44:45'),
(47, 32, 105, 'receive', 6, '216', 61, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-15 09:45:52'),
(48, 103, 35, 'receive', 5, '217', 50.5067, NULL, 0, 'Online Order', '1.0.201.143', '2017-06-17 06:32:42'),
(49, 103, 35, 'receive', 5, '218', 50.5067, NULL, 0, 'Online Order', '1.0.201.143', '2017-06-17 06:32:44'),
(50, 103, 35, 'receive', 5, '219', 50.5067, NULL, 0, 'Online Order', '1.0.201.143', '2017-06-17 06:32:45'),
(51, 103, 35, 'receive', 5, '220', 50.5067, NULL, 0, 'Online Order', '1.0.201.143', '2017-06-17 06:32:45'),
(52, 32, 35, 'receive', 1, '221', 15.0815, NULL, 0, 'Online Order', '223.24.14.144', '2017-06-20 05:05:35'),
(53, 32, 105, 'receive', 0, '222', 2, NULL, 0, 'Online Order', '223.24.14.144', '2017-06-20 05:26:57'),
(54, 32, 105, 'receive', 2, '223', 28.5, NULL, 0, 'Online Order', '223.24.14.144', '2017-06-20 05:27:50'),
(55, 1, 35, 'receive', 1, '224', 12.9115, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-28 07:34:06'),
(56, 83, 35, 'receive', 1, '225', 10.7415, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-28 07:39:45'),
(57, 109, 105, 'receive', 0, '226', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-06-28 10:30:09'),
(58, 109, 105, 'receive', 0, '231', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 05:15:48'),
(59, 109, 105, 'receive', 0, '232', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 07:51:15'),
(60, 109, 105, 'receive', 0, '233', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 07:52:09'),
(61, 109, 105, 'receive', 0, '234', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 07:53:55'),
(62, 109, 105, 'receive', 0, '235', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 07:56:25'),
(63, 109, 105, 'receive', 0, '236', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:01:29'),
(64, 109, 105, 'receive', 0, '239', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:07:16'),
(65, 109, 105, 'receive', 0, '240', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:16:01'),
(66, 109, 105, 'receive', 0, '241', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:48:52'),
(67, 109, 105, 'receive', 0, '242', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:51:21'),
(68, 6, 105, 'receive', 0, '243', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 08:56:35'),
(69, 109, 105, 'receive', 0, '244', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 09:40:18'),
(70, 109, 105, 'receive', 0, '245', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 09:44:30'),
(71, 6, 105, 'receive', 0, '246', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 10:07:04'),
(72, 6, 105, 'receive', 0, '247', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 10:07:48'),
(73, 6, 105, 'receive', 0, '248', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 11:55:03'),
(74, 109, 105, 'receive', 0, '249', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:01:46'),
(75, 109, 105, 'receive', 0, '250', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:02:27'),
(76, 109, 105, 'receive', 0, '251', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:04:50'),
(77, 109, 105, 'receive', 0, '252', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:09:25'),
(78, 109, 105, 'receive', 0, '253', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:11:30'),
(79, 109, 105, 'receive', 0, '254', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:11:59'),
(80, 109, 105, 'receive', 4, '255', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:17:35'),
(81, 109, 105, 'receive', 4, '256', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:24:55'),
(82, 109, 105, 'receive', 4, '257', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:25:36'),
(83, 109, 105, 'receive', 4, '258', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:27:35'),
(84, 109, 105, 'receive', 4, '259', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:31:36'),
(85, 109, 105, 'receive', 4, '260', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:33:03'),
(86, 109, 105, 'receive', 4, '261', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:33:34'),
(87, 109, 105, 'receive', 4, '262', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:34:44'),
(88, 109, 105, 'receive', 4, '263', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 12:36:52'),
(89, 109, 105, 'receive', 4, '264', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 14:09:54'),
(90, 109, 105, 'receive', 4, '265', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-25 14:28:35'),
(91, 109, 105, 'receive', 4, '266', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-28 04:04:22'),
(92, 109, 105, 'receive', 4, '267', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-28 04:05:06'),
(93, 109, 105, 'receive', 4, '268', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-28 05:21:29'),
(94, 109, 105, 'receive', 4, '269', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-28 05:21:53'),
(95, 109, 105, 'receive', 4, '270', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-28 07:48:08'),
(96, 109, 105, 'receive', 0, '271', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 03:40:39'),
(97, 109, 105, 'receive', 4, '272', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 03:53:20'),
(98, 109, 105, 'receive', 0, '273', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 03:59:01'),
(99, 109, 105, 'receive', 0, '274', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:00:27'),
(100, 109, 105, 'receive', 0, '275', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:07:52'),
(101, 109, 105, 'receive', 4, '276', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:09:27'),
(102, 109, 105, 'receive', 0, '277', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:09:34'),
(103, 109, 105, 'receive', 0, '278', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:16:12'),
(104, 109, 105, 'receive', 0, '279', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:17:59'),
(105, 109, 105, 'receive', 0, '280', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:19:05'),
(106, 109, 105, 'receive', 0, '281', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:20:08'),
(107, 109, 105, 'receive', 4, '282', 46, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:31:41'),
(108, 109, 105, 'receive', 0, '283', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:33:21'),
(109, 109, 105, 'receive', 0, '284', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:45:14'),
(110, 109, 105, 'receive', 0, '285', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:47:02'),
(111, 109, 105, 'receive', 0, '286', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:50:00'),
(112, 6, 105, 'receive', 0, '287', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:52:30'),
(113, 6, 105, 'receive', 0, '288', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 04:59:46'),
(114, 109, 105, 'receive', 0, '289', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:03:35'),
(115, 109, 105, 'receive', 0, '290', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:05:25'),
(116, 6, 105, 'receive', 0, '291', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:07:20'),
(117, 109, 105, 'receive', 0, '292', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:08:39'),
(118, 6, 105, 'receive', 0, '293', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:12:31'),
(119, 109, 105, 'receive', 0, '294', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:15:39'),
(120, 6, 105, 'receive', 0, '295', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:16:40'),
(121, 109, 105, 'receive', 0, '296', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:18:04'),
(122, 6, 105, 'receive', 0, '297', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:20:00'),
(123, 109, 105, 'receive', 0, '298', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:20:48'),
(124, 6, 105, 'receive', 0, '299', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:21:27'),
(125, 6, 105, 'receive', 0, '300', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:21:57'),
(126, 109, 105, 'receive', 0, '301', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:22:46'),
(127, 109, 105, 'receive', 0, '302', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:22:54'),
(128, 109, 105, 'receive', 0, '303', 4, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:29:34'),
(129, 6, 105, 'receive', 0, '304', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:31:15'),
(130, 6, 105, 'receive', 0, '305', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:31:48'),
(131, 6, 105, 'receive', 0, '306', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:32:24'),
(132, 6, 105, 'receive', 0, '307', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:32:32'),
(133, 6, 105, 'receive', 0, '308', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:32:34'),
(134, 6, 105, 'receive', 0, '309', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:32:37'),
(135, 109, 105, 'receive', 0, '310', 1, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:34:17'),
(136, 6, 105, 'receive', 0, '311', 2, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 05:37:16'),
(137, 109, 105, 'receive', 0, '282', 0, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 08:56:12'),
(138, 109, 105, 'receive', 0, '282', 0, NULL, 0, 'Online Order', '58.9.70.251', '2017-08-29 09:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_member_reward_points`
--

CREATE TABLE `zzz_member_reward_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `history_id` int(11) NOT NULL DEFAULT '0',
  `exp_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_member_reward_points`
--

INSERT INTO `zzz_member_reward_points` (`id`, `member_id`, `shop_id`, `history_id`, `exp_date`) VALUES
(20, 27, 139, 4, '2017-06-11'),
(21, 27, 139, 4, '2017-06-11'),
(22, 27, 139, 4, '2017-06-11'),
(23, 27, 139, 4, '2017-06-11'),
(24, 27, 139, 4, '2017-06-11'),
(25, 27, 139, 4, '2017-06-11'),
(26, 27, 139, 4, '2017-06-11'),
(27, 27, 139, 4, '2017-06-11'),
(28, 27, 139, 4, '2017-06-11'),
(29, 27, 139, 4, '2017-06-11'),
(30, 32, 139, 5, '2017-06-11'),
(31, 32, 139, 5, '2017-06-11'),
(32, 32, 139, 5, '2017-06-11'),
(33, 32, 139, 5, '2017-06-11'),
(34, 32, 139, 5, '2017-06-11'),
(35, 32, 139, 5, '2017-06-11'),
(36, 32, 139, 5, '2017-06-11'),
(37, 32, 139, 5, '2017-06-11'),
(38, 32, 139, 5, '2017-06-11'),
(39, 32, 139, 5, '2017-06-11'),
(40, 32, 35, 6, '2017-06-11'),
(41, 32, 35, 6, '2017-06-11'),
(42, 32, 35, 6, '2017-06-11'),
(43, 32, 35, 6, '2017-06-11'),
(44, 32, 35, 6, '2017-06-11'),
(45, 32, 35, 6, '2017-06-11'),
(46, 32, 35, 6, '2017-06-11'),
(47, 32, 35, 6, '2017-06-11'),
(48, 32, 35, 6, '2017-06-11'),
(49, 32, 35, 6, '2017-06-11'),
(61, 27, 35, 10, '2017-06-14'),
(62, 27, 35, 10, '2017-06-14'),
(63, 27, 35, 10, '2017-06-14'),
(64, 27, 35, 10, '2017-06-14'),
(65, 27, 35, 10, '2017-06-14'),
(76, 1, 35, 12, '2017-06-14'),
(77, 1, 35, 12, '2017-06-14'),
(78, 1, 35, 12, '2017-06-14'),
(79, 1, 35, 12, '2017-06-14'),
(80, 1, 35, 12, '2017-06-14'),
(81, 1, 35, 12, '2017-06-14'),
(82, 1, 35, 12, '2017-06-14'),
(83, 1, 35, 12, '2017-06-14'),
(84, 1, 35, 12, '2017-06-14'),
(85, 1, 35, 12, '2017-06-14'),
(86, 61, 35, 14, '2017-06-14'),
(87, 61, 35, 14, '2017-06-14'),
(88, 61, 35, 14, '2017-06-14'),
(89, 61, 35, 14, '2017-06-14'),
(90, 61, 35, 14, '2017-06-14'),
(91, 61, 35, 14, '2017-06-14'),
(92, 61, 35, 14, '2017-06-14'),
(93, 61, 35, 14, '2017-06-14'),
(94, 61, 35, 14, '2017-06-14'),
(95, 61, 35, 14, '2017-06-14'),
(96, 61, 35, 14, '2017-06-14'),
(97, 61, 35, 14, '2017-06-14'),
(98, 61, 35, 14, '2017-06-14'),
(99, 61, 35, 14, '2017-06-14'),
(100, 61, 35, 14, '2017-06-14'),
(101, 61, 35, 14, '2017-06-14'),
(102, 61, 35, 14, '2017-06-14'),
(103, 61, 35, 14, '2017-06-14'),
(104, 61, 35, 14, '2017-06-14'),
(105, 61, 35, 14, '2017-06-14'),
(106, 32, 35, 15, '2017-06-14'),
(107, 32, 35, 15, '2017-06-14'),
(108, 32, 35, 15, '2017-06-14'),
(109, 32, 35, 15, '2017-06-14'),
(110, 32, 35, 15, '2017-06-14'),
(111, 32, 35, 15, '2017-06-14'),
(112, 32, 35, 15, '2017-06-14'),
(113, 32, 35, 15, '2017-06-14'),
(114, 32, 35, 15, '2017-06-14'),
(115, 32, 35, 15, '2017-06-14'),
(116, 4, 35, 16, '2017-06-14'),
(117, 4, 35, 16, '2017-06-14'),
(118, 4, 35, 16, '2017-06-14'),
(119, 4, 35, 16, '2017-06-14'),
(120, 4, 35, 16, '2017-06-14'),
(121, 4, 35, 16, '2017-06-14'),
(122, 4, 35, 16, '2017-06-14'),
(123, 4, 35, 16, '2017-06-14'),
(124, 4, 35, 16, '2017-06-14'),
(125, 4, 35, 16, '2017-06-14'),
(126, 32, 139, 17, '2017-06-18'),
(127, 32, 139, 17, '2017-06-18'),
(128, 32, 139, 17, '2017-06-18'),
(129, 32, 139, 17, '2017-06-18'),
(130, 32, 139, 17, '2017-06-18'),
(131, 32, 139, 17, '2017-06-18'),
(132, 32, 139, 17, '2017-06-18'),
(133, 32, 139, 17, '2017-06-18'),
(134, 32, 139, 17, '2017-06-18'),
(135, 32, 139, 17, '2017-06-18'),
(136, 32, 139, 17, '2017-06-18'),
(137, 32, 139, 17, '2017-06-18'),
(138, 32, 139, 17, '2017-06-18'),
(139, 32, 139, 17, '2017-06-18'),
(140, 32, 139, 17, '2017-06-18'),
(141, 32, 139, 17, '2017-06-18'),
(142, 32, 139, 17, '2017-06-18'),
(143, 32, 139, 17, '2017-06-18'),
(144, 32, 139, 17, '2017-06-18'),
(145, 32, 139, 17, '2017-06-18'),
(146, 32, 139, 17, '2017-06-18'),
(147, 32, 139, 17, '2017-06-18'),
(148, 32, 139, 17, '2017-06-18'),
(149, 32, 139, 17, '2017-06-18'),
(150, 32, 139, 17, '2017-06-18'),
(151, 32, 139, 17, '2017-06-18'),
(152, 32, 139, 17, '2017-06-18'),
(153, 32, 139, 17, '2017-06-18'),
(154, 32, 139, 17, '2017-06-18'),
(155, 32, 139, 17, '2017-06-18'),
(156, 32, 139, 17, '2017-06-18'),
(157, 32, 139, 17, '2017-06-18'),
(158, 32, 139, 17, '2017-06-18'),
(159, 32, 139, 17, '2017-06-18'),
(160, 32, 139, 17, '2017-06-18'),
(161, 32, 139, 17, '2017-06-18'),
(162, 32, 139, 17, '2017-06-18'),
(163, 32, 139, 17, '2017-06-18'),
(164, 32, 139, 17, '2017-06-18'),
(165, 32, 139, 17, '2017-06-18'),
(166, 32, 139, 17, '2017-06-18'),
(167, 32, 139, 17, '2017-06-18'),
(168, 32, 139, 17, '2017-06-18'),
(169, 32, 139, 17, '2017-06-18'),
(170, 32, 139, 17, '2017-06-18'),
(171, 32, 139, 17, '2017-06-18'),
(172, 32, 139, 17, '2017-06-18'),
(173, 32, 139, 17, '2017-06-18'),
(174, 32, 139, 17, '2017-06-18'),
(175, 32, 139, 17, '2017-06-18'),
(176, 32, 139, 17, '2017-06-18'),
(177, 32, 139, 17, '2017-06-18'),
(178, 32, 139, 17, '2017-06-18'),
(179, 32, 139, 17, '2017-06-18'),
(180, 32, 139, 17, '2017-06-18'),
(181, 32, 139, 17, '2017-06-18'),
(182, 32, 139, 17, '2017-06-18'),
(183, 32, 139, 17, '2017-06-18'),
(184, 32, 139, 17, '2017-06-18'),
(185, 32, 139, 17, '2017-06-18'),
(186, 32, 139, 17, '2017-06-18'),
(187, 32, 139, 17, '2017-06-18'),
(188, 32, 139, 17, '2017-06-18'),
(189, 32, 139, 17, '2017-06-18'),
(190, 32, 139, 17, '2017-06-18'),
(191, 32, 139, 17, '2017-06-18'),
(192, 32, 139, 17, '2017-06-18'),
(193, 32, 139, 17, '2017-06-18'),
(194, 32, 139, 17, '2017-06-18'),
(195, 32, 139, 17, '2017-06-18'),
(196, 32, 139, 17, '2017-06-18'),
(197, 32, 139, 17, '2017-06-18'),
(198, 32, 139, 17, '2017-06-18'),
(199, 32, 139, 17, '2017-06-18'),
(200, 32, 139, 17, '2017-06-18'),
(201, 32, 139, 17, '2017-06-18'),
(202, 32, 139, 17, '2017-06-18'),
(203, 32, 139, 17, '2017-06-18'),
(204, 32, 139, 17, '2017-06-18'),
(205, 32, 139, 17, '2017-06-18'),
(206, 32, 139, 17, '2017-06-18'),
(207, 32, 139, 17, '2017-06-18'),
(208, 32, 139, 17, '2017-06-18'),
(209, 32, 139, 17, '2017-06-18'),
(210, 32, 139, 17, '2017-06-18'),
(211, 32, 139, 17, '2017-06-18'),
(212, 32, 139, 17, '2017-06-18'),
(213, 32, 139, 17, '2017-06-18'),
(214, 32, 139, 17, '2017-06-18'),
(215, 32, 139, 17, '2017-06-18'),
(216, 32, 139, 17, '2017-06-18'),
(217, 32, 139, 17, '2017-06-18'),
(218, 32, 139, 17, '2017-06-18'),
(219, 32, 139, 17, '2017-06-18'),
(220, 32, 139, 17, '2017-06-18'),
(221, 32, 139, 17, '2017-06-18'),
(222, 32, 139, 17, '2017-06-18'),
(223, 32, 139, 17, '2017-06-18'),
(224, 32, 139, 17, '2017-06-18'),
(225, 32, 139, 17, '2017-06-18'),
(226, 1, 35, 18, '2017-06-28'),
(227, 1, 35, 18, '2017-06-28'),
(228, 1, 35, 18, '2017-06-28'),
(229, 1, 35, 18, '2017-06-28'),
(230, 1, 35, 18, '2017-06-28'),
(231, 1, 35, 18, '2017-06-28'),
(232, 1, 35, 18, '2017-06-28'),
(233, 1, 35, 18, '2017-06-28'),
(234, 1, 35, 18, '2017-06-28'),
(235, 1, 35, 18, '2017-06-28'),
(236, 1, 35, 18, '2017-06-28'),
(237, 1, 35, 18, '2017-06-28'),
(238, 1, 35, 18, '2017-06-28'),
(239, 1, 35, 19, '2017-06-28'),
(240, 1, 35, 19, '2017-06-28'),
(241, 1, 35, 19, '2017-06-28'),
(242, 1, 35, 19, '2017-06-28'),
(243, 1, 35, 19, '2017-06-28'),
(244, 1, 35, 19, '2017-06-28'),
(245, 1, 35, 19, '2017-06-28'),
(246, 1, 35, 19, '2017-06-28'),
(247, 1, 35, 19, '2017-06-28'),
(248, 1, 35, 19, '2017-06-28'),
(249, 1, 35, 19, '2017-06-28'),
(250, 1, 35, 19, '2017-06-28'),
(251, 1, 35, 19, '2017-06-28'),
(252, 1, 35, 20, '2017-06-28'),
(253, 1, 35, 20, '2017-06-28'),
(254, 1, 35, 20, '2017-06-28'),
(255, 1, 35, 20, '2017-06-28'),
(256, 1, 35, 20, '2017-06-28'),
(257, 1, 35, 20, '2017-06-28'),
(258, 1, 35, 20, '2017-06-28'),
(259, 1, 35, 20, '2017-06-28'),
(260, 1, 35, 20, '2017-06-28'),
(261, 1, 35, 20, '2017-06-28'),
(262, 1, 35, 20, '2017-06-28'),
(263, 1, 35, 20, '2017-06-28'),
(264, 1, 35, 20, '2017-06-28'),
(265, 1, 35, 21, '2017-06-28'),
(266, 1, 35, 21, '2017-06-28'),
(267, 1, 35, 21, '2017-06-28'),
(268, 1, 35, 21, '2017-06-28'),
(269, 1, 35, 21, '2017-06-28'),
(270, 1, 35, 21, '2017-06-28'),
(271, 1, 35, 21, '2017-06-28'),
(272, 1, 35, 21, '2017-06-28'),
(273, 1, 35, 21, '2017-06-28'),
(274, 1, 35, 21, '2017-06-28'),
(275, 1, 35, 21, '2017-06-28'),
(276, 1, 35, 21, '2017-06-28'),
(277, 1, 35, 21, '2017-06-28'),
(278, 1, 35, 21, '2017-06-28'),
(279, 1, 35, 21, '2017-06-28'),
(280, 1, 35, 21, '2017-06-28'),
(281, 1, 35, 21, '2017-06-28'),
(282, 1, 35, 21, '2017-06-28'),
(283, 1, 35, 21, '2017-06-28'),
(284, 1, 35, 21, '2017-06-28'),
(285, 1, 35, 21, '2017-06-28'),
(286, 1, 35, 21, '2017-06-28'),
(287, 1, 35, 21, '2017-06-28'),
(288, 1, 35, 21, '2017-06-28'),
(289, 1, 35, 21, '2017-06-28'),
(290, 1, 35, 21, '2017-06-28'),
(291, 1, 35, 22, '2017-06-28'),
(292, 1, 35, 22, '2017-06-28'),
(293, 1, 35, 22, '2017-06-28'),
(294, 1, 35, 22, '2017-06-28'),
(295, 1, 35, 22, '2017-06-28'),
(296, 1, 35, 22, '2017-06-28'),
(297, 1, 35, 23, '2017-06-28'),
(298, 1, 35, 23, '2017-06-28'),
(299, 1, 35, 23, '2017-06-28'),
(300, 1, 35, 23, '2017-06-28'),
(301, 1, 35, 23, '2017-06-28'),
(302, 1, 35, 23, '2017-06-28'),
(303, 1, 35, 23, '2017-06-28'),
(304, 1, 35, 23, '2017-06-28'),
(305, 1, 35, 23, '2017-06-28'),
(306, 1, 35, 23, '2017-06-28'),
(307, 1, 35, 23, '2017-06-28'),
(308, 1, 35, 23, '2017-06-28'),
(309, 1, 35, 23, '2017-06-28'),
(310, 1, 35, 23, '2017-06-28'),
(311, 1, 35, 23, '2017-06-28'),
(312, 1, 35, 23, '2017-06-28'),
(313, 47, 35, 24, '2017-06-29'),
(314, 47, 35, 24, '2017-06-29'),
(315, 47, 35, 24, '2017-06-29'),
(316, 47, 35, 24, '2017-06-29'),
(317, 47, 35, 24, '2017-06-29'),
(318, 47, 35, 24, '2017-06-29'),
(319, 47, 35, 24, '2017-06-29'),
(320, 47, 35, 24, '2017-06-29'),
(321, 47, 35, 24, '2017-06-29'),
(322, 47, 35, 24, '2017-06-29'),
(323, 47, 35, 24, '2017-06-29'),
(324, 47, 35, 24, '2017-06-29'),
(325, 47, 35, 24, '2017-06-29'),
(326, 89, 35, 25, '2017-06-29'),
(327, 89, 35, 25, '2017-06-29'),
(328, 89, 35, 25, '2017-06-29'),
(329, 89, 35, 25, '2017-06-29'),
(330, 89, 35, 25, '2017-06-29'),
(331, 89, 35, 25, '2017-06-29'),
(332, 89, 35, 25, '2017-06-29'),
(333, 89, 35, 25, '2017-06-29'),
(334, 89, 35, 25, '2017-06-29'),
(335, 89, 35, 25, '2017-06-29'),
(336, 89, 35, 25, '2017-06-29'),
(337, 89, 35, 25, '2017-06-29'),
(338, 89, 35, 25, '2017-06-29'),
(339, 1, 35, 26, '2017-06-29'),
(340, 1, 35, 26, '2017-06-29'),
(341, 1, 35, 26, '2017-06-29'),
(342, 1, 35, 26, '2017-06-29'),
(343, 1, 35, 26, '2017-06-29'),
(344, 1, 35, 26, '2017-06-29'),
(345, 1, 35, 26, '2017-06-29'),
(346, 1, 35, 26, '2017-06-29'),
(347, 1, 35, 27, '2017-06-29'),
(348, 1, 35, 27, '2017-06-29'),
(349, 1, 35, 27, '2017-06-29'),
(350, 1, 35, 27, '2017-06-29'),
(351, 1, 35, 27, '2017-06-29'),
(352, 1, 35, 27, '2017-06-29'),
(353, 1, 35, 28, '2017-06-29'),
(354, 1, 35, 28, '2017-06-29'),
(355, 1, 35, 29, '2017-06-29'),
(356, 47, 35, 30, '2017-06-29'),
(357, 47, 35, 30, '2017-06-29'),
(358, 47, 35, 30, '2017-06-29'),
(359, 47, 35, 30, '2017-06-29'),
(360, 47, 35, 30, '2017-06-29'),
(361, 47, 35, 30, '2017-06-29'),
(362, 47, 35, 31, '2017-06-29'),
(363, 90, 35, 32, '2017-06-29'),
(364, 90, 35, 32, '2017-06-29'),
(365, 90, 35, 32, '2017-06-29'),
(366, 90, 35, 32, '2017-06-29'),
(367, 94, 35, 33, '2017-06-30'),
(368, 94, 35, 33, '2017-06-30'),
(369, 94, 35, 33, '2017-06-30'),
(370, 94, 35, 33, '2017-06-30'),
(371, 94, 35, 33, '2017-06-30'),
(372, 96, 35, 34, '2017-07-02'),
(373, 96, 35, 34, '2017-07-02'),
(374, 96, 35, 34, '2017-07-02'),
(375, 96, 35, 35, '2017-07-02'),
(376, 96, 35, 35, '2017-07-02'),
(377, 96, 35, 35, '2017-07-02'),
(378, 96, 35, 36, '2017-07-02'),
(379, 96, 35, 36, '2017-07-02'),
(380, 96, 35, 36, '2017-07-02'),
(381, 96, 35, 37, '2017-07-02'),
(382, 96, 35, 37, '2017-07-02'),
(383, 96, 35, 37, '2017-07-02'),
(384, 96, 35, 38, '2017-07-02'),
(385, 96, 35, 38, '2017-07-02'),
(386, 96, 35, 38, '2017-07-02'),
(387, 96, 35, 39, '2017-07-02'),
(388, 96, 35, 39, '2017-07-02'),
(389, 96, 35, 39, '2017-07-02'),
(390, 98, 35, 40, '2017-07-02'),
(391, 98, 35, 40, '2017-07-02'),
(392, 98, 35, 40, '2017-07-02'),
(393, 98, 35, 42, '2017-07-02'),
(394, 94, 35, 45, '2017-07-14'),
(395, 32, 105, 47, '2017-07-15'),
(396, 32, 105, 47, '2017-07-15'),
(397, 32, 105, 47, '2017-07-15'),
(398, 32, 105, 47, '2017-07-15'),
(399, 32, 105, 47, '2017-07-15'),
(400, 32, 105, 47, '2017-07-15'),
(401, 103, 35, 48, '2017-07-17'),
(402, 103, 35, 48, '2017-07-17'),
(403, 103, 35, 48, '2017-07-17'),
(404, 103, 35, 48, '2017-07-17'),
(405, 103, 35, 48, '2017-07-17'),
(406, 103, 35, 49, '2017-07-17'),
(407, 103, 35, 49, '2017-07-17'),
(408, 103, 35, 49, '2017-07-17'),
(409, 103, 35, 49, '2017-07-17'),
(410, 103, 35, 49, '2017-07-17'),
(411, 103, 35, 50, '2017-07-17'),
(412, 103, 35, 50, '2017-07-17'),
(413, 103, 35, 50, '2017-07-17'),
(414, 103, 35, 50, '2017-07-17'),
(415, 103, 35, 50, '2017-07-17'),
(416, 103, 35, 51, '2017-07-17'),
(417, 103, 35, 51, '2017-07-17'),
(418, 103, 35, 51, '2017-07-17'),
(419, 103, 35, 51, '2017-07-17'),
(420, 103, 35, 51, '2017-07-17'),
(421, 32, 35, 52, '2017-07-20'),
(422, 32, 105, 54, '2017-07-20'),
(423, 32, 105, 54, '2017-07-20'),
(424, 1, 35, 55, '2017-07-28'),
(425, 83, 35, 56, '2017-07-28'),
(426, 109, 105, 80, '2017-09-24'),
(427, 109, 105, 80, '2017-09-24'),
(428, 109, 105, 80, '2017-09-24'),
(429, 109, 105, 80, '2017-09-24'),
(430, 109, 105, 81, '2017-09-24'),
(431, 109, 105, 81, '2017-09-24'),
(432, 109, 105, 81, '2017-09-24'),
(433, 109, 105, 81, '2017-09-24'),
(434, 109, 105, 82, '2017-09-24'),
(435, 109, 105, 82, '2017-09-24'),
(436, 109, 105, 82, '2017-09-24'),
(437, 109, 105, 82, '2017-09-24'),
(438, 109, 105, 83, '2017-09-24'),
(439, 109, 105, 83, '2017-09-24'),
(440, 109, 105, 83, '2017-09-24'),
(441, 109, 105, 83, '2017-09-24'),
(442, 109, 105, 84, '2017-09-24'),
(443, 109, 105, 84, '2017-09-24'),
(444, 109, 105, 84, '2017-09-24'),
(445, 109, 105, 84, '2017-09-24'),
(446, 109, 105, 85, '2017-09-24'),
(447, 109, 105, 85, '2017-09-24'),
(448, 109, 105, 85, '2017-09-24'),
(449, 109, 105, 85, '2017-09-24'),
(450, 109, 105, 86, '2017-09-24'),
(451, 109, 105, 86, '2017-09-24'),
(452, 109, 105, 86, '2017-09-24'),
(453, 109, 105, 86, '2017-09-24'),
(454, 109, 105, 87, '2017-09-24'),
(455, 109, 105, 87, '2017-09-24'),
(456, 109, 105, 87, '2017-09-24'),
(457, 109, 105, 87, '2017-09-24'),
(458, 109, 105, 88, '2017-09-24'),
(459, 109, 105, 88, '2017-09-24'),
(460, 109, 105, 88, '2017-09-24'),
(461, 109, 105, 88, '2017-09-24'),
(462, 109, 105, 89, '2017-09-24'),
(463, 109, 105, 89, '2017-09-24'),
(464, 109, 105, 89, '2017-09-24'),
(465, 109, 105, 89, '2017-09-24'),
(466, 109, 105, 90, '2017-09-24'),
(467, 109, 105, 90, '2017-09-24'),
(468, 109, 105, 90, '2017-09-24'),
(469, 109, 105, 90, '2017-09-24'),
(470, 109, 105, 91, '2017-09-27'),
(471, 109, 105, 91, '2017-09-27'),
(472, 109, 105, 91, '2017-09-27'),
(473, 109, 105, 91, '2017-09-27'),
(474, 109, 105, 92, '2017-09-27'),
(475, 109, 105, 92, '2017-09-27'),
(476, 109, 105, 92, '2017-09-27'),
(477, 109, 105, 92, '2017-09-27'),
(478, 109, 105, 93, '2017-09-27'),
(479, 109, 105, 93, '2017-09-27'),
(480, 109, 105, 93, '2017-09-27'),
(481, 109, 105, 93, '2017-09-27'),
(482, 109, 105, 94, '2017-09-27'),
(483, 109, 105, 94, '2017-09-27'),
(484, 109, 105, 94, '2017-09-27'),
(485, 109, 105, 94, '2017-09-27'),
(486, 109, 105, 95, '2017-09-27'),
(487, 109, 105, 95, '2017-09-27'),
(488, 109, 105, 95, '2017-09-27'),
(489, 109, 105, 95, '2017-09-27'),
(490, 109, 105, 97, '2017-09-28'),
(491, 109, 105, 97, '2017-09-28'),
(492, 109, 105, 97, '2017-09-28'),
(493, 109, 105, 97, '2017-09-28'),
(494, 109, 105, 101, '2017-09-28'),
(495, 109, 105, 101, '2017-09-28'),
(496, 109, 105, 101, '2017-09-28'),
(497, 109, 105, 101, '2017-09-28'),
(498, 109, 105, 107, '2017-09-28'),
(499, 109, 105, 107, '2017-09-28'),
(500, 109, 105, 107, '2017-09-28'),
(501, 109, 105, 107, '2017-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_news_category`
--

CREATE TABLE `zzz_news_category` (
  `newc_id` int(10) UNSIGNED NOT NULL,
  `newc_pid` int(10) UNSIGNED NOT NULL,
  `newc_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newc_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_news_item`
--

CREATE TABLE `zzz_news_item` (
  `newi_id` int(10) UNSIGNED NOT NULL,
  `newi_newc_id` int(10) UNSIGNED NOT NULL,
  `newi_title` text COLLATE utf8_unicode_ci NOT NULL,
  `newi_desc` text COLLATE utf8_unicode_ci,
  `newi_hilight` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_notice_category`
--

CREATE TABLE `zzz_notice_category` (
  `notc_id` int(10) UNSIGNED NOT NULL,
  `notc_pid` int(10) UNSIGNED NOT NULL,
  `notc_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notc_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_notice_item`
--

CREATE TABLE `zzz_notice_item` (
  `noti_id` int(10) UNSIGNED NOT NULL,
  `notc_notc_id` int(10) UNSIGNED NOT NULL,
  `notc_title` text COLLATE utf8_unicode_ci NOT NULL,
  `notc_desc` text COLLATE utf8_unicode_ci,
  `notc_hilight` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_order_counter`
--

CREATE TABLE `zzz_order_counter` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'auto number',
  `shop_id` int(11) UNSIGNED NOT NULL COMMENT 'ref to shop id',
  `odate` date NOT NULL DEFAULT '2017-01-01' COMMENT 'order date',
  `counter` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'counter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_order_counter`
--

INSERT INTO `zzz_order_counter` (`id`, `shop_id`, `odate`, `counter`) VALUES
(1, 105, '2017-12-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_order_head`
--

CREATE TABLE `zzz_order_head` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `shop_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสร้านค้า',
  `cust_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสลูกค้า',
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'หมายเลข order',
  `odate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'วันเวลาสั่งอาหาร',
  `cuser` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'customer name',
  `cmail` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล์ลูกค้า',
  `ctel` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทรลูกค้า',
  `caddr1` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ลูกค้า 1',
  `caddr2` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ลูกค้า 2',
  `caddr3` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ลูกค้า3',
  `caddr4` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ที่อยู่ลูกค้า4',
  `sub_total` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT 'ราคาก่อนหัก',
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT 'อัตราภาษี',
  `tax_amount` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT 'ราคาภาษี',
  `discount` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT 'ส่วนลด',
  `grand_total` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT 'ราคาสุทธิแล้ว',
  `payment` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'สถานะการชำระเงิน',
  `authen_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000-0000000000' COMMENT 'รหัสยืนยันการชำระ',
  `pdate` datetime NOT NULL DEFAULT '2017-01-01 00:00:01' COMMENT 'วันเวลาชำระเงิน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_order_head`
--

INSERT INTO `zzz_order_head` (`id`, `shop_id`, `cust_id`, `code`, `odate`, `cuser`, `cmail`, `ctel`, `caddr1`, `caddr2`, `caddr3`, `caddr4`, `sub_total`, `tax_rate`, `tax_amount`, `discount`, `grand_total`, `payment`, `authen_code`, `pdate`) VALUES
(1, 105, 109, '0105-201712270001', '2017-12-27 09:34:09', 'สิทธิชัย ชุ่มใจ', 'dummy@ziamthai.com', '000-0000-0000', NULL, NULL, NULL, NULL, '27.000', '7.000', '1.890', '0.000', '28.890', 0, '000000-0000000000', '2017-01-01 00:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_order_line`
--

CREATE TABLE `zzz_order_line` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `order_id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขการสั่ง',
  `item_id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขรายการอาหาร',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ประเภทข้อมูล (0-สินค้า,1-option,2-instruction)',
  `detail` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รายละเอียด',
  `qty` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'จำนวนที่สั่ง',
  `price` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาสินค้า',
  `total` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคารวมทั้งหมด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_order_line`
--

INSERT INTO `zzz_order_line` (`id`, `order_id`, `item_id`, `type`, `detail`, `qty`, `price`, `total`) VALUES
(1, 1, 99, 0, 'Pad Kra Praw With Rice (size Standard)', 1, '13.00', '13.00'),
(2, 1, 99, 1, 'Make it with : Meat', 0, '0.00', '0.00'),
(3, 1, 99, 1, 'Add Extra : Tofu, Pork', 0, '0.00', '0.00'),
(4, 1, 99, 2, 'เอากรอบๆ', 0, '0.00', '0.00'),
(5, 1, 100, 0, 'Omlet With Rice (size Standard)', 2, '7.00', '14.00'),
(6, 1, 100, 1, 'Make it with : Meat, Tofu, Pork, Chicken', 0, '0.00', '0.00'),
(7, 1, 100, 1, 'Add Extra : Tofu, Pork', 0, '0.00', '0.00'),
(8, 1, 100, 2, 'เอากรอบๆ', 0, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxfy`
--

CREATE TABLE `zzz_prom_bxfy` (
  `prom_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL COMMENT 'Shop ID',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `Item` int(10) UNSIGNED NOT NULL COMMENT 'Item for Redeem',
  `Free` int(10) UNSIGNED NOT NULL COMMENT 'Item of free',
  `start_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:01',
  `end_date` datetime NOT NULL DEFAULT '2999-01-01 00:00:01',
  `active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Redeem (Buy X Free Y)';

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxfy_free`
--

CREATE TABLE `zzz_prom_bxfy_free` (
  `id` int(10) UNSIGNED NOT NULL,
  `prom_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxfy_item`
--

CREATE TABLE `zzz_prom_bxfy_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `prom_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxfy_point`
--

CREATE TABLE `zzz_prom_bxfy_point` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `prom_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `exp_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxfy_point_log`
--

CREATE TABLE `zzz_prom_bxfy_point_log` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `point_id` int(11) UNSIGNED NOT NULL,
  `point_last` int(10) UNSIGNED NOT NULL,
  `point_curr` int(10) UNSIGNED ZEROFILL NOT NULL,
  `point_action` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxgy`
--

CREATE TABLE `zzz_prom_bxgy` (
  `prom_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT '100',
  `point` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `start_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:01',
  `end_date` datetime NOT NULL DEFAULT '2999-01-01 00:00:01',
  `active` tinyint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Currency 2 Point (buy x get y)';

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxgy_item`
--

CREATE TABLE `zzz_prom_bxgy_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `prom_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `item` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxgy_point`
--

CREATE TABLE `zzz_prom_bxgy_point` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `prom_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `exp_date` datetime NOT NULL DEFAULT '2017-01-01 00:00:01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_prom_bxgy_point_log`
--

CREATE TABLE `zzz_prom_bxgy_point_log` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `point_id` int(11) UNSIGNED NOT NULL,
  `point_last` int(10) UNSIGNED NOT NULL,
  `point_curr` int(10) UNSIGNED ZEROFILL NOT NULL,
  `point_action` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop`
--

CREATE TABLE `zzz_shop` (
  `id` int(11) UNSIGNED NOT NULL,
  `shop_name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อร้านอาหาร',
  `detail` text COLLATE utf8_unicode_ci,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_shop`
--

INSERT INTO `zzz_shop` (`id`, `shop_name`, `detail`, `active`) VALUES
(99, 'Dummy Shop', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_hour`
--

CREATE TABLE `zzz_shop_hour` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `shop_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสร้านค้า',
  `dow` int(10) UNSIGNED NOT NULL COMMENT 'วันของอาทิตย์',
  `open` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '00:00' COMMENT 'เวลาเปิด',
  `close` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '23:59' COMMENT 'เวลาปิด',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_item`
--

CREATE TABLE `zzz_shop_item` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `section_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสเมนูรอง',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อรายการอาหาร',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'คำอธิบายรายการอาหาร',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล',
  `price` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาของรายการอาหาร',
  `multisize` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะใช้หลายไซด์',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการขายออนไลน์',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='รายการอาหาร';

--
-- Dumping data for table `zzz_shop_item`
--

INSERT INTO `zzz_shop_item` (`id`, `section_id`, `name`, `detail`, `seq_num`, `price`, `multisize`, `online`, `active`) VALUES
(99, 99, 'Pad Kra Praw With Rice', NULL, 1, '0.00', 0, 1, 0),
(100, 99, 'Omlet With Rice', NULL, 2, '0.00', 0, 1, 0),
(101, 101, 'LAVA NOODLE', 'Steamed wide rice noodle with broccoli,baby corn,carrot,cabbage and mushroom,topped with red curry and peanut sauce,gamished with bean sprout and cilantro', 1, '12.00', 0, 1, 1),
(102, 101, 'BBQ CHICKEN', 'Fricd Thai BBQ chicken(bone-in)with sweet chili sauce and sticky rice', 2, '12.00', 0, 1, 1),
(103, 101, 'SWIMMING CHILEAN SEA BASS', 'Grilled Chilean Sea Bass topped with sweet&sour chili sauce garnished with crispy basil', 3, '18.00', 0, 1, 1),
(104, 101, 'SIZZLING SPINACH', 'Spinach topped with peanut sauce,cucumber, red onion and cashew nut', 4, '11.00', 0, 1, 1),
(105, 101, '3-FLAVORED SPECIAL', 'Lightly battered shrimp or fish in garlic and chili in 3-flavored sauce, carrot, pineapple, baby corn, onion, water chestnut and red bell pepper', 5, '14.00', 0, 1, 1),
(106, 101, 'ORANGE CHICKEN', 'Battered chicken breast in sweet and tangy orange flavored sauce, garnished with orange peel and fresh orange', 6, '11.00', 0, 1, 1),
(107, 101, 'SIZZLING TROPICAL', 'Chicken, shrimp, fresh mango, avocado and pumpkin in cashew nut stir-fried sauce with red bell pepper and onion', 7, '13.00', 0, 1, 1),
(108, 101, 'KHAO SOI', 'Chicken and egg noodle in a Northern Style curry soup topped with crispy egg noodles, served with a pickled mustard, red shallot, bean sprout and lime', 8, '12.00', 0, 1, 1),
(109, 101, 'THAI SPICE PORK STEW', 'Stewed pork loaded with cinnamon, goji berries, star anise and cardamum. Served with a side of steamed Chinese broccoli, pickled mustard', 9, '14.00', 0, 1, 1),
(110, 101, 'LEMONGRASS CHICKEN', 'Grilled lemongrass chicken with spinach, cucumber and carrot, served with peanut sauce', 10, '12.00', 0, 1, 1),
(111, 101, 'LEMONGRASS CHICKEN PAD THAI', 'A classic Pad Thai with broccoli, carrot and cabbage, topped with lemongrass chicken', 11, '14.00', 0, 1, 1),
(112, 101, 'SOFT SHELL CRAB PAD THAI', 'Delicious Pad Thai topped with lightly battered soft-shell crab', 12, '14.00', 0, 1, 1),
(113, 101, 'GREEN CURRY SEA BASS AND PRAWN', 'All time favorite Pad Thai with streamed lobster and peanut sauce', 13, '19.00', 0, 1, 1),
(114, 101, 'CRISPY BASIL SOFT SHELL CRAB', 'Crispy soft-shell crab in a special house spicy garlic sauce, bamboo shoot, red bell pepper, carrot & onion topped with crispy basil', 14, '15.00', 0, 1, 1),
(115, 101, 'PRA RAM', 'Steamed broccoli, carrots, baby corn, cabbage and mushroom topped with peanut sauce', 15, '12.00', 0, 1, 1),
(116, 101, 'MANGO PARADISE', 'Fresh chunks of mango in an all time favorite cashew nut stir-fry with chicken and shrimp, red bell pepper, onion and basil', 16, '13.00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_item_size`
--

CREATE TABLE `zzz_shop_item_size` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `item_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสรายการอาหาร',
  `size` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default' COMMENT 'ชื่อขนาด',
  `price` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT 'ราคาเริ่มต้นของไซด์',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ราคารายการอาหารตามไซด์';

--
-- Dumping data for table `zzz_shop_item_size`
--

INSERT INTO `zzz_shop_item_size` (`id`, `item_id`, `size`, `price`, `seq_num`) VALUES
(99, 99, 'Small', '10.00', 0),
(100, 100, 'default', '7.00', 0),
(101, 99, 'Medium', '12.00', 0),
(102, 99, 'Large', '15.00', 0),
(103, 101, 'Standard', '12.00', 0),
(104, 102, 'Standard', '12.00', 0),
(105, 103, 'Standard', '18.00', 0),
(106, 104, 'Standard', '11.00', 0),
(107, 105, 'Standard', '14.00', 0),
(108, 106, 'Standard', '11.00', 0),
(109, 107, 'Standard', '13.00', 0),
(110, 108, 'Standard', '12.00', 0),
(111, 109, 'Standard', '14.00', 0),
(112, 110, 'Standard', '12.00', 0),
(113, 111, 'Standard', '14.00', 0),
(114, 112, 'Standard', '14.00', 0),
(115, 113, 'Standard', '19.00', 0),
(116, 114, 'Standard', '15.00', 0),
(117, 115, 'Standard', '12.00', 0),
(118, 116, 'Standard', '13.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_item_size_default`
--

CREATE TABLE `zzz_shop_item_size_default` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `size_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_shop_item_size_default`
--

INSERT INTO `zzz_shop_item_size_default` (`id`, `item_id`, `size_id`) VALUES
(99, 99, 101),
(100, 100, 100),
(101, 101, 103),
(102, 102, 104),
(103, 103, 105),
(104, 104, 106),
(105, 105, 107),
(106, 106, 108),
(107, 107, 109),
(108, 108, 110),
(109, 109, 111),
(110, 110, 112),
(111, 111, 113),
(112, 112, 114),
(113, 113, 115),
(114, 114, 116),
(115, 115, 117),
(116, 116, 118);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_menu`
--

CREATE TABLE `zzz_shop_menu` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `shop_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสร้านค้า',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเมนูหลัก',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'คำอธิบายเมนูหลัก',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะออนไลน์',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zzz_shop_menu`
--

INSERT INTO `zzz_shop_menu` (`id`, `shop_id`, `name`, `detail`, `seq_num`, `online`, `active`) VALUES
(99, 105, 'FULL MENU', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_shop_section`
--

CREATE TABLE `zzz_shop_section` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'หมายเลขอัตโนมัติ',
  `menu_id` int(11) UNSIGNED NOT NULL COMMENT 'รหัสร้านค้า',
  `name` varchar(127) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเมนูรอง',
  `detail` text COLLATE utf8_unicode_ci COMMENT 'รายละเอียด',
  `seq_num` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ลำดับการแสดงผล',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะขายออนไลน์',
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'สถานะการใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='เมนูรอง';

--
-- Dumping data for table `zzz_shop_section`
--

INSERT INTO `zzz_shop_section` (`id`, `menu_id`, `name`, `detail`, `seq_num`, `online`, `active`) VALUES
(99, 99, 'MAIN DISH', NULL, 1, 0, 0),
(100, 99, 'BEVERAGE', NULL, 2, 0, 0),
(101, 99, 'Chef\'s Specials', NULL, 2, 1, 1),
(102, 99, 'Dessert', NULL, 2, 1, 1),
(103, 99, 'SideOrders', NULL, 3, 1, 1),
(104, 99, 'Starters', NULL, 4, 1, 1),
(105, 99, 'Hot Soups', NULL, 5, 1, 1),
(106, 99, 'Tossed Greeens', NULL, 6, 1, 1),
(107, 99, 'Wok Noodles', NULL, 7, 1, 1),
(108, 99, 'Wok Stir Fries', NULL, 8, 1, 1),
(109, 99, 'Rice', NULL, 9, 1, 1),
(110, 99, 'Classic Curry', NULL, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zzz_trans_log`
--

CREATE TABLE `zzz_trans_log` (
  `tran_id` int(10) UNSIGNED NOT NULL,
  `tran_controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'controller',
  `tran_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'model',
  `tran_func` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tran_query` text COLLATE utf8_unicode_ci NOT NULL,
  `tran_option` longtext COLLATE utf8_unicode_ci,
  `tran_cdate` datetime NOT NULL DEFAULT '2016-01-01 00:00:01',
  `tran_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zzz_admin_client_access`
--
ALTER TABLE `zzz_admin_client_access`
  ADD PRIMARY KEY (`access_user_key`),
  ADD KEY `access_user_id` (`access_user_id`);

--
-- Indexes for table `zzz_admin_client_user`
--
ALTER TABLE `zzz_admin_client_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `zzz_admin_panel_user`
--
ALTER TABLE `zzz_admin_panel_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `zzz_api_access`
--
ALTER TABLE `zzz_api_access`
  ADD PRIMARY KEY (`access_auth_code`);

--
-- Indexes for table `zzz_api_client`
--
ALTER TABLE `zzz_api_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `zzz_article_category`
--
ALTER TABLE `zzz_article_category`
  ADD PRIMARY KEY (`artc_id`);

--
-- Indexes for table `zzz_article_header`
--
ALTER TABLE `zzz_article_header`
  ADD PRIMARY KEY (`arth_id`),
  ADD KEY `arth_memh_id` (`arth_memh_id`),
  ADD KEY `arth_artc_id` (`arth_artc_id`);

--
-- Indexes for table `zzz_article_promote`
--
ALTER TABLE `zzz_article_promote`
  ADD PRIMARY KEY (`artp_id`);

--
-- Indexes for table `zzz_business_blog`
--
ALTER TABLE `zzz_business_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_shop_id` (`shop_id`);

--
-- Indexes for table `zzz_business_media_photo`
--
ALTER TABLE `zzz_business_media_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_shop_id` (`shop_id`);

--
-- Indexes for table `zzz_business_media_video`
--
ALTER TABLE `zzz_business_media_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_shop_id` (`shop_id`);

--
-- Indexes for table `zzz_business_shop`
--
ALTER TABLE `zzz_business_shop`
  ADD PRIMARY KEY (`bssh_id`),
  ADD KEY `bssh_zipcode` (`bssh_zipcode`),
  ADD KEY `bssh_active` (`bssh_active`);

--
-- Indexes for table `zzz_business_shop_images`
--
ALTER TABLE `zzz_business_shop_images`
  ADD PRIMARY KEY (`bssi_id`),
  ADD KEY `bssi_bssh_id` (`bssi_bssh_id`),
  ADD KEY `bssi_imgt_id` (`bssi_imgt_id`);

--
-- Indexes for table `zzz_business_shop_item_category`
--
ALTER TABLE `zzz_business_shop_item_category`
  ADD PRIMARY KEY (`bsic_id`),
  ADD KEY `bsic_name` (`bsic_name`),
  ADD KEY `bsic_bssh_id` (`bsic_bssh_id`),
  ADD KEY `ordering` (`bsic_order`),
  ADD KEY `active` (`bsic_active`);

--
-- Indexes for table `zzz_business_shop_item_header`
--
ALTER TABLE `zzz_business_shop_item_header`
  ADD PRIMARY KEY (`bsih_id`),
  ADD KEY `bsih_bsic_id` (`bsih_bsic_id`),
  ADD KEY `bsih_bssh_id` (`bsih_bssh_id`),
  ADD KEY `active` (`bsih_active`),
  ADD KEY `online_order` (`bsih_online`);

--
-- Indexes for table `zzz_business_shop_item_media`
--
ALTER TABLE `zzz_business_shop_item_media`
  ADD PRIMARY KEY (`bsim_id`);

--
-- Indexes for table `zzz_business_shop_item_option`
--
ALTER TABLE `zzz_business_shop_item_option`
  ADD PRIMARY KEY (`bsio_id`);

--
-- Indexes for table `zzz_business_shop_item_promotion`
--
ALTER TABLE `zzz_business_shop_item_promotion`
  ADD PRIMARY KEY (`bsip_id`),
  ADD KEY `bsip_bsih_id` (`bsip_bsih_id`);

--
-- Indexes for table `zzz_business_shop_option`
--
ALTER TABLE `zzz_business_shop_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_business_shop_review_header`
--
ALTER TABLE `zzz_business_shop_review_header`
  ADD PRIMARY KEY (`bsrh_id`);

--
-- Indexes for table `zzz_business_shop_review_image`
--
ALTER TABLE `zzz_business_shop_review_image`
  ADD PRIMARY KEY (`bsri_id`);

--
-- Indexes for table `zzz_business_shop_review_price`
--
ALTER TABLE `zzz_business_shop_review_price`
  ADD PRIMARY KEY (`bsrp_id`);

--
-- Indexes for table `zzz_business_shop_score`
--
ALTER TABLE `zzz_business_shop_score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `zzz_business_shop_theme`
--
ALTER TABLE `zzz_business_shop_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_business_shop_workhour`
--
ALTER TABLE `zzz_business_shop_workhour`
  ADD PRIMARY KEY (`bssw_id`),
  ADD KEY `bssw_bssh_id` (`bssw_bssh_id`);

--
-- Indexes for table `zzz_business_timeline_comment`
--
ALTER TABLE `zzz_business_timeline_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_topic_id` (`posts_id`);

--
-- Indexes for table `zzz_business_timeline_like`
--
ALTER TABLE `zzz_business_timeline_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_business_timeline_posts`
--
ALTER TABLE `zzz_business_timeline_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_ref_shop` (`shop_id`),
  ADD KEY `topic_mdate` (`m_date`);

--
-- Indexes for table `zzz_business_type`
--
ALTER TABLE `zzz_business_type`
  ADD PRIMARY KEY (`bsth_id`),
  ADD KEY `pid` (`bsth_pid`),
  ADD KEY `active` (`bsth_active`);

--
-- Indexes for table `zzz_business_type_category`
--
ALTER TABLE `zzz_business_type_category`
  ADD PRIMARY KEY (`bsct_id`);

--
-- Indexes for table `zzz_cmnty_article_cate`
--
ALTER TABLE `zzz_cmnty_article_cate`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `zzz_cmnty_forum_cate`
--
ALTER TABLE `zzz_cmnty_forum_cate`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `zzz_cmnty_menu`
--
ALTER TABLE `zzz_cmnty_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `zzz_cmnty_news`
--
ALTER TABLE `zzz_cmnty_news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_title` (`news_title`),
  ADD KEY `news_tags` (`news_tags`),
  ADD KEY `news_cate_id` (`news_cate_id`);

--
-- Indexes for table `zzz_cmnty_news_cate`
--
ALTER TABLE `zzz_cmnty_news_cate`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `zzz_cmnty_user`
--
ALTER TABLE `zzz_cmnty_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `zzz_config_head`
--
ALTER TABLE `zzz_config_head`
  ADD PRIMARY KEY (`cfgh_id`),
  ADD KEY `cfgh_name` (`cfgh_name`);

--
-- Indexes for table `zzz_config_lang`
--
ALTER TABLE `zzz_config_lang`
  ADD PRIMARY KEY (`cfgl_id`);

--
-- Indexes for table `zzz_content_editor`
--
ALTER TABLE `zzz_content_editor`
  ADD PRIMARY KEY (`coed_id`),
  ADD UNIQUE KEY `customer_login` (`coed_login`);

--
-- Indexes for table `zzz_customer_info`
--
ALTER TABLE `zzz_customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_customer_member`
--
ALTER TABLE `zzz_customer_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_login` (`shop_id`,`mem_id`) USING BTREE;

--
-- Indexes for table `zzz_customer_member_role`
--
ALTER TABLE `zzz_customer_member_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_customer_option`
--
ALTER TABLE `zzz_customer_option`
  ADD PRIMARY KEY (`cuso_id`);

--
-- Indexes for table `zzz_customer_policy`
--
ALTER TABLE `zzz_customer_policy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy_code` (`policy_name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `zzz_customer_role`
--
ALTER TABLE `zzz_customer_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_customer_role_policy`
--
ALTER TABLE `zzz_customer_role_policy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy` (`shop_id`,`mem_id`,`policy_id`);

--
-- Indexes for table `zzz_foods_order`
--
ALTER TABLE `zzz_foods_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fdoi_bssh_id` (`order_bssh_id`) USING BTREE,
  ADD KEY `fdoi_memh_id` (`order_memh_id`) USING BTREE;

--
-- Indexes for table `zzz_foods_order_list`
--
ALTER TABLE `zzz_foods_order_list`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `fdom_fdoi_id` (`list_order_id`),
  ADD KEY `fdom_bssh_id` (`list_bssh_id`),
  ADD KEY `fdom_bsih_id` (`list_bsih_id`);

--
-- Indexes for table `zzz_image_type`
--
ALTER TABLE `zzz_image_type`
  ADD PRIMARY KEY (`imgt_id`);

--
-- Indexes for table `zzz_item_option`
--
ALTER TABLE `zzz_item_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_itemid` (`item_id`);

--
-- Indexes for table `zzz_item_option_data`
--
ALTER TABLE `zzz_item_option_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_optionid` (`option_id`);

--
-- Indexes for table `zzz_item_option_default`
--
ALTER TABLE `zzz_item_option_default`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_default` (`option_id`,`default_id`) USING BTREE,
  ADD KEY `idx_optionid` (`option_id`),
  ADD KEY `idx_defaultid` (`default_id`) USING BTREE;

--
-- Indexes for table `zzz_item_option_price`
--
ALTER TABLE `zzz_item_option_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dataid` (`data_id`),
  ADD KEY `idx_sizeid` (`size_id`);

--
-- Indexes for table `zzz_location_head`
--
ALTER TABLE `zzz_location_head`
  ADD PRIMARY KEY (`loch_id`),
  ADD KEY `loch_pid` (`loch_pid`);

--
-- Indexes for table `zzz_master_category`
--
ALTER TABLE `zzz_master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zzz_master_timezone`
--
ALTER TABLE `zzz_master_timezone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_name` (`full`) USING BTREE;

--
-- Indexes for table `zzz_member_access`
--
ALTER TABLE `zzz_member_access`
  ADD PRIMARY KEY (`mema_key`);

--
-- Indexes for table `zzz_member_access_back`
--
ALTER TABLE `zzz_member_access_back`
  ADD PRIMARY KEY (`mema_key`);

--
-- Indexes for table `zzz_member_header`
--
ALTER TABLE `zzz_member_header`
  ADD PRIMARY KEY (`memh_id`),
  ADD KEY `memh_idn` (`memh_idn`);

--
-- Indexes for table `zzz_member_reward_history`
--
ALTER TABLE `zzz_member_reward_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auser` (`auser`);

--
-- Indexes for table `zzz_member_reward_points`
--
ALTER TABLE `zzz_member_reward_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_news_category`
--
ALTER TABLE `zzz_news_category`
  ADD PRIMARY KEY (`newc_id`);

--
-- Indexes for table `zzz_news_item`
--
ALTER TABLE `zzz_news_item`
  ADD PRIMARY KEY (`newi_id`);

--
-- Indexes for table `zzz_notice_category`
--
ALTER TABLE `zzz_notice_category`
  ADD PRIMARY KEY (`notc_id`);

--
-- Indexes for table `zzz_notice_item`
--
ALTER TABLE `zzz_notice_item`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `zzz_order_counter`
--
ALTER TABLE `zzz_order_counter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_shop_id` (`shop_id`);

--
-- Indexes for table `zzz_order_head`
--
ALTER TABLE `zzz_order_head`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_orderid` (`code`),
  ADD KEY `idx_shopid` (`shop_id`),
  ADD KEY `idx_customerid` (`cust_id`);

--
-- Indexes for table `zzz_order_line`
--
ALTER TABLE `zzz_order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orderid` (`order_id`),
  ADD KEY `idx_itemid` (`item_id`);

--
-- Indexes for table `zzz_prom_bxfy`
--
ALTER TABLE `zzz_prom_bxfy`
  ADD PRIMARY KEY (`prom_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_prom_bxfy_free`
--
ALTER TABLE `zzz_prom_bxfy_free`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prom_id` (`prom_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `zzz_prom_bxfy_item`
--
ALTER TABLE `zzz_prom_bxfy_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prom_id` (`prom_id`);

--
-- Indexes for table `zzz_prom_bxfy_point`
--
ALTER TABLE `zzz_prom_bxfy_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `prom_id` (`prom_id`);

--
-- Indexes for table `zzz_prom_bxfy_point_log`
--
ALTER TABLE `zzz_prom_bxfy_point_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `point_id` (`point_id`);

--
-- Indexes for table `zzz_prom_bxgy`
--
ALTER TABLE `zzz_prom_bxgy`
  ADD PRIMARY KEY (`prom_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_prom_bxgy_item`
--
ALTER TABLE `zzz_prom_bxgy_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `prom_id` (`prom_id`);

--
-- Indexes for table `zzz_prom_bxgy_point`
--
ALTER TABLE `zzz_prom_bxgy_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `shop_id` (`shop_id`),
  ADD KEY `prom_id` (`prom_id`);

--
-- Indexes for table `zzz_prom_bxgy_point_log`
--
ALTER TABLE `zzz_prom_bxgy_point_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `point_id` (`point_id`);

--
-- Indexes for table `zzz_shop`
--
ALTER TABLE `zzz_shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`shop_name`);

--
-- Indexes for table `zzz_shop_hour`
--
ALTER TABLE `zzz_shop_hour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_shop_item`
--
ALTER TABLE `zzz_shop_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sectionid` (`section_id`),
  ADD KEY `idx_multisize` (`multisize`);

--
-- Indexes for table `zzz_shop_item_size`
--
ALTER TABLE `zzz_shop_item_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_size` (`item_id`,`size`) USING BTREE,
  ADD KEY `idx_itemid` (`item_id`);

--
-- Indexes for table `zzz_shop_item_size_default`
--
ALTER TABLE `zzz_shop_item_size_default`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_default` (`item_id`,`size_id`),
  ADD KEY `idx_itemid` (`item_id`),
  ADD KEY `idx_sizeid` (`size_id`);

--
-- Indexes for table `zzz_shop_menu`
--
ALTER TABLE `zzz_shop_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `zzz_shop_section`
--
ALTER TABLE `zzz_shop_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`menu_id`);

--
-- Indexes for table `zzz_trans_log`
--
ALTER TABLE `zzz_trans_log`
  ADD PRIMARY KEY (`tran_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zzz_admin_client_user`
--
ALTER TABLE `zzz_admin_client_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zzz_admin_panel_user`
--
ALTER TABLE `zzz_admin_panel_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `zzz_article_category`
--
ALTER TABLE `zzz_article_category`
  MODIFY `artc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_article_header`
--
ALTER TABLE `zzz_article_header`
  MODIFY `arth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_article_promote`
--
ALTER TABLE `zzz_article_promote`
  MODIFY `artp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_blog`
--
ALTER TABLE `zzz_business_blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `zzz_business_media_photo`
--
ALTER TABLE `zzz_business_media_photo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `zzz_business_media_video`
--
ALTER TABLE `zzz_business_media_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `zzz_business_shop`
--
ALTER TABLE `zzz_business_shop`
  MODIFY `bssh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `zzz_business_shop_images`
--
ALTER TABLE `zzz_business_shop_images`
  MODIFY `bssi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;
--
-- AUTO_INCREMENT for table `zzz_business_shop_item_category`
--
ALTER TABLE `zzz_business_shop_item_category`
  MODIFY `bsic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `zzz_business_shop_item_header`
--
ALTER TABLE `zzz_business_shop_item_header`
  MODIFY `bsih_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `zzz_business_shop_item_media`
--
ALTER TABLE `zzz_business_shop_item_media`
  MODIFY `bsim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_shop_item_option`
--
ALTER TABLE `zzz_business_shop_item_option`
  MODIFY `bsio_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_shop_item_promotion`
--
ALTER TABLE `zzz_business_shop_item_promotion`
  MODIFY `bsip_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_shop_option`
--
ALTER TABLE `zzz_business_shop_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `zzz_business_shop_review_header`
--
ALTER TABLE `zzz_business_shop_review_header`
  MODIFY `bsrh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `zzz_business_shop_review_image`
--
ALTER TABLE `zzz_business_shop_review_image`
  MODIFY `bsri_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `zzz_business_shop_review_price`
--
ALTER TABLE `zzz_business_shop_review_price`
  MODIFY `bsrp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `zzz_business_shop_score`
--
ALTER TABLE `zzz_business_shop_score`
  MODIFY `score_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_shop_theme`
--
ALTER TABLE `zzz_business_shop_theme`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `zzz_business_shop_workhour`
--
ALTER TABLE `zzz_business_shop_workhour`
  MODIFY `bssw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `zzz_business_timeline_comment`
--
ALTER TABLE `zzz_business_timeline_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_timeline_like`
--
ALTER TABLE `zzz_business_timeline_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_business_timeline_posts`
--
ALTER TABLE `zzz_business_timeline_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `zzz_business_type`
--
ALTER TABLE `zzz_business_type`
  MODIFY `bsth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `zzz_business_type_category`
--
ALTER TABLE `zzz_business_type_category`
  MODIFY `bsct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `zzz_cmnty_article_cate`
--
ALTER TABLE `zzz_cmnty_article_cate`
  MODIFY `cate_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_cmnty_forum_cate`
--
ALTER TABLE `zzz_cmnty_forum_cate`
  MODIFY `cate_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_cmnty_menu`
--
ALTER TABLE `zzz_cmnty_menu`
  MODIFY `menu_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_cmnty_news`
--
ALTER TABLE `zzz_cmnty_news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_cmnty_news_cate`
--
ALTER TABLE `zzz_cmnty_news_cate`
  MODIFY `cate_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_cmnty_user`
--
ALTER TABLE `zzz_cmnty_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_config_head`
--
ALTER TABLE `zzz_config_head`
  MODIFY `cfgh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `zzz_config_lang`
--
ALTER TABLE `zzz_config_lang`
  MODIFY `cfgl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zzz_content_editor`
--
ALTER TABLE `zzz_content_editor`
  MODIFY `coed_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_customer_info`
--
ALTER TABLE `zzz_customer_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'customer id', AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `zzz_customer_member`
--
ALTER TABLE `zzz_customer_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'customer member id', AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `zzz_customer_member_role`
--
ALTER TABLE `zzz_customer_member_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'member group id', AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `zzz_customer_option`
--
ALTER TABLE `zzz_customer_option`
  MODIFY `cuso_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_customer_policy`
--
ALTER TABLE `zzz_customer_policy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto Number', AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `zzz_customer_role_policy`
--
ALTER TABLE `zzz_customer_role_policy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Auto Number', AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `zzz_foods_order`
--
ALTER TABLE `zzz_foods_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;
--
-- AUTO_INCREMENT for table `zzz_foods_order_list`
--
ALTER TABLE `zzz_foods_order_list`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;
--
-- AUTO_INCREMENT for table `zzz_image_type`
--
ALTER TABLE `zzz_image_type`
  MODIFY `imgt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `zzz_item_option`
--
ALTER TABLE `zzz_item_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `zzz_item_option_data`
--
ALTER TABLE `zzz_item_option_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `zzz_item_option_default`
--
ALTER TABLE `zzz_item_option_default`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `zzz_item_option_price`
--
ALTER TABLE `zzz_item_option_price`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `zzz_location_head`
--
ALTER TABLE `zzz_location_head`
  MODIFY `loch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `zzz_master_category`
--
ALTER TABLE `zzz_master_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ';
--
-- AUTO_INCREMENT for table `zzz_master_timezone`
--
ALTER TABLE `zzz_master_timezone`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `zzz_member_header`
--
ALTER TABLE `zzz_member_header`
  MODIFY `memh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `zzz_member_reward_history`
--
ALTER TABLE `zzz_member_reward_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `zzz_member_reward_points`
--
ALTER TABLE `zzz_member_reward_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `zzz_news_category`
--
ALTER TABLE `zzz_news_category`
  MODIFY `newc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_news_item`
--
ALTER TABLE `zzz_news_item`
  MODIFY `newi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_notice_category`
--
ALTER TABLE `zzz_notice_category`
  MODIFY `notc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_notice_item`
--
ALTER TABLE `zzz_notice_item`
  MODIFY `noti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_order_counter`
--
ALTER TABLE `zzz_order_counter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'auto number', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `zzz_order_head`
--
ALTER TABLE `zzz_order_head`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `zzz_order_line`
--
ALTER TABLE `zzz_order_line`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `zzz_prom_bxfy`
--
ALTER TABLE `zzz_prom_bxfy`
  MODIFY `prom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxfy_free`
--
ALTER TABLE `zzz_prom_bxfy_free`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxfy_item`
--
ALTER TABLE `zzz_prom_bxfy_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxfy_point`
--
ALTER TABLE `zzz_prom_bxfy_point`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxfy_point_log`
--
ALTER TABLE `zzz_prom_bxfy_point_log`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxgy_item`
--
ALTER TABLE `zzz_prom_bxgy_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxgy_point`
--
ALTER TABLE `zzz_prom_bxgy_point`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_prom_bxgy_point_log`
--
ALTER TABLE `zzz_prom_bxgy_point_log`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zzz_shop`
--
ALTER TABLE `zzz_shop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `zzz_shop_hour`
--
ALTER TABLE `zzz_shop_hour`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ';
--
-- AUTO_INCREMENT for table `zzz_shop_item`
--
ALTER TABLE `zzz_shop_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `zzz_shop_item_size`
--
ALTER TABLE `zzz_shop_item_size`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `zzz_shop_item_size_default`
--
ALTER TABLE `zzz_shop_item_size_default`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `zzz_shop_menu`
--
ALTER TABLE `zzz_shop_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `zzz_shop_section`
--
ALTER TABLE `zzz_shop_section`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'หมายเลขอัตโนมัติ', AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `zzz_trans_log`
--
ALTER TABLE `zzz_trans_log`
  MODIFY `tran_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `zzz_item_option`
--
ALTER TABLE `zzz_item_option`
  ADD CONSTRAINT `fk_item_option_2_shop_item` FOREIGN KEY (`item_id`) REFERENCES `zzz_shop_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_item_option_data`
--
ALTER TABLE `zzz_item_option_data`
  ADD CONSTRAINT `fk_item_option_data_2_item_option` FOREIGN KEY (`option_id`) REFERENCES `zzz_item_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_item_option_default`
--
ALTER TABLE `zzz_item_option_default`
  ADD CONSTRAINT `fk_option_default_2_item_option` FOREIGN KEY (`option_id`) REFERENCES `zzz_item_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_optoin_default_2_option_data` FOREIGN KEY (`default_id`) REFERENCES `zzz_item_option_data` (`id`);

--
-- Constraints for table `zzz_item_option_price`
--
ALTER TABLE `zzz_item_option_price`
  ADD CONSTRAINT `fk_item_option_price_2_item_size` FOREIGN KEY (`size_id`) REFERENCES `zzz_shop_item_size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_option_price_2_option_data` FOREIGN KEY (`data_id`) REFERENCES `zzz_item_option_data` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_order_counter`
--
ALTER TABLE `zzz_order_counter`
  ADD CONSTRAINT `fk_order_counter_2_shop` FOREIGN KEY (`shop_id`) REFERENCES `zzz_business_shop` (`bssh_id`);

--
-- Constraints for table `zzz_prom_bxfy`
--
ALTER TABLE `zzz_prom_bxfy`
  ADD CONSTRAINT `prom_bxfy_business_shop` FOREIGN KEY (`shop_id`) REFERENCES `zzz_business_shop` (`bssh_id`);

--
-- Constraints for table `zzz_prom_bxfy_free`
--
ALTER TABLE `zzz_prom_bxfy_free`
  ADD CONSTRAINT `prom_bxfy_free_bxfy` FOREIGN KEY (`prom_id`) REFERENCES `zzz_prom_bxfy` (`prom_id`);

--
-- Constraints for table `zzz_shop_hour`
--
ALTER TABLE `zzz_shop_hour`
  ADD CONSTRAINT `fk_shop_hour_2_shop` FOREIGN KEY (`shop_id`) REFERENCES `zzz_shop` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_shop_item`
--
ALTER TABLE `zzz_shop_item`
  ADD CONSTRAINT `fk_shop_item_2_shop_section` FOREIGN KEY (`section_id`) REFERENCES `zzz_shop_section` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_shop_item_size`
--
ALTER TABLE `zzz_shop_item_size`
  ADD CONSTRAINT `fk_shop_item_size_2_shop_item` FOREIGN KEY (`item_id`) REFERENCES `zzz_shop_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_shop_item_size_default`
--
ALTER TABLE `zzz_shop_item_size_default`
  ADD CONSTRAINT `fk_size_default_2_item` FOREIGN KEY (`item_id`) REFERENCES `zzz_shop_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_size_default_2_item_size` FOREIGN KEY (`size_id`) REFERENCES `zzz_shop_item_size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zzz_shop_menu`
--
ALTER TABLE `zzz_shop_menu`
  ADD CONSTRAINT `fk_shop_menu_2_bshop` FOREIGN KEY (`shop_id`) REFERENCES `zzz_business_shop` (`bssh_id`);

--
-- Constraints for table `zzz_shop_section`
--
ALTER TABLE `zzz_shop_section`
  ADD CONSTRAINT `fk_shop_section_2_shop_menu` FOREIGN KEY (`menu_id`) REFERENCES `zzz_shop_menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
