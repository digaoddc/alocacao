using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace alocacao.Models
{
    [Serializable]
    public class Professor
    {
        public Professor()
        {
            this.Id = Guid.NewGuid();
        }

        public Guid Id { get; set; }

        public String Nome { get; set; }
        public String Email { get; set; }
        public String Senha { get; set; }
        public String Prontuario { get; set; }
        public bool EhCordenador { get; set; }
        public String Telefone { get; set; }
        public String Celular { get; set; }
        public String Apelido { get; set; }
        public string RegimeDeTrabalho { get; set; }
        public String Area { get; set; }
    }
}
