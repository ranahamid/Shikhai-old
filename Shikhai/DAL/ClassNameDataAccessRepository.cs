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
    public class ClassNameDataAccessRepository : BaseController, IClassNameAccessRepository<ClassName, int>
    {
        public IEnumerable<ClassName> Get()
        {
            List<ClassName> entities = new List<ClassName>();

            entities = Db.ClassNameTbls.Select(x => new ClassName()
            {
                Id = x.Id,
                Name = x.Name,
                CreatedOnUtc = x.CreatedOnUtc,
                UpdatedOnUtc = x.UpdatedOnUtc,
                DisplayOrder=x.DisplayOrder,
                Published = x.Published

            }).ToList();

            return entities;
        }

        public ClassName Get(int id)
        {
            ClassName entity = Db.ClassNameTbls.Where(x => x.Id == id).Select(x => new ClassName()
            {
                Id = x.Id,
                Name = x.Name,
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

        public void Post(ClassName entity)
        {
            Db.ClassNameTbls.InsertOnSubmit(new ClassNameTbl
            {
                Name = entity.Name,
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

        public void Put(int id, ClassName entity)
        {
            var isEntity = from x in Db.ClassNameTbls
                           where x.Id == entity.Id
                           select x;

            if (isEntity == null)
            {
                return;
            }

            if (isEntity != null)
            {
                ClassNameTbl entitySingle = isEntity.Single();

                entitySingle.Name = entity.Name;
                entitySingle.CreatedOnUtc = entity.CreatedOnUtc;
                entitySingle.UpdatedOnUtc = entity.UpdatedOnUtc;
                entitySingle.DisplayOrder = entity.DisplayOrder;
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
            var query = from x in Db.ClassNameTbls
                        where x.Id == id
                        select x;

            if (query != null && query.Count() == 1)
            {
                ClassNameTbl entity = query.SingleOrDefault();
                Db.ClassNameTbls.DeleteOnSubmit(entity);
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




    }
}