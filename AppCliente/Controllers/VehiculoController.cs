using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Controllers
{
    public class VehiculoController : Controller
    {
        // GET: Vehiculo
        [HttpPost]
        public ActionResult InsertVehiculo(VehiculoBO dto)
        {
            NegVehiculo obj = new NegVehiculo();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(VehiculoBO dto)
        {
            NegVehiculo obj = new NegVehiculo();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string CodVehiculo)
        {
            NegVehiculo obj = new NegVehiculo();
            obj.Eliminar(CodVehiculo);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegVehiculo obj = new NegVehiculo();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(int CodVehiculo)
        {
            NegVehiculo obj = new NegVehiculo();
            VehiculoBO dto = obj.Listar().FirstOrDefault(a => a.COD_VEHICULO == CodVehiculo);
            return View("update", dto);
        }

        public ActionResult InsertVehiculo()
        {
            return View("InsertVehiculo", new VehiculoBO());
        }
    }
}