$(document).ready(function () {
  
    $("#btnIngresar").on("click", function () {
        let timerInterval
        Swal.fire({
            title: 'CARGANDO!',
            html: 'Validando credenciales.',
            timerProgressBar: true,
            onBeforeOpen: () => {
                Swal.showLoading()
                timerInterval = setInterval(() => {
                    const content = Swal.getContent()
                    if (content) {
                        const b = content.querySelector('b')
                        if (b) {
                            b.textContent = Swal.getTimerLeft()
                        }
                    }
                }, 100)
            }
        }).then((result) => {
            /* Read more about handling dismissals below */
            if (result.dismiss === Swal.DismissReason.timer) {
                console.log('I was closed by the timer')
            }
        })

        if ($("#txtUsuario").val().trim() == "" || $("#txtPassword").val().trim() == "") {
            Swal.fire({
                type: 'error',
                title: 'Ops..',
                text: 'llene los campos requeridos',
            })
            return;
        }
      
        $.ajax({
            contentType: "application/json; charset=utf-8",
            type: "POST",
            url: '../ExamenCliente/login',
            data: JSON.stringify({ Nombre: $("#txtUsuario").val(), Contraseña: $("#txtPassword").val() }),
            success: function (data) {
             
                if (data.status == false) {
                    Swal.fire({
                        type: 'error',
                        title: 'Oops...',
                        text: data.message,
                    })
                    Console.log(data.message);
                }
                else {
                    
                    switch (data) {
                        case 1:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 2:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 3:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 4:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 5:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 6:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 7:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 8:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 9:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 10:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 11:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 12:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 13:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 14:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 15:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 16:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 17:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 18:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 19:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 20:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 21:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 22:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 23:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 24:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 25:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 26:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 27:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 28:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 29:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        case 30:
                            window.location.href = '../ExamenCliente/Index';
                            break;
                        default:
                            Swal.fire({
                                type: 'error',
                                title: 'Oops...',
                                text: 'Usuario y/o Contraseña son incorrectos!',
                            })
                            break;
                    }
                }
            },
            error: function (result) {
                Swal.fire({
                    type: 'error',
                    title: 'Ops..',
                    text: 'Ocurrio el siguiente error ' + result + '',
                });
            }
        });
    });
});