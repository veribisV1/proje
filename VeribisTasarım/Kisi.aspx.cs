using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Kisi : System.Web.UI.Page
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

            #region Firma Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idSEXUALITY = dbGetir.doldur(idSEXUALITY, dbGetir.getCinsiyet());
            #endregion
        }

       
    }
}