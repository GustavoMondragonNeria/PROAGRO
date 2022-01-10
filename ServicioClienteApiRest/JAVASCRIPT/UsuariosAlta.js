$(document).ready(function () {


    $('#btnInsertar').click(function () {
       
        if ($("#txtNOMBRE").val() == "") {
            Swal.fire({
                icon: 'Error',
                title: 'Oops...',
                text: 'EL CAMPO NOMBRE NO DEBE DE ESTAR VACÍO',
            })
            $("#txtNOMBRE").css('border', '1px solid #FF0000');
            return false;
        }
        else {
            $("#txtNOMBRE").css('border', '1px solid #858B8E');
        }
        if ($("#txtCONTRASEÑA").val() == "") {
            Swal.fire({
                icon: 'Error',
                title: 'Oops...',
                text: 'EL CAMPO CONTRASEÑA NO DEBE DE ESTAR VACÍO',
            })
            $("#txtCONTRASEÑA").css('border', '1px solid #FF0000');
            return false;
        }
        else {
            $("#txtCONTRASEÑA").css('border', '1px solid #858B8E');
        }
        if ($("#txtRFC").val() == "") {
            Swal.fire({
                icon: 'Error',
                title: 'Oops...',
                text: 'EL CAMPO RFC NO DEBE DE ESTAR VACÍO',
            })
            $("#txtRFC").css('border', '1px solid #FF0000');
            return false;
        }
        else {
            $("#txtRFC").css('border', '1px solid #858B8E');
        }
        if ($("#txtFECHA_ALTA").val() == "") {
            Swal.fire({
                icon: 'Error',
                title: 'Oops...',
                text: 'EL CAMPO FECHA NO DEBE DE ESTAR VACÍO',
            })
            $("#txtFECHA_ALTA").css('border', '1px solid #FF0000');
            return false;
        }
        else {
            $("#txtFECHA_ALTA").css('border', '1px solid #858B8E');
        }
        var data = {
            Nombre: $('#txtNOMBRE').val(),
            Contraseña: $('#txtCONTRASEÑA').val(),
            Fecha_Nacimiento: $('#txtFECHA_ALTA').val(),
            RFC: $('#txtRFC').val(),
            idEstado: $("#txtESTADO").val()
        }


        $.ajax({
            type: "POST",
            url: '../ExamenCliente/AgregarUsuario',
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.status == true) {
                    Swal.fire({
                        icon: 'success',
                        title: data.message,
                        showConfirmButton: true,
                    }).then(function () {
                        location.reload();
                    });

                }
                else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: data.message,
                    })
                }

            }

        })


    });

});