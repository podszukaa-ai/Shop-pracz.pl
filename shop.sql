-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 15, 2026 at 12:02 AM
-- Wersja serwera: 8.0.40
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `opis` text,
  `obrazek` varchar(255) NOT NULL,
  `kategoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `cena`, `opis`, `obrazek`, `kategoria`) VALUES
(1, 'Mop obrotowy', 149.99, 'Mop do mycia podłóg', 'mop-obrotowy-easy-wring-amp-clean-turbo-vil-151153,eceedhb,dgf,dgf.jpg', 'dom'),
(2, 'Odkurzacz bezprzewodowy', 799.00, 'Odkurzacz do sprzątania domu', 'pol_il_Bezprzewodowy-odkurzacz-pionowy-Dreame-Z20-Station-48403_13.jpg', 'dom'),
(3, 'Zestaw środków czystości', 89.50, 'Komplet środków do sprzątania', 'plyn_przciwkurzu.jpg', 'dom'),
(4, 'Ściereczki z mikrofibry', 29.90, 'Ściereczki do czyszczenia różnych powierzchni', 'scierki_mikrofibra.jpg', 'dom'),
(5, 'Miotła z szufelką', 39.99, 'Zestaw do zamiatania podłóg', 'MIOTLA-Z-SZUFELKA-LOPATKA-ZESTAW-Z-TRZONEM-Marka-bez-marki.jpg', 'dom'),
(6, 'Proszek do prania', 34.99, 'Uniwersalny proszek do prania', 'proszek_do_prania.jpg', 'odziez'),
(7, 'Kapsułki do prania', 42.99, 'Kapsułki do prania tkanin', 'kapsulki_do_prania.jpg', 'odziez'),
(8, 'Płyn do płukania', 19.99, 'Płyn do płukania tkanin', 'plyn_plukanie.jpg', 'odziez'),
(9, 'Kosz na pranie', 59.99, 'Kosz na pranie bielizny', 'kosz-ariel-na-pranie-bielizne-2000-pleciony (2).jpg', 'odziez'),
(10, 'Golarka do ubrań', 49.99, 'Golarka do usuwania zmechaceń', 'Golarka-do-ubran-HandyLine-Green_4.jpg', 'odziez'),
(11, 'Zapach samochodowy', 14.99, 'Zapach do wnętrza samochodu', 'zapach-samochodowy.jpg', 'samochod'),
(12, 'Środek do czyszczenia wnętrza auta', 29.99, 'Preparat do czyszczenia wnętrza auta', 'PR_Sonax_Plyn_do_wnetrza.jpg', 'samochod'),
(13, 'Wąska szczotka do czyszczenia', 12.99, 'Szczotka do fug i zakamarków', 'Szczotka-Waska-do-Czyszczenia-Fug-Zakamarkow-Szczelin.jpg', 'samochod'),
(14, 'Preparat do opon', 27.99, 'Preparat do nabłyszczania opon', 'Plyn-do-nablyszczania-opon-Czarna-Opona-520ml-srodek-preparat-spray.jpg', 'samochod'),
(15, 'Ściereczki samochodowe', 21.99, 'Ściereczki do czyszczenia auta', 'scierka-samochodowa-autoblysk-3-szt-54279.jpg', 'samochod'),
(16, 'Cleaner płyn do elektroniki', 24.99, 'Środek do czyszczenia elektroniki', 'uniwersalny-srodek-czyszczacy-do-elektroniki-cleaner-200ml-cramolin.jpg', 'elektronika'),
(17, 'Sprężone powietrze w sprayu', 18.99, 'Sprężone powietrze do elektroniki', 'PR_Bioline_Sprezone_powietrze.jpg', 'elektronika'),
(18, 'Antystatyczna ściereczka', 9.99, 'Ściereczka antystatyczna', 'antistastic_scierka.jpg', 'elektronika'),
(19, 'Mały pędzel do czyszczenia', 7.99, 'Pędzel do precyzyjnego czyszczenia', 'maly_pedzel.jpg', 'elektronika'),
(20, 'Alkohol izopropylowy', 22.99, 'Alkohol IPA 500 ml', 'alkohol-ipa-izopropanol-500ml.jpg', 'elektronika');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int NOT NULL,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `miasto` varchar(100) DEFAULT NULL,
  `kod_pocztowy` varchar(10) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `data_zamowienia` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
