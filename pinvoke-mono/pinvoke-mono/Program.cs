using System;
using System.Runtime.InteropServices;

namespace pinvokemono
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Hello world from mono");

            MainClass.helloWorld();

            Console.ReadKey();
        }

        [DllImport("libpinvoke-native.dylib")]
        private static extern void helloWorld();
    }
}
