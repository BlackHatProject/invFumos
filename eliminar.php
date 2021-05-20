<?php

include"producto.php";

$id = $_POST['id'];

$carpeta = "img/productos/";

$p = new producto();

$remplazarImagen = $p->buscarImagen($id);

if ($remplazarImagen != "") {
    unlink($carpeta.$remplazarImagen);
}

if ($p->eliminar($id)) {
    echo "Datos Eliminados";
}
else {
    echo "Error al Eliminar los datos";
}