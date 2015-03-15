using System;
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

        }

        protected void idButtonRakipFirmaKaydet_Click(object sender, EventArgs e)
        {
            int rivalCode = -1;
            if (!String.IsNullOrEmpty(idRIVAL_COMPANY_NAME.Text))
            {

                rivalCode = kaydet("pInsertRivalCompany");         

              
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Refresh", "parent.location.reload(true);", true);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);

            }
        }
    }
}