//Variables importantes
var barraPrincipal = $("#barraPrincipal");
var barraFiltros = $("#barraFiltros");
var mapa = $("#divMapaReporte");
var modLogin = $('#login #contenido');
var modRegistro = $('#registro #contenido')

//Funciones para estructura de mapa
$( window ).resize(function() {
	mapa.css({'height':(($(window).height())-(barraPrincipal.outerHeight()+barraFiltros.outerHeight()))+'px'});
});
mapa.css({'height':(($(window).height())-(barraPrincipal.outerHeight()+barraFiltros.outerHeight()))+'px'});
console.log(barraPrincipal.outerHeight());

//Carga de mapa
cargarMapa(mapa);

//Cargas AJAX
modLogin.load('login.jsp');
modRegistro.load('registro.jsp');