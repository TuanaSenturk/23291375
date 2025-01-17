-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2025, 16:21:07
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yemek_sitesi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'NOT NULL',
  `email` varchar(100) NOT NULL COMMENT 'NOT NULL',
  `password` varchar(255) NOT NULL COMMENT 'NOT NULL',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'CURRENT_TIMESTAMP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'tuana', 'tuanasenturk11@hotmail.com', '$2y$10$LriAQrEBl3d7MeOW7VlO7.z.srPno1oxCWaxNpiTl6pPkohI/IaRW', '2025-01-17 11:39:24'),
(2, 'sıla', 'sila@hotmail.com', '$2y$10$s8RZLnDbRyghL0DAwSFzge1HeMgFVdkmkkaPnToILmboItiWkyEhK', '2025-01-17 11:58:07'),
(3, 'ali', 'ali@gmail.com', '$2y$10$mJiqyNJkMw6Z3AfVJG5xdeALCSHDWPKl4q2R2H0/LF9z/YRg8xGcK', '2025-01-17 12:02:34'),
(4, 'veli', 'veli@gmail.com', '$2y$10$6EJZLdQbY6kP.VusFJuUqe2Uje6EVjjD6hqUbKAgVOReXAwggoihy', '2025-01-17 12:11:47'),
(5, 'asli', 'asli@gmail.com', '$2y$10$gKcYW0DvESuapoQD3Tt9zO1h/dP.chDID8shGF37.SJx3dJ.9d9FW', '2025-01-17 12:24:44'),
(7, 'esra', 'esra@gmail.com', '$2y$10$yRaD3qLq2YLNrtqilpzDLOrC/VcOZLxow3cig4dHcnCIFCy5l1P/e', '2025-01-17 12:27:23'),
(8, 'cevat', 'ahmet@gmail.com', '$2y$10$HWMP2OxZ7a0gqPAtSIHzmOAa6Tq.H1cnxkwY2HI8LlEGZnhwKUtv6', '2025-01-17 12:37:13'),
(9, 'ahmet', 'cevat@gmail.com', '$2y$10$TsUfUlejRHqgiZiSK0x0SuN4O7/PyM44N/1/byWGaq7CoTRbCV5M6', '2025-01-17 13:21:29');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
