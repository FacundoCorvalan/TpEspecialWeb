<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class UserView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // inicializo Smarty
    }

    public function traerHtml(){
        $smarty = new Smarty();
        $smarty->display('home.tpl');
    }

    public function editarForm(){
        $smarty = new Smarty();
        $smarty->display('form.tpl');
    }
}