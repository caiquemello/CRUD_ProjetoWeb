<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="SistemaWebControleEstoque2.Produto" TraceMode="SortByTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="#0099FF" Text="Cadastro de Produto"></asp:Label>
&nbsp;</p>
        <p>
            &nbsp;<asp:Button ID="Button1" runat="server" Height="25px" Text="Grava" ValidateRequestMode="Enabled" Width="80px" OnClick="Button1_Click" CssClass="botao" />
            <asp:Button ID="btnPesquisar" runat="server" Height="27px" OnClick="btnPesquisar_Click" style="margin-left: 15px" Text="Pesquisar" Width="80px" CssClass="botao" />
       
        &nbsp;&nbsp;
            <asp:Button ID="btnExcluir" runat="server" Height="28px" OnClick="btnExcluir_Click" Text="Excluir" Width="79px" CssClass="botao" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnlimpar" runat="server" Height="27px" OnClick="btnlimpar_Click" Text="Limpar" Width="84px" CssClass="botao" />
       
        &nbsp;&nbsp;
            <asp:Button ID="btnmenu" runat="server" CssClass="botao" Height="28px" OnClick="btnmenu_Click" Text="Menu" Width="80px" />
       
        </p>
        <p>
          ID:<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
       
        </p>
        <p>
            Nome:<asp:TextBox ID="txtNome" runat="server" style="margin-left: 15px" Width="494px"></asp:TextBox>
        </p>
        <p>
            Descrição</p>
        <p>
            <asp:TextBox ID="txtDescricao" runat="server" Height="130px" style="margin-left: 37px" TextMode="MultiLine" Width="365px"></asp:TextBox>
        </p>
        <p>
            Preço Custo:<asp:TextBox ID="txtPrecoCusto" runat="server" style="margin-left: 15px"></asp:TextBox>
        </p>
        <p>
            Preço Venda:<asp:TextBox ID="txtPrecoVenda" runat="server" style="margin-left: 15px"></asp:TextBox>
        </p>
        <p>
            Quantidade:<asp:TextBox ID="txtQuantidade" runat="server" style="margin-left: 15px" Width="93px"></asp:TextBox>
        </p>
        <p>
            Un. Medida:<asp:TextBox ID="txtUnMedida" runat="server" style="margin-left: 15px"></asp:TextBox>
        </p>
        <p>
            Categoria:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCategoriaProduto" runat="server">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridProduto" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="69px" style="margin-left: 2px" Width="502px" OnSelectedIndexChanged="GridProduto_SelectedIndexChanged">
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
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
