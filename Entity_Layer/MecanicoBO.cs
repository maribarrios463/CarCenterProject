using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entity_Layer
{
    public class MecanicoBO
    {
        [Required, Display(Name = "Número de identificación")]
        public string NUM_IDENT_MEC { get; set; }
        [Required, Display(Name = "Tipo de identificación")]
        public string TIPO_IDENT_MEC { get; set; }
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
        [Required, Display(Name = "Estado")]
        public string ESTADO_MECANICO_RESP { get; set; }
    }
}
