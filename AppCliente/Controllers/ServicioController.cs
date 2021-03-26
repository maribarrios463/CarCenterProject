using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Controllers
{
    public class ServicioController : Controller
    {
        // GET: Servicio
        [HttpPost]
        public ActionResult InsertServicio(ServicioBO dto)
        {
            NegServicio obj = new NegServicio();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(ServicioBO dto)
        {
            NegServicio obj = new NegServicio();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(int COD_SERVICIO)
        {
            NegServicio obj = new NegServicio();
            obj.Eliminar(COD_SERVICIO.ToString());
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegServicio obj = new NegServicio();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(int COD_SERVICIO)
        {
            List<SelectListItem> lstmecanicos = new List<SelectListItem>();
            foreach (var item in getMecanico())
            {
                lstmecanicos.Add(new SelectListItem() { Text = String.Concat(item.PRIMER_NOMBRE, " ", item.PRIMER_APELLIDO), Value = item.NUM_IDENT_MEC.ToString() });
            }

            ViewBag.mecanicos = lstmecanicos;
            NegServicio obj = new NegServicio();
            ServicioBO dto = obj.Listar().FirstOrDefault(a => a.COD_SERVICIO == COD_SERVICIO);
            return View("update", dto);
        }

        public ActionResult InsertServicio()
        {
            List<SelectListItem> lstmecanicos = new List<SelectListItem>();
            foreach (var item in getMecanico())
            {
                lstmecanicos.Add(new SelectListItem() { Text = String.Concat(item.PRIMER_NOMBRE, " ", item.PRIMER_APELLIDO), Value = item.NUM_IDENT_MEC.ToString() });
            }

            ViewBag.mecanicos = lstmecanicos;
            return View("InsertServicio", new ServicioBO());
        }

        private List<MecanicoBO> getMecanico()
        {
            NegMecanico obj = new NegMecanico();
            return obj.Listar();
        }
    }
}