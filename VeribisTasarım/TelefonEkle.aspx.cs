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
                if (Request.QueryString["param"]!=null)
                {
                    idCOMPANY_CODE.Text = Request.QueryString["param"].ToString();
                }
                
            }
        }

        protected void idButtonTelefonKaydet_Click(object sender, EventArgs e)
        {
         

            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idPHONE_NUMBER.Text))
            {
                if (String.IsNullOrEmpty(idPHONE_CODE.Text))
                {
                    Company_Code = kaydet("pInsertPhone");
                }
                else
                {
                    Company_Code = kaydet("pUpdatePhone");
                }
                if (Company_Code != -1)
                {
                    formTemizle(this);
                }
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Refresh", "parent.location.reload(true);", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
        }

        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Telefon Ekle DropDownları doldur

            idPHONE_TYPE_ID = dbGetir.doldur(idPHONE_TYPE_ID, dbGetir.getTelefonTipi());
            idCOUNTRY_CODE = dbGetir.doldur(idCOUNTRY_CODE, dbGetir.getUlkeKodu());
            idCOUNTRY_CODE.SelectedIndex = 39;
            idCOUNTRY_CODE_SelectedIndexChanged(new object(), new EventArgs());
          
           
            #endregion

           

        }

        protected void idCOUNTRY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idAREA_CODE = dbGetir.doldur(idAREA_CODE, dbGetir.getAlanKodu(Convert.ToInt32(idCOUNTRY_CODE.SelectedItem.Value)));
           
        }
    }
}