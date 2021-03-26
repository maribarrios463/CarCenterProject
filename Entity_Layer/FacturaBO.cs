using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entity_Layer
{
    public class FacturaBO
    {
        [Display(Name = "Número Factura")]
        public int NUM_FACTURA { get; set; }

        [Required, Display(Name = "Fecha Factura")]
        public DateTime FECHA_FACTURA { get; set; }

        [Required, Display(Name = "Placa")]
        public string PLACA { get; set; }

        [Required, Display(Name = "Forma de Pago")]
        public string FORMA_PAGO { get; set; }

        [Required, Display(Name = "Medio de Pago")]
        public string MEDIO_PAGO { get; set; }

        [Required, Display(Name = "Iva")]
        public int IVA { get; set; }

        [Required, Display(Name = "Valor Total")]
        public long VALOR_TOTAL_FACT { get; set; }

        [Required, Display(Name = "Cliente")]
        public string NUM_IDENT_CLI { get; set; }

        [Required, Display(Name = "Servicio")]
        public int COD_SERVICIO { get; set; }

        [Required, Display(Name = "Sucursal")]
        public int COD_SUCURSAL { get; set; }
        [Required, Display(Name = "Código Vehiculo")]
        public int COD_VEHICULO { get; set; }

    }
}
