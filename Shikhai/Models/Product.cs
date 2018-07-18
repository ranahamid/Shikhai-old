﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shikhai.Models
{
    public class Product
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public bool? IsBook { get; set; }

        public bool? IsStationary { get; set; }

        public string InstructionsImageUrl { get; set; }

        public string RawDbImagePath { get; set; }

        public bool? Published { get; set; }

        public DateTime? CreatedOnUtc { get; set; }

        public DateTime? UpdatedOnUtc { get; set; }

    }

    public class Book
    {

    }
    public class Stationary
    {
    }

}