<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<alocacao.Models.Professor>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Visualizar Professor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
      <div class="col-md-3"></div>
      <div class="well col-md-6">
        <p>Nome: <%= Model.Nome %></p><br />
        <p>Email: <%= Model.Email %></p><br />
        <p>Prontuario: <%= Model.Prontuario %></p><br />
        <p>Cordenador: <%= Model.EhCordenador %></p><br />
        <p>Telefone: <%= Model.Telefone %></p><br />
        <p>Celular: <%= Model.Celular %></p><br />
        <p>Apelido: <%= Model.Apelido %></p><br />
        <p>Regime de trabalho: <%= Model.RegimeDeTrabalho %></p><br />
        <p>Area: <%= Model.Area %></p><br />
        <br />
        
        <form action="/Professor/Delete" method="post">
            <%= Html.ActionLink("Editar", "Edit", new {id = Model.Id}, new { @class = "btn btn-success"})%>
            <input type="hidden" name="id" value="<%= Model.Id %>" />
            <input type="submit" value="Excluir" class="btn btn-danger" />
        </form>
      </div>

      <div class="col-md-3"></div>
    </div>
</asp:Content>
