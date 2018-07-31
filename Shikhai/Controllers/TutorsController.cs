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
using Shikhai.Helpers;
using System.IO;
using System.Web.Hosting;

namespace Shikhai.Controllers
{
    public class TutorsController : BaseController
    {
        // GET: Tutors
        public async Task<ActionResult> Index()
        {
            var registerTeachers = await GetTeachersAsync();
            return View(registerTeachers);
        }

        [HttpPost]
        public async Task<ActionResult> Index(HomePageSearch entity)
        {
            var registerTeachers =await GetTeachersAsync();
            return View(registerTeachers);
        }

        public async Task<List<RegisterTeacher>> GetTeachersAsync()
        {
            url = baseUrl + "api/TeachersApi";
            var responseMessage = await client.GetAsync(url);
            if (responseMessage.IsSuccessStatusCode)
            {
                var responseData = responseMessage.Content.ReadAsStringAsync().Result;
                var entity = JsonConvert.DeserializeObject<List<RegisterTeacher>>(responseData);
                return entity;
            }
            return null;
        }

    }
}