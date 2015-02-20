using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Proforma : System.Web.UI.Page
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
            idCONTACT_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
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
        }

        protected void idButtonProformaEkleKaydet_Click(object sender, EventArgs e)
        {
            DBARACISI firma = new DBARACISI();
            Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertOppMaster");
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            int companyCode = firma.storeKaydet("pInsertOppMaster", dataListesi);
        }
    }
}