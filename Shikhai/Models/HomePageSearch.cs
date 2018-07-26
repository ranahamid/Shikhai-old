using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Shikhai.Models
{
    public class HomePageSearch
    {
    }

    public class ClassName
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }
    }

    public class Location
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }
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

        public int LowerLimit { get; set; }

        public int UpperLimit { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

        [Display(Name = "Published")]
        public bool? Published { get; set; }
    }
}