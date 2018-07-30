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
    public class CatalogController : BaseController
    {
        public CatalogController()
        {
           
        }


        public ActionResult MenuBanner()
        {
           // Banner entity = new Banner();

            return PartialView("_MenuBanner");
        }

        public ActionResult HomePageSearch()
        {
            var vm = new HomePageSearch();
            //Category
            vm.Category = Categories; //parent categories

            //ClassName
            url = baseUrl + "api/ClassNameApi/GetAllClassNamesSelectList/";
            var responseMessage1 = new WebClient().DownloadString(url);        
            var entity1= JsonConvert.DeserializeObject<List<SelectListItem>>(responseMessage1);
            vm.ClassName = entity1;
            //Range
            url = baseUrl + "api/RangeApi/GetAllRangeSelectList/";
            var responseMessage2 = new WebClient().DownloadString(url);
            var entity2 = JsonConvert.DeserializeObject<List<SelectListItem>>(responseMessage2);
            vm.Range = entity2;
            //Location
            url = baseUrl + "api/LocationApi/GetAllLocationsSelectList/";
            var responseMessage3 = new WebClient().DownloadString(url);
            var entity3 = JsonConvert.DeserializeObject<List<SelectListItem>>(responseMessage3);
            vm.Location = entity3;

            return PartialView("_HomePageSearch", vm);
        }


        public ActionResult HomepageBanner()
        {
            url = baseUrl + "api/BannersApi/GetHomePageBanner";

            var responseMessage = new WebClient().DownloadString(url);

            var entity = JsonConvert.DeserializeObject<BannerMobile>(responseMessage);

            return PartialView("_HomepageBanner", entity);
        }

        public ActionResult LessonsPortfolio()
        {
            Portfolio portfolio = new Portfolio();
            portfolio.ParenCategories = Categories;
            portfolio.portfolioChildren= portfolioChildCategories;
            return PartialView("_LessonsPortfolio", portfolio);
        }

        public ActionResult ProductsPortfolio()
        {
            ProductViewModel vm = new ProductViewModel();
            url = baseUrl + "api/ProductApi/GetHomePageStationaries";

            var responseMessage = new WebClient().DownloadString(url);
            var entity = JsonConvert.DeserializeObject<List<Product>>(responseMessage);
            vm.Stationary = entity;

            url = baseUrl + "api/ProductApi/GetHomePageBooks";

            var responseMessage2 = new WebClient().DownloadString(url);
            var entity2 = JsonConvert.DeserializeObject<List<Product>>(responseMessage2);
            vm.Books = entity2;

            return PartialView("_ProductsPortfolio", vm);
        }

        public ActionResult EasyAs123()
        {
            return PartialView("_EasyAs123");
        }
        public ActionResult Testimonial()
        {
            url = baseUrl + "api/TestimonialApi/";
            var responseMessage = new WebClient().DownloadString(url);
            var entity = JsonConvert.DeserializeObject<List<Testimonial>>(responseMessage);            
            return PartialView("_Testimonial", entity);
        }


        
    }
}