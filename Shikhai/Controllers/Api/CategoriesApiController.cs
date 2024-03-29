﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using Shikhai.Models;
using Shikhai.DAL;

namespace Shikhai.Controllers.Api
{
    public class CategoriesApiController : ApiController
    {
        private ICategoryAccessRepository<Category, int> _repository;

        public CategoriesApiController(ICategoryAccessRepository<Category, int> r)
        {
            _repository = r;
        }

        [Route("api/CategoriesApi/")]
        // GET: api/CategoriesApi
        public IEnumerable<Category> Get()
        {
            return _repository.Get();
        }

   


        [Route("api/CategoriesApi/{id}")]
        // GET: api/CategoriesApi/5
        [ResponseType(typeof(Category))]
        public IHttpActionResult Get(int id)
        {
            var item = _repository.Get(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(item);
        }

        [Route("api/CategoriesApi/{id}")]
        // PUT: api/CategoriesApi/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Put(int id, Category category)
        {

            _repository.Put(id, category);
            return StatusCode(HttpStatusCode.NoContent);
        }

        [Route("api/CategoriesApi/")]
        // POST: api/PaymentApi
        [ResponseType(typeof(Category))]
        public IHttpActionResult PostCategories(Category entity)
        {
            _repository.Post(entity);
            return Ok(entity);
        }
    
         [Route("api/CategoriesApi/{id}")]
        // DELETE: api/CategoriesApi/5
        [ResponseType(typeof(Category))]
        public IHttpActionResult Delete(int id)
        {
            _repository.Delete(id);
            return StatusCode(HttpStatusCode.NoContent);
        }

        ////custom api 
        [Route("api/CategoriesApi/GetAllCategoriesSelectList/")]
        // GetAllCategoriesSelectList: api/CategoriesApi/GetAllCategoriesSelectList
        public List<System.Web.Mvc.SelectListItem> GetAllCategoriesSelectList()
        {
            return _repository.GetAllCategoriesSelectList();
        }

        [Route("api/CategoriesApi/GetParentCat")]
        // GET: api/CategoriesApi
        public IEnumerable<Category> GetParentCat()
        {
            return _repository.GetParentCat();
        }
    }
}