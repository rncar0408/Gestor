using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConservatorioVANew.DataAcces
{
    public class Usuario
    {
        public int idusuario { get; set; }
        public string nombreCompleto { get; set; }
        public string nombreAlumno { get; set; }
        public string email { get; set; }
        public string contraseña { get; set; }
        public int idRol { get; set; }
        public string nombreRol { get; set; }
    }
}