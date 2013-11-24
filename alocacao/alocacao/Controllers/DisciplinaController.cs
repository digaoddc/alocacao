using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Serialization;
using System.IO;

namespace alocacao.Controllers
{
    public class DisciplinaController : Controller
    {
        //
        // GET: /Disciplina/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Disciplina/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Disciplina/Create

        public ActionResult New()
        {
            return View();
        } 

        //
                
        public bool Exportar(String caminho)
        {
            try
            {
                Stream stream = new FileStream(caminho, FileMode.Create);
                XmlSerializer serializador = new XmlSerializer(typeof(DisciplinaController));
                serializador.Serialize(stream, this);
                return true;
            }
            catch
            {
                return false;
            }
        }
        
        //
        // GET: /Disciplina/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Disciplina/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Disciplina/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Disciplina/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
