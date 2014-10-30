//Variables importantes
var mapa = $("#divMapaReporte");
var modLogin = $('#login #contenido');
var modRegistro = $('#registro #contenido')

//Funciones para estructura de mapa
$( window ).resize(function() {
	mapa.css({'height':($(window).height()-55)+'px'});
});
mapa.css({'height':($(window).height()-55)+'px'});

//Carga de mapa
cargarMapa(mapa);

//Cargas AJAX
modLogin.load('login.jsp');
modRegistro.load('registro.jsp');