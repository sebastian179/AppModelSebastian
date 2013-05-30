<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
.bold{
    font-weight:bold;
}
</style>
</head>
<body>
<fieldset id="f">
<legend>TP 10 - Práctica workbench</legend>
<form action='jsp/validarUsuario.jsp' name='form_login' id='form_login' method="post" onsubmit="evaluar_ingreso_div_image(); return false;">
    <table border="0"  >
        <tr>
            <td width="450px"><label for="txt_usuario">Script que genera la base de datos y 3 inserts por cada tabla</label></td>
            <td width="230px" class="bold">Model/create_db_tp10.sql</td>

        </tr>
        <tr>
            <td><label for="txt_password">Modelo workbench</label></td>
            <td class="bold">Model/login_tp_10</td>

        </tr>

    </table>
</form>
</fieldset>

</body>
</html>

