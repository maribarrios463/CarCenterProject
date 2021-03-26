using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Views.Sucursal
{
    public class SucursalController : Controller
    {
        // GET: Almacen
        [HttpPost]
        public ActionResult InsertSucursal(SucursalBO dto)
        {
            NegSucursal obj = new NegSucursal();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(SucursalBO dto)
        {
            NegSucursal obj = new NegSucursal();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string AlmacenID)
        {
            NegSucursal obj = new NegSucursal();
            obj.Eliminar(AlmacenID);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegSucursal obj = new NegSucursal();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(int AlmacenID)
        {
            NegSucursal obj = new NegSucursal();
            SucursalBO dto = obj.Listar().FirstOrDefault(a => a.COD_SUCURSAL == AlmacenID);
            return View("update", dto);
        }

        public ActionResult InsertSucursal()
        {
            return View("InsertSucursal", new SucursalBO());
        }

    }
}