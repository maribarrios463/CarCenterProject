using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegServicio
    {
        public string Actualizar(ServicioBO dto)
        {
            daoServicio dao = new daoServicio();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoServicio dao = new daoServicio();
            return dao.Eliminar(dto);
        }
        public string Insert(ServicioBO dto)
        {
            daoServicio dao = new daoServicio();
            return dao.Insertar(dto);
        }
        public List<ServicioBO> Listar()
        {
            daoServicio dao = new daoServicio();
            return dao.Listar();
        }
    }
}
