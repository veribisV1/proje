using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VeribisTasarım
{
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            { 
                adresDoldur();
                telefonDoldur();
                
            }
           
        }

        private void adresDoldur(int companyCode=1)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT ADDRESS_TYPE_ID AS TUR,(ADDRESS1+ ' ' + ADDRESS2 + ' ' + ADDRESS3 + ' ' + COUNTY1 + ' ' + COUNTY2 + ' ' + CITY) AS ADRES FROM ADDRESS WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo=db.get(sorgu.ToString());
            idADDRESS.DataSource = tablo;
            idADDRESS.DataBind();
            
            
        }

        private void telefonDoldur(int companyCode = 1)
        {
            DBTOOL db = new DBTOOL();

            StringBuilder sorgu = new StringBuilder();
            //sorgu.Append("SELECT (ADDRESS1+ADDRESS2+ADDRESS3) AS ADRES,COUNTY1 AS BELDE,COUNTY2 AS ILCE, CITY AS IL FROM ADDRESS WHERE ADDRESS.COMPANY_CODE=");
            sorgu.Append("SELECT PHONE_TYPE_ID AS TUR,(COUNTRY_CODE+ ' (' + AREA_CODE + ') ' + PHONE_NUMBER) AS TELEFON FROM PHONE WHERE COMPANY_CODE=");
            sorgu.Append(companyCode);
            DataTable tablo = db.get(sorgu.ToString());
            idPHONE.DataSource = tablo;
            idPHONE.DataBind();
        }


    }
}