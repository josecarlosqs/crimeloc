//Variables iniciales
var posLima = [-12.030202192152053,-77.03473452148432];

function cargarMapa(mapa) {
var parametrosMapa = {
 center: new google.maps.LatLng(posLima[0], posLima[1]),
 zoom: 16,
 mapTypeId: google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("divMapaReporte"),parametrosMapa);
mapa.css({'background-image':'none'});
}

/*var map;
var markers = [];

function initialize() {
  var centro = new google.maps.LatLng(latitud, longitud);
  var mapOptions = {
    zoom: 12,
    center: centro,
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };
  map = new google.maps.Map(document.getElementById('divMapaReporte'),
      mapOptions);

  google.maps.event.addListener(map, 'click', function(event) {
    addMarker(event.latLng);
  });

  addMarker(centro);
}



function addMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  markers.push(marker);
}

function setAllMap(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}

function clearMarkers() {
  setAllMap(null);
}

function showMarkers() {
  setAllMap(map);
}

function deleteMarkers() {
  clearMarkers();
  markers = [];
}

google.maps.event.addDomListener(window, 'load', initialize);

*/