using Business_Layer;
using Entity_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AppCliente.Controllers
{
    public class ProductoController : Controller
    {
        // GET: Producto
        [HttpPost]
        public ActionResult InsertProducto(ProductoBO dto)
        {
            NegProducto obj = new NegProducto();
            obj.Insert(dto);
            return RedirectToAction("Listar");
        }

        [HttpPost]
        public ActionResult Update(ProductoBO dto)
        {
            NegProducto obj = new NegProducto();
            obj.Actualizar(dto);
            return RedirectToAction("Listar");
        }


        public ActionResult Delete(string PRODUCTO)
        {
            NegProducto obj = new NegProducto();
            obj.Eliminar(PRODUCTO);
            return RedirectToAction("Listar");
        }

        public ActionResult Listar()
        {
            NegProducto obj = new NegProducto();
            return View(obj.Listar());
        }

        [HttpGet]
        public ActionResult Update(string producto)
        {
            NegProducto obj = new NegProducto();
            ProductoBO dto = obj.Listar().FirstOrDefault(a => a.NOMBRE_PRODUCTO == producto);
            return View("update", dto);
        }

        public ActionResult InsertProducto()
        {
            return View("InsertProducto", new ProductoBO());
        }
    }
}