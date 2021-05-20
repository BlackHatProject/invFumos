<?php

include"producto.php";

$p = new producto();

$mostrar = $p->mostrar();
$lista = array();
foreach ($mostrar as $datos) {
    $lista[] = array(
        "id" => $datos['id'],
        "nombre" => $datos['nombre'],
        "cantidad" => $datos['cantidad'],
        "precio" => $datos['precio'],
        "imagen" => $datos['imagen']
    );
}

echo json_encode($lista);