<?php
$host = "localhost";
$user = "root";
$pass = "root";
$db = "shop";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Błąd połączenia z bazą: " . $conn->connect_error);
}

?>
