using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEMO
{
    internal class Q_4
    {
        static void Main(string[] args)
        {
            int x;
            Console.WriteLine("Enter Number : ");
            string str = Console.ReadLine();
            x = Convert.ToInt32(str);
            if (x % 2 == 0)
            {
                Console.WriteLine("Number is Odd");
            }
            else
            {
                Console.WriteLine("Number is Even");
            }
                Console.ReadLine();
        }
    }
}

        