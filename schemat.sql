-- Tworzenie tabeli produkty
CREATE TABLE produkty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(100) NOT NULL,
    cena DECIMAL(10,2) NOT NULL,
    opis TEXT,
    obrazek VARCHAR(255) NOT NULL
);

-- Tworzenie tabeli zamowienia
CREATE TABLE zamowienia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produkt_id INT NOT NULL,
    ilosc INT NOT NULL,
    data_zamowienia DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produkt_id) REFERENCES produkty(id)
);

-- Dodanie produktów
INSERT INTO produkty (nazwa, cena, opis, obrazek) VALUES
('Mop obrotowy', 149.99, 'Mop do mycia podłóg', 'mop-obrotowy-easy-wring-amp-clean-turbo-vil-151153,eceedhb,dgf,dgf.jpg'),
('Odkurzacz bezprzewodowy', 799.00, 'Odkurzacz do sprzątania domu', 'pol_il_Bezprzewodowy-odkurzacz-pionowy-Dreame-Z20-Station-48403_13.jpg'),
('Zestaw środków czystości', 89.50, 'Komplet środków do sprzątania', 'plyn_przciwkurzu.jpg'),
('Ściereczki z mikrofibry', 29.90, 'Ściereczki do czyszczenia różnych powierzchni', 'scierki_mikrofibra.jpg'),
('Miotła z szufelką', 39.99, 'Zestaw do zamiatania podłóg', 'MIOTLA-Z-SZUFELKA-LOPATKA-ZESTAW-Z-TRZONEM-Marka-bez-marki.jpg'),

('Proszek do prania', 34.99, 'Uniwersalny proszek do prania', 'proszek_do_prania.jpg'),
('Kapsułki do prania', 42.99, 'Kapsułki do prania tkanin', 'kapsulki_do_prania.jpg'),
('Płyn do płukania', 19.99, 'Płyn do płukania tkanin', 'plyn_plukanie.jpg'),
('Kosz na pranie', 59.99, 'Kosz na pranie bielizny', 'kosz-ariel-na-pranie-bielizne-2000-pleciony (2).jpg'),
('Golarka do ubrań', 49.99, 'Golarka do usuwania zmechaceń', 'Golarka-do-ubran-HandyLine-Green_4.jpg'),

('Zapach samochodowy', 14.99, 'Zapach do wnętrza samochodu', 'zapach-samochodowy.jpg'),
('Środek do czyszczenia wnętrza auta', 29.99, 'Preparat do czyszczenia wnętrza auta', 'PR_Sonax_Plyn_do_wnetrza.jpg'),
('Wąska szczotka do czyszczenia', 12.99, 'Szczotka do fug i zakamarków', 'Szczotka-Waska-do-Czyszczenia-Fug-Zakamarkow-Szczelin.jpg'),
('Preparat do opon', 27.99, 'Preparat do nabłyszczania opon', 'Plyn-do-nablyszczania-opon-Czarna-Opona-520ml-srodek-preparat-spray.jpg'),
('Ściereczki samochodowe', 21.99, 'Ściereczki do czyszczenia auta', 'scierka-samochodowa-autoblysk-3-szt-54279.jpg'),

('Cleaner płyn do elektroniki', 24.99, 'Środek do czyszczenia elektroniki', 'uniwersalny-srodek-czyszczacy-do-elektroniki-cleaner-200ml-cramolin.jpg'),
('Sprężone powietrze w sprayu', 18.99, 'Sprężone powietrze do elektroniki', 'PR_Bioline_Sprezone_powietrze.jpg'),
('Antystatyczna ściereczka', 9.99, 'Ściereczka antystatyczna', 'antistastic_scierka.jpg'),
('Mały pędzel do czyszczenia', 7.99, 'Pędzel do precyzyjnego czyszczenia', 'maly_pedzel.jpg'),
('Alkohol izopropylowy', 22.99, 'Alkohol IPA 500 ml', 'alkohol-ipa-izopropanol-500ml.jpg');

//DROP TABLE IF EXISTS zamowienia;
DROP TABLE IF EXISTS produkty;

CREATE TABLE produkty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(100) NOT NULL,
    cena DECIMAL(10,2) NOT NULL,
    opis TEXT,
    obrazek LONGBLOB NOT NULL
);

CREATE TABLE zamowienia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produkt_id INT NOT NULL,
    ilosc INT NOT NULL,
    data_zamowienia DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produkt_id) REFERENCES produkty(id)
);

