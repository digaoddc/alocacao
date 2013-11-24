<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Cadastrar Professor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <form action="/Professor/Create" class="well" role="form">
      <div class="form-group">
        <label for="exampleInputEmail1">Nome</label>
        <input type="text" class="form-control" name="professor.Nome" id="pNome" placeholder="Insira o nome">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Email</label>
        <input type="email" class="form-control" name="professor.Email" id="pEmail" placeholder="Insira o email">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Senha</label>
        <input type="password" class="form-control" name="professor.Senha" id="pSenha" placeholder="Insira a senha">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Prontuario</label>
        <input type="text" class="form-control" name="professor.Prontuario" id="pPront" placeholder="Insira o prontuario">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Cordenador ?</label>
        <div class="radio">
          <label>
            <input type="radio" name="professor.EhCordenador" id="pCordY" value="true" checked>
            Sim
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="professor.EhCordenador" id="pCordN" value="false">
            Nao
          </label>
        </div>
      </div>
      <div class="form-group">
        <label for="telefone">Telefone</label>
        <input type="text" class="form-control" name="professor.Telefone" id="pTelefone" placeholder="Insira o telefone">
      </div>
      <div class="form-group">
        <label for="celular">Celular</label>
        <input type="text" class="form-control" name="professor.Celular" id="pCelular" placeholder="Insira o celular">
      </div>
      <div class="form-group">
        <label for="celular">Apelido</label>
        <input type="text" class="form-control" name="professor.Apelido" id="pApelido" placeholder="Insira o apelido">
      </div>
       <div class="form-group">
        <label for="exampleInputPassword1">Selecione o regime de trabalho</label>
        <% string[] regimes = { "vinte", "quarenta", "rde", "substituto" }; %>
        <select class="form-control" name="professor.RegimeDeTrabalho">
        <% foreach (var regime in regimes) %>
       <% { %>
            <option value="<%= regime %>"><%= regime%></option>              
       <% } %>
        </select>
      </div>
      <div class="form-group">
        <label for="celular">Area</label>
        <input type="text" name="professor.Area" class="form-control" id="pArea" placeholder="Insira a area">
      </div>
      <input type="submit" class="btn btn-default"/>
    </form>
  </div>
  <div class="col-md-3"></div>
</div>
   
</asp:Content>
