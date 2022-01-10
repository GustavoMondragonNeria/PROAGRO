using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWebDatos.ClasesExtendidas
{
   public class spUbicacionesGeorreferenciasPorUsuarioExt
    {
        public int idUsuario { get; set; }
        public int idEstado { get; set; }
        public int idUsuario_USUARIO { get; set; }
        public string Contraseña { get; set; }
        public string Nombre_USUARIO { get; set; }
        public System.DateTime Fecha_Nacimiento { get; set; }
        public string RFC { get; set; }
        public bool ACTIVO { get; set; }
        public int idEstados { get; set; }
        public string Nombre_ESTADOS { get; set; }
        public string Abreviacion { get; set; }
        public int idGeorreferencia { get; set; }
        public int idEstado_GEORREFERENCIAS { get; set; }
        public double Latitud { get; set; }
        public double Longitud { get; set; }
    }
}
