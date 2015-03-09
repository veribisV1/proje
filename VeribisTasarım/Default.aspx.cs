using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Default : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
               
                FormsAuthentication.RedirectToLoginPage();
                
            }

            DBARACISI adapter = new DBARACISI();
            System.Data.DataTable ilce = adapter.getGridIcerik("select * from CUR where CONVERT(VARCHAR, CURDATE, 112) = CONVERT(VARCHAR, GETDATE(), 112)");
            if (ilce.Rows.Count < 2)
            {
                Label1.Text = "Lütfen Kur bilgilerini güncelleyiniz..";
            } 

        }
    }
}