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
            if (!String.IsNullOrEmpty(Request.QueryString["param"]))
            {
                logOut();
            }

            //if (!Page.IsPostBack)
            //{
            //    HttpContext.Current.Session.Clear();
            //    HttpContext.Current.Session.Abandon();
            //    HttpContext.Current.User = null;
            //    FormsAuthentication.SignOut();
            //}

        }
        public void logOut()
        {
            Session.Remove("USER_CODE");
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {


            if (!String.IsNullOrEmpty(_txtTicariKod.Text))
            {


                //Kullanıcı girişi kontrol
                DB_ELEMAN_GETIR db = new DB_ELEMAN_GETIR();
                if (db.validateUser(_txtKullaniciAdi.Text, _txtSifre.Text))
                {
                    Session["USER_CODE"] = db.getUserID(_txtKullaniciAdi.Text, _txtSifre.Text);

                    FormsAuthentication.RedirectFromLoginPage(_txtKullaniciAdi.Text, false);

                }

            }
            else
            {
                //this.ClientScript.RegisterStartupScript(this.GetType(), "toastr_message", " toastr.error('Girilen kullanıcı adı veya şifre hatalı.', 'Kullanıcı Girişi');  ", true);
            }

        }

      

    }
}