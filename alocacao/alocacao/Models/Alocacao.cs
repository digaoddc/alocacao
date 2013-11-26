using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace alocacao.Models
{
    public class Alocacao
    {
        public Alocacao()
        {
            this.Id = Guid.NewGuid();
        }

        public Guid Id { get; set; }
        public int ProfessorId { get; set; }
        public EscalaConforto Comforto { get; set; }
        public bool Apto { get; set; }
        public int Ano { get; set; }
        public int Semestre { get; set; }
        public Disciplina Disciplina { get; set; }
        public List<Horario> Horarios { get; set; }

    }
}
