-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Okt 07. 20:13
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kisprojekt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) DEFAULT NULL,
  `loginnev` varchar(100) DEFAULT NULL,
  `jelszo` varchar(255) DEFAULT NULL,
  `szerepkor` varchar(20) DEFAULT NULL,
  `auto` tinyint(1) DEFAULT 0,
  `pc` tinyint(1) DEFAULT 0,
  `mobil` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `reg`
--

INSERT INTO `reg` (`id`, `nev`, `loginnev`, `jelszo`, `szerepkor`, `auto`, `pc`, `mobil`, `email`) VALUES
(3, 'Kika Pál', 'kikapal123', 'Kikapal123', 'felhasznalo', 1, 1, '+367012312312', 'kika@gmail.com');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
