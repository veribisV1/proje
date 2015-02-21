using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
           
            if (!String.IsNullOrEmpty(_txtTicariKod.Text))
            {
                //Hangi veritabaninin kullanilacagi bilgisi alindiktan sonra web.config'deki Connection String de 
                //Initial Catalog alani degistiriliyor.
                DBTOOL dbTool = new DBTOOL();
                var databaseName = dbTool.getDatabaseName(_txtTicariKod.Text);

                var configuration = WebConfigurationManager.OpenWebConfiguration("~");
                var section = (ConnectionStringsSection)configuration.GetSection("connectionStrings");
                section.ConnectionStrings["veribis"].ConnectionString = "Data Source=.;Initial Catalog=" + databaseName + ";User ID=sa;Password=P@ssw0rd";
                configuration.Save();

                if (Membership.ValidateUser(_txtKullaniciAdi.Text, _txtSifre.Text))
                {
                    FormsAuthentication.RedirectFromLoginPage(_txtKullaniciAdi.Text, false);
                }
                else
                {
                    //this.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", " toastr.error('Girilen kullanıcı adı veya şifre hatalı.', 'Kullanıcı Girişi');  ", true);
                }
            }

        }
    }
}