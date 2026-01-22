<?php
include "main.php"; 

$stmt = $conn->prepare("
  INSERT INTO zamowienia
  (imie, nazwisko, email, telefon, miasto, kod_pocztowy, adres)
  VALUES (?, ?, ?, ?, ?, ?, ?)
");

$stmt->bind_param(
  "sssssss",
  $_POST['imie'],
  $_POST['nazwisko'],
  $_POST['email'],
  $_POST['telefon'],
  $_POST['miasto'],
  $_POST['kod_pocztowy'],
  $_POST['adres']
);

$stmt->execute();

echo "OK";
