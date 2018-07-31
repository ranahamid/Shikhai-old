using Shikhai.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shikhai.Models
{
    public class SubjectViewModel: HomePageSearch
    {
        public ShikhaiDataContext Db ;
        public SubjectViewModel()
        {
            Db = new ShikhaiDataContext();
        }
        public int? SelectedCatId { get; set; }

        // public string SelectedDoctorId { get; set; }

        public IEnumerable<SelectListItem> DoctorslList
        {
            get
            {
                List<Category> entities;

                if (SelectedCatId == 0 || SelectedCatId == null)
                {
                    entities = Db.CategoryTbls.Where(x => x.Parent1Id != null ).Select(x => new Category()
                    {
                        Id = x.Id,
                        Name_English = x.Name_English,
                        Name_Bangla = x.Name_Bangla,
                        Description = x.Description,
                        DisplayOrder = x.DisplayOrder,
                        RawDBImagePath = x.ImagePath,
                        Parent1Id = x.Parent1Id,

                        ShowOnHomePage = x.ShowOnHomePage,
                        IncludeInTopMenu = x.IncludeInTopMenu,
                        CreatedOnUtc = x.CreatedOnUtc,
                        UpdatedOnUtc = x.UpdatedOnUtc,
                        Published = x.Published,
                    }).OrderBy(x => x.DisplayOrder).ToList();
                }
                else
                {
                    entities = Db.CategoryTbls.Where(x => x.Parent1Id != null && x.Parent1Id== SelectedCatId).Select(x => new Category()
                    {
                        Id = x.Id,
                        Name_English = x.Name_English,
                        Name_Bangla = x.Name_Bangla,
                        Description = x.Description,
                        DisplayOrder = x.DisplayOrder,
                        RawDBImagePath = x.ImagePath,
                        Parent1Id = x.Parent1Id,

                        ShowOnHomePage = x.ShowOnHomePage,
                        IncludeInTopMenu = x.IncludeInTopMenu,
                        CreatedOnUtc = x.CreatedOnUtc,
                        UpdatedOnUtc = x.UpdatedOnUtc,
                        Published = x.Published,
                    }).OrderBy(x => x.DisplayOrder).ToList();
                }


                List<SelectListItem> teachers = new List<SelectListItem>();


                foreach (var item in entities)
                {
                    teachers.Add(new SelectListItem
                    {
                        Text = item.Name_English,
                        Value = item.Id.ToString()
                    });
                }

                return teachers;
            }
        }
    }
}