<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<form action='jsp/archivo1.jsp' name='form_login' id='form_login' method="post" >
    <table border="0" width="50%" align="center">
        <tr>
            <td><center>Usuario</center>
            <td><input type="text" maxlength="30" name="txt_usuario" id="txt_usuario">
        </tr>
        <tr>
            <td><center>Password</center>
            <td><input type="password" name="txt_password" id="txt_password">
        </tr>
        
        <tr>
            <td><center><button type="submit" name="btn_aceptar">Aceptar</button></center>
            <td><input type="reset" value="Cancelar" name="btn_cancelar">
        </tr>
    </table>
</form>
</fieldset>

</body>
</html>