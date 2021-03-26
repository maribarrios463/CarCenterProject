using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegProducto
    {
        public string Actualizar(ProductoBO dto)
        {
            daoProducto dao = new daoProducto();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoProducto dao = new daoProducto();
            return dao.Eliminar(dto);
        }
        public string Insert(ProductoBO dto)
        {
            daoProducto dao = new daoProducto();
            return dao.Insertar(dto);
        }
        public List<ProductoBO> Listar()
        {
            daoProducto dao = new daoProducto();
            return dao.Listar();
        }
    }
}
