-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 08. čec 2022, 18:17
-- Verze serveru: 10.4.24-MariaDB
-- Verze PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `involve`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `teamName` text NOT NULL,
  `zavodnik1` text NOT NULL,
  `zavodnik2` text NOT NULL,
  `zavodnik3` text NOT NULL,
  `spolujezdec1` text NOT NULL,
  `spolujezdec2` text NOT NULL,
  `spolujezdec3` text NOT NULL,
  `technik1` text NOT NULL,
  `technik2` text NOT NULL,
  `manazer` text NOT NULL,
  `fotograf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `teams`
--

INSERT INTO `teams` (`id`, `teamName`, `zavodnik1`, `zavodnik2`, `zavodnik3`, `spolujezdec1`, `spolujezdec2`, `spolujezdec3`, `technik1`, `technik2`, `manazer`, `fotograf`) VALUES
(1, 'Aimtec', 'Josef Poula', 'David Paulík', 'Karel Novák', 'Lucie Novotná', 'Michal Pospíšil', 'Miroslava Hesová', 'Mirek Nový', 'Filip Ctibůrek', 'Mikuláš Pešek', 'Mirek Nokia'),
(2, 'New', 'Adam Rádl', 'Ida Novák', 'Prokop Novák', 'Jan Malý', 'Rudolf Jelínek', 'Martin Dvořák', 'Václav Šmolík', 'David Malý', 'Karel Dek', 'Milan Švejda'),
(3, 'Test', 'Test', 'Test', '', 'Test', '', 'Test', 'Test', '', 'Test', 'Test');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `jmeno` text NOT NULL,
  `prijmeni` text NOT NULL,
  `typ` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `jmeno`, `prijmeni`, `typ`) VALUES
(1, 'Jonáš', 'Prchal', 'zavodnik'),
(2, 'Karel', 'Novotný', 'zavodnik'),
(3, 'Martin', 'Malý', 'zavodnik'),
(4, 'Milan', 'Paulík', 'zavodnik'),
(5, 'František', 'Rasplička', 'zavodnik'),
(6, 'Vladimír', 'Kocourek', 'zavodnik'),
(7, 'Michal', 'Spišak', 'technik'),
(8, 'David', 'Paulík', 'technik'),
(9, 'Tomáš', 'Novotný', 'technik'),
(10, 'Jan', 'Kozohorský', 'technik'),
(11, 'Patrik', 'Zítek', 'manazer'),
(12, 'Jaroslav', 'Kula', 'manazer'),
(13, 'David', 'Přibyl', 'manazer'),
(14, 'Jan', 'Černý', 'spolujezdec'),
(15, 'Dominik', 'Brož', 'spolujezdec'),
(16, 'Lukáš', 'Kůs', 'spolujezdec'),
(17, 'Lukáš', 'Salák', 'spolujezdec'),
(18, 'Tomáš', 'Janda', 'fotograf'),
(19, 'Václav', 'Šmolík', 'fotograf'),
(20, 'David', 'Vomáčka', 'fotograf');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
