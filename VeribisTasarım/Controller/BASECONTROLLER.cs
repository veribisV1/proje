using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace VeribisTasarım.Controller
{
    public abstract class BASECONTROLLER : System.Web.UI.Page
    {
        CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
      
        public void formTemizle(Page sayfa)
        {
            controlEslestir.ekranTemizle(sayfa);
        }
        public void kaydet(string storeProsedurAdi)
        {
            DBARACISI firma = new DBARACISI();
            Dictionary<string, string> paramtereListesi = firma.storeParametreGetir(storeProsedurAdi);
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            int companyCode = firma.storeKaydet(storeProsedurAdi, dataListesi);           

        }
    }
}