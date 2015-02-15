using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VeribisTasarım
{
    /// <summary>
    /// hertürlü DB ye erişim için 
    /// gerekli olan metotları içeriri
    /// connectionu=webConfig ten alır
    /// </summary>
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
        /// <summary>
        /// prosedür ile set etme geriye 
        /// primarykey olan alan int olarak donecek
        /// </summary>
        /// <param name="prosedurAdi">pCompanuInsert</param>
        /// <param name="parametreler"><@comapanyCode,11></param>
        /// <returns></returns>
        public int set(string prosedurAdi,Dictionary<string,string> parametreler)
        {            
            komut = new SqlCommand();
            komut.Connection = connection;
            komut.CommandType = System.Data.CommandType.StoredProcedure;
            komut.CommandText = prosedurAdi;
            foreach (KeyValuePair<string,string> item in parametreler)
            {
                komut.Parameters.Add(item.Key, item.Value);
            }
            komut.ExecuteNonQuery();   
            return Convert.ToInt16(komut.Parameters["ReturnValue"].Value); // prosedurden gelen veri int türüne dönüşüp gönderilir
        }

    }
}