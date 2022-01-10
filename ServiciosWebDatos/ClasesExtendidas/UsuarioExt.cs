﻿using ServiciosWebDatos.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWebDatos.ClasesExtendidas
{
   public class UsuarioExt
    {
        public int idUsuario { get; set; }
        public string Contraseña { get; set; }
        public string Nombre { get; set; }
        public System.DateTime Fecha_Nacimiento { get; set; }
        public string RFC { get; set; }
        public bool ACTIVO { get; set; }

        public PermisosEXT EntPermisos { get; set; }
    }
}
