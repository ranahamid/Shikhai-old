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
    public class RangeDataAccessRepository : BaseController, IRangeAccessRepository<Range, int>
    {
        public IEnumerable<Range> Get()
        {
            List<Range> entities = new List<Range>();

            entities = Db.RangeTbls.Select(x => new Range()
            {
                Id = x.Id,
                LowerLimit = x.LowerLimit,
                UpperLimit = x.UpperLimit,
                Description = x.Description,
                CreatedOnUtc = x.CreatedOnUtc,
                UpdatedOnUtc = x.UpdatedOnUtc,
                DisplayOrder=x.DisplayOrder,
                Published = x.Published

            }).ToList();

            return entities;
        }

        public Range Get(int id)
        {
            Range entity = Db.RangeTbls.Where(x => x.Id == id).Select(x => new Range()
            {
                Id = x.Id,
                LowerLimit = x.LowerLimit,
                UpperLimit = x.UpperLimit,
                Description = x.Description,
                CreatedOnUtc = x.CreatedOnUtc,
                UpdatedOnUtc = x.UpdatedOnUtc,
                DisplayOrder = x.DisplayOrder,
                Published = x.Published

            }).SingleOrDefault();

            if (entity == null)
            {
                return null;
            }

            return entity;
        }

        public void Post(Range entity)
        {
            Db.RangeTbls.InsertOnSubmit(new RangeTbl
            {
                LowerLimit = entity.LowerLimit,
                UpperLimit = entity.UpperLimit,
                Description = entity.Description,
                CreatedOnUtc = entity.CreatedOnUtc,
                UpdatedOnUtc = entity.UpdatedOnUtc,
                DisplayOrder = entity.DisplayOrder,
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

        public void Put(int id, Range entity)
        {
            var isEntity = from x in Db.RangeTbls
                           where x.Id == entity.Id
                           select x;

            if (isEntity == null)
            {
                return;
            }

            if (isEntity != null)
            {
                RangeTbl entitySingle = isEntity.Single();

                entitySingle.DisplayOrder = entity.DisplayOrder;
                entitySingle.LowerLimit = entity.LowerLimit;
                entitySingle.UpperLimit = entity.UpperLimit;
                entitySingle.Description = entity.Description;
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
            var query = from x in Db.RangeTbls
                        where x.Id == id
                        select x;

            if (query != null && query.Count() == 1)
            {
                RangeTbl entity = query.SingleOrDefault();
                Db.RangeTbls.DeleteOnSubmit(entity);
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
        public List<SelectListItem> GetAllRangeSelectList()
        {
            var entities = Db.RangeTbls.OrderBy(x=>x.DisplayOrder).Select(x => new SelectListItem()
            {
                Value = x.Id.ToString(),
                Text = x.LowerLimit+"-"+x.UpperLimit,
                //    Selected = (x.IsHomePageBanner != null && x.IsHomePageBanner == true)
            }).ToList();

            return entities;
        }



    }
}