using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class TelefonEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void idButtonTelefonKaydet_Click(object sender, EventArgs e)
        {
            FIRMA firma = new FIRMA();
            Dictionary<string, string> paramtereListesi = firma.firmaParametreGetir("pInsertPhone");
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi, paramtereListesi);
            int companyCode = firma.firmaKaydet("pInsertPhone", dataListesi);
        }
    }
}