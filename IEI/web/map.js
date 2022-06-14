var map = new L.Map("oMeuMapa", {center: [40.633258,-8.659097],zoom: 15});
var osmUrl="http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib="Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, {attribution: osmAttrib});
map.addLayer(osm);
map.on("click", mostraCoordenadas);
var iconeUA = L.icon({ iconUrl: "http://xcoa.av.it.pt/ua.png" });
function mostraCoordenadas(e){
    var s = document.getElementById("coordenadas");
    s.innerHTML = "Latitude, Longitude = "+e.latlng.lat+", "+e.latlng.lng;
    }

var pontos = [
    L.marker([40.633258, -8.659097], {icon: iconeUA}).bindPopup("LABI@DETI"),
    L.marker([40.59641, -8.62542]).bindPopup("Casa"),
    L.marker([40.57904, -8.65851]).bindPopup("Vale de Ilhavo")
    ];
    for(i in pontos) {
    pontos[i].addTo(map);
    }
var grupo = new L.featureGroup(pontos);
map.fitBounds(grupo.getBounds());
var reitoria = L.polygon(
    [ [40.63102, -8.65793], [40.63149, -8.65731],
    [40.63126, -8.65699], [40.63078, -8.65759] ],
    { color: "red" } );
reitoria.addTo(map);
var DETI = L.polyline(
    [ [40.63321523440559, -8.65928649902344], [40.63321523440559, -8.659125566482546],
    [40.632816272841474, -8.659120202064516],[40.63280405969477, -8.65927577018738], [40.63321523440559, -8.65928649902344] ],
    { color: "green" } );
DETI.bindPopup("Area DETI")
DETI.addTo(map);