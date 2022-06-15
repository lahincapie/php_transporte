<?php

require_once "../model/Connection.php";


$id = $_POST['id'];
$placa = $_POST['placa'];
$marca = $_POST['marca'];
$tipo = $_POST['tipo'];
$conductor = $_POST['conductor'];
$propietario = $_POST['propietario'];
$color = $_POST['color'];


$post_vehiculo = $pdo -> prepare(
    "INSERT INTO vehiculo(
        placa,
        marca,
        tipo,
        conductor,
        propietario
        color,
    ) VALUES (
        :placa,
        :marca,
        :tipo,
        :conductor,
        :propietario
        :color,
    )");

$post_vehiculo -> bindParam(':placa', $placa);
$post_vehiculo -> bindParam(':marca', $marca);
$post_vehiculo -> bindParam(':tipo', $tipo);
$post_vehiculo -> bindParam(':conductor', $conductor);
$post_vehiculo -> bindParam(':propietario', $propietario);
$post_vehiculo -> bindParam(':color', $color);

?>