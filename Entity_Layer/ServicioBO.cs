using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entity_Layer
{
    public class ServicioBO
    {
        [Display(Name = "Código Servicio")]
        public int COD_SERVICIO { get; set; }

        [Display(Name = "Número de identificación")]
        public string NUM_IDENT_MEC { get; set; }

        [Required, Display(Name = "Valor Mano Obra")]
        public long VALOR_MANO_OBRA { get; set; }

        [Required, Display(Name = "Descuento")]
        public long DESCUENTO { get; set; }

        [Display(Name = "Observación")]
        public string OBSERVACION { get; set; }
    }
}
