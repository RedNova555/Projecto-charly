<?php
require("./conexion.php");

$id = $_GET["id"];

$squl = "DELETE FROM `usuarios` where id = $id";

$conn->query($squl);

header("Location: ./index.php");
?>