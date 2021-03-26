using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Utils
{

    public enum V_ACCION { C = 'C', R = 'R', U = 'U', D = 'D' }

    public class providerStoreProcedures
    {
        private const string packageName = "PKG_CAR_CENTER_PROJECT.";

        public string spNameClient = String.Concat(packageName, "PRC_CRUD_CLINTE_CARCENTER");

        public string spNameMecanico = String.Concat(packageName, "PRC_CRUD_MECAN_CARCENTER");

        public string spNameSucursal = String.Concat(packageName, "PRC_CRUD_SUCURSAL_CARCENTER");

        public string spNameProducto = String.Concat(packageName, "PRC_CRUD_PRODUCTO_CARCENTER");

        public string spNameVehiculo = String.Concat(packageName, "PRC_CRUD_VEHICULO_CARCENTER");

        public string spNameServicio = String.Concat(packageName, "PRC_CRUD_DESC_SERVI_CARCENTER");

        public string spNameFactura = String.Concat(packageName, "PRC_CRUD_FACTURA_CARCENTER");

        public string spNameDetalleProd = String.Concat(packageName, "PRC_DETALLE_PROD_CARCENTER");

        public string spNameDetalleServ = String.Concat(packageName, "PRC_DETALLE_SER_CARCENTER");

        public string spNameActualizarValoresFact = String.Concat(packageName, "PRC_VALOR_FIN_MANTENIMIENTO");
    }
}
