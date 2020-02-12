using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;

namespace AutoMapping
{
    class Program
    {
        static void Main(string[] args)
        {
            Person per = new Person();
            per.FirstName = "Shivam";
            per.LastName = "Dewangan";
            Employee emp = new Employee();
            var config = new MapperConfiguration(cfg =>
            { 
                cfg.CreateMap<Person, Employee>(); 
            });
            IMapper mapper = config.CreateMapper();
            var dest = mapper.Map<Person, Employee>(per);
            Console.WriteLine(dest);
            Console.ReadLine();


            //Create a Map
            //AutoMapper.
            //Mapper.<Person, Employee>();

            ////Use the Created Map
            //  Employee emp = Mapper.Map<Employee>(per);
            //Console.WriteLine();

        }
    }

        public class Employee
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Salary { get; set; }
        }
        public class Person
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Salary { get; set; }
        }
}
