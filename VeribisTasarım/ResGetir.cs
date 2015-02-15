using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VeribisTasarım
{
    public class ResGetir
    {     

        public static string resGetir(int id)
        {           
            string str = (from icerik in db.RES
                          where icerik.R_ID == id
                          select icerik.TR).FirstOrDefault().ToString();
            return str;
        }

        public static string resDesGetir(int id)
        {
            if (LogInn.dbName == null)
                return " ";
            string str = (from icerik in db.RESDES
                          where icerik.R_ID == id
                          select icerik.TR).FirstOrDefault().ToString();
            return str;
        }
    }
}