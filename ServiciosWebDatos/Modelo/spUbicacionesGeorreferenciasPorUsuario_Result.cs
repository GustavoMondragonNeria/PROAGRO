//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServiciosWebDatos.Modelo
{
    using System;
    
    public partial class spUbicacionesGeorreferenciasPorUsuario_Result
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
