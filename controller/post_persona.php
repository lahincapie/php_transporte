<?php

require_once "../model/Connection.php";


$numero_cedula = $_POST['numero_cedula'];
$primer_nombre = $_POST['primer_nombre'];
$segundo_nombre = $_POST['segundo_nombre'];
$apellido = $_POST['apellido'];
$direccion = $_POST['direccion'];
$telefono = $_POST['telefono'];
$ciudad = $_POST['ciudad'];


$post_persona = $pdo -> prepare(
    "INSERT INTO propietario(
        numero_cedula,
        primer_nombre,
        segundo_nombre,
        apellido,
        direccion,
        telefono,
        ciudad
    ) VALUES(
        :numero_cedula,
        :primer_nombre,
        :segundo_nombre,
        :apellido,
        :direccion,
        :telefono,
        :ciudad
    )");

$post_persona -> bindParam(':numero_cedula', $numero_cedula);
$post_persona -> bindParam(':primer_nombre', $primer_nombre);
$post_persona -> bindParam(':segundo_nombre', $segundo_nombre);
$post_persona -> bindParam(':apellidos', $apellidos);
$post_persona -> bindParam(':direccion', $direccion);
$post_persona -> bindParam(':telefono', $telefono);
$post_persona -> bindParam(':ciudad', $ciudad);

?>
