using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace Entity_Layer
{
    public class VehiculoBO
    {
        [Display(Name = "Placa")]
        public int PLACA { get; set; }
        [Required, Display(Name = "Tipo")]
        public string TIPO_VEHICULO { get; set; }
        [Required, Display(Name = "Modelo")]
        public string MODELO { get; set; }
        [Display(Name = "Marca")]
        public string MARCA { get; set; }
        [Display(Name = "Número Motor")]
        public string NUM_MOTOR { get; set; }
        

    }
}
