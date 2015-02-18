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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MenuGoster();
        }
    }
    private void MenuGoster()
    {
        //    SqlProccess cmd = new SqlProccess();
        //     SqlParameter[] paramArray = new SqlParameter[]   
        //    {
        //        new SqlParameter("@KullaniciTipiId",SqlDbType.Int)
        //    };

        //    paramArray[0].Value = Convert.ToUInt32(Session["KullaniciTipiId"]);

        //    SqlDataReader dr = cmd.ExecuteReader("dbo.SP_KULLANICI_MENU", CommandType.StoredProcedure, paramArray);
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
        Repeater Menu2 = (Repeater)this.FindControl("Menu2");
        
        Menu2.DataSource = dtv;
        Menu2.DataBind();
       
        Repeater Repeater2 = (Repeater)this.FindControl("Repeater2");
        Repeater2.DataSource = dtv;
        Repeater2.DataBind();
        conn.Close();
       
    }
    
}

