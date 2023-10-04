-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jún 17. 14:53
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tagdij`
--
CREATE DATABASE IF NOT EXISTS `tagdij` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tagdij`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `befiz`
--

DROP TABLE IF EXISTS `befiz`;
CREATE TABLE `befiz` (
  `azon` int(4) DEFAULT NULL COMMENT 'az ügyfél azonosítója',
  `datum` datetime DEFAULT NULL COMMENT 'a befizetés dátuma és pontos időpontja',
  `osszeg` int(5) DEFAULT NULL COMMENT 'a befizetés összege'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `befiz`
--

INSERT INTO `befiz` (`azon`, `datum`, `osszeg`) VALUES
(1001, '2022-11-30 23:23:03', 46100),
(1005, '2022-12-12 08:18:35', 7500),
(1009, '2022-12-20 07:33:12', 7000),
(1002, '2022-12-22 01:17:22', 59600),
(1007, '2023-01-08 04:38:21', 47200),
(1001, '2023-01-08 13:26:07', 18000),
(1002, '2023-01-08 14:27:58', 58500),
(1010, '2023-01-14 17:34:06', 19000),
(1006, '2023-01-28 08:22:43', 9000),
(1009, '2023-02-01 04:24:08', 8500),
(1003, '2023-02-03 08:50:30', 11000),
(1010, '2023-02-04 02:18:39', 14000),
(1001, '2023-02-10 15:31:09', 42400),
(1003, '2023-02-15 13:57:24', 37300),
(1009, '2023-02-16 19:31:40', 32400),
(1009, '2023-02-22 13:54:16', 24000),
(1005, '2023-02-26 11:13:09', 20000),
(1010, '2023-02-26 15:31:53', 52400),
(1007, '2023-02-26 16:45:01', 52400),
(1006, '2023-03-22 16:37:41', 6000),
(1006, '2023-04-01 20:19:12', 58800),
(1013, '2023-04-03 03:40:24', 19600),
(1013, '2023-04-09 04:28:01', 21900),
(1012, '2023-04-09 04:51:57', 18000),
(1009, '2023-04-16 07:10:50', 60000),
(1009, '2023-04-23 17:08:06', 6100),
(1005, '2023-04-25 21:05:24', 15000),
(1013, '2023-05-02 20:25:45', 52800),
(1002, '2023-05-04 02:29:01', 30000),
(1003, '2023-05-05 11:56:00', 5000),
(1007, '2023-05-08 18:04:41', 33900),
(1012, '2023-05-14 16:16:08', 20000),
(1012, '2023-05-31 07:06:45', 12000),
(1012, '2023-06-03 20:11:54', 17000),
(1009, '2023-06-14 04:52:22', 10000),
(1009, '2023-06-16 12:16:58', 5500),
(1001, '2023-06-23 22:58:07', 55300),
(1005, '2023-07-03 17:45:04', 12000),
(1009, '2023-07-04 18:49:29', 8000),
(1013, '2023-07-22 17:04:21', 15000),
(1002, '2023-08-04 14:01:03', 26500),
(1005, '2023-08-06 19:14:42', 4000),
(1013, '2023-08-13 22:43:26', 27400),
(1013, '2023-08-15 04:57:02', 59900),
(1005, '2023-08-17 07:13:52', 9300),
(1002, '2023-08-17 12:58:51', 41000),
(1013, '2023-08-19 10:33:28', 16100),
(1006, '2023-08-21 12:07:24', 41200),
(1002, '2023-08-28 10:42:34', 5000),
(1010, '2023-08-29 22:19:15', 8000),
(1002, '2023-08-31 00:28:41', 15300),
(1007, '2023-09-03 15:17:45', 57000),
(1010, '2023-09-07 22:38:54', 32900),
(1002, '2023-09-16 08:13:48', 45500),
(1005, '2023-09-22 12:10:29', 32100),
(1001, '2023-10-02 01:26:40', 39800),
(1010, '2023-10-13 10:57:39', 3000),
(1003, '2023-10-14 04:36:12', 31200),
(1003, '2023-10-19 22:51:16', 25000),
(1003, '2023-11-04 23:25:01', 40900),
(1006, '2023-11-10 06:35:49', 42200),
(1006, '2023-11-11 01:20:19', 10000),
(1013, '2023-11-20 09:16:55', 4000),
(1006, '2023-11-23 09:42:12', 49000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ugyfel`
--

DROP TABLE IF EXISTS `ugyfel`;
CREATE TABLE `ugyfel` (
  `azon` int(4) NOT NULL COMMENT 'az ügyfél azonosítója',
  `nev` varchar(12) DEFAULT NULL COMMENT 'az ügyfél neve',
  `szulev` int(4) DEFAULT NULL COMMENT 'az ügyfél születési évszáma',
  `irszam` int(4) DEFAULT NULL COMMENT 'az ügyfél lakhelyének irányítószáma',
  `orsz` varchar(2) DEFAULT NULL COMMENT 'az ügyfél országának kódja'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `ugyfel`
--

INSERT INTO `ugyfel` (`azon`, `nev`, `szulev`, `irszam`, `orsz`) VALUES
(1001, 'Buda Jenő', 1982, 1026, 'H'),
(1002, 'Makkos Mária', 1970, 1128, 'H'),
(1003, 'Pilis Csaba', 1992, 2442, 'H'),
(1004, 'Török Bálint', 1988, 2128, 'H'),
(1005, 'Szent Endre', 1962, 2000, 'H'),
(1006, 'Kis Marton', 1991, 9999, 'A'),
(1007, 'Békés Csaba', 1989, 4400, 'H'),
(1009, 'Dráva Szabol', 1985, 7520, 'H'),
(1010, 'Nagy Károly', 1975, 9999, 'RO'),
(1012, 'Boros Jenő', 1982, 9999, 'RO'),
(1013, 'Száva Magdol', 1987, 9999, 'HR');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `befiz`
--
ALTER TABLE `befiz`
  ADD KEY `fk_befiz_ugyfel` (`azon`);

--
-- A tábla indexei `ugyfel`
--
ALTER TABLE `ugyfel`
  ADD PRIMARY KEY (`azon`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `befiz`
--
ALTER TABLE `befiz`
  ADD CONSTRAINT `fk_befiz_ugyfel` FOREIGN KEY (`azon`) REFERENCES `ugyfel` (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
