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


        public ActionResult Delete(string Placa)
        {
            NegVehiculo obj = new NegVehiculo();
            obj.Eliminar(Placa);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegVehiculo obj = new NegVehiculo();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(string Placa)
        {
            List<SelectListItem> lst = new List<SelectListItem>();

            lst.Add(new SelectListItem() { Text = "Automóvil", Value = "Automóvil" });
            lst.Add(new SelectListItem() { Text = "Camioneta", Value = "Camioneta" });
            lst.Add(new SelectListItem() { Text = "Van", Value = "Van" });
            lst.Add(new SelectListItem() { Text = "Cuatrimoto", Value = "Cuatrimoto" });
            lst.Add(new SelectListItem() { Text = "Moto", Value = "Moto" });

            ViewBag.Opciones = lst;
            NegVehiculo obj = new NegVehiculo();
            VehiculoBO dto = obj.Listar().FirstOrDefault(a => a.PLACA == Placa);
            return View("update", dto);
        }

        public ActionResult InsertVehiculo()
        {
            List<SelectListItem> lst = new List<SelectListItem>();

            lst.Add(new SelectListItem() { Text = "Automóvil", Value = "Automóvil" });
            lst.Add(new SelectListItem() { Text = "Camioneta", Value = "Camioneta" });
            lst.Add(new SelectListItem() { Text = "Van", Value = "Van" });
            lst.Add(new SelectListItem() { Text = "Cuatrimoto", Value = "Cuatrimoto" });
            lst.Add(new SelectListItem() { Text = "Moto", Value = "Moto" });

            ViewBag.Opciones = lst;
            return View("InsertVehiculo", new VehiculoBO());
        }
    }
}