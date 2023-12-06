<?php

include 'conexion.php';
$sql = "SELECT * FROM inventario ORDER BY id_articulos DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    $archivo = "inventario.txt";

    $file = fopen($archivo, "w");


    fwrite($file, "ID\tNombre del articulo\tStock\tUnidad\tDescripción\n");


    while ($row = $result->fetch_assoc()) {
        $linea = $row["id_articulos"] . "\t" . $row["nombre"] . "\t" . $row["stock"] . "\t" . $row["precio"] . "\t" . $row["descripcion"] . "\n";
        fwrite($file, $linea);
    }

    fclose($file);

    header("Content-Disposition: attachment; filename=\"" . $archivo . "\"");
    header("Content-Type: application/octet-stream");
    header("Content-Length: " . filesize($archivo));
    readfile($archivo);

    unlink($archivo);
} else {
    echo "No se encontraron registros en la base de datos.";
}

$conn->close();
?>
