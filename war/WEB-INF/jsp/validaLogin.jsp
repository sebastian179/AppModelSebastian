<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<hr/>
<h3>EJERCITACION DE VALIDACION DE TXT_USUARIO Y TXT_PASSWORD RECIBIDOS POR REQUEST - EJERCICIO
2</h3><br/>
<%
String txt_usuario=request.getParameter("txt_usuario");
String txt_password=request.getParameter("txt_password");
if(txt_usuario.equals(null) && txt_password.equals(null)){
%>Complete usuario y contraseña
<a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_usuario.equals(null)){%>Complete usuario
<a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_password.equals(null)){%>Complete contraseña
<a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else{%>Felicidades te has registrado con éxito!
<%}%>
</body>
</html>
