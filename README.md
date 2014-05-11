projekt SAIU
=======
Folder content - tam pakujemy css i js;
Folder models - wszelkie klasy reprezentujace informacje z bazy danych badz na niej operujace;
Folder process - logika przetwarzajaca dane m.in get/post z formularzy html, niekoniecznie obiektowo;
Do aplikacji polecam serwer XAMPP.

Ponizej struktura tymczasowej bazy danych:


=======
struktura bazy danych:
=======


-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `author_surname` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`, `author_surname`) VALUES
(1, 'Andrzej', 'Sapkowski'),
(2, 'Henryk', 'Sienkiewicz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `book_author` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `book_author`) VALUES
(1, 'Krew elfów', 1),
(2, 'Pani jeziora', 1),
(3, 'Pan Wołodyjowski', 2);
