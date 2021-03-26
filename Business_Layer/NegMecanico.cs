using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegMecanico
    {
        public string Actualizar(MecanicoBO dto)
        {
            daoMecanico dao = new daoMecanico();
            return dao.Actualizar(dto);
        }

        public string Eliminar(string dto)
        {
            daoMecanico dao = new daoMecanico();
            return dao.Eliminar(dto);
        }
        public string Insert(MecanicoBO dto)
        {
            daoMecanico dao = new daoMecanico();
            return dao.Insertar(dto);
        }
        public List<MecanicoBO> Listar()
        {
            daoMecanico dao = new daoMecanico();
            return dao.Listar();
        }
    }
}
