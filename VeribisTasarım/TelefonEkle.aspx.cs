using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class TelefonEkle : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ekranDoldur();
            }
        }

        protected void idButtonTelefonKaydet_Click(object sender, EventArgs e)
        {
            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertPhone");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            //int companyCode = firma.storeKaydet("pInsertPhone", dataListesi);
        }

        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Telefon Ekle DropDownları doldur

            idPHONE_TYPE_ID = dbGetir.doldur(idPHONE_TYPE_ID, dbGetir.getTelefonTipi());
            idCOUNTRY_CODE = dbGetir.doldur(idCOUNTRY_CODE, dbGetir.getUlkeKodu());
          
           
            #endregion

           

        }
    }
}