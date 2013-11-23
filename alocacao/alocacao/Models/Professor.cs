using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace alocacao.Models
{
    [Serializable]
    public class Professor
    {
        public String Nome { get; set; }
        public String Email { get; set; }
        public String Senha { get; set; }
        public String Prontuario { get; set; }
        public bool EhCordenador { get; set; }
        public String Telefone { get; set; }
        public String Celular { get; set; }
        public String Apelido { get; set; }
        public RegimeTrabalho RegimeDeTrabalho { get; set; }
        public String Area { get; set; }
    }
}
