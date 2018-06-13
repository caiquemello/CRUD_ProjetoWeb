using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SistemaWebControleEstoque2
{
    public partial class Produto : System.Web.UI.Page
    {
        ProdutoBLL objProdutoBLL = new ProdutoBLL();
        CategoriaBLL Objcategoria = new CategoriaBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarCategorias();
            CarregarGridView();

        }

        private void CarregarCategorias()
        {
            ddlCategoriaProduto.DataSource = Objcategoria.RetcategoriaProduto();
            ddlCategoriaProduto.DataValueField = "id";
            ddlCategoriaProduto.DataTextField = "nome";
            ddlCategoriaProduto.DataBind();
        }

        private void CarregarGridView()
        {
            GridProduto.DataSource = objProdutoBLL.RetLitarProduto();
            GridProduto.DataBind();
        }
             //BOTÃO DE GRAVAR//
        protected void Button1_Click(object sender, EventArgs e)
        {
            objProdutoBLL.Nome = txtNome.Text;
            objProdutoBLL.Descricao = txtDescricao.Text;
            objProdutoBLL.Preco_Custo = decimal.Parse(txtPrecoCusto.Text);
            objProdutoBLL.Preco_Venda = decimal.Parse(txtPrecoVenda.Text);
            objProdutoBLL.Quantidade = double.Parse(txtQuantidade.Text);
            objProdutoBLL.Unidade_Medida=char.Parse(txtUnMedida.Text);
            objProdutoBLL.Categoria_Id = int.Parse(ddlCategoriaProduto.SelectedValue.ToString());
            if (String.IsNullOrEmpty(txtID.Text))
            {
                objProdutoBLL.inserirProduto();
            }
            else
            {
                objProdutoBLL.AlteraProduto(txtID.Text);
            }
            LimparPrpduto();
            CarregarGridView();

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            carregarProduto();

        }
        public void carregarProduto()
        {
            DataTable data = objProdutoBLL.PesquisarPorProdutoId(txtID.Text);
            txtNome.Text = data.Rows[0]["nome"].ToString();
            txtDescricao.Text = data.Rows[0]["descricao"].ToString();
            txtPrecoCusto.Text = data.Rows[0]["preco_custo"].ToString();
            txtPrecoVenda.Text = data.Rows[0]["preco_venda"].ToString();
            txtQuantidade.Text = data.Rows[0]["quantidade"].ToString();
            txtUnMedida.Text = data.Rows[0]["unidade_medida"].ToString();
            ddlCategoriaProduto.Text = data.Rows[0]["categoria_id"].ToString();

        }
    

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            objProdutoBLL.ExcluirProduto(txtID.Text);
            CarregarGridView();
            LimparPrpduto();

        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            LimparPrpduto();

        }
        public void LimparPrpduto()
        {
            txtID.Text = string.Empty;
            txtNome.Text= string.Empty;
            txtPrecoCusto.Text = string.Empty;
            txtPrecoVenda.Text= string.Empty;
            txtQuantidade.Text= string.Empty;
            txtUnMedida.Text = string.Empty;
            txtDescricao.Text = string.Empty;
        }

        protected void btnmenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void GridProduto_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtID.Text = GridProduto.SelectedRow.Cells[1].Text;
            carregarProduto();
        }
    }
}