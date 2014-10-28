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
	    		<!-- li><a href="#">Iniciar sesion</a></li -->
	    		<li class="divider"></li>
	    		<li><a href="#">Denunciar</a></li>
	    		<li class="divider"></li>
	    		<li><a href="#">Mis denuncias</a></li>
	    		<li class="divider"></li>
    			<li class="has-dropdown"> <a href="#">Usuario</a>
	    			<ul class="dropdown">
    					<li><a href="#">Ver mi perfil</a></li>
	    				<li><a href="#">Salir</a></li>
    				</ul>
	    		</li>
	    		<li class="divider"></li>
	    		<li><a href="#" data-reveal-id="creditos"><span class="glyph-icon flaticon-copyright2">&nbsp;</span></a></li>
	    		
    		</ul>
   		
	    	<!-- Izquierda -->
    		<ul class="left">
	    		<li class="has-form">
				  <div class="row collapse">
				    <div class="large-8 small-9 columns">
				      <input type="text" placeholder="Ej. Robo">
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
	  <center>
	  <table>
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
		</center>
	  <h4 class="subheader">Creditos extra:</h4>
	  
	  <div>Iconos dise&ntilde;ados por Freepik, SimpleIcon, obtenidos desde <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> | Licencia <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC BY 3.0</a></div>
	</div>
    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
	<script src="js/crimloc-core.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
