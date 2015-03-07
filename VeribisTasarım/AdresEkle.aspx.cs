﻿using System;
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
                if (!String.IsNullOrEmpty(Request.QueryString["edit"]))
                {
                    var addressCode = Convert.ToInt32(Request.QueryString["edit"]);
                    secilenElemanDetayiGetir(this, "ADDRESS", "ADDRESS_CODE", String.Format("{0}", addressCode));
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
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Refresh", "parent.location.reload(true);", true);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
           
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
        }

        protected void idCITY_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCOUNTY1 = dbGetir.doldur(idCOUNTY1, dbGetir.getIlce(Convert.ToInt32(idCITY.SelectedItem.Value)));
        }
    }
}