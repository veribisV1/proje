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
    public partial class Kisi : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (drpCOMPANY_CODE.SelectedIndex!=-1)
                gridDoldur();
            
            if (!IsPostBack)
            {
                base.Page_Load();

                butonText();

                gridDoldurFirmasiz();

                ekranDoldur();
                idSDATE.Text = DateTime.Now.ToString();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var contactCode = Convert.ToInt32((Request.QueryString["param"]));
                    idCONTACT_CODE.Text = contactCode.ToString();
                    gelenKisiyiYukle();                  
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');$('#liste').removeClass('active')", true);                  
                }
                if (!String.IsNullOrEmpty(Request.QueryString["btnKisiListele"]))
                {
                    if (Request.QueryString["btnKisiListele"].Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = Request.QueryString["btnKisiListele"].Split('-')[0];
                    }
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');$('#liste').removeClass('active')", true);
                }
            }         

        }
        private void butonText()
        {
            idButtonAileBilgileriYeni.Text = ResGetir.resGetir(92);
            idButtonAileBilgileriKaydet.Text = ResGetir.resGetir(94);
            idButtonAileBilgileriSil.Text = ResGetir.resGetir(93);
            idButtonNotEkleYeni.Text = ResGetir.resGetir(92);
            idButtonNotEkleSil.Text = ResGetir.resGetir(93);
            idButtonNotEkleKaydet.Text = ResGetir.resGetir(94);
            idButtonKisiEkleYeni.Text = ResGetir.resGetir(92);
            idButtonAdresYeni.Text = ResGetir.resGetir(124);
            idButtonTelefonYeni.Text = ResGetir.resGetir(125);
            idButtonNotEkleKaydet.Text = ResGetir.resGetir(94);
            idButtonKisiEkleSil.Text = ResGetir.resGetir(93);
            idButtonKisiEkleKaydet.Text = ResGetir.resGetir(94);
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Kişi Ekle DropDownları doldur
            drpCOMPANY_CODE = dbGetir.doldur(drpCOMPANY_CODE, dbGetir.getFirma());
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idSEXUALITY = dbGetir.doldur(idSEXUALITY, dbGetir.getCinsiyet());
            idASSOCIATION_CODE = dbGetir.doldur(idASSOCIATION_CODE, dbGetir.getDernekler());
            idDEPARTMENT = dbGetir.doldur(idDEPARTMENT, dbGetir.getDepartmanlar());
            idTITLE = dbGetir.doldur(idTITLE, dbGetir.getUnvanlar());
            idGROUP_CODE = dbGetir.doldur(idGROUP_CODE, dbGetir.getGrupKisi());
            idCONTACT_REPRESENT_CODE = dbGetir.doldur(idCONTACT_REPRESENT_CODE, dbGetir.userAdSoyadGetir());
            idSTATUS = dbGetir.doldur(idSTATUS, dbGetir.getAkifPasifKisi());
            idLANGUAGE_CODE = dbGetir.doldur(idLANGUAGE_CODE, dbGetir.getDiller());
            idPRETITLE = dbGetir.doldur(idPRETITLE, dbGetir.getHitap());
            idCONTACT_REFERANCE = dbGetir.doldur(idCONTACT_REFERANCE, dbGetir.getReferansKisi());
            idEDUCATION = dbGetir.doldur(idEDUCATION, dbGetir.getEgitimDuzeyi());
            idHAVE_HOME = dbGetir.doldur(idHAVE_HOME, dbGetir.getEvVarMi());
            idHOME_RATING = dbGetir.doldur(idHOME_RATING, dbGetir.getEvSkalasi());
            idISMARRIED = dbGetir.doldur(idISMARRIED, dbGetir.getMedeniHal());
            #endregion
            idCONTACT_REPRESENT_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }

        private void adresDoldur(int contactCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();

            sorgu.Append("SELECT ADDRESS_CODE, GROUPS.EXP_TR AS TUR,(ADDRESS.ADDRESS1+ ' ' + ADDRESS.ADDRESS2 + ' ' + ADDRESS.ADDRESS3) AS ADRES, ADDRESS.COUNTY AS ULKE,  ADDRESS.CITY AS IL ,ADDRESS.COUNTY1 AS ILCE FROM ADDRESS INNER JOIN GROUPS ON ADDRESS.ADDRESS_TYPE_ID=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=1 AND ADDRESS.CONTACT_CODE=");
            sorgu.Append(contactCode);
            DataTable tablo = db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();

            //if (!String.IsNullOrEmpty(idCOMPANY_CODE.Text))
            //{
            //    sorgu.Length = 0;
            //    sorgu.Append("SELECT ADDRESS.ADDRESS_CODE, GROUPS.EXP_TR AS TUR,(ADDRESS1+ ' ' + ADDRESS2 + ' ' + ADDRESS3) AS ADRES, COUNTRY.COUNTRY_NAME AS ULKE, CITY.CITY_NAME AS IL, CITY2.NAME AS ILCE FROM ADDRESS INNER JOIN GROUPS  ON ADDRESS.ADDRESS_TYPE_ID=GROUPS.ROW_ORDER_NO INNER JOIN COUNTRY ON COUNTRY.COUNTRY_CODE=ADDRESS.COUNTY INNER JOIN CITY ON CITY.CITY_CODE=ADDRESS.CITY INNER JOIN CITY2 ON CITY2.ORDER_NO=ADDRESS.COUNTY1 WHERE GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            //    sorgu.Append(idCOMPANY_CODE.Text);
            //    tablo = db.get(sorgu.ToString());
            //    GridView2.DataSource = tablo;
            //    GridView2.DataBind();
            //}


        }

        private void telefonDoldur(int contactCode)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();

            sorgu.Append("SELECT PHONE_CODE, GROUPS.EXP_TR AS TUR,(PHONE.COUNTRY_CODE+ ' (' + PHONE.AREA_CODE + ') ' + PHONE.PHONE_NUMBER) AS TELEFON FROM PHONE INNER JOIN GROUPS ON PHONE.PHONE_TYPE_ID=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=3 AND CONTACT_CODE=");
            sorgu.Append(contactCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }

        protected void telefonSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string phoneCode = silButon.CommandArgument;
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM PHONE WHERE PHONE_CODE={0}", phoneCode));
            telefonDoldur(Convert.ToInt32(idCONTACT_CODE.Text));
        }

        protected void adresSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string addressCode = silButon.CommandArgument;
            DBARACISI dbadapter = new DBARACISI();
            //recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM ADDRESS WHERE ADDRESS_CODE={0}", addressCode));
            adresDoldur(Convert.ToInt32(idCONTACT_CODE.Text));
        }

        protected void idButtonKisiEkleKaydet_Click(object sender, EventArgs e)
        {

            int contactCode = -1;
            if (!String.IsNullOrEmpty(idNAME.Text))
            {

                if (String.IsNullOrEmpty(idCONTACT_CODE.Text))
                {
                    contactCode = kaydet("pInsertContact");
                    if (contactCode != -1)
                    {
                        idCONTACT_CODE.Text = contactCode.ToString();


                    }
                    KayitBasariliMesaji("Kişi");


                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Uyari", "alert('Kişi bilgisi kaydedilmiştir.');", true);
                }
                else
                {
                    contactCode = kaydet("pUpdateContact");
                }

                //gridDoldur();
            }
            else
                BosMesaji();


            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');$('#liste').removeClass('active')", true);
            gridDoldur();
        }

        protected void idButtonAileBilgileriKaydet_Click(object sender, EventArgs e)
        {

        }

        protected void idButtonKisiEkleYeni_Click(object sender, EventArgs e)
        {
            formTemizle(this);
            idCONTACT_REPRESENT_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }




        private void gelenKisiyiYukle()
        {
            adresDoldur(Convert.ToInt32(idCONTACT_CODE.Text));
            telefonDoldur(Convert.ToInt32(idCONTACT_CODE.Text));
            secilenElemanDetayiGetir(this, "CONTACT", "CONTACT_CODE", String.Format("{0}", idCONTACT_CODE.Text));
        }



        protected void editContact(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            idCONTACT_CODE.Text = code;
            gelenKisiyiYukle();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('#kisi').addClass('active');$('#liste').removeClass('active')", true);
        }

        protected void drpCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            gridDoldur();
            idCOMPANY_CODE.Text = drpCOMPANY_CODE.Text;

        }

        protected void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik(String.Format("SELECT CONTACT.COMPANY_CODE,CONTACT.CONTACT_CODE,CONTACT.NAME,CONTACT.SURNAME,Unvanlar.EXP_TR,CONTACT.MAIL,TEL.COUNTRY_CODE+TEL.AREA_CODE+TEL.PHONE_NUMBER as 'IS' ,TELCep.COUNTRY_CODE+TELCep.AREA_CODE+TELCep.PHONE_NUMBER as 'Cep' from CONTACT  LEFT JOIN (select * from PHONE where PHONE.PHONE_TYPE_ID=1)as TEL on TEL.CONTACT_CODE=CONTACT.CONTACT_CODE LEFT JOIN (select * from PHONE where PHONE.PHONE_TYPE_ID=2)as TELCep on TELCep.CONTACT_CODE=CONTACT.CONTACT_CODE left join (select * from GROUPS where GROUP_CODE=12) as Unvanlar on Unvanlar.ROW_ORDER_NO=CONTACT.TITLE where CONTACT.COMPANY_CODE={0} ORDER BY CONTACT.CONTACT_CODE DESC", drpCOMPANY_CODE.SelectedValue));
            //"SELECT TOP 20 * FROM CONTACT WHERE COMPANY_CODE='" + drpCOMPANY_CODE.SelectedValue + "' ORDER BY CONTACT_CODE DESC");
            GridView1.DataBind();

        }

        protected void gridDoldurFirmasiz()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik(String.Format("select TOP(20) CONTACT.COMPANY_CODE,CONTACT.CONTACT_CODE,CONTACT.NAME,CONTACT.SURNAME,Unvanlar.EXP_TR,CONTACT.MAIL,TEL.COUNTRY_CODE+TEL.AREA_CODE+TEL.PHONE_NUMBER as 'IS' ,TELCep.COUNTRY_CODE+TELCep.AREA_CODE+TELCep.PHONE_NUMBER as 'Cep' from CONTACT  LEFT JOIN (select * from PHONE where PHONE.PHONE_TYPE_ID=1)as TEL on TEL.CONTACT_CODE=CONTACT.CONTACT_CODE LEFT JOIN (select * from PHONE where PHONE.PHONE_TYPE_ID=2)as TELCep on TELCep.CONTACT_CODE=CONTACT.CONTACT_CODE left join (select * from GROUPS where GROUP_CODE=12) as Unvanlar on Unvanlar.ROW_ORDER_NO=CONTACT.TITLE  ORDER BY CONTACT.CONTACT_CODE DESC"));
            //"SELECT TOP 20 * FROM CONTACT WHERE COMPANY_CODE='" + drpCOMPANY_CODE.SelectedValue + "' ORDER BY CONTACT_CODE DESC");
            GridView1.DataBind();

        }

    }
}