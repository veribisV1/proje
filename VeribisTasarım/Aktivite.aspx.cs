using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Aktivite : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ekranDoldur();
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var qString = Request.QueryString["param"].ToString();
                    if (qString.Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = qString.Split('-')[0];
                        idCONTACT_CODE.SelectedValue = qString.Split('-')[1];
                    }
                    else
                    {
                        idCOMPANY_CODE.SelectedValue = qString;
                    }
                }
            }
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Aktivite Ekle DropDownları doldur
           
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idACTIVITY_TYPE = dbGetir.doldur(idACTIVITY_TYPE, dbGetir.getAktiviteTipi());
            idJOINER_CODE = dbGetir.doldur(idJOINER_CODE, dbGetir.getAktiviteSonucGrubu());
            idSUBJECT_CODE = dbGetir.doldur(idSUBJECT_CODE, dbGetir.getAktiviteKonuGrubu());
            idLOCATION = dbGetir.doldur(idLOCATION, dbGetir.getAktiviteNerede());
            idPRIORITY = dbGetir.doldur(idPRIORITY, dbGetir.getAktiviteOncelik());
            idREMEMBER = dbGetir.doldur(idREMEMBER, dbGetir.getAktiviteHatirlatma());
            idACTIVITY_GROUP = dbGetir.doldur(idACTIVITY_GROUP, dbGetir.getAktiviteGrubu());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idPROJECT = dbGetir.doldur(idPROJECT, dbGetir.getProje());
            #endregion
        }

        protected void idButtonAktiviteKaydet_Click(object sender, EventArgs e)
        {
            int activiteCode = -1;
            if (!String.IsNullOrEmpty(idSUBJECT.Text))
            {
                if (String.IsNullOrEmpty(idACTIVITY_CODE.Text))
                {
                    activiteCode = kaydet("pInsertActivity");
                }
                else
                {
                    activiteCode = kaydet("pUpdateActivity");
                }
                if (activiteCode != -1)
                {
                    formTemizle(this);
                }
            }
            else
                BosMesaji();
        }

        protected void idCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getKisi(idCOMPANY_CODE.SelectedValue));
        }
    }
}