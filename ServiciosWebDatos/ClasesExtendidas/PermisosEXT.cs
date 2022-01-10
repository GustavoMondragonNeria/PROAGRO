using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiciosWebDatos.ClasesExtendidas
{
   public class PermisosEXT
    {
        public int idUsuario { get; set; }
        public int idEstado { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }

        public EstadosEXT EntEstados { get; set; }
        public virtual UsuarioExt EntUsuarios { get; set; }
    }
}
