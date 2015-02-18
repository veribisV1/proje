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
        DBTOOL db = new DBTOOL();
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
            Dictionary<string, string> liste = db.getDictionary(getSQL("23"));
            return liste;
        }
        public Dictionary<string, string> getModel()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("49"));
            return liste;
        }
        public Dictionary<string, string> getTip(byte tipNo)
        {
            string grupKod = "-1";

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
            Dictionary<string, string> liste = db.getDictionary(getSQL("4"));
            return liste;
        }
        public Dictionary<string, string> getFirmaTipi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("5"));
            return liste;
        }
        public Dictionary<string, string> getFirmaDurum()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("9"));
            return liste;
        }
        public Dictionary<string, string> getBolge()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("8"));
            return liste;
        }
        public Dictionary<string, string> getGrup()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("20"));
            return liste;
        }
        public Dictionary<string, string> getGrupKisi()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("53"));
            return liste;
        }
        public Dictionary<string, string> getAkifPasifKisi()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("13"));
            return liste;
        }
        public Dictionary<string, string> getDiller()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("18"));
            return liste;
        }
        public Dictionary<string, string> getHitap()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("86"));
            return liste;
        }
        public Dictionary<string, string> getReferansKisi()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("98"));
            return liste;
        }
        public Dictionary<string, string> getEgitimDuzeyi()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("15"));
            return liste;
        }
        public Dictionary<string, string> getReferans()
        {

            Dictionary<string, string> liste = db.getDictionary(getSQL("58"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=58 ORDER BY ROW_ORDER_NO");
            return liste;
        }
        public Dictionary<string, string> getOdemeSekli()
        {

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

            Dictionary<string, string> liste = db.getDictionary("SELECT CUR_SYMBOL as col1,CUR_NAME as col2,ROW_ORDER_NO FROM CURTYPE order by ROW_ORDER_NO");
            return liste;
        }
        /// <summary>
        /// KAYILI FİRMALARI GETİRİRİ
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> getFirma()
        {

            Dictionary<string, string> liste = db.getDictionary("SELECT COMPANY_CODE as col1, COMPANY_NAME  AS col2 FROM COMPANY  ORDER BY COMPANY_NAME");
            return liste;
        }
        public Dictionary<string, string> getFirmaKodu(string firmaKodu)
        {

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

            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT CONTACT_CODE as col1, NAME+' '+SURNAME  AS col2 FROM CONTACT  where COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" order by col2");
            Dictionary<string, string> liste = db.getDictionary(sorgu.ToString());
            return liste;
        }
        public Dictionary<string, string> getProje(string companyCode)
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("select PROJECT_CODE as col1,NAME as col2 from PROJECTS where COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" order by col2");
            Dictionary<string, string> liste = db.getDictionary(sorgu.ToString());
            return liste;
        }
        public Dictionary<string, string> getFaturaGrubu()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("68"));
            return liste;
        }
        public Dictionary<string, string> getFaturaAcikKapali()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("8"));
            return liste;
        }
        public Dictionary<string, string> getBirim()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("59"));
            return liste;
        }
        public Dictionary<string, string> getCinsiyet()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("85"));
            return liste;
        }
        public Dictionary<string, string> getDernekler()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("20"));
            return liste;
        }
        public Dictionary<string, string> getDepartmanlar()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("97"));
            return liste;
        }
        public Dictionary<string, string> getUnvanlar()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("12"));
            return liste;
        }
        public Dictionary<string, string> getDonem()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("52"));
            return liste;
        }
        public Dictionary<string, string> getSiparisYolu()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("78"));
            return liste;
        }
        public Dictionary<string, string> getTeslimSekli()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("69"));
            return liste;
        }
        public Dictionary<string, string> getTeslimSekliFirsat()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("42"));
            return liste;
        }
        public Dictionary<string, string> getSonuc()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("72"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteTipi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("25"));
            return liste;
        }
        public Dictionary<string, string> getMensei()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("81"));
            return liste;
        }
        public Dictionary<string, string> getBankaBilgisi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("80"));
            return liste;
        }
        public Dictionary<string, string> getAmbalaj()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("82"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeTipi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("83"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeFirma()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("78"));
            return liste;
        }
        public Dictionary<string, string> getNedenKaybettik()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("57"));
            return liste;
        }
        public Dictionary<string, string> getRakipFirma()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("55"));
            return liste;
        }
        public Dictionary<string, string> getTakipAsamalari()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("42"));
            return liste;
        }
        public Dictionary<string, string> getTakipYontemi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("41"));
            return liste;
        }
        public Dictionary<string, string> getDepo()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("39"));
            return liste;
        }
        public Dictionary<string, string> getMedeniHal()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("60"));
            return liste;
        }
        public Dictionary<string, string> getEvVarMi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("62"));
            return liste;
        }
        public Dictionary<string, string> getEvSkalasi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("61"));
            return liste;
        }
        public Dictionary<string, string> getFirsatCinsi()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("44"));
            return liste;
        }
        public Dictionary<string, string> getRevizyon()
        {
            Dictionary<string, string> liste = db.getDictionary(getSQL("43"));
            return liste;
        }
        public Dictionary<string, string> getProformaCinsi(string companyCode)
        {
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("32"));
            return liste;
        }
        public Dictionary<string, string> getFaturaCinsi(string companyCode)
        {
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("12"));
            return liste;
        }
        public Dictionary<string, string> getFaturaNormal(string companyCode)
        {
            Dictionary<string, string> liste = db.getDictionary(getSQLCitems("6"));
            return liste;
        }
    }
}