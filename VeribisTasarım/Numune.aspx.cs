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
            if (!IsPostBack)
            {
                ekranDoldur();
            }
            idOPPORTUNITY_CODE.Text = "0";
            gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Numune Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            //idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getKisi());
            idSEARCH_METHOD = dbGetir.doldur(idSEARCH_METHOD, dbGetir.getTakipYontemi());
            idSEARCH_STEP = dbGetir.doldur(idSEARCH_STEP, dbGetir.getTakipAsamalari());
            #endregion
        }

        protected void idButtonNumuneEkleKaydet_Click(object sender, EventArgs e)
        {
            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertOppMaster");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this,  paramtereListesi);
            //int companyCode = firma.storeKaydet("pInsertOppMaster", dataListesi);

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