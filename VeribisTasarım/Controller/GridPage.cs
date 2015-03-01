using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace VeribisTasarım.Controller
{
    public abstract class GRIDPAGE : BASECONTROLLER
    {
        public void gridDoldur(GridView grid, string oppCode)
        {
            GRID girdData = new GRID();
            grid.DataSource = girdData.getGridEleman(oppCode);
            grid.DataBind();
        }
        public void gridSatirEkle(object sender, EventArgs e)
        {
        }
        public void gridSatirDuzenle(object sender, EventArgs e) 
        {
            ImageButton silButon = (ImageButton)sender;
            string row = silButon.CommandArgument;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "OpenPage('FirsatEkle.aspx','"+row+"')", true);
        }
        public void gridSatirSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string row = silButon.CommandArgument;
          //  Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "OpenPage('FirsatEkle.aspx','2')", true);
        }
        public void gridSayfala(object sender, EventArgs e) 
        { 
        }


    }
}
