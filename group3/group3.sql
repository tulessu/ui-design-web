-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2022, 19:59:31
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `group3`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `group3_calculation`
--

CREATE TABLE `group3_calculation` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `reduced_recycle` tinyint(1) NOT NULL,
  `gram` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `group3_calculation`
--

INSERT INTO `group3_calculation` (`id`, `username`, `email`, `reduced_recycle`, `gram`, `date`) VALUES
(41, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 1, 90, '2022-01-09 09:51:56'),
(42, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 0, 52, '2022-01-09 09:54:24'),
(43, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 1, 95, '2022-01-09 09:54:29'),
(44, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 0, 35, '2022-01-09 10:10:42'),
(45, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 1, 39, '2022-01-09 22:08:19'),
(46, 'AykolMB', 'bahadir.aykol@bilgiedu.net', 0, 23, '2022-01-09 22:08:27'),
(47, 'omar.khalid', 'a.alshareef@bilgiedu.net', 1, 105, '2022-01-12 21:52:31'),
(48, 'omar.khalid', 'a.alshareef@bilgiedu.net', 0, 31, '2022-01-12 21:52:37'),
(49, 'omar.khalid', 'a.alshareef@bilgiedu.net', 1, 58, '2022-01-12 21:52:43'),
(50, 'omar.khalid', 'a.alshareef@bilgiedu.net', 0, 33, '2022-01-12 21:52:48'),
(51, 'omar.khalid', 'a.alshareef@bilgiedu.net', 0, 106, '2022-01-12 21:52:54'),
(52, 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', 1, 63, '2022-01-12 21:53:23'),
(53, 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', 0, 45, '2022-01-12 21:53:27'),
(54, 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', 0, 42, '2022-01-12 21:53:32'),
(55, 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', 0, 41, '2022-01-12 21:53:36'),
(56, 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', 1, 45, '2022-01-12 21:53:39'),
(57, 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', 1, 51, '2022-01-12 21:53:55'),
(58, 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', 1, 76, '2022-01-12 21:53:59'),
(59, 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', 1, 66, '2022-01-12 21:54:08'),
(60, 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', 0, 48, '2022-01-12 21:54:32'),
(61, 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', 0, 73, '2022-01-12 21:54:53'),
(62, 'ersoyZeynep', 'zeynep.ersoy02@bilgiedu.net', 1, 102, '2022-01-12 21:55:08'),
(63, 'ersoyZeynep', 'zeynep.ersoy02@bilgiedu.net', 1, 68, '2022-01-12 21:55:15'),
(64, 'ersoyZeynep', 'zeynep.ersoy02@bilgiedu.net', 0, 32, '2022-01-12 21:55:21'),
(65, 'sozenIrem', 'irem.sozen@bilgiedu.net', 1, 79, '2022-01-12 21:55:47'),
(66, 'sozenIrem', 'irem.sozen@bilgiedu.net', 0, 43, '2022-01-12 21:55:54'),
(67, 'sozenIrem', 'irem.sozen@bilgiedu.net', 0, 83, '2022-01-12 21:56:00'),
(68, 'tules.erikci', 'su.erikci@bilgiedu.net', 1, 39, '2022-01-12 21:56:27'),
(69, 'tules.erikci', 'su.erikci@bilgiedu.net', 0, 29, '2022-01-12 21:56:58'),
(70, 'tules.erikci', 'su.erikci@bilgiedu.net', 0, 100, '2022-01-12 21:57:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `group3_users`
--

CREATE TABLE `group3_users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) CHARACTER SET latin1 NOT NULL,
  `lastName` varchar(100) CHARACTER SET latin1 NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(100) CHARACTER SET latin1 NOT NULL,
  `job` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `group3_users`
--

INSERT INTO `group3_users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `age`, `country`, `job`) VALUES
(1, 'Mustafa Bahadir', 'Aykol', 'AykolMB', 'bahadir.aykol@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(3, 'Melisa Zeynep', 'Ersoy', 'ersoyZeynep', 'zeynep.ersoy02@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(4, 'Irem', 'Sozen', 'sozenIrem', 'irem.sozen@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(6, 'Emre', 'Catalkaya', 'emre.catalkaya', 'emre.catalkaya@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(7, 'Tules Su', 'Erikci', 'tules.erikci', 'su.erikci@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(8, 'Efe', 'Koseoglu', 'efe.koseoglu', 'efe.koseoglu@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student'),
(9, 'Omar', 'Khalid', 'omar.khalid', 'a.alshareef@bilgiedu.net', '698d51a19d8a121ce581499d7b701668', 23, 'Turkey', 'Student');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `group3_calculation`
--
ALTER TABLE `group3_calculation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `group3_users`
--
ALTER TABLE `group3_users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `group3_calculation`
--
ALTER TABLE `group3_calculation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Tablo için AUTO_INCREMENT değeri `group3_users`
--
ALTER TABLE `group3_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
