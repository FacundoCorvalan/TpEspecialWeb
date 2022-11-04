
{* {include file="discosFormulario.tpl"} *}
<table class="table table-hover">
    <thead>
        <tr>
            <th></th>
            <th>Titulo del disco</th>
            <th>Autores</th>
            <th>Fecha de lanzamiento</th>
            <th>Ver detalles del disco</th>

        </tr>
    </thead>
    <tbody>
        {foreach from=$discos item=$disco}
            <tr>
                <td><img src="img/disco.jpg" alt="" srcset=""></td>
                <td>{$disco->nombre_disco}</td>
                <td>{$disco->autores}</td>
                <td>{$disco->fecha_publicacion}</td>
                <td><a href='detalleDisco/{$disco->id}'>Ver detalle del disco</a></td>
                {if isset($smarty.session.USER_ID)}
                <td><a href="formularioDeEdicionDisco/{$disco->id}">Editar</a></td>{* llevo a un form para editar que aplica el action editar y el update en el model *}
                <td><a href="eliminarDisco/{$disco->id}">Eliminar</a></td>
                {/if}
            </tr>
        {/foreach}
    </tbody>
</table>

{include file="footer.tpl"}