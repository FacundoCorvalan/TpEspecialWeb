<?php
require_once './app/model/artistasModel.php';
require_once './app/view/artistasView.php';
require_once './app/helpers/auth.helper.php';

class artistasController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new artistasModel();
        $this->view = new artistasView();
    }

    public function getArtistas()
    {
        /* Comenzando una sesión. */
        session_start();
        $artistas = $this->model->getListArtistas();
        $this->view->showArtistas($artistas);
    }

    public function getInfoArtista($id){
        $datoArtista = $this->model->getInfoArtista($id);
        $this->view->showArtista($datoArtista);
    }
   

    public function addArtistas(){//Funcion para agregar artistas
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();//solo el admin puede agregar datos, por lo que se verifica si esta loggeado
        if (!empty($_POST['artista']) && !empty($_POST['nacimiento']) && !empty($_POST['nacionalidad']) && !empty($_POST['info'])) {
            $nombre_artista = $_POST['artista'];
            $fecha_nacimiento = $_POST['nacimiento'];
            $nacionalidad  = $_POST['nacionalidad'];
            $info = $_POST['info'];

            $this->model->addArtista($nombre_artista, $fecha_nacimiento, $nacionalidad, $info);
            header("Location: " . BASE_URL);
            
        }
        else {
            header("Location: " . BASE_URL);
        }
    }

    public function getIdsByDisco(){//Funcion utilizada  para el formulario de alta este
        session_start();
        $datos_disco = $this->model->artistaJoinDisco();
        $this->view->getIdArtistas($datos_disco);
    }

    public function formEditar($id){//Funcion utilizada  para el formulario de modificar, obtiene el id del artista para asi poder utilizarlo en el select
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $datos_disco = $this->model->artistaJoinDisco();
        $this->view->formModifyDiscos($datos_disco,$id);

    }

    public function formEditarArtista($id){//Formulario para editar artistas
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $datosArtistas = $this->model->getListArtistas();
        $this->view->formModifyArtistas($datosArtistas,$id);
    }

    public function updateArtista($id){//trae los datos del formulario de edicion de artistas y modifica la tabla de bbdd
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $nombre_artista = $_POST['artista'];
        $fecha_nacimiento = $_POST['nacimiento'];
        $nacionalidad  = $_POST['nacionalidad'];
        $info = $_POST['info'];
        if(!empty($nombre_artista)&&!empty($fecha_nacimiento)&&!empty($nacionalidad)&&!empty($info)&&!empty($id)){
            $this->model->updateArtistaById($nombre_artista,$fecha_nacimiento,$nacionalidad,$info,$id);
            header("Location: " . BASE_URL);
            
        }
    }


    public function eliminarArtista($id){//a partir de un id elimina un artista
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $this->model->deleteArtista($id);
        header("Location: " . BASE_URL);

    }



    
}
