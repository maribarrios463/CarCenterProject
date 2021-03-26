using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entity_Layer
{
    public class ProductoBO
    {
        [Display(Name = "Código Producto")]
        public int COD_PRODUCTO { get; set; }
        [Required, Display(Name = "Nombre")]
        public string NOMBRE_PRODUCTO { get; set; }
        [Required, Display(Name = "Valor Unitario")]
        public long VALOR_UNITARIO { get; set; }
        [Required, Display(Name = "Cantidad")]
        public int CANTIDAD_PROD { get; set; }
        [Required, Display(Name = "Descuento")]
        public int DESCUENTO { get; set; }
    }
}
