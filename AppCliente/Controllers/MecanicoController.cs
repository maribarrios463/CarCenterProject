using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Controllers
{
    public class MecanicoController : Controller
    {
        // GET: Mecanico
        [HttpPost]
        public ActionResult InsertMecanico(MecanicoBO dto)
        {
            NegMecanico obj = new NegMecanico();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(MecanicoBO dto)
        {
            NegMecanico obj = new NegMecanico();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string DNI)
        {
            NegMecanico obj = new NegMecanico();
            obj.Eliminar(DNI);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegMecanico obj = new NegMecanico();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(string DNI)
        {
            List<SelectListItem> lst = new List<SelectListItem>();

            lst.Add(new SelectListItem() { Text = "Cédula de ciudadania", Value = "CC" });
            lst.Add(new SelectListItem() { Text = "Cédula de extranjeria", Value = "CE" });
            lst.Add(new SelectListItem() { Text = "Nit", Value = "NIT" });
            lst.Add(new SelectListItem() { Text = "Pasaporte", Value = "PAP" });
            lst.Add(new SelectListItem() { Text = "Tarjeta de identidad", Value = "TI" });

            List<SelectListItem> lstestados = new List<SelectListItem>();
            lstestados.Add(new SelectListItem() { Text = "ACTIVO", Value = "ACTIVO" });
            lstestados.Add(new SelectListItem() { Text = "INACTIVO", Value = "INACTIVO" });

            ViewBag.Opciones = lst;
            ViewBag.Estados = lstestados;
            NegMecanico obj = new NegMecanico();
            MecanicoBO dto = obj.Listar().FirstOrDefault(a => a.NUM_IDENT_MEC == DNI);
            return View("update", dto);
        }

        public ActionResult InsertMecanico()
        {
            List<SelectListItem> lst = new List<SelectListItem>();

            lst.Add(new SelectListItem() { Text = "Cédula de ciudadania", Value = "CC" });
            lst.Add(new SelectListItem() { Text = "Cédula de extranjeria", Value = "CE" });
            lst.Add(new SelectListItem() { Text = "Nit", Value = "NIT" });
            lst.Add(new SelectListItem() { Text = "Pasaporte", Value = "PAP" });
            lst.Add(new SelectListItem() { Text = "Tarjeta de identidad", Value = "TI" });

            List<SelectListItem> lstestados = new List<SelectListItem>();
            lstestados.Add(new SelectListItem() { Text = "ACTIVO", Value = "ACTIVO" });

            ViewBag.Opciones = lst;
            ViewBag.Estados = lstestados;
            return View("InsertMecanico", new MecanicoBO());
        }

    }
}