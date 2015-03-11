using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using VeribisTasarım.Controller;
using System.Web.Security;

namespace VeribisTasarım
{
    public class ResGetir : BASECONTROLLER
    {
        static DBTOOL db = new DBTOOL();
        /// <summary>
        /// etiketleri DB deki id ye göre çeken metot
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static string resGetir(int id = 0)
        {
            DBARACISI adapter = new DBARACISI();
            string sorgu = null;
            switch (HttpContext.Current.Session["DIL"].ToString())
            {
                case "TR":
                    sorgu = String.Format("SELECT TR RES WHERE R_ID={0}", id);
                    break;
                case "EN":
                    sorgu = String.Format("SELECT EN RES WHERE R_ID={0}", id);
                    break;
                default:
                    sorgu = String.Format("SELECT TR RES WHERE R_ID={0}", id);
                    break;
            }
            DataTable dt = adapter.getGridIcerik(sorgu);
            return dt.Rows[0][0].ToString();
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