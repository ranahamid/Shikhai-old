using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shikhai.Models
{
    public class HomePageSearch
    {
        //Category
        public int? SelectedCategoryId { get; set; }
        public List<SelectListItem> Category { get; set; }
        //ClassName
        public int? SelectedClassNameId { get; set; }
        public List<SelectListItem> ClassName { get; set; }
        //Location
        public int? SelectedLocationId { get; set; }
        public List<SelectListItem> Location { get; set; }
        //Range
        public int? SelectedRangeId { get; set; }
        public List<SelectListItem> Range { get; set; }

        //Subject
        public int? SelectedSubjectId { get; set; }
        public List<SelectListItem> Subject { get; set; }



    }

    public class ClassName
    {
        public int Id { get; set; }

        public string Name { get; set; }

        [AllowHtml]
        [Display(Name = "Description")]
        public string Description { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }

        [Display(Name = "Display Order")]
        public int? DisplayOrder { get; set; }
    }

    public class Location
    {
        public int Id { get; set; }

        public string Name { get; set; }

        [AllowHtml]
        [Display(Name = "Description")]
        public string Description { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }

        [Display(Name = "Display Order")]
        public int? DisplayOrder { get; set; }
    }

    public class Range
    {
        public int Id { get; set; }

        public string Name
        {
            get
            {
                return this.LowerLimit + "-" + this.UpperLimit;
            }
            set
            {

            }
        }

        [AllowHtml]
        [Display(Name = "Description")]
        public string Description { get; set; }

        public int LowerLimit { get; set; }

        public int UpperLimit { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }

        [Display(Name = "Display Order")]
        public int? DisplayOrder { get; set; }
    }


}