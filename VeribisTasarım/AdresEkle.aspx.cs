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
                butonText();
                ekranDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["edit"]))
                {
                    var addressCode = Convert.ToInt32(Request.QueryString["edit"]);
                    secilenElemanDetayiGetir(this, "ADDRESS", "ADDRESS_CODE", String.Format("{0}", addressCode));
                    idCITY_SelectedIndexChanged(sender, e);
                    DBARACISI adapter = new DBARACISI();
                    System.Data.DataTable ilce = adapter.getGridIcerik(String.Format("select County1 from ADDRESS where  ADDRESS.ADDRESS_CODE={0}", addressCode));
                    idCOUNTY1.SelectedValue = ilce.Rows[0][0].ToString();
                }
                else
                {

                    if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                    {
                        var qString = Request.QueryString["param"].ToString();
                        if (qString.Contains('-'))
                        {
                            idCOMPANY_CODE.Text = qString.Split('-')[0].ToString();
                            idCONTACT_CODE.Text = qString.Split('-')[1].ToString();
                        }
                        else
                        {
                            idCOMPANY_CODE.Text = qString;
                        }

                    }
                }

            }

        }
        private void butonText()
        {
            idButtonAdresKaydet.Text = ResGetir.resGetir(94);
            idButtonAdresIptal.Text = ResGetir.resGetir(615);

        }
        protected void idButtonAdresKaydet_Click(object sender, EventArgs e)
        {
            int addressCode = -1;
            if (!String.IsNullOrEmpty(idADDRESS1.Text))
            {
                if (String.IsNullOrEmpty(idADDRESS_CODE.Text))
                {
                    addressCode = kaydet("pInsertAddress");
                }
                else
                {
                    addressCode = kaydet("pUpdateAddress");
                }

                if (idADDRESS_TYPE_ID.SelectedValue.Equals("1") && addressCode != -1 && String.IsNullOrEmpty(idCONTACT_CODE.Text))
                {
                    DBARACISI db = new DBARACISI();
                    db.set(String.Format("UPDATE COMPANY SET ADDRESS={0} WHERE COMPANY_CODE={1}", addressCode, idCOMPANY_CODE.Text));
                }
                else if (idADDRESS_TYPE_ID.SelectedValue.Equals("2") && addressCode != -1 && !String.IsNullOrEmpty(idCONTACT_CODE.Text))
                {
                    DBARACISI db = new DBARACISI();
                    db.set(String.Format("UPDATE CONTACT SET ADDRESS={0} WHERE CONTACT_CODE={1}", addressCode, idCONTACT_CODE.Text));
                }
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Refresh", "parent.location.reload(true);", true);
               

            }
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
            idCOUNTY1.Items.Clear();
        }

        protected void idCITY_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCOUNTY1 = dbGetir.doldur(idCOUNTY1, dbGetir.getIlce(Convert.ToInt32(idCITY.SelectedItem.Value)));
        }
    }
}