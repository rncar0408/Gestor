//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConservatorioVANew.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Alumno
    {
        public int idAlumno { get; set; }
        public string nombreAlumno { get; set; }
        public System.DateTime fechaAlta { get; set; }
        public Nullable<System.DateTime> fechaBaja { get; set; }
        public Nullable<bool> activo { get; set; }
        public int idInstrumento { get; set; }
        public int idProfesor { get; set; }
        public Nullable<int> idUsuario { get; set; }
    
        public virtual Instrumento Instrumento { get; set; }
        public virtual Profesor Profesor { get; set; }
    }
}
