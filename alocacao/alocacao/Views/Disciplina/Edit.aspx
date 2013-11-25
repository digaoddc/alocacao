<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editar Disciplina
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
  <h2 style="text-align: center;">Editar de Disciplina<h2>
    <form action="/Disciplina/Update" class="well" role="form">
    <input type="hidden" name="disciplina.Id" value="<%= Model.Id %>"/>
      <div class="form-group">
        <label for="exampleInputEmail1">Nome</label>
        <input type="text" class="form-control" name="disciplina.Nome" id="dNome" placeholder="Insira o nome" value="<%= Model.Nome %>">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Sigla</label>
        <input type="text" class="form-control" name="disciplina.Sigla" id="dSigla" placeholder="Insira a sigla"  value="<%= Model.Sigla %>">
      </div>
      
      <div class="form-group">
        <label for="exampleInputPassword1">Carga Horária</label>
        <input type="text" class="form-control" name="disciplina.CargaHoraria" id="dCarga" placeholder="Insira a carga horária" value="<%= Model.CargaHoraria %>">
      </div>
      
      
      <input type="submit" class="btn btn-success" value="Concluir"/>
    </form>
  </div>
  <div class="col-md-3"></div>
</div>


</asp:Content>
