﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Proforma : GRIDPAGE
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load();
            if (!IsPostBack)
            {
                butonText();
               
                ekranDoldur();
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

        private void butonText()
        {
            btnVeriEkle.Text = ResGetir.resGetir(784);
            //idButtonGeriDon.Text = ResGetir.resGetir();//YOK
            idButtonProformaEkleSil.Text = ResGetir.resGetir(93);
            idButtonProformaEkleKaydet.Text = ResGetir.resGetir(94);
            idButtonProformaEkleYeni.Text = ResGetir.resGetir(92);
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Kişi Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            //idCONTACT_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idSELLING_BUYING = dbGetir.doldur(idSELLING_BUYING, dbGetir.getProformaCinsi());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idSIPARIS_YOLU = dbGetir.doldur(idSIPARIS_YOLU, dbGetir.getSiparisYolu());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            idDELIVERY_TYPE = dbGetir.doldur(idDELIVERY_TYPE, dbGetir.getTeslimSekli());
            idMENSEI = dbGetir.doldur(idMENSEI, dbGetir.getMensei());
            idBANKA_BILGISI = dbGetir.doldur(idBANKA_BILGISI, dbGetir.getBankaBilgisi());
            //idSEVK_ADRESI = dbGetir.doldur(idSEVK_ADRESI, dbGetir.getS());
            idAMBALAJLAMA = dbGetir.doldur(idAMBALAJLAMA, dbGetir.getAmbalaj());
            idNAKLIYE_TIPI = dbGetir.doldur(idNAKLIYE_TIPI, dbGetir.getNakliyeTipi());
            idNAKLIYE_FIRMASI = dbGetir.doldur(idNAKLIYE_FIRMASI, dbGetir.getNakliyeFirma());
            idWHY_LOST = dbGetir.doldur(idWHY_LOST, dbGetir.getNedenKaybettik());
            idRIVAL_COMPANY_CODE = dbGetir.doldur(idRIVAL_COMPANY_CODE, dbGetir.getRakipFirma());
            #endregion

            idDOCUMENT_DATE.Text = DateTime.Now.ToString();
            idCERTIFICATE_DATE.Text = DateTime.Now.ToString();
            idSIPARIS_TARIHI.Text = DateTime.Now.ToString();
            idAPPOINTED_USER_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }

        protected void idButtonProformaEkleKaydet_Click(object sender, EventArgs e)
        {
            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertOppMaster");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            //int companyCode = firma.storeKaydet("pInsertOppMaster", dataListesi);
            if (refreshOlduMu())
            {
                return;
            }

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