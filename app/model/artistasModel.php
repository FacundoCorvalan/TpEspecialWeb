<?php
class artistasModel{
    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_artistas;charset=utf8', 'root', '');
    }

    public function getListArtistas(){
        //Listado de categorías: Se debe poder visualizar un listado con todas las categorías cargadas
        $query = $this->db->prepare("SELECT * FROM artistas");
        $query->execute();
        $artistas = $query->fetchAll(PDO::FETCH_OBJ);
        return $artistas;
    }

    
    public function addArtista($nombre_artista,$fecha_nacimiento,$nacionalidad,$info){
        //insertar un nuevo artista a partir del formulario
        $query = $this->db->prepare("INSERT INTO artistas (nombre_artista, fecha_nacimiento, nacionalidad, informacion) VALUES(?,?,?,?)");
        $query->execute([$nombre_artista,$fecha_nacimiento,$nacionalidad,$info]);
        return $this->db->lastInsertId();
    }

    public function artistaJoinDisco(){
        //trae los id y el nombre para poder pasarlos al select del formulario
        $query = $this->db->prepare("SELECT id,nombre_artista FROM artistas");
        $query->execute();
        $datosCompletos = $query->fetchAll(PDO::FETCH_OBJ);
        return $datosCompletos;
        
    }

    public function getInfoArtista($id){
        //Obtengo la informacion individual de cada artista para mostrarla junto con sus discos
        $query = $this->db->prepare("SELECT * FROM db_artistas.artistas WHERE id = ?");
        $query->execute([$id]);
        $datoArtista = $query->fetch(PDO::FETCH_OBJ);
        return $datoArtista;
    }

    public function updateArtistaById($nombre_artista,$fecha_nacimiento,$nacionalidad,$info,$id){
        //Modifica la informacion de la bbdd a partir de un formulario y un id especifico
        $query = $this->db->prepare("UPDATE artistas SET nombre_artista=?, fecha_nacimiento=?, nacionalidad=?,informacion=? WHERE artistas.id = ?");
        $query->execute([$nombre_artista,$fecha_nacimiento,$nacionalidad,$info,$id]);
    }

    public function deleteArtista($id){

        $query = $this->db->prepare("DELETE FROM artistas WHERE artistas.id = ?");
        $query->execute([$id]);
    }
        
    
}