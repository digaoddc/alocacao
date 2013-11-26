using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using alocacao.Models;
using alocacao.Dao;

namespace alocacao.Controllers
{
    public class AlocacaoProfessorController : Controller
    {
        ProfessorDao professorDao;
        DisciplinaDao disciplinaDao;


        AlocacaoDAO alocacaoDao;
        public AlocacaoProfessorController()
        {
            this.alocacaoDao = new AlocacaoDAO();

        }

        //
        // GET: /AlocacaoProfessor/

        public ActionResult Index()
        {
            List<Alocacao> alocacoes = this.alocacaoDao.GetAll();
            return View(alocacoes);
        }


        //
        // GET: /AlocacaoProfessor/New

        public ActionResult New()
        {
            this.professorDao = new ProfessorDao();
            List<Professor> professores = this.professorDao.GetAll();
            ViewData["professor"] = professores;

            this.disciplinaDao = new DisciplinaDao();
            List<Disciplina> disciplinas = this.disciplinaDao.GetAll();
            ViewData["disciplina"] = disciplinas;

            return View();
        }

        public ActionResult Show(string id)
        {
            Alocacao alocacao = this.alocacaoDao.GetById(id);
            return View(alocacao);
        }

        public ActionResult Create(Alocacao alocacao)
        {
            this.alocacaoDao.Save(alocacao);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public ActionResult Delete(string id)
        {
            this.alocacaoDao.Delete(id);
            return RedirectToAction("Index");
        }

        public ActionResult Edit(string id)
        {
            Alocacao alocacao = this.alocacaoDao.GetById(id);
            return View(alocacao);
        }

        public ActionResult Update(Alocacao alocacao)
        {
            this.alocacaoDao.Delete(alocacao.Id.ToString());
            this.alocacaoDao.Save(alocacao);
            return RedirectToAction("Index");
        }

    }
}
