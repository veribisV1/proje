using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using VeribisTasarım.Controller;



namespace VeribisTasarım
{
    public partial class Company : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                adresDoldur();
                telefonDoldur();
                ekranDoldur();
            }

        }

        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();
            #region Firma Ekle DropDownları doldur
            idCOMPANY_REPRESENT_CODE = dbGetir.doldur(idCOMPANY_REPRESENT_CODE, dbGetir.userAdSoyadGetir());
            idSECTOR = dbGetir.doldur(idSECTOR, dbGetir.getSektor());
            idCOMPANY_SPECIAL_TYPE = dbGetir.doldur(idCOMPANY_SPECIAL_TYPE, dbGetir.getFirmaTipi());
            idSTATUS = dbGetir.doldur(idSTATUS, dbGetir.getFirmaDurum());
            idUPPER_COMPANY_CODE = dbGetir.doldur(idUPPER_COMPANY_CODE, dbGetir.getFirma());
            idCOMPANY_REGION = dbGetir.doldur(idCOMPANY_REGION, dbGetir.getBolge());
            idGROUP_CODE = dbGetir.doldur(idGROUP_CODE, dbGetir.getGrup());
            idCOMPANY_REFERANCE = dbGetir.doldur(idCOMPANY_REFERANCE, dbGetir.getReferans());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            #endregion

            #region Makina Parkı DropDownları doldur
            idNAME = dbGetir.doldur(idNAME, dbGetir.getMarka());
            idMAKINAPARKI_YILI = dbGetir.doldur(idMAKINAPARKI_YILI, dbGetir.getModel());
            idMAKINAPARKI_TIP1 = dbGetir.doldur(idMAKINAPARKI_TIP1, dbGetir.getTip(1));
            idMAKINAPARKI_TIP2 = dbGetir.doldur(idMAKINAPARKI_TIP2, dbGetir.getTip(2));
            idMAKINAPARKI_TIP3 = dbGetir.doldur(idMAKINAPARKI_TIP3, dbGetir.getTip(3));
            idMAKINAPARKI_TIP4 = dbGetir.doldur(idMAKINAPARKI_TIP4, dbGetir.getTip(4));
            idMAKINAPARKI_TIP5 = dbGetir.doldur(idMAKINAPARKI_TIP5, dbGetir.getTip(5));
            #endregion

        }


        private void adresDoldur(int companyCode = 2)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT GROUPS.EXP_TR AS TUR,(ADDRESS.ADDRESS1+ ' ' + ADDRESS.ADDRESS2 + ' ' + ADDRESS.ADDRESS3) AS ADRES, ADDRESS.COUNTY AS ÜLKE,  ADDRESS.CITY AS İL ,ADDRESS.COUNTY1 AS İLÇE FROM ADDRESS INNER JOIN GROUPS ON ADDRESS.ADDRESS_CODE=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=1 AND ADDRESS.COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();

        }

        private void telefonDoldur(int companyCode = 2)
        {
            DBTOOL db = new DBTOOL();
            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT GROUPS.EXP_TR AS TUR,(PHONE.COUNTRY_CODE+ ' (' + PHONE.AREA_CODE + ') ' + PHONE.PHONE_NUMBER) AS TELEFON FROM PHONE INNER JOIN GROUPS ON PHONE.PHONE_TYPE_ID=GROUPS.ROW_ORDER_NO WHERE GROUPS.GROUP_CODE=3 AND COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }


        protected void idButtonFirmaEkleKaydet_Click1(object sender, EventArgs e)
        {
            int Company_Code = -1;
            if (!String.IsNullOrEmpty(idCOMPANY_NAME.Text))
            {
                if (String.IsNullOrEmpty(idCOMPANY_CODE.Text))
                {
                    Company_Code = kaydet("pInsertCompany");
                }
                else
                {
                    Company_Code = kaydet("pUpdateCompany");
                }
                if (Company_Code != -1)
                {
                    idCOMPANY_CODE.Text = Company_Code.ToString();
                    //formTemizle(this);
                }
            }

<<<<<<< HEAD
        }
        //secilenElemanDetayiGetir(this, "COMPANY", "COMPANY_CODE", "100");

        private static int PageSize = 15;

        //private void BindDummyRow()
        //{
        //    DataTable dummy = new DataTable();
        //    dummy.Columns.Add("COMPANY_CODE");
        //    dummy.Columns.Add("COMPANY_NAME");
        //    dummy.Columns.Add("ADDRESS");
        //    dummy.Columns.Add("SECTOR");
        //    dummy.Columns.Add("PHONE");
        //    dummy.Columns.Add("MAIL");
        //    dummy.Columns.Add("WEBADDRESS");
        //    dummy.Rows.Add();

        //    gvCustomers.DataSource = dummy;
        //    gvCustomers.DataBind();
        //}

        //[WebMethod]
        //public static string GetCustomers(string searchTerm, int pageIndex)
        //{
        //    string query = "[GetCustomers_Pager]";
        //    SqlCommand cmd = new SqlCommand(query);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
        //    cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        //    cmd.Parameters.AddWithValue("@PageSize", PageSize);
        //    cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
        //    return GetData(cmd, pageIndex).GetXml();
        //}


        //private static DataSet GetData(SqlCommand cmd, int pageIndex)
        //{
        //    string strConnString = "Server=SAHINBAS\\SQLEXPRESS;Initial Catalog=Vdb_Master2014;Integrated Security=true";
        //    using (SqlConnection con = new SqlConnection(strConnString))
        //    {
        //        using (SqlDataAdapter sda = new SqlDataAdapter())
        //        {
        //            cmd.Connection = con;
        //            sda.SelectCommand = cmd;
        //            using (DataSet ds = new DataSet())
        //            {
        //                sda.Fill(ds, "Customers");
        //                DataTable dt = new DataTable("Pager");
        //                dt.Columns.Add("PageIndex");
        //                dt.Columns.Add("PageSize");
        //                dt.Columns.Add("RecordCount");
        //                dt.Rows.Add();
        //                dt.Rows[0]["PageIndex"] = pageIndex;
        //                dt.Rows[0]["PageSize"] = PageSize;
        //                dt.Rows[0]["RecordCount"] = cmd.Parameters["@RecordCount"].Value;
        //                ds.Tables.Add(dt);
        //                return ds;
        //            }
        //        }
        //    }
        //}            
=======

        }

>>>>>>> c3bd97317c0cf089cea5be31f36888d3bb4cd03f
    }
}