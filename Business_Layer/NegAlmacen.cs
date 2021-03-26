using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegAlmacen
    {
        public string Actualizar(AlmacenBO dto)
        {
            daoAlmacen dao = new daoAlmacen();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoAlmacen dao = new daoAlmacen();
            return dao.Eliminar(dto);
        }
        public string Insert(AlmacenBO dto)
        {
            daoAlmacen dao = new daoAlmacen();
            return dao.Insertar(dto);
        }
        public List<AlmacenBO> Listar()
        {
            daoAlmacen dao = new daoAlmacen();
            return dao.Listar();
        }

    }
}
