using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Views.Almacen
{
    public class AlmacenController : Controller
    {
        // GET: Almacen
        [HttpPost]
        public ActionResult InsertAlmacen(AlmacenBO dto)
        {
            NegAlmacen obj = new NegAlmacen();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(AlmacenBO dto)
        {
            NegAlmacen obj = new NegAlmacen();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string AlmacenID)
        {
            NegAlmacen obj = new NegAlmacen();
            obj.Eliminar(AlmacenID);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegAlmacen obj = new NegAlmacen();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(int AlmacenID)
        {
            NegAlmacen obj = new NegAlmacen();
            AlmacenBO dto = obj.Listar().FirstOrDefault(a => a.COD_SUCURSAL == AlmacenID);
            return View("update", dto);
        }

        public ActionResult InsertAlmacen()
        {
            return View("InsertAlmacen", new AlmacenBO());
        }

    }
}