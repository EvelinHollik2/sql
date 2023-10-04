-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Okt 19. 12:02
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `join_alap`
--
CREATE DATABASE IF NOT EXISTS `join_alap` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `join_alap`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t1`
--

CREATE TABLE `t1` (
  `num` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `t1`
--

INSERT INTO `t1` (`num`) VALUES
(1),
(4),
(5),
(6),
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t2`
--

CREATE TABLE `t2` (
  `num` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `t2`
--

INSERT INTO `t2` (`num`) VALUES
(2),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t3`
--

CREATE TABLE `t3` (
  `num` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `t3`
--

INSERT INTO `t3` (`num`) VALUES
(3),
(5),
(6),
(7),
(9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
