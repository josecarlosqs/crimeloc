<%@page import="beans.IncidenteBean"%>
<%@page import="dao.interfaces.IncidenteDao"%>
<%@page import="java.util.Vector"%>
<%@page import="daofactory.MySQLDaoFactory"%>
<%@page import="daofactory.DaoFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	if (session.getAttribute("nickname") == null) {
		response.sendRedirect("index.jsp");
	}
	DaoFactory df = new MySQLDaoFactory();
	IncidenteDao a = df.obtenerIncidenteDao();
	Vector<IncidenteBean> lista = a.listarPorUsuario((Integer) session
			.getAttribute("id_usuario"));
	System.out.print(session.getAttribute("id_usuario"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Titulo</title>
</head>
<body>

	<p>
		Bienvenido
		<%=session.getAttribute("nickname")%></p>
	<h3>Mis denuncias</h3>
	<a href="<%=getServletContext().getContextPath()%>/logueado.jsp">Atras</a>
	<%
		if (lista.size() == 0) {
			String mensaje = "No tiene incidentes registrados ";
	%>
	<%=mensaje%>
	<%
		} else {
	%>
	<table>
		<tr>
			<td>Titulo de la denuncia</td>
			<td>Tipo de denuncia</td>
			<td>Fecha</td>
			<td>Descripcion</td>
			<td>Codigo de la denuncia</td>
			<td>Ver mapa</td>
		</tr>
		<%
			for (int i = 0; i < lista.size(); i++) {
					IncidenteBean tmp = lista.get(i);
		%>
		<tr>
			<td>
				<%%>No se ke va aca :v
			</td>
			<td><%=tmp.getId_tipo_incidente()%></td>

			<td><%=tmp.getTimestamp() + ""%></td>

			<td><%=tmp.getDescripcion()%></td>
			<td><%=tmp.getId_incidente()%></td>
			<td><a
				href="<%=getServletContext().getContextPath()%>/IncidenteUsuario?id=<%=tmp.getId_usuario()%>&action=detalle">DETALLE</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		}
	%>
</body>
</html>