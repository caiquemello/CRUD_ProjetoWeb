using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SistemaWebControleEstoque2
{
    public class CategoriaBLL
    {
        public string Nome { get; set; }

        DAL objDAL = new DAL();

        public DataTable RetcategoriaProduto()
        {
            return objDAL.retDataTable("select* from categoria");
        }

        public DataTable PesquisarPorCategoriaId(string id)
        {
            return objDAL.retDataTable("select* from categoria where id=" + id);
        }

        public void inserirCategoria()
        {
            string sql = "INSERT INTO categoria(nome) VALUES('{0}')";

            sql = string.Format(sql, Nome);
            objDAL.ExecutarComandoSQL(sql);
        }

        public void AlteraCategoria(string id)
        {
            string sql = "UPDATE categoria SET nome='{0}' WHERE id='{7}'";
            sql = String.Format(sql, Nome, id);
            objDAL.ExecutarComandoSQL(sql);
        }
        public void ExcluirCategoria(string id)
        {
            string sql = string.Format("DELETE FROM categoria WHERE id='{0}'", id);
            objDAL.ExecutarComandoSQL(sql);
        }


    }
}