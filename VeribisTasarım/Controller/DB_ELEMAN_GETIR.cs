using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace VeribisTasarım.Controller
{
    /// <summary>
    /// DropDownList içeriklerini 
    /// databasden çeken dolduran sınıf
    /// </summary>
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

       
        public Dictionary<string, string> getSektor()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=4 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getFirmaTipi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=5 ORDER BY ROW_ORDER_NO");
            return liste;
        }
        public Dictionary<string, string> getFirmaDurum()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=9 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getBolge()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=8 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getGrup()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=20 ORDER BY ROW_ORDER_NO");
            return liste;
        }
        /// <summary>
        /// KAYILI FİRMALARI GETİRİRİ
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> getFirma()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT COMPANY_CODE as col1, COMPANY_NAME  AS col2 FROM COMPANY  ORDER BY COMPANY_NAME");
            return liste;
        }

    }
}