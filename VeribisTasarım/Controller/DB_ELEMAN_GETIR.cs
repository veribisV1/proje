using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
        DBARACISI db = new DBARACISI();      
        DBTOOL tool = new DBTOOL();

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
            sorgu.Append("SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM CITEMS WHERE CODE=");
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
            //Dictionary<string, string> liste = db.getListEleman("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS");
            //ts = DateTime.Now - d;
            //string tabS1 = ts.ToString();
            ////ts.

            Dictionary<string, string> liste = db.getListEleman("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS");
            return liste;
        }


        //kullanıcı giriş kontrol
        public bool validateUser(string username, string password)
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT USER_CODE as col1, (AUSER_NAME+' '+SURNAME) AS col2 FROM USERS WHERE USER_NAME='");
            sorgu.Append(username);
            sorgu.Append("'");
            sorgu.Append(" AND USER_PASSWORD='");
            sorgu.Append(password);
            sorgu.Append("'");

            Dictionary<string, string> liste = db.getEleman(sorgu.ToString());
            if (liste.Count != 0)
                return true;
            else
                return false;
        }

        public Dictionary<string, string> getMarka()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("23"));
            return liste;
        }
        public Dictionary<string, string> getModel()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("49"));
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
            Dictionary<string, string> liste = db.getListEleman(getSQL(grupKod));
            return liste;
        }
        public Dictionary<string, string> getSektor()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("4"));
            return liste;
        }
        public Dictionary<string, string> getFirmaTipi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("5"));
            return liste;
        }
        public Dictionary<string, string> getFirmaDurum()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("9"));
            return liste;
        }
        public Dictionary<string, string> getBolge()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("8"));
            return liste;
        }

       
        public Dictionary<string, string> getGrup()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("20"));
            return liste;
        }
        public Dictionary<string, string> getGrupKisi()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("53"));
            return liste;
        }
        public Dictionary<string, string> getAkifPasifKisi()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("13"));
            return liste;
        }
        public Dictionary<string, string> getDiller()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("18"));
            return liste;
        }
        public Dictionary<string, string> getHitap()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("86"));
            return liste;
        }
        public Dictionary<string, string> getReferansKisi()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("98"));
            return liste;
        }
        public Dictionary<string, string> getEgitimDuzeyi()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("15"));
            return liste;
        }
        public Dictionary<string, string> getReferans()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("58"));
            //"SELECT ROW_ORDER_NO as col1, EXP_TR  AS col2 FROM GROUPS WHERE GROUP_CODE=58 ORDER BY ROW_ORDER_NO");
            return liste;
        }
        public Dictionary<string, string> getOdemeSekli()
        {

            Dictionary<string, string> liste = db.getListEleman(getSQL("6"));
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

            Dictionary<string, string> liste = db.getListEleman("SELECT CUR_SYMBOL as col1,CUR_NAME as col2,ROW_ORDER_NO FROM CURTYPE order by ROW_ORDER_NO");
            return liste;
        }
        /// <summary>
        /// KAYILI FİRMALARI GETİRİRİ
        /// </summary>
        /// <returns></returns>
        public Dictionary<string, string> getFirma()
        {

            Dictionary<string, string> liste = db.getListEleman("SELECT COMPANY_CODE as col1, COMPANY_NAME  AS col2 FROM COMPANY  ORDER BY COMPANY_NAME");
            return liste;
        }
        public Dictionary<string, string> getFirmaKodu(string firmaKodu)
        {

            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT COMPANY_CODE as col1, COMPANY_COMMERCIAL_CODE  AS col2 FROM COMPANY where COMPANY_CODE=");
            sorgu.Append(firmaKodu);
            Dictionary<string, string> liste = db.getListEleman(sorgu.ToString());
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
            Dictionary<string, string> liste = db.getListEleman(sorgu.ToString());
            return liste;
        }
        public Dictionary<string, string> getProje(string companyCode = "1")
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("select PROJECT_CODE as col1,NAME as col2 from PROJECTS where COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" order by col2");
            Dictionary<string, string> liste = db.getListEleman(sorgu.ToString());
            return liste;
        }

        public DataTable getFirsatAcik()
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT OPPORTUNITYMASTER.OPPORTUNITY_CODE as 'AÇIKLAMA',COMPANY.COMPANY_NAME as 'FİRMA ADI',OPPORTUNITYMASTER.EXPLANATION as 'FIRSAT',OPPORTUNITYMASTER.TOTAL_UPB as 'TUTAR'FROM OPPORTUNITYMASTER INNER JOIN COMPANY ON COMPANY.COMPANY_CODE=OPPORTUNITYMASTER.COMPANY_CODE  WHERE DOCUMENT_TYPE=1 AND OPEN_CLOSE=1");
            return db.getGridIcerik(sorgu.ToString());            
        }

        public DataTable getProjeAcik()
        {
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("select PROJECTS.PROJECT_CODE as 'PROJE KODU', COMPANY.COMPANY_NAME as 'FİRMA ADI',PROJECTS.NAME as 'PROJE ADI' from PROJECTS INNER JOIN COMPANY ON COMPANY.COMPANY_CODE=PROJECTS.COMPANY_CODE where CLOSED_DATE!='1900-01-01 00:00:00.000'");
            return db.getGridIcerik(sorgu.ToString());
        }
        public Dictionary<string, string> getFaturaGrubu()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("68"));
            return liste;
        }
        public Dictionary<string, string> getFaturaAcikKapali()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQLCitems("8"));
            return liste;
        }
        public Dictionary<string, string> getBirim()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("59"));
            return liste;
        }
        public Dictionary<string, string> getCinsiyet()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("85"));
            return liste;
        }
        public Dictionary<string, string> getDernekler()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("20"));
            return liste;
        }
        public Dictionary<string, string> getDepartmanlar()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("97"));
            return liste;
        }
        public Dictionary<string, string> getUnvanlar()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("12"));
            return liste;
        }
        public Dictionary<string, string> getDonem()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("52"));
            return liste;
        }
        public Dictionary<string, string> getSiparisYolu()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("78"));
            return liste;
        }

        public Dictionary<string, string> getAdresTipi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("1"));
            return liste;
        }

        public Dictionary<string, string> getUlke()
        {
            Dictionary<string, string> liste = db.getListEleman("SELECT  COUNTRY_CODE AS col1, COUNTRY_NAME AS col2 FROM COUNTRY");
            return liste;
        }

        public Dictionary<string, string> getSehir(string ulkeKodu)
        {
            Dictionary<string, string> liste = db.getListEleman("SELECT  CITY.CITY_CODE AS col1, CITY.CITY_NAME AS col2 FROM CITY INNER JOIN COUNTRY ON COUNTRY.COUNTRY_CODE=CITY.COUNTRY_CODE WHERE CITY.COUNTRY_CODE='"+ulkeKodu+"'");
            return liste;
        }

        public Dictionary<string, string> getIlce(int sehirKodu)
        {
            Dictionary<string, string> liste = db.getListEleman("SELECT  CITY2.ORDER_NO AS col1, CITY2.NAME AS col2 FROM CITY2 INNER JOIN CITY ON CITY2.CITY_CODE=CITY.CITY_CODE WHERE CITY2.CITY_CODE="+sehirKodu);
            return liste;
        }

        public Dictionary<string, string> getTelefonTipi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("3"));
            return liste;
        }

        public Dictionary<string, string> getUlkeKodu()
        {
            Dictionary<string, string> liste = db.getListEleman("SELECT  CITY_CODE AS col1, NAME AS col2 FROM PHONECODE WHERE COUNTRY_CODE=-1");
            return liste;
        }

        public Dictionary<string, string> getAlanKodu(int alanKodu)
        {
            Dictionary<string, string> liste = db.getListEleman("SELECT  CITY_CODE AS col1, NAME AS col2 FROM PHONECODE WHERE COUNTRY_CODE=" + alanKodu);
            return liste;
        }

        public Dictionary<string, string> getTeslimSekli()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("69"));
            return liste;
        }
        public Dictionary<string, string> getTeslimSekliFirsat()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("42"));
            return liste;
        }
        public Dictionary<string, string> getSonuc()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("72"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteTipi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("25"));
            return liste;
        }
        
        public Dictionary<string, string> getAktiviteSonucGrubu()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("72"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteAcikKapali()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("50"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteGrubu()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("32"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteKonuGrubu()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("26"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteNerede()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("27"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteOncelik()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("28"));
            return liste;
        }
        public Dictionary<string, string> getAktiviteHatirlatma()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("52"));
            return liste;
        }
        public Dictionary<string, string> getMensei()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("81"));
            return liste;
        }
        public Dictionary<string, string> getBankaBilgisi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("80"));
            return liste;
        }
        public Dictionary<string, string> getAmbalaj()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("82"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeTipi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("83"));
            return liste;
        }
        public Dictionary<string, string> getNakliyeFirma()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("78"));
            return liste;
        }
        public Dictionary<string, string> getNedenKaybettik()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("57"));
            return liste;
        }
        public Dictionary<string, string> getRakipFirma()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("55"));
            return liste;
        }
        public Dictionary<string, string> getTakipAsamalari()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("42"));
            return liste;
        }
        public Dictionary<string, string> getTakipYontemi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("41"));
            return liste;
        }
        public Dictionary<string, string> getDepo()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("39"));
            return liste;
        }
        public Dictionary<string, string> getMedeniHal()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("60"));
            return liste;
        }
        public Dictionary<string, string> getEvVarMi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("62"));
            return liste;
        }
        public Dictionary<string, string> getEvSkalasi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("61"));
            return liste;
        }
        public Dictionary<string, string> getFirsatCinsi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQLCitems("44"));
            return liste;
        }
        public Dictionary<string, string> getRevizyon()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQL("43"));
            return liste;
        }
        public Dictionary<string, string> getProformaCinsi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQLCitems("32"));
            return liste;
        }
        public Dictionary<string, string> getFaturaCinsi()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQLCitems("12"));
            return liste;
        }
        public Dictionary<string, string> getFaturaNormal()
        {
            Dictionary<string, string> liste = db.getListEleman(getSQLCitems("6"));
            return liste;
        }
        
        public DataTable getOppDetail(string oppCode)
        {
            return db.getGridIcerik("select ROW_ORDER_NO,PRODUCT_NAME,CUR_TYPE,TOTAL_UPBK from OPPORTUNITYDETAIL where OPPORTUNITY_CODE="+oppCode);
        }
    }
}