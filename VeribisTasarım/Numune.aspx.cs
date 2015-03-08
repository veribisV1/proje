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
                idDOCUMENT_DATE.Text = DateTime.Now.ToString("yyyy-MM-dd");
                ekranDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var qString = Request.QueryString["param"].ToString();
                    if (qString.Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = qString.Split('-')[0];
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
    }
}