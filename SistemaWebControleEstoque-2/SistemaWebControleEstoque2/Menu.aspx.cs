using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaWebControleEstoque2
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnprodutos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Produto.aspx");
        }

        protected void btncategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categoria.aspx");
        }
    }
}