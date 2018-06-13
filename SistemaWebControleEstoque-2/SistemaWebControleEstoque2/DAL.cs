using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace SistemaWebControleEstoque2
{
    public class DAL
    {    
        private string sever = "locahost";
        private string database = "estoque";
        private string user = "root";
        private string password = "";
        private string connectionString = "Server = localhost; Database=estoque;Uid=root;Pwd=;SslMode=none";
        private MySqlConnection connection;
        public DAL()
        {
            connectionString = String.Format(connectionString, sever, database, user, password);
            connection = new MySqlConnection(connectionString);
            connection.Open();
        }
        //Executa SELECTs
        public DataTable retDataTable(string sql)
        {
            DataTable dataTable = new DataTable();
            MySqlCommand command = new MySqlCommand(sql, connection);
            MySqlDataAdapter da = new MySqlDataAdapter(command);
            da.Fill(dataTable);
            return dataTable;
        }
        //Executa INSERTs, UPDATEs, DELETEs
        public void ExecutarComandoSQL(string sql)
        {
            MySqlCommand command = new MySqlCommand(sql, connection);
            command.ExecuteNonQuery();
        }
        
        public void ExecutarComandoSQL(MySqlCommand command)
        {
            command.Connection = connection;
            command.ExecuteNonQuery();
        }

    }
}
