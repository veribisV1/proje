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
        Dictionary<string, string> dt = adapter.getListEleman(String.Format("select {1} as col1,SQL as col2 from MENULOAD inner join PSQL on MENULOAD.LINK=PSQL.SQL_ID inner join RES on RES.R_ID=MENULOAD.RES_ID WHERE USER_CODE = {0} AND MENULOAD.TYPE=2", Session["USER_CODE"],Session["DIL"]));
       
        dt.Remove("-1");
        Dictionary<string, string> dtClone = new Dictionary<string, string>();
        foreach (string item in dt.Keys)
        {
            dtClone.Add(item,adapter.getGridIcerik(dt[item]).Rows[0][0].ToString());
               // [item] = adapter.getGridIcerik(dtClone[item]).Rows[0][0].ToString();
        }
        Repeater2.DataSource = dtClone;
        Repeater2.DataBind();      
    }


    private void MenuGoster()
    {
        DBARACISI adapter = new DBARACISI();
        Repeater Repeater1 = (Repeater)this.FindControl("Repeater1");
        Repeater1.DataSource = adapter.getGridIcerik(String.Format("SELECT {1} as MENU_NAME,LINK FROM MENULOAD  WITH (NOLOCK) inner join RES on RES.R_ID=MENULOAD.RES_ID WHERE USER_CODE = {0} AND TYPE=1 ORDER BY ORDER_BY", Session["USER_CODE"], Session["DIL"]));
        Repeater1.DataBind();           

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


    protected void btnSearch_ServerClick(object sender, EventArgs e)
    {
       
    }

   
   

    protected void btnSearch_Click(object sender, EventArgs e)
    {


    }
}

