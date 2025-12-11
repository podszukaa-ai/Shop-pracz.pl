-- Struktura bazy danych do projektu

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
