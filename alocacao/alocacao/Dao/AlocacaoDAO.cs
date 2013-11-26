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
    public class AlocacaoDAO : IRepositorio<Alocacao>
    {
        private string path = HttpContext.Current.Server.MapPath(@"~/App_Data/Alocacao.xml");
        private XmlSerializer serializer = new XmlSerializer(typeof(Alocacao));


        public Alocacao GetById(string id)
        {
            XDocument doc = XDocument.Load(path);
            StringReader str = new StringReader(doc.Descendants("Alocacao").Where(x => x.Element("Id").Value == id).FirstOrDefault().ToString());
            Alocacao alocacao = (Alocacao)this.serializer.Deserialize(str);
            return alocacao;
        }

        public List<Alocacao> GetAll()
        {
            XDocument doc = XDocument.Load(path);


            List<Alocacao> alocacoes = new List<Alocacao>();
            foreach (var element in doc.Descendants("Alocacao"))
            {
                StringReader str = new StringReader(element.ToString());
                Alocacao alocacao = (Alocacao)this.serializer.Deserialize(str);
                alocacoes.Add(alocacao);

            }
            return alocacoes;
        }

        public bool Delete(string id)
        {
            XDocument doc = XDocument.Load(path);
            doc.Descendants("Alocacao").Where(x => x.Element("Id").Value == id).FirstOrDefault().Remove();
            doc.Save(path);
            return true;
        }

        public bool Save(Alocacao alocacao)
        {

            string elemento = this.serializarObjeto(alocacao);
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

        private string serializarObjeto(Alocacao alocacao)
        {
            StringWriter stringWriter = new StringWriter();
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("", "");
            this.serializer.Serialize(stringWriter, alocacao, ns);
            string node = stringWriter.ToString();
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(node);
            return String.Format("<{0}> {1} </{0}>", doc.DocumentElement.Name, doc.DocumentElement.InnerXml);
        }
    }
}