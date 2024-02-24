<?php
// Configuración de la cabecera para indicar que la respuesta es de tipo JSON
header('Content-Type: application/json');

// Datos a devolver
$data = array(
    'mensaje' => '¡Hola desde PHP nube!'
);

// Convierte los datos a formato JSON y los imprime
echo json_encode($data);
?>
