using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Controllers
{
    public class FacturaController : Controller
    {
        // GET: Factura
        public ActionResult Listar()
        {
            NegFactura obj = new NegFactura();
            return View(obj.Listar());
        }

        [HttpPost]
        public ActionResult InsertFactura(FacturaBO dto)
        {
            NegFactura obj = new NegFactura();
            obj.Insert(dto);
            return RedirectToAction("InsertDetalleProd");
        }

        public ActionResult InsertFactura()
        {
            List<SelectListItem> lstvehiculos = new List<SelectListItem>();
            foreach (var item in getVehiculo())
            {
                lstvehiculos.Add(new SelectListItem() { Text = String.Concat(item.PLACA), Value = item.PLACA.ToString() });
            }

            List<SelectListItem> lstfp = new List<SelectListItem>();

            lstfp.Add(new SelectListItem() { Text = "Contado", Value = "Contado" });
            lstfp.Add(new SelectListItem() { Text = "Crédito", Value = "Crédito" });

            List<SelectListItem> lstmp = new List<SelectListItem>();

            lstmp.Add(new SelectListItem() { Text = "Efectivo", Value = "Efectivo" });
            lstmp.Add(new SelectListItem() { Text = "Tarjeta de Crédito", Value = "Tarjeta de Crédito" });
            lstmp.Add(new SelectListItem() { Text = "Tarjeta de Débito", Value = "Tarjeta de Débito" });
            lstmp.Add(new SelectListItem() { Text = "PSE", Value = "PSE" });

            List<SelectListItem> lstClientes = new List<SelectListItem>();
            foreach (var item in getClientes())
            {
                lstClientes.Add(new SelectListItem() { Text = String.Concat(item.PRIMER_NOMBRE, " ", item.PRIMER_APELLIDO), Value = item.NUM_IDENT_CLI.ToString() });
            }

            List<SelectListItem> lstSucursales = new List<SelectListItem>();
            foreach (var item in getSucursals())
            {
                lstSucursales.Add(new SelectListItem() { Text = item.NOMBRE_ALMACEN, Value = item.COD_SUCURSAL.ToString() });
            }

            ViewBag.formaspago = lstfp;
            ViewBag.mediospago = lstmp;
            ViewBag.vehiculos = lstvehiculos;
            ViewBag.clientes = lstClientes;
            ViewBag.sucursales = lstSucursales;
            return View("InsertFactura", new FacturaBO());
        }

        private List<VehiculoBO> getVehiculo()
        {
            NegVehiculo obj = new NegVehiculo();
            return obj.Listar();
        }
        private List<ClienteBO> getClientes()
        {
            NegCliente obj = new NegCliente();
            return obj.Listar();
        }
        private List<SucursalBO> getSucursals()
        {
            NegSucursal obj = new NegSucursal();
            return obj.Listar();
        }

        [HttpPost]
        public ActionResult InsertDetalleProd(Factura_ProductoBO dto)
        {
            NegFactura obj = new NegFactura();
            obj.InsertDetalleProd(dto);
            return RedirectToAction("InsertDetalleServ");
        }

        public ActionResult InsertDetalleProd()
        {
            List<SelectListItem> lstProductos = new List<SelectListItem>();
            foreach (var item in getProductos())
            {
                lstProductos.Add(new SelectListItem() { Text = item.NOMBRE_PRODUCTO, Value = item.COD_PRODUCTO.ToString() });
            }

            ViewBag.productos = lstProductos;
            return View("InsertDetalleProd", new Factura_ProductoBO());
        }

        private List<ProductoBO> getProductos()
        {
            NegProducto obj = new NegProducto();
            return obj.Listar();
        }

        [HttpPost]
        public ActionResult InsertDetalleServ(Factura_ServicioBO dto)
        {
            NegFactura obj = new NegFactura();
            obj.InsertDetalleServ(dto);

            return RedirectToAction("Listar");
        }

        public ActionResult InsertDetalleServ()
        {
            List<SelectListItem> lstServicios = new List<SelectListItem>();
            foreach (var item in getServicios())
            {
                lstServicios.Add(new SelectListItem() { Text = item.OBSERVACION, Value = item.COD_SERVICIO.ToString() });
            }

            ViewBag.servicios = lstServicios;
            return View("InsertDetalleServ", new Factura_ServicioBO());
        }

        private List<ServicioBO> getServicios()
        {
            NegServicio obj = new NegServicio();
            return obj.Listar();
        }
    }
}