<%@page
	import="beans.IncidenteBean,dao.interfaces.IncidenteDao,java.util.Vector,daofactory.MySQLDaoFactory,daofactory.DaoFactory"%>
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

	if (session.getAttribute("id_usuario") == null) {
		response.sendRedirect("index.jsp");
	}
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="img/icono.ico" type="image/x-icon">
<title>CRIMELOC</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="css/crimeloc-core.css" />
<link rel="stylesheet" href="css/flaticon.css" />
<script src="js/vendor/modernizr.js"></script>
<script src="js/mapa-core.js"></script>

</head>
<body>

	<nav class="top-bar" data-topbar role="navigation"
		data-options="is_hover: false">

		<ul class="title-area">
			<li class="name"><h1>
					<a href="index.jsp">&nbsp;</a>
				</h1></li>
			<li class="toggle-topbar menu-icon"><a href="#"><span>&nbsp;</span></a></li>
		</ul>
		<section class="top-bar-section">
			<!-- Derecha -->
			<ul class="right">
				<!-- li><a href="#">Iniciar sesion</a></li -->
				<li class="divider"></li>
				<li><a href="denunciar.jsp">Denunciar</a></li>
				<li class="divider"></li>
				<li><a href="misdenuncias.jsp">Mis denuncias</a></li>
				<li class="divider"></li>
				<li class="has-dropdown"><a href="#">Usuario</a>
					<ul class="dropdown">
						<li><a href="perfil.jsp">Ver mi perfil</a></li>
						<li>
							<%
								//session.removeAttribute("id_usuario");
								//session.removeAttribute("correo");
								//session.removeAttribute("clave");
							%> <a href="index.jsp">Salir</a>
						</li>
					</ul></li>
				<li class="divider"></li>
				<li><a href="#" data-reveal-id="creditos"><span
						class="glyph-icon flaticon-copyright2">&nbsp;</span></a></li>

			</ul>

			<!-- Izquierda -->
			<ul class="left">
				<li class="has-form">
					<div class="row collapse">
						<div class="large-9 small-10 columns">
							<input type="text" placeholder="Busca por distrito" />
						</div>
						<div class="large-3 small-2 columns">
							<button class="alert button expand">
								<i class="glyph-icon flaticon-magnifier11"></i>
							</button>
						</div>
					</div>
				</li>
			</ul>

		</section>

	</nav>
	<div class="row" style="margin-top: 10px;">
		<div class="content">

			<%
				if (lista.size() == 0) {
			%>
			<div data-alert class="alert-box alert round"
				style="margin: auto; text-align: center;">
				<h3 style="color: #fff;">Aun no has registrado ninguna denuncia</h3>
			</div>
			<hr>
			<a role="button" class="button" href="index.jsp">Regresar</a>
			<%
				} else {
			%>
			<table>
				<thead>
					<tr>
						<td>Tipo de denuncia</td>
						<td>Fecha</td>
						<td>Descripcion</td>
						<td>Codigo de la denuncia</td>
						<td>Ver mapa</td>
					</tr>
				</thead>
				<tbody>
					<%
						for (int i = 0; i < lista.size(); i++) {
								IncidenteBean tmp = lista.get(i);
					%>
					<tr>
						<td><%=tmp.getId_tipo_incidente()%></td>

						<td><%=tmp.getTimestamp() + ""%></td>

						<td><%=tmp.getDescripcion()%></td>
						<td><%=tmp.getId_incidente()%></td>
						<td><a	href="<%=getServletContext().getContextPath()%>/IncidenteUsuario?id=<%=tmp.getId_usuario()%>&action=detalle">DETALLE</a></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				}
			%>
		</div>
	</div>
	<div id="creditos" class="reveal-modal" style="text-align: center;"
		data-reveal>
		<a class="close-reveal-modal">&#215;</a>
		<h2>CRIMELOC v1.0</h2>
		<h4 class="subheader">Equipo responsable del desarrollo:</h4>

		<table style="margin: auto;">
			<thead>
				<tr>
					<th>Nombres</th>
					<th width="200">Rol</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Samanta M. Gonzales V.</td>
					<td>Jefe de proyecto</td>
				</tr>
				<tr>
					<td>Jos&eacute; C. Quichiz S.</td>
					<td>Lider tecnico</td>
				</tr>
				<tr>
					<td>Ricardo Garcia. C.</td>
					<td>Programador</td>
				</tr>
				<tr>
					<td>Cinthia S. Urbano G.</td>
					<td>Analista</td>
				</tr>
				<tr>
					<td>Lorena Sanchez R.</td>
					<td>Analista</td>
				</tr>
				<tr>
					<td>Karla Pe&ntilde;a D.</td>
					<td>Dise&ntilde;ador</td>
				</tr>
				<tr>
					<td>Carlos Amor&oacute;s T.</td>
					<td>Dise&ntilde;ador</td>
				</tr>
				<tr>
					<td>Manuel Gutierrez C.</td>
					<td>Representante del cliente</td>
				</tr>
			</tbody>
		</table>

		<h4 class="subheader">Creditos extra:</h4>

		<div>
			Iconos dise&ntilde;ados por Freepik, SimpleIcon, obtenidos desde <a
				href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a>
			| Licencia <a href="http://creativecommons.org/licenses/by/3.0/"
				title="Creative Commons BY 3.0">CC BY 3.0</a>
		</div>
	</div>

	<script type="text/javascript" src="js/vendor/jquery.js"></script>
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBZSTQse-72aXcpINBGR6Xq145DAW-Ofdk&sensor=SET_TO_TRUE_OR_FALSE"></script>
	<script type="text/javascript" src="js/foundation.min.js"></script>
	<script type="text/javascript" src="js/crimloc-core.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>
