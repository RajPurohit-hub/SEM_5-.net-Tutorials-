using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEMO
{
    internal class ref_out
    {
        static void changeValues(ref int a, ref int b)
        {
            a = 30;
            b = 40;
        }
        static void updateValues(out int x, out float y)
        {
            x = 10;
            y = 30.5f;
        }
        static void Main()
        {
            int a = 10;
            int b = 20;
            int x; float y;

            Console.WriteLine("Before change : a = {0} and b = {1}", a, b);
            changeValues(ref a, ref b);
            Console.WriteLine("After change : a = {0} and b = {1}", a, b);
            updateValues(out x, out y);
            Console.WriteLine("Before update : x = {0} and y = {1}", x, y);
            Console.WriteLine("After update : x = {0} and y = {1}", x, y);
            
        }
    }
}
