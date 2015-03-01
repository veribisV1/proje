using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
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
            recursiveElemanBul(this);
            oppCode = String.Format("{0}&param2={1}",row, oppCode);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction",String.Format("OpenPage('FirsatEkle.aspx','{0}')",oppCode), true);
        }
        public void gridSatirSil(object sender, EventArgs e)
        {
            ImageButton silButon = (ImageButton)sender;
            string rowOrderNo = silButon.CommandArgument;
            DBARACISI dbadapter = new DBARACISI();
            recursiveElemanBul(this);
            dbadapter.set(String.Format("DELETE FROM OPPORTUNITYDETAIL WHERE OPPORTUNITY_CODE={0} AND ROW_ORDER_NO={1}", oppCode, rowOrderNo));

        }
        string oppCode;
        bool arananElemaqnBulundu = false;

        /// <summary>
        /// sayfa içerisinde eleman arar
        /// </summary>
        /// <param name="childc"></param>
        private void recursiveElemanBul(Control childc)
        {
            if (childc.ID == "idOPPORTUNITY_CODE")
            {
                oppCode = ((TextBox)childc).Text;
                arananElemaqnBulundu = true;
            }
            if (arananElemaqnBulundu)
            {
                return;
            }
            foreach (Control c in childc.Controls)
            {
                recursiveElemanBul(c);
            }
        }
        public void gridSayfala(object sender, EventArgs e)
        {
        }


    }
}
