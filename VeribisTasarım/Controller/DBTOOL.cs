using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace VeribisTasarım.Controller
{
    /// <summary>
    /// hertürlü DB ye erişim için 
    /// gerekli olan metotları içeriri
    /// connectionu=webConfig ten alır
    /// </summary>   
    public class DBTOOL : IDisposable
    {

        SqlConnection connection;
        SqlCommand komut;
        SqlDataAdapter adapter;

        public DBTOOL()
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);
        }
        ~DBTOOL()
        {
            Dispose(false);
        }
        bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (disposed)
                return;

            if (disposing)
            {
                if (connection != null) { connection.Dispose(); connection = null; }
                if (komut != null) { komut.Dispose(); komut = null; }
                if (adapter != null) { adapter.Dispose(); adapter = null; }
            }
            disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        private void init()
        {
        }

        public DataTable get(string tabloAdi, string[] sutunAdlari, string filtre)
        {

            return new DataTable();
        }
        public DataTable getDataTable(string prosedurAdi, Dictionary<string, object> parametreler)
        {
            komut = new SqlCommand();
            komut.Connection = connection;
            komut.CommandType = System.Data.CommandType.StoredProcedure;
            komut.CommandText = prosedurAdi;
            connection.Open();

            foreach (KeyValuePair<string, object> item in parametreler)
            {
                komut.Parameters.AddWithValue(item.Key, item.Value);
            }
            DataTable tb = new DataTable();
            using (SqlDataReader dr = komut.ExecuteReader())
            {
                tb.Load(dr);
            }            
            connection.Close();
            return tb;
        }
        public DataTable get(string sorgu)
        {
            adapter = new SqlDataAdapter();
            komut = new SqlCommand(sorgu, connection);
            adapter.SelectCommand = komut;
            DataTable tablo = new DataTable();
            adapter.Fill(tablo);
            return tablo;
        }

        /// <summary>
        /// teksatırlık iceriği alanadları ile
        /// dictinary olarak geri gönderir
        /// </summary>
        /// <param name="sorgu"></param>
        /// <returns></returns>
        public Dictionary<string, string> getDictionaryTable(string sorgu)
        {
            Dictionary<string, string> list = new Dictionary<string, string>();
            adapter = new SqlDataAdapter();
            komut = new SqlCommand(sorgu, connection);
            adapter.SelectCommand = komut;
            DataTable tablo = new DataTable();
            adapter.Fill(tablo);
            connection.Close();

            if (tablo != null)
            {
                if (tablo.Rows.Count != 0)
                {
                    var columns = tablo.Columns.Cast<DataColumn>();
                    foreach (DataColumn col in tablo.Columns)
                    {
                        list.Add(col.ColumnName, tablo.Rows[0][col].ToString());
                    }
                }
             
            }

            return list;
        }

        public List<string> getDictionaryList(string sorgu)
        {
            List<string> list = new List<string>();
            adapter = new SqlDataAdapter();
            komut = new SqlCommand(sorgu, connection);
            connection.Open();
            using (SqlDataReader rdr = komut.ExecuteReader())
            {

                while (rdr.Read())
                {
                    list.Add(rdr[0].ToString());
                }
               
            }


            connection.Close();
            return list;
        }

        public Dictionary<string, string> getDictionary(string sorgu)
        {
            Dictionary<string, string> list = new Dictionary<string, string>();
            adapter = new SqlDataAdapter();
            komut = new SqlCommand(sorgu, connection);
            connection.Open();
            using (SqlDataReader rdr = komut.ExecuteReader())
            {

                while (rdr.Read())
                {
                    list.Add(rdr["col1"].ToString(), rdr["col2"].ToString());
                }
                if (list.ContainsKey("-1"))
                {
                    list["-1"] = "";
                }
                else
                {
                    list.Add("-1", "");
                }
            }


            connection.Close();
            return list;
        }

        /// <summary>
        /// store prosedurede bulunan parametreleri ceker
        /// </summary>
        /// <param name="prosedurAdi"></param>
        /// <returns></returns>
        public Dictionary<string, string> getParameterList(string prosedurAdi)
        {
            Dictionary<string, string> list = new Dictionary<string, string>();
            komut = new SqlCommand();
            komut.Connection = connection;
            komut.CommandType = System.Data.CommandType.StoredProcedure;
            komut.CommandText = prosedurAdi;
            connection.Open();
            SqlCommandBuilder.DeriveParameters(komut);
            foreach (SqlParameter p in komut.Parameters)
            {
                if (!p.ParameterName.Equals("@RETURN_VALUE"))//&& !p.ParameterName.Equals("@ReturnValue"))
                {
                    list.Add(p.ParameterName, p.SqlDbType.ToString());
                }
            }
            connection.Close();
            return list;
        }
        /// <summary>
        /// prosedür ile set etme geriye 
        /// primarykey olan alan int olarak donecek
        /// </summary>
        /// <param name="prosedurAdi">pCompanuInsert</param>
        /// <param name="parametreler"><@comapanyCode,11></param>
        /// <returns></returns>
        public int set(string prosedurAdi, Dictionary<string, object> parametreler)
        {
            komut = new SqlCommand();
            komut.Connection = connection;
            komut.CommandType = System.Data.CommandType.StoredProcedure;
            komut.CommandText = prosedurAdi;
            connection.Open();

            foreach (KeyValuePair<string, object> item in parametreler)
            {
                komut.Parameters.AddWithValue(item.Key, item.Value);
            }

            SqlParameter retval = komut.Parameters.Add("@return_value", SqlDbType.Int);
            retval.Direction = ParameterDirection.ReturnValue;
            komut.ExecuteNonQuery();
            connection.Close();
            return Convert.ToInt16(komut.Parameters["@return_value"].Value);

            // prosedurden gelen veri int türüne dönüşüp gönderilir
        }
        /// <summary>
        /// Sql sorgu cümlesini kurallarına göre girip gönderin
        /// Insert ,Update ve Delete için
        /// </summary>
        /// <param name="sorgu"></param>
        public void set(string sorgu)
        {
            komut = new SqlCommand(sorgu, connection);
            connection.Open();
            komut.ExecuteNonQuery();
            connection.Close();
        }

        /// <summary>
        /// Login olurken girilen ticari koda karşılık gelen veritabanının
        /// adını getiriyor.
        /// </summary>
        public string getDatabaseName(string customerCode)
        {
            SqlConnection connectionName = new SqlConnection(ConfigurationManager.ConnectionStrings["ticarikod"].ConnectionString);
            StringBuilder sorgu = new StringBuilder();

            sorgu.Append("SELECT DB_NAME FROM LOGIN WHERE CUSTOMER_CODE='");
            sorgu.Append(customerCode);
            sorgu.Append("'");

            komut = new SqlCommand(sorgu.ToString(), connectionName);
            
            connectionName.Open();
            var databaseName=komut.ExecuteScalar();
            connectionName.Close();
            return databaseName.ToString();
        }
    }
}