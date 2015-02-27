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
        public void gridSatirDuzenle(object sender, GridViewEditEventArgs e) 
        { 
        }
        public void gridSatirSil(object sender, GridViewCancelEditEventArgs e)
        { 
        }
        public void gridSayfala(object sender, GridViewPageEventArgs e) 
        { 
        }


    }
}
