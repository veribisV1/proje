using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using VeribisTasarım.Controller;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count < 1)
        {
            Response.Redirect("Giris.aspx");
        }
        MenuGoster();
        VeriGetir();
    }

    private void VeriGetir()
    {
        DBARACISI adapter = new DBARACISI();
        Repeater Repeater2 = (Repeater)this.FindControl("Repeater2");
        Repeater2.DataSource = adapter.getGridIcerik(String.Format("select MENU_NAME,SQL from MENULOAD inner join PSQL on MENULOAD.LINK=PSQL.SQL_ID WHERE USER_CODE = {0} AND MENULOAD.TYPE=2", Session["USER_CODE"]));
        Repeater2.DataBind();      

    }


    private void MenuGoster()
    {
        DBARACISI adapter = new DBARACISI();
        Repeater Repeater1 = (Repeater)this.FindControl("Repeater1");
        Repeater1.DataSource = adapter.getGridIcerik(String.Format("SELECT MENU_NAME,LINK FROM MENULOAD WITH (NOLOCK) WHERE USER_CODE = {0} AND TYPE=1 ORDER BY ORDER_BY", Session["USER_CODE"]));
        Repeater1.DataBind();    
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);
        //conn.Open();
        //string MenuSql = "SELECT MENU_NAME,LINK FROM MENULOAD WITH (NOLOCK) WHERE USER_CODE = @KullaniciTipiId AND TYPE=1 ORDER BY ORDER_BY";
        //SqlCommand KullaniciMenu = new SqlCommand(MenuSql, conn);
        //KullaniciMenu.Parameters.Add("@KullaniciTipiId", SqlDbType.Int).Value = Convert.ToInt32(Session["KullaniciTipiId"]);
        //SqlDataAdapter dv = new SqlDataAdapter(KullaniciMenu);

        //DataTable dtv = new DataTable();
        //dtv.Columns.Add("MENU_NAME");
        //dtv.Columns.Add("LINK");
        //dv.Fill(dtv);
        //Repeater Repeater1 = (Repeater)this.FindControl("Repeater1");

        //Repeater1.DataSource = dtv;
        //Repeater1.DataBind();


        //conn.Close();

    }

    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        string curlink = Request.RawUrl;

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            var anc = (HtmlAnchor)e.Item.FindControl("menulink");
            if (curlink.Contains(anc.HRef))
            {
                ((HtmlGenericControl)(e.Item.FindControl("menulist"))).
                   Attributes["class"] = "active";
            }
        }
    }

   
   


}

