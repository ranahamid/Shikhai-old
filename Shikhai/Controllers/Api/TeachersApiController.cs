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
    public class TeachersApiController : ApiController
    {
        private readonly ITeacherAccessRepository<Teacher, int> _repository;

        public TeachersApiController(ITeacherAccessRepository<Teacher, int> r)
        {
            _repository = r;
        }

        [Route("api/TeachersApi/")]
        // GET: api/TeachersApi
        public IEnumerable<Teacher> GetTeachers()
        {
            return _repository.Get();
        }

        [Route("api/TeachersApi/{id}")]
        // GET: api/TeachersApi/5
        [ResponseType(typeof(Teacher))]
        public IHttpActionResult GetTeacher(int id)
        {
            var item = _repository.Get(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(item);
        }

        [Route("api/TeachersApi/{id}")]
        // PUT: api/TeachersApi/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutTeacher(int id, Teacher entity)
        {
            _repository.Put(id, entity);
            return StatusCode(HttpStatusCode.NoContent);
        }

        [Route("api/TeachersApi/")]
        // POST: api/TeachersApi
        [ResponseType(typeof(Teacher))]
        public IHttpActionResult PostTeacher(Teacher entity)
        {
            _repository.Post(entity);
            return Ok(entity);
        }

        [Route("api/TeachersApi/{id}")]
        // DELETE: api/TeachersApi/5
        [ResponseType(typeof(Teacher))]
        public IHttpActionResult DeleteTeacher(int id)
        {
            _repository.Delete(id);
            return StatusCode(HttpStatusCode.NoContent);
        }

    }
}