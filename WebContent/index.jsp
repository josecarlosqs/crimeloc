<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="img/icono.ico" type="image/x-icon">
    <title>CRIMELOC</title>
    <link rel="stylesheet" href="css/foundation.min.css" />
    <link rel="stylesheet" href="css/crimeloc-core.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <script src="js/vendor/modernizr.js"></script>
    
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	<script>
		var latitud = -12.030202192152053;
		var longitud = -77.03473452148432;
		//out.print(request.getParameter("posLat"));
	</script>
	<script src="js/mapa-core.js"></script>
	<style>
		#divMapaReporte{
			display: block;
			/*height: 400px;*/
			height: 100px;
		}
	</style>
    
  </head>
  <body>
  <div class="row">
    <nav class="top-bar" data-topbar role="navigation"  data-options="is_hover: false">
    	
    	 <ul class="title-area">
    		<li class="name"><h1><a href="#">&nbsp;</a></h1></li>
    		<li class="toggle-topbar menu-icon"><a href="#"><span>&nbsp;</span></a></li>
    	</ul>
    	<section class="top-bar-section">
	    	<!-- Derecha -->
    		<ul class="right">
	    		<li class="divider"></li>
	    		<li><a href="#" data-reveal-id="login">INICIAR SESIÓN</a></li>
	    		<li class="divider"></li>
	    		<li><a href="#" data-reveal-id="creditos"><span class="glyph-icon flaticon-copyright2">&nbsp;</span></a></li>
	    		
    		</ul>
   		
	    	<!-- Izquierda -->
    		<ul class="left">
	    		<li class="has-form">
				  <div class="row collapse">
				    <div class="large-8 small-9 columns">
				      <input type="text" placeholder="Busca por distrito">
				    </div>
				    <div class="large-4 small-3 columns">
				      <a href="#" class="alert button expand"><i  class="glyph-icon flaticon-magnifier11"></i></a>
				    </div>
				  </div>
				</li>
    		</ul>
    		
    	</section>

    </nav>
    
    </div>
    
    <div class="row">
    
     <div id="divMapaReporte"></div>
    
    </div>
    
    <div id="creditos" class="reveal-modal" style="text-align: center;" data-reveal>
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
	  
	  <div>Iconos dise&ntilde;ados por Freepik, SimpleIcon, obtenidos desde <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> | Licencia <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC BY 3.0</a></div>
	</div>
	
	
	<div id="login" class="reveal-modal" data-reveal>
	<a class="close-reveal-modal">&#215;</a>
	<p class="lead">Autenticarme</p>
	<form>
	  <div class="row">
	    <div class="small-6 large-centered columns">
	      <label>Correo
	        <input type="text" placeholder="usuario@ejemplo.com" />
	      </label>
	    </div>
	    
	    <div class="small-6 large-centered columns">
	      <label>Clave
	        <input type="password" />
	      </label>
	    </div>
	    <div class="small-6 large-centered columns">
	      <input class="button 4" type="submit" value="INICIAR SESION" />
	    </div>
	  </div>
	</form>
	 
	</div>
    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
	<script src="js/crimloc-core.js"></script>
    <script>
      $(document).foundation();
    </script>
</html>