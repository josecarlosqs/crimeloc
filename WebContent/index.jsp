<%@page import="beans.Tipo_IncidenteBean,beans.IncidenteBean,java.util.Vector,dao.interfaces.TipoIncidenteDao,dao.interfaces.IncidenteDao,daofactory.MySQLDaoFactory,daofactory.DaoFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%
DaoFactory df = new MySQLDaoFactory();
TipoIncidenteDao a = df.obtenerTipoIncidenteDao();
IncidenteDao b = df.obtenerIncidenteDao();
Vector<Tipo_IncidenteBean> lista = a.listarTodo();
Vector<IncidenteBean> incidentes = b.listarTodo();
%>
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
</head>
<body>
	<!-- Topbar -->
	<nav id="barraPrincipal" class="top-bar" data-topbar role="navigation"
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
			<%
				if (session.getAttribute("id_usuario") == null) {
			%>
				<li class="divider"></li>
				<li><a href="#" data-reveal-id="login">INICIAR SESIÓN</a></li>
				<li class="divider"></li>
				<li><a href="#" data-reveal-id="registro">REGISTRATE!</a></li>
				<li class="divider"></li>
				<li><a href="#" data-reveal-id="creditos"><span
						class="glyph-icon flaticon-copyright2">&nbsp;</span></a></li>
			<%
				}else{
			%>
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

			<% } %>
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
	<!-- Div donde se cargara el mapa -->
	<div id="divMapaReporte"></div>


	<!-- Pie -->
	<!-- div id="alertas">
	<div data-alert class="alert-box"> <b>Búsqueda:&nbsp;</b> los flamencos <a href="#" class="close">&times;</a> </div>
</div -->

	<dl id="barraFiltros" class="sub-nav">
		<dt>Filtro:</dt>
		<dd class="active">
			<a href="#">Todos</a>
		</dd>
		<%
			for(int i=0; i<lista.size(); i++){
		%>
		<dd>
		<a href="#" id=<%=lista.get(i).getId_tipo_incidente()%>> <%=lista.get(i).getNomtipo()%></a>
		</dd>
		<%
			}
		%>
	</dl>

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


	<div id="login" class="reveal-modal" data-reveal>
		<div id="contenido"></div>
	</div>



	<div id="registro" class="reveal-modal" data-reveal>
		<div id="contenido"></div>
	</div>


	<script type="text/javascript" src="js/vendor/jquery.js"></script>
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBZSTQse-72aXcpINBGR6Xq145DAW-Ofdk&sensor=SET_TO_TRUE_OR_FALSE"></script>
	<script src="js/mapa-core.js"></script>
	<script type="text/javascript" src="js/foundation.min.js"></script>
	<script type="text/javascript" src="js/crimloc-core.js"></script>
	<script>
var marcadores = [];
function addMarker(location) {
	  marker = new google.maps.Marker({
	    position: location,
	    map: map
	  });
	  marcadores.push(marker);
	}



<%for(int i=0; i<incidentes.size(); i++){%>
addMarker(new google.maps.LatLng(<%=incidentes.get(i).getUb_latitud()%>,<%=incidentes.get(i).getUb_longitud()%>));
<%}%>       

for (i in marcadores) {
    marcadores[i].setMap(map);
  }

</script>
	<script>
		$(document).foundation();
	</script>
</html>