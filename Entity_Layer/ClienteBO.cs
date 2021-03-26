using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity_Layer
{
   public class ClienteBO
    {
        [Required, Display(Name = "Identificación")]
        public string NUM_IDENT_CLI { get; set; }
        [Required, Display(Name = "Tipo de Identificación")]
        public string TIPO_IDENT_CLI { get; set; }
        [Required, Display(Name = "Primer Nombre")]
        public string PRIMER_NOMBRE { get; set; }
        [Display(Name = "Segundo Nombre")]
        public string SEGUNDO_NOMBRE { get; set; }
        [Required, Display(Name = "Primer Apellido")]
        public string PRIMER_APELLIDO { get; set; }
        [Display(Name = "Segundo Apellido")]
        public string SEGUNDO_APELLIDO { get; set; }
        [Required, Display(Name = "Telefono")]
        public int NUMERO_CONTACTO { get; set; }
        [Required, Display(Name = "Dirección")]
        public string DIRECCION { get; set; }
        [Required, Display(Name = "Correo Electronico")]
        public string CORREO_ELECTRONICO { get; set; }
    }
}
