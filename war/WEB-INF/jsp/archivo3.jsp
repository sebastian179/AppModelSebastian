<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h2>Ejercicio 3</h2>
<%
String txt_usuario=request.getParameter("txt_usuario");
String txt_password=request.getParameter("txt_password");
%>


<%
if( txt_usuario.equals(null) && txt_password.equals(null) ||  txt_usuario.trim().equals("") && txt_password.trim().equals("") ){%>
    Complete usuario y contraseña
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_usuario.equals(null) || txt_usuario.trim().equals("")){%>
    Complete usuario
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else if(txt_password.equals(null) || txt_password.trim().equals("")){%>
    Complete contraseña
    <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<%}else{
    boolean user = false;
    if(txt_usuario.equals("jlopez"))
        user = true;
    boolean pass = false;
    if(txt_password.equals("lopezj"))
        pass = true;
    if(user && pass){
%>
        Usuario: <%= txt_usuario %><br />
        Password: <%= txt_password %><br />
        Felicidades te has registrado con éxito!
<%  }else{ %>
    Usuario y/o password incorrectos <a href="javascript:history.go(-1)"><button>Atrás</button></a>
<% }
}
%>
</body>
</html>
