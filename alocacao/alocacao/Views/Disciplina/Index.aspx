<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Disciplinas
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <form id="form1" runat="server">

     <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center;">Lista de Disciplina</h2>
            <br />
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>Nome</th>
                        <th>Sigla</th>
                        <th>CargaHoraria</th>                        
                    </tr>
                </thead>
                <tbody>
                <% foreach (var item in Model) {  %>
                <tr>
                    <td><%= Html.ActionLink("visualizar", "Show", new { id = item.Id })%></td>
                    <td><%= item.Nome %></td>
                    <td><%= item.Sigla %></td>
                    <td><%= item.CargaHoraria%></td>                  
                </tr>         
                <% } %> 
          
                
                </tbody>
            </table>
        </div>
    </div>
    
    <%= Html.ActionLink("Nova", "New", "Disciplina")%>
   
    </form>
</asp:Content>
