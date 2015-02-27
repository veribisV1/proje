﻿using System;
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
        /// store procedur gondererek 
        /// </summary>
        /// <param name="prosedurAdi"></param>
        /// <returns></returns>
        public DataTable getGridIcerik(string prosedurAdi, Dictionary<string, object> parametreIcerik)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.getDataTable(prosedurAdi, parametreIcerik);
            }
        }

        /// <summary>
        /// gird içerisine gelecek bilgileri 
        /// sorgu gondererek datatable donus elde edebilir
        /// </summary>
        /// <param name="prosedurAdi"></param>
        /// <returns></returns>
        public DataTable getGridIcerik(string sorgu)
        {
            using (DBTOOL db = new DBTOOL())
            {
                return db.get(sorgu);
            }
        }
<<<<<<< HEAD

=======
>>>>>>> ff81451a3d6a697edbf14c128c14b743fdebaf3a


        //kullanacağımız veritabanının adı.
        public string getDatabase(string customerCode)
        {
           
            using (DBTOOL db = new DBTOOL())
            {
                var dbName = db.getDatabaseName(customerCode);
                return dbName;
            }
           
        }
<<<<<<< HEAD

      


=======
  
>>>>>>> ff81451a3d6a697edbf14c128c14b743fdebaf3a
    }
}

