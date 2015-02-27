using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using VeribisTasarım.Controller;

namespace VeribisTest
{
    [TestClass]
    public class GridTest
    {
        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void TestgetStokElemanByKod()
        {
            GRID gd = new GRID();
            Dictionary<string, string> list = gd.getStokElemanByKod("1");
            foreach (string item in list.Keys)
            {
                Console.WriteLine(item);
            }
        }      
    }
}
