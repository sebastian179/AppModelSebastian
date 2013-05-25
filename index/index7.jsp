<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="static/js/login.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#f{
width:80%;
margin:auto;
}
</style>
</head>
<body>
<fieldset id="f">
<legend>Login</legend>
<form action='jsp/archivo3.jsp' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso_div_image(); return false;">
    <table border="0" width="70%" align="center">
        <tr>
            <td width="20%"><center>Usuario</center></td>
            <td width="20%"><input type="text" maxlength="30" name="txt_usuario" id="txt_usuario"></td>
            <td width="40%">
                <img id="imagen_user" src="" width="25px" style="visibility:hidden;" />
                <span id="mensaje_user"></span>
            </td>
        </tr>
        <tr>
            <td><center>Password</center></td>
            <td><input type="password" name="txt_password" id="txt_password"></td>
            <td>
                <img id="imagen_pass" src="" width="25px"  style="visibility:hidden;" />
                <span id="mensaje_pass"></span>
            </td>
        </tr>
        <tr>
            <td><center><button type="submit" name="btn_aceptar">Aceptar</button></center>
            <td><input type="reset" value="Cancelar" name="btn_cancelar">
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</fieldset>

</body>
</html>