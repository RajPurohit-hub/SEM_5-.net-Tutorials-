using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DEMO
{
    internal class Tutorial_3
    {

        static void Main()
        {
            Console.WriteLine("Enter a number : ");
            string input = Console.ReadLine();
            if (int.TryParse(input, out int no))
            {
                if (no % 2 == 0)
                {
                    Console.WriteLine("The number is even");
                }
                else
                {
                    Console.WriteLine("The number is odd");
                }
            }
            else
            {
                Console.WriteLine("Invalid input. Please enter a valid integer.");
            }

        }
    }
    }
