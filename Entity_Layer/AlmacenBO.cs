using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entity_Layer
{
    public class AlmacenBO
    {
        [Display(Name = "Código Sucursal")]
        public int COD_SUCURSAL { get; set; }
        [Required, Display(Name = "Nombre Almacen")]
        public string NOMBRE_ALMACEN { get; set; }
        [Required, Display(Name = "Dirección")]
        public string DIRECCION { get; set; }
        [Display(Name = "Telefono Contacto")]
        public int TELEFONO_CONTACTO { get; set; }
        [Required, Display(Name = "Ciudad")]
        public string CIUDAD { get; set; }
    }
}
