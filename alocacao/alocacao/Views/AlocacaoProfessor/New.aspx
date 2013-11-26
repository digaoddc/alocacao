<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alocar Professor</h2>
    <form id="form1" runat="server" action="/AlocacaoProfessor/Create" class="well" role="form">

    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Período: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Matutino</asp:ListItem>
            <asp:ListItem>Verpertino</asp:ListItem>
            <asp:ListItem>Noturno</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Disciplina: "></asp:Label>
    </div>


    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Professor: "></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </div>

     
    <div class="form-group">
       <asp:Label ID="Label2" runat="server" Text="Dia da Semana: "></asp:Label>
           <asp:DropDownList ID="dropDownDiaSemana" runat="server">
            <asp:ListItem>Segunda</asp:ListItem>
            <asp:ListItem>Terça</asp:ListItem>
            <asp:ListItem>Quarta</asp:ListItem>
            <asp:ListItem>Quinta</asp:ListItem>
            <asp:ListItem>Sexta</asp:ListItem>
            <asp:ListItem>Sábado</asp:ListItem>
        </asp:DropDownList>
        
    </div>

    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Ano: "></asp:Label>
        <asp:DropDownList ID="dropDownAno" runat="server" style="margin-left: 3px">
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
        </asp:DropDownList>
    </div>


    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Semestre: "></asp:Label>
        <asp:DropDownList ID="dropDownSemestre" runat="server" style="margin-left: 6px">
            <asp:ListItem Value="1">1º</asp:ListItem>
            <asp:ListItem Value="2">2º</asp:ListItem>
        </asp:DropDownList>
    </div>



        <input type="submit" value="Enviar dados" class="btn btn-default"/>
    </form>
</asp:Content>
