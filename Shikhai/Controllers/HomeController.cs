using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Shikhai.Models;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Threading.Tasks;
using Shikhai.DAL;
using System.Configuration;
using Shikhai.Filters;


namespace Shikhai.Controllers
{
    [ExceptionHandler]
    public class HomeController : BaseController
    {

        public ActionResult Index()
        {
            Log.Info("App started...");

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult WhyUs()
        {
            return View();
        }

        public ActionResult Howwork()
        {
            return View();
        }

        public ActionResult FAQStudents()
        {
            return View();
        }


        public ActionResult FAQTutors()
        {
            return View();
        }
        public ActionResult Testimonial()
        {
            return View();
        }
    }


}

