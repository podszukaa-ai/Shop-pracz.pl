<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "projekt_shop";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Błąd połączenia z bazą: " . $conn->connect_error);
}

echo "Połączono z bazą danych!";
?>
