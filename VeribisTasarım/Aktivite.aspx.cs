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
            base.Page_Load();
            if (!IsPostBack)
            {

               
                butonText();
                gridDoldur();
                ekranDoldur();

                idOPENORCLOSE.Text = "1";// aktivite açık;
                if (!String.IsNullOrEmpty(Request.QueryString["param"]))
                {
                    var qString = Request.QueryString["param"].ToString();
                    if (qString.Contains('-'))
                    {
                        idCOMPANY_CODE.SelectedValue = qString.Split('-')[0];
                        idCOMPANY_CODE_SelectedIndexChanged(sender, e);
                        idCONTACT_CODE.SelectedValue = qString.Split('-')[1];
                    }
                    else
                    {
                        idCOMPANY_CODE.SelectedValue = qString;
                    }
                }               

            }
        }

        private void butonText()
        {
            idButtonAktiviteYeni.Text = ResGetir.resGetir(92);
            idButtonAktiviteKaydet.Text = ResGetir.resGetir(94);
            idButtonAktiviteSil.Text = ResGetir.resGetir(93);
            idButtonAktiviteKapat.Text = ResGetir.resGetir(166);
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

            idSDATE.Text = DateTime.Now.ToString();
            idEDATE.Text = DateTime.Now.ToString();

            idAPPOINTED_USER_CODE.SelectedValue = Session["USER_CODE"].ToString();
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
                    if (activiteCode != -1)
                    {
                        idACTIVITY_CODE.Text = activiteCode.ToString();
                    }

                    KayitBasariliMesaji("Aktivite");
                }
                else
                {
                    activiteCode = kaydet("pUpdateActivity");
                }
                //Response.Redirect("Aktivite.aspx");
            }
            else
                BosMesaji();
        }

        protected void idCOMPANY_CODE_SelectedIndexChanged(object sender, EventArgs e)
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getKisi(idCOMPANY_CODE.SelectedValue));
        }

        protected void idButtonAktiviteKapat_Click(object sender, EventArgs e)
        {
            idOPENORCLOSE.Text = "0";
            idButtonAktiviteKaydet_Click(sender, e);
            formTemizle(this);
        }

        private void gridDoldur()
        {
            DBARACISI dbadapter = new DBARACISI();
            GridView1.DataSource = dbadapter.getGridIcerik("SELECT  * FROM ACTIVITY WHERE OPENORCLOSE='1'");
            GridView1.DataBind();
        }
        
        protected void editActivity(object sender, EventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            string code = btn.CommandArgument;
            idCONTACT_CODE.Items.Clear();
            secilenElemanDetayiGetir(this, "ACTIVITY", "ACTIVITY_CODE", String.Format("{0}", code));
            idCOMPANY_CODE_SelectedIndexChanged(sender, e);
            DBARACISI adapter = new DBARACISI();
            System.Data.DataTable ilce = adapter.getGridIcerik(String.Format("select CONTACT_CODE from ACTIVITY where  ACTIVITY_CODE={0}", code));
            idCONTACT_CODE.SelectedValue = ilce.Rows[0][0].ToString();


            //gridDoldur(GridView1, idACTIVITY_CODE.Text);
        }


    }
}