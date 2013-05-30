<%@page import="org.isft.logic.collection.EjemploConexion,org.isft.logic.collection.CollectionUsuarioRol,org.isft.domain.Usuario,org.isft.domain.Rol,org.isft.logic.validator.ValidarUsuario,java.util.Vector,java.util.HashMap, org.isft.domain.UsuarioRol"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h2>Ejercicio 9</h2>
<%
String txt_usuario=request.getParameter("txt_usuario");
String txt_password=request.getParameter("txt_password");

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
    HashMap paramSQL = new HashMap();
    paramSQL.put("origen_datos","login");

    Usuario usuario = new Usuario();
    usuario.setUsuario(txt_usuario);
    usuario.setPassword(txt_password);

    ValidarUsuario validarUsuario = new ValidarUsuario();

    if(validarUsuario.isUsuarioValidoBySql(usuario, paramSQL)){ %>
        Usuario: <%= usuario.getUsuario() %><br />
        Password: <%= usuario.getPassword() %><br />
        Felicidades te has registrado con éxito!<br />


        <h3>Roles del Usuario</h3>
        <%
            //Usuario usuario = new Usuario();
            //usuario.setUsuarioId(1);

           // Rol rol = new Rol();
            //rol.setRolId(1);

            HashMap param = new HashMap();
            param.put("usuario",usuario);
            //param.put("rol",rol);


            %>
            <%
            try{
                CollectionUsuarioRol usuarioRol = new CollectionUsuarioRol();
                Vector vec=usuarioRol.getUsuarioRolByUsuario(param, paramSQL);
        %>
                    <p>
                    <table>
                        <!--<caption>Total UsuarioRol: <strong><%= vec.size() %></strong></caption>-->
                        <thead>
                            <!--<th>Id Rol</th>-->
                            <th>Descripcion Rol</th>

                        </thead>
                        <tbody>
                        <%
                        for(int i=0; i<vec.size(); i++){
                            UsuarioRol ur = (UsuarioRol)vec.get(i);
                            Rol role = ur.getRol();

                            %>
                            <tr>
                                <!--<td><%=role.getRolId()%></td>-->
                                <td><%=role.getVescripcionRol() %></td>
                            </tr>
                        <%} %>
                            <tr>
                                <td colspan="2"><a href="javascript:history.go(-1)"><button>Atrás</button></a></td>
                            </tr>
                        <tbody>
                    </table>
                    </p>
                    <%
                } catch(Exception exc){%>
                   ...
                  <%=exc.getMessage()%>
                <%}
                %>
            <% }else{ %>
                Usuario y/o password incorrectos <a href="javascript:history.go(-1)"><button>Atrás</button></a>
            <% } %>

<% } %>
</body>
</html>
