﻿using Shikhai.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shikhai.Controllers
{
    public class StudentsController : Controller
    {
        // GET: Students
        public ActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Teacher")]
        [ExceptionHandler]
        public ActionResult Dashboard()
        {
            return View();
        }

    }
}