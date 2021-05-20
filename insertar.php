<?php

include"producto.php";

$nombre = $_POST['nombre'];
$cantidad = $_POST['cantidad'];
$precio = $_POST['precio'];
$imagen = $_FILES['imagen']['name'];

$carpeta = "img/productos/";

if(!is_dir($carpeta)){
    mkdir($carpeta);
}

move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$imagen);



$datos = array(
    "nombre" => $nombre,
    "cantidad" => $cantidad,
    "precio" => $precio,
    "imagen" => $imagen
);

//echo json_encode($datos);

$p = new producto();

if ($p->registrar($datos)) {
    echo "Guardado con exito";
}
else {
    echo "Error al enviar los datos";
}
