<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class artistasView{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
    }

    
    public function showArtistas($artistas){
        $this->smarty->assign('artistas',$artistas);

        //mostrar el tpl
        $this->smarty->display('artistas.tpl');
    }

    public function showArtista($datoArtista){
        $smarty = new Smarty();
        $smarty->assign('infoArtista',$datoArtista);
        $smarty->display('artistaIndividual.tpl');//lo mando al template de vista x categoria para mostrar la info del artista junto con sus discos
    }

    function getIdArtistas($datos_disco){
        $listaArtista=array();
        $ultimoId=null;
        foreach($datos_disco as $dato){
            if($dato->id != $ultimoId){//Filtro los ids para que no se repitan en el select del html
                array_push($listaArtista,$dato);
                $ultimoId=$dato->id;
            }
        }

        $smarty = new Smarty();
        $smarty->assign('ids',$listaArtista);
        $smarty->display('discosFormulario.tpl');
    }

    public function formModifyArtistas($datosArtistas,$id){//formulario de edicion de artistas
        $smarty = new Smarty();
        $smarty->assign('datosArtista',$datosArtistas);
        $smarty->assign('id',$id);
        $smarty->display('formModifyArtista.tpl');
    }



    function formModifyDiscos($datos_disco,$id){//formulario de edicion de discos
        $listaArtista=array();
        $ultimoId=null;
        foreach($datos_disco as $dato){
            if($dato->id != $ultimoId){//Filtro los ids para que no se repitan en el select del html
                array_push($listaArtista,$dato);
                $ultimoId=$dato->id;
            }
        }

        $smarty = new Smarty();

        $smarty->assign('ids',$listaArtista);
        $smarty->assign('discoActual',$id);
        $smarty->display('formModifyDisco.tpl');
    }
    
}