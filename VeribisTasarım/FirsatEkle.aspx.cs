using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class FirsatEkle : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void idButtonFirsatKaydet_Click(object sender, EventArgs e)
        {
            int rowOrderCode = -1;
            //if (!String.IsNullOrEmpty(idSUBJECT.Text))
            //{
               if (String.IsNullOrEmpty(idROW_ORDER_NO.Text))
                {
                    rowOrderCode = kaydet("pInsertOppDetail");
                }
                else
                {
                    rowOrderCode = kaydet("pUpdateOppDetail");
                }
                if (rowOrderCode != -1)
                {
                    formTemizle(this);
                }
            }
            //else
            //    BosMesaji();
        }
    }
}