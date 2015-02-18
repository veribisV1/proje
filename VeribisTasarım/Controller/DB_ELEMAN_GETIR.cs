using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
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
            eleman.SelectedValue = "-1";
            return eleman;
        }

        private string getSQL(string grupKodu)
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=");
            sorgu.Append(grupKodu);
            sorgu.Append(" ORDER BY ROW_ORDER_NO");
            return sorgu.ToString();
        }
        private string getSQLCitems(string grupKodu)
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM CITEMS WHERE GROUP_CODE=");
            sorgu.Append(grupKodu);
            sorgu.Append(" ORDER BY ROW_ORDER_NO");
            return sorgu.ToString();
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

        public Dictionary<string, string> getMarka()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("23"));          
            return liste;
        }

        public Dictionary<string, string> getModel()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("49"));
            return liste;
        }
        public Dictionary<string, string> getTip(byte tipNo)
        {
            string grupKod="-1";
            DBTOOL db = new DBTOOL();
            switch (tipNo)
            {
                case 1:
                    grupKod = "34";
                    break;
                case 2:
                    grupKod = "35";
                    break;
                case 3:
                    grupKod = "36";
                    break;
                case 4:
                    grupKod = "37";
                    break;
                case 5:
                    grupKod = "38";
                    break;
                
                default:
                    break;
            }
            Dictionary<string, string> liste = db.getDictionary(getSQL(grupKod));
            return liste;
        }
        public Dictionary<string, string> getSektor()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("4"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=4 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getFirmaTipi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("5"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=5 ORDER BY ROW_ORDER_NO");
            return liste;
        }
        public Dictionary<string, string> getFirmaDurum()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("9"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=9 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getBolge()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("8"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=8 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getGrup()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("20"));            
            return liste;
        }
        public Dictionary<string, string> getGrupKisi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("53"));
            return liste;
        }
        public Dictionary<string, string> getReferans()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("58"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=58 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        public Dictionary<string, string> getOdemeSekli()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("6"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=58 ORDER BY ROW_ORDER_NO");
            return liste;
        }

        /// <summary>
        /// curtype tablosundaki parabirimlerini
        /// Sembol (USD) ve Tam adı şeklide geri döndürür
        /// burada key string tir
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> getParaBirimi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary("SELECT CUR_SYMBOL as col1,CUR_NAME as col2,ROW_ORDER_NO FROM CURTYPE order by ROW_ORDER_NO");            
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

       public Dictionary<string, string> getFirmaKodu(string firmaKodu)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT COMPANY_CODE as col1, COMPANY_COMMERCIAL_CODE  AS col2 FROM COMPANY where COMPANY_CODE=");
            sorgu.Append(firmaKodu);
            Dictionary<string, string> liste = db.getDictionary(sorgu.ToString());
            return liste;            
        }


        /// <summary>
        /// KAYILI FİRMALARI GETİRİRİ
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> getKisi(string companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT CONTACT_CODE as col1, NAME+' '+SURNAME  AS col2 FROM CONTACT  where COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" order by col2");
            Dictionary<string, string> liste = db.getDictionary(sorgu.ToString());
            return liste;
        }

        public Dictionary<string, string> getProje(string companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("select PROJECT_CODE as col1,NAME as col2 from PROJECTS where COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" order by col2");
            Dictionary<string, string> liste = db.getDictionary(sorgu.ToString());
            return liste;
        }
        public Dictionary<string, string> getFaturaGrubu()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("68"));
            return liste;
        }

        public Dictionary<string, string> getFaturaAcikKapali()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("8"));
            return liste;
        }

        public Dictionary<string, string> getBirim()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("59"));        
            return liste;
        }
        public Dictionary<string, string> getCinsiyet()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("85"));
            return liste;
        }
        public Dictionary<string, string> getDernekler()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("20"));
            return liste;
        }
        public Dictionary<string, string> getDepartmanlar()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("97"));
            return liste;
        }
        public Dictionary<string, string> getUnvanlar()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("12"));
            return liste;
        }
        public Dictionary<string, string> getUnvanlar()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("12"));
            return liste;
        }
        public Dictionary<string, string> getDonem()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("52"));           
            return liste;
        }

        public Dictionary<string, string> getSiparisYolu()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("78"));
            return liste;
        }
        public Dictionary<string, string> getTeslimSekli()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("69"));
            return liste;
        }
        public Dictionary<string, string> getMensei()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("81"));
            return liste;
        }
        public Dictionary<string, string> getBankaBilgisi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("80"));
            return liste;
        }
        public Dictionary<string, string> getAmbalaj()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("82"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeTipi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("83"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeFirma()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("78"));
            return liste;
        }
        public Dictionary<string, string> getNedenKaybettik()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("57"));
            return liste;
        }
        public Dictionary<string, string> getRakipFirma()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("55"));
            return liste;
        }
        public Dictionary<string, string> getTakipAsamalari()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("42"));
            return liste;
        }
        public Dictionary<string, string> getTakipYontemi()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("41"));
            return liste;
        }
        public Dictionary<string, string> getDepo()
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQL("39"));
            return liste;
        }
        public Dictionary<string, string> getProformaCinsi(string companyCode)
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("32"));
            return liste;
        }

        public Dictionary<string, string> getFaturaCinsi(string companyCode)
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("12"));
            return liste;
        }
        public Dictionary<string, string> getFaturaNormal(string companyCode)
        {
            DBTOOL db = new DBTOOL();
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("6"));
            return liste;
        }
    }
}