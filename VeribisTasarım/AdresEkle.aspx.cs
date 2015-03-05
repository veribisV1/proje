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
                //if (Request.QueryString["firma"]!=null)
                //{
                //    idCOMPANY_CODE.Text = Request.QueryString["firma"].ToString();
                //}

                if (Request.QueryString["param"] != null)
                {
                    idCOMPANY_CODE.Text = Request.QueryString["param"].ToString();
                }
                
            }
            
        }

        protected void idButtonAdresKaydet_Click(object sender, EventArgs e)
        {
            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idADDRESS1.Text))
            {
                if (String.IsNullOrEmpty(idADDRESS_CODE.Text))
                {
                    Company_Code = kaydet("pInsertAddress");
                }
                else
                {
                    Company_Code = kaydet("pUpdateAddress");
                }
                if (Company_Code != -1)
                {
                    formTemizle(this);
                }
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
           
        }


        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Adres Ekle DropDownları doldur

            idADDRESS_TYPE_ID = dbGetir.doldur(idADDRESS_TYPE_ID, dbGetir.getAdresTipi());
            idCOUNTY = dbGetir.doldur(idCOUNTY, dbGetir.getUlke());
            idCOUNTY.SelectedIndex = 224;
            idCOUNTY_SelectedIndexChanged(new object(), new EventArgs());
            #endregion

           

        }

        protected void idCOUNTY_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCITY = dbGetir.doldur(idCITY, dbGetir.getSehir(idCOUNTY.SelectedItem.Value));
        }

        protected void idCITY_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCOUNTY1 = dbGetir.doldur(idCOUNTY1, dbGetir.getIlce(Convert.ToInt32(idCITY.SelectedItem.Value)));
        }
    }
}