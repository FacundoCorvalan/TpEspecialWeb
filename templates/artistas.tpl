{include file="header.tpl"}
{if isset($smarty.session.USER_ID)}
{include file="artistasFormulario.tpl"}
{/if}
<table class="table table-hover">
    <thead>
        <tr>
            <th>Foto</th>
            <th>Nombre</th>
            <th>Nacionalidad</th>
            <th>Fecha de nacimiento</th>
            <th>Discografia</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$artistas item=$artista}
            <tr>
                <td><img  src="img/artista.jpg" alt="Logo cantante" srcset=""></td>
                <td>{$artista->nombre_artista}</td>
                <td>{$artista->nacionalidad}</td>
                <td>{$artista->fecha_nacimiento}</td>
                <td><a href="discosArtista/{$artista->id}">Ver Discografia</a></td>
                {if isset($smarty.session.USER_ID)}
                <td><a href="formularioDeEdicionArtista/{$artista->id}">Editar</a></td>
                <td><a href="eliminarArtista/{$artista->id}">Eliminar</a></td>
                {/if}
            </tr>
        {{/foreach}}
    </tbody>
</table>

{include file="footer.tpl"}