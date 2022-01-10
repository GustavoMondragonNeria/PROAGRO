using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using ServicioWebDominio;
using System.Net.Http.Formatting;
using System.Web.Security;

namespace ServicioClienteApiRest.Controllers
{
    public class ExamenClienteController : Controller
    {
        // GET: ExamenCliente
        //VISTA INDEX
        public ActionResult Index()
        {
            return View();
        }
        //VISTA LOGIN
        public ActionResult LoginView()
        {
            return View();
        }
        //VISTA DEL MAPA QUE MUESTRA LOS MARCADORES DE LAS GEORREFERENCIAS
        public ActionResult ViewGeorreferencias()
        {
            return View();
        }
        //VISTA DE TODOS LOS USUARIOS
        public ActionResult ViewTablaUsuario()
        {
            return View();
        }
        //FORMULARIO PARA AGREGAR NUEVOS USUARIOS
        public ActionResult AgregarUsuarios()
        {
            return View();
        }
        //MÉTODO PARA SALIR DEL LOGIN
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            Session["User"] = null;
            return RedirectToAction("LoginView", "ExamenCliente");
        }      
        //CONSUMO DE API MÉTODO QUE TE DEVUELVE LAS GEORREFERENCIAS POR USUARIO LOGEADO
        public ActionResult ListaGeorreferenciass(int id)
        {
            JsonResult result = new JsonResult();
            var ids = Session["User"];
            
            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.GetAsync("api/Examen?id=" + id + "").Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        List<spUbicacionesGeorreferenciasPorUsuarioExtDominio> listado = JsonConvert.DeserializeObject<List<spUbicacionesGeorreferenciasPorUsuarioExtDominio>>(resultString);
                        return View("ViewGeorreferencias", listado);
                    }
                    return View();
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }      
        //MÉTODO PARA HACER LOGIN Y SABER SI EL USUARIO EXISTE Y LA CONTRASEÑA EXISTE
        public ActionResult login(UsuarioExt usuario)
        {
            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.PostAsync("api/Examen?nombre=" + usuario.Nombre + "&contrasena=" + usuario.Contraseña + "", usuario, new JsonMediaTypeFormatter()).Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        var oUser = JsonConvert.DeserializeObject<UsuarioExt>(resultString);

                        if (oUser != null)
                        {
                            if (oUser.ACTIVO == true)
                            {
                                if (oUser.Nombre != null)
                                {
                                    Session["User"] = oUser;
                                    switch (oUser.idUsuario)
                                    {
                                        case 1:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(1);
                                        case 2:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(2);
                                        case 3:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(3);
                                        case 4:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(4);
                                        case 5:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(5);
                                        case 6:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(6);
                                        case 7:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(7);
                                        case 8:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(8);
                                        case 9:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(9);
                                        case 10:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(10);
                                        case 11:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(11);
                                        case 12:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(12);
                                        case 13:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(13);
                                        case 14:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(14);
                                        case 15:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(15);
                                        case 16:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(16);
                                        case 17:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(17);
                                        case 18:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(18);
                                        case 19:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(19);
                                        case 20:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(20);
                                        case 21:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(21);
                                        case 22:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(22);
                                        case 23:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(23);
                                        case 24:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(24);
                                        case 25:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(25);
                                        case 26:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(26);
                                        case 27:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(27);
                                        case 28:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(28);
                                        case 29:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(29);
                                        case 30:
                                            // lo mas seguro es que aqui es donde este tronando... y puede ser por que dice (sitio web no seguro) - cuando este en productivo
                                            FormsAuthentication.SetAuthCookie(oUser.Nombre, false);
                                            return Json(30);
                                        default:
                                            return Json(0);
                                    }
                                }
                                else
                                {
                                    return Json(new { status = false, message = "CONTRASEÑA INCORRECTA" }, JsonRequestBehavior.AllowGet);
                                }
                            }
                            else
                            {
                                return Json(404);
                            }
                        }
                        else
                        {
                            return Json(new { status = false, message = "USUARIO INCORRECTO" }, JsonRequestBehavior.AllowGet);
                        }
                    }
                    else
                    {
                        return Json(404);
                    }
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }
        //MÉTODO PARA AGREGAR NUEVOS USUARIOS
        public ActionResult AgregarUsuario(UsuarioExt usuario, int idEstado)
        {
            usuario.ACTIVO = true;
            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.PostAsync("api/Examen?idEstado=" + idEstado, usuario, new JsonMediaTypeFormatter()).Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        var correcto = JsonConvert.DeserializeObject<bool>(resultString);
                        return Json(new { status = true, message = "ÉXITO!" }, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        return Json(new { status = false, message = "Error Inesperado" }, JsonRequestBehavior.AllowGet);
                    }
                   
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }
        //MÉTODO QUE DEVUELVE UNA LISTA DE TODOS LOS USUARIOS
        public ActionResult TablaUsuarios()
        {
            JsonResult result = new JsonResult();
            var ids = Session["User"];

            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.GetAsync("api/ExamenTablaUsuarios").Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        List<spListaUsuariosDominio> listado = JsonConvert.DeserializeObject<List<spListaUsuariosDominio>>(resultString);
                        return View("ViewTablaUsuario", listado);
                    }
                    return View();
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }    
        //MÉTODO PARA RECUPERAR LAS GEORREFERENCIAS Y UTILIZAR API DE GOOGLE MAP
        public ActionResult ListaGeorreferenciass2(int id)
            {
            JsonResult result = new JsonResult();
            var ids = Session["User"];

            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.GetAsync("api/Examen?id=" + id + "").Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        List<spUbicacionesGeorreferenciasPorUsuarioExtDominio> listado = JsonConvert.DeserializeObject<List<spUbicacionesGeorreferenciasPorUsuarioExtDominio>>(resultString);
                        //return View("ViewGeorreferencias", listado);
                        return Json(new { status = true, Items = listado }, JsonRequestBehavior.AllowGet);
                    }
                    return View();
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }
        //MÉTODO QUE OBTIENE UNA LISTA DE ESTADOS
        public ActionResult ListaEstados()
        {
            try
            {
                using (HttpClient clienteHttp = new HttpClient())//instancia del servicio rest
                {
                    clienteHttp.BaseAddress = new Uri("https://localhost:44325/");//URL de donde va a consumir el servicio rest(EndPoint)
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;//para poder conectar a un https
                    var request = clienteHttp.GetAsync("api/GetEstado").Result;
                    if (request.IsSuccessStatusCode)
                    {
                        var resultString = request.Content.ReadAsStringAsync().Result;//regresa un Json en un tipo string (Serealizar)
                        List<spListaEstadosDominio> listado = JsonConvert.DeserializeObject<List<spListaEstadosDominio>>(resultString);
                        return Json(new { status = true, Items = listado }, JsonRequestBehavior.AllowGet);
                    }
                    return View();
                }
            }
            catch (Exception ex)
            {
                TempData["error"] = ex.Message;
                return View();
            }
        }





    }
}