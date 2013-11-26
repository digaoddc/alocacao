<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Alocacoes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center;">Lista de Alocacoes</h2>
            <br />
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>Professor</th>
                        <th>Conforto</th>
                        <th>Apto</th>
                        <th>Ano</th>
                        <th>Semestre</th>
                        <th>Disciplina</th>
                        <th>Horarios</th>
                    </tr>
                </thead>
                <tbody>
                <% foreach (var item in Model) {  %>
                <tr>
                    <td><%= Html.ActionLink("visualizar", "Show", new { id = item.Id })%></td>
                    <td><%= item.ProfessorId%></td>
                    <td><%= item.Comforto%></td>
                    <td><%= item.Apto%></td>
                    <td><%= item.Ano%></td>
                    <td><%= item.Semestre%></td>
                    <td><%= item.Disciplina%></td>
                    <td><%= item.Horarios%></td>
                </tr>         
                <% } %> 
          
                
                </tbody>
            </table>
        </div>
    </div>
    <%= Html.ActionLink("Nova", "New", "AlocacaoProfessor")%>

</asp:Content>
