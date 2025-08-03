<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="./index.php">Regresar</a>

    <form action="./create_action.php" method="post">
        <label for="name">Nombre:</label>
        <input type="text" name="nombre" id="name">
        <br>
        <label for="email">Correo:</label>
        <input type="email" name="correo" id="email">
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" name="contraseña" id="password">
        <br>
        <button type="submit">Crear</button>
    </form>

</body>
</html>