using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ekranDoldur();
            if (!IsPostBack)
            {
                adresDoldur();
                telefonDoldur();
                ekranDoldur();
            }

        }

        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCOMPANY_REPRESENT_CODE =dbGetir.doldur(idCOMPANY_REPRESENT_CODE,dbGetir.userAdSoyadGetir());  
          
        }


        private void adresDoldur(int companyCode = 34)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT ADDRESS_TYPE_ID AS TUR,(ADDRESS1+ ' ' + ADDRESS2 + ' ' + ADDRESS3 + ' ' + COUNTY1 + ' ' + COUNTY2 + ' ' + CITY) AS ADRES FROM ADDRESS WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();


        }

        private void telefonDoldur(int companyCode = 34)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT PHONE_TYPE_ID AS TUR,(COUNTRY_CODE+ ' (' + AREA_CODE + ') ' + PHONE_NUMBER) AS TELEFON FROM PHONE WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }


        protected void idButtonFirmaEkleKaydet_Click1(object sender, EventArgs e)
        {
            FIRMA firma = new FIRMA();
            Dictionary<string, string> paramtereListesi = firma.firmaParametreGetir("pInsertCompany");
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi, paramtereListesi);
            int companyCode = firma.firmaKaydet("pInsertCompany", dataListesi);

        }


    }
}