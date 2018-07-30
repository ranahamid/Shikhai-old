using System;
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
    public class ClassNameApiController : ApiController
    {
        private readonly IClassNameAccessRepository<ClassName, int> _repository;

        public ClassNameApiController(IClassNameAccessRepository<ClassName, int> r)
        {
            _repository = r;
        }

        [Route("api/ClassNameApi/")]
        public IEnumerable<ClassName> GetClassNames()
        {
            return _repository.Get();
        }

        [Route("api/ClassNameApi/{id}")]
        [ResponseType(typeof(ClassName))]
        public IHttpActionResult GetClassName(int id)
        {
            var item = _repository.Get(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(item);
        }

        [Route("api/ClassNameApi/{id}")]
        [ResponseType(typeof(void))]
        public IHttpActionResult PutClassName(int id, ClassName entity)
        {
            _repository.Put(id, entity);
            return StatusCode(HttpStatusCode.NoContent);
        }

        [Route("api/ClassNameApi/")]
        [ResponseType(typeof(ClassName))]
        public IHttpActionResult PostClassName(ClassName entity)
        {
            _repository.Post(entity);
            return Ok(entity);
        }

        [Route("api/ClassNameApi/{id}")]
        [ResponseType(typeof(ClassName))]
        public IHttpActionResult DeleteClassName(int id)
        {
            _repository.Delete(id);
            return StatusCode(HttpStatusCode.NoContent);
        }

        //custom api 
        [Route("api/ClassNameApi/GetAllClassNamesSelectList/")]     
        public List<System.Web.Mvc.SelectListItem> GetAllClassNamesSelectList()
        {
            return _repository.GetAllClassNamesSelectList();
        }
    }
}
