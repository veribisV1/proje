﻿using System;
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
         
            #region Firma Ekle DropDownları doldur
            idCOMPANY_REPRESENT_CODE = dbGetir.doldur(idCOMPANY_REPRESENT_CODE, dbGetir.userAdSoyadGetir());
            idSECTOR = dbGetir.doldur(idSECTOR, dbGetir.getSektor());
            idCOMPANY_SPECIAL_TYPE = dbGetir.doldur(idCOMPANY_SPECIAL_TYPE, dbGetir.getFirmaTipi());
            idSTATUS = dbGetir.doldur(idSTATUS, dbGetir.getFirmaDurum());
            idUPPER_COMPANY_CODE = dbGetir.doldur(idUPPER_COMPANY_CODE, dbGetir.getFirma());
            idCOMPANY_REGION = dbGetir.doldur(idCOMPANY_REGION, dbGetir.getBolge());
            idGROUP_CODE = dbGetir.doldur(idGROUP_CODE, dbGetir.getGrup());
            idCOMPANY_REFERANCE = dbGetir.doldur(idCOMPANY_REFERANCE, dbGetir.getReferans());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            #endregion

            #region Makina Parkı DropDownları doldur
            idNAME = dbGetir.doldur(idNAME, dbGetir.getMarka());
            idMAKINAPARKI_YILI = dbGetir.doldur(idMAKINAPARKI_YILI, dbGetir.getModel());
            idMAKINAPARKI_TIP1 = dbGetir.doldur(idMAKINAPARKI_TIP1, dbGetir.getTip(1));
            idMAKINAPARKI_TIP2 = dbGetir.doldur(idMAKINAPARKI_TIP2, dbGetir.getTip(2));
            idMAKINAPARKI_TIP3 = dbGetir.doldur(idMAKINAPARKI_TIP3, dbGetir.getTip(3));
            idMAKINAPARKI_TIP4 = dbGetir.doldur(idMAKINAPARKI_TIP4, dbGetir.getTip(4));
            idMAKINAPARKI_TIP5 = dbGetir.doldur(idMAKINAPARKI_TIP5, dbGetir.getTip(5));
            #endregion


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
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this,  paramtereListesi);
            int companyCode = firma.firmaKaydet("pInsertCompany", dataListesi);
            

        }


    }
}