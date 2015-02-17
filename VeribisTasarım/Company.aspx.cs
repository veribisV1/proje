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
            idCOMPANY_REPRESENT_CODE = dbGetir.doldur(idCOMPANY_REPRESENT_CODE, dbGetir.userAdSoyadGetir());
            idSECTOR = dbGetir.doldur(idSECTOR, dbGetir.getSektor());
            idCOMPANY_SPECIAL_TYPE = dbGetir.doldur(idCOMPANY_SPECIAL_TYPE, dbGetir.getFirmaTipi());
            idSTATUS = dbGetir.doldur(idSTATUS, dbGetir.getFirmaDurum());
            idUPPER_COMPANY_CODE = dbGetir.doldur(idUPPER_COMPANY_CODE, dbGetir.getFirma());
            idCOMPANY_REGION = dbGetir.doldur(idCOMPANY_REGION, dbGetir.getBolge());
            idGROUP_CODE = dbGetir.doldur(idGROUP_CODE, dbGetir.getGrup());
            idCOMPANY_REFERANCE = dbGetir.doldur(idCOMPANY_REFERANCE, dbGetir.getReferans());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
        }


        private void adresDoldur(int companyCode = 2)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT GROUPS.EXP_TR AS TÜR,(ADDRESS.ADDRESS1+ADDRESS.ADDRESS2+ADDRESS.ADDRESS3) AS ADRES, ADDRESS.COUNTY AS ÜLKE, CITY AS İL, ADDRESS.COUNTY1+ADDRESS.COUNTY2 AS İLÇE FROM ADDRESS INNER JOIN GROUPS ON ADDRESS.ADDRESS_CODE=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            //sorgu.Append("SELECT ADDRESS_TYPE_ID AS TUR,(ADDRESS1+ ' ' + ADDRESS2 + ' ' + ADDRESS3 + ' ' + COUNTY1 + ' ' + COUNTY2 + ' ' + CITY) AS ADRES FROM ADDRESS WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();


        }

        private void telefonDoldur(int companyCode = 2)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT GROUPS.EXP_TR AS TÜR,(PHONE.COUNTRY_CODE+ ' (' + PHONE.AREA_CODE + ') ' + PHONE.PHONE_NUMBER) AS TELEFON FROM PHONE INNER JOIN GROUPS ON GROUPS.ROW_ORDER_NO= PHONE.PHONE_TYPE_ID WHERE GROUPS.GROUP_CODE=3 AND PHONE.COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }


        protected void idButtonFirmaEkleKaydet_Click1(object sender, EventArgs e)
        {
            FIRMA firma = new FIRMA();
            string a = idSECTOR.SelectedValue;
            Dictionary<string, string> paramtereListesi = firma.firmaParametreGetir("pInsertCompany");
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi, paramtereListesi);
            int companyCode = firma.firmaKaydet("pInsertCompany", dataListesi);

        }


    }
}