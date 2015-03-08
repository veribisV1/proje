﻿using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using VeribisTasarım.Controller;
using System.Configuration;



namespace VeribisTasarım
{
    public partial class Company : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridDoldur();
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(idCOMPANY_CODE.Text))
                {
                    adresDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
                    telefonDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
                }
              
                ekranDoldur();
                
                
            }
            
        }
       private void  gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik("SELECT TOP 20 COMPANY.COMPANY_CODE,COMPANY.COMPANY_NAME,ADDRESS.ADDRESS1 AS ADDRESS, T_SECTOR.EXP_TR AS SECTOR,PHONE.PHONE_NUMBER AS PHONE,COMPANY.MAIL, COMPANY.WEBADDRESS FROM COMPANY LEFT JOIN ADDRESS ON ADDRESS.ADDRESS_CODE=COMPANY.ADDRESS LEFT JOIN (SELECT * FROM GROUPS WHERE GROUP_CODE=4 )AS T_SECTOR ON T_SECTOR.ROW_ORDER_NO=COMPANY.SECTOR LEFT JOIN PHONE ON PHONE.PHONE_CODE=COMPANY.PHONE ORDER BY COMPANY_CODE DESC");
            GridView1.DataBind();
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
            idCURRENCY_TYPE = dbGetir.doldur(idCURRENCY_TYPE, dbGetir.getParaBirimiGroup());
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


        private void adresDoldur(int companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT ADDRESS.ADDRESS_CODE, GROUPS.EXP_TR AS TUR,(ADDRESS1+ ' ' + ADDRESS2 + ' ' + ADDRESS3) AS ADRES, COUNTRY.COUNTRY_NAME AS ULKE, CITY.CITY_NAME AS IL, CITY2.NAME AS ILCE FROM ADDRESS INNER JOIN GROUPS  ON ADDRESS.ADDRESS_TYPE_ID=GROUPS.ROW_ORDER_NO INNER JOIN COUNTRY ON COUNTRY.COUNTRY_CODE=ADDRESS.COUNTY INNER JOIN CITY ON CITY.CITY_CODE=ADDRESS.CITY INNER JOIN CITY2 ON CITY2.ORDER_NO=ADDRESS.COUNTY1 WHERE GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();

        }

        private void telefonDoldur(int companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT PHONE_CODE, GROUPS.EXP_TR AS TUR,(PHONE.COUNTRY_CODE+ ' (' + PHONE.AREA_CODE + ') ' + PHONE.PHONE_NUMBER) AS TELEFON FROM PHONE INNER JOIN GROUPS ON PHONE.PHONE_TYPE_ID=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=3 AND COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }


        protected void idButtonFirmaEkleKaydet_Click1(object sender, EventArgs e)
        {
            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idCOMPANY_NAME.Text))
            {
                if (String.IsNullOrEmpty(idCOMPANY_CODE.Text))
                {
                    Company_Code = kaydet("pInsertCompany");
                    if (Company_Code != -1)
                    {
                        idCOMPANY_CODE.Text = Company_Code.ToString();

                    }
                }
                else
                {
                    Company_Code = kaydet("pUpdateCompany");
                }

            }
            //formTemizle(this);
            gridDoldur();
        }


        protected void editCompany(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            secilenElemanDetayiGetir(this, "COMPANY", "COMPANY_CODE", String.Format("{0}", code));
            adresDoldur(Convert.ToInt32(code));
            telefonDoldur(Convert.ToInt32(code));
          
        }

        protected void telefonSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string phoneCode = silButon.CommandArgument;
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM PHONE WHERE PHONE_CODE={0}", phoneCode));
            telefonDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
        }

       

        protected void idButtonFirmaEkleYeni_Click(object sender, EventArgs e)
        {
            formTemizle(this);
            adresDoldur(-1);
            telefonDoldur(-1);
            
        }

        protected void lnkRemove_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string addressCode = silButon.CommandArgument;
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM ADDRESS WHERE ADDRESS_CODE={0}", addressCode));
            adresDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
        }

        
    
    }
            

}


    



  







