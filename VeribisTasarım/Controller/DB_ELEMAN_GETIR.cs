using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace VeribisTasarım.Controller
{
    public class DB_ELEMAN_GETIR
    {
        public DropDownList doldur(DropDownList eleman, Dictionary<string, string> liste)
        {
            eleman.DataSource = liste;
            eleman.DataTextField = "Value";
            eleman.DataValueField = "Key";
            eleman.DataBind();
            return eleman; 
        }

        /// <summary>
        /// tüm userların adı soyadı ile user codları gelir
        /// </summary>
        /// <returns>key=usercode,value=ausername surname</returns>
        public Dictionary<string, string> userAdSoyadGetir()
        {
            DBTOOL db = new DBTOOL();
            //TimeSpan ts = new TimeSpan();
            ////dataTAble ile dictionary  zaman karşılaştırlması yaptım ikiside eşit çıktı
            //DateTime d = DateTime.Now;
            //DataTable tablo = db.get("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS");
            //ts = DateTime.Now - d;
            //string tabS = ts.ToString();
            //d = DateTime.Now;
            //Dictionary<string, string> liste = db.getDictionary("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS");
            //ts = DateTime.Now - d;
            //string tabS1 = ts.ToString();
            ////ts.

            Dictionary<string, string> liste = db.getDictionary("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS");
            return liste;
        }
    }
}