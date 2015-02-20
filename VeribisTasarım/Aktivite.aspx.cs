using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Aktivite : System.Web.UI.Page
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

            #region Aktivite Ekle DropDownları doldur
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getFirma());
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idACTIVITY_TYPE = dbGetir.doldur(idACTIVITY_TYPE, dbGetir.getAktiviteTipi());
            idJOINER_CODE = dbGetir.doldur(idJOINER_CODE, dbGetir.getAktiviteSonucGrubu());
            idSUBJECT_CODE = dbGetir.doldur(idSUBJECT_CODE, dbGetir.getAktiviteKonuGrubu());
            idLOCATION = dbGetir.doldur(idLOCATION, dbGetir.getAktiviteNerede());
            idPRIORITY = dbGetir.doldur(idPRIORITY, dbGetir.getAktiviteOncelik());
            idREMEMBER = dbGetir.doldur(idREMEMBER, dbGetir.getAktiviteHatirlatma());
            idACTIVITY_GROUP = dbGetir.doldur(idACTIVITY_GROUP, dbGetir.getAktiviteGrubu());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idPROJECT = dbGetir.doldur(idPROJECT, dbGetir.getProje());
            #endregion
        }

        protected void idButtonAktiviteKaydet_Click(object sender, EventArgs e)
        {
            DBARACISI firma = new DBARACISI();
            Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertActivity");
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            int companyCode = firma.storeKaydet("pInsertActivity", dataListesi);
        }
    }
}