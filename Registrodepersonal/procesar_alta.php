<?php
include 'conexion.php';

$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : "";
$numero = isset($_POST['numero']) ? $_POST['numero'] : "";
$correo = isset($_POST['correo']) ? $_POST['correo'] : "";
$localidad = isset($_POST['localidad']) ? $_POST['localidad'] : "";
$estado = isset($_POST['estado']) ? $_POST['estado'] : "";
$codigo = isset($_POST['codigo']) ? $_POST['codigo'] : "";

$sql = "INSERT INTO altapersonal (nombre, numero, correo, localidad, estado, codigo) VALUES ('$nombre', '$numero', '$correo', '$localidad','$estado','$codigo')";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id; 
    header("Location: altapersonal.php?mensaje=enviado");
    exit;
} else {
echo "Error al guardar los datos: " . $conn->error;
}

header("Location: altapersonal.php?mensaje=enviado");
exit();

$conn->close();
?>
   