{include file="header.tpl"}
<h3>Detalle de ítem: Se debe poder navegar y visualizar cada ítem particularmente</h3>
{foreach from=$infoDiscos item=$info}
    <h1>{$info->nombre_disco}</h1>
    <h2>Fecha de lanzamiento: {$info->fecha_publicacion}</h2>
    <p>{$info->descripcion}</p>
{/foreach}


{include file="footer.tpl"}
