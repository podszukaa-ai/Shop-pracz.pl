-- Tworzenie tabel

CREATE TABLE produkty (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(100) NOT NULL,
    cena DECIMAL(10,2) NOT NULL,
    opis TEXT
);

CREATE TABLE zamowienia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produkt_id INT NOT NULL,
    ilosc INT NOT NULL,
    data_zamowienia DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produkt_id) REFERENCES produkty(id)
);

-- Dodanie produktów

INSERT INTO produkty (nazwa, cena, opis) VALUES
('Mop obrotowy', 149.99, 'Mop do mycia podłóg'),
('Odkurzacz bezprzewodowy', 799.00, 'Odkurzacz do sprzątania domu'),
('Zestaw środków czystości', 89.50, 'Komplet środków do sprzątania'),
('Ściereczki z mikrofibry', 29.90, 'Ściereczki do czyszczenia różnych powierzchni'),
('Miotła z szufelką', 39.99, 'Zestaw do zamiatania podłóg');
