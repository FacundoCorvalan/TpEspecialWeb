<?php
require_once './app/model/user.model.php';
require_once './app/view/user.view.php';
require_once './app/helpers/auth.helper.php';

class UserController {
    private $view;
    private $model;
    
    public function __construct() {
        $this->model = new UserModel();
        $this->view = new UserView();

        // barrera de seguridad
        $authHelper = new AuthHelper();
        //$authHelper->checkLoggedIn();
    }
    
    public function showPrueba(){
        session_start();
        $this->view->traerHtml();
    }

    public function editar(){
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
        $this->view->editarForm();
    }

}