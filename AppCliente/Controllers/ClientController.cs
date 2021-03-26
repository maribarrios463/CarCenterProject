using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using Business_Layer;
using Entity_Layer;
using Microsoft.AspNetCore.Mvc;

namespace AppClient.Controllers
{
    public class ClientController : Controller
    {
        // GET: Cliente
        [HttpPost]
        public ActionResult InsertClient(ClienteBO dto)
        {
            NegCliente obj = new NegCliente();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(ClienteBO dto)
        {
            NegCliente obj = new NegCliente();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string DNI)
        {
            NegCliente obj = new NegCliente();
            obj.Eliminar(DNI);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegCliente obj = new NegCliente();
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

            ViewBag.Opciones = lst;
            NegCliente obj = new NegCliente();
            ClienteBO dto = obj.Listar().FirstOrDefault(a => a.NUM_IDENT_CLI == DNI);
            return View("update", dto);
        }

        public ActionResult InsertClient()
        {
            List<SelectListItem> lst = new List<SelectListItem>();

            lst.Add(new SelectListItem() { Text = "Cédula de ciudadania", Value = "CC" });
            lst.Add(new SelectListItem() { Text = "Cédula de extranjeria", Value = "CE" });
            lst.Add(new SelectListItem() { Text = "Nit", Value = "NIT" });
            lst.Add(new SelectListItem() { Text = "Pasaporte", Value = "PAP" });
            lst.Add(new SelectListItem() { Text = "Tarjeta de identidad", Value = "TI" });

            ViewBag.Opciones = lst;
            return View("InsertClient", new ClienteBO());
        }


    }
}
