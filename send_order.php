<?php
include "main.php";


$imie = $_POST['imie'];
$nazwisko = $_POST['nazwisko'];
$email = $_POST['email'];
$telefon = $_POST['telefon'] ?? '';
$miasto = $_POST['miasto'] ?? '';
$kod = $_POST['kod_pocztowy'] ?? '';
$adres = $_POST['adres'] ?? '';


$cart = json_decode($_POST['cart'], true);


$suma = 0;
foreach ($cart as $item) {
  $suma += $item['cena'] * $item['ilosc'];
}


$stmt = $conn->prepare("
  INSERT INTO zamowienia 
  (imie, nazwisko, email, telefon, miasto, kod_pocztowy, adres)
  VALUES (?, ?, ?, ?, ?, ?, ?)
");

$stmt->bind_param(
  "sssssss",
  $imie,
  $nazwisko,
  $email,
  $telefon,
  $miasto,
  $kod,
  $adres
);

$stmt->execute();

$zamowienie_id = $conn->insert_id;


$stmt2 = $conn->prepare("
  INSERT INTO zamowienia_produkty
  (zamowienie_id, produkt_id, nazwa, cena, suma, ilosc)
  VALUES (?, ?, ?, ?, ?, ?)
");

foreach ($cart as $item) {
  $stmt2->bind_param(
    "iisddi",
    $zamowienie_id,
    $item['id'],
    $item['nazwa'],
    $item['cena'],
    $suma,
    $item['ilosc']
  );
  $stmt2->execute();
}

echo "OK";
