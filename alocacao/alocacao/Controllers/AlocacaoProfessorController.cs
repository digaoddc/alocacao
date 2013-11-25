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


        //
        // GET: /AlocacaoProfessor/

        public ActionResult Index()
        {
            return View();
        }


        //
        // GET: /AlocacaoProfessor/New

        public ActionResult New()
        {
            this.professorDao = new ProfessorDao();
            List<Professor> professores = this.professorDao.GetAll();
            ViewData["professor"] = professores;

            return View();
        }

    }
}
