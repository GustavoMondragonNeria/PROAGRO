
DemoDatatable();
function DemoDatatable() {

    $("#dataTableEntrega").DataTable({

        "scrollX": true,
        select: {
            style: 'single'
        },
        "processing": true,
        "serverSide": true,
        "filter": true,
        "orderMulti": true,
        "destroy": true,
        "ordering": true,
        "lengthMenu": [[5, 10, 20, 25, 3000, 500000000, -1], [5, 10, 20, 25, 3000, "Todos"]],
        "iDisplayLength": 10,
        "ajax": {
            "url": '../ExamenCliente/ListaGeorreferenciass',
            "type": "POST",
            "datatype": "json"
        },
        "language": {
            search: " _INPUT_",
            searchPlaceholder: "NÚMERO CELULAR ",
            "processing": "procesando datos...espere por favor",
            "lengthMenu": "Mostrar _MENU_ registros por página.",
            "zeroRecords": "No se encontró registro.",
            "info": "  _START_ de _END_ (_TOTAL_ registros totales).",
            "infoEmpty": "0 de 0 de 0 registros",
            "infoFiltered": "(Encontrado de _MAX_ registros)",
            "search": "BUSCAR",
            "paginate": {
                "first": " |< ",
                "previous": "Ant.",
                "next": "Sig.",
                "last": " >| "
            }
        },
        "createdRow": function (row, data, dataIndex) {

            /*PLANES */
            if (data.PLAN == 10 || data.PLAN == 11) {
                $(row).find('td:eq(0)').css("background-color", "blue");
                $(row).find('td:eq(0)').css('color', 'white');
            }
            else {
                $(row).find('td:eq(0)').css("background-color", "green");
                $(row).find('td:eq(0)').css('color', 'white');
            }
        },
        "columns": [
            { "data": "idUsuario", "name": "idUsuario", "autoWidth": true }
            , { "data": "Nombre_USUARIO", "name": "Nombre_USUARIO", "autoWidth": true }
            , { "data": "RFC", "name": "RFC", "autoWidth": true, className: "dt-body-left" }
            , { "data": "Nombre_ESTADOS", "name": "Nombre_ESTADOS", "autoWidth": true, className: "dt-body-left" }
        ]

    });

}