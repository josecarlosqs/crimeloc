<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<a class="close-reveal-modal">&#215;</a>
<p class="lead">Registro</p>
<!-- form name="registro" action="registro" method="post" -->
<form  action="logueado.jsp">
	<div class="row">
		<div class="small-6 large-centered columns">
			<label>Nickname <input name="txtnickname" type="text"
				placeholder="Algun apodo o nombre de usuario" />
			</label>
		</div>

		<div class="small-6 large-centered columns">
			<label>Correo <input name="txtcorreo" type="text"
				placeholder="usuario@ejemplo.com" />
			</label>
		</div>

		<div class="small-6 large-centered columns">
			<label>Clave <input name="txtclave1" type="password"
				placeholder="Pon una contraseña para tu cuenta" />
			</label>
		</div>

		<div class="small-6 large-centered columns">
			<label>Confirma tu clave <input name="txtclave2"
				type="password" placeholder="Pon la misma contraseña" />
			</label>
		</div>
		<div class="small-6 large-centered columns">
			<input class="button 4" type="submit" value="ACEPTAR" />
		</div>
	</div>
</form>
