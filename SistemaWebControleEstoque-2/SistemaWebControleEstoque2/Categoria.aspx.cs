using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SistemaWebControleEstoque2
{
    public partial class Categoria : System.Web.UI.Page
    {
        CategoriaBLL OBJCategoria = new CategoriaBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarGridView();
        }
        private void CarregarGridView()
        {
            Gridcategoria.DataSource = OBJCategoria.RetcategoriaProduto();
            Gridcategoria.DataBind();
        }

        public void LimparCategoria()
        {
            txtID.Text = string.Empty;
            txtNome.Text = string.Empty;

        }

                  // botão de GRAVAR//
        protected void Button1_Click(object sender, EventArgs e)
        {
            OBJCategoria.Nome = txtNome.Text;

            if (String.IsNullOrEmpty(txtID.Text))
            {
                OBJCategoria.inserirCategoria();
            }
            else
            {
                OBJCategoria.AlteraCategoria(txtID.Text);
            }
            LimparCategoria();
            CarregarGridView();

        }
    

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            carergarCategoria();
        }

        public void carergarCategoria()
        {
            DataTable data = OBJCategoria.PesquisarPorCategoriaId(txtID.Text);
            txtNome.Text = data.Rows[0]["nome"].ToString();
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            OBJCategoria.ExcluirCategoria(txtID.Text);
            CarregarGridView();
            LimparCategoria();
        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            LimparCategoria();

        }

        protected void btnmenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void Gridcategoria_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtID.Text = Gridcategoria.SelectedRow.Cells[1].Text;
            carergarCategoria();
        }
    }
}