using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using alocacao.Models;
using alocacao.Dao;

namespace alocacao.Controllers
{
    public class ProfessorController : Controller
    {
        ProfessorDao professorDao;
        public ProfessorController()
        {
            this.professorDao = new ProfessorDao();
        }
        //
        // GET: /Professor/

        public ActionResult Index()
        {
            List<Professor> professores = this.professorDao.GetAll();
            return View(professores);
        }

        public ActionResult New()
        {
            return View();
        }

        public ActionResult Show(string id)
        {
            Professor professor = this.professorDao.GetById(id);
            return View(professor);
        }

        public ActionResult Create(Professor professor)
        {
            this.professorDao.Save(professor);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Delete(string id)
        {
            this.professorDao.Delete(id);
            return RedirectToAction("Index");
        }

        public ActionResult Edit(string id)
        {
            Professor professor = this.professorDao.GetById(id);
            return View(professor);
        }

        public ActionResult Update(Professor professor)
        {
            this.professorDao.Delete(professor.Id.ToString());
            this.professorDao.Save(professor);
            return RedirectToAction("Index");
        }

    }
}
