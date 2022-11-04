{include file="header.tpl"}
{if isset($smarty.session.USER_ID)}
<form action="addDisco" method="post">
<fieldset>
<legend>Ingrese datos del disco</legend>
    <label for="">Nombre del disco</label>
    <input class="form-control mb-3" type="text" name="disco" id="">
    <label for="">Autores</label>
    <input class="form-control mb-3" type="text" name="autores" id="">
    <label for="">Fecha de publicacion</label>
    <input class="form-control mb-3" type="date" name="fecha_publicacion" id="">
    <label for="">Informacion</label>
    <input class="form-control mb-3" type="text" name="info_discos" id="">
    <label for="">Asignar a:</label>
    <select name="id_artista" id="">
    {foreach from=$ids item=$disco}
        <option value="{$disco->id}">{$disco->nombre_artista}</option>
    {/foreach}
    </select>
    
</fieldset>
<input class="btn btn-primary mb-3" type="submit" value="Enviar">
</form>
{/if}
{include file="footer.tpl"}