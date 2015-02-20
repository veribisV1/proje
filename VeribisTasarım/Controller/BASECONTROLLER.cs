using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace VeribisTasarım.Controller
{
    public abstract class BASECONTROLLER : System.Web.UI.Page
    {
        CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
      
        /// <summary>
        /// ekrandaki tüm form elemanlarının
        /// içeriğini temizler
        /// </summary>
        /// <param name="sayfa"></param>
        public void formTemizle(Page sayfa)
        {
            controlEslestir.ekranTemizle(sayfa);
        }
        /// <summary>
        /// insert ve update komutlarında kullanılacak 
        /// </summary>
        /// <param name="storeProsedurAdi"></param>
        /// <returns> PK döndürür </returns>
        public int kaydet(string storeProsedurAdi)
        {
            DBARACISI firma = new DBARACISI();
            Dictionary<string, string> paramtereListesi = firma.getStoreParametre(storeProsedurAdi);
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            return  firma.setStore(storeProsedurAdi, dataListesi);         

        }

        public void secilenElemanDetayiGetir(Page sayfa,string tablo,string filitre,string filitreEleman)
        {
            DBARACISI adapter = new DBARACISI();
            StringBuilder sorgu = new StringBuilder();
            sorgu.Append("select * from ");
            sorgu.Append(tablo);
            sorgu.Append(" where ");
            sorgu.Append(filitre);
            sorgu.Append("=");
            sorgu.Append(filitreEleman);
            Dictionary<string, string> icerikListesi = adapter.getEleman(sorgu.ToString());
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            controlEslestir.eslestirDoldur(sayfa, icerikListesi);
        }
    }
}