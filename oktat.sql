-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 29. 18:51
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
-- Adatbázis: `oktat`
--
CREATE DATABASE IF NOT EXISTS `oktat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oktat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dept`
--

DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `dept`
--

INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `EMPNO` decimal(4,0) NOT NULL COMMENT 'dolgozó kódja',
  `ENAME` varchar(10) DEFAULT NULL COMMENT 'dolgozó neve',
  `JOB` varchar(9) DEFAULT NULL COMMENT 'beosztás, munkakör',
  `MGR` decimal(4,0) DEFAULT NULL COMMENT 'közvetlen főnök kódja',
  `HIREDATE` date DEFAULT NULL COMMENT 'belépés dátuma',
  `SAL` decimal(7,2) DEFAULT NULL COMMENT 'fizetés USD-ben',
  `COMM` decimal(7,2) DEFAULT NULL COMMENT 'jutalék USD-ben',
  `DEPTNO` int(11) NOT NULL COMMENT 'részleg, csoport',
  PRIMARY KEY (`EMPNO`),
  KEY `FK_emp_dept_DEPTNO` (`DEPTNO`),
  KEY `fk_fonok` (`MGR`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1170 DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `emp`
--

INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
('7369', 'SMITH', 'CLERK', '7902', '1980-12-17', '800.00', NULL, 20),
('7499', 'ALLEN', 'SALESMAN', '7698', '1981-02-20', '1600.00', '300.00', 30),
('7521', 'WARD', 'SALESMAN', '7698', '1981-02-22', '1250.00', '500.00', 30),
('7566', 'JONES', 'MANAGER', '7839', '1981-04-02', '2975.00', NULL, 20),
('7654', 'MARTIN', 'SALESMAN', '7698', '1981-09-28', '1250.00', '1400.00', 30),
('7698', 'BLAKE', 'MANAGER', '7839', '1981-05-11', '2850.00', NULL, 30),
('7782', 'CLARK', 'MANAGER', '7839', '1981-06-09', '2450.00', NULL, 10),
('7788', 'SCOTT', 'ANALYST', '7566', '1982-12-09', '3000.00', NULL, 20),
('7839', 'KING', 'PRESIDENT', NULL, '1981-11-17', '5000.00', NULL, 10),
('7844', 'TURNER', 'SALESMAN', '7698', '1981-09-08', '1500.00', '0.00', 30),
('7876', 'ADAMS', 'CLERK', '7788', '1983-01-12', '1100.00', NULL, 20),
('7900', 'JAMES', 'CLERK', '7698', '1981-12-03', '950.00', NULL, 30),
('7902', 'FORD', 'ANALYST', '7566', '1981-12-03', '3000.00', NULL, 20),
('7934', 'MILLER', 'CLERK', '7782', '1982-01-23', '1300.00', NULL, 10);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `fk_fonok` FOREIGN KEY (`MGR`) REFERENCES `emp` (`EMPNO`),
  ADD CONSTRAINT `fk_reszleg` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
