<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li><a href="#">DENUNCIAR</a></li>
				<li><a href="#">MIS DENUNCIAS</a></li>
				<li class="has-dropdown">
			        <a href="#">USUARIO</a>
			        <ul class="dropdown">
			          <li><a href="#">Panel administrativo</a></li>
			          <li><a href="#">Mi perfil</a></li>
			          <li><a href="#">Salir</a></li>
			        </ul>
			      </li>
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
							<button class="alert button expand"><i
								class="glyph-icon flaticon-magnifier11"></i></button>
						</div>
					</div>
				</li>
			</ul>

		</section>

	</nav>		
<!-- div contenido -->

	<div class="row" style="margin-top: 10px;">
	
		<div class="content">
		<div class="panel" style="text-align: center;">
		  <h2>Panel de control</h2>
		</div>
	
		<dl class="tabs" data-tab>
		  <dd class="active"><a href="#tabTabla">Tipo incidentes</a></dd>
		  <dd><a href="#tabUsuario">Usuario</a></dd>
		</dl>
		<div class="tabs-content">
		  <div class="content active" id="tabTabla">
		    <!-- Contenido de la pestaña tabla -->
		    
		    	<dl class="tabs vertical" data-tab>
				  <dd class="active"><a href="#panel1">Crear</a></dd>
				  <dd><a href="#panel2">Modificar</a></dd>
				  <dd><a href="#panel3">Ver todos</a></dd>
				</dl>
				<div class="tabs-content">
				  <div class="content active" id="panel1">
				    <p>This is the first panel of the basic tab example. This is the first panel of the basic tab example.</p>
				  </div>
				  <div class="content" id="panel2">
				    <p>This is the second panel of the basic tab example. This is the second panel of the basic tab example.</p>
				  </div>
				  <div class="content" id="panel3">
				    <p>This is the third panel of the basic tab example. This is the third panel of the basic tab example.</p>
				  </div>
				</div>
		    
		    <!-- Fin contenido pestaña tabla -->
		  </div>
		  <div class="content" id="tabUsuario">
		    <!-- Inicio contenido usuarios -->
		    <!-- Fin contenido usuarios -->
		  </div>
		</div>
	
	
	
	
	
	
	</div>
	
	</div>


<!-- Pie -->
<!-- div id="alertas">
	<div data-alert class="alert-box"> <b>Búsqueda:&nbsp;</b> los flamencos <a href="#" class="close">&times;</a> </div>
</div -->

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
	<script type="text/javascript" src="js/foundation.min.js"></script>
	<script type="text/javascript" src="js/crimloc-core.js"></script>
	<script>
		$(document).foundation();
	</script>
</html>