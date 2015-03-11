using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Fırsat : GRIDPAGE
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load();
            if (!IsPostBack)
            {
                idDOCUMENT_DATE.Text = DateTime.Now.ToString("yyyy-MM-dd");
                idCERTIFICATE_DATE.Text = DateTime.Now.ToString("yyyy-MM-dd");
                ekranDoldur();
                gridDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var qString = Request.QueryString["param"].ToString();
                    if (qString.Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = qString.Split('-')[0];
                        idCOMPANY_CODE_SelectedIndexChanged(sender, e);
                        idCONTACT_CODE.SelectedValue = qString.Split('-')[1];
                      
                    }
                    else
                    {
                        idCOMPANY_CODE.SelectedValue = qString;
                     
                    }
                   
                }                
            }
        }
        private void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            grFirsatListe.DataSource = dbadapter.getGridIcerik("SELECT OPPORTUNITY_CODE,COMPANY.COMPANY_NAME,CONTACT.NAME AS 'CONTACT_NAME', OPPORTUNITYMASTER.EXPLANATION, STEP.EXP_TR AS 'SEARCH_STEP',USERS.AUSER_NAME +' '+USERS.SURNAME AS 'APPOINTED_USER_CODE', OPPORTUNITYMASTER.EXPLANATION, OPPORTUNITYMASTER.DOCUMENT_DATE,TOTAL,TOTAL_UPB FROM OPPORTUNITYMASTER LEFT JOIN COMPANY ON COMPANY.COMPANY_CODE=OPPORTUNITYMASTER.COMPANY_CODE LEFT JOIN CONTACT ON CONTACT.CONTACT_CODE=OPPORTUNITYMASTER.CONTACT_CODE LEFT JOIN (SELECT * FROM GROUPS WHERE GROUP_CODE=42 ) AS STEP ON STEP.ROW_ORDER_NO=OPPORTUNITYMASTER.SEARCH_STEP LEFT JOIN USERS ON USERS.USER_CODE=OPPORTUNITYMASTER.APPOINTED_USER_CODE WHERE DOCUMENT_TYPE=1 AND OPEN_CLOSE=1 order by OPPORTUNITYMASTER.LAST_UPDATE desc");
            grFirsatListe.DataBind();
        }

     

    
        private void ekranDoldur()
        {

            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Aktivite Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());

            idSELLING_BUYING = dbGetir.doldur(idSELLING_BUYING, dbGetir.getFirsatCinsi());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idREVISION = dbGetir.doldur(idREVISION, dbGetir.getRevizyon());
            idDELIVERY_TYPE = dbGetir.doldur(idDELIVERY_TYPE, dbGetir.getTeslimSekliFirsat());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            idSEARCH_METHOD = dbGetir.doldur(idSEARCH_METHOD, dbGetir.getTakipYontemi());
            idSEARCH_STEP = dbGetir.doldur(idSEARCH_STEP, dbGetir.getTakipAsamalari());
            idPROJECT_CODE = dbGetir.doldur(idPROJECT_CODE, dbGetir.getProje());
            idLAST_POSITION = dbGetir.doldur(idLAST_POSITION, dbGetir.getSonuc());
            idWHY_LOST = dbGetir.doldur(idWHY_LOST, dbGetir.getNedenKaybettik());
            idRIVAL_COMPANY_CODE = dbGetir.doldur(idRIVAL_COMPANY_CODE, dbGetir.getRakipFirma());

            idOPEN_CLOSE = dbGetir.doldur(idOPEN_CLOSE, dbGetir.getAktiviteAcikKapali());
            idOPEN_CLOSE.SelectedValue = "1";
            
            #endregion
            idAPPOINTED_USER_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }


        protected void idButtonFirsatEkleKaydet_Click(object sender, EventArgs e)
        {

            int oppurtunityCode = -1;
            //Tipi kontrol edilecek
            if (String.IsNullOrEmpty(idOPPORTUNITY_CODE.Text))
            {
                oppurtunityCode = kaydet("pInsertOppMaster");
                if (oppurtunityCode != -1)
                {
                    idOPPORTUNITY_CODE.Text = oppurtunityCode.ToString();
                }
            }
            else
            {
                oppurtunityCode = kaydet("pUpdateOppMaster");
            }


        }

        protected void idCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getKisi(idCOMPANY_CODE.SelectedValue));
        }

        protected void editFirsat_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            secilenElemanDetayiGetir(this, "OPPORTUNITYMASTER", "OPPORTUNITY_CODE", String.Format("{0}", code));
            idCOMPANY_CODE_SelectedIndexChanged(sender, e);
            DBARACISI adapter = new DBARACISI();
            System.Data.DataTable ilce = adapter.getGridIcerik(String.Format("select CONTACT_CODE from OPPORTUNITYMASTER where  OPPORTUNITY_CODE={0}", code));
            idCONTACT_CODE.SelectedValue = ilce.Rows[0][0].ToString();
            gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);
        }


    }
}