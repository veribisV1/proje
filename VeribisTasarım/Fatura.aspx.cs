using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Fatura : GRIDPAGE
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ekranDoldur();
            }
            idOPPORTUNITY_CODE.Text = "35";
            gridDoldur(GridView1, idOPPORTUNITY_CODE.Text);
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Fatura Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idSELLING_BUYING = dbGetir.doldur(idSELLING_BUYING, dbGetir.getFaturaCinsi());
            idNORMAL_BACK = dbGetir.doldur(idNORMAL_BACK, dbGetir.getFaturaNormal());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idSELLING_BUYING, dbGetir.userAdSoyadGetir());
            idWAREHOUSE = dbGetir.doldur(idWAREHOUSE, dbGetir.getDepo());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            idPROJECT_CODE = dbGetir.doldur(idPROJECT_CODE, dbGetir.getProje());
            idOPEN_CLOSE = dbGetir.doldur(idOPEN_CLOSE, dbGetir.getFaturaAcikKapali());
            idGROUPS = dbGetir.doldur(idGROUPS, dbGetir.getFaturaGrubu());
            #endregion
        }

        protected void idButtonFaturaEkleKaydet_Click(object sender, EventArgs e)
        {
            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertOppMaster");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);                                 
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