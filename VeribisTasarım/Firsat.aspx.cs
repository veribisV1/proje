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
            if (!IsPostBack)
            {
                ekranDoldur();
                gridDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var qString = Request.QueryString["param"].ToString();
                    if (qString.Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = qString.Split('-')[0];
                        idCONTACT_CODE.SelectedValue = qString.Split('-')[1];

                        gridDoldur(Convert.ToInt32(qString.Split('-')[0]), Convert.ToInt32(qString.Split('-')[1]));
                    }
                    else
                    {
                        idCOMPANY_CODE.SelectedValue = qString;
                        gridDoldur(Convert.ToInt32(qString.Split('-')[0]));
                    }

                    secilenElemanDetayiGetir(this, "OPPORTUNITYMASTER", "OPPORTUNITY_CODE", String.Format("{0}", "0"));

                    //idOPPORTUNITY_CODE.Text = "0";
                    //gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);
                }

            }
         
            //gridDoldur(GridView1, "0");

        }
        private void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            grFirsatListe.DataSource = dbadapter.getGridIcerik("SELECT TOP 50 * FROM OPPORTUNITYMASTER order by OPPORTUNITY_CODE desc");
            grFirsatListe.DataBind();
        }

        private void gridDoldur(int companyCode)
        {
            DBARACISI dbadapter = new DBARACISI();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT * FROM OPPORTUNITYMASTER WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" ORDER BY OPPORTUNITY_CODE DESC");
            grFirsatListe.DataSource = dbadapter.getGridIcerik(sorgu.ToString());
            grFirsatListe.DataBind();
        }

        private void gridDoldur(int companyCode, int contactCode)
        {
            DBARACISI dbadapter = new DBARACISI();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("SELECT * FROM OPPORTUNITYMASTER WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            sorgu.Append(" AND CONTACT_CODE=");
            sorgu.Append(contactCode);
            sorgu.Append(" ORDER BY OPPORTUNITY_CODE DESC");
            grFirsatListe.DataSource = dbadapter.getGridIcerik(sorgu.ToString());
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
            #endregion
        }

        //protected void editFirsat(object sender, EventArgs e)
        //{
        //    ImageButton btn = (ImageButton)sender;
        //    string code = btn.CommandArgument;
        //    secilenElemanDetayiGetir(this, "OPPORTUNITYMASTER", "OPPORTUNITY_CODE", String.Format("{0}", code));
            
        //}

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
        }


    }
}