using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegSucursal
    {
        public string Actualizar(SucursalBO dto)
        {
            daoSucursal dao = new daoSucursal();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoSucursal dao = new daoSucursal();
            return dao.Eliminar(dto);
        }
        public string Insert(SucursalBO dto)
        {
            daoSucursal dao = new daoSucursal();
            return dao.Insertar(dto);
        }
        public List<SucursalBO> Listar()
        {
            daoSucursal dao = new daoSucursal();
            return dao.Listar();
        }

    }
}
