﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;


namespace Entity_Layer
{
    public class VehiculoBO
    {
        [Display(Name = "Código Vehiculo")]
        public int COD_VEHICULO { get; set; }
        [Required, Display(Name = "Tipo")]
        public string NOMBRE { get; set; }
        [Required, Display(Name = "Modelo")]
        public string MODELO { get; set; }
        [Display(Name = "Marca")]
        public string MARCA { get; set; }
       
    }
}