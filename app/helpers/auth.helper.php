<?php

class AuthHelper {

    /**
     * Si el usuario intenta acceder a otras funcioness y no ha iniciado sesión, rediríjalo a la página de inicio de sesión.
     */
    public function checkLoggedIn() {
        session_start();
        if (!isset($_SESSION['IS_LOGGED'])) {
            header("Location: " . BASE_URL . 'login');
        }
    } 
}