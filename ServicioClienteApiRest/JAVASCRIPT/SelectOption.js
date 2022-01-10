getSelectEstadosRepublica();

function getSelectEstadosRepublica() {
    $("#txtESTADO").empty();
    $.ajax({
        type: 'Get',
        dataType: 'json',
        url: "../ExamenCliente/ListaEstados",
        data: {},
        success: function (data) {
            var html = "";
            $.each(data.Items, function (index, value) {
                html += "<option value =" + value.idEstados + ">" + value.Nombre + "</option>"
            });
            $('#txtESTADO').append(html);
        }
    });
}