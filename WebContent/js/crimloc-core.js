var mapa = $("#divMapaReporte");


$( window ).resize(function() {
	mapa.css({'height':($(window).height()-45)+'px'});
});
mapa.css({'height':($(window).height()-45)+'px'});


$('#login #contenido').load('login.jsp');
$('#registro #contenido').load('registro.jsp');
