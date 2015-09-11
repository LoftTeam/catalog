-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2015 at 11:33 
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loft_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE IF NOT EXISTS `category_products` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `title`) VALUES
(1, 'Ноутбуки'),
(2, 'Планшеты'),
(3, 'Компьютеры'),
(4, 'Электронные книги'),
(5, 'Видеокамеры'),
(6, 'Программное обеспечение'),
(7, 'Радиотелефоны'),
(8, 'Игры'),
(9, 'Фотоаппараты'),
(10, 'Samrt TV'),
(11, 'Смартфоны');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_order` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `status`, `date_order`) VALUES
(1, 1, 'В обработке', '2015-06-08'),
(2, 2, 'В обработке', '2015-08-10'),
(3, 3, 'В обработке', '2015-08-09'),
(4, 4, 'В обработке', '2015-08-02'),
(5, 5, 'В обработке', '2015-08-23'),
(6, 6, 'В обработке', '2015-06-08'),
(7, 7, 'В обработке', '2015-05-11'),
(8, 8, 'В обработке', '2015-07-21'),
(9, 9, 'В обработке', '2015-08-17'),
(10, 10, 'В обработке', '2015-08-16'),
(11, 1, 'В обработке', '2015-08-10'),
(12, 2, 'В обработке', '2015-08-17'),
(13, 3, 'В обработке', '2015-07-21'),
(14, 4, 'В обработке', '2015-08-16'),
(15, 5, 'В обработке', '2015-08-02'),
(16, 6, 'В обработке', '2015-07-09'),
(17, 7, 'В обработке', '2015-07-17'),
(18, 8, 'В обработке', '2015-08-15'),
(19, 9, 'В обработке', '2015-07-13'),
(20, 10, 'В обработке', '2015-05-13'),
(21, 1, 'В обработке', '2015-07-07'),
(22, 2, 'В обработке', '2015-08-05'),
(23, 3, 'В обработке', '2015-07-13'),
(24, 4, 'В обработке', '2015-08-15'),
(25, 5, 'В обработке', '2015-08-06'),
(26, 6, 'В обработке', '2015-08-07'),
(27, 7, 'В обработке', '2015-08-05'),
(28, 8, 'В обработке', '2015-08-08'),
(29, 9, 'В обработке', '2015-08-06'),
(30, 10, 'В обработке', '2015-08-22'),
(31, 1, 'В обработке', '2015-06-08'),
(32, 2, 'В обработке', '2015-08-10'),
(33, 3, 'В обработке', '2015-08-09'),
(34, 4, 'В обработке', '2015-08-02'),
(35, 5, 'В обработке', '2015-08-23'),
(36, 6, 'В обработке', '2015-06-08'),
(37, 7, 'В обработке', '2015-05-11'),
(38, 8, 'В обработке', '2015-07-21'),
(39, 9, 'В обработке', '2015-08-17'),
(40, 10, 'В обработке', '2015-08-16'),
(41, 1, 'В обработке', '2015-08-10'),
(42, 2, 'В обработке', '2015-08-17'),
(43, 3, 'В обработке', '2015-07-21'),
(44, 4, 'В обработке', '2015-08-16'),
(45, 5, 'В обработке', '2015-08-02'),
(46, 6, 'В обработке', '2015-07-09'),
(47, 7, 'В обработке', '2015-07-17'),
(48, 8, 'В обработке', '2015-08-15'),
(49, 9, 'В обработке', '2015-07-13'),
(50, 10, 'В обработке', '2015-05-13'),
(51, 1, 'В обработке', '2015-07-07'),
(52, 2, 'В обработке', '2015-08-05'),
(53, 3, 'В обработке', '2015-07-13'),
(54, 4, 'В обработке', '2015-08-15'),
(55, 5, 'В обработке', '2015-08-06'),
(56, 6, 'В обработке', '2015-08-07'),
(57, 7, 'В обработке', '2015-08-05'),
(58, 8, 'В обработке', '2015-08-08'),
(59, 9, 'В обработке', '2015-08-06'),
(60, 10, 'В обработке', '2015-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `order_property`
--

CREATE TABLE IF NOT EXISTS `order_property` (
  `id` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_property`
--

