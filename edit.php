<?php
require("./conexion.php");

$id = $_GET['id'];
echo "ID: " . $id . "<br>";

$sql = "SELECT * FROM usuarios WHERE id = $id";
$result = $conn->query($sql);

$row = $result->fetch_assoc();
print_r($row);
echo "<br>";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <a href="./index.php">Regresar</a>

    <form action="./edit_action.php" method="post">
        <label for="name">Nombre:</label>
        <input type="text" name="nombre" id="name" value="<?php echo $row['name']; ?>">
        <br>
        <label for="email">Correo:</label>
        <input type="email" name="correo" id="email" value="<?php echo $row['email']; ?>">
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" name="contraseña" id="password">
        <br>
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <button type="submit">Modificar</button>
    </form>

</body>

</html>