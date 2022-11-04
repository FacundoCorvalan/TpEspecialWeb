<?php
require_once './app/model/discosModel.php';
require_once './app/view/discosView.php';
require_once './app/helpers/auth.helper.php';

class discosController{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new discosModel();
        $this->view = new discosView();
    }

    //Las funciones que solo maneja el admin estan restringidas por un check login que verifica si se inicio sesion

    public function getDiscos(){//listado de discos
        $discos = $this->model->getListDiscos();
        $this->view->showDiscos($discos);
    }

    public function getDiscoPorArtista($id){//listado de discos por artista
        session_start();
        $disco = $this->model->getDiscoByArtista($id);
        $this->view->showDiscoDeArtista($disco);
    }




    public function getDetalleDisco($id){//vista individual de cada disco
        session_start();
        $disco = $this->model->getDetalleDisco($id);
        $this->view->showDetalleDisco($disco);
    }

        
    public function addDiscos(){//insertar discos
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();//solo el admin puede insertar nuevos discos
        $disco = $_POST['disco'];
        $autores = $_POST['autores'];
        $fecha_publicacion = $_POST['fecha_publicacion'];
        $info_discos= $_POST['info_discos'];
        $artista_selec = $_POST['id_artista'];

        if(!empty($disco)&&!empty($autores)&&!empty($fecha_publicacion)&&!empty($info_discos)&&!empty($artista_selec)){
            $id = $this->model->addDisco($disco,$autores,$fecha_publicacion,$info_discos,$artista_selec);
            header("Location: " . BASE_URL . "listarDiscos");
        }else{
            header("Location: " . BASE_URL . "listarDiscos");
        }
    }

    public function updateDisco($id){//modificar disco por id
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $disco = $_POST['disco'];
        $autores = $_POST['autores'];
        $fecha_publicacion = $_POST['fecha_publicacion'];
        $artista_selec = $_POST['id_artista'];
        $info_discos= $_POST['info_discos'];

        if(!empty($disco)&&!empty($autores)&&!empty($fecha_publicacion)&&!empty($info_discos)&&!empty($artista_selec)){
            $this->model->updateDiscoById($disco,$autores,$fecha_publicacion,$artista_selec,$info_discos,$id);
            header("Location: " . BASE_URL . "listarDiscos");
        }else{
            
        }
    }

    public function deleteDisco($id){
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $this->model->deleteDiscoById($id);
        header("Location: " . BASE_URL . "listarDiscos");
  
    }
}