<%-- 
    Document   : index
    Created on : 03/05/2012, 16:28:59
    Author     : Mi Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="static/js/login.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#f{
width:10%;
margin:auto;
}
</style>
</head>
<body>
<fieldset id="f">
<legend>Login</legend>
<form action='jsp/validaLogin.jsp' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso(); return false;">
    <table border="0" width="50%" align="center">
        <tr>
            <td><center>Usuario</center>
            <td><input type="text" maxlength="30" name="txt_usuario" id="txt_usuario">
        <tr>
            <td><center>Password</center>
            <td><input type="password" name="txt_password" id="txt_password">
        <tr>
            <td><center><button type="submit" name="btn_aceptar">Aceptar</button></center>
            <td><input type="reset" value="Cancelar" name="btn_cancelar">
    </table>
</form>
</fieldset>

</body>
</html>