INSERT INTO produkty (nazwa, cena, opis, obrazek) VALUES
('Mop obrotowy', 149.99, 'Mop do mycia podłóg',
 LOAD_FILE('/var/lib/mysql-files/mop-obrotowy-easy-wring-amp-clean-turbo-vil-151153,eceedhb,dgf,dgf.jpg')),

('Odkurzacz bezprzewodowy', 799.00, 'Odkurzacz do sprzątania domu',
 LOAD_FILE('/var/lib/mysql-files/pol_il_Bezprzewodowy-odkurzacz-pionowy-Dreame-Z20-Station-48403_13.jpg')),

('Zestaw środków czystości', 89.50, 'Komplet środków do sprzątania',
 LOAD_FILE('/var/lib/mysql-files/plyn_przciwkurzu.jpg')),

('Ściereczki z mikrofibry', 29.90, 'Ściereczki do czyszczenia',
 LOAD_FILE('/var/lib/mysql-files/scierki_mikrofibra.jpg')),

('Miotła z szufelką', 39.99, 'Zestaw do zamiatania',
 LOAD_FILE('/var/lib/mysql-files/MIOTLA-Z-SZUFELKA-LOPATKA-ZESTAW-Z-TRZONEM-Marka-bez-marki.jpg')),

('Proszek do prania', 34.99, 'Uniwersalny proszek do prania',
 LOAD_FILE('/var/lib/mysql-files/proszek_do_prania.jpg')),

('Kapsułki do prania', 42.99, 'Kapsułki do prania',
 LOAD_FILE('/var/lib/mysql-files/kapsulki_do_prania.jpg')),

('Płyn do płukania', 19.99, 'Płyn do płukania',
 LOAD_FILE('/var/lib/mysql-files/plyn_plukanie.jpg')),

('Kosz na pranie', 59.99, 'Kosz na pranie',
 LOAD_FILE('/var/lib/mysql-files/kosz-ariel-na-pranie-bielizne-2000-pleciony (2).jpg')),

('Golarka do ubrań', 49.99, 'Golarka do ubrań',
 LOAD_FILE('/var/lib/mysql-files/Golarka-do-ubran-HandyLine-Green_4.jpg')),

('Zapach samochodowy', 14.99, 'Zapach do samochodu',
 LOAD_FILE('/var/lib/mysql-files/zapach-samochodowy.jpg')),

('Środek do czyszczenia wnętrza auta', 29.99, 'Czyszczenie wnętrza auta',
 LOAD_FILE('/var/lib/mysql-files/PR_Sonax_Plyn_do_wnetrza.jpg')),

('Wąska szczotka do czyszczenia', 12.99, 'Szczotka do fug',
 LOAD_FILE('/var/lib/mysql-files/Szczotka-Waska-do-Czyszczenia-Fug-Zakamarkow-Szczelin.jpg')),

('Preparat do opon', 27.99, 'Preparat do opon',
 LOAD_FILE('/var/lib/mysql-files/Plyn-do-nablyszczania-opon-Czarna-Opona-520ml-srodek-preparat-spray.jpg')),

('Ściereczki samochodowe', 21.99, 'Ściereczki samochodowe',
 LOAD_FILE('/var/lib/mysql-files/scierka-samochodowa-autoblysk-3-szt-54279.jpg')),

('Cleaner płyn do elektroniki', 24.99, 'Cleaner do elektroniki',
 LOAD_FILE('/var/lib/mysql-files/uniwersalny-srodek-czyszczacy-do-elektroniki-cleaner-200ml-cramolin.jpg')),

('Sprężone powietrze w sprayu', 18.99, 'Sprężone powietrze',
 LOAD_FILE('/var/lib/mysql-files/PR_Bioline_Sprezone_powietrze.jpg')),

('Antystatyczna ściereczka', 9.99, 'Ściereczka antystatyczna',
 LOAD_FILE('/var/lib/mysql-files/antistastic_scierka.jpg')),

('Mały pędzel do czyszczenia', 7.99, 'Mały pędzel',
 LOAD_FILE('/var/lib/mysql-files/maly_pedzel.jpg')),

('Alkohol izopropylowy', 22.99, 'Alkohol IPA',
 LOAD_FILE('/var/lib/mysql-files/alkohol-ipa-izopropanol-500ml.jpg'));

