using ServiciosWebDatos.ClasesExtendidas;
using ServiciosWebDatos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Cryptography;
using System.Transactions;
using System.Web.Http;

namespace ServicioApiRest.Controllers
{
    public class ExamenController : ApiController
    {
        //LISTA DE ESTADOS DE LA REPÚBLICA
        [HttpGet]
        [Route("api/GetEstado")]
        public List<spListaEstadosEXT> GetEstado()
        {
            using (PROAGROEntities db = new PROAGROEntities())
            {
                List<spListaEstados_Result> lista = db.spListaEstados().ToList();
                List<spListaEstadosEXT> lst = new List<spListaEstadosEXT>();
                foreach (var r in lista)
                {
                    spListaEstadosEXT e = new spListaEstadosEXT();
                    e.idEstados = r.idEstados;
                    e.Nombre = r.Nombre;
                    e.Abreviacion = r.Abreviacion;
                    lst.Add(e);
                }
                return lst;
            }
        }
        //LISTA DE GEORREFERENCIAS POR USUARIO
        [HttpGet]
        public List<spUbicacionesGeorreferenciasPorUsuarioExt> Get(int id)
        {
            using (PROAGROEntities db = new PROAGROEntities())
            {
                List<spUbicacionesGeorreferenciasPorUsuario_Result> lista = db.spUbicacionesGeorreferenciasPorUsuario(id).ToList();
                List<spUbicacionesGeorreferenciasPorUsuarioExt> u = new List<spUbicacionesGeorreferenciasPorUsuarioExt>();
                foreach (var r in lista)
                {
                    spUbicacionesGeorreferenciasPorUsuarioExt us = new spUbicacionesGeorreferenciasPorUsuarioExt();
                    us.idUsuario = r.idUsuario;
                    us.idEstado = r.idEstado;
                    us.Contraseña = r.Contraseña;
                    us.Nombre_USUARIO = r.Nombre_USUARIO;
                    us.Fecha_Nacimiento = r.Fecha_Nacimiento;
                    us.RFC = r.RFC;
                    us.ACTIVO = r.ACTIVO;
                    us.Nombre_ESTADOS = r.Nombre_ESTADOS;
                    us.Abreviacion = r.Abreviacion;
                    us.idGeorreferencia = r.idGeorreferencia;
                    us.idEstado_GEORREFERENCIAS = r.idEstado_GEORREFERENCIAS;
                    us.Latitud = r.Latitud;
                    us.Longitud = r.Longitud;
                    u.Add(us);
                }
                return u;
            }
        }
        //LISTA DE TODOS LOS USUATIOS 
        [HttpGet]
        [Route("api/ExamenTablaUsuarios")]
        public List<spListaUsuariosEXT> ObtenerTablaUsuarios()
        {

            using (PROAGROEntities db = new PROAGROEntities())
            {
                List<spListaUsuarios_Result> usu = db.spListaUsuarios().ToList();
                List<spListaUsuariosEXT> lst = new List<spListaUsuariosEXT>();
                foreach (var r in usu)
                {
                    spListaUsuariosEXT u = new spListaUsuariosEXT();
                    u.ACTIVO = r.ACTIVO;
                    u.idUsuario = r.idUsuario;
                    u.Nombre = r.Nombre;
                    u.Contraseña = r.Contraseña;
                    u.Fecha_Nacimiento = r.Fecha_Nacimiento;
                    lst.Add(u);
                }
                return lst;
            }
        }
        //OBTENER REGISTRO EXISTENTE EN LA BASE DE DATOS PARA HACER LOGIN 
        [HttpPost]
        public UsuarioExt ObtenerUsurio(string nombre, string contrasena)
        {

            using (PROAGROEntities db = new PROAGROEntities())
            {
                Usuarios usu = db.Usuarios.Where(x => x.Nombre == nombre && x.Contraseña == contrasena).FirstOrDefault();
                //List<Estados> est = db.Estados.ToList();
                UsuarioExt u = new UsuarioExt();
                u.idUsuario = usu.idUsuario;
                u.Nombre = usu.Nombre;
                u.RFC = usu.RFC;
                u.Fecha_Nacimiento = usu.Fecha_Nacimiento;
                u.ACTIVO = usu.ACTIVO;
                u.Contraseña = usu.Contraseña;


                //EstadosEXT e = new EstadosEXT();
                //e.idEstados = usu.Permisos;
                //e.Nombre = usu.Permisos.Estados.Nombre;
                PermisosEXT p = new PermisosEXT();
                p.idUsuario = usu.idUsuario;

                u.EntPermisos = p;

                return u;
            }
        }
        //AGREGAR USUARIOS
        [HttpPost]
        public bool AgregarUsurio(Usuarios u, int idEstado)
        {
            using (PROAGROEntities db = new PROAGROEntities())
            {
                
                db.spAgregarUsuario(u.Contraseña, u.Nombre, u.Fecha_Nacimiento, u.RFC, u.ACTIVO);
                db.SaveChanges();               
                var registroMasActualizado =db.Set<Usuarios>().OrderByDescending(t => t.idUsuario).FirstOrDefault();
                Permisos p = new Permisos()
                {
                    idEstado = idEstado,
                    idUsuario = registroMasActualizado.idUsuario
                };
                db.spAgregarPermiso(registroMasActualizado.idUsuario, idEstado, u.Fecha_Nacimiento);
                return db.SaveChanges() > 0;             

            }
        }
    }
}
