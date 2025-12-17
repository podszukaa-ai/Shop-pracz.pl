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

-- Dodanie produktów z kategorii "dom"

INSERT INTO produkty (nazwa, cena, opis) VALUES
('Czajnik elektryczny', 129.99, 'Produkt z kategorii dom – czajnik elektryczny'),
('Odkurzacz bezprzewodowy', 799.00, 'Produkt z kategorii dom – odkurzacz'),
('Zestaw garnków', 349.50, 'Produkt z kategorii dom – komplet garnków'),
('Lampka nocna', 89.90, 'Produkt z kategorii dom – lampka do sypialni'),
('Deska do prasowania', 159.00, 'Produkt z kategorii dom – deska do prasowania');
