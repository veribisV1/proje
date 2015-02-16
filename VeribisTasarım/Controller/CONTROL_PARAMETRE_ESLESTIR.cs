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
        public Dictionary<string, object> eslestir(Page sayfa, Dictionary<string, string> paramtereListesi, Dictionary<string, string> dataTipleri)
        {
            Dictionary<string, object> dataListesi = new Dictionary<string, object>();


            MasterPage ctl00 = sayfa.FindControl("ctl00") as MasterPage;
            ContentPlaceHolder MainContent = ctl00.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;

            foreach (string item in paramtereListesi.Keys)
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
                            dataListesi.Add(item, tipKontrol(dataTipleri[item], elemanText.Text));
                            
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
                        sonuc=Convert.ToInt16(icerik);
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
                default:
                    break;
            }
            return null;

        }
    }
}