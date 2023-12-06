<?php
include 'conexion.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];


    $sql = "DELETE FROM inventario WHERE id_articulos = $id";

    if ($conn->query($sql) === TRUE) {
        $message = "Registro eliminado satisfactoriamente.";
        header("Location: inventarioform.php?mensaje=" . urlencode($message));
        exit();
    } else {
        $message = "Error al eliminar el registro: " . $conn->error;
        header("Location: inventarioform.php?mensaje=" . urlencode($message));
        exit();
    }
}

$conn->close();
?>