INSERT INTO `order_property` (`id`, `id_product`, `price`) VALUES
(1, 1, 124123),
(2, 16, 124124),
(3, 3, 646232),
(4, 4, 12421),
(5, 5, 235324),
(6, 6, 235234),
(7, 7, 234324),
(8, 8, 2353242),
(9, 9, 235324),
(10, 20, 3432432),
(11, 29, 141231),
(12, 30, 235325),
(13, 31, 1245),
(14, 54, 7453),
(15, 88, 14141),
(16, 88, 234324),
(17, 88, 3235),
(18, 86, 234324),
(19, 84, 2343242),
(20, 59, 11241),
(21, 64, 34324),
(22, 85, 124124),
(23, 72, 443242),
(24, 60, 12412),
(25, 86, 3211),
(26, 56, 1414),
(27, 51, 542353),
(28, 51, 4324),
(29, 73, 324324),
(30, 53, 8765),
(31, 22, 63563),
(32, 30, 53452),
(33, 21, 4321),
(34, 40, 53452),
(35, 68, 53453),
(36, 55, 12341),
(37, 59, 5342),
(38, 10, 32432),
(39, 19, 9624),
(40, 37, 32432),
(1, 1, 124123),
(2, 16, 124124),
(3, 3, 646232),
(4, 4, 12421),
(5, 5, 235324),
(6, 6, 235234),
(7, 7, 234324),
(8, 8, 2353242),
(9, 9, 235324),
(10, 20, 3432432),
(11, 29, 141231),
(12, 30, 235325),
(13, 31, 1245),
(14, 54, 7453),
(15, 88, 14141),
(16, 88, 234324),
(17, 88, 3235),
(18, 86, 234324),
(19, 84, 2343242),
(20, 59, 11241),
(21, 64, 34324),
(22, 85, 124124),
(23, 72, 443242),
(24, 60, 12412),
(25, 86, 3211),
(26, 56, 1414),
(27, 51, 542353),
(28, 51, 4324),
(29, 73, 324324),
(30, 53, 8765),
(31, 22, 63563),
(32, 30, 53452),
(33, 21, 4321),
(34, 40, 53452),
(35, 68, 53453),
(36, 55, 12341),
(37, 59, 5342),
(38, 10, 32432),
(39, 19, 9624),
(40, 37, 32432),
(41, 34, 5432),
(42, 59, 5432),
(43, 61, 5342),
(44, 5, 5324),
(45, 84, 53242),
(46, 85, 52342),
(47, 45, 7532),
(48, 86, 6543),
(49, 77, 4234),
(50, 75, 5636),
(51, 58, 7284),
(52, 37, 5356),
(53, 46, 4252),
(54, 30, 7245),
(55, 30, 432411),
(56, 31, 51343),
(57, 63, 52343),
(58, 41, 32532),
(59, 10, 5324),
(60, 51, 8234),
(41, 34, 5432),
(42, 59, 5432),
(43, 61, 5342),
(44, 5, 5324),
(45, 84, 53242),
(46, 85, 52342),
(47, 45, 7532),
(48, 86, 6543),
(49, 77, 4234),
(50, 75, 5636),
(51, 58, 7284),
(52, 37, 5356),
(53, 46, 4252),
(54, 30, 7245),
(55, 30, 432411),
(56, 31, 51343),
(57, 63, 52343),
(58, 41, 32532),
(59, 10, 5324),
(60, 51, 8234);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `mark` varchar(50) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text,
  `id_catalog` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `img`, `mark`, `count`, `price`, `description`, `id_catalog`) VALUES
