using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class FirmaListeAdi : BASECONTROLLER
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                griddoldur();
            }
        }
        private void griddoldur()
        {
            SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);
            baglanti.Open();
            string komut = "Select * from CompanyView";
            SqlDataAdapter dAdapter = new SqlDataAdapter(komut, baglanti);
            DataSet ds = new DataSet();
            dAdapter.Fill(ds);
            dt = ds.Tables[0];
            GridView1.DataSource = dt;
            GridView1.DataBind();
            baglanti.Close();
        }
        private void AraBul(string straranan)
        {
            lblAlert.Visible = false;

            SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);
            baglanti.Open();
            string komut = "Select * from CompanyView";
            SqlDataAdapter dAdapter = new SqlDataAdapter(komut, baglanti);
            DataSet ds = new DataSet();
            dAdapter.Fill(ds);
            dt = ds.Tables[0];
            DataView dv = new DataView(dt);
            string aranacak = null;
            if (!String.IsNullOrEmpty(straranan))
            {
                aranacak = string.Format("{0} '%{1}%'",
                GridView1.SortExpression, straranan);

            }
            dv.RowFilter = "FIRMA_ADI like" +  aranacak;
            if (dv.Count > 0)
            {
                GridView1.DataSource = dv;
                GridView1.DataBind();

                Button backbutton = (Button)GridView1.FooterRow.FindControl("btngeri");
                backbutton.Visible = true;
            }
            else
            {

                lblAlert.Visible = true;
            }
          
            
           
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            if (e.CommandName == "Ara")
            {
                TextBox aranan = (TextBox)GridView1.FooterRow.FindControl("txtara");
                AraBul(aranan.Text);
            }
            else if (e.CommandName == "Geri")
            {
                griddoldur();
            }
        }
        public string Highlight(string InputTxt)
        {
            GridViewRow gvr = GridView1.FooterRow;
            if (gvr != null)
            {
                TextBox txtornek = (TextBox)GridView1.FooterRow.FindControl("txtara");

                if (txtornek.Text != null)
                {
                    string straranan = txtornek.Text;

              
                    Regex belirecek = new Regex(straranan.Replace(" ", "|").Trim(),
                                   RegexOptions.IgnoreCase);



                    return belirecek.Replace(InputTxt, new MatchEvaluator(belirt));

                }
                else
                    return InputTxt;
            }
            else
            {
                return InputTxt;
            }
        }
        public string belirt(Match m)
        {
            return "<span class='highlight'>" + m.Value + "</span>";
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            int yeniSayfaIndex = e.NewPageIndex;
            GridView1.PageIndex = yeniSayfaIndex;
            griddoldur();
        }

    }
}