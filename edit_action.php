<?php
require("./conexion.php");

print_r($_POST);

$nombre = $_POST["nombre"];
$correo = $_POST["correo"];
$contraseña = $_POST["contraseña"];
$id = $_POST["id"];

$squl = "UPDATE usuarios SET name = '$nombre', email = '$correo', pasword = '$contraseña' where id = $id";

$conn->query($squl);

header("Location: ./index.php");
?>