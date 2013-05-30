<%@page import="org.isft.logic.collection.EjemploConexion,org.isft.logic.collection.CollectionUsuarioRol,org.isft.domain.Usuario,org.isft.domain.Rol,org.isft.logic.validator.ValidarUsuario,java.util.Vector,java.util.HashMap, org.isft.domain.UsuarioRol"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h2>Ejercicio 11 - TEST DE </h2>
<%
Usuario usuario = new Usuario();
usuario.setUsuarioId(1);

Rol rol = new Rol();
rol.setRolId(1);

HashMap param = new HashMap();
param.put("usuario",usuario);
param.put("rol",rol);


%>
<%
    try{
        CollectionUsuarioRol usuarioRol = new CollectionUsuarioRol();
        Vector vec=usuarioRol.getUsuarioRol(param);

        //Vector vec=ejemplo.traerClientes();
%>
            <p>
            <table>
            	<caption>Total UsuarioRol: <strong><%= vec.size() %></strong></caption>
            	<thead>
            		<th>Id usuario</th>
                    <th>Id Rol</th>

            	</thead>
            	<tbody>
	            <%
	            for(int i=0; i<vec.size(); i++){
                    UsuarioRol ur = (UsuarioRol)vec.get(i);
                    Rol role = ur.getRol();

                    %>
	            	<tr>
	              		<td><%=role.getRolId()%></td>
	              		<td><%=role.getVescripcionRol() %></td>
	              	</tr>
	            <%} %>
            	<tbody>
            </table>
            </p>
            <%
        } catch(Exception exc){%>
           ...
          <%=exc.getMessage()%>
        <%}
        %>
</body>
</html>
