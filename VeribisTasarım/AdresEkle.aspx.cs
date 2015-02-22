using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class AdresEkle : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ekranDoldur();
            }
            
        }

        protected void idButtonAdresKaydet_Click(object sender, EventArgs e)
        {
            //DBARACISI firma = new DBARACISI();
            //Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertAddress");
            //CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            //Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            //int companyCode = firma.storeKaydet("pInsertAddress", dataListesi);
        }


        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Adres Ekle DropDownları doldur

            idADDRESS_TYPE_ID = dbGetir.doldur(idADDRESS_TYPE_ID, dbGetir.getAdresTipi());
            idCOUNTY = dbGetir.doldur(idCOUNTY, dbGetir.getUlke());
            
         
            #endregion

           

        }

        protected void idCOUNTY_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCITY = dbGetir.doldur(idCITY, dbGetir.getSehir(idCOUNTY.SelectedItem.Value));
        }
    }
}