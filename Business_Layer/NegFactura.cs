using DataAccess;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business_Layer
{
    public class NegFactura
    {
        public string Insert(FacturaBO dto)
        {
            daoFactura dao = new daoFactura();
            return dao.InsertarFactura(dto);
        }

        public string InsertDetalleProd(Factura_ProductoBO dto)
        {
            daoFactura dao = new daoFactura();
            return dao.InsertarDetalleProducto(dto);
        }

        public string InsertDetalleServ(Factura_ServicioBO dto)
        {
            daoFactura dao = new daoFactura();
            return dao.InsertarDetalleServicio(dto);
        }


        public List<FacturaBO> Listar()
        {
            daoFactura dao = new daoFactura();
            return dao.Listar();
        }
    }
}
