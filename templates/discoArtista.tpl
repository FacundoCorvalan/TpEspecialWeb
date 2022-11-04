{include file='header.tpl'}
<h3>Listado de ítems x categoría: Se debe poder visualizar los ítems perteneciente a una categoría seleccionada</h3>

<table class="table table-hover">
    <thead>
        <tr>
            <th>Nombre disco</th>
            <th>Fecha publicacion</th>
            <th>Autores</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$detalles item=$detalle}
            <tr>
                <td>{$detalle->nombre_disco}</td>
                <td>{$detalle->fecha_publicacion}</td>
                <td>{$detalle->autores}</td>
                <td><a href="detalleDisco/{$detalle->id}">Mas detalles</a></td>
            </tr>
        {/foreach}
    </tbody>
</table>

{include file="footer.tpl"}
