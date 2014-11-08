<%@page import="java.util.Vector"%>
<%@page import="beans.Tipo_IncidenteBean"%>
<%@page import="dao.interfaces.TipoIncidenteDao"%>
<%@page import="daofactory.MySQLDaoFactory"%>
<%@page import="daofactory.DaoFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
/* 	if (session.getAttribute("nickname") == null) {
		response.sendRedirect("index.jsp");
	} */

	DaoFactory df = new MySQLDaoFactory();
	TipoIncidenteDao a = df.obtenerTipoIncidenteDao();
	Vector<Tipo_IncidenteBean> lista = a.listarTodo();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Titulo</title>
</head>
<body>

	<p>
		Lukea las tablas 
		<%=session.getAttribute("nickname")%></p>
	<h3>Bandido</h3>
	<a href="<%=getServletContext().getContextPath()%>/logueado.jsp">Atras</a>
	<%
		if (lista.size() == 0) {
			String mensaje = "No tienes tipos de incidentes pe no seas webon ";
	%>
	<%=mensaje%>
	<%
		} else {
	%>
	<table>
		<tr>
			<td>id</td>
			<td>Nombre</td>
			
		</tr>
		<%
			for (int i = 0; i < lista.size(); i++) {
					Tipo_IncidenteBean tmp = lista.get(i);
		%>
		<tr>
			<td>
				<%=tmp.getId_tipo_incidente()
				%>
			</td>
			<td><%=tmp.getNomtipo()%></td>

			
		<%
			}
		%>
	</table>
	<%
		}
	%>
</body>
</html>