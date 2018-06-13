<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="SistemaWebControleEstoque2.Categoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

.botao{
    font-family:Arial;
    font-size:small;
    background-color:#eee4e4;
    font-weight:500;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#0099FF" Text="Cadastro de Categoria"></asp:Label>
        <br />
        <br />
            <asp:Button ID="Button2" runat="server" Height="25px" Text="Grava" ValidateRequestMode="Enabled" Width="80px" OnClick="Button1_Click" CssClass="botao" />
            <asp:Button ID="btnPesquisar0" runat="server" Height="27px" OnClick="btnPesquisar_Click" style="margin-left: 15px" Text="Pesquisar" Width="80px" CssClass="botao" />
       
        &nbsp;&nbsp;
            <asp:Button ID="btnExcluir0" runat="server" Height="28px" OnClick="btnExcluir_Click" Text="Excluir" Width="79px" CssClass="botao" />
&nbsp;&nbsp;
            <asp:Button ID="btnlimpar0" runat="server" Height="27px" OnClick="btnlimpar_Click" Text="Limpar" Width="84px" CssClass="botao" />
       
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnmenu" runat="server" Height="27px" OnClick="btnmenu_Click" Text="Menu" Width="83px" />
       
        <p>
          ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
       
        </p>
        <p>
            Nome:<asp:TextBox ID="txtNome" runat="server" style="margin-left: 15px" Width="494px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
            <asp:GridView ID="Gridcategoria" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="69px" style="margin-left: 2px" Width="502px" OnSelectedIndexChanged="Gridcategoria_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
