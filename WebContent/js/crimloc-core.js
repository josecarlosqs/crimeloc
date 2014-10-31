//Variables importantes
var barraPrincipal = $("#barraPrincipal");
var barraFiltros = $("#barraFiltros");
var mapa = $("#divMapaReporte");
var modLogin = $('#login #contenido');
var modRegistro = $('#registro #contenido')
var alertas = $('#alertas');

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

$(document).on('open.fndtn.alert-box', function(event) {
	  console.info('An alert box has been opened!');
	});
$(document).on('close.fndtn.alert-box', function(event) {
	  console.info('An alert box has been closed!');
	});