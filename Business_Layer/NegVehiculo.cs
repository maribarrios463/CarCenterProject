using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegVehiculo
    {
        public string Actualizar(VehiculoBO dto)
        {
            daoVehiculo dao = new daoVehiculo();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoVehiculo dao = new daoVehiculo();
            return dao.Eliminar(dto);
        }
        public string Insert(VehiculoBO dto)
        {
            daoVehiculo dao = new daoVehiculo();
            return dao.Insertar(dto);
        }
        public List<VehiculoBO> Listar()
        {
            daoVehiculo dao = new daoVehiculo();
            return dao.Listar();
        }

    }
}
