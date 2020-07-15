-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 03 Eki 2017, 14:49:38
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `azergoktel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_picurl` varchar(200) NOT NULL,
  `product_category` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_picurl`, `product_category`) VALUES
(0, 'H07V-K (NYAF) 450/750 V', 'images/1.png', 1),
(0, 'H07V-R (NYA) 450/750 V', 'images/2.png', 1),
(0, 'H07V-U (NYA) 450/750 V', 'images/3.png', 1),
(0, 'H05VV-F (NYMHY) 300/500 V', 'images/4.png', 1),
(0, 'NVV (NYM) 300/500 V', 'images/5.png', 1),
(0, 'YVV (NYY) 0,6/1 kV', 'images/6.png', 1),
(0, 'YVV (NYY) 0,6/1 kV', 'images/7.png', 1),
(0, 'YVV (NYY) 0,6/1 kV', 'images/8.png', 1),
(0, 'YVV (NYY) 0,6/1 kV', 'images/9.png', 1),
(0, 'YVZ4V-R (NYBY) 0,6/1 kV', 'images/10.png', 1),
(0, 'YVZ4V-R (NYBY) 0,6/1 kV', 'images/11.png', 1),
(0, 'H05VH-H (ШВП) 300/500 V', 'images/12.png', 1),
(0, 'H05V2V2H2-F (ШВВП) 300/500 V', 'images/13.png', 1),
(0, 'KQ Kabel 0,6/1 kV', 'images/14.png', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_picurl` varchar(200) NOT NULL,
  `product_category` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_picurl`, `product_category`) VALUES
(1, 'H07V-K (NYAF) 450/750 V', 'images/1.png', 1),
(2, 'H07V-R (NYA) 450/750 V', 'images/2.png', 1),
(3, 'H07V-U (NYA) 450/750 V', 'images/3.png', 1),
(4, 'H05VV-F (NYMHY) 300/500 V', 'images/4.png', 1),
(5, 'NVV (NYM) 300/500 V', 'images/5.png', 1),
(6, 'YVV (NYY) 0,6/1 kV', 'images/6.png', 1),
(7, 'YVV (NYY) 0,6/1 kV', 'images/7.png', 1),
(8, 'YVV (NYY) 0,6/1 kV', 'images/8.png', 1),
(9, 'YVV (NYY) 0,6/1 kV', 'images/9.png', 1),
(10, 'YVZ4V-R (NYBY) 0,6/1 kV', 'images/10.png', 1),
(11, 'YVZ4V-R (NYBY) 0,6/1 kV', 'images/11.png', 1),
(12, 'H05VH-H (ШВП) 300/500 V', 'images/12.png', 1),
(13, 'H05V2V2H2-F (ШВВП) 300/500 V', 'images/13.png', 1),
(14, 'KQ Kabel 0,6/1 kV', 'images/14.png', 1),
(15, 'AES kabel', 'images/16.png', 2),
(16, 'YAVV-R (NAYY) 0,6/1 kV', 'images/17.png', 2),
(17, 'AER kabel (SİB) 0,6/1 kV.', 'images/18.png', 2),
(18, 'YAVZ4V-R (NAYBY) 0,6/1 kV', 'images/19.png', 2),
(19, 'YAVZ4V-R (NAYBY) 0,6/1 kV', 'images/20.png', 2),
(20, 'YAVV-R (NAYY) 0,6/1 kV', 'images/21.png', 2),
(21, '9 simli VBV kabel', 'images/22.png', 3),
(22, '7 simli VBV kabel', 'images/23.png', 3),
(23, '5 simli VBV kabel', 'images/24.png', 3),
(24, '3 simli VBV kabel', 'images/25.png', 3),
(25, 'H07Z1-K 450/750 V', 'images/26.png', 4),
(26, 'H07Z1-R 450/750 V', 'images/27.png', 4),
(27, 'H07Z1-U 450/750 V', 'images/28.png', 4),
(28, 'H05Z1Z1-F 300/500 V', 'images/29.png', 4),
(29, 'NHXMH 300/500 V', 'images/30.png', 4),
(30, 'N2XH 0,6/1 kV', 'images/31.png', 4);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
