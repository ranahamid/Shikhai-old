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
    public class RangeApiController : ApiController
    {
        private readonly IRangeAccessRepository<Range, int> _repository;

        public RangeApiController(IRangeAccessRepository<Range, int> r)
        {
            _repository = r;
        }

        [Route("api/RangeApi/")]
        public IEnumerable<Range> GetRanges()
        {
            return _repository.Get();
        }

        [Route("api/RangeApi/{id}")]
        [ResponseType(typeof(Range))]
        public IHttpActionResult GetRange(int id)
        {
            var item = _repository.Get(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(item);
        }

        [Route("api/RangeApi/{id}")]
        [ResponseType(typeof(void))]
        public IHttpActionResult PutRange(int id, Range entity)
        {
            _repository.Put(id, entity);
            return StatusCode(HttpStatusCode.NoContent);
        }

        [Route("api/RangeApi/")]
        [ResponseType(typeof(Range))]
        public IHttpActionResult PostRange(Range entity)
        {
            _repository.Post(entity);
            return Ok(entity);
        }

        [Route("api/RangeApi/{id}")]
        [ResponseType(typeof(Range))]
        public IHttpActionResult DeleteRange(int id)
        {
            _repository.Delete(id);
            return StatusCode(HttpStatusCode.NoContent);
        }

        //custom api 
        [Route("api/RangeApi/GetAllRangeSelectList/")]
        public List<System.Web.Mvc.SelectListItem> GetAllRangeSelectList()
        {
            return _repository.GetAllRangeSelectList();
        }
    }
}
