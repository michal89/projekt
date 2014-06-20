-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Cze 2014, 16:23
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE IF NOT EXISTS `adresy` (
  `Id_czytelnika` int(11) NOT NULL AUTO_INCREMENT,
  `Kod` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Miasto` text CHARACTER SET utf8 NOT NULL,
  `Ulica` text CHARACTER SET utf8 NOT NULL,
  `Telefon` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Id_czytelnika`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `adresy`
--

INSERT INTO `adresy` (`Id_czytelnika`, `Kod`, `Miasto`, `Ulica`, `Telefon`) VALUES
(1, '41-943', 'Piekary Śląskie', 'Wyzwolenia 34', '598-567-789'),
(2, '41-878', 'Bytom', 'Dworcowa 45', '345-678-435'),
(3, '34-789', 'Warszawa', 'Marszałkowska 34', '567-543-678'),
(4, '67-876', 'Katowice', 'Wigóry 45', '678-890-656'),
(5, '56-765', 'Żabie doły', 'Ogrodowa 45', '764-87-98');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE IF NOT EXISTS `czytelnicy` (
  `Id_czytelnika` int(11) NOT NULL AUTO_INCREMENT,
  `Nazwisko` varchar(30) NOT NULL,
  `Imie` text NOT NULL,
  `DataUrodzenia` date NOT NULL,
  `MiejsceUr` text NOT NULL,
  PRIMARY KEY (`Id_czytelnika`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `czytelnicy`
--

INSERT INTO `czytelnicy` (`Id_czytelnika`, `Nazwisko`, `Imie`, `DataUrodzenia`, `MiejsceUr`) VALUES
(1, 'Kot', 'Michał', '1989-05-09', 'Piekary Śląskie'),
(2, 'Kozioł', 'Marek', '1988-11-11', 'Bytom'),
(3, 'Paweł', 'Paweł', '1991-05-23', 'Warszawa'),
(4, 'Kowalski', 'Jan', '1987-06-23', 'Katowice'),
(5, 'Kurek', 'Krzysztof', '1990-12-24', 'Żabie doły');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE IF NOT EXISTS `ksiazki` (
  `Id_ksiazki` int(11) NOT NULL DEFAULT '0',
  `tytuł` text NOT NULL,
  `autor` text NOT NULL,
  `kategoria` text NOT NULL,
  `wydawca` text NOT NULL,
  `rok` text NOT NULL,
  PRIMARY KEY (`Id_ksiazki`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`Id_ksiazki`, `tytuł`, `autor`, `kategoria`, `wydawca`, `rok`) VALUES
(1, 'Jaś i Małgosia', 'Małgorzata Krawczyk', 'Bajki', 'Nowa Era', '1978'),
(2, 'Harry Potter Saga', 'J.K Rowling', 'Fantasy', 'Zamkor', '2001'),
(3, 'Świat według klarksona', 'Jeremy Clarkson', 'Motoryzacja', 'Insignis', '2004'),
(4, 'Kod Leonarda da vinci', 'Dan Brown', 'Nauka', 'A.Kurłowicz', '2007'),
(5, 'Igrzyska Śmierci', 'Suzanne Colins', 'Dla młodzieży ', 'Media Rodzina', '2012'),
(6, 'Zmierzch', 'Stepheni Meyer', 'fantasy', 'wydawnictwo dolnośląskie', '2010');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypożyczenia`
--

CREATE TABLE IF NOT EXISTS `wypożyczenia` (
  `Id_czytelnika` int(11) NOT NULL AUTO_INCREMENT,
  `DataWyp` date NOT NULL,
  `DataZwrotu` date NOT NULL,
  PRIMARY KEY (`Id_czytelnika`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `wypożyczenia`
--

INSERT INTO `wypożyczenia` (`Id_czytelnika`, `DataWyp`, `DataZwrotu`) VALUES
(1, '2014-05-09', '2014-06-30'),
(2, '2014-04-06', '2014-05-30'),
(3, '2014-03-08', '2014-04-08'),
(4, '2013-06-25', '2013-07-26'),
(5, '2012-05-29', '2012-06-23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
