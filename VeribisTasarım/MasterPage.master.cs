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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count < 1)
        {
            Response.Redirect("Giris.aspx");
        }
        MenuGoster();

    }

    private void MenuGoster()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["veribis"].ConnectionString);
        conn.Open();
        string MenuSql = "SELECT MENU_NAME,LINK FROM MENULOAD WITH (NOLOCK) WHERE USER_CODE = @KullaniciTipiId ORDER BY ORDER_BY";
        SqlCommand KullaniciMenu = new SqlCommand(MenuSql, conn);
        KullaniciMenu.Parameters.Add("@KullaniciTipiId", SqlDbType.Int).Value = Convert.ToInt32(Session["KullaniciTipiId"]);
        SqlDataAdapter dv = new SqlDataAdapter(KullaniciMenu);

        DataTable dtv = new DataTable();
        dtv.Columns.Add("MENU_NAME");
        dtv.Columns.Add("LINK");
        dv.Fill(dtv);
        Repeater Repeater1 = (Repeater)this.FindControl("Repeater1");

        Repeater1.DataSource = dtv;
        Repeater1.DataBind();


        conn.Close();

        //var menulink = Repeater1.FindControl("menulink") as HtmlGenericControl;
        //menulink.Attributes["class"] = "active";

        //string curlink = Request.RawUrl;

        //if (curlink.Contains("/administration/school"))
        //{
        //    menulink.Attributes["class"] = "selected";
        //}
        //else if (curlink.Contains("/administration/result"))
        //{
        //    resultlink.Attributes["class"] = "selected";
        //}
        //else if (curlink.Contains("/administration/staff"))
        //{
        //    staffslink.Attributes["class"] = "selected";
        //}
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

