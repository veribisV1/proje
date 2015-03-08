﻿using System;
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
               

               
                //Kullanıcı girişi kontrol
                DB_ELEMAN_GETIR db = new DB_ELEMAN_GETIR();
                if (db.validateUser(_txtKullaniciAdi.Text, _txtSifre.Text))
                {
                    Session["USER_CODE"] = db.getUserID(_txtKullaniciAdi.Text, _txtSifre.Text);
                    Session["USER_NAME"] = _txtKullaniciAdi.Text;
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