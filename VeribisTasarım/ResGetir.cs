using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public class ResGetir
    {
        static DBTOOL db = new DBTOOL();
        /// <summary>
        /// etiketleri DB deki id ye göre çeken metot
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static string resGetir(int id=0)
        {            
            StringBuilder sorgu= new StringBuilder(); 
            sorgu.Append("SELECT TR FROM RES WHERE R_ID=");
            sorgu.Append(id);
            DataTable tablo=db.get(sorgu.ToString());        
            return tablo.Rows[0].ToString();
        }


        public static string get(int p)
        {
            throw new NotImplementedException();
        }

        public static string cs(int p)
        {
            throw new NotImplementedException();
        }
    }
}