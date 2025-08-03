<?php
require("./conexion.php");

print_r($_POST);

$nombre = $_POST["nombre"];
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];

$squl = "INSERT INTO usuarios(name, email, pasword) VALUES ('$nombre', '$correo', '$contraseña')";

$conn->query($squl);

header("Location: ./index.php");
?>