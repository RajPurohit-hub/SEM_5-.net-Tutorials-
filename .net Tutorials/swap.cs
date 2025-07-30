using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEMO
{
    internal class swap
    {
        static void Swap(ref int a, ref int b)
        {
            int temp = a;
            a = b;
            b = temp;
        }

        static void Main(String[] args)
        {
            int a = 11;
            int b = 12;

            Console.WriteLine("Before Swap: a = " + a + ", b = " + b);
            Swap(ref a, ref b);
            Console.WriteLine("After Swap: a = " + a + ", b = " + b);

        }
    }
}