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
            if (!IsPostBack)
            {
                DB_ELEMAN_GETIR dbelemanGetir = new DB_ELEMAN_GETIR();
                idCUR_TYPE = dbelemanGetir.doldur(idCUR_TYPE, dbelemanGetir.getParaBirimi());
            }
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
            // }
            //else
            //    BosMesaji();
        }

        protected void btnStokKodAra_Click(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbelemanGetir = new DB_ELEMAN_GETIR();
            idSTOK_CODE = dbelemanGetir.doldur(idSTOK_CODE, dbelemanGetir.getStokKartByKod(txtStokKod.Text));
            idPRODUCT_NAME = dbelemanGetir.doldur(idPRODUCT_NAME, dbelemanGetir.getStokKartByKodName(txtStokKod.Text));
        }

        protected void btnStokAdiAra_Click(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbelemanGetir = new DB_ELEMAN_GETIR();
            idPRODUCT_NAME = dbelemanGetir.doldur(idPRODUCT_NAME, dbelemanGetir.getStokKartByName(txtStokAdi.Text));
            idSTOK_CODE = dbelemanGetir.doldur(idSTOK_CODE, dbelemanGetir.getStokKartByNameKod(txtStokAdi.Text));
        }

        protected void elamnlariYuke(object sender, EventArgs e)
        {
            DropDownList liste = (DropDownList)sender;
            string eleman = liste.SelectedItem.Value;
            secilenElemanDetayiGetir(this, "STOKCARD", "CODE", String.Format("'{0}'", eleman));
            if (liste.ID == idSTOK_CODE.ID)
            {
                idPRODUCT_NAME.SelectedValue = idSTOK_CODE.SelectedValue;
            }
            else if (liste.ID == idPRODUCT_NAME.ID)
            {
                idSTOK_CODE.SelectedValue = idPRODUCT_NAME.SelectedValue;
            }
            alanlariHesapla();
        }

        protected void masraf_degisim(object sender, EventArgs e)
        {
            TextBox masraf = (TextBox)sender;
            if (masraf.ID == idEXPENSE_PERCENT.ID)
            {
                idEXPENSE_TOTAL.Text = idEXPENSE_PERCENT.Text;
            }
            else if (masraf.ID == idEXPENSE_TOTAL.ID)
            {
                idEXPENSE_PERCENT.Text = idEXPENSE_TOTAL.Text;
            }
            alanlariHesapla();
        }
        private void alanlariHesapla()
        {
            DB_ELEMAN_GETIR dbelemanGetir = new DB_ELEMAN_GETIR();
            idCUR_VALUE.Text = dbelemanGetir.getParaBirimiDegeri(idCUR_TYPE.SelectedValue.ToString(), DateTime.Now);
            double kurTutari = (String.IsNullOrEmpty(idCUR_VALUE.Text)) ? 1 : Convert.ToDouble(idCUR_VALUE.Text);
            double miktar = (String.IsNullOrEmpty(idQUANTITY.Text)) ? 1 : Convert.ToDouble(idQUANTITY.Text);
            double PRICE = (String.IsNullOrEmpty(idUNIT_PRICE.Text)) ? 1 : Convert.ToDouble(idUNIT_PRICE.Text);
            
            double TOTAL_UNTAX = PRICE * miktar;
            double TOTAL_UPBK_UNTAX = kurTutari * TOTAL_UNTAX;
            double DISCOUNT_TOTAL = (String.IsNullOrEmpty(idDISCOUNT_TOTAL.Text)) ? 0 : Convert.ToDouble(idDISCOUNT_TOTAL.Text);
            double EXPENSE_TOTAL = (String.IsNullOrEmpty(idEXPENSE_TOTAL.Text)) ? 0 : Convert.ToDouble(idEXPENSE_TOTAL.Text);
            double TAX=(String.IsNullOrEmpty(idTAX_PERCENT.Text)) ? 0 : Convert.ToDouble(idTAX_PERCENT.Text);

            double TOTAL = (TOTAL_UNTAX * (1 + TAX / 100)) + (DISCOUNT_TOTAL + EXPENSE_TOTAL);
            double TOTAL_UPBK = TOTAL * kurTutari;

            idTOTAL_UNTAX.Text = TOTAL_UNTAX.ToString();
            idTOTAL_UPBK_UNTAX.Text = TOTAL_UPBK_UNTAX.ToString();
            idTOTAL.Text = TOTAL.ToString();
            idTOTAL_UPBK.Text = TOTAL_UPBK.ToString();           
        }




    }
}