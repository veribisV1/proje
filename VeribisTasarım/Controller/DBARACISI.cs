using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VeribisTasarım.Controller
{
    public class DBARACISI
    {
        DBTOOL db = new DBTOOL();
        public Dictionary<string, string> getStoreParametre(string parametreAdi)
        {             
             return db.getParameterList(parametreAdi);
        }
        public int setStore(string prosedurAdi, Dictionary<string, object> prosedurParametreleri)
        {    
            return db.set(prosedurAdi, prosedurParametreleri);                  
        }        

        public Dictionary<string, string> getEleman(string sorgu)
        {
            return db.getDictionaryTable(sorgu);
        }
    }
}