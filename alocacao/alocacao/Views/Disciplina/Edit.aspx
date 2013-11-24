<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alterar Disciplina</h2>

    <form id="form1" runat="server" class="form-horizontal">
    <div class="form-group">
    
    <asp:Label ID="Lblnome" runat="server" Text="Nome da disciplina: " class="control-label col-sm-3 col-md-2"></asp:Label>
    <asp:TextBox ID="Txtnome" runat="server" Width="359px" class="form-control"></asp:TextBox>
    
        <br />
    
    <asp:Label ID="Lblsigla" runat="server" Text="Sigla: " class="control-label col-sm-3 col-md-2"></asp:Label>
    <asp:TextBox ID="Txtsigla" runat="server" Width="133px" class="form-control" ></asp:TextBox>
    
        <br />
    
    <asp:Label ID="Lblcarga" runat="server" Text="Carga horária: " class="control-label col-sm-3 col-md-2"></asp:Label>
    <asp:TextBox ID="Txtcarga" runat="server" class="form-control" Width="133px" ></asp:TextBox>
           
    
        <br />
        <br />
        <input id="gravarDisc" type="submit" value="Salvar" onclick="return gravarDisc_onclick()" /></div>
    </form>

</asp:Content>
