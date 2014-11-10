<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<a class="close-reveal-modal">&#215;</a>
<p class="lead">Autenticarme</p>
<form action="login" method="post">
	<div class="row">
		<div class="small-6 large-centered columns">
			<label>Correo <input type="text"
				placeholder="Tambien puedes poner tu apodo" id="correo"
				name="correo" />
			</label>
		</div>

		<div class="small-6 large-centered columns">
			<label>Clave <input type="password"
				placeholder="La clave de tu cuenta" id="clave" name="clave" />
			</label>
		</div>
		<div class="small-6 large-centered columns">
			<input class="button 4" type="submit" value="INICIAR SESION" />
		</div>
	</div>
</form>

