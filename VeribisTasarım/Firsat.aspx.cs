﻿using System;
using System.Collections.Generic;
using System.Linq;
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

                if (Request.QueryString["param"] != null)
                {
                    //idROW_ORDER_NO.Text = Request.QueryString["param"].ToString();
                    //idOPPORTUNITY_CODE.Text = Request.QueryString["param2"].ToString();
                    //btnStokKodAra_Click(sender, e);
                    //editIcerikYerlestir();

                    secilenElemanDetayiGetir(this, "OPPORTUNITYMASTER", "OPPORTUNITY_CODE", String.Format("{0}", "0"));                 
                    idOPPORTUNITY_CODE.Text = "1";
                    gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);
                }
            }
           idOPPORTUNITY_CODE.Text = "0";
           gridDoldur(GridView1,idOPPORTUNITY_CODE.Text);

            //secilenElemanDetayiGetir(this, "OPPORTUNITYMASTER", "OPPORTUNITY_CODE", String.Format("{0}", "1"));
            //idOPPORTUNITY_CODE.Text = "1";
            //gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);


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
        protected void idButtonFirsatEkleKaydet_Click(object sender, EventArgs e)
        {

                int oppurtunityCode = -1;
                //Tipi kontrol edilecek
                if (String.IsNullOrEmpty(idOPPORTUNITY_CODE.Text))
                {
                    oppurtunityCode = kaydet("pInsertOppMaster");
                }
                else
                {
                    oppurtunityCode = kaydet("pUpdateOppMaster");
                }
                if (oppurtunityCode != -1)
                {
                    formTemizle(this);
                }
            
        }

        protected void idCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getKisi(idCOMPANY_CODE.SelectedValue));
        }

         
    }
}