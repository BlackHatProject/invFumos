<?php

class conexion {
    private $host = "localhost";
    private $user = "root";
    private $pass = "";
    private $db = "inventario";
    
    public function conectar(){
        return $con = mysqli_connect($this->host ,$this->user ,$this->pass ,$this->db);
    }
    
    public function query($sql){
        return $query = mysqli_query($this->conectar(), $sql);
    }
    
    public function arrayAssoc($result){
        return mysqli_fetch_all($result, MYSQLI_ASSOC);
    }

    public function array($result){
        return mysqli_fetch_array($result, MYSQLI_ASSOC);
    }
    
    public function freeResult($result){
        return mysqli_free_result($result);
    }
    
    public function cerrar() {
        return $cer = mysqli_close($this->conectar());
    }
}