using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VeribisTasarım
{
    public class DBTOOL
    {
        SqlConnection connection;
        SqlCommand komut;
        SqlDataAdapter adapter;
        DataSet dataSet;
        
        public DBTOOL()
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);           
        }

        private void init()
        { 

        }

        public DataTable get(string tabloAdi,string[] sutunAdlari,string filtre)
        {
            return new DataTable();
        }
        public DataTable get(string storedProcedureAdi,int kod)
        {
            return new DataTable();
        }
        public DataTable get(string sorgu)
        {
            adapter = new SqlDataAdapter();
            komut = new SqlCommand(sorgu,connection);
            adapter.SelectCommand = komut;
            DataTable tablo=new DataTable();
            adapter.Fill(tablo);
            return tablo;
        }

    }
}