using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Text;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;
namespace VeribisTasarım
{
    public partial class Company : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            gridDoldur();         
            if (!IsPostBack)
            {
                base.Page_Load();   
           
                butonText();
                if (!String.IsNullOrEmpty(idCOMPANY_CODE.Text))
                {
                    adresDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
                    telefonDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
                }
             
                ekranDoldur();
            }

        }

        //protected void Page_PreRender(object sender, EventArgs e)
        //{
        //  //  ViewState["ChekRefresh"] = Session["chechRefresh"];
        //}
        private void butonText()
        {
            idButtonFirmaEkleYeni.Text = ResGetir.resGetir(123);
            idButtonAdresYeni.Text = ResGetir.resGetir(124);
            idButtonTelefonYeni.Text = ResGetir.resGetir(125);
            idButtonFirmaEkleKaydet.Text = ResGetir.resGetir(94);
            idButtonFirmaEkleSil.Text = ResGetir.resGetir(93);
            idButtonMakinaParkiKaydet.Text = ResGetir.resGetir(94);
            idButtonMakinaParkiYeni.Text = ResGetir.resGetir(126);
            idButtonMakinaParkiSil.Text = ResGetir.resGetir(93);
            idButtonRakipFirmaYeni.Text = ResGetir.resGetir(174);
            idButtonRakipUrunYeni.Text = ResGetir.resGetir(92);
            idButtonRakipFirmaKaydet.Text = ResGetir.resGetir(94);
            idButtonRakipFirmaSil.Text = ResGetir.resGetir(93);
            idButtonRakipUrunKaydet.Text = ResGetir.resGetir(94);
            idButtonRakipUrunSil.Text = ResGetir.resGetir(93);
        }
        private void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik("SELECT TOP 20 COMPANY.COMPANY_CODE,COMPANY.COMPANY_NAME,ADDRESS.ADDRESS1 AS ADDRESS, T_SECTOR.EXP_TR AS SECTOR,ISNULL((COUNTRY_CODE+ ' ' + AREA_CODE + ' ' + PHONE_NUMBER),'') AS PHONE,COMPANY.MAIL, COMPANY.WEBADDRESS FROM COMPANY LEFT JOIN ADDRESS ON ADDRESS.ADDRESS_CODE=COMPANY.ADDRESS AND ADDRESS.ADDRESS_TYPE_ID=1 LEFT JOIN (SELECT * FROM GROUPS WHERE GROUP_CODE=4 )AS T_SECTOR ON T_SECTOR.ROW_ORDER_NO=COMPANY.SECTOR LEFT JOIN PHONE ON PHONE.PHONE_CODE=COMPANY.PHONE AND PHONE.PHONE_TYPE_ID=1 ORDER BY COMPANY_CODE DESC");
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
            #region RakipFirma
            idRAKIP_FIRMALAR = dbGetir.doldur(idRAKIP_FIRMALAR, dbGetir.getRakipFirmalar());
            #endregion
            idCOMPANY_REPRESENT_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }


        private void adresDoldur(int companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT ADDRESS.ADDRESS_CODE, ADDRESS.ADDRESS_TYPE_ID, GROUPS.EXP_TR AS TUR,ISNULL(ad1.ADDRESS1,'')+ ' '+ ISNULL( ad2.ADDRESS2,'')+ ' '+ ISNULL(ad3.ADDRESS3,'') AS ADRES, COUNTRY.COUNTRY_NAME AS ULKE, CITY.CITY_NAME AS IL, CITY2.NAME AS ILCE FROM ADDRESS INNER JOIN GROUPS  ON ADDRESS.ADDRESS_TYPE_ID=GROUPS.ROW_ORDER_NO INNER JOIN COUNTRY ON COUNTRY.COUNTRY_CODE=ADDRESS.COUNTY INNER JOIN CITY ON CITY.CITY_CODE=ADDRESS.CITY INNER JOIN CITY2 ON CITY2.ORDER_NO=ADDRESS.COUNTY1 LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS1<>'-1') as ad1 on ad1.ADDRESS_CODE=ADDRESS.ADDRESS_CODE LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS2<>'-1') as ad2 on ad2.ADDRESS_CODE=ADDRESS.ADDRESS_CODE LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS3<>'-1') as ad3 on ad3.ADDRESS_CODE=ADDRESS.ADDRESS_CODE where GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            grdADDRESS.DataSource = tablo;
            grdADDRESS.DataBind();
          
        }

        [WebMethod]
        public static string adres(int companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT ADDRESS.ADDRESS_CODE, ADDRESS.ADDRESS_TYPE_ID, GROUPS.EXP_TR AS TUR,ISNULL(ad1.ADDRESS1,'')+ ' '+ ISNULL( ad2.ADDRESS2,'')+ ' '+ ISNULL(ad3.ADDRESS3,'') AS ADRES, COUNTRY.COUNTRY_NAME AS ULKE, CITY.CITY_NAME AS IL, CITY2.NAME AS ILCE FROM ADDRESS INNER JOIN GROUPS  ON ADDRESS.ADDRESS_TYPE_ID=GROUPS.ROW_ORDER_NO INNER JOIN COUNTRY ON COUNTRY.COUNTRY_CODE=ADDRESS.COUNTY INNER JOIN CITY ON CITY.CITY_CODE=ADDRESS.CITY INNER JOIN CITY2 ON CITY2.ORDER_NO=ADDRESS.COUNTY1 LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS1<>'-1') as ad1 on ad1.ADDRESS_CODE=ADDRESS.ADDRESS_CODE LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS2<>'-1') as ad2 on ad2.ADDRESS_CODE=ADDRESS.ADDRESS_CODE LEFT JOIN (SELECT * FROM ADDRESS WHERE ADDRESS3<>'-1') as ad3 on ad3.ADDRESS_CODE=ADDRESS.ADDRESS_CODE where GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in tablo.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in tablo.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return serializer.Serialize(rows);
        }

        [WebMethod]
        private void telefonDoldur(int companyCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT PHONE_CODE, PHONE_TYPE_ID, GROUPS.EXP_TR AS TUR,(PHONE.COUNTRY_CODE+ ' (' + PHONE.AREA_CODE + ') ' + PHONE.PHONE_NUMBER) AS TELEFON FROM PHONE INNER JOIN GROUPS ON PHONE.PHONE_TYPE_ID=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=3 AND COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            gridPHONE.DataSource = tablo;
            gridPHONE.DataBind();
        }
        protected void idButtonFirmaEkleKaydet_Click1(object sender, EventArgs e)
        {
            if (refreshOlduMu())           
            {
                return; 
            }
            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idCOMPANY_NAME.Text))
            {
                if (String.IsNullOrEmpty(idCOMPANY_CODE.Text))
                {
                    Company_Code = kaydet("pInsertCompany");
                    if (Company_Code != -1)
                    {
                        idCOMPANY_CODE.Text = Company_Code.ToString();
                        gruopCodeKaydet();
                    }
                    KayitBasariliMesaji("Firma");
                }
                else
                {
                    Company_Code = kaydet("pUpdateCompany");
                    gruopCodeKaydet();

                    KayitBasariliMesaji("Firma");
                }

            }
            gridDoldur();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#firma').addClass('active');$('#liste').removeClass('active')", true);

        }
        private void gruopCodeKaydet()
        {
            DBARACISI adapter = new DBARACISI();
            adapter.set(String.Format("Delete from COMPANYGROUP where COMPANY_CODE={0}", idCOMPANY_CODE.Text));
            foreach (ListItem item in idGROUP_CODE.Items)
            {
                if (item.Selected)
                {
                    if (item.Value != "-1")
                        adapter.set(String.Format("INSERT INTO COMPANYGROUP VALUES({0},{1})", idCOMPANY_CODE.Text, item.Value));
                }

            }
        }
        protected void editCompany(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            secilenElemanDetayiGetir(this, "COMPANY", "COMPANY_CODE", String.Format("{0}", code));
            adresDoldur(Convert.ToInt32(code));
            telefonDoldur(Convert.ToInt32(code));
            companyGroupDoldur(code);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#firma').addClass('active');", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#firma').addClass('active');$('#liste').removeClass('active')", true);

        }
        private void companyGroupDoldur(string code)
        {
            idGROUP_CODE.ClearSelection();
            DBARACISI adapter = new DBARACISI();
            System.Collections.Generic.List<string> group = adapter.getElemanList(String.Format("SELECT GROUP_CODE FROM COMPANYGROUP WHERE COMPANY_CODE={0}", code));
            foreach (ListItem listItem in idGROUP_CODE.Items)
            {
                foreach (string item in group)
                {
                    if (listItem.Value.ToString() == item)
                    {
                        listItem.Selected = true;
                    }
                }
            }

        }
        protected void telefonSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string[] commandArgs = silButon.CommandArgument.ToString().Split(new char[] { ',' });
            string phoneCode = commandArgs[0];
            string phoneType = commandArgs[1];
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM PHONE WHERE PHONE_CODE={0}", phoneCode));
            if (phoneType == "1")
                dbadapter.set(String.Format("UPDATE COMPANY SET PHONE={0} WHERE COMPANY_CODE={1}", -1, idCOMPANY_CODE.Text));
            else if (phoneType == "3")
                dbadapter.set(String.Format("UPDATE COMPANY SET FAX={0} WHERE COMPANY_CODE={1}", -1, idCOMPANY_CODE.Text));
            telefonDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
            gridDoldur();
        }
        protected void idButtonFirmaEkleYeni_Click(object sender, EventArgs e)
        {
            if (refreshOlduMu())
            {
                return;
            }
            
            formTemizle(this);
            ekranDoldur();
            grdADDRESS.DataSource = null;
            grdADDRESS.DataBind();
            gridPHONE.DataSource = null;
            gridPHONE.DataBind();
            idCOMPANY_REPRESENT_CODE.SelectedValue = Session["USER_CODE"].ToString();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#firma').addClass('active');$('#liste').removeClass('active')", true);
           

        }
        protected void lnkRemove_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string[] commandArgs = silButon.CommandArgument.ToString().Split(new char[] { ',' });
            string addressCode = commandArgs[0];
            string addressType = commandArgs[1];
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM ADDRESS WHERE ADDRESS_CODE={0}", addressCode));
            adresDoldur(Convert.ToInt32(idCOMPANY_CODE.Text));
            if (addressType == "1")
                dbadapter.set(String.Format("UPDATE COMPANY SET ADDRESS={0} WHERE COMPANY_CODE={1}", -1, idCOMPANY_CODE.Text));
            gridDoldur();
        }
        protected void idButtonMakinaParkiKaydet_Click(object sender, EventArgs e)
        {
            if (refreshOlduMu())
            {
                return;
            }

            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idCOMPANY_NAME.Text))
            {
                Company_Code = kaydet("pInsertMakinePark");
                if (Company_Code != -1)
                {
                    KayitBasariliMesaji(Company_Code.ToString());

                }
            }
        }

        protected void idRakipFirmaEkle_Click(object sender, EventArgs e)
        {

            if (refreshOlduMu())
            {
                return;
            }

            idBU_FIRMADAKI_RAKIP_FIRMALAR.Items.Add(idRAKIP_FIRMALAR.SelectedItem);
            idRAKIP_FIRMALAR.SelectedIndex = -1;
            idBU_FIRMADAKI_RAKIP_FIRMALAR.SelectedIndex = -1;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#rakipFirma').addClass('active');$('#liste').removeClass('active')", true);
        }

        protected void idButtonRakipFirmaKaydet_Click(object sender, EventArgs e)
        {

            if (refreshOlduMu())
            {
                return;
            }

            if (idRAKIP_FIRMALAR.Items.Count != 0)
            {
                DBARACISI adapter = new DBARACISI();
                foreach (ListItem item in idBU_FIRMADAKI_RAKIP_FIRMALAR.Items)
                {
                    string rivalCode = item.Value.ToString();
                    adapter.set(String.Format("INSERT INTO COMPANYRIVALCOMPANY ([COMPANY_CODE],[RIVAL_COMPANY_CODE],[LAST_UPDATE_USER],[LAST_UPDATE],[CREATE_DATE],[CREATE_USER]) VALUES({0},{1},'{2}','{3}','{3}','{2}')", idCOMPANY_CODE.Text, rivalCode, Session["USER_CODE"], DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff")));
                }
                KayitBasariliMesaji("Rakip Firmalar Kaydedildi");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#rakipFirma').addClass('active');$('#liste').removeClass('active')", true);
            }
        }

        protected void idRakipFirmaCikar_Click(object sender, EventArgs e)
        {
            idBU_FIRMADAKI_RAKIP_FIRMALAR.Items.Remove(idBU_FIRMADAKI_RAKIP_FIRMALAR.SelectedItem);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#rakipFirma').addClass('active');$('#liste').removeClass('active')", true);
        }
    }
}














