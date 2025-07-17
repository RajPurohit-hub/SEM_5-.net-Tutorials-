using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEMO
{
    internal class array
    {
        public static void Main()
        {
            int num = 321;
            String[] units = { "zero", "one", "two", "three" };
            int temp = num;
            int[] digit = new int[10];
            int count = 0;
            while (temp > 0)
            {
                digit[count] = temp % 10;
                temp /= 10;
                count++;
            }
            Console.WriteLine("numbers is:");
            for (int i = count - 1; i >= 0; i--)
            {
                Console.Write(units[digit[i]] + " ");
            }
        }
    }
}
