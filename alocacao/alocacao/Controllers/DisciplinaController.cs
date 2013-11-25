using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using alocacao.Models;
using alocacao.Dao;

namespace alocacao.Controllers
{
    public class DisciplinaController : Controller
    {
        DisciplinaDao disciplinaDao;
        public DisciplinaController()
        {
            this.disciplinaDao = new DisciplinaDao();

        }
        //
        // GET: /Professor/

        public ActionResult Index()
        {
            List<Disciplina> disciplinas = this.disciplinaDao.GetAll();
            return View(disciplinas);
        }

        public ActionResult New()
        {
            return View();
        }

        public ActionResult Show(string id)
        {
            Disciplina disciplina = this.disciplinaDao.GetById(id);
            return View(disciplina);
        }

        public ActionResult Create(Disciplina disciplina)
        {
            this.disciplinaDao.Save(disciplina);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Delete(string id)
        {
            this.disciplinaDao.Delete(id);
            return RedirectToAction("Index");
        }

        public ActionResult Edit(string id)
        {
            Disciplina disciplina = this.disciplinaDao.GetById(id);
            return View(disciplina);
        }

        public ActionResult Update(Disciplina disciplina)
        {
            this.disciplinaDao.Delete(disciplina.Id.ToString());
            this.disciplinaDao.Save(disciplina);
            return RedirectToAction("Index");
        }

    }
}
