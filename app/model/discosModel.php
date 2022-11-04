<?php
//nombre_disco | autores | fecha_publicacion | id_artista | descripcion
class discosModel{
    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_artistas;charset=utf8', 'root', '');
    }

    public function getListDiscos(){
        //echo "Listado de ítems:Se debe poder visualizar todos los items cargados</br>";
        $query = $this->db->prepare("SELECT * FROM discos");
        $query->execute();
        $discos = $query->fetchAll(PDO::FETCH_OBJ);
        return $discos;
    }


    public function getDiscoByArtista($id){
        //echo "Listado de ítems x categoría: Se debe poder visualizar los ítems perteneciente a una categoría seleccionada</br>";
        $query = $this->db->prepare("SELECT a.nombre_artista,b.* FROM artistas a INNER JOIN discos b ON a.id = b.id_artista WHERE id_artista = ?");
        $query->execute([$id]);
        $disco = $query->fetchAll(PDO::FETCH_OBJ);
        return $disco;
    }


    public function getDetalleDisco($id){//info individual de cada disco
        $query = $this->db->prepare("SELECT * FROM discos WHERE id = ?");
        $query->execute([$id]);
        $detalleDisco = $query->fetchAll(PDO::FETCH_OBJ);
        return $detalleDisco;
    }

    public function addDisco($disco,$autores,$fecha_publicacion,$info_discos,$artista_selec){//insertar disco nuevo
        $query = $this->db->prepare("INSERT INTO discos (nombre_disco,autores,fecha_publicacion,descripcion,id_artista)VALUES(?,?,?,?,?)");
        $query->execute([$disco,$autores,$fecha_publicacion,$info_discos,$artista_selec]);
        return $this->db->lastInsertId();
    }

    public function updateDiscoById($disco,$autores,$fecha_publicacion,$artista_selec,$info_discos,$id){//modificar disco
        $query = $this->db->prepare("UPDATE discos SET nombre_disco=?,autores=?,fecha_publicacion=?,id_artista=?,descripcion=? WHERE discos.id=?");
        $query->execute([$disco,$autores,$fecha_publicacion,$artista_selec,$info_discos,$id]);
    }
   
    
    public function deleteDiscoById($id){
        $query = $this->db->prepare("DELETE FROM discos WHERE discos.id = ?");
        $query->execute([$id]);
    }
}
