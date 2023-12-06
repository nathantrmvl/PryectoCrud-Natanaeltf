<?php
include 'conexion.php';

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$stock = isset($_POST['stock']) ? $_POST['stock'] : "";
$precio = isset($_POST['precio']) ? $_POST['precio'] : "";
$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : "";

$sql = "INSERT INTO inventario (nombre, stock, precio, descripcion) VALUES ('$nombre', '$stock', '$precio', '$descripcion')";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id; 
    header("Location: inventarioform.php?mensaje=enviado");
        exit;
} else {
    echo "Error al guardar los datos: " . $conn->error;
}

header("Location: http://localhost/Crud/Inventario/inventarioform.php?mensaje=enviado");
exit();

$conn->close();
?>
