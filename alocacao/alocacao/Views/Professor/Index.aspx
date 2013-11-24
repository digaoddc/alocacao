<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Professores
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="row">
        <div class="col-md-12">
            <h2 style="text-align: center;">Lista de Professores</h2>
            <br />
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th>Nome</th>
                        <th>Email</th>
                        <th>Prontuario</th>
                        <th>Cordenador</th>
                        <th>Telefone</th>
                        <th>Celular</th>
                        <th>Apelido</th>
                        <th>Regime de trabalho</th>
                        <th>Area</th>
                    </tr>
                </thead>
                <tbody>
                <% foreach (var item in Model) {  %>
                <tr>
                    <td><%= Html.ActionLink("visualizar", "Show", new { id = item.Id })%></td>
                    <td><%= item.Nome %></td>
                    <td><%= item.Email %></td>
                    <td><%= item.Prontuario%></td>
                    <td><%= item.EhCordenador%></td>
                    <td><%= item.Telefone%></td>
                    <td><%= item.Celular%></td>
                    <td><%= item.Apelido%></td>
                    <td><%= item.RegimeDeTrabalho%></td>
                    <td><%= item.Area%></td>
                </tr>         
                <% } %> 
          
                
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>
