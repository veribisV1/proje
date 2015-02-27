using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeribisTasarım.Controller;

namespace VeribisTasarım
{
    public partial class Fırsat : BASECONTROLLER
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ekranDoldur();
               
            }
            BindGrid();
        }
        private void ekranDoldur()
        {
            DB_ELEMAN_GETIR dbGetir = new DB_ELEMAN_GETIR();

            #region Aktivite Ekle DropDownları doldur
            idCOMPANY_CODE = dbGetir.doldur(idCOMPANY_CODE, dbGetir.getFirma());
            idCONTACT_CODE = dbGetir.doldur(idCONTACT_CODE, dbGetir.getFirma());
            idSELLING_BUYING = dbGetir.doldur(idSELLING_BUYING, dbGetir.getFirsatCinsi());
            idAPPOINTED_USER_CODE = dbGetir.doldur(idAPPOINTED_USER_CODE, dbGetir.userAdSoyadGetir());
            idREVISION = dbGetir.doldur(idREVISION, dbGetir.getRevizyon());
            idDELIVERY_TYPE = dbGetir.doldur(idDELIVERY_TYPE, dbGetir.getTeslimSekliFirsat());
            idPAYMENT_TYPE = dbGetir.doldur(idPAYMENT_TYPE, dbGetir.getOdemeSekli());
            idSEARCH_METHOD = dbGetir.doldur(idSEARCH_METHOD, dbGetir.getTakipYontemi());
            idSEARCH_STEP = dbGetir.doldur(idSEARCH_STEP, dbGetir.getTakipAsamalari());
            idPROJECT_CODE = dbGetir.doldur(idPROJECT_CODE, dbGetir.getProje());
            idLAST_POSITION = dbGetir.doldur(idLAST_POSITION, dbGetir.getSonuc());
            idWHY_LOST = dbGetir.doldur(idWHY_LOST, dbGetir.getNedenKaybettik());
            idRIVAL_COMPANY_CODE = dbGetir.doldur(idRIVAL_COMPANY_CODE, dbGetir.getRakipFirma());
            #endregion
        }

        protected void idButtonFirsatEkleKaydet_Click(object sender, EventArgs e)
        {
        //    DBARACISI firma = new DBARACISI();
        //    Dictionary<string, string> paramtereListesi = firma.storeParametreGetir("pInsertOppMaster");
        //    CONTROL_PARAMETRE_ESLESTIR controlEslestir = new CONTROL_PARAMETRE_ESLESTIR();
        //    Dictionary<string, object> dataListesi = controlEslestir.eslestir(this,  paramtereListesi);
        //    int companyCode = firma.storeKaydet("pInsertOppMaster", dataListesi);

                int oppurtunityCode = -1;
          
                if (String.IsNullOrEmpty(idOPPORTUNITY_CODE.Text))
                {
                    oppurtunityCode = kaydet("pInsertOppMaster");
                }
                else
                {
                    oppurtunityCode = kaydet("pUpdateOppMaster");
                }
                if (oppurtunityCode != -1)
                {
                    formTemizle(this);
                }
            
        }


        private void BindGrid()
        {
            GRID girdData = new GRID();
            GridView1.DataSource = girdData.getGridEleman("2");
            GridView1.DataBind();
        }

        protected void BindList()
        {

            //string strQuery = "SELECT DISTINCT CompanyName FROM customers";
            //SqlCommand cmd = new SqlCommand(strQuery);
            //DropDownList lstCopmany = GridView1.FooterRow.FindControl("lstCompany") as DropDownList;
            //lstCopmany.DataSource = GetData(cmd);
            //lstCopmany.DataTextField = "CompanyName";
            //lstCopmany.DataValueField = "CompanyName";
            //lstCopmany.DataBind();

        }

       

        protected void AddNewCustomer(object sender, EventArgs e)
        {
            //string CustomerID = ((TextBox)GridView1.FooterRow.FindControl("txtCustomerID")).Text;
            //string Name = ((TextBox)GridView1.FooterRow.FindControl("txtContactName")).Text;
            //string Company = ((DropDownList)GridView1.FooterRow.FindControl("lstCompany")).Text;
            //SqlConnection con = new SqlConnection(strConnString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "INSERT INTO customers(CustomerID, ContactName, CompanyName) " +
            //"VALUES(@CustomerID, @ContactName, @CompanyName);" +
            //"SELECT CustomerID,ContactName,CompanyName FROM customers";
            //cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = CustomerID;
            //cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = Name;
            //cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = Company;
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
            //BindList();
        }


        protected void EditCustomer(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //BindGrid();
            //BindList();
        }

        protected void CancelEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //GridView1.EditIndex = -1;
            //BindGrid();
            //BindList();
        }

        protected void UpdateCustomer(object sender, GridViewUpdateEventArgs e)
        {
            //string CustomerID = ((Label)GridView1.Rows[e.RowIndex]
            //                    .FindControl("lblCustomerID")).Text;
            //string Name = ((TextBox)GridView1.Rows[e.RowIndex]
            //                    .FindControl("txtContactName")).Text;
            //string Company = ((TextBox)GridView1.Rows[e.RowIndex]
            //                    .FindControl("txtCompany")).Text;
            //SqlConnection con = new SqlConnection(strConnString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "UPDATE customers SET ContactName=@ContactName," +
            // "CompanyName=@CompanyName where CustomerID=@CustomerID;" +
            // "SELECT CustomerID,ContactName,CompanyName FROM customers";
            //cmd.Parameters.Add("@CustomerID", SqlDbType.VarChar).Value = CustomerID;
            //cmd.Parameters.Add("@ContactName", SqlDbType.VarChar).Value = Name;
            //cmd.Parameters.Add("@CompanyName", SqlDbType.VarChar).Value = Company;
            //GridView1.EditIndex = -1;
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
            //BindList();
        }


        protected void DeleteCustomer(object sender, EventArgs e)
        {
            //Button btnRemove = (Button)sender;
            //SqlConnection con = new SqlConnection(strConnString);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "DELETE FROM customers WHERE CustomerID=@CustomerID;" +
            // "SELECT CustomerID,ContactName,CompanyName FROM customers";
            //cmd.Parameters.Add("@CustomerID", SqlDbType.Int).Value
            //    = btnRemove.CommandArgument;
            //GridView1.DataSource = GetData(cmd);
            //GridView1.DataBind();
            //BindList();
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            //BindGrid();
            //GridView1.PageIndex = e.NewPageIndex;
            //GridView1.DataBind();
            //BindList();

        }
    }
}