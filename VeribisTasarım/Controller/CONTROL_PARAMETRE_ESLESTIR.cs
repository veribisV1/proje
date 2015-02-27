using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace VeribisTasarım.Controller
{
    public class CONTROL_PARAMETRE_ESLESTIR
    {

        /// <summary>
        /// Storeprosedureden parametreleri alıp sayfadaki 
        /// kontrollerle eşleştirip
        /// degereleri database gönderen yordam
        /// </summary>
        /// <param name="sayfa">Viev aspx </param>
        /// <param name="paramtereListesi">store prosedur listesi </param>
        /// <returns>sql parametre ye hazır liste</returns>
        public Dictionary<string, object> eslestir(Page sayfa, Dictionary<string, string> dataTipleri)
        {
            Dictionary<string, object> dataListesi = new Dictionary<string, object>();
            Control MainContent;

            MasterPage ctl00 = sayfa.FindControl("ctl00") as MasterPage;
            if (ctl00 == null)
            {
                MainContent = sayfa;
            }
            else
            {
                MainContent = ctl00.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
            }

            foreach (string item in dataTipleri.Keys)
            {
                string okunacakElemanId = item.Replace("@", "id");
                Control eleman = MainContent.FindControl(okunacakElemanId);
                if (eleman != null)
                {
                    if (eleman.GetType() == typeof(TextBox))
                    {
                        TextBox elemanText = (TextBox)eleman;
                        dataListesi.Add(item, tipKontrol(dataTipleri[item], elemanText.Text));
                    }
                    else
                        if (eleman.GetType() == typeof(DropDownList))
                        {
                            DropDownList elemanText = (DropDownList)eleman;
                            dataListesi.Add(item, tipKontrol(dataTipleri[item], elemanText.SelectedValue));

                        }
                        else
                        {
                            string tip = eleman.GetType().ToString();
                            dataListesi.Add(item, tipKontrol(dataTipleri[item], null));
                        }

                }
                else
                {
                    dataListesi.Add(item, tipKontrol(dataTipleri[item], null));
                }
            }
            return dataListesi;
        }

        /// <summary>
        /// tip düzenleye yapı
        /// </summary>
        /// <param name="tip">NVarChar,Int,DateTime,Decimal</param>
        /// <param name="icerik">içeriği null ya da text </param>
        /// <returns>tipe göre dönüş yap</returns>
        private object tipKontrol(string tip, string icerik)
        {
            switch (tip)
            {
                case "NVarChar":

                    if (String.IsNullOrEmpty(icerik))
                    {
                        icerik = "-1";
                    }
                    return icerik;
                    break;
                case "Int":
                    int sonuc = -1;
                    if (!String.IsNullOrEmpty(icerik))
                    {
                        sonuc = Convert.ToInt16(icerik);
                    }
                    return sonuc;
                    break;
                case "DateTime":
                    DateTime tarih = DateTime.Now;
                    if (!String.IsNullOrEmpty(icerik))
                    {
                        tarih = DateTime.Parse(icerik);
                    }
                    return tarih;
                    break;
                case "Decimal":
                    double dec = (!String.IsNullOrEmpty(icerik)) ? Convert.ToDouble(icerik) : -1;
                    return dec;
                    break;
                case "VarBinary":
                    int decf = (!String.IsNullOrEmpty(icerik)) ? Convert.ToInt32(icerik) : -1;
                    return decf;
                    break;
                case "Real":
                    double real = (!String.IsNullOrEmpty(icerik)) ? Convert.ToDouble(icerik) : -1;
                    return real;
                    break;
                default:
                    break;
            }
            return null;

        }


        /// <summary>
        /// Ekran daki elamanların içini temizler
        /// </summary>
        /// <param name="sayfa"></param>
        /// <param name="paramtereListesi"></param>
        /// <param name="dataTipleri"></param>
        /// <returns></returns>
        public void ekranTemizle(Page sayfa)
        {
            recursiveEkranTEmizle(sayfa);
        }

        private void recursiveEkranTEmizle(Control childc)
        {
            if (childc is TextBox)
            {
                TextBox elemanText = (TextBox)childc;
                elemanText.Text = "";
            }
            else if (childc is DropDownList)
            {
                DropDownList elemanText = (DropDownList)childc;
                elemanText.SelectedValue = "-1";
            }
            foreach (Control c in childc.Controls)
            {
                recursiveEkranTEmizle(c);
            }
        }
        /// <summary>
        /// Storeprosedureden parametreleri alıp sayfadaki 
        /// kontrollerle eşleştirip iclerini
        /// dolduran
        /// </summary>
        /// <param name="sayfa">Viev aspx </param>
        /// <param name="paramtereListesi">store prosedur listesi </param>
        /// <returns>sql parametre ye hazır liste</returns>
        public void eslestirDoldur(Page sayfa, Dictionary<string, string> paramtereListesi)
        {
            MasterPage ctl00 = sayfa.FindControl("ctl00") as MasterPage;
            ContentPlaceHolder MainContent = ctl00.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
            foreach (string item in paramtereListesi.Keys)
            {
                string okunacakElemanId = "id" + item;
                Control eleman = MainContent.FindControl(okunacakElemanId);
                if (eleman != null)
                {
                    if (eleman.GetType() == typeof(TextBox))
                    {
                        if (paramtereListesi[item].Equals("-1"))
                            continue;
                        TextBox elemanText = (TextBox)eleman;
                        elemanText.Text = paramtereListesi[item];
                    }
                    else
                        if (eleman.GetType() == typeof(DropDownList))
                        {
                            DropDownList elemanText = (DropDownList)eleman;
                            elemanText.SelectedValue = paramtereListesi[item];

                        }
                        else
                        {

                        }
                }

            }

        }
    }
}