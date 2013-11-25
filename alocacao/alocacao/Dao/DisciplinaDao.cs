using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using alocacao.Models;
using System.Xml.Serialization;
using System.Xml;
using System.IO;
using System.Xml.Linq;

namespace alocacao.Dao
{
    public class DisciplinaDao : IRepositorio<Disciplina>
    {
        private string path = HttpContext.Current.Server.MapPath(@"~/App_Data/Disciplina.xml");
        private XmlSerializer serializer = new XmlSerializer(typeof(Disciplina));

        public Disciplina GetById(string id)
        {
            XDocument doc = XDocument.Load(path);
            StringReader str = new StringReader(doc.Descendants("Disciplina").Where(x => x.Element("Id").Value == id).FirstOrDefault().ToString());
            Disciplina disciplina = (Disciplina)this.serializer.Deserialize(str);
            return disciplina;
        }

        public List<Disciplina> GetAll()
        {
            XDocument doc = XDocument.Load(path);


            List<Disciplina> disciplinas = new List<Disciplina>();
            foreach (var element in doc.Descendants("Disciplina"))
            {
                StringReader str = new StringReader(element.ToString());
                Disciplina disciplina = (Disciplina)this.serializer.Deserialize(str);
                disciplinas.Add(disciplina);

            }
            return disciplinas;
        }

        public bool Delete(string id)
        {
            XDocument doc = XDocument.Load(path);
            doc.Descendants("Disciplina").Where(x => x.Element("Id").Value == id).FirstOrDefault().Remove();
            doc.Save(path);
            return true;
        }

        public bool Save(Disciplina disciplina)
        {

            string elemento = this.serializarObjeto(disciplina);
            try
            {

                XmlTextReader xmlReader = new XmlTextReader(path);
                XmlDocument doc = new XmlDocument();
                doc.Load(xmlReader);
                xmlReader.Close();


                XmlDocumentFragment fragmento = this.criaElemento(doc, elemento);
                doc.DocumentElement.AppendChild(fragmento);

                doc.Save(path);


            }
            catch (UnauthorizedAccessException ex)
            {
                Console.WriteLine(ex.Message);
            }

            return true;
        }

        private XmlDocumentFragment criaElemento(XmlDocument doc, string node)
        {
            XmlDocumentFragment xmlDocFragment = doc.CreateDocumentFragment();
            xmlDocFragment.InnerXml = node;
            return xmlDocFragment;
        }

        private string serializarObjeto(Disciplina disciplina)
        {
            StringWriter stringWriter = new StringWriter();
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("", "");
            this.serializer.Serialize(stringWriter, disciplina, ns);
            string node = stringWriter.ToString();
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(node);
            return String.Format("<{0}> {1} </{0}>", doc.DocumentElement.Name, doc.DocumentElement.InnerXml);
        }
    

    }
}
