<?php

include"producto.php";

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$cantidad = $_POST['cantidad'];
$precio = $_POST['precio'];
$imagen = $_FILES['imagen']['name'];

$carpeta = "img/productos/";

$datos = array(
    "id" => $id,
    "nombre" => $nombre,
    "cantidad" => $cantidad,
    "precio" => $precio,
    "imagen" => $imagen
);

$p = new producto();

$remplazarImagen = $p->buscarImagen($id);

if ($remplazarImagen != "") {
    unlink($carpeta.$remplazarImagen);
}

if(!is_dir($carpeta)){
    mkdir($carpeta);
}

move_uploaded_file($_FILES['imagen']['tmp_name'], $carpeta.$imagen);

if ($p->editar($datos)) {
    echo "Datos Actualizado";
}
else {
    echo "Error al Actualizar los datos";
}
 