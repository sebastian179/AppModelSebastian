<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="static/js/login.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link media="all" type="text/css" href="static/bootstrap/css/bootstrap.css" rel="stylesheet">

<style>
#f{
    width: 630px;
    margin: 0 auto;
    float:none;

}
.body{
    position:relative;
    float: left;
    width:630px;
    position:relative;
    margin-top:150px !important;
}
.table{
 text-align:center;
}
fieldset {

position: relative;
margin-top: 150px !important;
}
</style>
</head>
<body>
<fieldset id="f">
<legend>Login</legend>
<form action='jsp/validarUsuario.jsp' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso_div_image(); return false;">
    <table border="0"  >
        <tr>
            <td width="100px"><label for="txt_usuario">Usuario</label></td>
            <td width="230px"><input type="text" maxlength="30" name="txt_usuario" id="txt_usuario"></td>
            <td width="300px">
                <img id="imagen_user" src="" width="25px" style="visibility:hidden;" />
                <span id="mensaje_user"></span>
            </td>
        </tr>
        <tr>
            <td><label for="txt_password">Password</label></td>
            <td><input type="password" name="txt_password" id="txt_password"></td>
            <td>
                <img id="imagen_pass" src="" width="25px"  style="visibility:hidden;" />
                <span id="mensaje_pass"></span>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <input type="reset" value="Cancelar" name="btn_cancelar" />
                <input type="submit" name="btn_aceptar" value="Aceptar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</fieldset>

</body>
</html>