<?php

$kapcsolat = new mysqli("localhost", "root", "", "kisprojekt");

if ($kapcsolat->connect_error) {
    die("Nem sikerült csatlakozni az adatbázishoz!");
}

$nev = $_POST["nev"];
$loginnev = $_POST["loginnev"];
$jelszo = $_POST["jelszo"];
$szerepkor = $_POST["szerepkor"];
$auto = $_POST["auto"];
$pc = $_POST["pc"];
$mobil = $_POST["mobil"];
$email = $_POST["email"];

$sql = $kapcsolat->prepare(
    "INSERT INTO reg (nev, loginnev, jelszo, szerepkor, auto, pc, mobil, email)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
);

$sql->bind_param(
    "ssssiiss",
    $nev,
    $loginnev,
    $jelszo,
    $szerepkor,
    $auto,
    $pc,
    $mobil,
    $email
);

$sql->execute();

echo "Sikeres regisztráció!";

$kapcsolat->close();

?>