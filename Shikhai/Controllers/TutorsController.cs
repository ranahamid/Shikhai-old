using Shikhai.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shikhai.Controllers
{
    public class TutorsController : Controller
    {
        // GET: Tutors
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(HomePageSearch entity)
        {
            return View();
        }

    }
}