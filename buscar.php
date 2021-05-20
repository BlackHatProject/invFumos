<?php

include"producto.php";

$buscar = $_POST['id'];

$p = new producto();

$mostrar = $p->buscar($buscar);
$lista = array();
foreach ($mostrar as $datos) {
    $lista = array(
        "id" => $datos['id'],
        "nombre" => $datos['nombre'],
        "cantidad" => $datos['cantidad'],
        "precio" => $datos['precio'],
    );
}

echo json_encode($lista);