using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VeribisTasarım.Controller
{
    public class DBARACISI
    {
        public Dictionary<string, string> storeParametreGetir(string parametreAdi)
        {
             DBTOOL db = new DBTOOL();
             return db.getParameterList(parametreAdi);
        }
        public int storeKaydet(string prosedurAdi, Dictionary<string, object> prosedurParametreleri)
        {            
            DBTOOL db = new DBTOOL();
            return db.set(prosedurAdi, prosedurParametreleri);                  
        }
      
    }
}