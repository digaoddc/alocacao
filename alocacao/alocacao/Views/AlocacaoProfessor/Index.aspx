<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Alocar Professor</h2>
    <form id="form1" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Período: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Matutino</asp:ListItem>
        <asp:ListItem>Verpertino</asp:ListItem>
        <asp:ListItem>Noturno</asp:ListItem>
    </asp:DropDownList>


    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Disciplina: "></asp:Label>


    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Professor: "></asp:Label>



    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Dia da Semana: "></asp:Label>
           <asp:DropDownList ID="dropDownDiaSemana" runat="server">
            <asp:ListItem>Segunda</asp:ListItem>
            <asp:ListItem>Terça</asp:ListItem>
            <asp:ListItem>Quarta</asp:ListItem>
            <asp:ListItem>Quinta</asp:ListItem>
            <asp:ListItem>Sexta</asp:ListItem>
            <asp:ListItem>Sábado</asp:ListItem>
        </asp:DropDownList>


        <br />
        <br />
        <input type="submit" value="Gravar">
    </form>
</asp:Content>
