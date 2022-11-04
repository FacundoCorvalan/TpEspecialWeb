<?php
require_once './app/controller/artistasController.php';
require_once './app/controller/discosController.php';
require_once './app/controller/auth.controller.php';
require_once './app/controller/user.controller.php';   
define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'listarArtistas'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la accion Ej: dev/juan --> ['dev', juan]
$params = explode('/', $action);

// instancio el unico controller que existe por ahora



// tabla de ruteo
switch ($params[0]) {
    case 'login':
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser();
        break;

    case 'logout':
        $authController = new AuthController();
        $authController->logout();
        break;


    case 'listarArtistas'://Listado de categorías
        $artistaController = new artistasController();
        $artistaController->getArtistas();
        break;

    case 'discosArtista'://Listado de ítems x categoría:
        // obtengo el parametro de la acción
        $artistaController = new artistasController();
        $discosController = new discosController();

        $id = $params[1];
        $discosController->getDiscoPorArtista($id);//para mostrar sus discos
        $artistaController->getInfoArtista($id);//para mostrar su info individual de cada artista
    break;

    case 'listarDiscos'://Listado de ítems:
        $artistaController = new artistasController();
        $discosController = new discosController();

        $artistaController->getIdsByDisco();//formulario para discos
        $discosController->getDiscos();
    break;

    case 'detalleDisco'://Detalle del item
        $id = $params[1];
        $discosController = new discosController();

        $discosController -> getDetalleDisco($id);
       

        break;
    case 'addArtista':
        $artistaController = new artistasController();
        $artistaController->addArtistas();
        break;
    case 'formularioDeEdicionArtista':
        $artistaController = new artistasController();
        $id = $params[1];
        $artistaController->formEditarArtista($id);
        break;
    case 'updateArtista':
        $artistaController = new artistasController();
        $id = $params[1];
        $artistaController->updateArtista($id);
        break;
    case 'eliminarArtista':
        $artistaController = new artistasController();
        $id = $params[1];
        $artistaController->eliminarArtista($id);
    case 'addDisco':
        $discosController = new discosController();

        $discosController->addDiscos();
        break;
    case 'formularioDeEdicionDisco':
        $artistaController = new artistasController();
        $id = $params[1];
        $artistaController->formEditar($id);//formulario para discos
        break;
    case 'updateDisco':
        $discosController = new discosController();

        $id = $params[1];
        $discosController->updateDisco($id);
        break;
    case 'eliminarDisco':
        $discosController = new discosController();
        $id = $params[1];
        $discosController->deleteDisco($id);
        break;
    default:
        echo('404 Page not found');
        break;
}

