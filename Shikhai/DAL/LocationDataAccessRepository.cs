using Microsoft.Practices.Unity;
using Shikhai.Controllers;
using Shikhai.Filters;
using Shikhai.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Shikhai.DAL
{
    [ExceptionHandlerAttribute]
    public class LocationDataAccessRepository : BaseController, ILocationAccessRepository<Location, int>
    {
        public IEnumerable<Location> Get()
        {
            List<Location> entities = new List<Location>();

            entities = Db.LocationTbls.Select(x => new Location()
            {
                Id = x.Id,
                Name = x.Name,
                DisplayOrder=x.DisplayOrder,
                CreatedOnUtc = x.CreatedOnUtc,
                UpdatedOnUtc = x.UpdatedOnUtc,
                Published = x.Published
            }).ToList();

            return entities;
        }

        public Location Get(int id)
        {
            Location entity = Db.LocationTbls.Where(x => x.Id == id).Select(x => new Location()
            {
                Id = x.Id,
                Name = x.Name,
                DisplayOrder = x.DisplayOrder,
                CreatedOnUtc = x.CreatedOnUtc,
                UpdatedOnUtc = x.UpdatedOnUtc,
                Published = x.Published
            }).SingleOrDefault();

            if (entity == null)
            {
                return null;
            }

            return entity;
        }

        public void Post(Location entity)
        {
            Db.LocationTbls.InsertOnSubmit(new LocationTbl
            {
                Name = entity.Name,
                DisplayOrder = entity.DisplayOrder,
                CreatedOnUtc = entity.CreatedOnUtc,
                UpdatedOnUtc = entity.UpdatedOnUtc,
                Published = entity.Published
            });
            try
            {
                Db.SubmitChanges();
            }
            catch (Exception)
            {
                throw new Exception("Exception");
            }
        }

        public void Put(int id, Location entity)
        {
            var isEntity = from x in Db.LocationTbls
                           where x.Id == entity.Id
                           select x;

            if (isEntity == null)
            {
                return;
            }

            if (isEntity != null)
            {
                LocationTbl entitySingle = isEntity.Single();
                entitySingle.DisplayOrder = entity.DisplayOrder;
                entitySingle.Name = entity.Name;
                entitySingle.CreatedOnUtc = entity.CreatedOnUtc;
                entitySingle.UpdatedOnUtc = entity.UpdatedOnUtc;
                entitySingle.Published = entity.Published;
            }

            try
            {
                Db.SubmitChanges();
            }
            catch (Exception)
            {
                throw new Exception("Exception");
            }
        }

        public void Delete(int id)
        {
            var query = from x in Db.LocationTbls
                        where x.Id == id
                        select x;

            if (query != null && query.Count() == 1)
            {
                LocationTbl entity = query.SingleOrDefault();
                Db.LocationTbls.DeleteOnSubmit(entity);
            }

            try
            {
                Db.SubmitChanges();
            }
            catch (Exception)
            {
                throw new Exception("Exception");
            }
        }


        //custom
        public List<SelectListItem> GetAllLocationsSelectList()
        {
            var entities = Db.LocationTbls.OrderBy(x => x.DisplayOrder).Select(x => new SelectListItem()
            {
                Value = x.Id.ToString(),
                Text = x.Name,
                //    Selected = (x.IsHomePageBanner != null && x.IsHomePageBanner == true)
            }).ToList();

            return entities;
        }




    }
}