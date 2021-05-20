<?php

include"conexion.php";

class producto extends conexion {
    public function registrar($lista){
        $sql = "INSERT INTO producto VALUES (null,
                                            '".$lista["nombre"]."',
                                            '".$lista["cantidad"]."',
                                            '".$lista["precio"]."',
                                            '".$lista["imagen"]."')";
        $result = parent::query($sql);
        parent::cerrar();
        return $result;
    }
    
    public function mostrar() {
        $sql = "SELECT * FROM producto";
        $result = parent::query($sql);
        $lista = parent::arrayAssoc($result);
        parent::freeResult($result);
        parent::cerrar();
        return $lista;
    }
    
    public function buscar($id) {
        $sql = "SELECT * FROM producto where id = '$id'";
        $result = parent::query($sql);
        $lista = parent::arrayAssoc($result);
        parent::freeResult($result);
        parent::cerrar();
        return $lista;
    }

    public function buscarImagen($id) {
        $sql = "SELECT imagen FROM producto where id = '$id'";
        $result = parent::query($sql);
        $imagen = parent::array($result);
        parent::freeResult($result);
        parent::cerrar();
        return $imagen['imagen'];
    }
    
    public function editar($lista){
        $sql = "UPDATE producto SET nombre = '".$lista["nombre"]."',
                                    cantidad = '".$lista["cantidad"]."',
                                    precio = '".$lista["precio"]."',
                                    imagen = '".$lista["imagen"]."'
                                    WHERE id = '".$lista["id"]."'";
        $result = parent::query($sql);
        parent::cerrar();
        return $result;
    }

    public function eliminar($id) {
        $sql = "DELETE FROM producto where id = '$id'";
        $result = parent::query($sql);
        parent::cerrar();
        return $result;
    }
}