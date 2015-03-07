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

            if (!IsPostBack)
            {               
                ekranDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var contactCode = Convert.ToInt32((Request.QueryString["param"]));                    
                    idCONTACT_CODE.Text = contactCode.ToString();
                    adresDoldur(Convert.ToInt32(contactCode));
                    telefonDoldur(Convert.ToInt32(contactCode));
                    secilenElemanDetayiGetir(this, "CONTACT", "CONTACT_CODE", String.Format("{0}", contactCode));

                }
                
            }
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
            #endregion

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
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Uyari", "alert('Kişi bilgisi kaydedilmiştir.');", true);
                }
                else
                {
                    contactCode = kaydet("pUpdateContact");
                }
                
            }
            else
                BosMesaji();  
        }

        protected void idButtonAileBilgileriKaydet_Click(object sender, EventArgs e)
        {
   
        }

        protected void idButtonKisiEkleYeni_Click(object sender, EventArgs e)
        {
            formTemizle(this);
        }



       

        

        protected void editContact(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            secilenElemanDetayiGetir(this, "CONTACT", "CONTACT_CODE", String.Format("{0}", code));

      
            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "$('.tab-control').tabcontrol();", true);
            

        }

        protected void drpCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik("SELECT TOP 20 * FROM CONTACT WHERE COMPANY_CODE='"+drpCOMPANY_CODE.SelectedValue+"' ORDER BY CONTACT_CODE DESC");
            GridView1.DataBind();
        }

       
    }
}