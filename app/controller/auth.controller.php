<?php
require_once './app/view/auth.view.php';
require_once './app/model/user.model.php';

class AuthController {
    private $view;
    private $model;
    
    public function __construct() {
        $this->model = new UserModel();
        $this->view = new AuthView();
    }

    public function showFormLogin() {
        $this->view->showFormLogin();
    }

/**
 * Si el usuario existe y la contraseña es correcta, inicie sesión y redirija a la página de inicio. De
 * lo contrario, muestra el formulario de inicio de sesión con un mensaje de error.
 */
    public function validateUser() {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // busco el usuario por email
        $user = $this->model->getUserByEmail($email);

        // verifico que el usuario existe y que las contraseñas son iguales
        if ($user && password_verify($password, $user->password)) {
            // inicio una session para este usuario
            session_start();
            echo "sesion iniciada";
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['USER_NAME'] = $user->name;
            $_SESSION['USER_EMAIL'] = $user->email;
            $_SESSION['IS_LOGGED'] = true;
            header("Location: " . BASE_URL);
        } else {
            // si los datos son incorrectos muestro el form con un erro
           $this->view->showFormLogin("El usuario o la contraseña no existe.");
        } 
    }

    public function logout() {
        session_start();
        session_destroy();
        header("Location: " . BASE_URL);
    }
}