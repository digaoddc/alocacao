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
    public class ProfessorDao : IRepositorio<Professor>
    {
        private string path = HttpContext.Current.Server.MapPath(@"~/App_Data/Professores.xml");
        private XmlSerializer serializer = new XmlSerializer(typeof(Professor));

        public Professor GetById(string id)
        {
            XDocument doc = XDocument.Load(path);
            StringReader str = new StringReader(doc.Descendants("Professor").Where(x => x.Element("Id").Value == id).FirstOrDefault().ToString());
            Professor professor = (Professor)this.serializer.Deserialize(str);
            return professor;
        }

        public List<Professor> GetAll()
        {
            XDocument doc = XDocument.Load(path);


            List<Professor> professores = new List<Professor>();
            foreach (var element in doc.Descendants("Professor"))
            {
                StringReader str = new StringReader(element.ToString());
                Professor professor = (Professor)this.serializer.Deserialize(str);
                professores.Add(professor);

            }
            return professores;
        }

        public bool Delete(string id)
        {
            XDocument doc = XDocument.Load(path);
            doc.Descendants("Professor").Where(x => x.Element("Id").Value == id).FirstOrDefault().Remove();
            doc.Save(path);
            return true;
        }

        public bool Save(Professor professor)
        {

            string elemento = this.serializarObjeto(professor);
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

        private string serializarObjeto(Professor professor)
        {
            StringWriter stringWriter = new StringWriter();
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("", "");
            this.serializer.Serialize(stringWriter, professor, ns);
            string node = stringWriter.ToString();
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(node);
            return String.Format("<{0}> {1} </{0}>", doc.DocumentElement.Name, doc.DocumentElement.InnerXml);
        }
    }
}