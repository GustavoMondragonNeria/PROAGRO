$("#map").hide();
function myfunction() {
    var id2;
    function obtenerValorParametros() {

        var url = window.location.pathname;
        id2 = url.substring(url.lastIndexOf('/') + 1);
    }
    var datas = obtenerValorParametros();
    var data = {
        id: id2
    };
    $.ajax({
        type: "Post",
        dataType: "json",
        url: "/ExamenCliente/ListaGeorreferenciass2",
        traditional: true,
        data: JSON.stringify(data),
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data.status == true) {
                
                var array = [];
                for (var i = 0; i < data.Items.length; i++) {

                    /*   initMap(data.Items[i]["Latitud"], data.Items[i]["Longitud"])*/
                    array[i] = [data.Items[i]["Latitud"], data.Items[i]["Longitud"]];
                }
                initMap(array)
                
            }
            else {
                Swal.fire({
                    type: 'error',
                    title: 'Oops...',
                    text: data.message,
                }).then(function () {
                    location.reload();
                });
            }
        }
    })
};
function initMap(array) {
    $("#map").show();
    
    var marker = [];
    var center = { lat: 19.390519, lng: -99.4238064 };
    var lugares = array;
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 5,
        center: center
    });

    for (var i = 0; i < lugares.length; i++) {
        var lugar = lugares[i];
        marker = new google.maps.Marker({
            position: { lat: lugar[0], lng: lugar[1] },
            draggable: false,
            animation: google.maps.Animation.DROP,
            map: map
        });
        marker.addListener('click', toggleBounce);
    }
};
function toggleBounce() {
    if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
    } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
    }
};
