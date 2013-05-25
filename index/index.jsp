<%@page import="org.isft.logic.collection.EjemploConexion, java.util.Vector"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<title>AppModel index</title>
</head>
<body>
	Pagina principalxxx
        <%
        try{
            EjemploConexion ejemplo=new EjemploConexion();%>
            Conexion exitosas<br/>
            <%Vector vec=ejemplo.traerClientes(); %>
            <p>
            <table>
            	<caption>Total Clientes: <strong><%= vec.size() %></strong></caption>
            	<thead>
            		<th>Id</th>
			<th>Apellido</th>
			<th>Nombre</th>
			
            	</thead>
            	<tbody>
	            <%
	            for(int i=0; i<vec.size(); i++){%>
	            	<tr>
	              		<td colspan="3"><%=(String)vec.get(i)%></td>
	              	</tr>
	            <%} %>
            	<tbody>
            </table>
            </p>
            <%
        } catch(Exception exc){%>
            Conexion erronea
          <%=exc.getMessage()%>  
        <%} 
        %>
</body>
</html>