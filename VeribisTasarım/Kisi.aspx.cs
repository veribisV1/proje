﻿using System;
using System.Collections.Generic;
using System.Linq;
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
            }
        }

        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Kişi Ekle DropDownları doldur
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

        protected void idButtonKisiEkleKaydet_Click(object sender, EventArgs e)
        {

            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.getStoreParametre("pInsertContact");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            //int companyCode = firma.setStore("pInsertContact", dataListesi);


            int contactCode = -1;
            if (!String.IsNullOrEmpty(idNAME.Text))
            {
                if (!String.IsNullOrEmpty(idNAME.Text))
                {
                    contactCode = kaydet("pInsertContact");
                }
                else
                {
                    contactCode = kaydet("pUpdateContact");
                }
                if (contactCode != -1)
                {
                    formTemizle(this);
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

    


       
    }
}