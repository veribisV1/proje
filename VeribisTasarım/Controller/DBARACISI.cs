using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace VeribisTasarım.Controller
{
    public class DBARACISI
    {
        public Dictionary<string, string> getStoreParametre(string parametreAdi)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.getParameterList(parametreAdi);
            }
        }
        public int setStore(string prosedurAdi, Dictionary<string, object> prosedurParametreleri)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.set(prosedurAdi, prosedurParametreleri);
            }
        }
        public Dictionary<string, string> getEleman(string sorgu)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.getDictionaryTable(sorgu);
            }
        }
        public Dictionary<string, string> getListEleman(string sorgu)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.getDictionary(sorgu);
            }
        }

        /// <summary>
        /// gird içerisine gelecek bilgileri 
        /// store procedur gondererek XML olarak alınabilir
        /// </summary>
        /// <param name="prosedurAdi"></param>
        /// <returns></returns>
        public DataTable getGridIcerik(string prosedurAdi)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.getDataTable(prosedurAdi, new Dictionary<string, string>());
            }
        }
    }
}