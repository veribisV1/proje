using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class KisiListe : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    idCOMPANY_CODE.Text = Request.QueryString["param"].ToString();
                    gridDoldur();
                }
               
            }
        }

        private void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik("SELECT * FROM CONTACT WHERE COMPANY_CODE=" + Convert.ToInt32(idCOMPANY_CODE.Text));
            GridView1.DataBind();
        }
        protected void editContact(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
                      
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "parent.location.replace('Kisi.aspx?param=" + code + "');", true);
           
                 
        }

        protected void btnVeriEkle_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "parent.$.fancybox.close();", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Redirect", "parent.location.replace('Kisi.aspx?btnKisiListele='+'yeni');", true);
        }
    }
}