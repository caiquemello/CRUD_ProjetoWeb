<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="SistemaWebControleEstoque2.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label runat="server" Font-Size="XX-Large" ForeColor="#009933" Text="Cadastro de Produtos Web"></asp:Label>
        <p class="botao">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnprodutos" runat="server" OnClick="btnprodutos_Click" Text="Produtos" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncategoria" runat="server" OnClick="btncategoria_Click" Text="Categoria" />
        </p>
    </form>
</body>
</html>
