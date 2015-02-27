using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using VeribisTasarım.Controller;

namespace VeribisTest
{
    [TestClass]
    public class GridTest
    {
        [TestMethod]
        public void TestgetStokElemanByKod()
        {
            GRID gd = new GRID();
            Dictionary<string, string> list = gd.getStokElemanByKod("1");
            foreach (string item in list.Keys)
            {
                Console.WriteLine(item);
            }
        }

        [TestMethod]
        public void Testeleman()
        {
            GRID gd = new GRID();
            string eleman = gd.getEleman();

            Console.WriteLine(eleman);
            
        }
    }
}
