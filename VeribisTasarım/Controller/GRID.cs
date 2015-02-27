using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace VeribisTasarım.Controller
{
    public class GRID
    {
        /// <summary>
        /// stok Elemanlarını getirir koda gore
        /// </summary>
        /// <param name="likeParametresi"></param>
        /// <returns></returns>
        public Dictionary<string, string> getStokElemanByKod(string likeParametresi)
        {
            string sorgu = String.Format("SELECT CODE as col1, NAME_TR  AS col2 FROM STOKCARD where code like '%{0}%'", likeParametresi);

            using (DBTOOL db = new DBTOOL())
            {
                return db.getDictionaryTable(sorgu);
            }
        }

        /// <summary>
        /// stok Elemanlarını getirir ada gore
        /// </summary>
        /// <param name="likeParametresi"></param>
        /// <returns></returns>
        public Dictionary<string, string> getStokElemanByAd(string likeParametresi)
        {
            string sorgu = String.Format("SELECT CODE as col1, NAME_TR  AS col2 FROM STOKCARD where NAME_TR like '%{0}%'", likeParametresi);

            using (DBTOOL db = new DBTOOL())
            {
                return db.getDictionaryTable(sorgu);
            }
        }

        public DataTable getGridEleman(string oppMasterCode)
        {
            string sorgu = String.Format("select * from OPPORTUNITYDETAIL where OPPORTUNITY_CODE={0}", oppMasterCode);
            using (DBTOOL db = new DBTOOL())
            {
                return db.get(sorgu);
            }
        }

        /// <summary>
        /// kur tiplerini DB_ELEMAN_GETIR clasından parabirimi olarak getirir
        /// </summary>
        /// <param name="likeParametresi"></param>
        /// <returns></returns>
        public Dictionary<string, string> getKurTipi()
        {
            DB_ELEMAN_GETIR db = new DB_ELEMAN_GETIR();
            return db.getParaBirimi();
        }

        /// <summary>
        /// gelen kur tipine gore bugunkü kuru dondurur
        /// </summary>
        /// <param name="likeParametresi"></param>
        /// <returns></returns>
        public string getKurTutari(string kurTipi, DateTime tarih)
        {
            string sorgu = String.Format("SELECT BANKNOTE_SELING from CUR where CURDATE='{0}' and CURSYMBOL='{1}'",tarih.ToString("yyyy-mm-dd"), kurTipi);
            using (DBTOOL db = new DBTOOL())
            {
               Dictionary<string, string> list =db.getDictionaryTable(sorgu);
               return list["BANKNOTE_SELING"];
            }
        }
        /// <summary>
        /// gelen satiri oppDetaile Kaydeeder
        /// geriye ROW ORDER NO dönderir
        /// </summary>
        /// <param name="satir"></param>
        public string setGrid(Dictionary<string,object> satir)
        {
            using (DBTOOL db = new DBTOOL())
            {
              return  db.set("pInsertOppDetail", satir).ToString();
            }
        }

        /// <summary>
        /// satir bilgisi gelen kaydı siler
        /// </summary>
        /// <param name="oppMasterCode"></param>
        /// <param name="satirKodu"></param>
        public void delGrid(string oppMasterCode,string satirKodu)
        {
            string sorgu = String.Format("DELETE FROM OPPORTUNITYDETAIL WHERE OPPORTUNITY_CODE={0} AND ROW_ORDER_NO={1}", oppMasterCode, satirKodu);
            using (DBTOOL db = new DBTOOL())
            {
                db.set("");
            }
        }
    }
}