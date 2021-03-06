﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class RakipFirmaEkle : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ekrandoldur();
        }

        private void ekrandoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idRIVAL_GROUP_CODE = dbGetir.doldur(idRIVAL_GROUP_CODE, dbGetir.getRakipFirma());
        }
        protected void idButtonRakipFirmaKaydet_Click(object sender, EventArgs e)
        {
            if (refreshOlduMu())
            {
                return;
            }

            int rivalCode = -1;
            if (!String.IsNullOrEmpty(idRIVAL_COMPANY_NAME.Text))
            {

                rivalCode = kaydet("pInsertRivalCompany");
                idRIVAL_COMPANY_CODE.Text = rivalCode.ToString();
                rivalCode = kaydet("pInsertRivalCompanyGroup");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Refresh", "parent.location.reload(true);", true);          
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
                

            }
        }
    }
}