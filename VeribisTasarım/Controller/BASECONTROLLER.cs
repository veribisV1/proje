﻿using System;
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
            //string Role = Session["Role"].ToString();
            //if (true)//(!Role.Equals(""))
            //{
            //    rolHatasiMesaji();
            //    return -1;
            //}
            DBARACISI firma = new DBARACISI();
            Dictionary<string, string> paramtereListesi = firma.getStoreParametre(storeProsedurAdi);
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            Dictionary<string, object> dataListesi = controlEslestir.eslestir(this, paramtereListesi);
            if (dataListesi.ContainsKey("@CREATE_USER"))
            {
                dataListesi["@CREATE_USER"] = Session["USER_CODE"];
            }
            if (dataListesi.ContainsKey("@LAST_UPDATE_USER"))
            {
                dataListesi["@LAST_UPDATE_USER"] = Session["USER_CODE"];
            }
            return firma.setStore(storeProsedurAdi, dataListesi);

        }
        /// <summary>
        /// id ye gore elaman getirir
        /// </summary>
        /// <param name="sayfa">this</param>
        /// <param name="tablo">TABLO NAME</param>
        /// <param name="filitre"> COLUM NAME</param>
        /// <param name="filitreEleman">PK</param>
        public void secilenElemanDetayiGetir(Page sayfa, string tablo, string filitre, string filitreEleman)
        {
            DBARACISI adapter = new DBARACISI();

            string sorgu = String.Format("SELECT * FROM {0} WHERE {1}={2}", tablo, filitre, filitreEleman);
            Dictionary<string, string> icerikListesi = adapter.getEleman(sorgu.ToString());
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            controlEslestir.eslestirDoldur(sayfa, icerikListesi);
        }

        /// <summary>
        /// id ye gore elaman getirir
        /// </summary>
        /// <param name="sayfa">this</param>
        /// <param name="tablo">TABLO NAME</param>
        /// <param name="filitre"> COLUM NAME</param>
        /// <param name="filitreEleman">PK</param>
        public void secilenElemanDetayiGetir(Page sayfa, string sorgu)
        {
            DBARACISI adapter = new DBARACISI();
            Dictionary<string, string> icerikListesi = adapter.getEleman(sorgu.ToString());
            CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
            controlEslestir.eslestirDoldur(sayfa, icerikListesi);
        }

        /// <summary>
        /// Rol yetkisi olmadığını belirten Javascript mesajı veridiren
        /// metot
        /// </summary>
        public void rolHatasiMesaji()
        {
            StringBuilder donusMesaji = new StringBuilder();
            donusMesaji.Append("<script type=\"text/javascript\">");
            donusMesaji.Append("window.alert('Kaydetme ve ya DEğiştirme Yetkiniz Yok');");
            donusMesaji.Append("</script>");
            Response.Write(donusMesaji.ToString());
        }
        public void BosMesaji()
        {
            StringBuilder donusMesaji = new StringBuilder();
            donusMesaji.Append("<script type=\"text/javascript\">");
            donusMesaji.Append("window.alert('Boş alanlar Mevcut');");
            donusMesaji.Append("</script>");
            Response.Write(donusMesaji.ToString());
        }

        public void KayitBasariliMesaji(string kayitBilgisi)
        {
            StringBuilder donusMesaji = new StringBuilder();
            donusMesaji.Append("<script type=\"text/javascript\">");
            donusMesaji.Append("window.alert('");
            donusMesaji.Append(kayitBilgisi);
            donusMesaji.Append(" Kayıt İşlemi Başarılı.");
            donusMesaji.Append("');");
            donusMesaji.Append("</script>");
            Response.Write(donusMesaji.ToString());
        }

        public void KapatBasariliMesaji(string kayitBilgisi)
        {
            StringBuilder donusMesaji = new StringBuilder();
            donusMesaji.Append("<script type=\"text/javascript\">");
            donusMesaji.Append("window.alert('");
            donusMesaji.Append(kayitBilgisi);
            donusMesaji.Append(" Kapatma İşlemi Başarılı.");
            donusMesaji.Append("');");
            donusMesaji.Append("</script>");
            Response.Write(donusMesaji.ToString());
        }

        internal void Page_Load()
        {
            if (Session.Count < 1)
            {
                Response.Redirect("Giris.aspx");
            }
            Session["chechRefresh"] = Server.UrlDecode(DateTime.Now.ToString());
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            ViewState["ChekRefresh"] = Session["chechRefresh"];
        }
        public bool refreshOlduMu()
        {
            if (Session["chechRefresh"].ToString() == ViewState["ChekRefresh"].ToString())
            {
                Session["chechRefresh"] = Server.UrlDecode(DateTime.Now.ToString());
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}