using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VeribisTasarım.Controller
{
    public class FIRMA
    {
        public Dictionary<string, string> firmaParametreGetir(string parametreAdi)
        {
             DBTOOL db = new DBTOOL();
             return db.getParameterList(parametreAdi);
        }
        public int firmaKaydet(string prosedurAdi, Dictionary<string, object> prosedurParametreleri)
        {            
            DBTOOL db = new DBTOOL();
            return db.set(prosedurAdi, prosedurParametreleri);                  
        }
      
    }
}