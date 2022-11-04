<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class discosView{
    
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }


    public function showDiscos($discos){//listado de discos
        $this->smarty->assign('discos',$discos);
        //mostrar el tpl
        $this->smarty->display('discos.tpl');
    }

    public function showDiscoDeArtista($disco){//disco por artista
        $discosXartista = array();

        foreach($disco as $detalle){
            array_push($discosXartista,$detalle);
        }
        $smarty = new Smarty();
        $smarty->assign('detalles',$discosXartista);
        $smarty->display('discoArtista.tpl');
    }
    
    public function showDetalleDisco($discoIndividual){//disco individual
        $discosIndividuales = array();
        foreach($discoIndividual as $detalleIndividual){
            // echo "<h1>";
            // echo $detalleIndividual->nombre_disco;
            // echo "</h1>";

            array_push($discosIndividuales, $detalleIndividual);

        }

        $smarty = new Smarty();
        $smarty->assign('infoDiscos',$discosIndividuales);
        $smarty->display('infoDiscos.tpl');
        
    }
}