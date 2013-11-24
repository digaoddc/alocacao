<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editar professor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <form action="/Professor/Update" class="well" role="form">
    <input type="hidden" name="professor.Id" value="<%= Model.Id %>"/>
      <div class="form-group">
        <label for="exampleInputEmail1">Nome</label>
        <input type="text" class="form-control" name="professor.Nome" id="pNome" placeholder="Insira o nome" value="<%= Model.Nome %>">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Email</label>
        <input type="email" class="form-control" name="professor.Email" id="pEmail" placeholder="Insira o email"  value="<%= Model.Email %>">
      </div>
      
      <div class="form-group">
        <label for="exampleInputPassword1">Prontuario</label>
        <input type="text" class="form-control" name="professor.Prontuario" id="pPront" placeholder="Insira o prontuario" value="<%= Model.Prontuario %>">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Cordenador ?</label>
        <% if (Model.EhCordenador)
           { %>
            <div class="radio">
              <label>
                <input type="radio" name="professor.EhCordenador" id="pCordY" value="option1" checked>
                Sim
              </label>
            </div>
            <div class="radio">
              <label>
                <input type="radio" name="professor.EhCordenador" id="pCordN" value="option2">
                Nao
              </label>
            </div>     
        <% }
           else
           {%>
            <div class="radio">
              <label>
                <input type="radio" name="professor.EhCordenador" id="Radio1" value="option1">
                Sim
              </label>
            </div>
            <div class="radio">
              <label>
                <input type="radio" name="professor.EhCordenador" id="Radio2" value="option2" checked>
                Nao
              </label>
            </div>    
        <% } %>     

      </div>
      <div class="form-group">
        <label for="telefone">Telefone</label>
        <input type="text" class="form-control" name="professor.Telefone" id="pTelefone" placeholder="Insira o telefone" value="<%= Model.Telefone %>">
      </div>
      <div class="form-group">
        <label for="celular">Celular</label>
        <input type="text" class="form-control" name="professor.Celular" id="pCelular" placeholder="Insira o celular" value="<%= Model.Celular %>">
      </div>
      <div class="form-group">
        <label for="celular">Apelido</label>
        <input type="text" class="form-control" name="professor.Apelido" id="pApelido" placeholder="Insira o apelido" value="<%= Model.Apelido %>">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Selecione o regime de trabalho</label>
        <% string[] regimes = { "vinte", "quarenta", "rde", "substituto" }; %>
        <select name="professor.RegimeDeTrabalho" class="form-control">
        <% foreach (var regime in regimes) { %>
            <% if (regime == Model.RegimeDeTrabalho)
              { %>
                <option selected value="<%= regime %>"><%= regime%></option>       
           <% } %>
           <% else
              { %>
                <option value="<%= regime %>"><%= regime%></option>      
           <% } %>          
       <% } %>
        </select>
      </div>
      <div class="form-group">
        <label for="celular">Area</label>
        <input type="text" name="professor.Area" class="form-control" id="pArea" placeholder="Insira a area" value="<%= Model.Area %>">
      </div>
      <input type="submit" class="btn btn-success" value="Concluir"/>
    </form>
  </div>
  <div class="col-md-3"></div>
</div>

</asp:Content>
