using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Numune : GRIDPAGE
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load();
            if (!IsPostBack)
            {
                butonText();
                idDOCUMENT_DATE.Text = DateTime.Now.ToString("yyyy-MM-dd");
                idCERTIFICATE_DATE.Text = DateTime.Now.ToString("yyyy-MM-dd");
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
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Numune Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idSEARCH_METHOD = dbGetir.doldur(idSEARCH_METHOD, dbGetir.getTakipYontemi());
            idSEARCH_STEP = dbGetir.doldur(idSEARCH_STEP, dbGetir.getTakipAsamalari());
            #endregion
            idAPPOINTED_USER_CODE.SelectedValue = Session["USER_CODE"].ToString();
        }
        private void butonText()
        {
            btnVeriEkle.Text = ResGetir.resGetir(784);
           // idButtonGeriDon.Text = ResGetir.resGetir();//GERİ DON BUTONU YOK
            idButtonNumuneEkleSil.Text = ResGetir.resGetir(93);
            idButtonNumuneEkleKaydet.Text = ResGetir.resGetir(94);
            idButtonNumuneEkleYeni.Text = ResGetir.resGetir(92);
        }
        protected void idButtonNumuneEkleKaydet_Click(object sender, EventArgs e)
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