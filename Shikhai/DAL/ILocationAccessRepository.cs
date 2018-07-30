using Shikhai.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;


namespace Shikhai.DAL
{
    public interface ILocationAccessRepository<TEntity, in TPrimaryKey> where TEntity : class
    {
        IEnumerable<TEntity> Get();
        TEntity Get(TPrimaryKey id);
        void Post(TEntity entity);

        void Put(TPrimaryKey id, TEntity entity);
        void Delete(TPrimaryKey id);    
        
        //custom
        List<System.Web.Mvc.SelectListItem> GetAllLocationsSelectList();

    }
}