using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace alocacao.Models
{
    public class Disciplina
    {
        public Disciplina()
        {
            this.Id = Guid.NewGuid();
        }

        public Guid Id { get; set; }

        public String Nome { get; set; }
        public String Sigla { get; set; }
        public int CargaHoraria { get; set; }
        public bool Status { get; set; }
    }
}
