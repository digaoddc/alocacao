<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Visualizar Disciplina
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Disciplina</h2>

   
    
    <div class="row">
      <div class="col-md-3"></div>
      <div class="well col-md-6">
        <p>Nome: <%= Model.Nome %></p><br />
        <p>Email: <%= Model.Sigla %></p><br />
        <p>Prontuario: <%= Model.CargaHoraria %></p><br />
        
        <br />
        
        <form action="/Disciplina/Delete" method="post">
            <%= Html.ActionLink("Editar", "Edit", new {id = Model.Id}, new { @class = "btn btn-success"})%>
            <input type="hidden" name="id" value="<%= Model.Id %>" />
            <input type="submit" value="Excluir" class="btn btn-danger" />
        </form>
      </div>

      <div class="col-md-3"></div>
    </div>
</asp:Content>
