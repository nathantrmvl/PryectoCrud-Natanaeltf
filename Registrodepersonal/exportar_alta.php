<?php
include 'conexion.php';
$sql = "SELECT * FROM altapersonal ORDER BY id_empleado DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    $archivo = "altas.txt";

    $file = fopen($archivo, "w");


    fwrite($file, "ID\tNombre\tTelefono\tCorreo\tLocalidad\tEstado\tCodigo Postal\n");


    while ($row = $result->fetch_assoc()) {
        $linea = $row["id_empleado"] . "\t" . $row["nombre"] . "\t" . $row["numero"] . "\t" . $row["correo"] . "\t" . $row["localidad"] . "\t" . $row["estado"] . "\t".$row["codigo"] . "\n";
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