(1, 'Ноутбук Lenovo Flex 2 15', '', 'Lenovo', 10, 17342.5, 'Экран 15.6" (1920x1080) Full HD LED, глянцевый IPS Multi-Touch / Intel Core i3-4030U (1.9 ГГц) / RAM 4 ГБ / HDD 1 ТБ / nVidia GeForce 820M, 2 ГБ / DVD Super Multi / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 2.3 кг / черный\r\nПодробнее: ', 1),
(2, 'Ноутбук HP 255 G3 ', '', 'HP', 3, 5245, 'Экран 15.6” (1366x768) HD LED, матовый / AMD Dual-Core E1-6010 (1.35 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / Windows 8.1 64bit / 2.15 кг / черный', 1),
(3, 'Ноутбук Asus X553MA', '', 'Asus', 4, 6423, 'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / DVD Super Multi / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.2 кг / черный\r\nПодробнее: ', 1),
(4, 'MSI GT80 2QE Titan SLI', '', 'MSI', 5, 123436, 'Экран 17.3" (1920x1080) Full HD LED, матовый / Intel Core i7- 5950HQ (2.9 - 3.8 ГГц) / RAM 32 ГБ / SSD 512 ГБ + HDD 1 ТБ / 2 x nVidia GeForce GTX 980M, 8 ГБ / Blu-Ray / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 Single Language Rus 64bit / 4.5 кг / черный / PowerPack\r\nПодробнее: http://rozetka.com.ua/notebooks/msi/c80004/v109/', 1),
(5, 'Apple MacBook Air 13" ', '', 'Apple', 2, 26637, 'Экран 13.3" (1440x900) WXGA+ LED, глянцевый / Intel Core i5 (1.6 - 2.7 ГГц) / RAM 4 ГБ / SSD 128 ГБ / Intel HD Graphics 6000 / без ОД / Wi-Fi / Bluetooth / веб-камера / OS X Yosemite / 1.35 к', 1),
(6, 'Apple MacBook Pro Retina 13" ', '', 'Apple MacBook Pro Retina 13" ', 21, 85531, 'Экран 13.3" IPS (2560x1600) Retina LED, глянцевый / Intel Core i7 (3.1 ГГц) / RAM 16 ГБ / SSD 1 TБ / Intel Iris Graphics 6100 / без ОД / Wi-Fi / Bluetooth / веб-камера / OS X Yosemite / 1.58 кг\r\nПодробнее: ', 1),
(7, 'Asus Transformer Pad TF103C 16GB Doc Black ', '', 'Asus', 12, 4578, 'кран 10.1" (1280x800) емкостной Multi-Touch / Intel Atom Z3745 (1.33 ГГц) / RAM 1 ГБ / флеш память 16 ГБ + поддержка карт памяти MicroSD / Wi-Fi 802.11 a/b/g/n / Bluetooth 4.0 / основная камера 2 Мп + фронтальная 0.3 Мп / GPS + GLONASS / ОС Android 4.4 / 550 г / черный + док-станция (QWERTY-клавиатура, тачпад, USB 2.0)\r\n', 2),
(8, 'Asus MeMO Pad 7 16GB Black', '', 'Asus', 21, 4904, 'Экран 7" IPS (1920x1200) емкостный Multi-Touch / Intel Atom Z3560 (1.83 ГГц) / RAM 2 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 2 Мп / GPS / ГЛОНАСС / Android 4.4 (KitKat) / 269 г / черный\r\n', 2),
(9, 'Apple A1489 iPad mini with Retina display Wi-Fi', '', 'Apple', 12, 7123, 'Экран 7.9" (2048 x 1536) емкостной Multi-Touch / Apple A7 (1.3 ГГц) / ОЗУ 1 ГБ / Флеш-память 16 ГБ / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 1.2 Мп / ОС iOS 7.0 / вес 331 г / серебряный\r\n', 2),
(10, 'Apple A1475 iPad Air Wi-Fi 4G 16GB\r\n', '', 'Apple', 32, 12953, 'Экран 9.7" (2048 x 1536) Multi-Touch / Apple A7 (1.3 ГГц) / ОЗУ 1 ГБ / Флеш-память 16 ГБ / 3G / 4G / EV-DO / Wi-Fi / Bluetooth 4.0 / основная камера 5Мп, фронтальная 1.2 Мп / GPS / ОС iOS 7 / вес 478 г / серый\r\n', 2),
(11, 'Sony Xperia Z3 Tablet Compact 4G 16GB White\r\n', '', 'Sony', 12, 12471, 'Экран 8" IPS (1920x1200) емкостный Multi-Touch / Qualcomm Snapdragon MSM8974AB (2.5 ГГц) / RAM 3 ГБ / SSD 16 ГБ + поддержка карт памяти microSD / Wi-Fi / 3G / 4G LTE / Bluetooth 4.0 / NFC / пыле/влагозащищенный / камера основная 8.1 Мп, фронтальная - 2.2 Мп / GPS / ГЛОНАСС / ОС Android 4.4 (Kitkat) / 270 г / белый\r\n', 2),
(13, 'Персональный компьютер Lenovo IdeaCentre H535', '', 'Lenovo', 5, 7326, 'AMD Trinity A8-5500 (3.2 - 3.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon HD 7560D / DVD±RW / LAN / кардридер / DOS / клавиатура+ мышь\r\n', 3),
(14, 'Персональный компьютер Lenovo ThinkStation E31\r\n', '', 'Lenovo', 4, 19624.9, 'Intel Xeon E3-1225V2 (3.2 ГГц) / 2 x RAM 2 ГБ / HDD 1 ТБ / LAN / DVD-RW / кард-ридер / Windows 7 Professional 64bit + клавиатура и мышь\r\n', 3),
(15, 'Asus BM1AD1-I54440047F (90PF00F1-M00470)', '', 'Asus', 6, 17605, 'ntel Core i5-4430S (2.7 - 3.2 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics 4600 / DVD Super Multi / LAN / Windows 8.1 Pro / клавиатура + мышь\r\n', 3),
(16, 'Asus BM6820', '', 'Asus', 3, 7323, 'Intel Pentium Dual Core G2020 (2.9 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без OД / LAN / Без ОС\r\nПодробнее: ', 3),
(17, 'Acer Aspire TC-100 ', '', 'Acer', 7, 5950, 'AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon HD 8240 / DVD Super Multi / LAN / кардридер / DOS\r\n', 3),
(18, 'PocketBook 626 Touch Lux2 White ', '', 'PocketBook', 123, 4179, 'иагональ дисплея: 6"\r\nРазрешение: 1024х758\r\nТип матрицы: E Ink Pearl\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 208 г\r\n', 4),
(19, 'PocketBook 624 Basic Touch Grey\r\n', '', 'PocketBook', 32, 3039, 'Диагональ дисплея: 6"\r\nРазрешение: 800х600\r\nТип матрицы: E Ink\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 191 г\r\n', 4),
(20, 'PocketBook 626 Touch Lux2 White ', '', 'PocketBook', 123, 4179, 'иагональ дисплея: 6"\r\nРазрешение: 1024х758\r\nТип матрицы: E Ink Pearl\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 208 г\r\n', 4),
(21, 'PocketBook 624 Basic Touch Grey\r\n', '', 'PocketBook', 32, 3039, 'Диагональ дисплея: 6"\r\nРазрешение: 800х600\r\nТип матрицы: E Ink\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 191 г\r\n', 4),
(22, 'PocketBook 640 Aqua ', '', 'PocketBook', 17, 2999, 'Диагональ дисплея: 6"\r\nРазрешение: 800х600\r\nТип матрицы: E Ink Pearl\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 170 г\r\n', 4),
(23, 'Texet TB-166', '', 'Texet', 43, 3089, 'Диагональ дисплея: 6"\r\nРазрешение: 800х600\r\nТип матрицы: E Ink Pearl\r\nКоличество градаций серого: 16\r\nВстроенная память: 4 ГБ\r\nВес: 226 г\r\n', 4),
(24, 'GoPro HERO4 Black Standard Edition', '', 'GoPro', 11, 13699, 'Матрица (светочувствительный элемент): 12 Мп, CMOS\r\nТип носителя: Flash память\r\nРазрешение видео: 4K (3840x2160)\r\n', 5),
(25, 'Sony HDR-CX405B Black ', '', 'Sony', 6, 8999, 'Матрица (светочувствительный элемент): 1/5.8" (3.1 мм) Exmor R CMOS с обратной засветкой\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\nЗум: Оптический - 30x\r\nЦифровой - 350x\r\n', 5),
(26, 'GoPro HERO4 Black Standard Edition', '', 'GoPro', 11, 13699, 'Матрица (светочувствительный элемент): 12 Мп, CMOS\r\nТип носителя: Flash память\r\nРазрешение видео: 4K (3840x2160)\r\n', 5),
(27, 'Sony HDR-CX405B Black ', '', 'Sony', 6, 8999, 'Матрица (светочувствительный элемент): 1/5.8" (3.1 мм) Exmor R CMOS с обратной засветкой\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\nЗум: Оптический - 30x\r\nЦифровой - 350x\r\n', 5),
(28, 'Panasonic HC-V530EE', '', 'Panasonic', 4, 6799, 'Матрица (светочувствительный элемент): 1/5.8’’ MOП-матрица BSI\r\nОбщее количество пикселей: 2.51 Мп\r\nЭффективное число пикселей: 2.2 Мп [16:9]\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\nЗум: Оптический зум: 50x\r\nИнтеллектуальный зум: 90x\r\nЦифровой зум: 150х / 3000x (максимальное значение увеличения)\r\n', 5),
(29, 'GoPro HERO3+ Silver Edition ', '', 'GoPro', 5, 8099, 'Матрица (светочувствительный элемент): 10 Мпикс, CMOS\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\n', 5),
(30, 'Panasonic HC-V530EE', '', 'Panasonic', 4, 6799, 'Матрица (светочувствительный элемент): 1/5.8’’ MOП-матрица BSI\r\nОбщее количество пикселей: 2.51 Мп\r\nЭффективное число пикселей: 2.2 Мп [16:9]\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\nЗум: Оптический зум: 50x\r\nИнтеллектуальный зум: 90x\r\nЦифровой зум: 150х / 3000x (максимальное значение увеличения)\r\n', 5),
(31, 'GoPro HERO3+ Silver Edition ', '', 'GoPro', 5, 8099, 'Матрица (светочувствительный элемент): 10 Мпикс, CMOS\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\n', 5),
(32, 'Sony HDR-AS200V', '', 'Sony', 8, 8999, 'Матрица (светочувствительный элемент): 1/2.3” (7.76 мм) матрица Exmor R CMOS с обратной засветкой Число пикселей: 8.8 Мп\r\nТип носителя: Flash память\r\nРазрешение видео: Full HD (1920x1080)\r\n', 5),
(33, 'Windows 8.1 Professional 64-bit Russian 1 License 1pk OEM DVD \r\n', '', 'Microsoft', 5, 3529, 'Windows 8.1 Professional 64-bit Russian — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.', 6),
(34, 'Windows LE 8.1 32-bit/64-bit All Lng PK Lic Online DwnLd NR\r\n', '', 'Microsoft', 3, 2699, 'Windows 8.1 — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.\r\nПолная электронная лицензия ESD на 1 пользователя\r\n', 6),
(35, 'Windows 8.1 Professional 64-bit Russian 1 License 1pk OEM DVD \r\n', '', 'Microsoft', 5, 3529, 'Windows 8.1 Professional 64-bit Russian — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.', 6),
(36, 'Windows LE 8.1 32-bit/64-bit All Lng PK Lic Online DwnLd NR\r\n', '', 'Microsoft', 3, 2699, 'Windows 8.1 — усовершенствованная и построенная на базе Windows 8. В центре внимания остаются приложения, они поддерживают новые способы взаимодействия с системой и дают пользователям более широкие возможности погружения в содержимое.\r\nПолная электронная лицензия ESD на 1 пользователя\r\n', 6),
(37, 'Windows 7 SP1 Professional 64-bit Russian 1pk OEM DVD \r\n', '', 'Microsoft', 4, 3455, 'Windows 7 Professional позволяет устранить преграды на пути к успеху. Windows 7 Профессиональная обеспечивает запуск многих программ для Windows XP в режиме Windows XP и быстро восстанавливает данные с помощью автоматических архиваций в домашней или корпоративной сети.\r\n', 6),
(38, 'Microsoft Windows 7 Home Premium Russian VUP DVD Family Pack BOX\r\n', '', 'Microsoft', 5, 3625, 'нимание! Данная коробка включает только лицензии на ОБНОВЛЕНИЕ с Windows Vista/Windows XP до Windows 7. Продукт не предназначен для легализации ОС или установки на новый ПК !\r\nСпециальное предложение для всей семьи: три лицензии Windows 7 Домашняя расширенная по привлекательной цене\r\n', 6),
(39, 'Windows 7 SP1 Professional 64-bit Russian 1pk OEM DVD \r\n', '', 'Microsoft', 4, 3455, 'Windows 7 Professional позволяет устранить преграды на пути к успеху. Windows 7 Профессиональная обеспечивает запуск многих программ для Windows XP в режиме Windows XP и быстро восстанавливает данные с помощью автоматических архиваций в домашней или корпоративной сети.\r\n', 6),
(40, 'Microsoft Windows 7 Home Premium Russian VUP DVD Family Pack BOX\r\n', '', 'Microsoft', 5, 3625, 'нимание! Данная коробка включает только лицензии на ОБНОВЛЕНИЕ с Windows Vista/Windows XP до Windows 7. Продукт не предназначен для легализации ОС или установки на новый ПК !\r\nСпециальное предложение для всей семьи: три лицензии Windows 7 Домашняя расширенная по привлекательной цене\r\n', 6),
(41, 'Microsoft Office 365 для дома 32/ 64 Russian Subscr 1YR Medialess BOX ', '', 'Microsoft', 56, 1399, '    Подписка 1 год\r\n·        5 пользователей х 3 устройства (PC/Mac+iPad+смартфон)\r\n·        Полный пакет программ Office\r\n·        1 ТБ хранилища OneDrive (каждый пользователь)\r\n·        60 мин. ежемесячных международных звонков Skype (1 пользователь)\r\nДля некоммерческого использования\r\n', 6),
(42, 'Microsoft Office для дома и бизнеса 2013 32/ 64 Russian \r\n', '', 'Microsoft', 43, 4839, 'В пакет входят следующие программы:\r\n\r\nMicrosoft Office Word 2013\r\nMicrosoft Office Excel 2013\r\nMicrosoft Office PowerPoint 2013\r\nMicrosoft Office Outlook 2013\r\nMicrosoft Office OneNote 2013\r\n\r\nОдна лицензия, допускается установка на 1 ПК.\r\n', 6),
(43, 'Microsoft Office 365 для дома 32/ 64 Russian Subscr 1YR Medialess BOX ', '', 'Microsoft', 56, 1399, '    Подписка 1 год\r\n·        5 пользователей х 3 устройства (PC/Mac+iPad+смартфон)\r\n·        Полный пакет программ Office\r\n·        1 ТБ хранилища OneDrive (каждый пользователь)\r\n·        60 мин. ежемесячных международных звонков Skype (1 пользователь)\r\nДля некоммерческого использования\r\n', 6),
(44, 'Microsoft Office для дома и бизнеса 2013 32/ 64 Russian \r\n', '', 'Microsoft', 43, 4839, 'В пакет входят следующие программы:\r\n\r\nMicrosoft Office Word 2013\r\nMicrosoft Office Excel 2013\r\nMicrosoft Office PowerPoint 2013\r\nMicrosoft Office Outlook 2013\r\nMicrosoft Office OneNote 2013\r\n\r\nОдна лицензия, допускается установка на 1 ПК.\r\n', 6),
(45, 'Panasonic KX-TG1711UAB Black', '', 'Panasonic', 54, 699, 'ип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный с голубой подсветкой\r\n', 7),
(46, 'Panasonic KX-TG2511UAT Titan', '', 'Panasonic', 65, 769, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая подсветка\r\n', 7),
(47, 'Panasonic KX-TG1711UAB Black', '', 'Panasonic', 54, 699, 'ип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный с голубой подсветкой\r\n', 7),
(48, 'Panasonic KX-TG2511UAT Titan', '', 'Panasonic', 65, 769, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая подсветка\r\n', 7),
(49, 'Panasonic KX-TG6461UAT Titan', '', 'Panasonic', 6, 2099, 'ип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: 20 мин\r\nЖК-дисплей: Монохромный, с подсветкой\r\n', 7),
(50, 'Gigaset A120 Black', '', 'Gigaset', 65, 559, 'ип трубки: Беспроводной\r\nОпределение номера: Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный с оранжевой ', 7),
(51, 'Panasonic KX-TG6461UAT Titan', '', 'Panasonic', 6, 2099, 'ип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: 20 мин\r\nЖК-дисплей: Монохромный, с подсветкой\r\n', 7),
(52, 'Gigaset A120 Black', '', 'Gigaset', 65, 559, 'ип трубки: Беспроводной\r\nОпределение номера: Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный с оранжевой ', 7),
(53, 'Panasonic KX-TG2511UAM Metallic\r\n', '', 'Panasonic', 7, 769, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая ', 7),
(54, 'Panasonic KX-TG2512UAT Titan', '', 'Panasonic', 5, 1199, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая ', 7),
(55, 'Panasonic KX-TG2511UAM Metallic\r\n', '', 'Panasonic', 7, 769, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая ', 7),
(56, 'Panasonic KX-TG2512UAT Titan', '', 'Panasonic', 5, 1199, 'Тип трубки: Беспроводной\r\nОпределение номера: АОН + Caller ID\r\nАвтоответчик: Нет\r\nЖК-дисплей: Монохромный, голубая ', 7),
(57, 'Heroes of the Storm (PC, Jewel, Русская версия)\r\n', '', 'Blizzard', 6, 459, 'Heroes of the Storm – потрясающе динамичная командная игра, в которой вы сможете встретить своих любимых персонажей из игр Blizzard. \r\nВыберите способности и облик героев и разработайте свою уникальную игровую тактику. Объединитесь с друзьями и примите участие в стремительных битвах.\r\nИ помните: от выбора поля боя будет напрямую зависеть стратегия и стиль игры!\r\n', 8),
(58, 'World of Warcraft: Warlords of Draenor ', '', 'Blizzard', 3, 599, 'Идет эра старой Орды, закаленной железом, а не кровью демонов. Тяжелая поступь союза великих орочьих кланов и грохота ужасающих боевых машин сотрясает Дренор. Скоро падет Азерот. А за ним – тысячи других миров…\r\n', NULL),
(59, 'Heroes of the Storm (PC, Jewel, Русская версия)\r\n', '', 'Blizzard', 6, 459, 'Heroes of the Storm – потрясающе динамичная командная игра, в которой вы сможете встретить своих любимых персонажей из игр Blizzard. \r\nВыберите способности и облик героев и разработайте свою уникальную игровую тактику. Объединитесь с друзьями и примите участие в стремительных битвах.\r\nИ помните: от выбора поля боя будет напрямую зависеть стратегия и стиль игры!\r\n', 8),
(60, 'World of Warcraft: Warlords of Draenor ', '', 'Blizzard', 3, 599, 'Идет эра старой Орды, закаленной железом, а не кровью демонов. Тяжелая поступь союза великих орочьих кланов и грохота ужасающих боевых машин сотрясает Дренор. Скоро падет Азерот. А за ним – тысячи других миров…\r\n', NULL),
(61, 'World of Warcraft: Карта оплаты игрового времени (60 дней) (русская версия)\r\n', '', 'Blizzard', 4, 399, 'Карта оплаты игрового времени позволяет продлить время игры на 60 дней.\r\n', 8),
(62, 'The Elder Scrolls Online (PC, английская версия)\r\n', '', 'Valve', 43, 799, 'первые за свою двадцатилетнюю историю знаменитая фэнтезийная ролевая игра The Elder Scrolls выходит в онлайн. Отправляйтесь в грандиозное путешествие в одиночку или вместе с друзьями, собратьями по гильдиям и тысячами союзников. К вашим услугам богатства Тамриэля, тайны Морровинда, необъятные каменные джунгли Даггерфолла и многое другое. Впишите свое имя на скрижали истории и вступайте в грандиозные битвы между игроками, ведь в них решается судьба целого мира.', 8),
(63, 'World of Warcraft: Карта оплаты игрового времени (60 дней) (русская версия)\n\n', '', 'Blizzard', 4, 399, 'Карта оплаты игрового времени позволяет продлить время игры на 60 дней.\r\n', 8),
(64, 'The Elder Scrolls Online (PC, английская версия)\r\n', '', 'Valve', 43, 799, 'первые за свою двадцатилетнюю историю знаменитая фэнтезийная ролевая игра The Elder Scrolls выходит в онлайн. Отправляйтесь в грандиозное путешествие в одиночку или вместе с друзьями, собратьями по гильдиям и тысячами союзников. К вашим услугам богатства Тамриэля, тайны Морровинда, необъятные каменные джунгли Даггерфолла и многое другое. Впишите свое имя на скрижали истории и вступайте в грандиозные битвы между игроками, ведь в них решается судьба целого мира.', 8),
(65, 'StarCraft II: Wings of Liberty (PC, Jewel, русская версия)', '', 'Blizzard', 54, 445, 'Продолжение эпической научно-фантастической саги о трех могущественных расах — протоссах, терранах и зергах — им предстоит снова сойтись в бою.', 8),
(66, 'tarCraft II: Heart of the Swarm (дополнение) (PC, Jewel, русская версия)', '', 'Blizzard', 34, 450, 'В Heart of the Swarm получает продолжение сюжетная линия StarCraft II: Wings of Liberty. Сара Керриган решила возродить Рой и отомстить Арктуру Менгску. На протяжении сюжетной кампании игрокам предстоит следовать за Керриган через всю галактику в поисках необычных разновидностей зергов, которые могут пополнить ее войско.', 8),
(67, 'StarCraft II: Wings of Liberty (PC, Jewel, русская версия)', '', 'Blizzard', 54, 445, 'Продолжение эпической научно-фантастической саги о трех могущественных расах — протоссах, терранах и зергах — им предстоит снова сойтись в бою.', 8),
(68, 'tarCraft II: Heart of the Swarm (дополнение) (PC, Jewel, русская версия)', '', 'Blizzard', 34, 450, 'В Heart of the Swarm получает продолжение сюжетная линия StarCraft II: Wings of Liberty. Сара Керриган решила возродить Рой и отомстить Арктуру Менгску. На протяжении сюжетной кампании игрокам предстоит следовать за Керриган через всю галактику в поисках необычных разновидностей зергов, которые могут пополнить ее войско.', 8),
(69, 'Canon PowerShot SX400 IS Black \r\n', '', 'Canon', 43, 3699, 'Матрица 1/2.3", 16 Мп / Зум: 30х (оптический), 4х (цифровой) / поддержка карт памяти SD, SDHC, SDXC / LCD-дисплей 3" / HD-видео / питание от литий-ионнного аккумулятора / 104.4 x 69.1 x 80.1 мм, 313 г / черный', 9),
(70, 'Canon EOS 700D 18-55mm DC III ', '', 'Canon', 32, 11999, 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55DC III / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\r\n', 9),
(71, 'Canon PowerShot SX400 IS Black \r\n', '', 'Canon', 43, 3699, 'Матрица 1/2.3", 16 Мп / Зум: 30х (оптический), 4х (цифровой) / поддержка карт памяти SD, SDHC, SDXC / LCD-дисплей 3" / HD-видео / питание от литий-ионнного аккумулятора / 104.4 x 69.1 x 80.1 мм, 313 г / черный', 9),
(72, 'Canon EOS 700D 18-55mm DC III ', '', 'Canon', 32, 11999, 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55DC III / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\r\n', 9),
(73, 'Canon EOS 700D 18-55mm STM ', '', 'Canon', 4, 14799, 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55 IS STM / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\r\n', 9),
(74, 'Sony Alpha 6000 Kit 16-50mm Black', '', 'Sony', 7, 1749, 'Матрица 23.5 x 15.6 мм, 24.3 Мп / Объектив Sony E PZ 16-50 mm F3.5-5.6 OSS / поддержка карт памяти MS PRO Duo/MS PRO-HG Duo/MS XC-HG Duo/SD/SDHC/SDXC / наклонный ЖК-дисплей 3" / Full HD-видео / Wi-Fi / NFC / питание от литий-ионного аккумулятора / 120 x 75 x 66.9 мм, 460 г / черный\r\n', 9),
(75, 'Canon EOS 700D 18-55mm STM ', '', 'Canon', 4, 14799, 'атрица 22.3 x 14.9 мм, 18 Мп / объектив 18-55 IS STM / поддержка карт памяти SD/SDHC/SDXC / Сенсорный ЖК-экран с переменным углом наклона Clear View II TFT 3" / FullHD-видео / питание от литий-ионного аккумулятора / 133.1 x 99.8 x 154.0 мм, 785 г\r\n', 9),
(76, 'Sony Alpha 6000 Kit 16-50mm Black', '', 'Sony', 7, 1749, 'Матрица 23.5 x 15.6 мм, 24.3 Мп / Объектив Sony E PZ 16-50 mm F3.5-5.6 OSS / поддержка карт памяти MS PRO Duo/MS PRO-HG Duo/MS XC-HG Duo/SD/SDHC/SDXC / наклонный ЖК-дисплей 3" / Full HD-видео / Wi-Fi / NFC / питание от литий-ионного аккумулятора / 120 x 75 x 66.9 мм, 460 г / черный\r\n', 9),
(77, 'LG 32LB582V ', '', 'LG', 3, 9299, 'иагональ экрана: 32"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(78, 'LG 22LB491U', '', 'LG', 43, 5499, 'Диагональ экрана: 22"\r\nРазрешение: 1366x768\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(79, 'LG 32LB582V ', '', 'LG', 3, 9299, 'иагональ экрана: 32"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(80, 'LG 22LB491U', '', 'LG', 43, 5499, 'Диагональ экрана: 22"\r\nРазрешение: 1366x768\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\n\nWi-Fi: Да\r\n', 10),
(81, 'LG 42LB582V', '', 'LG', 5, 12499, 'Диагональ экрана: 42"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2, DVB-T\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(82, 'LG 47LB720V ', '', 'LG', 9, 20499, 'Диагональ экрана: 47"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 200 Гц\r\nЧастота обновления: 800 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(83, 'LG 42LB582V', '', 'LG', 5, 12499, 'Диагональ экрана: 42"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2, DVB-T\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(84, 'LG 47LB720V ', '', 'LG', 9, 20499, 'Диагональ экрана: 47"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота развертки панели: 200 Гц\r\nЧастота обновления: 800 Гц (MCI)\r\nWi-Fi: Да\r\n', 10),
(85, 'Samsung UE40J5590 + KinoTV D', '', 'Samsung', 5, 14999, 'Диагональ экрана: 40"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота обновления: 100 Гц (CMR)\r\nWi-Fi: Да\r\n', 10),
(86, 'Samsung UE48H5500 + Жесткий диск Transcend 1TB в подарок!\r\n', '', 'Samsung', 4, 16899, 'Диагональ экрана: 48"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (CMR)\r\nWi-Fi: Да\r\n', 10),
(87, 'Samsung UE40J5590 + KinoTV D', '', 'Samsung', 5, 14999, 'Диагональ экрана: 40"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-S2, DVB-C, DVB-T2\r\nЧастота обновления: 100 Гц (CMR)\r\nWi-Fi: Да\r\n', 10),
(88, 'Samsung UE48H5500 + Жесткий диск Transcend 1TB в подарок!\r\n', '', 'Samsung', 4, 16899, 'Диагональ экрана: 48"\r\nРазрешение: 1920x1080\r\nПоддержка Smart TV: Есть\r\nДиапазоны цифрового тюнера: DVB-C, DVB-T2\r\nЧастота развертки панели: 50 Гц\r\nЧастота обновления: 100 Гц (CMR)\r\nWi-Fi: Да\r\n', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `role` enum('0','1','2') NOT NULL,
  `reg_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `birthday`, `email`, `password`, `is_active`, `role`, `reg_date`, `last_update`) VALUES
(1, 'Евгений', 'Васильцов', '1990-04-19', 'eugenevasilsov@gmail.com', '12345', '1', '0', '1998-08-12', '2015-08-19'),
(2, 'Николай', 'Криворучко', '1987-01-03', 'krivoruchko@gmail.com', '12345', '1', '0', '2015-05-13', '2015-08-19'),
(3, 'Ирина', 'Криворучко', '2000-03-11', 'irina-krivorucko', '12345', '1', '0', '1980-06-04', '2015-08-19'),
(4, 'Ирма', 'Киркорова', '1993-05-18', 'irma-kirkorova@mail.ru', '12345', '1', '0', '2015-04-23', '2015-08-19'),
(5, 'Евгений', 'Анегин', '1920-04-18', 'eugen-anegin', '12345', '1', '0', '2015-06-24', '2015-08-19'),
(6, 'Георигий ', 'Жуков', '2001-08-26', 'georgiy-djukov', '12345', '1', '0', '2014-11-19', '2015-08-19'),
(7, 'Барака', 'Обама', '1945-09-11', 'baraka-obama@icloud.com', '12345', '1', '0', '2014-05-19', '2015-08-19'),
(8, 'Владимир', 'Путин', '1950-03-12', 'vladimir-putin@mail.ru', '12345', '1', '0', '2014-12-18', '2015-08-19'),
(9, 'Джейд', 'Псаки', '1982-08-04', 'djeid-psaki@icloud.com', '12345', '1', '0', '2015-03-27', '2015-08-19'),
(10, 'Дмитрий', 'Медведев', '1970-03-12', 'dmitriy-medvedev@yandex.ru', '12345', '1', '0', '2015-07-21', '2015-08-19'),
(11, 'Николай', 'Валуев', '1975-08-12', 'nikolay-valuev@mail.ru', '12345', '1', '0', '2015-07-15', '2015-08-19'),
(12, 'Владимир', 'Жириновкий', '1950-08-04', 'vladimir-jirinovskiy@mail.ru', '12345', '1', '0', '2015-07-15', '2015-08-19'),
(13, 'Борис', 'Ельцин', '1942-08-18', 'boris-elicin@icloud.com', '12345', '1', '0', '2014-12-23', '2015-08-19'),
(14, 'Алексей', 'Дурнев', '1980-08-31', 'alex-durnev', '12345', '1', '0', '2015-08-18', '2015-08-19'),
(15, 'Даша', 'Ши', '1980-08-10', 'dasha-shi@gmail.com', '12345', '1', '0', '2015-05-21', '2015-08-12'),
(16, 'Иван', 'Петров', '2000-08-10', 'ivan-petrov.gmail.com', '12345', '1', '0', '2015-07-22', '2015-08-19'),
(17, 'Виктор', 'Шнур', '1965-08-18', 'victor-shnur@mail.ru', '', '1', '0', '2015-08-11', '2015-08-19'),
(18, 'Артас', 'Менитил', '1795-08-18', 'artas-menitil@gmail.com', '12345', '1', '0', '2015-06-23', '2015-08-19'),
(19, 'Адольф', 'Гитлер', '1920-08-18', 'adolf-gitler@icloud.com', '12345', '1', '0', '2015-05-12', '2015-08-19'),
(20, 'Иван', 'Дорн', '1981-08-10', 'ivan-dorn@gmail.com', '12345', '1', '0', '2015-04-23', '2015-08-19'),
(21, 'Макс', 'Барских', '1976-08-11', 'max-barskiy@yandex.ru', '12345', '1', '0', '2015-05-18', '2015-08-18'),
(22, 'Ольга', 'Полякова', '1975-08-17', 'olga-polyakova@mail.ru', '12345', '1', '0', '2015-08-02', '2015-08-19'),
(23, 'Кристиан', 'Рональдо', '1985-08-03', 'kristian-ronaldo', '12345', '1', '0', '2015-06-17', '2015-08-25'),
(24, 'Владимир', 'Кличко', '1976-07-21', 'vladimir-klichko@gmail.com', '12345', '1', '0', '2015-08-02', '2015-08-19'),
(25, 'Арсений', 'Яцунюк', '1969-07-13', 'arseniy-yacenuk@gmai.com', '12345', '1', '0', '2015-06-23', '2015-08-26'),
(26, 'Виталий ', 'Кличко', '1975-08-18', 'vitaliy-klichko@gmail.com', '12345', '1', '0', '2015-07-21', '2015-08-26'),
(27, 'Алла', 'Пугачева', '1950-08-10', 'alla-pugacheva@mail.ru', '12345', '1', '0', '2015-06-23', '2015-08-26'),
(28, 'Сергей', 'Безруков', '1976-08-18', 'sergey-bezrukov@mail.ru', '12345', '1', '0', '2015-05-13', '2015-08-19'),
(29, 'Джодж', 'Буш', '1962-05-12', 'joege-bush@icloud.com', '12345', '1', '0', '2015-08-24', '2015-08-26'),
(30, 'Сергей', 'Зверев', '1985-08-10', 'sergey-zverev@yandex.ru', '12345', '1', '0', '2015-08-02', '2015-08-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `order_property`
--
ALTER TABLE `order_property`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_catalog` (`id_catalog`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_property`
--
ALTER TABLE `order_property`
  ADD CONSTRAINT `order_property_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_property_ibfk_2` FOREIGN KEY (`id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_catalog`) REFERENCES `category_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
