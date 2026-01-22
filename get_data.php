<?php
include "main.php";

$kategoria = $_GET['kategoria'] ?? '';

$stmt = $conn->prepare(
  "SELECT * FROM produkty WHERE kategoria = ?"
);
$stmt->bind_param("s", $kategoria);
$stmt->execute();

$result = $stmt->get_result();
$users = [];

while ($row = $result->fetch_assoc()) {
  $produkty[] = $row;
}

echo json_encode($produkty);
