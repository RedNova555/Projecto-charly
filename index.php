<?php
require("./conexion.php");

$sql = "SELECT * FROM usuarios";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <a href="./create.php">Crear usuario</a>
    <table>
        <thead>
            <th>ID</th>
            <th>Nombre</th>
            <th>Correo</th>
            <th>Acciones</th>
        </thead>
        <tbody>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <tr>
                    <td><?php echo $row["id"] ?></td>
                    <td><?php echo $row["name"] ?></td>
                    <td><?php echo $row["email"] ?></td>
                    <td>
                        <a href="./edit.php?id=<?php echo $row["id"] ?>">Modificar</a>
                        <a href="./delite_action.php?id=<?php echo $row["id"] ?>">Eliminar</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</body>

</html>