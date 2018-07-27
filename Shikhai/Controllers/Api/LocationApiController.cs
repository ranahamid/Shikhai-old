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
    public class LocationApiController : ApiController
    {
        private readonly ILocationAccessRepository<Location, int> _repository;

        public LocationApiController(ILocationAccessRepository<Location, int> r)
        {
            _repository = r;
        }

        [Route("api/LocationApi/")]
        public IEnumerable<Location> GetLocations()
        {
            return _repository.Get();
        }

        [Route("api/LocationApi/{id}")]
        [ResponseType(typeof(Location))]
        public IHttpActionResult GetLocation(int id)
        {
            var item = _repository.Get(id);
            if (item == null)
            {
                return NotFound();
            }
            return Ok(item);
        }

        [Route("api/LocationApi/{id}")]
        [ResponseType(typeof(void))]
        public IHttpActionResult PutLocation(int id, Location entity)
        {
            _repository.Put(id, entity);
            return StatusCode(HttpStatusCode.NoContent);
        }

        [Route("api/LocationApi/")]
        [ResponseType(typeof(Location))]
        public IHttpActionResult PostLocation(Location entity)
        {
            _repository.Post(entity);
            return Ok(entity);
        }

        [Route("api/LocationApi/{id}")]
        [ResponseType(typeof(Location))]
        public IHttpActionResult DeleteLocation(int id)
        {
            _repository.Delete(id);
            return StatusCode(HttpStatusCode.NoContent);
        }

    }
}
