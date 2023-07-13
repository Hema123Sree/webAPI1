using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace webAPI1
{
    public class StudentsController : ApiController
    {
        Student[] students = new Student[]
         {
             new Student { StudentID = 1, FirstName = "Satish", LastName = "Kodi" },
             new Student { StudentID = 2, FirstName = "Anil", LastName = "Narkurthi" },
             new Student { StudentID = 3, FirstName = "Prameela", LastName = "Rayudu" },
             new Student { StudentID = 4, FirstName = "Lavanya", LastName = "Kandha" },
               new Student { StudentID = 4, FirstName = "hema", LastName = "sree" }
              
         };

        public IEnumerable<Student> GetStudents()
        {
            return students;
        }
    }
}